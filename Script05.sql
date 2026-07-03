SELECT p.PatientName,
       d.DoctorName,
       c.ClinicName,
       a.AppointmentDate
FROM Appointment a
JOIN Patient p
ON a.PatientID = p.PatientID
JOIN Doctor d
ON a.DoctorID = d.DoctorID
JOIN Clinic c
ON d.ClinicID = c.ClinicID
ORDER BY a.AppointmentDate;

