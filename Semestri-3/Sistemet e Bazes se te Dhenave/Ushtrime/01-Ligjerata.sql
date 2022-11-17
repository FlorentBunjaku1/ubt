create database U_01
--drop database L02G3
use U_01

create table Studenti
(
	ID_S char(5) Primary key,
	emri varchar (40) not null,
	mbemri varchar (50) not null,
	dataL date,
	email varchar (40),
	notaMesatare float,
	qyteti varchar(20)
)

insert into Studenti values ('S001','Agnesa','Beqiraj','10/21/2001','ab@gmail.com',3.70,'Peje')
insert into Studenti values ('S002','Kroi','Sopa','09/16/2000',	'ks@hotmail.com',5.00,'Prishtine')
insert into Studenti values ('S003','Agimi','Keka',	'11/01/2000','ak@gmail.com',4.20,'Gjilan')
insert into Studenti values ('S004','Florentina','Buzuku','05/12/2001','fb@hotmail.com',4.30,'Prishtine')
insert into Studenti values ('S005','Bekim','Dema','03/10/2000','bd@yahoo.com',3.90,'Gjakove')
insert into Studenti values ('S006','Flora','Krasniqi','07/11/2001','fk@yahoo.com',4.50,'Peje')
insert into Studenti values ('S007','Kaltrina','Dushi','07/12/2000','kd@gmail.com',4.80,'Gjakove')
----------------------------------------------------------------

/*Te shfaqeni Emri, Mbemri dhe Qytetin per student me note mesatare me te madhe se 4.*/
Select s.emri, s.mbemri, s.qyteti
From Studenti s
Where s.notaMesatare > 4

/*Te shaqeni te dhenat si emri mbiemri qyteti dhe nota mesatare per student qe kan note me te madhe se 4 dhe
jane nga qyteti Prishtine*/
Select s.emri, s.mbemri, s.qyteti, s.notaMesatare
From Studenti s
Where s.notaMesatare > 4 AND s.qyteti = 'Prishtine'

/*Te shaqeni te dhenat si emri, mbiemri, qyteti dhe nota mesatare per student qe kan note me te madhe se 4.5 ose
jane nga qyteti Gjilanit*/Select s.emri, s.mbemri, s.notaMesatare, s.qyteti as [Qyteti]
From Studenti s
Where s.notaMesatare > 4.5 OR s.qyteti = 'Gjilan'

/*Te i shfaqeni te dhenat (emri , mbiemri) e studenteve qe
nuk jane nga Gjilani*/
Select s.emri, s.mbemri, s.notaMesatare, s.qyteti as [Qyteti]
From Studenti s
Where NOT s.qyteti = 'Gjilan'

/*Te i shfaqeni te dhenat (emri , mbiemri, nota mesatare) e studenteve qe kan
not mesatare me te madhe se 4 por nuk jane te Prishtines*/
Select s.emri, s.mbemri, s.notaMesatare as 'Nota Mesatare'
From Studenti s
Where s.notaMesatare > 4 AND NOT s.qyteti = 'Prishtine'

/*Te i shfaqeni te dhenat e studentit ku qyteti fillon me shkronjej P */
Select *
From Studenti s
Where s.qyteti LIKE 'P%'

/*Te i shfaqeni te dhenat e studentit ku shkronja e pare nuk i dihet */Select *From Studenti sWhere s.mbemri LIKE '_opa'/*Te i shfaqeni studentet me note mesatare nga 4 deri 4.7*/Select *From Studenti sWhere s.notaMesatare BETWEEN 4 AND 4.7/*Te i shfaqeni studentet me note mesatare nga 4.2, 4.5 dhe 5*/Select *From Studenti sWhere s.notaMesatare IN (4.2,4.5,5)