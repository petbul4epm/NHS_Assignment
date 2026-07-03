CREATE DATABASE nhsclinic;
USE nhsclinic;

CREATE TABLE clinic (
    ClinicID INT AUTO_INCREMENT PRIMARY KEY,
    ClinicName VARCHAR(100) NOT NULL,
    ClinicAddress VARCHAR(255) NOT NULL
);

CREATE TABLE doctor (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    DoctorName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100),
    ClinicID INT,
    FOREIGN KEY (ClinicID)
        REFERENCES Clinic(ClinicID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    PatientName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    DateOfBirth DATE,
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    ClinicID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Notes TEXT,

    FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (DoctorID)
        REFERENCES Doctor(DoctorID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ClinicID)
        REFERENCES Clinic(ClinicID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE medication (
    MedicationID INT AUTO_INCREMENT PRIMARY KEY,
    MedicationName VARCHAR(100) NOT NULL,
    Dosage VARCHAR(50)
);

CREATE TABLE treatment (
    TreatmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    TreatmentName VARCHAR(100) NOT NULL,
    StartDate DATE,

    FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

--CLINIC
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
INSERT INTO medication
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
INSERT INTO Treatment
(TreatmentID, PatientID,Treatmentname, StartDate)
VALUES
(135,1, 'Follow up', '2026-01-01'),
(142,3,'First Visit', '2026-02-01'),
(273,2,'First Visit''2026-03-01');
