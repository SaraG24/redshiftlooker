view: event {
  sql_table_name: public.event ;;

  dimension: eventid {
    primary_key: yes
    type: number
    sql: ${TABLE}.eventid ;;
  }

  dimension: catid {
    type: number
    value_format_name: id
    sql: ${TABLE}.catid ;;
  }

  dimension: dateid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.dateid ;;
  }

  dimension: eventname {
    type: string
    sql: ${TABLE}.eventname ;;
  }

  dimension_group: starttime {
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
    sql: ${TABLE}.starttime ;;
  }

  dimension: venueid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.venueid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      eventid,
      eventname,
      date.dateid,
      venue.venuename,
      venue.venueid,
      sales.count
    ]
  }
}
