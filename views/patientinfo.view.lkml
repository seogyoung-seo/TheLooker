view: patientinfo {
  sql_table_name: `load_test.patientinfo`
    ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: confirmed {
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
    sql: ${TABLE}.confirmed_date ;;
  }

  dimension: contact_number {
    type: number
    sql: ${TABLE}.contact_number ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: deceased {
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
    sql: ${TABLE}.deceased_date ;;
  }

  dimension: disease {
    type: yesno
    sql: ${TABLE}.disease ;;
  }

  dimension: global_num {
    type: number
    sql: ${TABLE}.global_num ;;
  }

  dimension: infected_by {
    type: number
    sql: ${TABLE}.infected_by ;;
  }

  dimension: infection_case {
    type: string
    sql: ${TABLE}.infection_case ;;
  }

  dimension: infection_order {
    type: number
    sql: ${TABLE}.infection_order ;;
  }

  dimension: patient_id {
    type: number
    sql: ${TABLE}.patient_id ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}.released_date ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: symptom_onset_date {
    type: string
    sql: ${TABLE}.symptom_onset_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
