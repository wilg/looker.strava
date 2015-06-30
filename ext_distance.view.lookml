- view: ext_distance

  fields:
  - dimension: distance_meters
    type: number
    sql: ${TABLE}.distance
    drill_fields: detail*
    value_format: '#,### "m"'
  
  - dimension: distance_km
    type: number
    sql: Floor(${TABLE}.distance / 1000)
    drill_fields: detail*
    value_format: '#,### "km"'

  - dimension: distance_miles
    type: number
    sql: Floor(${TABLE}.distance /  1609)
    drill_fields: detail*
    value_format: '#,### "miles"'

  - dimension: distance_tier
    type: tier
    style: integer
    sql: ${distance_miles}
    tiers: [0,10,20,30,40,50,60,70,80,90,100,110,120]
    drill_fields: detail*

  - measure: total_distance
    type: sum
    sql: ${distance_miles}
    drill_fields: detail*
    