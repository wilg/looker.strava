- view: strava_activity
  extends: ext_distance
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    html: |
      <a href="https://www.strava.com/activities/{{row['strava_activity.id']}}" target="_blank"><img width="24" height="24" src="https://www.strava.com/favicon.ico"></a>
      <a href="/explore/{{_model._name}}/strava_segmenteffort?f[strava_activity.id]={{row['strava_activity.id']}}&fields=strava_segmenteffort.start_time,strava_segmenteffort.name&sorts=strava_segmenteffort.start_time">{{rendered_value}}</a>
      <a href="/dashboards/25?Activity%20ID={{row['strava_activity.id']}}" target="_blank"><img src="/images/qr-graph-line@2x.png" height=20 width=20></a>

  - dimension: achievement_count
    type: number
    sql: ${TABLE}.achievement_count

  - dimension: athlete_count
    type: number
    sql: ${TABLE}.athlete_count

  - dimension: athlete_id
    type: number
    sql: ${TABLE}.athlete_id

  - dimension: average_cadence
    hidden: true
    type: number
    sql: ${TABLE}.average_cadence

  - dimension: average_heartrate
    hidden: true
    type: number
    sql: ${TABLE}.average_heartrate

  - dimension: average_speed
    type: number
    sql: ${TABLE}.average_speed

  - dimension: average_temp
    hidden: true
    type: number
    sql: ${TABLE}.average_temp

  - dimension: average_watts
    hidden: true
    type: number
    sql: ${TABLE}.average_watts

  - dimension: besteffort_id
    type: number
    sql: ${TABLE}.besteffort_id

  - dimension: calories
    type: number
    sql: ${TABLE}.calories

  - dimension: comment_count
    type: number
    sql: ${TABLE}.comment_count

  - dimension: commute
    hidden: true
    type: yesno
    sql: ${TABLE}.commute

  - dimension: description
    sql: ${TABLE}.description

  - dimension: device_watts
    hidden: true
    type: yesno
    sql: ${TABLE}.device_watts

  - dimension: elapsed_time
    type: number
    sql: ${TABLE}.elapsed_time

  - dimension: external_id
    sql: ${TABLE}.external_id

  - dimension: flagged
    hidden: true
    type: yesno
    sql: ${TABLE}.flagged

  - dimension: gear_id
    hidden: true
    sql: ${TABLE}.gear_id

  - dimension: guid
    hidden: true
    sql: ${TABLE}.guid

  - dimension: has_kudoed
    type: yesno
    sql: ${TABLE}.has_kudoed

  - dimension: instagram_primary_photo
    sql: ${TABLE}.instagram_primary_photo

  - dimension: kilojoules
    hidden: true
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
    hidden: true
    type: yesno
    sql: ${TABLE}.manual

  - dimension: map_id
    hidden: true
    type: number
    sql: ${TABLE}.map_id

  - dimension: max_heartrate
    hidden: true
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
    required_fields: [id]
    html: |
      <a href="https://www.strava.com/activities/{{row['strava_activity.id']}}" target="_blank"><img width="24" height="24" src="https://www.strava.com/favicon.ico"></a>
      <a href="/explore/{{_model._name}}/strava_segmenteffort?f[strava_activity.id]={{row['strava_activity.id']}}&fields=strava_segmenteffort.start_time,strava_segmenteffort.name&sorts=strava_segmenteffort.start_time&title={{ rendered_value | encode_uri}}">{{rendered_value}}</a>
      <a href="/dashboards/25?Activity%20ID={{row['strava_activity.id']}}" target="_blank"><img src="/images/qr-graph-line@2x.png" height=20 width=20></a>


  - dimension: photo_count
    hidden: true
    type: number
    sql: ${TABLE}.photo_count

  - dimension: photos_id
    hidden: true
    type: number
    sql: ${TABLE}.photos_id

  - dimension: private
    type: yesno
    sql: ${TABLE}.private

  - dimension: resource_state
    hidden: true
    type: number
    sql: ${TABLE}.resource_state

  - dimension: segmenteffort_id
    hidden: true
    type: number
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

  - dimension: elevation_gain_meter
    type: number
    sql: ${TABLE}.total_elevation_gain
    value_format: '#,### "m"'

  - dimension: elevation_gain_feet
    type: number
    sql: ${TABLE}.total_elevation_gain * 3.28084
    value_format: '#,### "ft"'

  - dimension: trainer
    hidden: true
    type: yesno
    sql: ${TABLE}.trainer

  - dimension: truncated
    hidden: true
    type: number
    sql: ${TABLE}.truncated

  - dimension: type
    sql: ${TABLE}.type

  - dimension: upload_id
    hidden: true
    sql: ${TABLE}.upload_id

  - dimension: weighted_average_watts
    hidden: true
    type: number
    sql: ${TABLE}.weighted_average_watts

  - dimension: workout_type
    hidden: true
    sql: ${TABLE}.workout_type

  - measure: count
    type: count
    drill_fields: detail*

  - measure: total_elevation_gain
    type: sum
    sql: ${elevation_gain_feet}
    drill_fields: detail*

  sets:
    detail:
    - id
    - name
    - distance_miles
    - total_elevation_gain