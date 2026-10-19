# Case 001: Who Let the Dogs Out?

## Case brief
Biscuit (animal ID `A017`) was confirmed present at 16:42 on October 17, 2026, and was later reported missing. Your task is to reconstruct the likely timeline, compare records, and identify what the data supports—without assuming that access alone proves wrongdoing.

## Dataset
This fictional dataset contains six related CSV tables and approximately 2,400+ records. The data intentionally includes routine activity, irrelevant events, and a few inconsistencies for investigation practice.

## Files
- `data/employees.csv` — employee directory (`employee_id` primary key).
- `data/animals.csv` — animal registry (`animal_id` primary key).
- `data/shifts.csv` — scheduled employee shifts (`shift_id` primary key).
- `data/badge_access_logs.csv` — badge events (`event_id` primary key).
- `data/kennel_checks.csv` — recorded kennel checks (`check_id` primary key).
- `data/animal_movements.csv` — animal movement records (`movement_id` primary key).
- `sql/schema.sql` — SQLite-compatible table definitions.
- `sql/investigation_starter.sql` — starter questions with space to write queries.

## Relationships
- `shifts.employee_id` → `employees.employee_id`
- `badge_access_logs.employee_id` → `employees.employee_id`
- `kennel_checks.employee_id` → `employees.employee_id`
- `kennel_checks.animal_id` → `animals.animal_id`
- `animal_movements.employee_id` → `employees.employee_id`
- `animal_movements.animal_id` → `animals.animal_id`

## Suggested workflow
1. Inspect table names, columns, row counts, and date ranges.
2. Find the last confirmed `Present` check for Biscuit and the first later `Not Located` check.
3. Compare shifts and badge events within the time window.
4. Check movement records for Biscuit, including missing authorization IDs.
5. Identify inconsistencies and alternative explanations.
6. Write a conclusion that separates facts from hypotheses.

## Important limitations
- All names, events, and records are fictional.
- A badge event indicates a recorded access event, not necessarily what a person did after entry.
- A missing or inconsistent record is a lead to investigate, not proof of misconduct.
- Do not publish sensitive personal data; this dataset is synthetic.
