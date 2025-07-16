create database patient_vital_signs;

create table patient_vitals_monitoring(
patient_id varchar (10) not null primary key,
Age int,
Heart_Rate int,
Blood_Pressure Varchar (15),
Temperature decimal (4,1),
Oxygen_Saturation int,
Respiration_Rate int,
Cholesterol int,
Glucose int,
Alerts Varchar (10),
Fall_Risk Varchar (10),
Lifestyle_Aderence Varchar (10),
Medication_Adherence Varchar (10)
);
select * from patient_vitals_monitoring;

insert into patient_vitals_monitoring (patient_id, age, heart_rate, blood_pressure, temperature, oxygen_saturation,respiration_rate, cholesterol, glucose, alerts, fall_risk, lifestyle_aderence, medication_adherence)
values	('P001', 67, 72, '118/78 mm/Hg', 38.6, 98, 16, 180, 95, 'None', 'Low', 'Good', 'Good'),
		('P002', 55, 88, '125/85 mm/Hg', 37.2, 96, 18, 210, 110, 'None', 'Moderate', 'Fair', 'Good'),
		('P003', 72, 105, '140/95 mm/Hg', 37.5, 93, 22, 240, 160, 'Hypertension, Tachycardia', 'High', 'Poor', 'Fair'),
		('P004', 60, 55, '110/70 mm/Hg', 36.4, 99, 12, 175, 90, 'Bradycardia', 'Low', 'Good', 'Good'),
		('P005', 49, 78, '122/80 mm/Hg', 36.9, 97, 17, 200, 105, 'None', 'Low', 'Good', 'Good'),
		('P006', 66, 65, '115/75 mm/Hg', 36.7, 95, 14, 195, 115, 'None', 'Low', 'Fair', 'Fair'),
		('P007', 74, 130, '150/100 mm/Hg', 38.3, 90, 28, 260, 180, 'Tachycardia, Hypertension, Fever, Hypoxia', 'High', 'Poor', 'Poor'),
		('P008', 58, 82, '130/88 mm/Hg', 37.1, 96, 19, 205, 108, 'None', 'Moderate', 'Fair', 'Good'),
		('P009', 69, 95, '135/90 mm/Hg', 37.4, 94, 20, 230, 150, 'Hypertension', 'High', 'Poor', 'Fair'),
		('P010', 63, 60, '105/65 mm/Hg', 36.5, 99, 13, 185, 100, 'Bradycardia', 'Low', 'Good', 'Good');

alter table patient_vitals_monitoring
alter column alerts varchar (100);

select * from patient_vitals_monitoring;

insert into patient_vitals_monitoring (patient_id, age, heart_rate, blood_pressure, temperature, oxygen_saturation, respiration_rate, cholesterol, glucose, alerts, fall_risk, lifestyle_aderence, medication_adherence)
values ('P011', 54, 85, '120/82 mm/Hg', 36.8, 98, 16, 190, 98, 'None', 'Moderate', 'Good', 'Good'),
		('P012', 75, 115, '145/98 mmHg', 38, 91, 25, 245, 175, 'null', 'null', 'null', 'null'),
		('P013', 62, 70, '118/78 mm/Hg', 36.6, 97, 15, 195, 102, 'null', 'null', 'null', 'null'),
		('P014', 59, 77, '122/84 mm/Hg', 36.9, 95, 18, 200, 110, 'null', 'null', 'null', 'null'),
		('P015', 68, 100, '138/92 mm/Hg', 37.6, 92, 21, 235, 155, 'null', 'null', 'null', 'null'),
		('P016', 57, 90, '125/85 mm/Hg', 37, 96, 18, 215, 115, 'null', 'null', 'null', 'null'),
		('P017', 64, 67, '112/72 mm/Hg', 36.7, 98, 14, 185, 100, 'null', 'null', 'null', 'null'),
		('P018', 61, 58, '108/68 mmHg', 36.5, 99, 12, 190, 95, 'null', 'null', 'null', 'null'),
		('P019', 73, 120, '148/99 mm/Hg', 38.2, 89, 27, 255, 185, 'null', 'null', 'null', 'null'),
		('P020', 53, 75, '120/80 mmHg', 36.8, 97, 16, 195, 105, 'null', 'null', 'null', 'null');

select * from patient_vitals_monitoring;

exec sp_rename 'patient_vitals_monitoring.lifestyle_aderence', 'Lifestyle_Adherence', 'column'; 


update patient_vitals_monitoring
set alerts = 'Tachycardia, Hypertension, Fever', fall_risk = 'High', Lifestyle_Adherence = 'Poor', Medication_Adherence = 'Fair'
where patient_id = 'P012';

update patient_vitals_monitoring
set alerts = 'None', fall_risk = 'Low', Lifestyle_adherence = 'Good', Medication_Adherence = 'Good'
where patient_id = 'P013';
update patient_vitals_monitoring
set alerts = 'None', fall_risk = 'Moderate', lifestyle_adherence = 'fair', medication_adherence = 'Good'
where patient_id = 'P014';
update patient_vitals_monitoring
set alerts = 'Hypertension, Tachycardia', fall_risk = 'High', lifestyle_adherence = 'Poor', medication_adherence = 'Fair'
where patient_id = 'P015';
update patient_vitals_monitoring
set alerts = 'None', fall_risk = 'Moderate', lifestyle_adherence = 'Fair', medication_adherence = 'Good'
where patient_id = 'P016';
update patient_vitals_monitoring
set alerts = 'None', fall_risk = 'Low', lifestyle_adherence = 'Good', medication_adherence = 'Good'
where patient_id = 'P017'
update patient_vitals_monitoring
set alerts = 'Bradycardia', fall_risk = 'Low', lifestyle_adherence = 'Good', medication_adherence = 'Good'
where patient_id = 'P018';
update patient_vitals_monitoring
set alerts = 'Tachycardia, Hypertension, Fever, Hypoxia', fall_risk = 'High', lifestyle_adherence = 'Poor', medication_adherence = 'Poor'
where patient_id = 'P019';
update patient_vitals_monitoring
set alerts = 'None', fall_risk = 'Moderate', lifestyle_adherence = 'Good', medication_adherence = 'Good'
where patient_id = 'P020';

select * from patient_vitals_monitoring;




