# -*- coding: utf-8 -*-
import logging

from wazimap.geo import geo_data
from wazimap.data.tables import get_model_from_fields, get_datatable
from wazimap.data.utils import get_session, calculate_median, merge_dicts, get_stat_data, get_objects_by_geo, group_remainder, LocationNotFound
from django.conf import settings
from collections import OrderedDict
from wazimap.data.base import Base
from sqlalchemy import Column, ForeignKey, Integer, String, Table, func, or_, and_, desc, asc, cast

log = logging.getLogger(__name__)
# ensure tables are loaded
import hurumap_land.tables  # noqa

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }

MONTH = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan',
                    'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul']

LAND_CLASS = [u'Under 1.5K',u'1,501-3K',u'3,001-5K',u'5,001-10K'
    ,u'10,001-20K',u'20,001-30K', u'30,001-40K', u'40,001-50K', u'50,001-100K',
    u'100,001-150K',u'150,001-200K',u'200,001-300K',u'300,001-500K',
    u'500,001-800K',u'800,001-1M',u'Above 1M']


def get_land_profile(geo, profile_name, request):
    session = get_session()
    try:
        comparative_geos = geo_data.get_comparative_geos(geo)
        data = {}
        land_sections = ['farmland', 'ervenland', 'sectionaltitleland']
        #for each topic in sections
        #get data for that topic profiles
        for section in land_sections:
            topic_name = SECTIONS[section]['topic']
            data[topic_name] = get_land_topic_profiles(geo, session, topic_name)

            # get profiles data for comparative geometries for land sections
            for comp_geo in comparative_geos:
                if not data[topic_name]['is_missing']:
                    try:
                        merge_dicts(
                            data[topic_name], get_land_topic_profiles(comp_geo, session, topic_name),
                                comp_geo.geo_level)
                    except KeyError as e:
                        msg = "Error merging data into %s for section '%s' from %s: KeyError: %s" % (
                            geo.geoid, topic_name, comp_geo.geoid, e)
                        log.fatal(msg, exc_info=e)
                        raise ValueError(msg)

        data['landsales'] = get_landsales_profiles(geo, session)
        data['redistributionandrestitution'] = get_redistributionrestitution_profiles(geo, session)
        data['districtdistribution'] = districtdistribution(geo, session)
        data['landsalescolour'] = get_landsales_colour_profiles (geo, session)

        for comp_geo in comparative_geos:
            if not data['landsales']['is_missing']:
                try:
                    merge_dicts(
                        data['landsales'],
                        get_landsales_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for section landsale "\
                        "from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)

            if not data['redistributionandrestitution']['is_missing']:
                try:
                    merge_dicts(
                        data['redistributionandrestitution'],
                        get_redistributionrestitution_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for section "\
                        "redistributionandrestitution from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)


            if not data['landsalescolour']['is_missing']:
                try:
                    merge_dicts(
                        data['landsalescolour'],
                        get_landsales_colour_profiles(comp_geo, session),
                            comp_geo.geo_level)
                except KeyError as e:
                    msg = "Error merging data into %s for land sale colour "\
                        "from %s: KeyError: %s" % (
                        geo.geoid, comp_geo.geoid, e)
                    log.fatal(msg, exc_info=e)
                    raise ValueError(msg)
        return data

    finally:
        session.close()

def get_land_topic_profiles(geo, session, topic_name):
    topic_profiles = SECTIONS[topic_name]['profiles']
    profiles_data = {'is_missing': True }

    for profile in topic_profiles:
        try:
            profile_table = profile.lower()
            profile_name = profile.lower().replace(' ', '_')
            profiles_data[profile_name] = LOCATIONNOTFOUND
            profiles_data[profile_name], _  = get_stat_data([profile_table],
                                                geo, session)
        except LocationNotFound:
            pass

        profiles_data['is_missing'] = profiles_data.get('is_missing') and \
                profiles_data[profile_name].get('is_missing')

    return profiles_data

