show databases;
create database PaDoc;
use PaDoc;
create table doctor(DID int,name varchar(20),gender varchar(10),specialization varchar(20),password varchar(10),contact varchar(20));
select * from doctor;
use padoc;
alter table doctor
add primary key(DID);
select * from doctor;
use padoc;
alter table doctor
modify DID int auto_increment;


use padoc;
create table patient(PID int,name varchar(20),email varchar(20),DoB date,gender varchar(10),password varchar(10),phone_no varchar(20));
alter table patient
add primary key(PID);
alter table patient
modify PID int auto_increment;
select * from patient;



use padoc;
alter table doctor
drop column email;





use padoc;
alter table doctor
add column email varchar(20) not null after specialization;
select * from doctor;



use padoc;
create table admin (AID int,name varchar(20),email varchar(20),password varchar(10));
alter table admin
add primary key (AID);
alter table admin
modify AID int auto_increment;
select * from admin;


insert into admin
values(1,'admin','admin@gmail.com','admin123');
select * from admin;


use padoc;
create table appointment(appoID int,pID int,appoNo int,scheduleId int,appoDate date);

use padoc;
alter table appointment
add primary key(appoID,pID,scheduleId);

use padoc;
alter table appointment
modify appoID int auto_increment;

use padoc;
insert into appointment
values('1','1','1','1','2023-05-01');
select * from appointment;

use padoc;
create table schedule(scheduleID int,docID int,title varchar(50),scheduleDate date,scheduleTime time,nop int);
alter table schedule
add primary key(scheduleID,docID);

use padoc;
alter table schedule
modify scheduleID int auto_increment;

use padoc;
insert into schedule 
values(1, '1', 'Test Session', '2023-05-01', '18:00:00', 50),
(2, '1', '1', '2023-05-02', '20:36:00', 1),
(3, '1', '12', '2023-05-03', '20:33:00', 1),
(4, '1', '1', '2022-05-04', '12:32:00', 1),
(5, '1', '1', '2022-05-05', '20:35:00', 1),
(6, '1', '12', '2022-05-06', '20:35:00', 1),
(7, '1', '1', '2022-05-07', '20:36:00', 1),
(8, '1', '12', '2022-05-08', '13:33:00', 1);

use padoc;
select * from schedule;

use padoc;
update schedule
set scheduleDate='2023-05-08'
where scheduleID=8;
select * from schedule;


use padoc;
create table speciality(sNo int,sName varchar(50));
alter table speciality
add primary key(sNo);
select * from speciality;

use padoc;
insert into speciality
values(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

use PaDoc;
select * from speciality;

use PaDoc;
create table webuser(email varchar(20),usertype char(2));
alter table webuser
add primary key(email);
select * from webuser;

use PaDoc;
insert into webuser
values('admin@padoc.com','a'),('doctor@padoc.com','d'),('patient@padoc.com','p');

use PaDoc;
select * from webuser;