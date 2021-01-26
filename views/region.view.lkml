view: region {
  sql_table_name: `load_test.region`
    ;;

  dimension: academy_ratio {
    type: number
    sql: ${TABLE}.academy_ratio ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: elderly_alone_ratio {
    type: number
    sql: ${TABLE}.elderly_alone_ratio ;;
  }

  dimension: elderly_population_ratio {
    type: number
    sql: ${TABLE}.elderly_population_ratio ;;
  }

  dimension: elementary_school_count {
    type: number
    sql: ${TABLE}.elementary_school_count ;;
  }

  dimension: kindergarten_count {
    type: number
    sql: ${TABLE}.kindergarten_count ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: nursing_home_count {
    type: number
    sql: ${TABLE}.nursing_home_count ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: university_count {
    type: number
    sql: ${TABLE}.university_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