def get_redistributionrestitution_profiles(geo, session):
    redistributedlandusebreakdown = redistributeprogrammeprojectsbyyear = LOCATIONNOTFOUND
    redistributeprogrammehouseholdsbyyear = landcostrestitution = LOCATIONNOTFOUND
    redistributeprogrammebeneficiariesbyyear = femalepartybenefited = LOCATIONNOTFOUND
    youthpartybenefited = disabledpeoplepartybenefited = LOCATIONNOTFOUND
    redistributedlandinhectares = redistributedlandcostinrands =  LOCATIONNOTFOUND
    redistributedlandaveragecostperhectares = householdsrestitution = LOCATIONNOTFOUND
    hectarestransferredperprovincebyyear = hectaresacquiredrestitution = LOCATIONNOTFOUND
    projectsrestitution = beneficiariesrestitution = LOCATIONNOTFOUND
    claimssettledrestitution = disabilitiesrestitution = LOCATIONNOTFOUND
    femaleheadedhouseholdsrestitution = financialcompensationrestitution = LOCATIONNOTFOUND

    femaleheadedhouseholdsrestitution_tot = beneficiariesrestitution_tot = projectsrestitution_tot = 0
    financialcompensationrestitution_tot = claimssettledrestitution_tot = 0
    femalepartybenefited_tot = disabledpeoplepartybenefited_tot = youthpartybenefited_tot = 0
    hectarestransferredperprovincebyyear_tot = hectaresacquiredrestitution_tot = 0
    householdsrestitution_tot = disabilitiesrestitution_tot = 0

    redistributionrestitution = {'is_missing': True}

    try:
        redistributedlandusebreakdown, _ = get_stat_data(
                        ['redistributed land use breakdown'], geo, session)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammeprojectsbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['projects transferred']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammehouseholdsbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['benefited households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributeprogrammebeneficiariesbyyear, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'outcome of redistribution programme'],
            only={'outcome of redistribution programme': ['benefited beneficiaries']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        femalepartybenefited, femalepartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['female']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        youthpartybenefited, youthpartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['youth']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        disabledpeoplepartybenefited, disabledpeoplepartybenefited_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'party_benefited'],
            only={'party_benefited': ['disable people']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectarestransferredperprovincebyyear, hectarestransferredperprovincebyyear_tot = get_stat_data(
            ['year'], geo, session,
            percent=False)
    except LocationNotFound:
        pass

    try:
        hectaresacquiredrestitution, hectaresacquiredrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['hectares acquired']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        claimssettledrestitution, claimssettledrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['claims settled']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        disabilitiesrestitution, disabilitiesrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['people with disabilities']},
            percent=False)
    except LocationNotFound:
        pass
    try:
        beneficiariesrestitution, beneficiariesrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['beneficiaries']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        householdsrestitution, householdsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        landcostrestitution, _ = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['landcost']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        financialcompensationrestitution, financialcompensationrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['financial compensation']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        projectsrestitution, projectsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['projects']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        femaleheadedhouseholdsrestitution, femaleheadedhouseholdsrestitution_tot = get_stat_data(
            ['year'], geo, session,
            table_fields=['year', 'restitutionoutcomestatistic'],
            only={'restitutionoutcomestatistic': ['female headed households']},
            percent=False)
    except LocationNotFound:
        pass

    try:
        redistributedlandinhectarestable = get_datatable('redistributedlandinhectares')
        redistributedlandinhectares, tot  = redistributedlandinhectarestable.get_stat_data(
                            geo, percent=False)
        redistributedlandinhectares['redistributedlandinhectares']['name'] = "Total land redistributed in hectares for the year 2017/2018"
    except LocationNotFound:
        pass

    try:
        redistributedlandcostinrandstable = get_datatable('redistributedlandcostinrands')
        redistributedlandcostinrands, tot_cost  = redistributedlandcostinrandstable.get_stat_data(geo, percent=False)
        redistributedlandcostinrands['redistributedlandcostinrands']['name'] = "Cost in Rands (ZAR) of Redistributed Land for the year 2017/2018"
    except LocationNotFound:
        pass

    try:
        redistributedlandaveragecostperhectarestable = get_datatable('redistributedlandaveragecostperhectares')
        redistributedlandaveragecostperhectares, tot_avg_cost  = redistributedlandaveragecostperhectarestable.get_stat_data(geo, percent=False)
        redistributedlandaveragecostperhectares['redistributedlandaveragecostperhectares']['name'] = "Average Cost in Rands (ZAR) per Hectares for Redistributed Land in 2017/2018"
    except LocationNotFound:
        pass

    redistributionrestitution['redistributedlandusebreakdown']= redistributedlandusebreakdown
    redistributionrestitution['redistributedlandinhectares_stat']= redistributedlandinhectares['redistributedlandinhectares']
    redistributionrestitution['redistributedlandcostinrands_stat']= redistributedlandcostinrands['redistributedlandcostinrands']
    redistributionrestitution['redistributedlandaveragecostperhectares_stat']= \
                    redistributedlandaveragecostperhectares['redistributedlandaveragecostperhectares']
    redistributionrestitution['redistributeprogrammeprojectsbyyear']= redistributeprogrammeprojectsbyyear
    redistributionrestitution['redistributeprogrammehouseholdsbyyear']= redistributeprogrammehouseholdsbyyear
    redistributionrestitution['redistributeprogrammebeneficiariesbyyear']= redistributeprogrammebeneficiariesbyyear

    redistributionrestitution['femalepartybenefited'] = femalepartybenefited
    redistributionrestitution['youthpartybenefited'] = youthpartybenefited
    redistributionrestitution['disabledpeoplepartybenefited'] = disabledpeoplepartybenefited
    redistributionrestitution['hectarestransferredperprovincebyyear'] = hectarestransferredperprovincebyyear
    redistributionrestitution['hectaresacquiredrestitution'] = hectaresacquiredrestitution
    redistributionrestitution['claimssettledrestitution'] = claimssettledrestitution
    redistributionrestitution['householdsrestitution'] = householdsrestitution
    redistributionrestitution['femaleheadedhouseholdsrestitution'] = femaleheadedhouseholdsrestitution
    redistributionrestitution['disabilitiesrestitution'] = disabilitiesrestitution
    redistributionrestitution['projectsrestitution'] = projectsrestitution
    redistributionrestitution['beneficiariesrestitution'] = beneficiariesrestitution
    redistributionrestitution['landcostrestitution'] = landcostrestitution
    redistributionrestitution['financialcompensationrestitution'] = financialcompensationrestitution
    redistributionrestitution['femalepartybenefited_tot'] = femalepartybenefited_tot
    redistributionrestitution['youthpartybenefited_tot'] = youthpartybenefited_tot
    redistributionrestitution['disabledpeoplepartybenefited_tot'] = disabledpeoplepartybenefited_tot
    redistributionrestitution['hectarestransferredperprovincebyyear_tot'] = hectarestransferredperprovincebyyear_tot
    redistributionrestitution['hectaresacquiredrestitution_tot'] = hectaresacquiredrestitution_tot
    redistributionrestitution['claimssettledrestitution_tot'] = claimssettledrestitution_tot
    redistributionrestitution['landcostrestitution'] = landcostrestitution
    redistributionrestitution['householdsrestitution_stat'] = \
                  { "name": "Total households benefited in restitution programme from 2009/2018",
                    "values": {"this": householdsrestitution_tot}
                  }
    redistributionrestitution['femaleheadedhouseholdsrestitution_stat'] = \
                { "name": "Female headed households benefited in restitution programme from 2009/2018",
                   "values": {"this": femaleheadedhouseholdsrestitution_tot}
                }
    redistributionrestitution['disabilitiesrestitution_stat'] = \
                { "name": "Number of people with disabilities benefited in restitution programme from 2009/2018",
                  "values": {"this": disabilitiesrestitution_tot}
                }
    redistributionrestitution['projectsrestitution_stat'] = \
                { "name": "Number of projects in the restitution programme from 2009/2018",
                  "values": {"this": projectsrestitution_tot}
                }
    redistributionrestitution['beneficiariesrestitution_stat'] = \
                {   "name": "Number of beneficiaries in the restitution programme from 2009/2018",
                     "values": {"this": beneficiariesrestitution_tot}
                }

    #if total hectares of redistruted land is missing
    # and total hectares acquired under restitution is missing, then there's no data
    redistributionrestitution['is_missing'] = hectarestransferredperprovincebyyear.get('is_missing') \
                            and hectaresacquiredrestitution.get('is_missing')

    return redistributionrestitution

