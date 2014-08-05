- view: facility
  sql_table_name: public.facility
  fields:

  - dimension: current_ind
    type: number
    sql: ${TABLE}.current_ind

  - dimension: facility_name
    sql: ${TABLE}.facility_name

  - dimension: facility_state_abbr
    sql: ${TABLE}.facility_state_abbr

  - dimension: facility_subtype_desc
    sql: ${TABLE}.facility_subtype_desc

  - dimension: facility_type_desc
    sql: ${TABLE}.facility_type_desc

  - dimension: gk_d_facility
    type: int
    sql: ${TABLE}.gk_d_facility

  - dimension: helo_deck_desc
    sql: ${TABLE}.helo_deck_desc

  - dimension: inspected_facility_desc
    sql: ${TABLE}.inspected_facility_desc

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: manned_platform_desc
    sql: ${TABLE}.manned_platform_desc

  - dimension: msn_non_vessel_id
    type: int
    sql: ${TABLE}.msn_non_vessel_id

  - dimension: nav_hazard_desc
    sql: ${TABLE}.nav_hazard_desc

  - dimension: pollution_source_desc
    sql: ${TABLE}.pollution_source_desc

  - dimension: primary_id
    sql: ${TABLE}.primary_id

  - dimension: primary_id_type_desc
    sql: ${TABLE}.primary_id_type_desc

  - dimension: public_safety_risk_desc
    sql: ${TABLE}.public_safety_risk_desc

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - facility_name
        # Counters for views that join 'facility'
      - facpoll.count
      - injury.count

