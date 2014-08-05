- view: activity
  sql_table_name: public.activity
  fields:

  - dimension: activity_id
    primary_key: true
    type: int
    sql: ${TABLE}.activity_id

  - dimension: activity_status
    sql: ${TABLE}.activity_status

  - dimension: activity_status_subtype
    sql: ${TABLE}.activity_status_subtype

  - dimension: activity_type
    sql: ${TABLE}.activity_type

  - dimension: cargo_property_damage
    type: number
    sql: ${TABLE}.cargo_property_damage

  - dimension: case_id
    type: int
    sql: ${TABLE}.case_id

  - dimension: dept_name
    sql: ${TABLE}.dept_name

  - dimension: facility_property_damage
    type: number
    sql: ${TABLE}.facility_property_damage

  - dimension_group: incident_dt
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.incident_dt

  - dimension: other_property_damage
    type: number
    sql: ${TABLE}.other_property_damage

  - dimension: vessel_property_damage
    type: number
    sql: ${TABLE}.vessel_property_damage

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - activity_id
      - dept_name
        # Counters for views that join 'activity'
      - facevents.count
      - facpoll.count
      - injury.count
      - otherevents.count
      - otherpoll.count
      - vslevents.count
      - vslpoll.count

