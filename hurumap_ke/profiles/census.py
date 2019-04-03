import logging
import re
from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)
from wazimap.geo import geo_data, LocationNotFound
from wazimap.models.data import DataNotFound

from utils import *

log = logging.getLogger(__name__)

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}}

SECTIONS = settings.HURUMAP.get('topics', {})

EMPLOYMENT_RECODES = OrderedDict([
    ('seeking work / no work available', 'Seeking work'),
    ('employed', 'Employed'),
    ('economically inactive', 'Not economically active'),
    ('employment unclassified', 'Unspecified')])

WATER_SOURCE_RECODES = OrderedDict([
    ('piped', 'Piped'),
    ('piped into dwelling', 'Piped'),
    ('stream', 'Stream'),
    ('spring/well/borehole', 'Spring, well or borehole'),
    ('lake', 'Lake, pond or dam'),
    ('pond/dam', 'Lake, pond or dam'),
    ('jabia/rain/harvested', 'Rain/jabia'),
    ('water vendor', 'Vendor'),
    ('other', 'Other'),
])


def get_profile(geo, profile_name, request):
    session = get_session()
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}
        data['primary_release_year'] = current_context().get('year')
        sections = []

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')

            if 'voter_registration' in section:
                year = re.search(r"\d+", section).group()
                section = 'voter_registration'

            function_name = 'get_%s_profile' % section

            if function_name in globals():
                func = globals()[function_name]

                if function_name == 'get_voter_registration_profile':
                    section = '{}_{}'.format(section, year)
                    data[section] = func(geo, session, year)

                    # get profiles for comparative geometries
                    for comp_geo in comparative_geos:
                        try:
                            merge_dicts(
                                data[section],
                                func(
                                    comp_geo,
                                    session,
                                    year),
                                comp_geo.geo_level)
                        except KeyError as e:
                            msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                                geo.geoid, section, comp_geo.geoid, e)
                            log.fatal(msg, exc_info=e)
                            raise ValueError(msg)

                else:
                    data[section] = func(geo, session)

                    # get profiles for comparative geometries
                    for comp_geo in comparative_geos:
                        try:
                            merge_dicts(
                                data[section], func(
                                    comp_geo, session), comp_geo.geo_level)
                        except KeyError as e:
                            msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                                geo.geoid, section, comp_geo.geoid, e)
                            log.fatal(msg, exc_info=e)
                            raise ValueError(msg)

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        if 'households' in sections:
            group_remainder(data['households']
                            ['roofing_material_distribution'], 5)
            group_remainder(data['households']
                            ['wall_material_distribution'], 5)
        data['afrobarometer'] = get_afrobarometer_profile(geo, session)
        data['gender'] = gender_stats_data(geo, session)
        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    sex_dist_data = LOCATIONNOTFOUND
    religion_dist_data = LOCATIONNOTFOUND
    urban_dist_data = LOCATIONNOTFOUND
    age_dist_data = LOCATIONNOTFOUND
    age_cats = LOCATIONNOTFOUND
    total_urbanised = 0
    total_pop = 0
    median = 0
    with dataset_context(year='2009'):
        try:
            # sex
            sex_dist_data, total_pop = get_stat_data(
                'sex', geo, session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'])

            religion_dist_data, _ = get_stat_data(
                'religion', geo, session)

            # urban/rural by sex
            urban_dist_data, _ = get_stat_data(
                ['rural or urban', 'sex'], geo, session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'])

            for data in urban_dist_data['Urban'].itervalues():
                if 'numerators' in data:
                    total_urbanised += data['numerators']['this']

            # median age
            db_model_age = get_datatable('ageincompletedyears_ruralorurban_sex')
            objects = db_model_age.get_rows_for_geo(geo, session)
            objects = sorted((o for o in objects if getattr(o,
                                                            'age in completed years') != 'unspecified'),
                             key=lambda x: int(
                                 getattr(x, 'age in completed years').replace(
                                     '+', '')))
            median = calculate_median(objects, 'age in completed years')

            # age in 10 year groups
            def age_recode(f, x):
                age = int(x.replace('+', ''))
                if age >= 80:
                    return '80+'
                bucket = 10 * (age / 10)
                return '%d-%d' % (bucket, bucket + 9)

            age_dist_data, _ = get_stat_data(
                'age in completed years', geo, session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'],
                recode=age_recode, exclude=['unspecified'])

            # age category
            def age_cat_recode(f, x):
                age = int(x.replace('+', ''))
                if age < 18:
                    return 'Under 18'
                elif age >= 65:
                    return '65 and over'
                else:
                    return '18 to 64'

            age_cats, _ = get_stat_data(
                'age in completed years', geo, session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'],
                recode=age_cat_recode,
                exclude=['unspecified'])

        except Exception:
            pass

        is_missing = sex_dist_data.get('is_missing') and \
                     religion_dist_data.get('is_missing') and \
                     urban_dist_data.get('is_missing') and \
                     age_dist_data.get('is_missing')

        final_data = {
            'is_missing': is_missing,
            'sex_ratio': sex_dist_data,
            'religion_ratio': religion_dist_data,
            'urban_distribution': urban_dist_data,
            'urbanised': {
                'name': 'In urban areas',
                'numerators': {'this': total_urbanised},
                'values': {'this': round(total_urbanised / total_pop * 100, 2)}
            },
            'age_group_distribution': age_dist_data,
            'age_category_distribution': age_cats,
            'median_age': {
                "name": "Median age",
                "values": {"this": median},
            },
            'total_population': {
                "name": "People",
                "values": {"this": total_pop}
            }
        }

    return final_data


def get_education_profile(geo, session):
    edu_dist_data = LOCATIONNOTFOUND
    school_attendance_dist = LOCATIONNOTFOUND
    secondary_or_higher = 0
    total_never = 0.0
    total_pop = 0
    with dataset_context(year='2009'):
        try:
            # highest level reached
            edu_dist_data, total_pop = get_stat_data(
                'highest education level reached', geo, session,
                key_order=['None', 'Pre-primary', 'Primary', 'Secondary',
                           'Tertiary',
                           'University', 'Youth polytechnic', 'Basic literacy',
                           'Madrassa'])

            for key, data in edu_dist_data.iteritems():
                if key in ['Secondary', 'Tertiary', 'University',
                           'Youth polytechnic']:
                    secondary_or_higher += data['numerators']['this']

            # school attendance by sex
            school_attendance_dist, _ = get_stat_data(
                ['school attendance', 'sex'], geo, session,
                key_order={'school attendance': ['Never attended', 'At school',
                                                 'Left school', 'Unspecified'],
                           'sex': ['Female', 'Male']})

            for data in school_attendance_dist['Never attended'].itervalues():
                if 'numerators' in data:
                    total_never += data['numerators']['this']
        except Exception:
            pass

        is_missing = edu_dist_data.get(
            'is_missing') and school_attendance_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'education_reached_distribution': edu_dist_data,
        'education_reached_secondary_or_higher': {
            'name': 'Reached Secondary school or higher',
            'numerators': {'this': secondary_or_higher},
            'values': {'this': round(secondary_or_higher / total_pop * 100, 2)}
        },
        'school_attendance_distribution': school_attendance_dist,
        'school_attendance_never': {
            'name': 'Never attended school',
            'numerators': {'this': total_never},
            'values': {'this': round(total_never / total_pop * 100, 2)}
        },
    }


def get_employment_profile(geo, session):
    employment_activity_dist = LOCATIONNOTFOUND
    total_workers = 0
    total_employed = 0.0
    with dataset_context(year='2009'):
        try:
            # employment status
            employment_activity_dist, total_workers = get_stat_data(
                ['employment activity status', 'sex'], geo, session,
                recode={'employment activity status': dict(EMPLOYMENT_RECODES)},
                key_order={
                    'employment activity status': EMPLOYMENT_RECODES.values(),
                    'sex': ['Female', 'Male']})

            for data in employment_activity_dist['Employed'].itervalues():
                if 'numerators' in data:
                    total_employed += data['numerators']['this']
        except Exception:
            pass

    return {
        'is_missing': employment_activity_dist.get('is_missing'),
        'activity_status_distribution': employment_activity_dist,
        'employed': {
            'name': 'Employment',
            'numerators': {'this': total_employed},
            'values': {'this': round(total_employed / total_workers * 100, 2)},
        },
    }


def get_households_profile(geo, session):
    water_source_dist = LOCATIONNOTFOUND
    household_heads_dist = LOCATIONNOTFOUND
    waste_disposal_dist = LOCATIONNOTFOUND
    lighting_dist = LOCATIONNOTFOUND
    roofing_dist = LOCATIONNOTFOUND
    wall_dist = LOCATIONNOTFOUND
    floor_dist = LOCATIONNOTFOUND
    total_households = 0
    total_piped = 0
    total_sewer_or_septic = 0
    total_electricity = 0

    with dataset_context(year='2009'):
        try:
            # main source of water
            water_source_dist, total_households = get_stat_data(
                'main source of water', geo, session,
                recode=dict(WATER_SOURCE_RECODES),
                key_order=WATER_SOURCE_RECODES.values())
            total_piped = water_source_dist['Piped']['numerators']['this']

            household_heads_dist, total_ = get_stat_data('Household_Heads', geo,
                                                         session)

            # main mode of waste disposal
            waste_disposal_dist, _ = get_stat_data(
                'main mode of human waste disposal', geo, session,
                key_order=['Main sewer', 'Septic tank', 'Cess pool', 'Bucket',
                           'Bush', 'Other'])

            total_sewer_or_septic = 0.0
            for key in ['Main sewer', 'Septic tank']:
                if key in waste_disposal_dist:
                    total_sewer_or_septic += \
                    waste_disposal_dist[key]['numerators']['this']

            # lighting
            lighting_dist, _ = get_stat_data(
                'main type of lighting fuel', geo, session,
                key_order=['Electricity', 'Solar', 'Gas lamps',
                           'Pressure lamps', 'Tin lamps', 'Lanterns', 'Wood',
                           'Other'])
            total_electricity = lighting_dist['Electricity']['numerators'][
                'this']

            # construction materials
            roofing_dist, _ = get_stat_data(
                'main type of roofing material', geo, session,
                order_by='-total')

            wall_dist, _ = get_stat_data(
                'main type of wall material', geo, session,
                order_by='-total')

            floor_dist, _ = get_stat_data(
                'main type of floor material', geo, session,
                order_by='-total')
        except Exception:
            pass

        is_missing = floor_dist.get('is_missing') and \
                     wall_dist.get('is_missing') and \
                     roofing_dist.get('is_missing') and \
                     lighting_dist.get('is_missing') and \
                     waste_disposal_dist.get('is_missing') and \
                     water_source_dist.get('is_missing') and \
                     household_heads_dist.get('is_missing')
        return {
            'is_missing': is_missing,
            'total_households': {
                'name': 'Households',
                'values': {'this': total_households},
            },
            'household_heads': household_heads_dist,
            'water_source_distribution': water_source_dist,
            'piped_water': {
                'name': 'Have piped water',
                'numerators': {'this': total_piped},
                'values': {
                    'this': round(total_piped / total_households * 100, 2)},
            },
            'waste_disposal_distribution': waste_disposal_dist,
            'sewer_or_septic': {
                'name': 'Have a sewer or septic tank',
                'numerators': {'this': total_sewer_or_septic},
                'values': {'this': round(
                    total_sewer_or_septic / total_households * 100, 2)},
            },
            'lighting_distribution': lighting_dist,
            'lighting_electricity': {
                'name': 'Use electricity for lighting',
                'numerators': {'this': total_electricity},
                'values': {
                    'this': round(total_electricity / total_households * 100,
                                  2)},
            },
            'roofing_material_distribution': roofing_dist,
            'floor_material_distribution': floor_dist,
            'wall_material_distribution': wall_dist,
        }


def get_contraceptive_use_profile(geo, session):
    contraceptive_use_dist_data = LOCATIONNOTFOUND
    contraceptive_modern_method_dist_data = LOCATIONNOTFOUND
    contraceptive_traditional_method_dist_data = LOCATIONNOTFOUND
    cpr = 0

    with dataset_context(year='2014'):
        try:
            # contraceptive_use stats
            contraceptive_use_dist_data, _ = get_stat_data(
                'contraceptive_use', geo, session,
                key_order=['Modern', 'Traditional', 'Not using'])

            modern = contraceptive_use_dist_data['Modern']['numerators']['this']
            traditional = \
            contraceptive_use_dist_data['Traditional']['numerators']['this']
            cpr = modern + traditional

            contraceptive_modern_method_dist_data, _ = get_stat_data(
                'contraceptive_modern_method', geo, session)
            contraceptive_traditional_method_dist_data, _ = get_stat_data(
                'contraceptive_traditional_method', geo, session)
        except Exception:
            pass

        is_missing = contraceptive_modern_method_dist_data.get('is_missing') and \
                     contraceptive_traditional_method_dist_data.get(
                         'is_missing') and \
                     contraceptive_use_dist_data.get('is_missing')

        return {
            'is_missing': is_missing,
            'contraceptive_use_distribution': contraceptive_use_dist_data,
            'modern_methods_distribution':
                contraceptive_modern_method_dist_data,
            'traditional_methods_distribution':
                contraceptive_traditional_method_dist_data,
            'cpr': {
                'name': 'Contraceptive prevalence rate',
                'numerators': {'this': cpr},
                'values': {'this': cpr},
            }
        }


def get_maternal_care_indicators_profile(geo, session):
    maternal_care_indicators_data = LOCATIONNOTFOUND
    use_of_ipt_dist = LOCATIONNOTFOUND
    antenatal_dist = 0
    anc_visits_dist = 0
    delivery_by_skilled_provider_dist = 0
    delivery_in_health_facility = 0
    one_or_more_dist = 0
    two_or_more_dist = 0
    three_or_more_dist = 0

    with dataset_context(year='2014'):
        try:
            # maternal care indicators stats
            maternal_care_indicators_data, _ = get_stat_data(
                'maternal care indicators', geo, session)

            delivery_in_health_facility = \
                maternal_care_indicators_data[
                    'Percentage delivered in a health facility']['numerators'][
                    'this']

            antenatal_care_by_skilled_provider = \
                maternal_care_indicators_data[
                    'Percentage with antenatal care from a skilled provider'][
                    'numerators']['this']
            antenatal_dist = get_dictionary('From a skilled provider',
                                            'From a non-skilled provider',
                                            antenatal_care_by_skilled_provider,
                                            maternal_care_indicators_data)

            anc_visits = \
            maternal_care_indicators_data['Percentage with 4+ ANC visits'][
                'numerators']['this']
            anc_visits_dist = get_dictionary(
                '4+', 'Less than 4', anc_visits, maternal_care_indicators_data)

            delivery_by_skilled_provider = \
                maternal_care_indicators_data[
                    'Percentage delivered by a skilled provider']['numerators'][
                    'this']
            delivery_by_skilled_provider_dist = get_dictionary(
                'Skilled provider', 'Non-skilled provider',
                delivery_by_skilled_provider, maternal_care_indicators_data)

            # Use of IPT
            use_of_ipt_dist, _ = get_stat_data(
                'use of ipt', geo, session)

            one_or_more_dist = use_of_ipt_dist['1 or more']['numerators'][
                'this']
            one_or_more_dist = get_dictionary(
                '1 or more', 'Less', one_or_more_dist,
                maternal_care_indicators_data)
            two_or_more_dist = use_of_ipt_dist['2 or more']['numerators'][
                'this']
            two_or_more_dist = get_dictionary(
                '2 or more', 'Less', two_or_more_dist,
                maternal_care_indicators_data)
            three_or_more_dist = use_of_ipt_dist['3 or more']['numerators'][
                'this']
            three_or_more_dist = get_dictionary(
                '3 or more', 'Less', three_or_more_dist,
                maternal_care_indicators_data)

        except Exception:
            pass

    is_missing = maternal_care_indicators_data.get('is_missing') and \
                 use_of_ipt_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'maternal_care_indicators': maternal_care_indicators_data,
        'antenatal_dist': antenatal_dist,
        'anc_visits_dist': anc_visits_dist,
        'delivery_by_skilled_provider_dist': delivery_by_skilled_provider_dist,
        'delivery_in_health_facility': {
            'name': 'babies delivered in a health facility',
            'numerators': {'this': delivery_in_health_facility},
            'values': {'this': round(delivery_in_health_facility, 2)}
        },
        'one_or_more_dist': one_or_more_dist,
        'two_or_more_dist': two_or_more_dist,
        'three_or_more_dist': three_or_more_dist,
    }


