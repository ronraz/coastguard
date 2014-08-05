- view: otherpoll
  sql_table_name: public.otherpoll
  fields:

  - dimension: activity_id
    type: int
    hidden: true
    sql: ${TABLE}.activity_id

  - dimension: case_id
    type: int
    sql: ${TABLE}.case_id

  - dimension: chris_cd
    sql: ${TABLE}.chris_cd

  - dimension: contained_amnt
    type: number
    sql: ${TABLE}.contained_amnt

  - dimension: contained_estimated
    sql: ${TABLE}.contained_estimated

  - dimension: discharge_amnt_air
    type: number
    sql: ${TABLE}.discharge_amnt_air

  - dimension: discharge_amnt_enclosed
    type: number
    sql: ${TABLE}.discharge_amnt_enclosed

  - dimension: discharge_amnt_land
    type: number
    sql: ${TABLE}.discharge_amnt_land

  - dimension: discharge_amnt_total
    type: number
    sql: ${TABLE}.discharge_amnt_total

  - dimension: discharge_amnt_water
    type: number
    sql: ${TABLE}.discharge_amnt_water

  - dimension: discharge_estimated_air
    sql: ${TABLE}.discharge_estimated_air

  - dimension: discharge_estimated_encl
    sql: ${TABLE}.discharge_estimated_encl

  - dimension: discharge_estimated_land
    sql: ${TABLE}.discharge_estimated_land

  - dimension: discharge_estimated_water
    sql: ${TABLE}.discharge_estimated_water

  - dimension: discharge_potential_type
    sql: ${TABLE}.discharge_potential_type

  - dimension: discharge_situation_type
    sql: ${TABLE}.discharge_situation_type

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: other_id
    type: int
    sql: ${TABLE}.other_id

  - dimension: potential_amnt_air
    type: number
    sql: ${TABLE}.potential_amnt_air

  - dimension: potential_amnt_enclosed
    type: number
    sql: ${TABLE}.potential_amnt_enclosed

  - dimension: potential_amnt_land
    type: number
    sql: ${TABLE}.potential_amnt_land

  - dimension: potential_amnt_total
    type: number
    sql: ${TABLE}.potential_amnt_total

  - dimension: potential_amnt_water
    type: number
    sql: ${TABLE}.potential_amnt_water

  - dimension: potential_case
    sql: ${TABLE}.potential_case

  - dimension: potential_estimated
    sql: ${TABLE}.potential_estimated

  - dimension: subject_name
    sql: ${TABLE}.subject_name

  - dimension: substance_class
    sql: ${TABLE}.substance_class

  - dimension: substance_name
    sql: ${TABLE}.substance_name

  - dimension: substance_subclass
    sql: ${TABLE}.substance_subclass

  - dimension: substance_subtype
    sql: ${TABLE}.substance_subtype

  - dimension: substance_type
    sql: ${TABLE}.substance_type

  - dimension: unit_of_measure
    sql: ${TABLE}.unit_of_measure

  - dimension: waterway_name
    sql: ${TABLE}.waterway_name

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - substance_name
      - waterway_name
      - subject_name
      - activity.activity_id
      - activity.dept_name

