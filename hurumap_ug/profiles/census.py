import logging
from collections import OrderedDict

from django.conf import settings
from wazimap.data.utils import (LocationNotFound, get_session, get_stat_data,
                                merge_dicts)

__author__ = 'kenneth'

log = logging.getLogger(__name__)

SECTIONS = settings.HURUMAP.get('topics', {})

LOCATIONNOTFOUND = {'is_missing': True,
                    'name': 'No Data Found',
                    'numerators': {'this': 0},
                    'values': {'this': 0}
                    }


def get_demographics_profile(geo, session):
    geo.version = str(geo.version)
    # sex
    try:
        sex_dist_data, total_pop = get_stat_data(
            'sex', geo, session,
            table_fields=['sex'])

    except LocationNotFound:
        sex_dist_data = LOCATIONNOTFOUND
        total_pop = 0

    # urban/rural by sex
    total_urbanised = 0
    try:
        urban_dist_data, _ = get_stat_data(
            ['rural or urban'], geo, session,
            table_fields=['rural or urban'])

        for data in urban_dist_data['Urban'].itervalues():
            if 'numerators' in data:
                total_urbanised += data['numerators']['this']

    except LocationNotFound:
        urban_dist_data = LOCATIONNOTFOUND

    final_data = {
        'sex_ratio': sex_dist_data,
        'urban_distribution': urban_dist_data,
        'urbanised': {
            'name': 'In urban areas',
            'numerators': {'this': total_urbanised},

        },
        'total_population': {
            "name": "People",
            "values": {"this": total_pop}
        }}
    try:
        final_data['urbanised']['values'] = {
            'this': round(total_urbanised / total_pop * 100, 2)}
    except ZeroDivisionError:
        final_data['urbanised']['values'] = {'this': 0}
    return final_data


def get_households_profile(geo, session):
    try:
        permanency, _ = get_stat_data('household percentage by permanency', geo,
                                      session,
                                      table_fields=[
                                          'household percentage by permanency'])
    except LocationNotFound:
        permanency = LOCATIONNOTFOUND

    try:
        light_source, total_households = get_stat_data(
            'household distribution by light source', geo,
            session, table_fields=['household distribution by light source'])
        energy_source, _ = get_stat_data(
            'household distribution by energy source', geo, session,
            table_fields=['household distribution by energy source'])
    except LocationNotFound:
        total_households = 0
        light_source = LOCATIONNOTFOUND
        energy_source, _ = LOCATIONNOTFOUND, 0

    final_data = {
        'percentage_by_permanency': permanency,
        'light_source_distribution': light_source,
        'energy_source_distribution': energy_source,
        'total_households': {
            "name": "Households",
            "values": {"this": total_households}
        }
    }
    return final_data


def get_elections2016_profile(geo, session):
    try:
        candidate, total_votes = get_stat_data('presidential candidate', geo,
                                               session,
                                               table_fields=[
                                                   'presidential candidate'],
                                               order_by="-total")

    except LocationNotFound:
        candidate, total_votes = LOCATIONNOTFOUND, 0

    total_besigye = 0
    for data, value in candidate.get('Kizza besigye', {}).iteritems():
        if data == 'numerators':
            total_besigye += value['this']
    total_museveni = 0
    for data, value in candidate.get('Yoweri museveni', {}).iteritems():
        if data == 'numerators':
            total_museveni += value['this']

    final_data = {
        'candidate_distribution': candidate,
        'museveni_votes': {
            'name': 'Museveni Votes',
            'numerators': {'this': total_museveni}
        },
        'besigye_votes': {
            'name': 'Besigye Votes',
            'numerators': {'this': total_besigye},

        },

        'total_votes': {
            "name": "Votes",
            "values": {"this": total_votes}
        }
    }
    try:
        final_data['besigye_votes']['values'] = {
            'this': round(total_besigye / total_votes * 100, 2)}
        final_data['museveni_votes']['values'] = {
            'this': round(total_museveni / total_votes * 100, 2)
        }
    except ZeroDivisionError:
        final_data['besigye_votes']['values'] = {'this': 0}
        final_data['museveni_votes']['values'] = {'this': 0}
    return final_data


