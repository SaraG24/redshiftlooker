view: category {
  sql_table_name: public.category ;;

  dimension: catdesc {
    type: string
    sql: ${TABLE}.catdesc ;;
  }

  dimension: catgroup {
    type: string
    sql: ${TABLE}.catgroup ;;
  }

  dimension: catid {
    type: number
    value_format_name: id
    sql: ${TABLE}.catid ;;
  }

  dimension: catname {
    type: string
    sql: ${TABLE}.catname ;;
  }

  measure: count {
    type: count
    drill_fields: [catname]
  }
}
