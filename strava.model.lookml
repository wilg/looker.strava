- connection: arkstrava

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: strava_activity
  joins:
  - join: strava_athlete
    foreign_key: athlete_id
  - join: strava_besteffort
    foreign_key: besteffort_id
  - join: strava_segmenteffort
    foreign_key: segmenteffort_id


- explore: strava_activitycomment
  hidden: true

- explore: strava_activitykudos
  hidden: true

- explore: strava_activitylap
  hidden: true

- explore: strava_activityphoto
  hidden: true

- explore: strava_athlete
  joins:
  - join: strava_club
    foreign_key: club_id

- explore: strava_baseactivityzone
  hidden: true

- explore: strava_baseeffort
  hidden: true

- explore: strava_besteffort

- explore: strava_club

- explore: strava_heartrateactivityzone
  hidden: true

- explore: strava_loadableentity
  hidden: true

- explore: strava_paceactivityzone
  hidden: true

- explore: strava_poweractivityzone
  hidden: true

- explore: strava_segment

- explore: strava_segmenteffort
  joins:
  - join: strava_athlete
    foreign_key: athlete_id
  - join: strava_activity
    foreign_key: activity_id
  - join: strava_segment
    foreign_key: segment_id

- explore: strava_segmentexplorerresult
  hidden: true

- explore: strava_stream
  hidden: true
