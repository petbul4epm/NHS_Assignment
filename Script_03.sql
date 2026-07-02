SELECT DoctorID,
COUNT(*) AS TotalPatients
FROM Appointment
GROUP BY DoctorID;

