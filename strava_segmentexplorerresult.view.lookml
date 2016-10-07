- view: strava_segmentexplorerresult
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: avg_grade
    type: number
    sql: ${TABLE}.avg_grade

  - dimension: climb_category
    type: number
    sql: ${TABLE}.climb_category

  - dimension: climb_category_desc
    sql: ${TABLE}.climb_category_desc

  - dimension: distance
    type: number
    sql: ${TABLE}.distance

  - dimension: elev_difference
    type: number
    sql: ${TABLE}.elev_difference

  - dimension: name
    sql: ${TABLE}.name

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: segment_explorer_result_id
    type: number
    sql: ${TABLE}.SegmentExplorerResult_id

  - measure: count
    type: count
    drill_fields: [id, name]