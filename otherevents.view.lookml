- view: otherevents
  sql_table_name: public.otherevents
  fields:

  - dimension: activity_id
    type: int
    hidden: true
    sql: ${TABLE}.activity_id

  - dimension: case_id
    type: int
    sql: ${TABLE}.case_id

  - dimension: event_class
    sql: ${TABLE}.event_class

  - dimension: event_subclass
    sql: ${TABLE}.event_subclass

  - dimension: event_type
    sql: ${TABLE}.event_type

  - dimension: fk_d_other_subject
    type: int
    sql: ${TABLE}.fk_d_other_subject

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: subject_name
    sql: ${TABLE}.subject_name

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
      - subject_name
      - activity.activity_id
      - activity.dept_name

