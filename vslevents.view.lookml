- view: vslevents
  sql_table_name: public.vslevents
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

  - dimension: fk_d_vessel
    type: int
    sql: ${TABLE}.fk_d_vessel

  - dimension: flag_desc
    sql: ${TABLE}.flag_desc

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension_group: timeline_dt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timeline_dt

  - dimension: vessel_activity_role_desc
    sql: ${TABLE}.vessel_activity_role_desc

  - dimension: vessel_class
    sql: ${TABLE}.vessel_class

  - dimension: vessel_id
    type: int
    hidden: true
    sql: ${TABLE}.vessel_id

  - dimension: vessel_name
    sql: ${TABLE}.vessel_name

  - dimension: vessel_service
    sql: ${TABLE}.vessel_service

  - dimension: vessel_subtype
    sql: ${TABLE}.vessel_subtype

  - dimension: vessel_type
    sql: ${TABLE}.vessel_type

  - dimension: vin
    sql: ${TABLE}.vin

  - dimension: waterway_name
    sql: ${TABLE}.waterway_name

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - waterway_name
      - vessel_name
      - vessel.vessel_id
      - vessel.completed_by_party_name
      - vessel.hull_build_party_name
      - vessel.vessel_name
      - activity.activity_id
      - activity.dept_name

