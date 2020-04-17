view: offaly_weather {
  sql_table_name: `offaly.offaly_weather`
    ;;

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

  dimension: ground_min_temp {
    label: "hello"
    type: number
    sql: ${TABLE}.ground_min_temp ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.max_temp ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.min_temp ;;
  }

  dimension: rain {
    type: number
    sql: ${TABLE}.rain ;;
  }

  dimension: soil_temp {
    type: number
    sql: ${TABLE}.soil_temp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
