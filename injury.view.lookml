- view: injury
  sql_table_name: public.injury
  fields:

  - dimension: accident_type
    sql: ${TABLE}.accident_type

  - dimension: activity_id
    type: int
    hidden: true
    sql: ${TABLE}.activity_id

  - dimension: casualty_type_desc
    sql: ${TABLE}.casualty_type_desc

  - dimension: facility_activity_role_desc
    sql: ${TABLE}.facility_activity_role_desc

  - dimension: facility_id
    type: int
    hidden: true
    sql: ${TABLE}.facility_id

  - dimension: facility_name
    sql: ${TABLE}.facility_name

  - dimension: facility_type_desc
    sql: ${TABLE}.facility_type_desc

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

  - dimension: relationship_type
    sql: ${TABLE}.relationship_type

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
      - facility_name
      - vessel_name
      - facility.facility_name
      - vessel.vessel_id
      - vessel.completed_by_party_name
      - vessel.hull_build_party_name
      - vessel.vessel_name
      - activity.activity_id
      - activity.dept_name

