- view: strava_activitylap
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_id
    type: int
    sql: ${TABLE}.activity_id

  - dimension: activity_lap_id
    type: int
    sql: ${TABLE}.ActivityLap_id

  - dimension: athlete_id
    type: int
    sql: ${TABLE}.athlete_id

  - dimension: average_cadence
    type: number
    sql: ${TABLE}.average_cadence

  - dimension: average_heartrate
    type: number
    sql: ${TABLE}.average_heartrate

  - dimension: average_speed
    type: number
    sql: ${TABLE}.average_speed

  - dimension: average_watts
    type: number
    sql: ${TABLE}.average_watts

  - dimension: device_watts
    type: yesno
    sql: ${TABLE}.device_watts

  - dimension: distance
    type: number
    sql: ${TABLE}.distance

  - dimension: elapsed_time
    type: number
    sql: ${TABLE}.elapsed_time

  - dimension: end_index
    type: number
    sql: ${TABLE}.end_index

  - dimension: lap_index
    type: number
    sql: ${TABLE}.lap_index

  - dimension: max_heartrate
    type: number
    sql: ${TABLE}.max_heartrate

  - dimension: max_speed
    type: number
    sql: ${TABLE}.max_speed

  - dimension: moving_time
    type: number
    sql: ${TABLE}.moving_time

  - dimension: name
    sql: ${TABLE}.name

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

  - dimension_group: start_date_local
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date_local

  - dimension: start_index
    type: number
    sql: ${TABLE}.start_index

  - dimension: total_elevation_gain
    type: number
    sql: ${TABLE}.total_elevation_gain

  - measure: count
    type: count
    drill_fields: [id, name]