def get_knowledge_of_hiv_prevention_methods_profile(geo, session):
    dist = LOCATIONNOTFOUND
    with dataset_context(year='2014'):
        try:
            dist, _ = get_stat_data(
                ['knowledge of hiv prevention methods',
                 'sex'], geo, session,
                key_order={
                    'knowledge of hiv prevention methods': {'Using condoms',
                                                            'Being faithful',
                                                            'Both'},
                    'sex': ['Female', 'Male']})

            # need to use numerators instead of values
            for key in dist:
                if key == 'metadata':
                    continue
                dist[key]['Female']['values']['this'] = 100 - \
                                                        dist[key]['Female'][
                                                            'numerators'][
                                                            'this']
                dist[key]['Male']['values']['this'] = 100 - \
                                                      dist[key]['Male'][
                                                          'numerators']['this']
        except:
            pass

    return {
        'is_missing': dist.get('is_missing'),
        'distribution': dist
    }


def get_itn_profile(geo, session):
    possession_dist = LOCATIONNOTFOUND
    use_dist = LOCATIONNOTFOUND
    households_with_at_least_one_itn = 0
    percentage_households_with_ITN_for_every_two_people = 0
    average_itn_per_household = 0
    households_with_at_least_one_itn_use_dist = 0
    all_households_use_dist = 0

    with dataset_context(year='2014'):
        try:
            # household possession and use of ITN
            possession_dist, _ = get_stat_data(
                ['household possession of itn'], geo, session)

            households_with_at_least_one_itn = \
                possession_dist['Households with at least one ITN'][
                    'numerators']['this']
            households_with_at_least_one_itn = get_dictionary(
                'Possess at least one ITN', 'No ITN',
                households_with_at_least_one_itn, possession_dist)

            percentage_households_with_ITN_for_every_two_people = \
                possession_dist[
                    'Percentage households with ITN for every 2 people in household'][
                    'numerators']['this']
            percentage_households_with_ITN_for_every_two_people = get_dictionary(
                '1:2',
                'less than 1:2',
                percentage_households_with_ITN_for_every_two_people,
                possession_dist)

            average_itn_per_household = \
            possession_dist['Average ITN per household']['numerators']['this']

            use_dist, _ = get_stat_data(
                ['household', 'users', 'itn_use'], geo, session)
            households_with_at_least_one_itn_use_dist = use_dist[
                'With at least one ITN']
            all_households_use_dist = use_dist['All']
        except Exception:
            pass

    is_missing = use_dist.get('is_missing') and possession_dist.get(
        'is_missing')

    return {
        'is_missing': is_missing,
        'households_with_at_least_one_itn': households_with_at_least_one_itn,
        'percentage_households_with_ITN_for_every_two_people': percentage_households_with_ITN_for_every_two_people,
        'average_itn_per_household': {
            'name': 'Average number of insecticide-treated nets (ITNs) per household',
            'numerators': {'this': average_itn_per_household},
            'values': {'this': average_itn_per_household}
        },
        'households_with_at_least_one_itn_use_dist': households_with_at_least_one_itn_use_dist,
        'all_households_use_dist': all_households_use_dist
    }


