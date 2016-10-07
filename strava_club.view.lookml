- view: strava_club
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: club_id
    type: number
    sql: ${TABLE}.Club_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: profile
    sql: ${TABLE}.profile

  - dimension: profile_medium
    sql: ${TABLE}.profile_medium

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - measure: count
    type: count
    drill_fields: [id, name]