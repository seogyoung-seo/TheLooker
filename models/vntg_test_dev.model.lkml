connection: "cov19_bigquery_db"

# include all the views
include: "/views/**/*.view"

datagroup: vntg_test_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vntg_test_dev_default_datagroup

explore: corona_case {}

explore: patient_route {}

explore: patientinfo {}

explore: policy {}

explore: region {}

explore: searchtrend {}

explore: seoulfloating {}

explore: time {}

explore: timeage {}

explore: timegender {}

explore: timeprovince {}

explore: weather {}
