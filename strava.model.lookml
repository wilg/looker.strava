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

- explore: strava_activitykudos

- explore: strava_activitylap

- explore: strava_activityphoto

- explore: strava_athlete
  joins:
  - join: strava_club
    foreign_key: club_id

- explore: strava_baseactivityzone

- explore: strava_baseeffort

- explore: strava_besteffort

- explore: strava_club

- explore: strava_heartrateactivityzone

- explore: strava_loadableentity

- explore: strava_paceactivityzone

- explore: strava_poweractivityzone

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

- explore: strava_stream