def get_fertility_profile(geo, session):
    dist = LOCATIONNOTFOUND
    percentage_women_age_15_49_currently_pregnant = 0
    fertility_rate = 0.0
    mean_number_of_children_ever_born_to_women_aged_40_49 = 0.0

    with dataset_context(year='2014'):
        try:
            # fertility
            dist, _ = get_stat_data(['fertility'], geo, session)

            percentage_women_age_15_49_currently_pregnant = \
            dist['Pregnant']['numerators']['this']

            percentage_women_age_15_49_currently_pregnant = get_dictionary(
                'Pregnant', 'Not pregnant',
                percentage_women_age_15_49_currently_pregnant, dist)

            fertility_rate = dist['Rate']['numerators']['this']
            mean_number_of_children_ever_born_to_women_aged_40_49 = \
            dist['Mean']['numerators']['this']
        except Exception:
            pass

    return {
        'is_missing': dist.get('is_missing'),
        'percentage_women_age_15_49_currently_pregnant': percentage_women_age_15_49_currently_pregnant,
        'fertility_rate': {
            'name': 'Fertility',
            'numerators': {'this': fertility_rate},
            'values': {'this': fertility_rate}
        },
        'mean_number_of_children_ever_born_to_women_aged_40_49': {
            'name': 'Mean number of children ever born to women aged 40-49',
            'numerators': {
                'this': mean_number_of_children_ever_born_to_women_aged_40_49},
            'values': {
                'this': mean_number_of_children_ever_born_to_women_aged_40_49}
        },
    }


def get_vaccinations_profile(geo, session):
    dist = LOCATIONNOTFOUND
    vacc_dist = LOCATIONNOTFOUND
    fully_vaccinated = 0
    all_basic_vaccinations = 0
    percentage_with_vaccination_cards = 0
    not_vaccinated = 0

    with dataset_context(year='2014'):
        try:
            # vaccinations
            dist, _ = get_stat_data(['vaccinations'], geo, session,
                                    key_order=['BCG', 'Pentavalent 1',
                                               'Pentavalent 2', 'Pentavalent 3',
                                               'Polio 0', 'Polio 1',
                                               'Polio 2', 'Polio 3', 'Measles',
                                               'Pneumococcal 1',
                                               'Pneumococcal 2',
                                               'Pneumococcal 3', ],
                                    only=['BCG', 'Pentavalent 1',
                                          'Pentavalent 2', 'Pentavalent 3',
                                          'Polio 0', 'Polio 1',
                                          'Polio 2', 'Polio 3', 'Measles',
                                          'Pneumococcal 1',
                                          'Pneumococcal 2', 'Pneumococcal 3', ],
                                    )

            # need to use numerators instead of values
            for key in dist:
                if key == 'metadata':
                    continue
                dist[key]['values']['this'] = dist[key]['numerators']['this']

            vacc_dist, _ = get_stat_data(['vaccinations'], geo, session,
                                         # only=['All basic vaccinations', 'Percentage with vaccination card',\
                                         # 'Fully vaccinated', 'Not vaccinated'],
                                         )

            fully_vaccinated = vacc_dist['Fully vaccinated']['numerators'][
                'this']
            fully_vaccinated = get_dictionary(
                'Fully vaccinated', 'Not fully vaccinated', fully_vaccinated,
                dist)

            all_basic_vaccinations = \
            vacc_dist['All basic vaccinations']['numerators']['this']
            all_basic_vaccinations = get_dictionary('All basic vaccinations',
                                                    'Basic vaccinations not administered',
                                                    all_basic_vaccinations,
                                                    dist)

            percentage_with_vaccination_cards = \
            vacc_dist['Percentage with vaccination card']['numerators']['this']
            percentage_with_vaccination_cards = get_dictionary(
                'Have vaccination cards', 'No vaccination cards',
                percentage_with_vaccination_cards, dist)
            not_vaccinated = vacc_dist['Not vaccinated']['numerators']['this']
        except Exception:
            pass

    is_missing = dist.get('is_missing') and vacc_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'distribution': dist,
        'fully_vaccinated': fully_vaccinated,
        'all_basic_vaccinations': all_basic_vaccinations,
        'percentage_with_vaccination_cards': percentage_with_vaccination_cards,
        'not_vaccinated': {
            'name': 'Not vaccinated',
            'numerators': {'this': not_vaccinated},
            'values': {'this': not_vaccinated},
        }
    }


def get_type_treatment_profile(geo, session):
    # Treatment for acute respiratory infection symptoms, fever, and diarrhoea
    dist = LOCATIONNOTFOUND
    treatment_of_chidren_with_fever_dist = LOCATIONNOTFOUND
    ari_dist = 0
    fever_dist = 0
    children_with_fever = 0

    with dataset_context(year='2014'):
        try:
            # stats
            dist, _ = get_stat_data(['type', 'treatment'], geo, session,
                                    key_order={
                                        'type': ['ARI', 'Fever', 'Diarrhoea'],
                                        'treatment': [
                                            'Sought treatment from health facility or provider',
                                            'ORT', 'Zinc', 'ORS and zinc',
                                            'Fluid from ORS packet'
                                            ]
                                    })
            # need to use numerators instead of values
            for key in dist:
                if key == 'metadata':
                    continue
                for other_key in dist[key]:
                    if other_key == 'metadata':
                        continue
                    try:
                        dist[key][other_key]['values']['this'] = \
                        dist[key][other_key]['numerators']['this']
                    except BaseException:
                        dist[key][other_key] = {'values': {
                            'this': 0}, 'numerators': {'this': 0}}

            ari = \
            dist['ARI']['Sought treatment from health facility or provider'][
                'numerators']['this']
            fever = \
            dist['Fever']['Sought treatment from health facility or provider'][
                'numerators']['this']
            dist.pop('ARI')
            dist.pop('Fever')
            ari_dist = get_dictionary('Sought', 'Did not seek', ari, dist)
            fever_dist = get_dictionary('Sought', 'Did not seek', fever, dist)

            treatment_of_chidren_with_fever_dist, _ = get_stat_data(
                ['treatment of children with fever'], geo, session)
            children_with_fever = \
            treatment_of_chidren_with_fever_dist['Had fever']['numerators'][
                'this']
            treatment_of_chidren_with_fever_dist.pop('Had fever')

            # need to use numerators instead of values
            for v in treatment_of_chidren_with_fever_dist:
                if v == 'metadata':
                    continue
                treatment_of_chidren_with_fever_dist[v]['values'][
                    'this'] = \
                treatment_of_chidren_with_fever_dist[v]['numerators']['this']

        except Exception:
            pass

    is_missing = dist.get('is_missing') and \
                 treatment_of_chidren_with_fever_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'treatment_distribution': dist,
        'ari_dist': ari_dist,
        'fever_dist': fever_dist,
        'treatment_of_chidren_with_fever_dist': treatment_of_chidren_with_fever_dist,
        'children_with_fever': {
            'name': 'Percentage of children with fever in the two weeks preceding the survey',
            'numerators': {'this': children_with_fever},
            'values': {'this': children_with_fever}
        },
    }


