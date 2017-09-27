view: date {
  sql_table_name: public.date ;;

  dimension: dateid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dateid ;;
  }

  dimension_group: caldate {
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
    sql: ${TABLE}.caldate ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: holiday {
    type: yesno
    sql: ${TABLE}.holiday ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: qtr {
    type: string
    sql: ${TABLE}.qtr ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [dateid, event.count, sales.count]
  }
}
