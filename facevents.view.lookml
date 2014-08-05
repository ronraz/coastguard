- view: facevents
  sql_table_name: public.facevents
  fields:

  - dimension: activity_id
    type: int
    hidden: true
    sql: ${TABLE}.activity_id

  - dimension: case_id
    type: int
    sql: ${TABLE}.case_id

  - dimension: damage_status
    sql: ${TABLE}.damage_status

  - dimension: event_class
    sql: ${TABLE}.event_class

  - dimension: event_subclass
    sql: ${TABLE}.event_subclass

  - dimension: event_type
    sql: ${TABLE}.event_type

  - dimension: facility_activity_role_desc
    sql: ${TABLE}.facility_activity_role_desc

  - dimension: facility_name
    sql: ${TABLE}.facility_name

  - dimension: facility_type
    sql: ${TABLE}.facility_type

  - dimension: fk_d_facility
    type: int
    sql: ${TABLE}.fk_d_facility

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: msn_non_vessel_id
    type: int
    sql: ${TABLE}.msn_non_vessel_id

  - dimension_group: timeline_dt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timeline_dt

  - dimension: waterway_name
    sql: ${TABLE}.waterway_name

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - waterway_name
      - facility_name
      - activity.activity_id
      - activity.dept_name

