- view: strava_activitycomment
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_comment_id
    type: int
    sql: ${TABLE}.ActivityComment_id

  - dimension: activity_id
    type: int
    sql: ${TABLE}.activity_id

  - dimension: athlete_id
    type: int
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

