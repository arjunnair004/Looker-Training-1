connection: "gcp_playbook_reporting"

# include all the views
include: "/views/**/*.view"

datagroup: looker_training_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_training_1_default_datagroup

explore: customer_transactions {

}

explore: customer_transactions_test {
  hidden: yes
}

explore: customer_transactions_vw {}
