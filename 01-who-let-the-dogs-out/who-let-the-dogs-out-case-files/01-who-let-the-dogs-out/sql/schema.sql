PRAGMA foreign_keys = ON;

CREATE TABLE employees (
  employee_id TEXT PRIMARY KEY,
  employee_name TEXT NOT NULL,
  role TEXT,
  team TEXT,
  active_status TEXT
);

CREATE TABLE animals (
  animal_id TEXT PRIMARY KEY,
  animal_name TEXT NOT NULL,
  species TEXT,
  breed TEXT,
  kennel_id TEXT,
  intake_date TEXT,
  animal_status TEXT
);

CREATE TABLE shifts (
  shift_id TEXT PRIMARY KEY,
  employee_id TEXT NOT NULL,
  shift_date TEXT NOT NULL,
  scheduled_start TEXT NOT NULL,
  scheduled_end TEXT NOT NULL,
  assigned_area TEXT,
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE badge_access_logs (
  event_id TEXT PRIMARY KEY,
  employee_id TEXT NOT NULL,
  event_timestamp TEXT NOT NULL,
  access_point TEXT,
  event_type TEXT,
  badge_id TEXT,
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE kennel_checks (
  check_id TEXT PRIMARY KEY,
  animal_id TEXT NOT NULL,
  employee_id TEXT NOT NULL,
  check_timestamp TEXT NOT NULL,
  kennel_id TEXT,
  check_result TEXT,
  notes TEXT,
  FOREIGN KEY (animal_id) REFERENCES animals(animal_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE animal_movements (
  movement_id TEXT PRIMARY KEY,
  animal_id TEXT NOT NULL,
  employee_id TEXT NOT NULL,
  movement_timestamp TEXT NOT NULL,
  movement_type TEXT,
  from_location TEXT,
  to_location TEXT,
  authorization_id TEXT,
  FOREIGN KEY (animal_id) REFERENCES animals(animal_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
