- view: strava_segment
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_type
    sql: ${TABLE}.activity_type

  - dimension: athlete_count
    type: number
    sql: ${TABLE}.athlete_count

  - dimension: average_grade
    type: number
    sql: ${TABLE}.average_grade

  - dimension: city
    sql: ${TABLE}.city

  - dimension: climb_category
    type: number
    sql: ${TABLE}.climb_category

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at
    
  - dimension: effort_count
    type: number
    sql: ${TABLE}.effort_count

  - dimension: elevation_high
    type: number
    sql: ${TABLE}.elevation_high

  - dimension: elevation_low
    type: number
    sql: ${TABLE}.elevation_low

  - dimension: end_latitude
    type: number
    sql: ${TABLE}.end_latitude

  - dimension: end_longitude
    type: number
    sql: ${TABLE}.end_longitude

  - dimension: hazardous
    type: yesno
    sql: ${TABLE}.hazardous

  - dimension: map_id
    type: int
    sql: ${TABLE}.map_id

  - dimension: maximum_grade
    type: number
    sql: ${TABLE}.maximum_grade

  - dimension: name
    sql: ${TABLE}.name

  - dimension: private
    type: yesno
    sql: ${TABLE}.private

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: star_count
    type: number
    sql: ${TABLE}.star_count

  - dimension: starred
    type: yesno
    sql: ${TABLE}.starred

  - dimension: start_latitude
    type: number
    sql: ${TABLE}.start_latitude

  - dimension: start_longitude
    type: number
    sql: ${TABLE}.start_longitude

  - dimension: state
    sql: ${TABLE}.state

  - dimension: total_elevation_gain
    type: number
    sql: ${TABLE}.total_elevation_gain

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

