view: corona_case {
  sql_table_name: `load_test.corona_case`
    ;;

  dimension: case_id {
    type: number
    sql: ${TABLE}.case_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  dimension: group {
    type: yesno
    sql: ${TABLE}.`group` ;;
  }

  dimension: infection_case {
    type: string
    sql: ${TABLE}.infection_case ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  measure: count {
    type: count
    drill_fields: [city]
  }

}
