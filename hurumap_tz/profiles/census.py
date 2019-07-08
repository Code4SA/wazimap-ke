from collections import OrderedDict
import logging

from wazimap.geo import geo_data, LocationNotFound
from wazimap.data.tables import get_datatable
from wazimap.data.utils import (calculate_median,
                                get_session, get_stat_data, group_remainder,
                                merge_dicts, get_datatable, current_context,
                                dataset_context)
from wazimap.geo import geo_data
from django.conf import settings
from collections import OrderedDict

from utils import *

log = logging.getLogger(__name__)

# ensure tables are loaded
import hurumap_tz.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True, 'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}, 'metadata': {}}

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
        sections = []

        for cat in SECTIONS:
            sections.extend(SECTIONS[cat]['profiles'])

        for section in sections:
            section = section.lower().replace(' ', '_')
            function_name = 'get_%s_profile' % section

            if function_name in globals():
                func = globals()[function_name]

                # get profiles for comperative geometries
                data[section] = func(geo, session)

                # get profiles for comparative geometries
                for comp_geo in comparative_geos:
                    try:
                        merge_dicts(data[section], func(comp_geo, session),
                                    comp_geo.geo_level)
                    except KeyError as e:
                        msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                            geo.geoid, section, comp_geo.geoid, e)
                        log.fatal(msg, exc_info=e)
                        # raise ValueError(msg)
                        pass

        # tweaks to make the data nicer
        # show X largest groups on their own and group the rest as 'Other'
        if 'households' in sections:
            group_remainder(data['households']['roofing_material_distribution'],
                            5)
            group_remainder(data['households']['wall_material_distribution'], 5)

        data['afrobarometer'] = get_afrobarometer_profile(geo, session)

        return data

    finally:
        session.close()


def get_demographics_profile(geo, session):
    year = current_context().get('year')
    with dataset_context(year='2012'):
        sex_dist_data = LOCATIONNOTFOUND
        age_dist_data = LOCATIONNOTFOUND
        age_cats = LOCATIONNOTFOUND
        urban_dist_data = LOCATIONNOTFOUND
        total_urbanised = 0
        total_pop = 0
        median = None

        try:
            if geo.geo_level != "ward":
                # sex
                sex_dist_data, total_pop = get_stat_data(
                    'sex', geo=geo, session=session,
                    table_fields=['age in completed years', 'sex',
                                  'rural or urban'])
            else:
                # sex
                sex_dist_data, total_pop = get_stat_data(
                    'sex', geo=geo, session=session,
                    table_fields=['sex', 'rural or urban'])

            if geo.geo_level != "ward":
                # urban/rural by sex
                urban_dist_data, _ = get_stat_data(
                    ['rural or urban', 'sex'], geo=geo, session=session,
                    table_fields=['age in completed years', 'sex',
                                  'rural or urban'])
                total_urbanised = 0
                for data in urban_dist_data['Urban'].values():
                    if 'numerators' in data:
                        total_urbanised += data['numerators']['this']
            else:
                # urban/rural by sex
                urban_dist_data, _ = get_stat_data(
                    ['rural or urban', 'sex'], geo=geo, session=session,
                    table_fields=['sex', 'rural or urban'])
                total_urbanised = 0
                for data in urban_dist_data['Urban'].values():
                    if 'numerators' in data:
                        total_urbanised += data['numerators']['this']

            if geo.geo_level != "ward":
                # median age
                db_model_age = get_datatable(
                    'ageincompletedyears_ruralorurban_sex')
                objects = db_model_age.get_rows_for_geo(geo, session)
                objects = sorted((o for o in objects if getattr(o,
                                                                'age in completed years') != 'unspecified'),
                                 key=lambda x: int(
                                     getattr(x,
                                             'age in completed years').replace(
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
                    'age in completed years', geo=geo, session=session,
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
                    'age in completed years', geo=geo, session=session,
                    table_fields=['age in completed years', 'sex',
                                  'rural or urban'],
                    recode=age_cat_recode,
                    exclude=['unspecified'])
        except Exception:
            pass

    is_missing = sex_dist_data.get('is_missing') and \
                 age_dist_data.get('is_missing') and \
                 age_cats.get('is_missing') and \
                 urban_dist_data.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'sex_ratio': sex_dist_data,
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
        }}

    return final_data


def get_education_profile(geo, session):
    edu_dist_data = LOCATIONNOTFOUND
    school_attendance_dist = LOCATIONNOTFOUND
    secondary_or_higher = 0
    total_pop = 0
    total_never = 0

    with dataset_context(year='2015'):
        try:
            # highest level reached
            edu_dist_data, total_pop = get_stat_data(
                'highest education level reached', geo=geo, session=session,
                key_order=['None', 'Pre-primary', 'Primary', 'Secondary',
                           'Tertiary',
                           'University', 'Youth polytechnic', 'Basic literacy',
                           'Madrassa'])

            for key, data in edu_dist_data.items():
                if key in ['Secondary', 'Tertiary', 'University',
                           'Youth polytechnic']:
                    secondary_or_higher += data['numerators']['this']

            # school attendance by sex
            school_attendance_dist, _ = get_stat_data(
                ['school attendance', 'sex'], geo=geo, session=session,
                key_order={'school attendance': ['Never attended', 'At school',
                                                 'Left school', 'Unspecified'],
                           'sex': ['Female', 'Male']})

            total_never = 0.0
            for data in school_attendance_dist['Never attended'].values():
                if 'numerators' in data:
                    total_never += data['numerators']['this']
        except Exception:
            pass

    is_missing = edu_dist_data.get('is_missing') and school_attendance_dist.get(
        'is_missing')

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
    total_employed = 0.0
    total_workers = 0

    year = current_context().get('year')
    with dataset_context(year=year):
        try:
            # employment status
            employment_activity_dist, total_workers = get_stat_data(
                ['employment activity status', 'sex'], geo=geo, session=session,
                recode={'employment activity status': dict(EMPLOYMENT_RECODES)},
                key_order={
                    'employment activity status': EMPLOYMENT_RECODES.values(),
                    'sex': ['Female', 'Male']})

            for data in employment_activity_dist['Employed'].values():
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

    year = current_context().get('year')
    with dataset_context(year=year):
        try:
            # main source of water
            water_source_dist, total_households = get_stat_data(
                'main source of water', geo=geo, session=session,
                recode=dict(WATER_SOURCE_RECODES),
                key_order=WATER_SOURCE_RECODES.values())
            total_piped = water_source_dist['Piped']['numerators']['this']

            # main mode of waste disposal
            waste_disposal_dist, _ = get_stat_data(
                'main mode of human waste disposal', geo=geo, session=session,
                key_order=['Main sewer', 'Septic tank', 'Cess pool', 'Bucket',
                           'Bush', 'Other'])

            total_sewer_or_septic = 0.0
            for key in ['Main sewer', 'Septic tank']:
                if key in waste_disposal_dist:
                    total_sewer_or_septic += \
                        waste_disposal_dist[key]['numerators'][
                            'this']

            # lighting
            lighting_dist, _ = get_stat_data('main type of lighting fuel',
                                             geo=geo,
                                             session=session,
                                             key_order=['Electricity', 'Solar',
                                                        'Gas lamps',
                                                        'Pressure lamps',
                                                        'Tin lamps',
                                                        'Lanterns', 'Wood',
                                                        'Other'])
            total_electricity = lighting_dist['Electricity']['numerators'][
                'this']

            # construction materials
            roofing_dist, _ = get_stat_data(
                'main type of roofing material', geo=geo, session=session,
                order_by='-total')

            wall_dist, _ = get_stat_data(
                'main type of wall material', geo=geo, session=session,
                order_by='-total')

            floor_dist, _ = get_stat_data(
                'main type of floor material', geo=geo, session=session,
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
        'water_source_distribution': water_source_dist,
        'piped_water': {
            'name': 'Have piped water',
            'numerators': {'this': total_piped},
            'values': {'this': round(total_piped / total_households * 100, 2)},
        },
        'waste_disposal_distribution': waste_disposal_dist,
        'sewer_or_septic': {
            'name': 'Have a sewer or septic tank',
            'numerators': {'this': total_sewer_or_septic},
            'values': {
                'this': round(total_sewer_or_septic / total_households * 100,
                              2)},
        },
        'lighting_distribution': lighting_dist,
        'lighting_electricity': {
            'name': 'Use electricity for lighting',
            'numerators': {'this': total_electricity},
            'values': {
                'this': round(total_electricity / total_households * 100, 2)},
        },
        'roofing_material_distribution': roofing_dist,
        'floor_material_distribution': floor_dist,
        'wall_material_distribution': wall_dist,
    }


