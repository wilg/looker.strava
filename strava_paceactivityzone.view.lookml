- view: strava_paceactivityzone
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: pace_activity_zone_id
    type: int
    sql: ${TABLE}.PaceActivityZone_id

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: sample_race_distance
    type: number
    sql: ${TABLE}.sample_race_distance

  - dimension: sample_race_time
    type: number
    sql: ${TABLE}.sample_race_time

  - dimension: score
    type: number
    sql: ${TABLE}.score

  - dimension: sensor_based
    type: yesno
    sql: ${TABLE}.sensor_based

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

