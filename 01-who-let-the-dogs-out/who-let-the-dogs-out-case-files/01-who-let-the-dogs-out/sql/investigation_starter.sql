-- Case 001: Who Let the Dogs Out?
-- Load schema.sql and import the CSVs before running these questions.
-- Do not jump straight to a suspect: validate the records first.

-- 1. How many rows are in each table?
-- Write your query here.

-- 2. What date range is covered by the badge access logs?
-- Write your query here.

-- 3. Find all kennel checks recorded for Biscuit (animal_id A017).
-- Tip: join kennel_checks to animals, or filter directly by animal_id.
-- Write your query here.

-- 4. Determine the last recorded "Present" check for Biscuit.
-- Write your query here.

-- 5. Compare the last confirmed presence with the first later "Not Located" check.
-- What time window does that establish?
-- Write your query here.

-- 6. Which employees had scheduled shifts overlapping that window?
-- Write your query here.

-- 7. Which badge events occurred at relevant access points during that window?
-- Distinguish GRANTED from DENIED events.
-- Write your query here.

-- 8. Were there movement records for Biscuit in the window?
-- Check whether authorization_id is populated.
-- Write your query here.

-- 9. Identify record inconsistencies or missing evidence.
-- Do not treat a badge event or missing authorization as proof of wrongdoing.

-- 10. Summarize what is known, what is plausible, and what remains unproven.
