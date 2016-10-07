- view: strava_activityphoto
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_id
    type: number
    sql: ${TABLE}.activity_id

  - dimension: activity_photo_id
    type: number
    sql: ${TABLE}.ActivityPhoto_id

  - dimension: caption
    sql: ${TABLE}.caption

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: ref
    sql: ${TABLE}.ref

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: type
    sql: ${TABLE}.type

  - dimension: uid
    sql: ${TABLE}.uid

  - dimension_group: uploaded
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.uploaded_at

  - measure: count
    type: count
    drill_fields: [id]