-- The finance department needs to flag high-value admissions for insurance audit. Show all patients whose
-- billing_amount is BETWEEN ₱100,000 AND ₱250,000 AND whose room_type is 'Private' OR 'ICU'. Show
-- patient_name, room_type, billing_amount, and department. Sort by billing_amount (highest first), then
-- LIMIT the results to the TOP 10.

SELECT patient_name, room_type, billing_amount, department
FROM patients
WHERE billing_amount >= 100000 AND billing_amount <= 250000
  AND room_type IN ('Private', 'ICU')
ORDER BY billing_amount DESC
LIMIT 10;

-- Result: Rows 10 
-- Interpretation: The results show 10 high-value admissions,
-- with 6 Private room patients and 4 ICU cases. ICU patients are mainly 
-- from Cardiology, while Private room cases are mostly from Oncology. 
-- This indicates that both cardiac and cancer-related treatments 
-- contribute significantly to higher hospital costs.
