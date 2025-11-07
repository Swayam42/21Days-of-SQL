use sqlchallenge;
/*Day 05 : 07/11/2025 : Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
Topics: COUNT, SUM, AVG, MIN, MAX functions
*/
-- Practice Questions 
-- 1. Count the total number of patients in the hospital.
SELECT COUNT(*) AS total_patients
FROM patients;
-- 2. Calculate the average satisfaction score of all patients.
SELECT AVG(satisfaction) AS avg_satisfaction
FROM patients;
-- 3. Find the minimum and maximum age of patients.
SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age
FROM patients;

/*Today's Challenge:  Calculate the total number of patients admitted, total patients refused, 
and the average patient satisfaction across all services and weeks.Round the average satisfaction 
to 2 decimal places.*/
SELECT 
    SUM(patients_admitted) AS total_admitted,
    SUM(patients_refused) AS total_refused,
    ROUND(AVG(patient_satisfaction), 2) AS avg_satisfaction_overall
FROM services_weekly;