def get_literacy_and_numeracy_tests_profile(geo, session):
    english_test_dist = LOCATIONNOTFOUND
    swahili_test_dist = LOCATIONNOTFOUND
    numeracy_test_dist = LOCATIONNOTFOUND
    literacy_data = LOCATIONNOTFOUND
    all_subjects = 0
    with dataset_context(year='2015'):
        try:
            # literacy tests stats
            literacy_data, _ = get_stat_data(
                'literacy test', geo, session)

            all_subjects = literacy_data['All subjects']['numerators']['this']

            english_test_dist = literacy_data['English']['numerators']['this']
            english_test_dist = {
                'Passed': {
                    'name': 'Competent in English',
                    'numerators': {'this': english_test_dist},
                    'values': {'this': round(english_test_dist, 2)},
                },
                'Failed': {
                    'name': 'Not competent',
                    'numerators': {'this': 100 - english_test_dist},
                    'values': {'this': 100 - round(english_test_dist, 2)},
                },
                'metadata': literacy_data['metadata']
            }

            swahili_test_dist = literacy_data['Swahili']['numerators']['this']
            swahili_test_dist = {
                'Passed': {
                    'name': 'Competent in Swahili',
                    'numerators': {'this': swahili_test_dist},
                    'values': {'this': round(swahili_test_dist, 2)},
                },
                'Failed': {
                    'name': 'Not competent',
                    'numerators': {'this': 100 - swahili_test_dist},
                    'values': {'this': 100 - round(swahili_test_dist, 2)},
                },
                'metadata': literacy_data['metadata']
            }

            numeracy_test_dist = literacy_data['Math']['numerators']['this']
            numeracy_test_dist = {
                'Passed': {
                    'name': 'Competent in Math',
                    'numerators': {'this': numeracy_test_dist},
                    'values': {'this': round(numeracy_test_dist, 2)},
                },
                'Failed': {
                    'name': 'Not competent',
                    'numerators': {'this': 100 - numeracy_test_dist},
                    'values': {'this': 100 - round(numeracy_test_dist, 2)},
                },
                'metadata': literacy_data['metadata']
            }

        except Exception:
            pass

    is_missing = literacy_data.get('is_missing') and \
                 english_test_dist.get('is_missing') and \
                 swahili_test_dist.get('is_missing') and \
                 swahili_test_dist.get('is_missing')
    numeracy_sort = 0
    english_sort = 0
    swahili_sort = 0

    try:
        numeracy_sort = numeracy_test_dist['Passed']['numerators']['this']
    except KeyError:
        pass

    try:
        english_sort = english_test_dist['Passed']['numerators']['this']
    except KeyError:
        pass

    try:
        swahili_sort = swahili_test_dist['Passed']['numerators']['this']
    except KeyError:
        pass

    return {
        'is_missing': is_missing,
        'literacy_data': literacy_data,
        'metadata': literacy_data['metadata'],
        'english_test_dist': english_test_dist,
        'swahili_test_dist': swahili_test_dist,
        'numeracy_test_dist': numeracy_test_dist,
        'numeracy_sort': '-value' if numeracy_sort <= 50 else 'value',
        'english_sort': '-value' if english_sort <= 50 else 'value',
        'swahili_sort': '-value' if swahili_sort <= 49 else 'value',
        'all_subjects_dist': {
            'name': 'Competent in all subjects children aged 6-16',
            'numerators': {'this': all_subjects},
            'values': {'this': round(all_subjects, 2)}
        },
        'source_link': 'https://africaopendata.org/dataset/uwezo-literacy-assessment-report-2015',
        'source_name': 'Uwezo Annual Assessment Report 2015'
    }


def get_school_attendance_profile(geo, session):
    attendance_data = LOCATIONNOTFOUND
    dropped_out_dist = None
    out_of_school_dist = None

    with dataset_context(year='2015'):

        try:
            # attendance stats
            attendance_data, _ = get_stat_data(
                'school attendance', geo, session)

            dropped_out_dist = \
                attendance_data['Pupils in school']['numerators']['this']
            dropped_out_dist = {
                'Pupils in school': {
                    'name': 'Pupils in school',
                    'numerators': {'this': dropped_out_dist},
                    'values': {'this': round(dropped_out_dist, 2)},
                },
                'Dropped out': {
                    'name': 'Dropped out',
                    'numerators': {'this': 100 - dropped_out_dist},
                    'values': {'this': 100 - round(dropped_out_dist, 2)},
                },
                'metadata': attendance_data['metadata']
            }

            out_of_school_dist = attendance_data['Drop outs']['numerators'][
                'this']
            out_of_school_dist = {
                'Out of school': {
                    'name': 'Dropped out',
                    'numerators': {'this': out_of_school_dist},
                    'values': {'this': round(out_of_school_dist, 2)},
                },
                'In school': {
                    'name': 'In school',
                    'numerators': {'this': 100 - out_of_school_dist},
                    'values': {'this': 100 - round(out_of_school_dist, 2)},
                },
                'metadata': attendance_data['metadata']
            }
        except Exception:
            pass

        drop_out_sort = 0
        out_of_school_sort = 0

        try:
            drop_out_sort = dropped_out_dist['Dropped out']['numerators']['this']
        except KeyError:
            pass

        try:
            out_of_school_sort = dropped_out_dist['Dropped out']['numerators']['this']
        except KeyError:
            pass

    return {
        'is_missing': attendance_data.get('is_missing'),
        'attendance_data': attendance_data,
        'dropped_out_dist': dropped_out_dist,
        'out_of_school_dist': out_of_school_dist,
        'drop_out_sort': '-value' if drop_out_sort <= 50 else 'value',
        'out_of_school_sort': '-value' if out_of_school_sort <= 50 else 'value'
    }


