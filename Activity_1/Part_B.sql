-- Q6. Show all patients whose age is BETWEEN 18 AND 35.
SELECT *
FROM patients 
WHERE age >= '18'
    AND age <36; 
-- Result: 12 rows 

-- Q7. Show all patients admitted in Q1 2025 (admission_date BETWEEN '2025-01-01' AND '2025-03-31').
SELECT *
FROM patients 
WHERE admission_date >= '2025-01-01'
    AND admission_date <= '2025-03-31'; 
-- Result: 17 rows 

-- Q8. Show all patients where the department is IN ('Cardiology', 'Oncology', 'Neurology').
SELECT * 
FROM patients
WHERE department IN ('Cardiology', 'Oncology', 'Neurology')
-- Result: 23 rows 

-- Q9. Show all patients whose diagnosis starts with the word 'Heart' (use LIKE).
SELECT * 
FROM patients
WHERE diagnosis LIKE 'Heart%';
-- Result: 6 rows 

-- Q10. Show all patients whose doctor_name contains 'Tan' anywhere in the name.
SELECT * 
FROM patients 
WHERE doctor_name LIKE '%Tan%'; 
-- Result: 13 rows 