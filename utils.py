from collections import OrderedDict

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

internet_usage_key_order = mobile_phone_usage_key_order
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

education_of_respondent_key_order = ["No formal schooling",
                                     "Some primary schooling",
                                     "Primary school completed",
                                     "Some secondary school/high school",
                                     "Secondary school/high school completed",
                                     "Post-secondary qualifications, other than university",
                                     "Some university", "University completed", "metadata"]
employment_status_key_order = ["No (not looking)", "No (looking)",
                               "Yes, part time", "Yes, full time", "metadata"]

can_people_fight_corruption_key_order = ["Don't know","Strongly Disagree", "Neither Agree Nor Diagree", "Agree", "Strongly Agree", "metadata"]

courts_make_binding_decisions_key_order = can_people_fight_corruption_key_order

people_must_obey_the_law_key_order = ["Disagree", "Neither Agree Nor Disagree", "Agree", "Strongly Agree", "metadata"]

pay_taxes_key_order = people_must_obey_the_law_key_order


def sort_keys(key_order, d):
    try:
        return OrderedDict(
            sorted(d.items(), key=lambda i: key_order.index(i[0])))
    except ValueError:
        return d

"""
for t in `ls hurumap_ke/sql/[a-z]*.sql`
do
    echo $t
    pg_dump "postgres://hurumap:hurumap@db/hurumap_ke" \
        -O -c --if-exists -t $(basename $t .sql) \
      | egrep -v "(idle_in_transaction_session_timeout|row_security)" \
      > hurumap_ke/sql/$(basename $t .sql).sql
done

"""
