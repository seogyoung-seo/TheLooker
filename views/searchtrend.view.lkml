view: searchtrend {
  sql_table_name: `load_test.searchtrend`
    ;;

  dimension: cold {
    type: number
    sql: ${TABLE}.cold ;;
  }

  dimension: coronavirus {
    type: number
    sql: ${TABLE}.coronavirus ;;
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

  dimension: flu {
    type: number
    sql: ${TABLE}.flu ;;
  }

  dimension: pneumonia {
    type: number
    sql: ${TABLE}.pneumonia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
