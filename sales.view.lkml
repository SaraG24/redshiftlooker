view: sales {
  sql_table_name: public.sales ;;

  dimension: salesid {
    primary_key: yes
    type: number
    sql: ${TABLE}.salesid ;;
  }

  dimension: buyerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.buyerid ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: dateid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.dateid ;;
  }

  dimension: eventid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.eventid ;;
  }

  dimension: listid {
    type: number
    value_format_name: id
    sql: ${TABLE}.listid ;;
  }

  dimension: pricepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pricepaid ;;
  }

  dimension: qtysold {
    type: number
    sql: ${TABLE}.qtysold ;;
  }

  dimension_group: saletime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.saletime ;;
  }

  dimension: sellerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sellerid ;;
  }

  measure: count {
    type: count
    drill_fields: [salesid, event.eventname, event.eventid, date.dateid]
  }
}
