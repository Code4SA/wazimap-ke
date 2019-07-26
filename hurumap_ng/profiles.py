from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import (current_context, dataset_context, get_session,
                                get_stat_data, group_remainder)
from wazimap.geo import geo_data

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH_ORDER= ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']


def get_profile(geo, profile_name, request):
    session = get_session()

    try:
        data = {}

        sections = list(SECTIONS)

        for section in sections:
            function_name = 'get_%s_profile' % section
            if function_name in globals():
                func = globals()[function_name]
                data[section] = func(geo, session)
        return data

    finally:
        session.close()

"""
fields, geo, session, table_dataset=None, table_universe=None,
                  table_fields=None, table_name=None, **kwargs
"""

def get_nbs_2018(geo, session, year):
    mobile_subscription = LOCATIONNOTFOUND
    mineral_production = LOCATIONNOTFOUND
    hiv_patients = LOCATIONNOTFOUND
    telecom_subscription = LOCATIONNOTFOUND
    faac = LOCATIONNOTFOUND
    jamb = LOCATIONNOTFOUND
    debt_data = LOCATIONNOTFOUND


    with dataset_context(year='2018'):
        try:
            debt_data, _ = get_stat_data(fields=['year', 'debt_type'], geo=geo,
                                         session=session,
                                         percent=False, order_by='debt_type')
            mobile_subscription, _ = get_stat_data(fields=['network', 'subscription_type'], geo=geo,
                                         session=session,
                                         table_name='mobile_subscription', percent=False)
            mineral_production, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='mineral_production', percent=False, order_by='year')
            telecom_subscription, _ = get_stat_data(fields=['period', 'subscription_type'], geo=geo,
                                         session=session,
                                         table_name='telecom_subscription', percent=False)
            faac, _ = get_stat_data(fields=['allocation'], geo=geo,
                                         session=session,
                                         table_name='faac', percent=False)
            jamb, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='jamb', percent=False)

        except Exception as e:
            print(str(e))

    is_missing = mobile_subscription.get('is_missing') and \
                mineral_production.get('is_missing') and \
                telecom_subscription.get('is_missing') and \
                faac.get('is_missing') and jamb.get('is_missing') and \
                debt_data.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'mobile_subscription': mobile_subscription,
        'mineral_production': mineral_production,
        'telecom_subscription': telecom_subscription,
        'debt_data': debt_data,
        'faac': faac,
        'jamb': jamb

    }
    return final_data


def get_demographics_profile(geo, session):
    compiled_indeces = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            compiled_indeces, _ = get_stat_data(fields=['compiled_indeces'], geo=geo,
                                         session=session,
                                         table_name='compiled_indeces', percent=False)
        except Exception as e:
            print(str(e))
            pass
    is_missing = compiled_indeces.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'compiled_indeces': compiled_indeces
    }
    return final_data

def get_crime_profile(geo, session):
    arrested_suspects = LOCATIONNOTFOUND
    suspects_prosecuted = LOCATIONNOTFOUND
    conviction_secured = LOCATIONNOTFOUND
    bribery_prevalence = 0
    cases_of_corruption = LOCATIONNOTFOUND
    avg_number_bribes = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            arrested_suspects, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='arrested_suspects', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass

        try:
            counselling_concluded, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='counselling_concluded', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass
        try:
            suspects_prosecuted, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='suspects_prosecuted', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass
        try:
            conviction_secured, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='conviction_secured', percent=False, order_by='year')
        except Exception as e:
            print(str(e))


    with dataset_context(year='2018'):
        try:
            _, bribery_prevalence = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='bribery_prevalence', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            cases_of_corruption, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='cases_of_corruption', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            avg_number_bribes, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='avg_number_bribes', percent=False)
        except Exception as e:
            print(str(e))
            pass




    is_missing = arrested_suspects.get('is_missing') and \
                suspects_prosecuted.get('is_missing') and \
                conviction_secured.get('is_missing') and \
                cases_of_corruption.get('is_missing') and \
                avg_number_bribes.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'arrested_suspects': arrested_suspects,
        'suspects_prosecuted': suspects_prosecuted,
        'conviction_secured': conviction_secured,
        'bribery_prevalence': {
            'name': "Prevalence of bribery, 2016",
            'numerators': {'this': bribery_prevalence },
            'values': {'this': bribery_prevalence },
        },
        'cases_of_corruption': cases_of_corruption,
        'avg_number_bribes': avg_number_bribes
    }
    return final_data




def get_drugs_profile(geo, session):
    drugs_seized = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            drugs_seized, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='drugs_seized', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass

    is_missing = drugs_seized.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'drugs_seized': drugs_seized
    }
    return final_data


def get_education_profile(geo, session):
    drugs_seized = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            drugs_seized, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='drugs_seized', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass

    is_missing = drugs_seized.get('is_missing')
    final_data = {
        'is_missing': is_missing,
        'drugs_seized': drugs_seized
    }
    return final_data