def get_landsales_profiles(geo, session):
    landsales = {'is_missing': True }
    landsalestransaction = landsaleshectares = LOCATIONNOTFOUND
    landsalesaverageprice = landsalespricetrends = LOCATIONNOTFOUND
    landsaleslowestprice = landsaleshighestprice = LOCATIONNOTFOUND
    landsalesaveragetrends = landsalesaveragepricejuly = LOCATIONNOTFOUND

    landsalestransaction_tot = landsaleshectares_tot = 0

    try:
        landsalestransaction,landsalestransaction_tot = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributiontransaction',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsaleshectares,landsaleshectares_tot = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionhectares',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaverageprice,_ = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionaverageprice',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass
    try:
        landsalespricetrends,_ = get_stat_data(
            ['class'], geo, session,
            table_name= 'landsalesdistributionpricetrends',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    try:
        landsalesaveragetrends,_ = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_name= 'landsalesdistributionaveragetrends',
            key_order=LAND_CLASS,
            percent=False)
    except LocationNotFound as e:
        pass

    # try:
    #     landsalesaveragepricejuly,landsalesaveragepricejuly_tot = get_stat_data(
    #         ['class'], geo, session, exclude_zero=True,
    #         table_name= 'landsalesdistributionaveragepricejuly',
    #         percent=False)
    # except LocationNotFound as e:
    #     pass
    #
    # try:
    #     landsaleslowestprice,landsaleslowestprice_tot = get_stat_data(
    #         ['class'], geo, session, exclude_zero=True,
    #         table_name= 'landsalesdistributionlowestprice',
    #         percent=False)
    # except LocationNotFound as e:
    #     pass
    #
    try:
        landsaleshighestprice,landsaleshighestprice_tot = get_stat_data(
            ['class'], geo, session, exclude_zero=True,
            table_name= 'landsalesdistributionhighestprice',
            percent=False)
    except LocationNotFound as e:
        pass

    landsales['landsalestransaction'] = landsalestransaction
    landsales['landsaleshectares'] = landsaleshectares
    landsales['landsalesaverageprice'] = landsalesaverageprice
    landsales['landsalespricetrends'] = landsalespricetrends
    landsales['landsaleshectares_tot'] = \
            { "name": "Total number of sold hectares in 12 months",
               "values": {"this": int(landsaleshectares_tot)},
            }
    landsales['landsalestransaction_tot'] = \
            { "name": "Total number of sales transactions in 12 months",
              "values": {"this": int(landsalestransaction_tot)},
            }
    landsales['is_missing'] = landsalestransaction.get('is_missing') and \
                            landsaleshectares.get('is_missing')

    return landsales



