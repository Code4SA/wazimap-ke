from wazimap.data.tables import FieldTable, SimpleTable

FieldTable(['private land ownership in hectares per category'],
 dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of private land owners by category'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by race'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of land owners per race'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by gender'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['number of land owners per gender'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['land ownership in hectares by nationality'],
dataset='Land Audit Report',  universe='Private Land', year='2017')
FieldTable(['number of land owners per nationality'],
dataset='Land Audit Report', universe='Private Land', year='2017')
FieldTable(['erven land ownership in hectares by race'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per race'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['erven land ownership in hectares by gender'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per gender'],
dataset='Land Audit Report', universe='Erven Land', year='2017')
FieldTable(['erven land ownership in hectares by nationality'],
dataset='Land Audit Report',  universe='Erven Land', year='2017')
FieldTable(['number of erven land owners per nationality'],
dataset='Land Audit Report',  universe='Erven Land', year='2017')
FieldTable(['sectional title ownership in hectares per category'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by category'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares per race'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by race'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares per gender'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by gender'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['sectional title ownership in hectares nationality'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')
FieldTable(['number of sectional title owners by nationality'],
dataset='Land Audit Report', universe='Sectional Title', year='2017')

#Redistribution Data
FieldTable(['year'], id='hectarestransferredperprovincebyyear',universe='Land Restitution',
    value_type='Float', dataset='Land Redistribution and Restitution Statistic', year='2016')

FieldTable(['redistributed land use breakdown'], universe='Land Redistribution',
dataset='Land Redistribution and Restitution Statistic', year='2018')

FieldTable(['year', 'outcome of redistribution programme'], id='redistributionprogrammeoutcomebyyear',
universe='Land Redistribution', year='2018', dataset='Land Redistribution and Restitution Statistic')

FieldTable(['year', 'party_benefited'], id='party_benefited', dataset='Land Redistribution and Restitution Statistic',
universe='Land Redistribution', year='2018')

FieldTable(['restitutionoutcomestatistic',  'year'], id='restitutionoutcomestatistic',
universe='Land Restitution', year='2018', value_type='Float', has_total=False,
dataset='Land Redistribution and Restitution Statistic')

FieldTable(['redistributedland'],id='redistributedlandinhectares', universe='Land Redistribution',
value_type='Float', dataset='Land Redistribution and Restitution Statistic',year='2016')

FieldTable(['class_distribution_transaction'], id='landsalesdistributiontransaction', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float')

FieldTable(['class_distribution_lowest_price'], id='landsalesdistributionlowestprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_distribution_highest_price'], id='landsalesdistributionhighestprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_distribution_average_price'], id='landsalesdistributionaverageprice', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_price_trends'], id='landsalesdistributionpricetrends', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_average_trends'], id='landsalesdistributionaveragetrends', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_average_price_july'], id='landsalesdistributionaveragepricejuly', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)
FieldTable(['class_distribution_hectares'], id='landsalesdistributionhectares', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', has_total=False)

FieldTable(['land_breakdown_hc', 'month_hc'], id='landsalessummaryhectarestcolour', dataset='Land Sales',
  universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown_cc', 'month_cc'], id='landsalessummarycosttcolour', dataset='Land Sales',
  universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown_pc', 'month_pc'], id='landsalessummarypricetcolour', dataset='Land Sales',
   universe='Agricultural Land Sales', year='2016')

FieldTable(['land_breakdown_tc', 'month_tc'], id='landsalessummarytransactionscolour', dataset='Land Sales',
   universe='Agricultural Land Sales', year='2016')

FieldTable(['town_name_dt','class_dt'], id='towndistrictdistributiontransactions', dataset='Land Sales',
 universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name_pt', 'class_pt'], id='towndistrictdistributionpricetrends', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name_dh','class_dh'], id='towndistrictdistributionhectares', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['town_name_ap', 'class_ap'], id='towndistrictdistributionavgprice', dataset='Land Sales',
universe='Agricultural Land Sales', year='2016', value_type='Float', has_total=False)

FieldTable(['population group'], id='populationgroup_2016', year='2016', dataset='Census')

FieldTable(['land_ownership_by_gender'], id='privatelanddistributionbygender', dataset='Land Audit Report', year=2013)
FieldTable(['land_use'], id='landuse', dataset='Land Audit Report', year=2013)
FieldTable(['land_user'], id='landuser', dataset='Land Audit Report', year=2013)
FieldTable(['private_vs_state_ownership'], id='landownership', dataset='Land Audit Report', year=2013)

FieldTable(['access_to_information'], universe='Land in South Africa',
           year='2017', dataset='Afrobarometer Survey')

FieldTable(['allow_farmers_retain_land_ownership'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

FieldTable(['maintain_willing_buyer_willing_seller_policy'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

FieldTable(['land_acquisation_challenges'], universe='Land in South Africa',
           year='2017', dataset='Afrobarometer Survey')

FieldTable(['land_to_prioritise_for_redistribution'],
           universe='Land in South Africa', year='2017',
           dataset='Afrobarometer Survey')

FieldTable(['workers_hostel_population_group'], id='workers_hostel_population_group'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_population_year'], id='workers_hostel_population'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_age_group'], id='workers_hostel_age_group'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_access_electricity'], id='workers_hostel_access_electricity'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_gender'], id='workers_hostel_gender'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_geography'], id='workers_hostel_geography'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_handwashing_facility'], id='workers_hostel_handwashing_facility'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_living_condition'], id='workers_hostel_living_condition'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_ownership'], id='workers_hostel_ownership'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_rent'], id='workers_hostel_rent'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_residential_ownership'], id='workers_hostel_residential_ownership'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_ss_dwelling'], id='workers_hostel_ss_dwelling'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_toilet_facility'], id='workers_hostel_toilet_facility'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')

FieldTable(['workers_hostel_water_source'], id='workers_hostel_water_source'
           universe='Workers Hostel', year='2018',
           dataset='Workers Hostel Data')
# FieldTable(['women_have_equal_right_to_land'], universe='Land in South Africa',
#            year='2017', dataset='Afrobarometer Survey')
#
# FieldTable(['women_men_equal_chance_own_land'], universe='Land in South Africa',
#            year='2017', dataset='Afrobarometer Survey')
