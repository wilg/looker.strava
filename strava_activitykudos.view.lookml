- view: strava_activitykudos
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: approve_followers
    type: yesno
    sql: ${TABLE}.approve_followers

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: follower
    sql: ${TABLE}.follower

  - dimension: friend
    sql: ${TABLE}.friend

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: premium
    type: yesno
    sql: ${TABLE}.premium

  - dimension: profile
    sql: ${TABLE}.profile

  - dimension: profile_medium
    sql: ${TABLE}.profile_medium

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: sex
    sql: ${TABLE}.sex

  - dimension: state
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, firstname, lastname]