def get_landsales_colour_profiles(geo, session):
    landsalescolourhectares = landsalescolourhectarespermonth = LOCATIONNOTFOUND
    landsalescolourhectarespermonthperga = landsalescolourhectarespermonthpergu = LOCATIONNOTFOUND
    landsalescolourhectarespermonthperot = landsalescolourhectarespermonthperpr = LOCATIONNOTFOUND
    landsalescolourcostpermonth = landsalescolourtattransactionpermonth = LOCATIONNOTFOUND
    landsalescolourpricehecpermonth = landsalescolourtransaction = LOCATIONNOTFOUND
    landsalescolourtattransaction = landsalescolourtransactionpermonth = LOCATIONNOTFOUND
    landsalescolourtransactionpermonthperga = landsalescolourtransactionpermonthpergu = LOCATIONNOTFOUND
    landsalescolourtransactionpermonthperot = landsalescolourtransactionpermonthperpr = LOCATIONNOTFOUND

    landsalescolourhectares_tot = 0
    landsalescolourtransaction_tot = 0
    landsalescolourcost_tot = 0

    try:
        landsalescolourhectares, landsalescolourhectares_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummaryhectarestcolour'
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransaction, landsalescolourtransaction_tot = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture', 'Government Urban', 'Private', 'Other']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtattransaction, _ = get_stat_data (
            ['land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['all', 'colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtattransactionpermonth, _ = get_stat_data (
            ['month', 'land_breakdown'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['all', 'colour']},
            key_order={'month': MONTH, 'land_breakdown': ['All', 'Colour']}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                    'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourcostpermonth, landsalescolourcost_tot = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarycosttcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', \
                'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourpricehecpermonth, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarypricetcolour',
            key_order=('Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', \
                'Mar', 'Apr', 'May', 'Jun', 'Jul')
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthperga, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Agriculture']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthpergu, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Government Urban']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass
    try:
        landsalescolourtransactionpermonthperpr, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Private']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourhectarespermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummaryhectarestcolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    try:
        landsalescolourtransactionpermonthperot, _ = get_stat_data (
            ['month'], geo, session,
            table_name='landsalessummarytransactionscolour',
            only={'land_breakdown': ['Other']},
            key_order={ 'month': MONTH}
        )
    except LocationNotFound as e:
        pass

    return {
        'landsalescolourhectares': landsalescolourhectares,
        'landsalescolourtransaction': landsalescolourtransaction,
        'landsalescolourtattransaction': landsalescolourtattransaction,
        'landsalescolourtattransactionpermonth': landsalescolourtattransactionpermonth,
        'landsalescolourpricehecpermonth': landsalescolourpricehecpermonth,
        'landsalescolourcostpermonth': landsalescolourcostpermonth,
        'landsalescolourtransactionpermonth': landsalescolourtransactionpermonth,
        'landsalescolourhectarespermonth': landsalescolourhectarespermonth,
        'landsalescolourhectarespermonthperpr': landsalescolourhectarespermonthperpr,
        'landsalescolourhectarespermonthperga': landsalescolourhectarespermonthperga,
        'landsalescolourhectarespermonthpergu': landsalescolourhectarespermonthpergu,
        'landsalescolourhectarespermonthperot': landsalescolourhectarespermonthperot,
        'landsalescolourtransactionpermonthperpr': landsalescolourtransactionpermonthperpr,
        'landsalescolourtransactionpermonthperga': landsalescolourtransactionpermonthperga,
        'landsalescolourtransactionpermonthpergu': landsalescolourtransactionpermonthpergu,
        'landsalescolourtransactionpermonthperot': landsalescolourtransactionpermonthperot,
        'landsalescolourhectares_stat': {
                    "name": "Total hectares (ha) traded from Aug 2017/July 2018 for transaction of colour",
                    "values": {"this": landsalescolourhectares_tot},
                        },
        'landsalescolourcost_stat': {
                        "name": "Total Cost in R (million) traded from Aug 2017/July 2018 for transaction of colour",
                        "values": {"this": landsalescolourcost_tot},
                    },
        'landsalescolourtransaction_stat': {
                    "name": "Total transactions traded from Aug 2017/July 2018 for transaction of colour",
                    "values": {"this": landsalescolourtransaction_tot},
                    },
         'is_missing': landsalescolourtattransaction.get('is_missing')

        }
def districtdistribution(geo, session):
    towndistrictdistributiontransactions = all_town = LOCATIONNOTFOUND
    towndistrictdistributionhectares = towndistrictdistributionavgprice = LOCATIONNOTFOUND
    towndistrictdistributionpricetrends = LOCATIONNOTFOUND
    towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = LOCATIONNOTFOUND
    towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = LOCATIONNOTFOUND
    towndistrictdistributionhectares_tot = towndistrictdistributiontransactions_tot = 0
    dist = {}
    towns = []


    try:
        all_town, _ = get_stat_data(
            ['town_name'], geo, session,
            table_name= 'towndistrictdistributiontransactions',
            exclude_zero=True,
            percent=False)

        for keys, townname in all_town.iteritems():
            if keys != 'metadata':
                towns.append(keys)
        towndistrictdistributiontransactionsdata = towndistrictdistributionhectaresdata = {}
        towndistrictdistributionpricetrendsdata = towndistrictdistributionavgpricedata = {}

        for town in towns:
            town_code = town.replace(' ', '_').replace('-', '_').replace('/', '_').replace('(','').replace(')','').lower()
            try:
                towndistrictdistributiontransactionsdata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributiontransactions',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionhectaresdata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionhectares',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionavgpricedata[town_code], _ = get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionavgprice',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass

            try:
                towndistrictdistributionpricetrendsdata[town_code], _= get_stat_data(
                    ['class'], geo, session,
                    table_name= 'towndistrictdistributionpricetrends',
                    table_fields = ['town_name', 'class'],
                    only={'town_name': [town]},
                    exclude_zero=True,
                    percent=False)
            except LocationNotFound as e:
                pass
    except LocationNotFound as e:
        pass

    dist['towndistrictdistributiontransactionsdata'] = towndistrictdistributiontransactionsdata
    dist['towndistrictdistributionhectaresdata'] = towndistrictdistributionhectaresdata
    dist['towndistrictdistributionavgpricedata'] = towndistrictdistributionavgpricedata
    dist['towndistrictdistributionpricetrendsdata'] = towndistrictdistributionpricetrendsdata
    dist['is_missing'] = all_town.get('is_missing')
    return dist