def get_pupil_teacher_ratios_profile(geo, session):
    ratio_data = LOCATIONNOTFOUND
    pupil_attendance_rate_dist = LOCATIONNOTFOUND
    teachers_absent_dist = LOCATIONNOTFOUND
    pupil_teacher_ratio = LOCATIONNOTFOUND

    with dataset_context(year='2015'):
        try:
            # pupil teacher ratios
            ratio_data, _ = get_stat_data(
                'pupil teacher ratios', geo, session)

            pupil_teacher_ratio = \
                ratio_data['Pupil teacher ratio']['numerators'][
                    'this']
            pupils_per_textbook = \
                ratio_data['Pupils per textbook']['numerators'][
                    'this']

            pupil_attendance_rate_dist = \
                ratio_data['Government school attendance rate']['numerators'][
                    'this']
            pupil_attendance_rate_dist = get_dictionary("Attending school",
                                                        "Absent",
                                                        pupil_attendance_rate_dist,
                                                        ratio_data)

            teachers_absent_dist = ratio_data['Teachers absent']['numerators'][
                'this']
            teachers_absent_dist = get_dictionary("Teachers absent",
                                                  "Teachers present",
                                                  teachers_absent_dist,
                                                  ratio_data)

        except Exception:
            pass

    return {
        'is_missing': ratio_data.get('is_missing'),
        'pupil_attendance_rate_dist': pupil_attendance_rate_dist,
        'teachers_absent_dist': teachers_absent_dist,
        'pupil_teacher_ratio': {
            'name': 'For every one teacher there are ' + str(
                pupil_teacher_ratio) + " pupils",
            'numerators': {'this': pupil_teacher_ratio},
            'values': {'this': pupil_teacher_ratio}
        },
        'pupils_per_textbook': {
            'name': 'Pupils per textbook',
            'numerators': {'this': pupils_per_textbook},
            'values': {'this': pupils_per_textbook}
        }
    }


def get_school_amenities_profile(geo, session):
    data = LOCATIONNOTFOUND
    library_data = LOCATIONNOTFOUND
    drinking_water_data = LOCATIONNOTFOUND
    feeding_program_data = LOCATIONNOTFOUND
    with dataset_context(year='2015'):
        try:
            # school amenities
            data, _ = get_stat_data('school amenity', geo, session)

            library_data = data['Library']['numerators']['this']
            library_data = get_dictionary("Have a library", "Don't",
                                          library_data,
                                          data)

            drinking_water_data = data['Drinking water']['numerators']['this']
            drinking_water_data = get_dictionary("Have clean drinking water",
                                                 "Don't", drinking_water_data,
                                                 data)

            feeding_program_data = data['Feeding program']['numerators']['this']
            feeding_program_data = get_dictionary("Have a feeding program",
                                                  "Don't",
                                                  feeding_program_data, data)
        except Exception:
            pass

    return {
        'is_missing': data.get('is_missing'),
        'library_data': library_data,
        'drinking_water_data': drinking_water_data,
        'feeding_program_data': feeding_program_data,

    }


