- view: strava_activitystream
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: activity_id
    type: int
    sql: ${TABLE}.activity_id
    html: |
      <a href="https://www.strava.com/activities/{{row['strava_activitystream.activity_id']}}" target="_blank"><img width="24" height="24" src="https://www.strava.com/favicon.ico"></a>
      <a href="/explore/{{_model._name}}/strava_segmenteffort?f[strava_activitystream.activity_id]={{row['strava_activitystream.activity_id']}}&fields=strava_segmenteffort.start_time,strava_segmenteffort.name&sorts=strava_segmenteffort.start_time">{{rendered_value}}</a>

  - measure: count
    type: count
    drill_fields: [id]
