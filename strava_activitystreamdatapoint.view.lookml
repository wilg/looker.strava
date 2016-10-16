- view: strava_activitystreamdatapoint
  view_label: Point

  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: activity_stream_id
    type: number
    sql: ${TABLE}.activity_stream_id
    
  - dimension: redact
    type: yesno
    hidden: true
    sql: |
      
      ACOS(SIN(RADIANS(36.984051)) * SIN(RADIANS(${TABLE}.latitude)) + COS(RADIANS(36.984051)) * COS(RADIANS(${TABLE}.latitude)) * 
      COS(RADIANS(${TABLE}.longitude - -122.046654))) * 6371 > 0.3
      

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
    label: Grade
    type: number
    value_format: "0.0\"%\""
    sql: ${TABLE}.grade_smooth
    
  - dimension: grade_tier
    sql_case:
      Downhill: ${grade_smooth} < -0.1
      Uphill: ${grade_smooth} > 0.1
      Flat: true

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude
    hidden: true

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude
    hidden: true

  - dimension: time
    type: number
    sql: ${TABLE}.time

  - dimension: latlon
    label: Coordinates
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
    label: Speed
    type: number
    sql: ${velocity_smooth_num}
    value_format: "0.0 \"mph\""
