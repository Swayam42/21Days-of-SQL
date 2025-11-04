use sqlchallenge;
/*Day 02 : 04/11/2025 : Filtering Data with WHERE Clause
Topics: WHERE clause, comparison operators, basic filtering
*/
-- Practice Questions 
-- 1. Find all patients who are older than 60 years.
SELECT * FROM PATIENTS WHERE age > 60;
-- 2. Retrieve all staff members who work in the 'Emergency' service.
SELECT * FROM staff WHERE service='Emergency';
-- 3. List all weeks where more than 100 patients requested admission in any service.
SELECT * FROM services_weekly WHERE patients_request > 100;

/*Today's Challenge: Find all patients admitted to 'Surgery' service with a satisfaction score below 70, 
showing their patient_id, name, age, and satisfaction score.*/
SELECT patient_id, name, age, satisfaction patients
FROM patients 
WHERE lower(service)='surgery'
 AND satisfaction < 70;