# PEPFAR DATA
def get_pepfar_profile(geo, session):
    pepfar_data = LOCATIONNOTFOUND
    HTC_TST = 0
    HTC_TST_POS = 0
    HTP = 0
    HTPP = 0
    PMTCT_STAT = 0
    PMTCT_EID = 0
    PMTCT_CTX = 0
    CARE_NEW = 0
    TX_NEW = 0
    CARE_CURR = 0
    PMTCT_STAT_POS = 0
    PSP = 0
    PSPP = 0
    PMTCT_ARV = 0
    PA = 0
    PAP = 0
    PEP = 0
    PEPP = 0
    PMTCT_EID_POS = 0

    with dataset_context(year='2015'):
        try:
            # PEPFAR stats
            pepfar_data, _ = get_stat_data("pepfar", geo, session)
            HTC_TST = pepfar_data['HTC_TST']['numerators']['this']
            HTC_TST_POS = pepfar_data['HTC_TST_POS']['numerators']['this']
            PMTCT_STAT = pepfar_data['PMTCT_STAT']['numerators']['this']
            PMTCT_STAT_POS = pepfar_data['PMTCT_STAT_POS']['numerators']['this']
            PMTCT_ARV = pepfar_data['PMTCT_ARV']['numerators']['this']
            PMTCT_EID = pepfar_data['PMTCT_EID']['numerators']['this']
            PMTCT_EID_POS = pepfar_data['PMTCT_EID_POS']['numerators']['this']
            PMTCT_CTX = pepfar_data['PMTCT_CTX']['numerators']['this']
            CARE_NEW = pepfar_data['CARE_NEW']['numerators']['this']
            TX_NEW = pepfar_data['TX_NEW']['numerators']['this']
            CARE_CURR = pepfar_data['CARE_CURR']['numerators']['this']
            TB_SCREEN = pepfar_data['TB_SCREEN']['numerators']['this']
            TX_CURR = pepfar_data['TX_CURR']['numerators']['this']
            TB_ART = pepfar_data['TB_ART']['numerators']['this']
            TX_RET_NUM = pepfar_data['TX_RET_NUM']['numerators']['this']
            TX_RET_DEN = pepfar_data['TX_RET_DEN']['numerators']['this']
            VMMC_CIRC = pepfar_data['VMMC_CIRC']['numerators']['this']
            OVC_SERV = pepfar_data['OVC_SERV']['numerators']['this']
            PP_PREV = pepfar_data['PP_PREV']['numerators']['this']
            KP_PREV = pepfar_data['KP_PREV']['numerators']['this']
            try:
                HTP = round((HTC_TST_POS / HTC_TST) * 100)
                HTPP = round((((HTC_TST - HTC_TST_POS) * 1.0) / HTC_TST) * 100)
            except:
                HTP = 0
                HTPP = 0
            try:
                PSP = round(((PMTCT_STAT_POS * 1.0) / PMTCT_STAT) * 100)
                PSPP = round(
                    (((PMTCT_STAT - PMTCT_STAT_POS) * 1.0) / PMTCT_STAT) * 100)
            except:
                PSP = 0
                PSPP = 0
            try:
                PA = round((PMTCT_ARV / PMTCT_STAT_POS) * 100)
                PAP = round(
                    (((
                              PMTCT_STAT_POS - PMTCT_ARV) * 1.0) / PMTCT_STAT_POS) * 100)
            except:
                PA = 0
                PAP = 0
            try:
                PEP = round((PMTCT_EID_POS / PMTCT_EID) * 100)
                PEPP = round(
                    (((PMTCT_EID - PMTCT_EID_POS) * 1.0) / PMTCT_EID) * 100)
            except:
                PEP = 0
                PEPP = 0

        except Exception:
            pass

    return {
        'is_missing': pepfar_data.get('is_missing'),
        'HTC_TST': {
            'name': 'Number of individuals who received HIV Testing and Counseling (HTC) services for HIV and their\
                        test results',
            'numerators': {'this': HTC_TST},
            'values': {'this': HTC_TST}
        },
        'HTC_TST_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': HTC_TST_POS},
                'values': {'this': HTP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': HTC_TST - HTC_TST_POS},
                'values': {'this': HTPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_STAT': {
            'name': 'Number of pregnant women with known HIV status (includes women who were tested for HIV and received their results)',
            'numerators': {'this': PMTCT_STAT},
            'values': {'this': PMTCT_STAT},
        },
        'PMTCT_EID': {
            'name': 'Number of infants born to HIV-positive women who had a virologic HIV test done within two months of birth',
            'numerators': {'this': PMTCT_EID},
            'values': {'this': PMTCT_EID},
        },
        'PMTCT_CTX': {
            'name': 'Number of infants born to HIV-positive pregnant women who began Cotrimoxazole (CTX) prophylaxis within two months of birth',
            'numerators': {'this': PMTCT_CTX},
            'values': {'this': PMTCT_CTX},
        },
        'CARE_NEW': {
            'name': 'Number of HIV-positive adults and children newly enrolled in clinical care during the reporting period who received at least one of the following at enrollment: clinical assessment (WHO staging) OR CD4 count',
            'numerators': {'this': CARE_NEW},
            'values': {'this': CARE_NEW},
        }, 'TX_NEW': {
            'name': 'Number of adults and children newly enrolled on antiretroviral therapy (ART)',
            'numerators': {'this': TX_NEW},
            'values': {'this': TX_NEW},
        },
        'CARE_CURR': {
            'name': 'Number of HIV-positive adults and children who received at least one of the following during the reporting period: clinical assessment (WHO staging) OR CD4 count OR viral load',
            'numerators': {'this': CARE_CURR},
            'values': {'this': CARE_CURR},
        },
        'PMTCT_STAT_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': PMTCT_STAT_POS},
                'values': {'this': PSP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': PMTCT_STAT - PMTCT_STAT_POS},
                'values': {'this': PSPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_ARV': {
            'positive': {
                'name': 'Receiving ARV',
                'numerators': {'this': PMTCT_ARV},
                'values': {'this': PA}
            },
            'negative': {
                'name': 'Not receiving ARV',
                'numerators': {'this': PMTCT_STAT_POS - PMTCT_ARV},
                'values': {'this': PAP}
            },
            'metadata': pepfar_data['metadata']
        },
        'PMTCT_EID_POS': {
            'positive': {
                'name': 'HIV+',
                'numerators': {'this': PMTCT_EID_POS},
                'values': {'this': PEP}
            },
            'negative': {
                'name': 'HIV-',
                'numerators': {'this': PMTCT_EID - PMTCT_EID_POS},
                'values': {'this': PEPP}
            },
            'metadata': pepfar_data['metadata']
        },
        'metadata': pepfar_data['metadata']

    }


