- connection: coastguard

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- base_view: activity

- base_view: facevents
  joins:
    - join: activity
      foreign_key: activity_id


- base_view: facility

- base_view: facpoll
  joins:
    - join: facility
      foreign_key: facility_id

    - join: activity
      foreign_key: activity_id


- base_view: injury
  joins:
    - join: facility
      foreign_key: facility_id

    - join: vessel
      foreign_key: vessel_id

    - join: activity
      foreign_key: activity_id


- base_view: otherevents
  joins:
    - join: activity
      foreign_key: activity_id


- base_view: otherpoll
  joins:
    - join: activity
      foreign_key: activity_id


- base_view: vessel

- base_view: vslevents
  joins:
    - join: vessel
      foreign_key: vessel_id

    - join: activity
      foreign_key: activity_id


- base_view: vslpoll
  joins:
    - join: vessel
      foreign_key: vessel_id

    - join: activity
      foreign_key: activity_id


