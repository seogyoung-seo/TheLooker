connection: "cov19_bigquery_db"

# include all the views
include: "/views/**/*.view"

test: corona_case_id_is_unique {
  explore_source: corona_case {
    column: case_id {}
    limit: 1
  }
  assert: case_id_is_unique {
    expression: NOT is_null(${corona_case.case_id});;
  }
}
