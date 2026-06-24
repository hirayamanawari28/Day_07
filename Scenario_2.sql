-- The Geriatrics committee is studying admissions of senior patients. Show all patients whose age is
-- BETWEEN 60 AND 75 AND whose department is in ('Cardiology', 'Oncology', 'Neurology'). Show
-- patient_name, age, department, diagnosis, and status. Sort by age (oldest first).

SELECT *
FROM patients 
WHERE age >=65 AND  age <76
    AND department IN ('Cardiology', 'Oncology', 'Neurology')
ORDER BY age DESC;

-- Result: 5 rows
-- Interpretation: The results show that all five patients are male and 
-- are currently admitted to the ICU under a critical condition. 
-- This indicates a high-severity group of cases requiring intensive 
-- monitoring and immediate medical attention.