-- CLINICS
INSERT INTO Clinic (ClinicName, ClinicAddress)
VALUES
('Clinic A','10 Main Street'),
('Clinic B','22 River Road'),
('Clinic C','45 King Street');

-- DOCTORS
INSERT INTO Doctor (DoctorName, Specialty, ClinicID)
VALUES
('Dr Adams','Cardiology',1),
('Dr Brown','General Practice',2),
('Dr Wilson','Neurology',3);

-- PATIENTS
INSERT INTO Patient
(PatientName, Address, DateOfBirth, Phone, Email)
VALUES
('John Smith','123 Hill Road','1985-05-12','07111111111','john@email.com'),
('Mary Jones','456 Lake Avenue','1990-09-20','07222222222','mary@email.com'),
('David Green','789 Park Lane','1978-02-15','07333333333','david@email.com');

-- MEDICATIONS
INSERT INTO Medication
(MedicationName, Dosage)
VALUES
('Aspirin','100mg'),
('Paracetamol','500mg'),
('Beta Blocker','50mg');

-- APPOINTMENTS
INSERT INTO Appointment
(PatientID, DoctorID, ClinicID,
AppointmentDate, AppointmentTime, Notes)
VALUES
(1,1,1,'2026-06-01','10:00:00','Follow-up'),
(2,2,2,'2026-06-02','11:00:00','First Visit'),
(3,3,3,'2026-06-03','09:30:00','Review');

-- PATIENT MEDICATIONS
INSERT INTO PatientMedication
(PatientID, MedicationID, StartDate)
VALUES
(1,1,'2026-01-01'),
(1,3,'2026-02-01'),
(2,2,'2026-03-01');