def get_nutrition_profile(geo, session):
    height_for_age_dist = LOCATIONNOTFOUND
    weight_for_height_dist = LOCATIONNOTFOUND
    weight_for_age_dist = LOCATIONNOTFOUND
    height_for_age_below_minus_three_dist = 0
    height_for_age_below_minus_two_dist = 0
    height_for_age_mean_z_score = 0
    weight_for_height_below_minus_three_dist = 0
    weight_for_height_below_minus_two_dist = 0
    weight_for_height_above_plus_two_dist = 0
    weight_for_height_mean_z_score = 0
    weight_for_age_below_minus_two_dist = 0
    weight_for_age_below_minus_three_dist = 0
    weight_for_age_above_plus_two_dist = 0
    weight_for_age_mean_z_score = 0

    with dataset_context(year='2014'):
        try:
            # nutritional stats among children
            height_for_age_dist, _ = get_stat_data(
                ['height for age'], geo, session)
            for key in height_for_age_dist:
                if key == 'metadata':
                    continue
                height_for_age_dist[key]['values']['this'] = \
                height_for_age_dist[key]['numerators']['this']
            height_for_age_below_minus_three = \
            height_for_age_dist['Below -3']['numerators']['this']
            height_for_age_below_minus_three_dist = get_dictionary(
                'Below -3 SD', 'Above -3 SD', height_for_age_below_minus_three,
                height_for_age_dist)
            height_for_age_below_minus_two = \
            height_for_age_dist['Below -2']['numerators']['this']
            height_for_age_below_minus_two_dist = get_dictionary(
                'Below -2 SD', 'Above -2 SD', height_for_age_below_minus_two,
                height_for_age_dist)
            height_for_age_mean_z_score = \
            height_for_age_dist['Mean Z-score']['numerators']['this']

            weight_for_height_dist, _ = get_stat_data(
                ['weight for height'], geo, session)
            for key in weight_for_height_dist:
                if key == 'metadata':
                    continue
                weight_for_height_dist[key]['values']['this'] = \
                weight_for_height_dist[key]['numerators']['this']
            weight_for_height_below_minus_three = \
            weight_for_height_dist['Below -3']['numerators']['this']
            weight_for_height_below_minus_three_dist = get_dictionary(
                'Below -3 SD', 'Above -3 SD',
                weight_for_height_below_minus_three, weight_for_height_dist)
            weight_for_height_below_minus_two = \
            weight_for_height_dist['Below -2']['numerators']['this']
            weight_for_height_below_minus_two_dist = get_dictionary(
                'Below -2 SD', 'Above -2 SD', weight_for_height_below_minus_two,
                weight_for_height_dist)
            weight_for_height_above_plus_two = \
            weight_for_height_dist['Above +2']['numerators']['this']
            weight_for_height_above_plus_two_dist = get_dictionary(
                'Above +2 SD', 'Below +2 SD', weight_for_height_above_plus_two,
                weight_for_height_dist)
            weight_for_height_mean_z_score = \
            weight_for_height_dist['Mean Z-score']['numerators']['this']

            weight_for_age_dist, _ = get_stat_data(
                ['weight for height'], geo, session)
            for key in weight_for_age_dist:
                if key == 'metadata':
                    continue
                weight_for_age_dist[key]['values']['this'] = \
                weight_for_age_dist[key]['numerators']['this']
            weight_for_age_below_minus_three = \
            weight_for_age_dist['Below -3']['numerators']['this']
            weight_for_age_below_minus_three_dist = get_dictionary(
                'Below -3 SD', 'Above -3 SD',
                weight_for_age_below_minus_three, weight_for_age_dist)
            weight_for_age_below_minus_two = \
            weight_for_age_dist['Below -2']['numerators']['this']
            weight_for_age_below_minus_two_dist = get_dictionary('Below -2 SD',
                                                                 'Above -2 SD',
                                                                 weight_for_age_below_minus_two,
                                                                 weight_for_age_dist)
            weight_for_age_above_plus_two = \
            weight_for_age_dist['Above +2']['numerators']['this']
            weight_for_age_above_plus_two_dist = get_dictionary('Above +2 SD',
                                                                'Below +2 SD',
                                                                weight_for_age_above_plus_two,
                                                                weight_for_age_dist)
            weight_for_age_mean_z_score = \
            weight_for_age_dist['Mean Z-score']['numerators']['this']

        except Exception:
            pass

    is_missing = height_for_age_dist.get('is_missing') and \
                 weight_for_height_dist.get('is_missing') and \
                 weight_for_age_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'height_for_age_below_minus_three_dist': height_for_age_below_minus_three_dist,
        'height_for_age_below_minus_two_dist': height_for_age_below_minus_two_dist,
        'height_for_age_mean_z_score': {
            'name': 'Mean Z score(height-for-age)',
            'numerators': {'this': height_for_age_mean_z_score},
            'values': {'this': height_for_age_mean_z_score},
        },
        'weight_for_height_below_minus_three_dist': weight_for_height_below_minus_three_dist,
        'weight_for_height_below_minus_two_dist': weight_for_height_below_minus_two_dist,
        'weight_for_height_above_plus_two_dist': weight_for_height_above_plus_two_dist,
        'weight_for_height_mean_z_score': {
            'name': 'Mean Z score (weight-for-height)',
            'numerators': {'this': weight_for_height_mean_z_score},
            'values': {'this': weight_for_height_mean_z_score},
        },
        'weight_for_age_below_minus_three_dist': weight_for_age_below_minus_three_dist,
        'weight_for_age_below_minus_two_dist': weight_for_age_below_minus_two_dist,
        'weight_for_age_above_plus_two_dist': weight_for_age_above_plus_two_dist,
        'weight_for_age_mean_z_score': {
            'name': 'Mean Z score (weight-for-age)',
            'numerators': {'this': weight_for_age_mean_z_score},
            'values': {'this': weight_for_age_mean_z_score},
        }
    }


def get_protests_profile(geo, session):
    number_of_protests_dist = LOCATIONNOTFOUND
    number_of_protests = None
    with dataset_context(year='2014'):
        try:
            number_of_protests_dist, _ = get_stat_data(
                "protests", geo, session)
            number_of_protests = \
            number_of_protests_dist['Number of protests']['numerators']['this']
        except Exception:
            pass

    return {
        'is_missing': number_of_protests_dist.get('is_missing'),
        'number_of_protests': {
            'name': 'Number of protests',
            'numerators': {'this': number_of_protests},
            'values': {'this': number_of_protests},
        }
    }


def get_school_fires_profile(geo, session):
    school_fires_dist = LOCATIONNOTFOUND
    schools = 0
    number_of_school_fires = 0
    with dataset_context(year='2016'):
        try:
            school_fires_dist, number_of_school_fires = get_stat_data(
                "schoolfires", geo, session)
            schools = school_fires_dist[school_fires_dist.keys()[0]][
                'name'].replace(
                ',', '<br>').replace('"', '')
        except Exception:
            pass

    return {
        'is_missing': school_fires_dist.get('is_missing'),
        'schoolfires': {
            'name': 'Number of school fires',
            'numerators': {'this': number_of_school_fires},
            'values': {'this': number_of_school_fires},
        },
        'metadata': school_fires_dist['metadata'],
        'schools': schools
    }


def get_crime_report_profile(geo, session):
    stats_dist = LOCATIONNOTFOUND
    crimes_dist = LOCATIONNOTFOUND
    crimes = 0
    crimeindex = 0

    with dataset_context(year='2015'):
        try:
            stats_dist, s_ = get_stat_data("crimereport", geo, session)
            crimes_dist, c_ = get_stat_data(
                "typesofcrime", geo, session)
            crimes = stats_dist['Crimes']['numerators']['this']
            crimeindex = stats_dist['Crimesindex']['numerators']['this']

        except Exception:
            pass

    is_missing = stats_dist.get('is_missing') and crimes_dist.get('is_missing')
    return {
        'is_missing': is_missing,
        'crimes': {
            'name': 'Number of crimes',
            'numerators': {'this': crimes},
            'values': {'this': crimes},
        },
        'crimesindex': {
            'name': 'Crime index per 100,000 people',
            'numerators': {'this': crimeindex},
            'values': {'this': crimeindex},
        },
        'crimes_dist': crimes_dist,
        'metadata': crimes_dist['metadata']
    }


def get_health_ratios_profile(geo, session):
    ratios_dist = LOCATIONNOTFOUND
    dr = 0
    nr = 0
    with dataset_context(year='2014'):
        try:
            ratios_dist, _ = get_stat_data(
                "healthratios", geo, session)
            dr = ratios_dist['Doctor ratio']['numerators']['this']
            nr = ratios_dist['Nurse ratio']['numerators']['this']
        except Exception:
            pass

    return {
        'is_missing': ratios_dist.get('is_missing'),
        'doctorratio': {
            'name': 'Doctor to population ratio',
            'numerators': {'this': dr},
            'values': {'this': dr},
        },
        'nurseratio': {
            'name': 'Nurse to population ratio',
            'numerators': {'this': nr},
            'values': {'this': nr},
        },
        'metdata': ratios_dist['metadata']
    }


def get_voter_registration_profile(geo, session, year):
    field = 'voterregistration_%s' % year
    with dataset_context(year=year):
        stats_dist, _ = get_stat_data(
            field, geo, session)

        ids_issued = stats_dist['IDs issued']['numerators']['this']
        dead_with_ids = stats_dist['Dead with IDs']['numerators']['this']
        reg_centers = stats_dist['Registration centers']['numerators']['this']
        reg = stats_dist['Registered voters']['numerators']['this']
        aft = stats_dist['Additional voters registered']['numerators']['this']
        total = stats_dist['Total registered']['numerators']['this']
        not_registered = \
        stats_dist['Potential voting population not registered']['numerators'][
            'this']

        ids_issued_year = "2015" if year == "2015" else "2016"
        report_period = "Oct 2015" if year == "2015" else "Dec 2016"

        r = {
            "ids_issued": {
                'name': 'Number of IDs issued as at Dec %s' % ids_issued_year,
                'numerators': {'this': ids_issued},
                'values': {'this': ids_issued},
            },
            'dead_with_ids': {
                'name': 'Projected dead with IDs 10.57%',
                'numerators': {'this': dead_with_ids},
                'values': {'this': dead_with_ids},
            },
            'reg_centers': {
                'name': 'Number of registration centers',
                'numerators': {'this': reg_centers},
                'values': {'this': reg_centers},
            },
            'total': {
                'name': 'Total population registered to vote',
                'numerators': {'this': total},
                'values': {'this': total},
            },
            'registration': {
                'march': {
                    'name': 'As at Mar 2015',
                    'numerators': {'this': reg},
                    'values': {'this': round((reg / total) * 100)},
                },
                'oct': {
                    'name': 'As at %s' % (report_period),
                    'numerators': {'this': aft},
                    'values': {'this': round((aft / total) * 100)},
                }
            },
            'registration_ratio': {
                'march': {
                    'name': 'Registered',
                    'numerators': {'this': total},
                    'values': {'this': round(
                        (total / (total + not_registered)) * 100)},
                },
                'oct': {
                    'name': 'Not registered',
                    'numerators': {'this': not_registered},
                    'values': {'this': round(
                        (not_registered / (total + not_registered)) * 100)},
                }
            },
            'metdata': stats_dist['metadata']
        }

        if not year == "2015":
            actual_dead_with_ids = \
            stats_dist["Actual Dead with IDs"]["numerators"]["this"]
            polling_stations = stats_dist["Polling stations"]["numerators"][
                "this"]
            male_voters = stats_dist["Male voters"]["numerators"]["this"]
            female_voters = stats_dist["Female voters"]["numerators"]["this"]

            r['actual_dead_with_ids'] = {
                'name': 'Actual dead registered with IDs',
                'numerators': {'this': actual_dead_with_ids},
                'values': {'this': actual_dead_with_ids},
            }

            r['polling_stations'] = {
                'name': 'Number of polling stations',
                'numerators': {'this': polling_stations},
                'values': {'this': polling_stations},
            }

            r['gender_ratio'] = {
                'female': {
                    'name': "Number of female voters",
                    'numerators': {'this': female_voters},
                    'values': {'this': round((female_voters / total) * 100)},
                },
                'male': {
                    'name': 'Number of male voters',
                    'numerators': {'this': male_voters},
                    'values': {'this': round((male_voters / total) * 100)},
                }
            }
    return r


