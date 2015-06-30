- view: strava_baseeffort
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_id
    type: int
    sql: ${TABLE}.activity_id

  - dimension: athlete_id
    type: int
    sql: ${TABLE}.athlete_id

  - dimension: average_cadence
    type: number
    sql: ${TABLE}.average_cadence

  - dimension: average_heartrate
    type: number
    sql: ${TABLE}.average_heartrate

  - dimension: average_watts
    type: number
    sql: ${TABLE}.average_watts

  - dimension: base_effort_id
    type: int
    sql: ${TABLE}.BaseEffort_id

  - dimension: distance
    type: number
    sql: ${TABLE}.distance

  - dimension: elapsed_time
    type: number
    sql: ${TABLE}.elapsed_time

  - dimension: end_index
    type: number
    sql: ${TABLE}.end_index

  - dimension: kom_rank
    type: number
    sql: ${TABLE}.kom_rank

  - dimension: max_heartrate
    type: number
    sql: ${TABLE}.max_heartrate

  - dimension: moving_time
    type: number
    sql: ${TABLE}.moving_time

  - dimension: name
    sql: ${TABLE}.name

  - dimension: pr_rank
    type: number
    sql: ${TABLE}.pr_rank

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: segment_id
    type: int
    sql: ${TABLE}.segment_id

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

  - measure: count
    type: count
    drill_fields: [id, name]

