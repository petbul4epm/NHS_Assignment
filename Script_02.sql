SELECT p.PatientName,
d.DoctorName,
      a.AppointmentDate
      FROM Appointment a
      JOIN Patient p ON a.PatientID = p.PatientID
      JOIN Doctor d ON a.DoctorID = d.DoctorID;
      