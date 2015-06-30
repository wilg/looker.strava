- view: strava_stream
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: original_size
    type: number
    sql: ${TABLE}.original_size

  - dimension: resolution
    sql: ${TABLE}.resolution

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: series_type
    sql: ${TABLE}.series_type

  - dimension: stream_id
    type: int
    sql: ${TABLE}.Stream_id

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

