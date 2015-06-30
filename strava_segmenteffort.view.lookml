- view: strava_segmenteffort
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

  - dimension: distance_meters
    type: number
    sql: ${TABLE}.distance
    drill_fields: detail*
    value_format: '#,### "m"'
  
  - dimension: distance_km
    type: number
    sql: Floor(${TABLE}.distance / 1000)
    drill_fields: detail*
    value_format: '#,### "km"'

  - dimension: distance_miles
    type: number
    sql: Floor(${TABLE}.distance /  1609)
    drill_fields: detail*
    value_format: '#,### "miles"'
    
  - dimension: elapsed_time
    type: number
    sql: ${TABLE}.elapsed_time

  - dimension: end_index
    type: number
    sql: ${TABLE}.end_index

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.hidden

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

  - dimension: segment_effort_id
    type: int
    sql: ${TABLE}.SegmentEffort_id

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

