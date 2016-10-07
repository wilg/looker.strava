- view: strava_poweractivityzone
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: athlete_weight
    type: number
    sql: ${TABLE}.athlete_weight

  - dimension: bike_weight
    type: number
    sql: ${TABLE}.bike_weight

  - dimension: power_activity_zone_id
    type: number
    sql: ${TABLE}.PowerActivityZone_id

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