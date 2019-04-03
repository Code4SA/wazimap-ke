from wazimap.data.tables import FieldTable

# Define our tables so the data API can discover them.
# TODO: Add comments so that we can quickly see categories/topics
# TODO: Rework format to a standard

FieldTable(
    ['rural or urban', 'sex', 'age in completed years'],
    year='2009'
)
FieldTable(
    ['employment activity status', 'sex'],
    universe='People aged 5 years and older',
    year='2009'
)
FieldTable(
    ['school attendance', 'sex'],
    universe='People aged 3 years and older',
    year='2009'
)
FieldTable(
    ['highest education level reached'],
    universe='People aged 3 years and older',
    year='2009'
)
FieldTable(
    ['main mode of human waste disposal'],
    universe='Households',
    year='2009'
)
FieldTable(
    id='religion',
    fields=['religion'],
    year='2009'
)

FieldTable(
    id='household_heads',
    fields=['Household_Heads'],
    year='2009'
)
FieldTable(['main source of water'], universe='Households', year='2009')
FieldTable(['main type of lighting fuel'], universe='Households', year='2009')
FieldTable(['main type of floor material'], universe='Households', year='2009')
FieldTable(['main type of wall material'], universe='Households', year='2009')
FieldTable(
    ['main type of roofing material'],
    universe='Households',
    year='2009'
)

FieldTable(['contraceptive_use'], universe='Contraceptive_use', year='2014')
FieldTable(
    ['contraceptive_modern_method'],
    universe='Contraceptive_use',
    year='2014'
)
FieldTable(
    ['contraceptive_traditional_method'],
    universe='Contraceptive_use',
    year='2014'
)
FieldTable(
    ['maternal care indicators'],
    universe='Maternal care indicators',
    year='2014'
)
FieldTable(['use of ipt'], universe='Maternal care indicators', year='2014')
FieldTable(['knowledge of hiv prevention methods', 'sex'], year='2014')
FieldTable(['household possession of itn'], universe='ITN', year='2014')
FieldTable(['household', 'users', 'itn_use'], universe='ITN', year='2014')
FieldTable(['fertility'], year='2014')
FieldTable(['vaccinations'], year='2014')
FieldTable(['weight for age'], universe='Nutrition', year='2014')
FieldTable(['height for age'], universe='Nutrition', year='2014')
FieldTable(['weight for height'], universe='Nutrition', year='2014')
FieldTable(['type', 'treatment'], year='2014')
FieldTable(['treatment of children with fever'], year='2014')
FieldTable(['protests'], year='2014')
FieldTable(['schoolfires'], year='2016')
FieldTable(['crimereport'], year='2015')
FieldTable(['typesofcrime'], year='2015')
FieldTable(['healthratios'], year='2014')
FieldTable(['voterregistration_2015'], year='2014')
FieldTable(['voterregistration_2017'], year='2017')
FieldTable(['crop_production'], year='2014')
FieldTable(['livestock_population'], year='2014')
FieldTable(['livestock_products'], year='2014')

FieldTable(['own_radio'], year=2016, dataset='Afrobarometer Survey',
           id='own_radio')
FieldTable(['own_motor_vehicle'], year=2016, dataset='Afrobarometer Survey',
           id='own_motor_vehicle')
FieldTable(['own_television'], year=2016, dataset='Afrobarometer Survey',
           id='own_television')
FieldTable(['own_mobile_phone'], year=2016, dataset='Afrobarometer Survey',
           id='own_mobile_phone')
FieldTable(['election_work_for_candidate_or_party'], year=2016,
           dataset='Afrobarometer Survey',
           id='election_work_for_candidate_or_party')
FieldTable(['election_attend_campaign_rally'], year=2016,
           dataset='Afrobarometer Survey', id='election_attend_campaign_rally')
FieldTable(['election_attend_campaign_meeting'], year=2016,
           dataset='Afrobarometer Survey',
           id='election_attend_campaign_meeting')
