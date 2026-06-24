-- The medical director needs an urgent report of all patients currently in the ICU 
-- whose status is 'Critical'.
-- Show their patient_name, age, diagnosis, doctor_name, and billing_amount. Sort by billing_amount from
-- highest to lowest.

SELECT patient_name, age, diagnosis, doctor_name, billing_amount
FROM patients 
WHERE room_type = 'ICU'
    AND status = 'Critical'
ORDER BY billing_amount DESC;

--  Result: 9 rows 
-- Interpretation: The dataset contains 9 ICU patients under the care of Dr. Aquino,
-- Dr. Reyes, and Dr. Bautista, indicating a shared workload among three physicians
-- managing critical cases. The diagnoses include Lung Cancer Stage 3, Heart Failure,
-- Heart Attack, and Stroke, showing that most patients are suffering from severe, 
-- life-threatening conditions requiring intensive care.