def get_causes_of_death_profile(geo, session):
    causes_of_death_under_five_data = LOCATIONNOTFOUND
    causes_of_death_over_five_data = LOCATIONNOTFOUND
    inpatient_diagnosis_under_five_data = LOCATIONNOTFOUND
    inpatient_diagnosis_over_five_data = LOCATIONNOTFOUND
    outpatient_diagnosis_over_five_data = LOCATIONNOTFOUND
    outpatient_diagnosis_under_five_data = LOCATIONNOTFOUND

    with dataset_context(year='2015'):
        try:
            causes_of_death_under_five_data, _ = get_stat_data(
                'causes of death under five', geo=geo, session=session,
                order_by='-total')
            causes_of_death_over_five_data, _ = get_stat_data(
                'causes of death over five', geo=geo, session=session,
                order_by='-total')
            inpatient_diagnosis_over_five_data, _ = get_stat_data(
                'inpatient diagnosis over five', geo=geo, session=session,
                order_by='-total')
            outpatient_diagnosis_over_five_data, _ = get_stat_data(
                'outpatient diagnosis over five', geo=geo, session=session,
                order_by='-total')
            inpatient_diagnosis_under_five_data, _ = get_stat_data(
                'inpatient diagnosis under five', geo=geo, session=session,
                order_by='-total')
            outpatient_diagnosis_under_five_data, _ = get_stat_data(
                'outpatient diagnosis under five', geo=geo, session=session,
                order_by='-total')
        except Exception:
            pass

    is_missing = causes_of_death_over_five_data.get('is_missing') and \
                 causes_of_death_under_five_data.get('is_missing') and \
                 inpatient_diagnosis_under_five_data.get('is_missing') and \
                 inpatient_diagnosis_over_five_data.get('is_missing') and \
                 outpatient_diagnosis_under_five_data.get('is_missing') and \
                 outpatient_diagnosis_over_five_data.get('is_missing')
    return {
        'is_missing': is_missing,
        'causes_of_death_under_five_data': causes_of_death_under_five_data,
        'causes_of_death_over_five_data': causes_of_death_over_five_data,
        'inpatient_diagnosis_under_five_data': inpatient_diagnosis_under_five_data,
        'inpatient_diagnosis_over_five_data': inpatient_diagnosis_over_five_data,
        'outpatient_diagnosis_over_five_data': outpatient_diagnosis_over_five_data,
        'outpatient_diagnosis_under_five_data': outpatient_diagnosis_under_five_data,
        'source_link': 'http://www.opendata.go.tz/dataset/number-and-causes-of-death-occured-by-region',
        'source_link_2': 'http://www.opendata.go.tz/dataset/idadi-ya-magonjwa-kutoka-idara-ya-wagonjwa-waliolazwa-kwa-mikoa',
        'source_link_3': 'http://www.opendata.go.tz/dataset/idadi-ya-magonjwa-kutoka-idara-ya-wagonjwa-wa-nje-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_family_planning_clients_profile(geo, session):
    family_planning_clients_data = LOCATIONNOTFOUND
    total = 0
    rate = 0
    age_dist_data = LOCATIONNOTFOUND
    all_women_aged_15_49 = 0
    percentage_of_population = 0.0

    with dataset_context(year='2015'):
        # missing data for some regions
        try:
            family_planning_clients_data, _ = get_stat_data(
                'family planning clients', geo=geo, session=session,
                order_by='-total')
            total = family_planning_clients_data['Total']['numerators']['this']
            rate = \
                family_planning_clients_data['New client rate']['numerators'][
                    'this']

            # age in 10 year groups
            def age_recode(f, x):
                age = int(x.replace('+', ''))
                if age > 49:
                    return '80+'
                if age < 15:
                    return 'under 15'
                return "15-49"

            age_dist_data, _ = get_stat_data(
                'age in completed years', geo=geo, session=session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'],
                recode=age_recode, exclude=['male'])
            all_women_aged_15_49 = age_dist_data['15-49']['numerators']['this']

            percentage_of_population = round(
                (total / all_women_aged_15_49) * 100)
        except Exception:
            pass

    is_missing = family_planning_clients_data.get('is_missing')
    return {
        'is_missing': is_missing,
        'total': {
            'name': 'Total number of women aged 15-49 using family planning methods (2013)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'rate': {
            'name': 'New client rate (2013)',
            'numerators': {'this': rate},
            'values': {'this': rate}
        },
        'percentage_of_population': {
            'name': 'Percentage of the population of women aged 15-49',
            'numerators': {'this': percentage_of_population},
            'values': {'this': percentage_of_population}
        },
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-na-asilimia-ya-wateja-wa-huduma-ya-uzazi-wa-mpango-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_place_of_delivery_profile(geo, session):
    delivery_data = LOCATIONNOTFOUND
    anc_projection = 0
    facility_birth_rate = 0
    with dataset_context(year='2015'):
        try:
            delivery_data, _ = get_stat_data(
                'place of delivery', geo=geo, session=session,
                order_by='-total')
            anc_projection = delivery_data['ANC projection']['numerators'][
                'this']
            facility_birth_rate = \
                delivery_data['Facility birth rate']['numerators']['this']
            del delivery_data['ANC projection']
            del delivery_data['Facility birth rate']
        except Exception:
            pass

    return {
        'is_missing': delivery_data.get('is_missing'),
        'anc_projection': {
            'name': 'Antenatal care projection (2014)',
            'numerators': {'this': anc_projection},
            'values': {'this': anc_projection}
        },
        'facility_birth_rate': {
            'name': 'Facility Birth Rate (2014)',
            'numerators': {'this': facility_birth_rate},
            'values': {'this': facility_birth_rate}
        },
        'delivery_data': delivery_data,
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-ya-wanaojifungulia-kwenye-vituo-vya-kutolea-huduma-za-afya-na-sehemu-zingine',
        'source_name': 'opendata.go.tz',
    }


def get_health_workers_distribution_profile(geo, session):
    hw_data = LOCATIONNOTFOUND
    total = 0
    hrh_patient_ratio = 0.0

    with dataset_context(year='2015'):
        try:
            hw_data, total = get_stat_data(
                'health workers', geo=geo, session=session, order_by='-total')

            hrh_patient_ratio = hw_data['HRH patient ratio']['numerators'][
                'this']
            del hw_data['HRH patient ratio']
            del hw_data['MO and AMO per 10000']
            del hw_data['Nurses and midwives per 10000']
            del hw_data['Pharmacists per 10000']
            del hw_data['Clinicians per 10000']
        except Exception:
            pass

    return {
        'is_missing': hw_data.get('is_missing'),
        'total': {
            'name': 'Total health worker population (2014)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'hrh_patient_ratio': {
            'name': 'Skilled health worker to patient ratio (2014)',
            'numerators': {'this': hrh_patient_ratio},
            'values': {'this': hrh_patient_ratio}
        },
        'health_worker_data': hw_data,
        'source_link': 'http://www.opendata.go.tz/dataset/idadi-ya-wafanyakazi-wa-afya-kwa-mikoa',
        'source_name': 'opendata.go.tz',
    }


def get_health_centers_distribution_profile(geo, session):
    hc_data = LOCATIONNOTFOUND
    ho_data = LOCATIONNOTFOUND
    hiv_centers_data = LOCATIONNOTFOUND
    hiv_c = 0
    total = 0

    with dataset_context(year='2015'):
        try:
            hc_data, total = get_stat_data(
                'health centers', geo=geo, session=session, order_by='-total')
            ho_data, _ = get_stat_data(
                'health center ownership', geo, session)
            hiv_centers_data, hiv_c = get_stat_data(
                'hiv centers', geo, session)
        except Exception:
            pass

    is_missing = hc_data.get('is_missing') and \
                 ho_data.get('is_missing') and \
                 hiv_centers_data.get('is_missing')

    return {
        'is_missing': is_missing,
        'total': {
            'name': 'Total health centers in operation (2014)',
            'numerators': {'this': total},
            'values': {'this': total}
        },
        'hiv_centers': {
            'name': 'HIV care and treatment centers (2014)',
            'numerators': {'this': hiv_c},
            'values': {'this': hiv_c}
        },
        'health_center_data': hc_data,
        'health_center_ownership': ho_data,
        'source_link': 'http://www.opendata.go.tz/dataset/list-of-health-facilities-with-geographical-location',
        'source_name': 'opendata.go.tz',
    }


def get_tetanus_vaccine_profile(geo, session):
    tetanus_vaccine_data = LOCATIONNOTFOUND
    number_vaccinated = 0
    coverage = 0

    with dataset_context(year='2015'):
        try:
            tetanus_vaccine_data, _ = get_stat_data(
                'tetanus vaccine', geo=geo, session=session, order_by='-total')
            number_vaccinated = \
                tetanus_vaccine_data['Vaccinated']['numerators'][
                    'this']
            coverage = tetanus_vaccine_data['Coverage']['numerators']['this']
        except Exception:
            pass

    return {
        'is_missing': tetanus_vaccine_data.get('is_missing'),
        'number_vaccinated': {
            'name': 'Number of pregnant women received two or more Tetanus Toxoid vaccine (TT2+) (2014)',
            'numerators': {'this': number_vaccinated},
            'values': {'this': number_vaccinated}
        },
        'coverage': {
            'name': 'Coverage of pregnant women who received two or more Tetanus Toxoid vaccine (TT2+) (2014)',
            'numerators': {'this': coverage},
            'values': {'this': coverage}
        },
        'source_link': 'http://www.opendata.go.tz/dataset/number-and-percentage-of-pregnant-women-received-two-or-more-tetanus-toxoid-vaccine-tt2-by-region',
        'source_name': 'opendata.go.tz',
    }


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
    return OrderedDict([('name', name), ('numerators', {'this': None}),
                        ('values', {'this': s})])


def divide_by_one_thousand(dist):
    dist['values']['this'] = round((dist['values']['this'] * 1.0) / 1000, 1)
    return dist


def replace_name(dist, new_name):
    dist['name'] = new_name


def get_traffic_and_crimes_profile(geo, session):
    total_pop = 0
    traffic_and_crimes = LOCATIONNOTFOUND
    _total_tc = 0
    total_accidents = 0
    deaths_per_pop = 0
    male_injuries = 0
    female_injuries = 0
    male_deaths = 0
    total_deaths = 0
    offences_against_person_dist = LOCATIONNOTFOUND
    cattle_theft_dist = LOCATIONNOTFOUND
    robbery_fatalities_dist = LOCATIONNOTFOUND
    superstitious_beliefs_dist = LOCATIONNOTFOUND
    total_cattletheft_robbery = 0
    public_fighting_dist = LOCATIONNOTFOUND
    _total_pf = 0
    female_deaths = 0

    with dataset_context(year='2012'):
        try:
            _, total_pop = get_stat_data(
                'sex', geo=geo, session=session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'])
        except Exception:
            pass

    with dataset_context(year='2015'):
        try:

            traffic_and_crimes, _total_tc = get_stat_data('traffic and crimes',
                                                          geo=geo,
                                                          session=session,
                                                          order_by='-total')

            # total accidents

            total_accidents += int(
                traffic_and_crimes['Fatal Accidents']['numerators']['this'])
            total_accidents += int(
                traffic_and_crimes['Injury Accidents']['numerators']['this'])
            total_accidents += int(
                traffic_and_crimes['Normal Accidents']['numerators']['this'])

            # injuries
            male_injuries = int(
                traffic_and_crimes['Male Injured Persons']['numerators'][
                    'this'])
            female_injuries = int(
                traffic_and_crimes['Female Injured Persons']['numerators'][
                    'this'])
            total_injuries = male_injuries + female_injuries

            # deaths
            male_deaths = int(
                traffic_and_crimes['Male Dead Persons']['numerators']['this'])
            female_deaths = int(
                traffic_and_crimes['Female Dead Persons']['numerators']['this'])
            total_deaths = male_deaths + female_deaths

            deaths_per_pop = round((total_deaths * 1e5) / total_pop)

            # offences against person 2015
            person_offences = ['Murder', 'Rape', 'Child Desertion',
                               'Unnatural Offence', 'Child Stealing',
                               'Defilement']
            offences_against_person_dist, _ = get_stat_data(
                'traffic and crimes',
                only=person_offences, \
                geo=geo,
                session=session,
                order_by='-total')

            # cattle theft
            cattle_theft_only = ["Cattle Thieves", "Murdered Cattle Owners"]

            def recoder(f, x):
                if x in ('Murdered Cattle Owners', 'Robbery Victims'):
                    return 'Owners'
                if x in ('Cattle Thieves', 'Robbery Thieves'):
                    return 'Thieves'
                if x == "Superstitious Beliefs Albino":
                    return "Albino"
                if x == "Superstitious Beliefs Others":
                    return "Other"
                if x == "Superstitious Beliefs Old Age":
                    return "Old Age"
                if x == "Superstitious Beliefs Theft":
                    return "Theft"
                if x == "Public Fighting Pombe shops":
                    return "Pombe shops"
                if x == "Public Fighting Jelousy":
                    return "Jelousy"
                if x == "Public Fighting Domestic":
                    return "Domestic"
                if x == "Public Fighting Grudge":
                    return "Grudge"
                if x == "Public Fighting Accident":
                    return "Accident"
                return x

            cattle_theft_dist, _total_ct = get_stat_data("traffic and crimes",
                                                         only=cattle_theft_only, \
                                                         geo=geo,
                                                         session=session,
                                                         order_by='-total', \
                                                         recode=recoder)

            robbery_only = ['Robbery Victims', 'Robbery Thieves']
            robbery_fatalities_dist, _total_rf = get_stat_data(
                'traffic and crimes',
                only=robbery_only, \
                geo=geo,
                session=session,
                order_by='-total',
                recode=recoder)

            superstitious_only = ["Superstitious Beliefs Albino",
                                  "Superstitious Beliefs Theft", \
                                  "Superstitious Beliefs Others",
                                  "Superstitious Beliefs Old Age"]
            superstitious_beliefs_dist, _ = get_stat_data('traffic and crimes',
                                                          only=superstitious_only, \
                                                          geo=geo,
                                                          session=session,
                                                          order_by='-total',
                                                          recode=recoder)

            total_cattletheft_robbery = _total_rf + _total_ct

            public_fighting_only = ["Public Fighting Pombe shops",
                                    "Public Fighting Jelousy", \
                                    "Public Fighting Domestic",
                                    "Public Fighting Grudge",
                                    "Public Fighting Accident"]
            public_fighting_dist, _total_pf = get_stat_data(
                'traffic and crimes',
                only=public_fighting_only, \
                geo=geo,
                session=session,
                order_by='-total',
                recode=recoder)

        except Exception:
            pass

    return {
        'is_missing': traffic_and_crimes.get('is_missing'),
        'traffic_and_crimes_overall': traffic_and_crimes,
        'injuries_by_gender': {
            'male': {
                'name': 'Male',
                'numerators': {'this': male_injuries},
                'values': {'this': male_injuries}
            },
            'female': {
                'name': 'Female',
                'numerators': {'this': female_injuries},
                'values': {'this': female_injuries}
            },
            'metadata': traffic_and_crimes['metadata']
        },
        'fatalities_by_gender': {
            'male': {
                'name': 'Men',
                'numerators': {'this': male_deaths},
                'values': {'this': male_deaths}
            },
            'female': {
                'name': 'Women',
                'numerators': {'this': female_deaths},
                'values': {'this': female_deaths}
            },
            'metadata': traffic_and_crimes['metadata']
        },
        'total_accidents': {
            'name': 'Number of  road accidents  (2015)',
            'numerators': {'this': total_accidents},
            'values': {'this': total_accidents}
        },
        'total_fatalities': {
            'name': 'Number of deaths cause by road accidents  (2015)',
            'numerators': {'this': total_deaths},
            'values': {'this': total_deaths}
        },
        'deaths_per_pop': {
            'name': 'People are killed in road accidents in every 100,000 population ',
            'numerators': {'this': deaths_per_pop},
            'values': {'this': deaths_per_pop}
        },
        'source_link': 'http://www.policeforce.go.tz/index.php/sw/takwimu',
        'source_name': 'Tanzania Police Force Report(2015)',
        'offences_against_person': offences_against_person_dist,
        'cattletheft_robbery_deaths': {
            'Cattle Theft': {
                'metadata': {
                    'name': 'Cattle Theft'
                },
                'Thieves': cattle_theft_dist.get('Thieves'),
                'Owners': cattle_theft_dist.get('Owners')
            },
            'Robbery': {
                'metadata': {
                    'name': 'Robbery'
                },
                'Thieves': robbery_fatalities_dist.get('Thieves'),
                'Owners': robbery_fatalities_dist.get('Owners')
            },
            'metadata': traffic_and_crimes['metadata']
        },
        'superstitious_beliefs': superstitious_beliefs_dist,
        'cattle_and_robbery': {
            'name': 'People killed in cattle theft and robbery crimes(2015)',
            'numerators': {'this': total_cattletheft_robbery},
            'values': {'this': total_cattletheft_robbery}
        },
        'public_fighting': public_fighting_dist,
        'public_fighting_stat': {
            'name': 'Number of people killed in public fights(2015)',
            'numerators': {'this': _total_pf},
            'values': {'this': _total_pf}
        }
    }


def get_primary_school_teachers_profile(geo, session):
    ps_teachers = LOCATIONNOTFOUND
    n_teachers = 0

    with dataset_context(year='2015'):
        try:

            ps_teachers, n_teachers = get_stat_data('primary school teachers', \
                                                    geo=geo, session=session,
                                                    order_by='-total')

        except Exception:
            pass

    is_missing = ps_teachers.get('is_missing')
    return {
        'is_missing': is_missing,
        'number_of_teachers': {
            'name': 'Number of primary school teachers (2016)',
            'numerators': {'this': n_teachers},
            'values': {'this': n_teachers}
        },
        'source_name': 'opendata.go.tz',
        'source_link': 'http://www.opendata.go.tz/dataset/number-of-primary-school-teachers',
        'primary_school_teachers': ps_teachers
    }


def get_water_sources_profile(geo, session):
    water_source_dist = LOCATIONNOTFOUND
    total_pop = 0
    n_sources = 0
    n_people_per_point = 0
    with dataset_context(year='2015'):

        try:
            _, total_pop = get_stat_data(
                'sex', geo=geo, session=session,
                table_fields=['age in completed years', 'sex',
                              'rural or urban'])

            WATER_POINT_STATUS_RECODES = OrderedDict([
                ('functional', 'Functional'),
                ('nonfunctional', 'Non Functional'),
                ('needsrepair', 'Functional Needs Repair')
            ])

            water_source_dist, n_sources = get_stat_data('water sources',
                                                         geo=geo, \
                                                         session=session,
                                                         recode=WATER_POINT_STATUS_RECODES)

            # Functional  + Needs repair
            all_functional = water_source_dist['Functional']['numerators'][
                                 'this'] + \
                             water_source_dist['Functional Needs Repair'][
                                 'numerators']['this']

            # Number of people per water point
            n_people_per_point = round(total_pop / all_functional)

        except Exception as e:
            # Location not found in dataset
            pass

    return {
        'is_missing': water_source_dist.get('is_missing'),
        'water_sources_dist': water_source_dist,
        'number_of_water_sources': {
            'name': 'Total number of water points',
            'numerators': {'this': n_sources},
            'values': {'this': n_sources}
        },
        'source_link': 'http://www.opendata.go.tz/dataset/hali-halisi-ya-vitoa-maji-kwa-mikoa-yote-tanzania',
        'source_name': 'opendata.go.tz',
        'n_people_per_point': {
            'name': 'Number of people using a working water point(Functional/Needs repair water point)',
            'numerators': {'this': n_people_per_point},
            'values': {'this': n_people_per_point}
        },

    }


def get_primary_school_desks_profile(geo, session):
    school_desks_dist = LOCATIONNOTFOUND
    n_desks = 0
    with dataset_context(year='2015'):

        try:
            school_desks_dist, n_desks = get_stat_data('primary school desks',
                                                       geo=geo, \
                                                       session=session)
        except Exception as e:
            pass

    return {
        'is_missing': school_desks_dist.get('is_missing'),
        'number_of_desks': {
            'name': 'Number of Desks(2014)',
            'numerators': {'this': n_desks},
            'values': {'this': n_desks}
        },
    }


def get_airport_types_profile(geo, session):
    airports_dist = LOCATIONNOTFOUND
    n_airports = 0
    with dataset_context(year='2015'):
        try:

            airports_dist, n_airports = get_stat_data('airport types', \
                                                      geo=geo, session=session,
                                                      order_by='-total')

        except Exception as e:
            pass

    data = {
        'is_missing': airports_dist.get('is_missing'),
        'number_of_airports': {
            'name': 'Number of airports (2017)',
            'numerators': {'this': n_airports},
            'values': {'this': n_airports}
        },
        'source_name': 'http://www.taa.go.tz',
        'source_link': 'http://www.taa.go.tz',
        'airports': airports_dist
    }
    return data

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
        except Exception:
            pass

        try:
            own_motor_vehicle, _ = get_stat_data('own_motor_vehicle', geo, session,
                                                 table_fields=['own_motor_vehicle'])
        except Exception:
            pass

        try:
            own_television, _ = get_stat_data('own_television', geo, session,
                                              table_fields=['own_television'])
        except Exception:
            pass

        try:
            own_mobile_phone, _ = get_stat_data('own_mobile_phone', geo, session,
                                                table_fields=['own_mobile_phone'])
        except Exception:
            pass

        try:
            election_work_for_candidate_or_party, _ = get_stat_data(
                'election_work_for_candidate_or_party', geo, session,
                table_fields=['election_work_for_candidate_or_party'])
        except Exception:
            pass

        try:
            election_attend_campaign_rally, _ = get_stat_data(
                'election_attend_campaign_rally', geo, session,
                table_fields=['election_attend_campaign_rally'])
        except Exception:
            pass

        try:
            election_attend_campaign_meeting, _ = get_stat_data(
                'election_attend_campaign_meeting', geo, session,
                table_fields=['election_attend_campaign_meeting'])
        except Exception:
            pass

        try:
            courts_make_binding_decisions, _ = get_stat_data(
                'courts_make_binding_decisions', geo, session,
                table_fields=['courts_make_binding_decisions'])
        except Exception:
            pass

        try:
            vote_for_which_party, _ = get_stat_data('vote_for_which_party', geo,
                                                    session, table_fields=[
                    'vote_for_which_party'])
        except Exception:
            pass

        try:
            level_of_corruption, _ = get_stat_data('level_of_corruption', geo,
                                                   session, table_fields=[
                    'level_of_corruption'])
        except Exception:
            pass

        try:
            chinas_assistance_meets_country_needs, _ = get_stat_data(
                'chinas_assistance_meets_country_needs', geo, session,
                table_fields=['chinas_assistance_meets_country_needs'])
        except Exception:
            pass

        try:
            employment_status, _ = get_stat_data('employment_status', geo, session,
                                                 table_fields=['employment_status'])
        except Exception:
            pass

        try:
            main_reason_for_not_reporting_corruption, _ = get_stat_data(
                'main_reason_for_not_reporting_corruption', geo, session,
                table_fields=['main_reason_for_not_reporting_corruption'])
        except Exception:
            pass

        try:
            education_of_respondent, _ = get_stat_data('education_of_respondent',
                                                       geo, session, table_fields=[
                    'education_of_respondent'])
        except Exception:
            pass

        try:
            people_must_pay_taxes, _ = get_stat_data('people_must_pay_taxes', geo,
                                                     session, table_fields=[
                    'people_must_pay_taxes'])
        except Exception:
            pass

        try:
            negative_image_of_china, _ = get_stat_data('negative_image_of_china',
                                                       geo, session, table_fields=[
                    'negative_image_of_china'])
        except Exception:
            pass

        try:
            most_effective_way_to_combat_corruption, _ = get_stat_data(
                'most_effective_way_to_combat_corruption', geo, session,
                table_fields=['most_effective_way_to_combat_corruption'])
        except Exception:
            pass

        try:
            people_can_fight_corruption, _ = get_stat_data(
                'people_can_fight_corruption', geo, session,
                table_fields=['people_can_fight_corruption'])
        except Exception:
            pass

        try:
            people_must_obey_the_law, _ = get_stat_data('people_must_obey_the_law',
                                                        geo, session, table_fields=[
                    'people_must_obey_the_law'])
        except Exception:
            pass

        try:
            chinas_influence_on_economy, _ = get_stat_data(
                'chinas_influence_on_economy', geo, session,
                table_fields=['chinas_influence_on_economy'])
        except Exception:
            pass

        try:
            chinas_influence_positive_or_negative, _ = get_stat_data(
                'chinas_influence_positive_or_negative', geo, session,
                table_fields=['chinas_influence_positive_or_negative'])
        except Exception:
            pass

        try:
            positive_image_of_china, _ = get_stat_data('positive_image_of_china',
                                                       geo, session, table_fields=[
                    'positive_image_of_china'])
        except Exception:
            pass

        try:
            occupation_of_respondent, _ = get_stat_data('occupation_of_respondent',
                                                        geo, session, table_fields=[
                    'occupation_of_respondent'])
        except Exception:
            pass

        try:
            employer_of_respondent, _ = get_stat_data('employer_of_respondent', geo,
                                                      session, table_fields=[
                    'employer_of_respondent'])
        except Exception:
            pass

        try:
            how_often_use_a_mobile_phone, _ = get_stat_data(
                'how_often_use_a_mobile_phone', geo, session,
                table_fields=['how_often_use_a_mobile_phone'])
        except Exception:
            pass

        try:
            how_often_use_the_internet, _ = get_stat_data(
                'how_often_use_the_internet', geo, session,
                table_fields=['how_often_use_the_internet'])
        except Exception:
            pass

        try:
            freeness_and_fairness_last_elections, _ = get_stat_data(
                'freeness_and_fairness_last_elections', geo, session,
                table_fields=['freeness_and_fairness_last_elections'])
        except Exception:
            pass

        try:
            extent_of_democracy, _ = get_stat_data('extent_of_democracy', geo,
                                                   session, table_fields=[
                    'extent_of_democracy'])
        except Exception:
            pass

        try:
            elections_ensure_voters_views_are_reflected, _ = get_stat_data(
                'elections_ensure_voters_views_are_reflected', geo, session,
                table_fields=['elections_ensure_voters_views_are_reflected'])
        except Exception:
            pass

        try:
            corruption_judges_and_magistrates, _ = get_stat_data(
                'corruption_judges_and_magistrates', geo, session,
                table_fields=['corruption_judges_and_magistrates'])
        except Exception:
            pass

        try:
            elections_to_remove_leaders_from_office, _ = get_stat_data(
                'elections_to_remove_leaders_from_office', geo,
                session, table_fields=[
                    'elections_to_remove_leaders_from_office'])
        except Exception:
            pass

        try:
            corruption_tax_officials, _ = get_stat_data('corruption_tax_officials',
                                                        geo, session, table_fields=[
                    'corruption_tax_officials'])
        except Exception:
            pass

        try:
            corruption_police, _ = get_stat_data('corruption_police', geo, session,
                                                 table_fields=['corruption_police'])
        except Exception:
            pass

        try:
            corruption_local_gov_councilors, _ = get_stat_data(
                'corruption_local_gov_councilors', geo, session,
                table_fields=['corruption_local_gov_councilors'])
        except Exception:
            pass

        try:
            corruption_gov_officials, _ = get_stat_data('corruption_gov_officials',
                                                        geo, session, table_fields=[
                    'corruption_gov_officials'])
        except Exception:
            pass

        try:
            corruption_mps, _ = get_stat_data('corruption_mps', geo, session,
                                              table_fields=['corruption_mps'])
        except Exception:
            pass

        try:
            corruption_president_office, _ = get_stat_data(
                'corruption_president_office', geo, session,
                table_fields=['corruption_president_office'])
        except Exception:
            pass

        try:
            satisfaction_with_democracy, _ = get_stat_data(
                'satisfaction_with_democracy', geo, session,
                table_fields=['satisfaction_with_democracy'])
        except Exception:
            pass

        try:
            corruption_business_executives, _ = get_stat_data(
                'corruption_business_executives', geo, session,
                table_fields=['corruption_business_executives'])
        except Exception:
            pass

        try:
            corruption_religious_leaders, _ = get_stat_data(
                'corruption_religious_leaders', geo, session,
                table_fields=['corruption_religious_leaders'])
        except Exception:
            pass

        try:
            corruption_traditional_leaders, _ = get_stat_data(
                'corruption_traditional_leaders', geo, session,
                table_fields=['corruption_traditional_leaders'])
        except Exception:
            pass

        try:
            difficulty_to_obtain_public_school_services, _ = get_stat_data(
                'difficulty_to_obtain_public_school_services', geo, session,
                table_fields=['difficulty_to_obtain_public_school_services'])
        except Exception:
            pass

        try:
            voting_recent_national_election, _ = get_stat_data(
                'voting_recent_national_election', geo, session,
                table_fields=['voting_recent_national_election'])
        except Exception:
            pass

        try:
            difficulty_to_obtain_medical_treatment, _ = get_stat_data(
                'difficulty_to_obtain_medical_treatment', geo, session,
                table_fields=['difficulty_to_obtain_medical_treatment'])
        except Exception:
            pass

        try:
            pay_bribe_for_school_services, _ = get_stat_data(
                'pay_bribe_for_school_services', geo, session,
                table_fields=['pay_bribe_for_school_services'])
        except Exception:
            pass

        try:
            difficulty_to_obtain_identity_document, _ = get_stat_data(
                'difficulty_to_obtain_identity_document', geo, session,
                table_fields=['difficulty_to_obtain_identity_document'])
        except Exception:
            pass

        try:
            pay_bribe_treatment_public_health, _ = get_stat_data(
                'pay_bribe_treatment_public_health', geo, session,
                table_fields=['pay_bribe_treatment_public_health'])
        except Exception:
            pass

        try:
            difficulty_to_obtain_household_services, _ = get_stat_data(
                'difficulty_to_obtain_household_services', geo, session,
                table_fields=['difficulty_to_obtain_household_services'])
        except Exception:
            pass

        try:
            pay_bribe_for_document_or_permit, _ = get_stat_data(
                'pay_bribe_for_document_or_permit', geo, session,
                table_fields=['pay_bribe_for_document_or_permit'])
        except Exception:
            pass

        try:
            pay_bribe_for_household_services, _ = get_stat_data(
                'pay_bribe_for_household_services', geo, session,
                table_fields=['pay_bribe_for_household_services'])
        except Exception:
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
