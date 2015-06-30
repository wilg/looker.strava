- view: strava_activity
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: achievement_count
    type: number
    sql: ${TABLE}.achievement_count

  - dimension: activity_id
    type: int
    sql: ${TABLE}.Activity_id

  - dimension: athlete_count
    type: number
    sql: ${TABLE}.athlete_count

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

  - dimension: average_temp
    type: number
    sql: ${TABLE}.average_temp

  - dimension: average_watts
    type: number
    sql: ${TABLE}.average_watts

  - dimension: besteffort_id
    type: int
    sql: ${TABLE}.besteffort_id

  - dimension: calories
    type: number
    sql: ${TABLE}.calories

  - dimension: comment_count
    type: number
    sql: ${TABLE}.comment_count

  - dimension: commute
    type: yesno
    sql: ${TABLE}.commute

  - dimension: description
    sql: ${TABLE}.description

  - dimension: device_watts
    type: yesno
    sql: ${TABLE}.device_watts

  - dimension: distance
    type: number
    sql: ${TABLE}.distance

  - dimension: elapsed_time
    type: number
    sql: ${TABLE}.elapsed_time

  - dimension: external_id
    sql: ${TABLE}.external_id

  - dimension: flagged
    type: yesno
    sql: ${TABLE}.flagged

  - dimension: gear_id
    sql: ${TABLE}.gear_id

  - dimension: guid
    sql: ${TABLE}.guid

  - dimension: has_kudoed
    type: yesno
    sql: ${TABLE}.has_kudoed

  - dimension: instagram_primary_photo
    sql: ${TABLE}.instagram_primary_photo

  - dimension: kilojoules
    type: number
    sql: ${TABLE}.kilojoules

  - dimension: kudos_count
    type: number
    sql: ${TABLE}.kudos_count

  - dimension: location_city
    sql: ${TABLE}.location_city

  - dimension: location_country
    sql: ${TABLE}.location_country

  - dimension: location_state
    sql: ${TABLE}.location_state

  - dimension: manual
    type: yesno
    sql: ${TABLE}.manual

  - dimension: map_id
    type: int
    sql: ${TABLE}.map_id

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

  - dimension: photo_count
    type: number
    sql: ${TABLE}.photo_count

  - dimension: photos_id
    type: int
    sql: ${TABLE}.photos_id

  - dimension: private
    type: yesno
    sql: ${TABLE}.private

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: segmenteffort_id
    type: int
    sql: ${TABLE}.segmenteffort_id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

  - dimension_group: start_date_local
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date_local

  - dimension: start_latitude
    type: number
    sql: ${TABLE}.start_latitude

  - dimension: start_longitude
    type: number
    sql: ${TABLE}.start_longitude

  - dimension: total_elevation_gain
    type: number
    sql: ${TABLE}.total_elevation_gain

  - dimension: trainer
    type: yesno
    sql: ${TABLE}.trainer

  - dimension: truncated
    type: number
    sql: ${TABLE}.truncated

  - dimension: type
    sql: ${TABLE}.type

  - dimension: upload_id
    sql: ${TABLE}.upload_id

  - dimension: weighted_average_watts
    type: number
    sql: ${TABLE}.weighted_average_watts

  - dimension: workout_type
    sql: ${TABLE}.workout_type

  - measure: count
    type: count
    drill_fields: [id, name]

