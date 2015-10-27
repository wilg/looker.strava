- view: segment_facts
  derived_table:
    sql: |
      SELECT 
        strava_segment.id AS `strava_segment_id`,
        strava_segment.name AS `strava_segment_name`,
        MIN(DATE(strava_segmenteffort.start_date)) AS `first_date`,
        MAX(DATE(strava_segmenteffort.start_date)) AS `last_date`,
      MIN(strava_segmenteffort.moving_time) AS `fastest_time`,
      COUNT(*) AS `count`
      FROM strava_segmenteffort
      LEFT JOIN strava_segment ON strava_segmenteffort.segment_id = strava_segment.id
      
      GROUP BY 1
      
  fields:
  - dimension: strava_segment_id
    primary_key: true
    type: int
    sql: ${TABLE}.strava_segment_id

  - dimension: strava_segment_name
    type: string
    sql: ${TABLE}.strava_segment_name

  - dimension: first_date
    type: string
    sql: ${TABLE}.first_date

  - dimension: last_date
    type: string
    sql: ${TABLE}.last_date

  - dimension: fastest_time
    type: int
    sql: ${TABLE}.fastest_time

  - dimension: count
    type: int
    sql: ${TABLE}.count

  sets:
    detail:
      - strava_segment_id
      - strava_segment_name
      - first_date
      - last_date
      - fastest_time
      - count

