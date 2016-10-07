- view: strava_heartrateactivityzone
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: custom_zones
    type: yesno
    sql: ${TABLE}.custom_zones

  - dimension: heartrate_activity_zone_id
    type: number
    sql: ${TABLE}.HeartrateActivityZone_id

  - dimension: max
    type: number
    sql: ${TABLE}.max

  - dimension: points
    type: number
    sql: ${TABLE}.points

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

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