- view: strava_activitystreamdatapoint
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_stream_id
    type: int
    sql: ${TABLE}.activity_stream_id

  - dimension: altitude
    type: number
    sql: ${TABLE}.altitude * 3.28084

  - dimension: distance
    type: number
    sql: ${TABLE}.distance

  - dimension: velocity_smooth_num
    type: number
    sql: ${TABLE}.velocity_smooth * 2.23694
    hidden: true

  - dimension: grade_smooth
    type: number
    sql: ${TABLE}.grade_smooth

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude
    hidden: true

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude
    hidden: true

  - dimension: time
    type: int
    sql: ${TABLE}.time

  - dimension: latlon
    type: location
    sql_latitude: ${latitude}
    sql_longitude: ${longitude}

  - measure: count
    type: count
    drill_fields: [id]

  - measure: average_altitude
    type: average
    sql: ${altitude}

  - measure: velocity_smooth
    type: number
    sql: ${velocity_smooth_num}
    html: |
      {{rendered_value}} mph