def get_crop_production_profile(geo, session):
    dist = LOCATIONNOTFOUND
    area_dist = LOCATIONNOTFOUND
    prod_dist_k = LOCATIONNOTFOUND
    prod_dist_t = LOCATIONNOTFOUND
    yield_dist = LOCATIONNOTFOUND

    with dataset_context(year='2014'):
        try:
            dist, _ = get_stat_data("crop_production", geo, session,
                                    percent=False)
            area_dist = OrderedDict()
            area_dist['maize'] = dist['Maize']
            area_dist['beans'] = dist['Beans']
            area_dist['wheat'] = dist['Wheat']
            area_dist['barley'] = dist['Barley']
            area_dist['rice'] = dist['Rice']
            area_dist['sorghum'] = dist['Sorghum']
            area_dist['millet'] = dist['Millet']
            area_dist['cowpeas'] = dist['Cowpeas']
            area_dist['greengrams'] = dist['Greengrams']
            area_dist['sweetpotatoes'] = dist['Sweetpotatoes']
            area_dist['cassava'] = dist['Cassava']
            area_dist['cocoyam'] = dist['Cocoyam']
            area_dist['irishpotatoes'] = dist['Irishpotatoes']
            area_dist['metadata'] = dist['metadata']
            prod_dist_k = OrderedDict()
            prod_dist_k['maize'] = replace_name(dist['Maize (90kg bags)'],
                                                'Maize')
            prod_dist_k['beans'] = replace_name(dist['Beans (90kg bags)'],
                                                'Beans')
            prod_dist_k['wheat'] = replace_name(dist['Wheat (90kg bags)'],
                                                'Wheat')
            prod_dist_k['sorghum'] = replace_name(
                dist['Sorghum (90kg bags)'], 'Sorghum')
            prod_dist_k['millet'] = replace_name(dist['Millet (90kg bags)'],
                                                 'Millet')
            prod_dist_k['cowpeas'] = replace_name(
                dist['Cowpeas (90kg bags)'], 'Cowpeas')
            prod_dist_k['greengrams'] = replace_name(
                dist['Greengrams (90kg bags)'], 'Green grams')
            prod_dist_t = OrderedDict()
            prod_dist_t['barley'] = replace_name(dist['Barley (Ton)'], 'Barley')
            prod_dist_t['rice'] = replace_name(dist['Rice (Ton)'], 'Rice')
            prod_dist_t['sweetpotatoes'] = replace_name(
                dist['Sweetpotatoes (Ton)'], 'Sweet Potatoes')
            prod_dist_t['cassava'] = replace_name(dist['Cassava (Ton)'],
                                                  'Cassava')
            prod_dist_t['cocoyam'] = replace_name(dist['Cocoyam (Ton)'],
                                                  'Cocoyam')
            prod_dist_t['irishpotatoes'] = replace_name(
                dist['Irishpotatoes (Ton)'], 'Irish potatoes')
            prod_dist_t['metadata'] = dist['metadata']
            yield_dist = OrderedDict()
            yield_dist['maize'] = replace_name(dist['Maize yield'], 'Maize')
            yield_dist['beans'] = replace_name(dist['Beans yield'], 'Beans')
            yield_dist['wheat'] = replace_name(dist['Wheat yield'], 'Wheat')
            yield_dist['barley'] = replace_name(dist['Barley yield'], 'Barley')
            yield_dist['rice'] = replace_name(dist['Rice yield'], 'Rice')
            yield_dist['sorghum'] = replace_name(dist['Sorghum yield'],
                                                 'Sorghum')
            yield_dist['millet'] = replace_name(dist['Millet yield'], 'Millet')
            yield_dist['cowpeas'] = replace_name(dist['Cowpeas yield'],
                                                 'Cowpeas')
            yield_dist['greengrams'] = replace_name(
                dist['Greengrams yield'], 'Green grams')
            yield_dist['sweetpotatoes'] = replace_name(
                dist['Sweetpotatoes yield'], 'Sweet potatoes')
            yield_dist['cassava'] = replace_name(dist['Cassava yield'],
                                                 'Cassava')
            yield_dist['cocoyam'] = replace_name(dist['Cocoyam yield'],
                                                 'Cocoyam')
            yield_dist['irishpotatoes'] = replace_name(
                dist['Irishpotatoes yield'], 'Irish potatoes')
            yield_dist['metadata'] = dist['metadata']

        except Exception:
            pass

    is_missing = area_dist.get('is_missing') and \
                 prod_dist_k.get('is_missing') and \
                 prod_dist_t.get('is_missing') and \
                 yield_dist.get('is_missing')

    # todo fix is missing as true because there's something wrong that doesn't make sense
    is_missing = True

    return {
        'is_missing': is_missing,
        'area_dist': area_dist,
        'prod_dist_t': prod_dist_t,
        'prod_dist_k': prod_dist_k,
        'yield_dist': yield_dist,
    }


def get_livestock_profile(geo, session):
    total_hives = 0
    pop_dist = LOCATIONNOTFOUND
    cattle_pop = LOCATIONNOTFOUND
    hives_pop = LOCATIONNOTFOUND
    sheep_pop = LOCATIONNOTFOUND
    goat_pop = LOCATIONNOTFOUND
    poultry_pop = LOCATIONNOTFOUND
    prod_dist = LOCATIONNOTFOUND

    with dataset_context(year='2014'):
        try:
            dist, _ = get_stat_data("livestock_population",
                                    geo, session, percent=False)
            pop_dist = OrderedDict()
            pop_dist['cattle'] = sum_up(
                [dist['Cattle meat'], dist['Cattle dairy']], 'Cattle')
            pop_dist['sheep'] = sum_up(
                [dist['Sheep wool'], dist['Sheep hair']], 'Sheep')
            pop_dist['goats dairy'] = sum_up(
                [dist['Goat dairy'], dist['Goat meat']], 'Goat')
            pop_dist['poultry'] = sum_up(
                [dist['Broilers'], dist['Layers'], dist['Kienyeji'],
                 dist['Others'],
                 dist['Turkey'], dist['Ducks'], dist['Quails'],
                 dist['Guinea fowl'],
                 dist['Geese']], 'Poultry')
            pop_dist['pigs'] = dist['Pigs']
            pop_dist['rabbits'] = dist['Rabbits']
            pop_dist['donkeys'] = dist['Donkeys']
            pop_dist['camels'] = dist['Camels']
            pop_dist['crocodiles'] = dist['Crocodiles']
            pop_dist['metadata'] = dist['metadata']

            cattle_pop = OrderedDict()
            cattle_pop['meat'] = divide_by_one_thousand(dist['Cattle meat'])
            cattle_pop['dairy'] = divide_by_one_thousand(dist['Cattle dairy'])
            cattle_pop['metadata'] = dist['metadata']
            goat_pop = OrderedDict()
            goat_pop['meat'] = divide_by_one_thousand(dist['Goat meat'])
            goat_pop['dairy'] = divide_by_one_thousand(dist['Goat dairy'])
            goat_pop['metadata'] = dist['metadata']
            hives_pop = OrderedDict()
            hives_pop['log'] = dist['Hives log']
            hives_pop['KTBH'] = dist['Hives KTBH']
            hives_pop['lang'] = dist['Hives lang']
            hives_pop['box'] = dist['Hives box']
            sheep_pop = OrderedDict()
            sheep_pop['meat'] = divide_by_one_thousand(dist['Sheep wool'])
            sheep_pop['dairy'] = divide_by_one_thousand(dist['Sheep hair'])
            sheep_pop['metadata'] = dist['metadata']
            poultry_pop = OrderedDict()
            poultry_pop['broilers'] = divide_by_one_thousand(dist['Broilers'])
            poultry_pop['layers'] = divide_by_one_thousand(dist['Layers'])
            poultry_pop['kienyeji'] = divide_by_one_thousand(dist['Kienyeji'])
            poultry_pop['others'] = divide_by_one_thousand(dist['Others'])
            poultry_pop['turkey'] = divide_by_one_thousand(dist['Turkey'])
            poultry_pop['ducks'] = divide_by_one_thousand(dist['Ducks'])
            poultry_pop['quails'] = divide_by_one_thousand(dist['Quails'])
            poultry_pop['guineafowl'] = divide_by_one_thousand(
                dist['Guinea fowl'])
            poultry_pop['geese'] = divide_by_one_thousand(dist['Geese'])
            poultry_pop['metadata'] = dist['metadata']

            prod_dist, _ = get_stat_data(
                "livestock_products", geo, session, percent=False)
            total_hives = sum_up([dist['Hives log'], dist['Hives KTBH'],
                                  dist['Hives lang'], dist['Hives box']],
                                 'Hives')['values']['this']
        except Exception:
            pass

    is_missing = pop_dist.get('is_missing') and \
                 cattle_pop.get('is_missing') and \
                 hives_pop.get('is_missing') and \
                 sheep_pop.get('is_missing') and \
                 goat_pop.get('is_missing') and \
                 poultry_pop.get('is_missing') and \
                 prod_dist.get('is_missing')

    return {
        'is_missing': is_missing,
        'pop_dist': pop_dist,
        'cattle_pop': cattle_pop,
        'goat_pop': goat_pop,
        'sheep_pop': sheep_pop,
        'poultry_pop': poultry_pop,
        'prod_dist': prod_dist,
        'hives_pop': hives_pop,
        'hives': {
            'name': 'Total number of hives',
            'numerators': {'this': total_hives},
            'values': {'this': total_hives},
        }

    }


