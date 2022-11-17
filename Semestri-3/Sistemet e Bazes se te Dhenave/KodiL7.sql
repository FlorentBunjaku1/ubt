create database DDL
use DDL
--drop database DDL

CREATE TABLE Personi
(
PersonID int IDENTITY (1,1) Primary Key,
Emri varchar(50) NOT NULL,
Mbiemri varchar (50) NOT NULL,
DataLindjes date,
)

ALTER table Personi 
ADD adresa varchar(50);

ALTER table Personi
Drop column adresa;

ALTER table Personi
Alter column adresa char(2);



Select *
From Personi;


-----------------------------------------------------

Create Table Adresa
(
	Personi int NOT NULL,
	Qyteti varchar(20),
	Rruga varchar(30),
	ZIP int,
	Primary Key(ZIP,Personi),
	Foreign Key(Personi) references Personi(ID_Personi)
)

--Constraint Ad_Personi (Personi) Foreign key references Personi(ID_Personi)

--drop table Adresa

Select *
From Adresa

