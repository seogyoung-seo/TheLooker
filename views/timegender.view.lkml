view: timegender {
  sql_table_name: `load_test.timegender`
    ;;

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
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

  dimension: deceased {
    type: number
    sql: ${TABLE}.deceased ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