# HELPERS
# TODO: Move these outta here

def get_dictionary(key_one, key_two, val, dist):
    # return a dictionary with the second dictionary being 100 - val
    return {
        key_one: {
            'name': key_one,
            'numerators': {'this': val},
            'values': {'this': round(val, 2)},
        },
        key_two: {
            'name': key_two,
            'numerators': {'this': 100 - val},
            'values': {'this': 100 - round(val, 2)},
        },
        'metadata': dist['metadata']
    }


def sum_up(arr, name):
    s = 0
    for x in arr:
        s += x['values']['this']
    return OrderedDict(
        [
            ('name', name),
            ('numerators', {'this': None}),
            ('values', {'this': s})
        ]
    )


def divide_by_one_thousand(dist):
    dist['values']['this'] = round((dist['values']['this'] * 1.0) / 1000, 1)
    return dist


def replace_name(dist, new_name):
    dist['name'] = new_name
    return dist


def get_afrobarometer_profile(geo, session):
    with dataset_context(year='2016'):
        own_radio = LOCATIONNOTFOUND
        own_motor_vehicle = LOCATIONNOTFOUND
        own_television = LOCATIONNOTFOUND
        own_mobile_phone = LOCATIONNOTFOUND
        election_work_for_candidate_or_party = LOCATIONNOTFOUND
        election_attend_campaign_rally = LOCATIONNOTFOUND
        election_attend_campaign_meeting = LOCATIONNOTFOUND
        courts_make_binding_decisions = LOCATIONNOTFOUND
        vote_for_which_party = LOCATIONNOTFOUND
        level_of_corruption = LOCATIONNOTFOUND
        chinas_assistance_meets_country_needs = LOCATIONNOTFOUND
        employment_status = LOCATIONNOTFOUND
        main_reason_for_not_reporting_corruption = LOCATIONNOTFOUND
        education_of_respondent = LOCATIONNOTFOUND
        people_must_pay_taxes = LOCATIONNOTFOUND
        negative_image_of_china = LOCATIONNOTFOUND
        most_effective_way_to_combat_corruption = LOCATIONNOTFOUND
        people_can_fight_corruption = LOCATIONNOTFOUND
        people_must_obey_the_law = LOCATIONNOTFOUND
        chinas_influence_on_economy = LOCATIONNOTFOUND
        chinas_influence_positive_or_negative = LOCATIONNOTFOUND
        positive_image_of_china = LOCATIONNOTFOUND
        occupation_of_respondent = LOCATIONNOTFOUND
        employer_of_respondent = LOCATIONNOTFOUND
        how_often_use_a_mobile_phone = LOCATIONNOTFOUND
        how_often_use_the_internet = LOCATIONNOTFOUND
        freeness_and_fairness_last_elections = LOCATIONNOTFOUND
        extent_of_democracy = LOCATIONNOTFOUND
        elections_ensure_voters_views_are_reflected = LOCATIONNOTFOUND
        corruption_judges_and_magistrates = LOCATIONNOTFOUND
        elections_to_remove_leaders_from_office = LOCATIONNOTFOUND
        corruption_tax_officials = LOCATIONNOTFOUND
        corruption_police = LOCATIONNOTFOUND
        corruption_local_gov_councilors = LOCATIONNOTFOUND
        corruption_gov_officials = LOCATIONNOTFOUND
        corruption_mps = LOCATIONNOTFOUND
        corruption_president_office = LOCATIONNOTFOUND
        satisfaction_with_democracy = LOCATIONNOTFOUND
        corruption_business_executives = LOCATIONNOTFOUND
        corruption_religious_leaders = LOCATIONNOTFOUND
        corruption_traditional_leaders = LOCATIONNOTFOUND
        difficulty_to_obtain_public_school_services = LOCATIONNOTFOUND
        voting_recent_national_election = LOCATIONNOTFOUND
        difficulty_to_obtain_medical_treatment = LOCATIONNOTFOUND
        pay_bribe_for_school_services = LOCATIONNOTFOUND
        difficulty_to_obtain_identity_document = LOCATIONNOTFOUND
        pay_bribe_treatment_public_health = LOCATIONNOTFOUND
        difficulty_to_obtain_household_services = LOCATIONNOTFOUND
        pay_bribe_for_document_or_permit = LOCATIONNOTFOUND
        pay_bribe_for_household_services = LOCATIONNOTFOUND

        try:
            own_radio, _ = get_stat_data('own_radio', geo, session,
                                         table_fields=['own_radio'])
        except LocationNotFound:
            pass

        try:
            own_motor_vehicle, _ = get_stat_data('own_motor_vehicle', geo, session,
                                                 table_fields=['own_motor_vehicle'])
        except LocationNotFound:
            pass

        try:
            own_television, _ = get_stat_data('own_television', geo, session,
                                              table_fields=['own_television'])
        except LocationNotFound:
            pass

        try:
            own_mobile_phone, _ = get_stat_data('own_mobile_phone', geo, session,
                                                table_fields=['own_mobile_phone'])
        except LocationNotFound:
            pass

        try:
            election_work_for_candidate_or_party, _ = get_stat_data(
                'election_work_for_candidate_or_party', geo, session,
                table_fields=['election_work_for_candidate_or_party'])
        except LocationNotFound:
            pass

        try:
            election_attend_campaign_rally, _ = get_stat_data(
                'election_attend_campaign_rally', geo, session,
                table_fields=['election_attend_campaign_rally'])
        except LocationNotFound:
            pass

        try:
            election_attend_campaign_meeting, _ = get_stat_data(
                'election_attend_campaign_meeting', geo, session,
                table_fields=['election_attend_campaign_meeting'])
        except LocationNotFound:
            pass

        try:
            courts_make_binding_decisions, _ = get_stat_data(
                'courts_make_binding_decisions', geo, session,
                table_fields=['courts_make_binding_decisions'])
        except LocationNotFound:
            pass

        try:
            vote_for_which_party, _ = get_stat_data('vote_for_which_party', geo,
                                                    session, table_fields=[
                    'vote_for_which_party'])
        except LocationNotFound:
            pass

        try:
            level_of_corruption, _ = get_stat_data('level_of_corruption', geo,
                                                   session, table_fields=[
                    'level_of_corruption'])
        except LocationNotFound:
            pass

        try:
            chinas_assistance_meets_country_needs, _ = get_stat_data(
                'chinas_assistance_meets_country_needs', geo, session,
                table_fields=['chinas_assistance_meets_country_needs'])
        except LocationNotFound:
            pass

        try:
            employment_status, _ = get_stat_data('employment_status', geo, session,
                                                 table_fields=['employment_status'])
        except LocationNotFound:
            pass

        try:
            main_reason_for_not_reporting_corruption, _ = get_stat_data(
                'main_reason_for_not_reporting_corruption', geo, session,
                table_fields=['main_reason_for_not_reporting_corruption'])
        except LocationNotFound:
            pass

        try:
            education_of_respondent, _ = get_stat_data('education_of_respondent',
                                                       geo, session, table_fields=[
                    'education_of_respondent'])
        except LocationNotFound:
            pass

        try:
            people_must_pay_taxes, _ = get_stat_data('people_must_pay_taxes', geo,
                                                     session, table_fields=[
                    'people_must_pay_taxes'])
        except LocationNotFound:
            pass

        try:
            negative_image_of_china, _ = get_stat_data('negative_image_of_china',
                                                       geo, session, table_fields=[
                    'negative_image_of_china'])
        except LocationNotFound:
            pass

        try:
            most_effective_way_to_combat_corruption, _ = get_stat_data(
                'most_effective_way_to_combat_corruption', geo, session,
                table_fields=['most_effective_way_to_combat_corruption'])
        except LocationNotFound:
            pass

        try:
            people_can_fight_corruption, _ = get_stat_data(
                'people_can_fight_corruption', geo, session,
                table_fields=['people_can_fight_corruption'])
        except LocationNotFound:
            pass

        try:
            people_must_obey_the_law, _ = get_stat_data('people_must_obey_the_law',
                                                        geo, session, table_fields=[
                    'people_must_obey_the_law'])
        except LocationNotFound:
            pass

        try:
            chinas_influence_on_economy, _ = get_stat_data(
                'chinas_influence_on_economy', geo, session,
                table_fields=['chinas_influence_on_economy'])
        except LocationNotFound:
            pass

        try:
            chinas_influence_positive_or_negative, _ = get_stat_data(
                'chinas_influence_positive_or_negative', geo, session,
                table_fields=['chinas_influence_positive_or_negative'])
        except LocationNotFound:
            pass

        try:
            positive_image_of_china, _ = get_stat_data('positive_image_of_china',
                                                       geo, session, table_fields=[
                    'positive_image_of_china'])
        except LocationNotFound:
            pass

        try:
            occupation_of_respondent, _ = get_stat_data('occupation_of_respondent',
                                                        geo, session, table_fields=[
                    'occupation_of_respondent'])
        except LocationNotFound:
            pass
        except DataNotFound:
            pass

        try:
            employer_of_respondent, _ = get_stat_data('employer_of_respondent', geo,
                                                      session, table_fields=[
                    'employer_of_respondent'])
        except LocationNotFound:
            pass

        try:
            how_often_use_a_mobile_phone, _ = get_stat_data(
                'how_often_use_a_mobile_phone', geo, session,
                table_fields=['how_often_use_a_mobile_phone'])
        except LocationNotFound:
            pass

        try:
            how_often_use_the_internet, _ = get_stat_data(
                'how_often_use_the_internet', geo, session,
                table_fields=['how_often_use_the_internet'])
        except LocationNotFound:
            pass

        try:
            freeness_and_fairness_last_elections, _ = get_stat_data(
                'freeness_and_fairness_last_elections', geo, session,
                table_fields=['freeness_and_fairness_last_elections'])
        except LocationNotFound:
            pass

        try:
            extent_of_democracy, _ = get_stat_data('extent_of_democracy', geo,
                                                   session, table_fields=[
                    'extent_of_democracy'])
        except LocationNotFound:
            pass

        try:
            elections_ensure_voters_views_are_reflected, _ = get_stat_data(
                'elections_ensure_voters_views_are_reflected', geo, session,
                table_fields=['elections_ensure_voters_views_are_reflected'])
        except LocationNotFound:
            pass

        try:
            corruption_judges_and_magistrates, _ = get_stat_data(
                'corruption_judges_and_magistrates', geo, session,
                table_fields=['corruption_judges_and_magistrates'])
        except LocationNotFound:
            pass

        try:
            elections_to_remove_leaders_from_office, _ = get_stat_data(
                'elections_to_remove_leaders_from_office', geo,
                session, table_fields=[
                    'elections_to_remove_leaders_from_office'])
        except LocationNotFound:
            pass

        try:
            corruption_tax_officials, _ = get_stat_data('corruption_tax_officials',
                                                        geo, session, table_fields=[
                    'corruption_tax_officials'])
        except LocationNotFound:
            pass

        try:
            corruption_police, _ = get_stat_data('corruption_police', geo, session,
                                                 table_fields=['corruption_police'])
        except LocationNotFound:
            pass

        try:
            corruption_local_gov_councilors, _ = get_stat_data(
                'corruption_local_gov_councilors', geo, session,
                table_fields=['corruption_local_gov_councilors'])
        except LocationNotFound:
            pass

        try:
            corruption_gov_officials, _ = get_stat_data('corruption_gov_officials',
                                                        geo, session, table_fields=[
                    'corruption_gov_officials'])
        except LocationNotFound:
            pass

        try:
            corruption_mps, _ = get_stat_data('corruption_mps', geo, session,
                                              table_fields=['corruption_mps'])
        except LocationNotFound:
            pass

        try:
            corruption_president_office, _ = get_stat_data(
                'corruption_president_office', geo, session,
                table_fields=['corruption_president_office'])
        except LocationNotFound:
            pass

        try:
            satisfaction_with_democracy, _ = get_stat_data(
                'satisfaction_with_democracy', geo, session,
                table_fields=['satisfaction_with_democracy'])
        except LocationNotFound:
            pass

        try:
            corruption_business_executives, _ = get_stat_data(
                'corruption_business_executives', geo, session,
                table_fields=['corruption_business_executives'])
        except LocationNotFound:
            pass

        try:
            corruption_religious_leaders, _ = get_stat_data(
                'corruption_religious_leaders', geo, session,
                table_fields=['corruption_religious_leaders'])
        except LocationNotFound:
            pass

        try:
            corruption_traditional_leaders, _ = get_stat_data(
                'corruption_traditional_leaders', geo, session,
                table_fields=['corruption_traditional_leaders'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_public_school_services, _ = get_stat_data(
                'difficulty_to_obtain_public_school_services', geo, session,
                table_fields=['difficulty_to_obtain_public_school_services'])
        except LocationNotFound:
            pass

        try:
            voting_recent_national_election, _ = get_stat_data(
                'voting_recent_national_election', geo, session,
                table_fields=['voting_recent_national_election'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_medical_treatment, _ = get_stat_data(
                'difficulty_to_obtain_medical_treatment', geo, session,
                table_fields=['difficulty_to_obtain_medical_treatment'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_school_services, _ = get_stat_data(
                'pay_bribe_for_school_services', geo, session,
                table_fields=['pay_bribe_for_school_services'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_identity_document, _ = get_stat_data(
                'difficulty_to_obtain_identity_document', geo, session,
                table_fields=['difficulty_to_obtain_identity_document'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_treatment_public_health, _ = get_stat_data(
                'pay_bribe_treatment_public_health', geo, session,
                table_fields=['pay_bribe_treatment_public_health'])
        except LocationNotFound:
            pass

        try:
            difficulty_to_obtain_household_services, _ = get_stat_data(
                'difficulty_to_obtain_household_services', geo, session,
                table_fields=['difficulty_to_obtain_household_services'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_document_or_permit, _ = get_stat_data(
                'pay_bribe_for_document_or_permit', geo, session,
                table_fields=['pay_bribe_for_document_or_permit'])
        except LocationNotFound:
            pass

        try:
            pay_bribe_for_household_services, _ = get_stat_data(
                'pay_bribe_for_household_services', geo, session,
                table_fields=['pay_bribe_for_household_services'])
        except LocationNotFound:
            pass

        is_missing = own_radio.get('is_missing') and own_motor_vehicle.get(
            'is_missing') and own_television.get(
            'is_missing') and own_mobile_phone.get(
            'is_missing') and election_work_for_candidate_or_party.get(
            'is_missing') and election_attend_campaign_rally.get(
            'is_missing') and election_attend_campaign_meeting.get(
            'is_missing') and courts_make_binding_decisions.get(
            'is_missing') and vote_for_which_party.get(
            'is_missing') and level_of_corruption.get(
            'is_missing') and chinas_assistance_meets_country_needs.get(
            'is_missing') and employment_status.get(
            'is_missing') and main_reason_for_not_reporting_corruption.get(
            'is_missing') and education_of_respondent.get(
            'is_missing') and people_must_pay_taxes.get(
            'is_missing') and negative_image_of_china.get(
            'is_missing') and most_effective_way_to_combat_corruption.get(
            'is_missing') and people_can_fight_corruption.get(
            'is_missing') and people_must_obey_the_law.get(
            'is_missing') and chinas_influence_on_economy.get(
            'is_missing') and chinas_influence_positive_or_negative.get(
            'is_missing') and positive_image_of_china.get(
            'is_missing') and occupation_of_respondent.get(
            'is_missing') and employer_of_respondent.get(
            'is_missing') and how_often_use_a_mobile_phone.get(
            'is_missing') and how_often_use_the_internet.get(
            'is_missing') and freeness_and_fairness_last_elections.get(
            'is_missing') and extent_of_democracy.get(
            'is_missing') and elections_ensure_voters_views_are_reflected.get(
            'is_missing') and corruption_judges_and_magistrates.get(
            'is_missing') and elections_to_remove_leaders_from_office.get(
            'is_missing') and corruption_tax_officials.get(
            'is_missing') and corruption_police.get(
            'is_missing') and corruption_local_gov_councilors.get(
            'is_missing') and corruption_gov_officials.get(
            'is_missing') and corruption_mps.get(
            'is_missing') and corruption_president_office.get(
            'is_missing') and satisfaction_with_democracy.get(
            'is_missing') and corruption_business_executives.get(
            'is_missing') and corruption_religious_leaders.get(
            'is_missing') and corruption_traditional_leaders.get(
            'is_missing') and difficulty_to_obtain_public_school_services.get(
            'is_missing') and voting_recent_national_election.get(
            'is_missing') and difficulty_to_obtain_medical_treatment.get(
            'is_missing') and pay_bribe_for_school_services.get(
            'is_missing') and difficulty_to_obtain_identity_document.get(
            'is_missing') and pay_bribe_treatment_public_health.get(
            'is_missing') and difficulty_to_obtain_household_services.get(
            'is_missing') and pay_bribe_for_document_or_permit.get(
            'is_missing') and pay_bribe_for_household_services.get('is_missing')

    if not is_missing:
        difficulty_to_obtain_household_services = sort_keys(difficulty_key_order, difficulty_to_obtain_household_services)
        difficulty_to_obtain_identity_document = sort_keys(difficulty_key_order, difficulty_to_obtain_identity_document)
        difficulty_to_obtain_medical_treatment = sort_keys(difficulty_key_order, difficulty_to_obtain_medical_treatment)
        difficulty_to_obtain_public_school_services = sort_keys(difficulty_key_order, difficulty_to_obtain_public_school_services)
        election_attend_campaign_meeting = sort_keys(elections_key_order, election_attend_campaign_meeting)
        election_attend_campaign_rally = sort_keys(elections_key_order, election_attend_campaign_rally)
        election_work_for_candidate_or_party = sort_keys(elections_key_order, election_work_for_candidate_or_party)
        elections_to_remove_leaders_from_office = sort_keys(elections_key_order, elections_to_remove_leaders_from_office)
        freeness_and_fairness_last_elections = sort_keys(free_and_fair_key_order, freeness_and_fairness_last_elections)
        chinas_influence_positive_or_negative = sort_keys(chinas_influence_key_order, chinas_influence_positive_or_negative)
        chinas_influence_on_economy = sort_keys(china_influence_on_economy_key_order, chinas_influence_on_economy)
        pay_bribe_for_document_or_permit = sort_keys(pay_bribes_key_order, pay_bribe_for_document_or_permit)
        pay_bribe_for_household_services = sort_keys(pay_bribes_key_order, pay_bribe_for_household_services)
        pay_bribe_for_school_services = sort_keys(pay_bribes_key_order, pay_bribe_for_school_services)
        pay_bribe_treatment_public_health = sort_keys(pay_bribes_key_order, pay_bribe_treatment_public_health)
        how_often_use_a_mobile_phone = sort_keys(mobile_phone_usage_key_order, how_often_use_a_mobile_phone)
        how_often_use_the_internet = sort_keys(internet_usage_key_order, how_often_use_the_internet)
        education_of_respondent = sort_keys(education_of_respondent_key_order, education_of_respondent)
        employment_status = sort_keys(employment_status_key_order, employment_status)
        people_can_fight_corruption = sort_keys(can_people_fight_corruption_key_order, people_can_fight_corruption)
        courts_make_binding_decisions = sort_keys(courts_make_binding_decisions_key_order, courts_make_binding_decisions)
        people_must_pay_taxes = sort_keys(pay_taxes_key_order, people_must_pay_taxes)
        people_must_obey_the_law = sort_keys(people_must_obey_the_law_key_order, people_must_obey_the_law)

    final_data = {
        'is_missing': is_missing,
        'own_radio': own_radio,
        'own_motor_vehicle': own_motor_vehicle,
        'own_television': own_television,
        'own_mobile_phone': own_mobile_phone,
        'election_work_for_candidate_or_party': election_work_for_candidate_or_party,
        'election_attend_campaign_rally': election_attend_campaign_rally,
        'election_attend_campaign_meeting': election_attend_campaign_meeting,
        'courts_make_binding_decisions': courts_make_binding_decisions,
        'vote_for_which_party': vote_for_which_party,
        'level_of_corruption': level_of_corruption,
        'chinas_assistance_meets_country_needs': chinas_assistance_meets_country_needs,
        'employment_status': employment_status,
        'main_reason_for_not_reporting_corruption': main_reason_for_not_reporting_corruption,
        'education_of_respondent': education_of_respondent,
        'people_must_pay_taxes': people_must_pay_taxes,
        'negative_image_of_china': negative_image_of_china,
        'most_effective_way_to_combat_corruption': most_effective_way_to_combat_corruption,
        'people_can_fight_corruption': people_can_fight_corruption,
        'people_must_obey_the_law': people_must_obey_the_law,
        'chinas_influence_on_economy': chinas_influence_on_economy,
        'chinas_influence_positive_or_negative': chinas_influence_positive_or_negative,
        'positive_image_of_china': positive_image_of_china,
        'occupation_of_respondent': occupation_of_respondent,
        'employer_of_respondent': employer_of_respondent,
        'how_often_use_a_mobile_phone': how_often_use_a_mobile_phone,
        'how_often_use_the_internet': how_often_use_the_internet,
        'freeness_and_fairness_last_elections': freeness_and_fairness_last_elections,
        'extent_of_democracy': extent_of_democracy,
        'elections_ensure_voters_views_are_reflected': elections_ensure_voters_views_are_reflected,
        'corruption_judges_and_magistrates': corruption_judges_and_magistrates,
        'elections_to_remove_leaders_from_office': elections_to_remove_leaders_from_office,
        'corruption_tax_officials': corruption_tax_officials,
        'corruption_police': corruption_police,
        'corruption_local_gov_councilors': corruption_local_gov_councilors,
        'corruption_gov_officials': corruption_gov_officials,
        'corruption_mps': corruption_mps,
        'corruption_president_office': corruption_president_office,
        'satisfaction_with_democracy': satisfaction_with_democracy,
        'corruption_business_executives': corruption_business_executives,
        'corruption_religious_leaders': corruption_religious_leaders,
        'corruption_traditional_leaders': corruption_traditional_leaders,
        'difficulty_to_obtain_public_school_services': difficulty_to_obtain_public_school_services,
        'voting_recent_national_election': voting_recent_national_election,
        'difficulty_to_obtain_medical_treatment': difficulty_to_obtain_medical_treatment,
        'pay_bribe_for_school_services': pay_bribe_for_school_services,
        'difficulty_to_obtain_identity_document': difficulty_to_obtain_identity_document,
        'pay_bribe_treatment_public_health': pay_bribe_treatment_public_health,
        'difficulty_to_obtain_household_services': difficulty_to_obtain_household_services,
        'pay_bribe_for_document_or_permit': pay_bribe_for_document_or_permit,
        'pay_bribe_for_household_services': pay_bribe_for_household_services,

    }
    return final_data

def gender_stats_data(geo, session):
    with dataset_context(year='2017'):
        physical_violence_perpetrator_sex = LOCATIONNOTFOUND
        physical_violence_perpetrator_marital_status = LOCATIONNOTFOUND
        disability = LOCATIONNOTFOUND
        year_wage_service_activities = LOCATIONNOTFOUND
        education_level = LOCATIONNOTFOUND
        sexual_violence_perpetrator = LOCATIONNOTFOUND
        hypertension_or_diabetes_sex = LOCATIONNOTFOUND
        hypertension_or_diabetes_agegroup = LOCATIONNOTFOUND
        year_wage_education = LOCATIONNOTFOUND
        year_wage_agric = LOCATIONNOTFOUND
        year_wage_wholesale = LOCATIONNOTFOUND
        violence_during_preg_educ_level = LOCATIONNOTFOUND
        cervical_cancer = LOCATIONNOTFOUND
        year_wage_manufacturing = LOCATIONNOTFOUND
        year_wage_public_admin = LOCATIONNOTFOUND
        prostate_cancer = LOCATIONNOTFOUND

        try:
            physical_violence_perpetrator_sex, _ = get_stat_data(
                ['physical_violence_perpetrator', 'sex'], geo,
                session)
        except Exception as e:
            pass

        try:
            physical_violence_perpetrator_marital_status, _ = get_stat_data(
                ['physical_violence_perpetrator', 'marital_status'], geo,
                session)
        except Exception:
            pass

        try:
            disability, _ = get_stat_data(['disability', 'sex'], geo, session)
        except Exception:
            pass

        try:
            year_wage_service_activities, _ = get_stat_data(
                ['year_wage_service_activities', 'sex'], geo, session)
        except Exception:
            pass

        try:
            education_level, _ = get_stat_data(['education_level', 'sex'], geo,
                                               session)
        except Exception:
            pass

        try:
            sexual_violence_perpetrator, _ = get_stat_data(
                ['sexual_violence_perpetrator', 'sex'], geo, session)
        except Exception:
            pass

        try:
            hypertension_or_diabetes_sex, _ = get_stat_data(
                ['hypertension_or_diabetes', 'sex'], geo, session,
                table_name='hypertension_or_diabetes_sex_agegroup')
        except Exception:
            pass

        try:
            hypertension_or_diabetes_agegroup, _ = get_stat_data(
                ['hypertension_or_diabetes', 'agegroup'], geo, session,
                table_name='hypertension_or_diabetes_sex_agegroup')
        except Exception:
            pass

        try:
            year_wage_education, _ = get_stat_data(
                ['year_wage_education', 'sex'], geo, session)
        except Exception:
            pass

        try:
            violence_during_preg_educ_level, _ = get_stat_data(
                ['violence_during_preg_educ_level'], geo, session)
        except Exception:
            pass

        try:
            cervical_cancer, _ = get_stat_data(
                ['cervical_cancer', 'age_group', ],
                geo, session)
        except Exception:
            pass

        try:
            prostate_cancer, _ = get_stat_data(['prostate_cancer', 'agegroup'],
                                               geo, session)
        except Exception as e:
            pass

        try:
            year_wage_manufacturing, _ = get_stat_data(
                ['year_wage_manufacturing', 'sex'], geo, session)
        except Exception:
            pass

        try:
            year_wage_agric, _ = get_stat_data(
                ['year_wage_agric', 'sex'], geo, session)
        except Exception:
            pass

        try:
            year_wage_wholesale, _ = get_stat_data(
                ['year_wage_wholesale', 'sex'], geo, session)
        except Exception:
            pass

        try:
            year_wage_public_admin, _ = get_stat_data(
                ['year_wage_public_admin', 'sex'], geo, session)
        except Exception as e:
            pass

    is_missing = \
        physical_violence_perpetrator_sex.get('is_missing') and \
        disability.get('is_missing') and \
        year_wage_service_activities.get('is_missing') and \
        education_level.get('is_missing') and \
        sexual_violence_perpetrator.get('is_missing') and \
        hypertension_or_diabetes_sex.get('is_missing') and \
        year_wage_education.get('is_missing') and \
        year_wage_agric.get('is_missing') and \
        violence_during_preg_educ_level.get('is_missing') and \
        cervical_cancer.get('is_missing') and \
        year_wage_manufacturing.get('is_missing') and \
        year_wage_agric.get('is_missing') and \
        year_wage_wholesale.get('is_missing') and \
        year_wage_public_admin.get('is_missing') and \
        prostate_cancer.get('is_missing') and \
        hypertension_or_diabetes_agegroup.get('is_missing') and \
        physical_violence_perpetrator_marital_status.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'physical_violence_perpetrator_sex':physical_violence_perpetrator_sex,
        'physical_violence_perpetrator_marital_status':physical_violence_perpetrator_marital_status,
        'disability': disability,
        'year_wage_service_activities':year_wage_service_activities,
        'education_level': education_level,
        'sexual_violence_perpetrator':sexual_violence_perpetrator,
        'hypertension_or_diabetes_sex':sexual_violence_perpetrator,
        'hypertension_or_diabetes_agegroup':hypertension_or_diabetes_agegroup,
        'year_wage_education': year_wage_education,
        'year_wage_agric': year_wage_agric,
        'year_wage_wholesale': year_wage_wholesale,
        'violence_during_preg_educ_level':violence_during_preg_educ_level,
        'cervical_cancer':cervical_cancer,
        'year_wage_manufacturing':year_wage_manufacturing,
        'year_wage_public_admin': year_wage_public_admin,
        'prostate_cancer': prostate_cancer,
    }

    return final_data
