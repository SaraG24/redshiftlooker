view: venue {
  sql_table_name: public.venue ;;

  dimension: venueid {
    primary_key: yes
    type: number
    sql: ${TABLE}.venueid ;;
  }

  dimension: venuecity {
    type: string
    sql: ${TABLE}.venuecity ;;
  }

  dimension: venuename {
    type: string
    sql: ${TABLE}.venuename ;;
  }

  dimension: venueseats {
    type: number
    sql: ${TABLE}.venueseats ;;
  }

  dimension: venuestate {
    type: string
    sql: ${TABLE}.venuestate ;;
  }

  measure: count {
    type: count
    drill_fields: [venueid, venuename, event.count]
  }
}
