-- The front-desk supervisor wants a quick dashboard of the most recent admissions from Q3 2025 (July 1 –
-- September 30). Show all patients admitted in this period whose status is 'Discharged' OR 'Stable'. Display
-- patient_name, admission_date, department, room_type, and status. Sort by admission_date (newest
-- first), then LIMIT to 15 records.

SELECT patient_name, admission_date, department, room_type, status
FROM patients
WHERE admission_date BETWEEN '2025-07-01' AND '2025-09-30'
  AND status IN ('Discharged', 'Stable')
ORDER BY admission_date DESC
LIMIT 15;

-- Result: 12 rows 
-- Interpretation: The results show admissions from the third quarter of
--  2025 across multiple departments, including Oncology, Surgery, 
-- General Medicine, Orthopedics, Pediatrics, Cardiology, and Neurology.
--  Patients were accommodated in Private, Semi-Private, and Ward room types,
--  indicating a mix of care levels. Overall, the data reflects a diverse 
-- set of stable and discharged patients across major hospital departments
--  during the period.