def get_health_profile(geo, session):
    counselling_concluded = LOCATIONNOTFOUND
    hiv_patients = LOCATIONNOTFOUND
    access_to_wash = LOCATIONNOTFOUND
    adolescent_fertility = LOCATIONNOTFOUND

    with dataset_context(year='2016'):
        try:
            counselling_concluded, _ = get_stat_data(fields=['year'], geo=geo,
                                         session=session,
                                         table_name='counselling_concluded', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass

    with dataset_context(year='2018'):
        try:
            hiv_patients, _ = get_stat_data(fields=['year', 'gender'], geo=geo,
                                         session=session,
                                         table_name='hiv_patients', percent=False, order_by='year')
        except Exception as e:
            print(str(e))
            pass
        try:
            access_to_wash, _ = get_stat_data(fields=['access_to_wash'], geo=geo,
                                         session=session,
                                         table_name='access_to_wash', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            adolescent_fertility, _ = get_stat_data(fields=['adolescent_fertility_year'], geo=geo,
                                         session=session,
                                         table_name='adolescent_fertility', percent=False)
        except Exception as e:
            print(str(e))
            pass

    is_missing = counselling_concluded.get('is_missing') and \
                hiv_patients.get('is_missing') and \
                access_to_wash.get('is_missing') and \
                adolescent_fertility.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'counselling_concluded': counselling_concluded,
        'hiv_patients': hiv_patients,
        'access_to_wash': access_to_wash,
        'adolescent_fertility': adolescent_fertility
    }
    return final_data


def get_transportation_profile(geo, session):
    diesel_price_2016 = LOCATIONNOTFOUND
    diesel_price_2017 = LOCATIONNOTFOUND
    diesel_price_2015 = LOCATIONNOTFOUND
    diesel_price_2018 = LOCATIONNOTFOUND
    diesel_price_2019 = LOCATIONNOTFOUND
    petrol_price_2016 = LOCATIONNOTFOUND
    petrol_price_2017 = LOCATIONNOTFOUND
    petrol_price_2018 = LOCATIONNOTFOUND
    petrol_price_2019 = LOCATIONNOTFOUND
    air_transportation_domestic = LOCATIONNOTFOUND
    air_transportation_international = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            diesel_price_2018, _ = get_stat_data(['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception as e:
            print(str(e))
            pass
        try:
            diesel_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception as e:
            print(str(e))
            pass
        try:
            diesel_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         key_order=MONTH_ORDER,
                                         table_name='diesel_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            diesel_price_2015, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2015']},
                                         table_name='diesel_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            diesel_price_2019, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         exclude_zero=False,
                                         table_name='diesel_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            petrol_price_2016, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2016']},
                                         table_name='petrol_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            petrol_price_2017, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2017']},
                                         table_name='petrol_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            petrol_price_2018, _ = get_stat_data(fields=['month'], geo=geo,
                                         session=session,
                                         only={'year': ['2018']},
                                         key_order=MONTH_ORDER,
                                         table_name='petrol_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            petrol_price_2019, _ = get_stat_data(fields=['month',], geo=geo,
                                         session=session,
                                         only={'year': ['2019']},
                                         table_name='petrol_price', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            air_transportation_domestic, _ = get_stat_data(['month, depature_arrival'], geo=geo,
                                         session=session,
                                         table_name='air_transportation_domestic', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            air_transportation_international, _ = get_stat_data(['month, depature_arrival'], geo=geo,
                                         session=session,
                                         table_name='air_transportation_international', percent=False)
        except Exception as e:
            print(str(e))
            pass

        diesel_price = {
            'is_missing': diesel_price_2019.get('is_missing') and \
                            diesel_price_2018.get('is_missing') and \
                            diesel_price_2017.get('is_missing') and \
                            diesel_price_2016.get('is_missing') and \
                            diesel_price_2015.get('is_missing'),
            '2019': diesel_price_2019,
            '2018': diesel_price_2018,
            '2017': diesel_price_2017,
            '2016': diesel_price_2016,
            '2015': diesel_price_2015
        }

        petrol_price = {
            'is_missing': petrol_price_2018.get('is_missing') and \
                            petrol_price_2017.get('is_missing') and \
                            petrol_price_2016.get('is_missing') and \
                            petrol_price_2016.get('is_missing'),
            '2019': petrol_price_2019,
            '2018': petrol_price_2018,
            '2017': petrol_price_2017,
            '2016': petrol_price_2016
        }

    is_missing = diesel_price.get('is_missing') and \
                petrol_price.get('is_missing') and \
                air_transportation_domestic.get('is_missing') and \
                air_transportation_international.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'diesel_price': diesel_price,
        'petrol_price': petrol_price,
        'air_transportation_domestic': air_transportation_domestic,
        'air_transportation_international': air_transportation_international
    }
    return final_data


def get_finance_profile(geo, session):
    bank_credit = LOCATIONNOTFOUND
    bank_deposit = LOCATIONNOTFOUND

    with dataset_context(year='2018'):
        try:
            bank_credit, _ = get_stat_data(['credit_year'], geo=geo,
                                         session=session,
                                         table_name='bank_credit', percent=False)
        except Exception as e:
            print(str(e))
            pass

        try:
            bank_deposit, _ = get_stat_data(['deposit_year'], geo=geo,
                                         session=session,
                                         table_name='bank_deposit', percent=False)
        except Exception as e:
            print(str(e))
            pass

    is_missing = bank_deposit.get('is_missing') and \
                 bank_credit.get('is_missing')

    final_data = {
        'is_missing': is_missing,
        'bank_credit': bank_credit,
        'bank_deposit': bank_deposit
    }

    return final_data
