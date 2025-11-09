USE sqlchallenge;
/*Day 06 : 09/11/2025 : GROUP BY Clause
Topics: GROUP BY, aggregating by categories
*/
-- Practice Questions 
-- 1. Count the number of patients by each service.
SELECT service, 
COUNT(*) AS total_patients
FROM patients
GROUP BY service;
-- 2. Calculate the average age of patients grouped by service.
SELECT service, 
ROUND(AVG(age), 2) AS avg_age
FROM patients
GROUP BY service;
-- 3. Find the total number of staff members per role.
SELECT role, 
COUNT(*) AS total_staff
FROM staff
GROUP BY role;
/*Today's Challenge: 
For each hospital service, calculate the total number of patients admitted, 
total patients refused, and the admission rate (percentage of requests that were admitted). 
Order by admission rate descending.*/
SELECT service,
SUM(patients_admitted) AS total_admitted,
SUM(patients_refused) AS total_refused,
ROUND(
(SUM(patients_admitted) / (SUM(patients_admitted) + SUM(patients_refused))) * 100,2) AS admission_rate_percentage
FROM services_weekly
GROUP BY service
ORDER BY admission_rate_percentage DESC;