FieldTable(['courts_make_binding_decisions'], year=2016,
           dataset='Afrobarometer Survey', id='courts_make_binding_decisions')
FieldTable(['vote_for_which_party'], year=2016, dataset='Afrobarometer Survey',
           id='vote_for_which_party')
FieldTable(['level_of_corruption'], year=2016, dataset='Afrobarometer Survey',
           id='level_of_corruption')
FieldTable(['chinas_assistance_meets_country_needs'], year=2016,
           dataset='Afrobarometer Survey',
           id='chinas_assistance_meets_country_needs')
FieldTable(['employment_status'], year=2016, dataset='Afrobarometer Survey',
           id='employment_status')
FieldTable(['main_reason_for_not_reporting_corruption'], year=2016,
           dataset='Afrobarometer Survey',
           id='main_reason_for_not_reporting_corruption')
FieldTable(['education_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='education_of_respondent')
FieldTable(['people_must_pay_taxes'], year=2016, dataset='Afrobarometer Survey',
           id='people_must_pay_taxes')
FieldTable(['negative_image_of_china'], year=2016,
           dataset='Afrobarometer Survey', id='negative_image_of_china')
FieldTable(['most_effective_way_to_combat_corruption'], year=2016,
           dataset='Afrobarometer Survey',
           id='most_effective_way_to_combat_corruption')
FieldTable(['people_can_fight_corruption'], year=2016,
           dataset='Afrobarometer Survey', id='people_can_fight_corruption')
FieldTable(['people_must_obey_the_law'], year=2016,
           dataset='Afrobarometer Survey', id='people_must_obey_the_law')
FieldTable(['chinas_influence_on_economy'], year=2016,
           dataset='Afrobarometer Survey', id='chinas_influence_on_economy')
FieldTable(['chinas_influence_positive_or_negative'], year=2016,
           dataset='Afrobarometer Survey',
           id='chinas_influence_positive_or_negative')
FieldTable(['positive_image_of_china'], year=2016,
           dataset='Afrobarometer Survey', id='positive_image_of_china')
FieldTable(['occupation_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='occupation_of_respondent')
FieldTable(['employer_of_respondent'], year=2016,
           dataset='Afrobarometer Survey', id='employer_of_respondent')
FieldTable(['how_often_use_a_mobile_phone'], year=2016,
           dataset='Afrobarometer Survey', id='how_often_use_a_mobile_phone')
FieldTable(['how_often_use_the_internet'], year=2016,
           dataset='Afrobarometer Survey', id='how_often_use_the_internet')
FieldTable(['freeness_and_fairness_last_elections'], year=2016,
           dataset='Afrobarometer Survey',
           id='freeness_and_fairness_last_elections')
FieldTable(['extent_of_democracy'], year=2016, dataset='Afrobarometer Survey',
           id='extent_of_democracy')
FieldTable(['elections_ensure_voters_views_are_reflected'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_ensure_voters_views_are_reflected')
FieldTable(['corruption_judges_and_magistrates'], year=2016,
           dataset='Afrobarometer Survey',
           id='corruption_judges_and_magistrates')
FieldTable(['elections_to_remove_leaders_from_office'], year=2016,
           dataset='Afrobarometer Survey',
           id='elections_to_remove_leaders_from_office')
FieldTable(['corruption_tax_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_tax_officials')
FieldTable(['corruption_police'], year=2016, dataset='Afrobarometer Survey',
           id='corruption_police')
FieldTable(['corruption_local_gov_councilors'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_local_gov_councilors')
FieldTable(['corruption_gov_officials'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_gov_officials')
FieldTable(['corruption_mps'], year=2016, dataset='Afrobarometer Survey',
           id='corruption_mps')
FieldTable(['corruption_president_office'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_president_office')
FieldTable(['satisfaction_with_democracy'], year=2016,
           dataset='Afrobarometer Survey', id='satisfaction_with_democracy')
FieldTable(['corruption_business_executives'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_business_executives')
FieldTable(['corruption_religious_leaders'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_religious_leaders')
FieldTable(['corruption_traditional_leaders'], year=2016,
           dataset='Afrobarometer Survey', id='corruption_traditional_leaders')
FieldTable(['difficulty_to_obtain_public_school_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_public_school_services')
FieldTable(['voting_recent_national_election'], year=2016,
           dataset='Afrobarometer Survey', id='voting_recent_national_election')
FieldTable(['difficulty_to_obtain_medical_treatment'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_medical_treatment')
FieldTable(['pay_bribe_for_school_services'], year=2016,
           dataset='Afrobarometer Survey', id='pay_bribe_for_school_services')
FieldTable(['difficulty_to_obtain_identity_document'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_identity_document')
FieldTable(['pay_bribe_treatment_public_health'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_treatment_public_health')
FieldTable(['difficulty_to_obtain_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='difficulty_to_obtain_household_services')
FieldTable(['pay_bribe_for_document_or_permit'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_document_or_permit')
FieldTable(['pay_bribe_for_household_services'], year=2016,
           dataset='Afrobarometer Survey',
           id='pay_bribe_for_household_services')


# gender facts and figures

FieldTable(['wealth_quintile'], year=2017, dataset='Women and Men in Kenya',
           id='wealth_quintile')
FieldTable(['marital_status', 'physical_violence_perpetrator', 'sex'],
           year=2017, dataset='Women and Men in Kenya',
           id='marital_status_physical_violence_perpetrator_sex')
FieldTable(['age_group_of_violence'], year=2017,
           dataset='Women and Men in Kenya', id='age_group_of_violence')
FieldTable(['disability', 'sex'], year=2017, dataset='Women and Men in Kenya',
           id='disability_sex')
FieldTable(['year_wage_service_activities', 'sex'], year=2017,
           dataset='Women and Men in Kenya',
           id='year_wage_service_activities_sex')
FieldTable(['education_level', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='education_level_sex')
FieldTable(['sexual_violence_perpetrator', 'sex'], year=2017,
           dataset='Women and Men in Kenya',
           id='sexual_violence_perpetrator_sex')
FieldTable(['hypertension_or_diabetes', 'sex', 'agegroup'], year=2017,
           dataset='Women and Men in Kenya',
           id='hypertension_or_diabetes_sex_agegroup')
FieldTable(['sex', 'year_wage_education'], year=2017,
           dataset='Women and Men in Kenya', id='sex_year_wage_education')
FieldTable(['year_wage_agric', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_agric_sex')
FieldTable(['sex', 'age_group_people_who_smoke'], year=2017,
           dataset='Women and Men in Kenya',
           id='sex_age_group_people_who_smoke')
FieldTable(['agegroup', 'prostate_cancer'], year=2017,
           dataset='Women and Men in Kenya', id='agegroup_prostate_cancer')
FieldTable(['violence_during_preg_educ_level'], year=2017,
           dataset='Women and Men in Kenya',
           id='violence_during_preg_educ_level')
FieldTable(['age_group', 'cervical_cancer'], year=2017,
           dataset='Women and Men in Kenya', id='age_group_cervical_cancer')
FieldTable(['year_wage_wholesale', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_wholesale_sex')
FieldTable(['year_wage_manufacturing', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_manufacturing_sex')
FieldTable(['year_wage_public_admin', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_public_admin_sex')
FieldTable(['year_wage_agric', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_agric_sex')
FieldTable(['year_wage_wholesale', 'sex'], year=2017,
           dataset='Women and Men in Kenya', id='year_wage_wholesale_sex')
FieldTable(['examination', 'agegroup'], year=2017,
           dataset='Women and Men in Kenya', id='examination_agegroup')
FieldTable(['prostate_cancer', 'agegroup'], year=2017,
           dataset='Women and Men in Kenya', id='prostate_cancer_agegroup')
