-- A research team is studying cancer cases across the hospital. Search the patients table for all patients
-- whose diagnosis contains the word 'Cancer' (use LIKE). Show patient_name, age, gender, diagnosis, and
-- billing_amount. Sort the results by age (youngest first).

SELECT patient_name, age, gender, diagnosis, billing_amount
FROM patients
WHERE diagnosis LIKE '%Cancer%'
ORDER BY age ASC;

-- Result: 7 rows 
-- Interpretation: The results show 7 cancer patients, including 4 males 
-- and 3 females. Female patients are diagnosed with breast and colon cancer,
--  while male patients are diagnosed with lung and colon cancer. 
-- Billing amounts range from 19,000 to 30,000, reflecting moderate 
-- treatment costs across these cases.
