connection: "cov19_bigquery_db"

# include all the views
include: "/views/**/*.view"

test: corona_case_id_is_unique {
  explore_source: corona_case {

  }
}
