view: seoulfloating {
  sql_table_name: `load_test.seoulfloating`
    ;;

  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: fp_num {
    type: number
    sql: ${TABLE}.fp_num ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
