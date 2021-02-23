view: weather {
  sql_table_name: `load_test.weather`
    ;;

  dimension: avg_relative_humidity {
    type: number
    sql: ${TABLE}.avg_relative_humidity ;;
  }

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
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

  dimension: max_temp {
    type: number
    sql: ${TABLE}.max_temp ;;
  }

  dimension: max_wind_speed {
    type: number
    sql: ${TABLE}.max_wind_speed ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.min_temp ;;
  }

  dimension: most_wind_direction {
    type: number
    sql: ${TABLE}.most_wind_direction ;;
  }

  dimension: precipitation {
    type: number
    sql: ${TABLE}.precipitation ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: test_number {
    type: number
    sql: 1;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
