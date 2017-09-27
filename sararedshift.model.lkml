connection: "sararedshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: category {}

explore: date {}

explore: event {
  join: date {
    type: left_outer
    sql_on: ${event.dateid} = ${date.dateid} ;;
    relationship: many_to_one
  }

  join: venue {
    type: left_outer
    sql_on: ${event.venueid} = ${venue.venueid} ;;
    relationship: many_to_one
  }
}

explore: sales {
  join: event {
    type: left_outer
    sql_on: ${sales.eventid} = ${event.eventid} ;;
    relationship: many_to_one
  }

  join: date {
    type: left_outer
    sql_on: ${sales.dateid} = ${date.dateid} ;;
    relationship: many_to_one
  }

  join: venue {
    type: left_outer
    sql_on: ${event.venueid} = ${venue.venueid} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: venue {}
