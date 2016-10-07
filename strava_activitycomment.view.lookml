- view: strava_activitycomment
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension: athlete_id
    type: number
    sql: ${TABLE}.athlete_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: text
    sql: ${TABLE}.text

  - measure: count
    type: count
    drill_fields: [id]