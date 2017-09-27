view: users {
  sql_table_name: public.users ;;

  dimension: userid {
    primary_key: yes
    type: number
    sql: ${TABLE}.userid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: likebroadway {
    type: yesno
    sql: ${TABLE}.likebroadway ;;
  }

  dimension: likeclassical {
    type: yesno
    sql: ${TABLE}.likeclassical ;;
  }

  dimension: likeconcerts {
    type: yesno
    sql: ${TABLE}.likeconcerts ;;
  }

  dimension: likejazz {
    type: yesno
    sql: ${TABLE}.likejazz ;;
  }

  dimension: likemusicals {
    type: yesno
    sql: ${TABLE}.likemusicals ;;
  }

  dimension: likeopera {
    type: yesno
    sql: ${TABLE}.likeopera ;;
  }

  dimension: likerock {
    type: yesno
    sql: ${TABLE}.likerock ;;
  }

  dimension: likesports {
    type: yesno
    sql: ${TABLE}.likesports ;;
  }

  dimension: liketheatre {
    type: yesno
    sql: ${TABLE}.liketheatre ;;
  }

  dimension: likevegas {
    type: yesno
    sql: ${TABLE}.likevegas ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [userid, lastname, firstname, username]
  }
}
