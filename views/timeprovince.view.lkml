view: timeprovince {
  sql_table_name: `load_test.timeprovince`
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

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: released {
    type: number
    sql: ${TABLE}.released ;;
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
