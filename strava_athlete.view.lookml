- view: strava_athlete
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: agreed_to_terms
    sql: ${TABLE}.agreed_to_terms

  - dimension: all_ride_totals_id
    type: int
    sql: ${TABLE}.all_ride_totals_id

  - dimension: all_run_totals_id
    type: int
    sql: ${TABLE}.all_run_totals_id

  - dimension: approve_followers
    type: yesno
    sql: ${TABLE}.approve_followers

  - dimension: athlete_id
    type: int
    sql: ${TABLE}.Athlete_id

  - dimension: badge_type_id
    type: int
    sql: ${TABLE}.badge_type_id

  - dimension: biggest_climb_elevation_gain
    type: number
    sql: ${TABLE}.biggest_climb_elevation_gain

  - dimension: biggest_ride_distance
    type: number
    sql: ${TABLE}.biggest_ride_distance

  - dimension: city
    sql: ${TABLE}.city

  - dimension: club_id
    type: int
    sql: ${TABLE}.club_id

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: date_preference
    sql: ${TABLE}.date_preference

  - dimension_group: dateofbirth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.dateofbirth

  - dimension: description
    sql: ${TABLE}.description

  - dimension: email
    sql: ${TABLE}.email

  - dimension: email_facebook_twitter_friend_joins
    type: yesno
    sql: ${TABLE}.email_facebook_twitter_friend_joins

  - dimension: email_kom_lost
    type: yesno
    sql: ${TABLE}.email_kom_lost

  - dimension: email_language
    sql: ${TABLE}.email_language

  - dimension: email_send_follower_notices
    type: yesno
    sql: ${TABLE}.email_send_follower_notices

  - dimension: facebook_sharing_enabled
    type: yesno
    sql: ${TABLE}.facebook_sharing_enabled

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: follower
    sql: ${TABLE}.follower

  - dimension: follower_count
    type: number
    sql: ${TABLE}.follower_count

  - dimension: follower_request_count
    type: number
    sql: ${TABLE}.follower_request_count

  - dimension: friend
    sql: ${TABLE}.friend

  - dimension: friend_count
    type: number
    sql: ${TABLE}.friend_count

  - dimension: ftp
    sql: ${TABLE}.ftp

  - dimension: global_privacy
    type: yesno
    sql: ${TABLE}.global_privacy

  - dimension: instagram_username
    sql: ${TABLE}.instagram_username

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: max_heartrate
    type: number
    sql: ${TABLE}.max_heartrate

  - dimension: measurement_preference
    sql: ${TABLE}.measurement_preference

  - dimension: mutual_friend_count
    type: number
    sql: ${TABLE}.mutual_friend_count

  - dimension: offer_in_app_payment
    type: yesno
    sql: ${TABLE}.offer_in_app_payment

  - dimension: plan
    sql: ${TABLE}.plan

  - dimension: premium
    type: yesno
    sql: ${TABLE}.premium

  - dimension: premium_expiration_date
    type: number
    sql: ${TABLE}.premium_expiration_date

  - dimension: profile
    sql: ${TABLE}.profile

  - dimension: profile_medium
    sql: ${TABLE}.profile_medium

  - dimension: profile_original
    sql: ${TABLE}.profile_original

  - dimension: receive_comment_emails
    type: yesno
    sql: ${TABLE}.receive_comment_emails

  - dimension: receive_follower_feed_emails
    type: yesno
    sql: ${TABLE}.receive_follower_feed_emails

  - dimension: receive_kudos_emails
    type: yesno
    sql: ${TABLE}.receive_kudos_emails

  - dimension: receive_newsletter
    type: yesno
    sql: ${TABLE}.receive_newsletter

  - dimension: recent_ride_totals_id
    type: int
    sql: ${TABLE}.recent_ride_totals_id

  - dimension: recent_run_totals_id
    type: int
    sql: ${TABLE}.recent_run_totals_id

  - dimension: resource_state
    type: number
    sql: ${TABLE}.resource_state

  - dimension: sample_race_distance
    type: number
    sql: ${TABLE}.sample_race_distance

  - dimension: sample_race_time
    type: number
    sql: ${TABLE}.sample_race_time

  - dimension: sex
    sql: ${TABLE}.sex

  - dimension: state
    sql: ${TABLE}.state

  - dimension: super_user
    type: yesno
    sql: ${TABLE}.super_user

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: username
    sql: ${TABLE}.username

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - dimension: ytd_ride_totals_id
    type: int
    sql: ${TABLE}.ytd_ride_totals_id

  - dimension: ytd_run_totals_id
    type: int
    sql: ${TABLE}.ytd_run_totals_id

  - measure: count
    type: count
    drill_fields: [id, firstname, instagram_username, lastname, username]