def get_disabilities_profile(geo, session):
    try:
        disabled_or_not, total_ = get_stat_data('disabled or not', geo, session,
                                                table_fields=[
                                                    'disabled or not'])
        disability, _ = get_stat_data('disability', geo, session,
                                      table_fields=['disability'])
    except LocationNotFound:
        disabled_or_not, total_ = LOCATIONNOTFOUND, 0
        disability = LOCATIONNOTFOUND

    total_disabled = 0
    for data, value in disabled_or_not.get('With disability', {}).iteritems():
        if data == 'numerators':
            total_disabled += value['this']

    final_data = {
        'disabled_or_not_distribution': disabled_or_not,
        'disability': disability,
        'total_disabled': {
            'name': 'Disabled',
            'numerators': {'this': total_disabled},

        },

        'total_': {
            "name": "Population",
            "values": {"this": total_}
        }
    }
    try:
        final_data['total_disabled']['values'] = {
            'this': round(total_disabled / total_ * 100, 2)}
    except ZeroDivisionError:
        final_data['total_disabled']['values'] = {'this': 0}
    return final_data


PROFILE_SECTIONS = ['demographics', 'households', 'elections2016',
                    'disabilities']


def get_afrobarometer_profile(geo, session):
    own_radio = LOCATIONNOTFOUND
    own_motor_vehicle = LOCATIONNOTFOUND
    own_television = LOCATIONNOTFOUND
    own_mobile_phone = LOCATIONNOTFOUND
    last_national_election_work_for_a_candidate_or_party = LOCATIONNOTFOUND
    last_national_election_attend_a_campaign_rally = LOCATIONNOTFOUND
    last_national_election_attend_a_campaign_meeting = LOCATIONNOTFOUND
    courts_make_binding_decisions = LOCATIONNOTFOUND
    vote_for_which_party = LOCATIONNOTFOUND
    level_of_corruption = LOCATIONNOTFOUND
    chinas_assistance_does_a_good_job_at_meeting_countrys_needs = LOCATIONNOTFOUND
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
    freeness_and_fairness_of_the_last_national_election = LOCATIONNOTFOUND
    extent_of_democracy = LOCATIONNOTFOUND
    elections_ensure_voters_views_are_reflected = LOCATIONNOTFOUND
    corruption_judges_and_magistrates = LOCATIONNOTFOUND
    elections_enable_voters_to_remove_leaders_from_office = LOCATIONNOTFOUND
    corruption_tax_officials = LOCATIONNOTFOUND
    corruption_police = LOCATIONNOTFOUND
    corruption_local_government_councilors = LOCATIONNOTFOUND
    corruption_government_officials = LOCATIONNOTFOUND
    corruption_members_of_parliament = LOCATIONNOTFOUND
    corruption_office_of_the_presidency = LOCATIONNOTFOUND
    satisfaction_with_democracy = LOCATIONNOTFOUND
    corruption_business_executives = LOCATIONNOTFOUND
    corruption_religious_leaders = LOCATIONNOTFOUND
    corruption_traditional_leaders = LOCATIONNOTFOUND
    difficulty_to_obtain_public_school_services = LOCATIONNOTFOUND
    voting_in_the_most_recent_national_election = LOCATIONNOTFOUND
    difficulty_to_obtain_medical_treatment = LOCATIONNOTFOUND
    pay_bribe_for_school_services = LOCATIONNOTFOUND
    difficulty_to_obtain_identity_document = LOCATIONNOTFOUND
    pay_bribe_for_treatment_at_public_clinic_or_hospital = LOCATIONNOTFOUND
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
        last_national_election_work_for_a_candidate_or_party, _ = get_stat_data(
            'last_national_election_work_for_a_candidate_or_party', geo,
            session, table_fields=[
                'last_national_election_work_for_a_candidate_or_party'])
    except LocationNotFound:
        pass

    try:
        last_national_election_attend_a_campaign_rally, _ = get_stat_data(
            'last_national_election_attend_a_campaign_rally', geo, session,
            table_fields=['last_national_election_attend_a_campaign_rally'])
    except LocationNotFound:
        pass

    try:
        last_national_election_attend_a_campaign_meeting, _ = get_stat_data(
            'last_national_election_attend_a_campaign_meeting', geo, session,
            table_fields=['last_national_election_attend_a_campaign_meeting'])
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
        chinas_assistance_does_a_good_job_at_meeting_countrys_needs, _ = get_stat_data(
            'chinas_assistance_does_a_good_job_at_meeting_countrys_needs', geo,
            session, table_fields=[
                'chinas_assistance_does_a_good_job_at_meeting_countrys_needs'])
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
        freeness_and_fairness_of_the_last_national_election, _ = get_stat_data(
            'freeness_and_fairness_of_the_last_national_election', geo, session,
            table_fields=[
                'freeness_and_fairness_of_the_last_national_election'])
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
        elections_enable_voters_to_remove_leaders_from_office, _ = get_stat_data(
            'elections_enable_voters_to_remove_leaders_from_office', geo,
            session, table_fields=[
                'elections_enable_voters_to_remove_leaders_from_office'])
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
        corruption_local_government_councilors, _ = get_stat_data(
            'corruption_local_government_councilors', geo, session,
            table_fields=['corruption_local_government_councilors'])
    except LocationNotFound:
        pass

    try:
        corruption_government_officials, _ = get_stat_data(
            'corruption_government_officials', geo, session,
            table_fields=['corruption_government_officials'])
    except LocationNotFound:
        pass

    try:
        corruption_members_of_parliament, _ = get_stat_data(
            'corruption_members_of_parliament', geo, session,
            table_fields=['corruption_members_of_parliament'])
    except LocationNotFound:
        pass

    try:
        corruption_office_of_the_presidency, _ = get_stat_data(
            'corruption_office_of_the_presidency', geo, session,
            table_fields=['corruption_office_of_the_presidency'])
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
        voting_in_the_most_recent_national_election, _ = get_stat_data(
            'voting_in_the_most_recent_national_election', geo, session,
            table_fields=['voting_in_the_most_recent_national_election'])
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
        pay_bribe_for_treatment_at_public_clinic_or_hospital, _ = get_stat_data(
            'pay_bribe_for_treatment_at_public_clinic_or_hospital', geo,
            session, table_fields=[
                'pay_bribe_for_treatment_at_public_clinic_or_hospital'])
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
        'is_missing') and last_national_election_work_for_a_candidate_or_party.get(
        'is_missing') and last_national_election_attend_a_campaign_rally.get(
        'is_missing') and last_national_election_attend_a_campaign_meeting.get(
        'is_missing') and courts_make_binding_decisions.get(
        'is_missing') and vote_for_which_party.get(
        'is_missing') and level_of_corruption.get(
        'is_missing') and chinas_assistance_does_a_good_job_at_meeting_countrys_needs.get(
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
        'is_missing') and freeness_and_fairness_of_the_last_national_election.get(
        'is_missing') and extent_of_democracy.get(
        'is_missing') and elections_ensure_voters_views_are_reflected.get(
        'is_missing') and corruption_judges_and_magistrates.get(
        'is_missing') and elections_enable_voters_to_remove_leaders_from_office.get(
        'is_missing') and corruption_tax_officials.get(
        'is_missing') and corruption_police.get(
        'is_missing') and corruption_local_government_councilors.get(
        'is_missing') and corruption_government_officials.get(
        'is_missing') and corruption_members_of_parliament.get(
        'is_missing') and corruption_office_of_the_presidency.get(
        'is_missing') and satisfaction_with_democracy.get(
        'is_missing') and corruption_business_executives.get(
        'is_missing') and corruption_religious_leaders.get(
        'is_missing') and corruption_traditional_leaders.get(
        'is_missing') and difficulty_to_obtain_public_school_services.get(
        'is_missing') and voting_in_the_most_recent_national_election.get(
        'is_missing') and difficulty_to_obtain_medical_treatment.get(
        'is_missing') and pay_bribe_for_school_services.get(
        'is_missing') and difficulty_to_obtain_identity_document.get(
        'is_missing') and pay_bribe_for_treatment_at_public_clinic_or_hospital.get(
        'is_missing') and difficulty_to_obtain_household_services.get(
        'is_missing') and pay_bribe_for_document_or_permit.get(
        'is_missing') and pay_bribe_for_household_services.get('is_missing')

    if not is_missing:
        free_and_fair_key_order = ["Don't know", "Not free and fair",
                                   "Free and fair, with major problems",
                                   "Free and fair, but with minor problems",
                                   "Completely free and fair",
                                   "Do not understand the question",
                                   "metadata"]

        elections_key_order = ["Don't know", "Not at all well", "Not very well",
                               "Well", "Very well", "metadata"]

        chinas_influence_key_order = ["Don't know / Haven't heard enough",
                                      "Very negative", "Somewhat negative",
                                      "Neither positive nor negative",
                                      "Somewhat positive", "Very positive",
                                      "metadata"]

        china_influence_on_economy_key_order = ["Don't know / Haven't heard enough",
                                                "None", "Some", "A little", "A lot",
                                                "metadata"]

        mobile_phone_usage_key_order = ["Don't know", "Never",
                                        "A few times a month", "A few times a week",
                                        "Less than once a month", "Everyday",
                                        "metadata"]

        internet_usage_key_order = mobile_phone_usage_key_order + ["Missing"]
        corruption_amongst_key_order = ["Don't know/ Haven't heard enough", "None",
                                        "Some of them", "Most of them",
                                        "All of them", "metadata"]
        corruption_level_key_order = ["Don't know", "Decreased a lot",
                                      "Decreased somewhat", "Stayed the same",
                                      "Increased somewhat", "Increased a lot",
                                      "metadata"]
        pay_bribes_key_order = ["Don't know", "No contact", "Never",
                                "Once or Twice", "A Few times", "Often", "metadata"]
        difficulty_key_order = ["Don't Know", "No contact", "Very Easy", "Easy",
                                "Difficult", "Very Difficult", "metadata"]

        corruption_business_executives = sort_keys(corruption_amongst_key_order,
                                                   corruption_business_executives)
        corruption_government_officials = sort_keys(
            corruption_amongst_key_order + ["Missing"],
            corruption_government_officials)
        corruption_judges_and_magistrates = sort_keys(corruption_amongst_key_order,
                                                      corruption_judges_and_magistrates)
        corruption_local_government_councilors = sort_keys(
            corruption_amongst_key_order, corruption_local_government_councilors)
        corruption_members_of_parliament = sort_keys(corruption_amongst_key_order,
                                                     corruption_members_of_parliament)
        corruption_office_of_the_presidency = sort_keys(
            corruption_amongst_key_order, corruption_office_of_the_presidency)
        corruption_police = sort_keys(corruption_amongst_key_order,
                                      corruption_police)
        corruption_religious_leaders = sort_keys(corruption_amongst_key_order,
                                                 corruption_religious_leaders)
        corruption_traditional_leaders = sort_keys(corruption_amongst_key_order,
                                                   corruption_traditional_leaders)
        corruption_tax_officials = sort_keys(corruption_amongst_key_order,
                                             corruption_tax_officials)
        level_of_corruption = sort_keys(corruption_level_key_order,
                                        level_of_corruption)
        pay_bribe_for_document_or_permit = sort_keys(pay_bribes_key_order,
                                                     pay_bribe_for_document_or_permit)
        pay_bribe_for_household_services = sort_keys(pay_bribes_key_order,
                                                     pay_bribe_for_household_services)
        pay_bribe_for_school_services = sort_keys(pay_bribes_key_order,
                                                  pay_bribe_for_school_services)
        pay_bribe_for_treatment_at_public_clinic_or_hospital = sort_keys(
            pay_bribes_key_order,
            pay_bribe_for_treatment_at_public_clinic_or_hospital)

        freeness_and_fairness_of_the_last_national_election = sort_keys(
            free_and_fair_key_order,
            freeness_and_fairness_of_the_last_national_election)
        elections_ensure_voters_views_are_reflected = sort_keys(elections_key_order,
                                                                elections_ensure_voters_views_are_reflected)
        elections_enable_voters_to_remove_leaders_from_office = sort_keys(
            elections_key_order,
            elections_enable_voters_to_remove_leaders_from_office)
        chinas_influence_positive_or_negative = sort_keys(
            chinas_influence_key_order, chinas_influence_positive_or_negative)
        chinas_influence_on_economy = sort_keys(
            china_influence_on_economy_key_order, chinas_influence_on_economy)
        how_often_use_a_mobile_phone = sort_keys(mobile_phone_usage_key_order,
                                                 how_often_use_a_mobile_phone)
        how_often_use_the_internet = sort_keys(internet_usage_key_order,
                                               how_often_use_the_internet)

        difficulty_to_obtain_household_services = sort_keys(difficulty_key_order,
                                                            difficulty_to_obtain_household_services)
        difficulty_to_obtain_identity_document = sort_keys(difficulty_key_order,
                                                           difficulty_to_obtain_identity_document)
        difficulty_to_obtain_medical_treatment = sort_keys(difficulty_key_order,
                                                           difficulty_to_obtain_medical_treatment)
        difficulty_to_obtain_public_school_services = sort_keys(
            difficulty_key_order, difficulty_to_obtain_public_school_services)
        people_must_obey_the_law = sort_keys(
            ["Don't Know", "Strongly Disagree", "Disagree",
             "Neither Agree Nor Disagree", "Agree", "Strongly Agree", "metadata"],
            people_must_obey_the_law)
        extent_of_democracy = sort_keys(
            ["Don't know", "Not a democracy", "A democracy, with major problems",
             "A democracy, but with minor problems",
             "Do not understand question / democracy", "A full democracy",
             "metadata"], extent_of_democracy)
        satisfaction_with_democracy = sort_keys(
            ["Do not know", "The country is not a democracy",
             "Not at all satisfied", "Not very satisfied", "Fairly satisfied",
             "Very satisfied", "metadata"], satisfaction_with_democracy)

    final_data = {
        'is_missing': is_missing,
        'own_radio': own_radio,
        'own_motor_vehicle': own_motor_vehicle,
        'own_television': own_television,
        'own_mobile_phone': own_mobile_phone,
        'last_national_election_work_for_a_candidate_or_party': last_national_election_work_for_a_candidate_or_party,
        'last_national_election_attend_a_campaign_rally': last_national_election_attend_a_campaign_rally,
        'last_national_election_attend_a_campaign_meeting': last_national_election_attend_a_campaign_meeting,
        'courts_make_binding_decisions': courts_make_binding_decisions,
        'vote_for_which_party': vote_for_which_party,
        'level_of_corruption': level_of_corruption,
        'chinas_assistance_does_a_good_job_at_meeting_countrys_needs': chinas_assistance_does_a_good_job_at_meeting_countrys_needs,
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
        'freeness_and_fairness_of_the_last_national_election': freeness_and_fairness_of_the_last_national_election,
        'extent_of_democracy': extent_of_democracy,
        'elections_ensure_voters_views_are_reflected': elections_ensure_voters_views_are_reflected,
        'corruption_judges_and_magistrates': corruption_judges_and_magistrates,
        'elections_enable_voters_to_remove_leaders_from_office': elections_enable_voters_to_remove_leaders_from_office,
        'corruption_tax_officials': corruption_tax_officials,
        'corruption_police': corruption_police,
        'corruption_local_government_councilors': corruption_local_government_councilors,
        'corruption_government_officials': corruption_government_officials,
        'corruption_members_of_parliament': corruption_members_of_parliament,
        'corruption_office_of_the_presidency': corruption_office_of_the_presidency,
        'satisfaction_with_democracy': satisfaction_with_democracy,
        'corruption_business_executives': corruption_business_executives,
        'corruption_religious_leaders': corruption_religious_leaders,
        'corruption_traditional_leaders': corruption_traditional_leaders,
        'difficulty_to_obtain_public_school_services': difficulty_to_obtain_public_school_services,
        'voting_in_the_most_recent_national_election': voting_in_the_most_recent_national_election,
        'difficulty_to_obtain_medical_treatment': difficulty_to_obtain_medical_treatment,
        'pay_bribe_for_school_services': pay_bribe_for_school_services,
        'difficulty_to_obtain_identity_document': difficulty_to_obtain_identity_document,
        'pay_bribe_for_treatment_at_public_clinic_or_hospital': pay_bribe_for_treatment_at_public_clinic_or_hospital,
        'difficulty_to_obtain_household_services': difficulty_to_obtain_household_services,
        'pay_bribe_for_document_or_permit': pay_bribe_for_document_or_permit,
        'pay_bribe_for_household_services': pay_bribe_for_household_services,
    }

    return final_data


def sort_keys(key_order, d):
    return OrderedDict(sorted(d.items(), key=lambda i: key_order.index(i[0])))


def get_profile(geo, profile_name, request):
    session = get_session()
    data = {}

    try:
        data['demographics'] = get_demographics_profile(geo, session)
        data['households'] = get_households_profile(geo, session)
        data['disability'] = get_disabilities_profile(geo, session)
        data['elections2016'] = get_elections2016_profile(geo, session)
        data['afrobarometer'] = get_afrobarometer_profile(geo, session)

        return data

    finally:
        session.close()
