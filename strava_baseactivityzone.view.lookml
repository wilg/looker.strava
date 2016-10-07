- view: strava_baseactivityzone
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: base_activity_zone_id
    type: number
    sql: ${TABLE}.BaseActivityZone_id

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: sensor_based
    type: yesno
    sql: ${TABLE}.sensor_based

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]