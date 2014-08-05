- view: vessel
  sql_table_name: public.vessel
  fields:

  - dimension: vessel_id
    primary_key: true
    type: int
    sql: ${TABLE}.vessel_id

  - dimension: breadth
    sql: ${TABLE}.breadth

  - dimension: build_shipyard
    sql: ${TABLE}.build_shipyard

  - dimension: build_year
    sql: ${TABLE}.build_year

  - dimension: call_sign
    sql: ${TABLE}.call_sign

  - dimension: cargo_authorization_type
    sql: ${TABLE}.cargo_authorization_type

  - dimension: classification_society
    sql: ${TABLE}.classification_society

  - dimension: completed_by_party_name
    sql: ${TABLE}.completed_by_party_name

  - dimension: dead_weight_ton
    sql: ${TABLE}.dead_weight_ton

  - dimension: deadweighttonnage_units
    sql: ${TABLE}.deadweighttonnage_units

  - dimension: depth
    sql: ${TABLE}.depth

  - dimension: documented_ind
    sql: ${TABLE}.documented_ind

  - dimension: documented_status_type
    sql: ${TABLE}.documented_status_type

  - dimension: draft_design
    sql: ${TABLE}.draft_design

  - dimension: draft_design_units
    sql: ${TABLE}.draft_design_units

  - dimension: filler
    sql: ${TABLE}.filler

  - dimension: flag_abbr
    sql: ${TABLE}.flag_abbr

  - dimension: forebody_type_desc
    sql: ${TABLE}.forebody_type_desc

  - dimension: gk_d_vessel
    type: int
    sql: ${TABLE}.gk_d_vessel

  - dimension: gross_ton
    sql: ${TABLE}.gross_ton

  - dimension: hailing_port
    sql: ${TABLE}.hailing_port

  - dimension: hailing_port_province
    sql: ${TABLE}.hailing_port_province

  - dimension: hailing_port_state
    sql: ${TABLE}.hailing_port_state

  - dimension: horsepower_ahead
    sql: ${TABLE}.horsepower_ahead

  - dimension: horsepower_astern
    sql: ${TABLE}.horsepower_astern

  - dimension: hull_build_party_name
    sql: ${TABLE}.hull_build_party_name

  - dimension: hull_configuration
    sql: ${TABLE}.hull_configuration

  - dimension: hull_design_type
    sql: ${TABLE}.hull_design_type

  - dimension: hull_double_bottom_type
    sql: ${TABLE}.hull_double_bottom_type

  - dimension: hull_double_side_type
    sql: ${TABLE}.hull_double_side_type

  - dimension: hull_material
    sql: ${TABLE}.hull_material

  - dimension: hull_number
    sql: ${TABLE}.hull_number

  - dimension: hull_shape
    sql: ${TABLE}.hull_shape

  - dimension: imo_number
    sql: ${TABLE}.imo_number

  - dimension: insp_subchapter_type
    sql: ${TABLE}.insp_subchapter_type

  - dimension: inspected_desc
    sql: ${TABLE}.inspected_desc

  - dimension: inspected_ind
    sql: ${TABLE}.inspected_ind

  - dimension: itc_breadth
    sql: ${TABLE}.itc_breadth

  - dimension: itc_depth
    sql: ${TABLE}.itc_depth

  - dimension: itc_gross_ton
    sql: ${TABLE}.itc_gross_ton

  - dimension: itc_length
    sql: ${TABLE}.itc_length

  - dimension: itc_net_ton
    sql: ${TABLE}.itc_net_ton

  - dimension: length
    sql: ${TABLE}.length

  - dimension: lloyds_desc
    sql: ${TABLE}.lloyds_desc

  - dimension: lloyds_ind
    sql: ${TABLE}.lloyds_ind

  - dimension: managing_owner
    sql: ${TABLE}.managing_owner

  - dimension: managing_owner_id
    type: int
    sql: ${TABLE}.managing_owner_id

  - dimension: max_crew
    sql: ${TABLE}.max_crew

  - dimension: max_passengers_allowed
    sql: ${TABLE}.max_passengers_allowed

  - dimension: net_ton
    sql: ${TABLE}.net_ton

  - dimension: official_number
    sql: ${TABLE}.official_number

  - dimension: primary_vin
    sql: ${TABLE}.primary_vin

  - dimension: propulsion_type
    sql: ${TABLE}.propulsion_type

  - dimension: rbs_hull_number
    sql: ${TABLE}.rbs_hull_number

  - dimension: route_type
    sql: ${TABLE}.route_type

  - dimension: self_propelled_ind
    sql: ${TABLE}.self_propelled_ind

  - dimension: solas_desc
    sql: ${TABLE}.solas_desc

  - dimension: solas_ind
    sql: ${TABLE}.solas_ind

  - dimension: state_vessel_desc
    sql: ${TABLE}.state_vessel_desc

  - dimension: state_vessel_ind
    sql: ${TABLE}.state_vessel_ind

  - dimension: vessel_age
    sql: ${TABLE}.vessel_age

  - dimension: vessel_class
    sql: ${TABLE}.vessel_class

  - dimension: vessel_name
    sql: ${TABLE}.vessel_name

  - dimension: vessel_service
    sql: ${TABLE}.vessel_service

  - dimension: vessel_subtype
    sql: ${TABLE}.vessel_subtype

  - dimension: vessel_type
    sql: ${TABLE}.vessel_type

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - vessel_id
      - completed_by_party_name
      - hull_build_party_name
      - vessel_name
        # Counters for views that join 'vessel'
      - injury.count
      - vslevents.count
      - vslpoll.count

