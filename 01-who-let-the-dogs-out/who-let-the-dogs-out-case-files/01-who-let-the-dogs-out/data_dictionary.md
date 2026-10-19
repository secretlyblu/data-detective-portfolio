# Data Dictionary

| Table | Approx. rows | Primary key | Purpose |
|---|---:|---|---|
| employees | 24 | employee_id | Staff directory |
| animals | 80 | animal_id | Shelter animal registry |
| shifts | varies by scheduled shifts | shift_id | Scheduled staffing |
| badge_access_logs | 1,200 | event_id | Badge access attempts |
| kennel_checks | 700 | check_id | Animal presence / kennel inspection records |
| animal_movements | 250 | movement_id | Recorded animal movements |

## Important columns
- `event_timestamp`, `check_timestamp`, `movement_timestamp`: local timestamp strings in `YYYY-MM-DD HH:MM:SS` format.
- `event_type`: `GRANTED` or `DENIED`.
- `check_result`: includes `Present`, `Not Located`, and `Needs Attention`.
- `authorization_id`: blank when the record has no authorization identifier.
- `employee_id` and `animal_id`: foreign keys linking events to the directory tables.

## Data quality notes
The dataset contains routine events outside the incident window, a few intentionally incomplete or inconsistent records, and a seeded timeline for the case. Investigate before drawing conclusions.
