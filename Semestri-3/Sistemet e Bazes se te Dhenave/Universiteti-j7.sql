Create DataBase Universiteti
Use Universiteti

-----------Tabela Fakulteti-------------
Create Table Fakulteti(
	Nr_Fakultetit int Primary Key,
	Emri varchar(20),
	Qyteti varchar(20),
	Rruga varchar(50),
	ZipKodi int
);

Select *
From Fakulteti
-----------Tabela Fakulteti-------------

-----------Tabela Lenda-------------
Create Table Lenda(
	LendaID char(10) Primary Key,
	Emri varchar(20),
	ECTS int
);


Select *
From Lenda
-----------Tabela Lenda-------------


-----------Tabela StafiAkademik-------------
Create Table StafiAkademik(
	Stf_Akademik_ID char(10) Primary Key,
	Emri varchar(20) NOT NULL,
	Mbiemri varchar(20) NOT NULl,
	DateLindja Date,
	Qyteti varchar(20),
	Rruga varchar(50) NOT NULl,
	ZipKodi int,
	Gjinia char(1) Check (Gjinia IN ('M','F','N')),
	Fakulteti int Foreign Key references Fakulteti(Nr_Fakultetit)
);

Select *
From StafiAkademik
-----------Tabela StafiAkademik-------------


-----------Tabela Asistenti-------------
Create Table Asistenti(
	Asistenti_ID char(10) Primary Key,
	Prevoja_e_Punes varchar(50)
	Foreign Key(Asistenti_ID) references StafiAkademik(Stf_Akademik_ID) UNIQUE
);

Select *
From Asistenti
-----------Tabela Asistenti-------------

-----------Tabela Profesori-------------
Create Table Profesori(
	Profesori_ID char(10) Primary Key,
	Hulumtimi varchar(10),
	Licensa varchar(20) NOT NULl,
	Paga Money Default 1000
	Foreign Key(Profesori_ID) references StafiAkademik(Stf_Akademik_ID) UNIQUE
);

Select * 
From Profesori
-----------Tabela Profesori-------------

-----------Tabela Ligjeron -------------
Create Table Ligjeron(
	Profesori_Id char(10),
	Lenda char(10),
	Primary Key(Profesori_Id,Lenda),
	Foreign Key(Profesori_Id) references Profesori(Profesori_ID),
	Foreign Key(Lenda) references Lenda(LendaID)
);

Select *
From Ligjeron
-----------Tabela Ligjeron-------------

-----------Tabela Studenti-------------
Create Table Studenti(
	StudentiID int Primary Key identity(1,1),
	Emri varchar(20) NOT NULl,
	Mbiemri varchar(20) NOT NULl,
	DateLindja Date,
	Qyteti varchar(20),
	Rruga varchar(50),
	ZipKodi int,
	Gjinia char(1) Check (Gjinia IN ('M','F','N')),
	Asistenti char(10) Foreign Key references Asistenti(Asistenti_ID),
	Keshilluesi int Foreign Key references Studenti(StudentiID)
);

Select *
From Studenti
-----------Tabela Studenti-------------

-----------Tabela Telefoni-------------
Create Table Telefoni(
	Studenti_ID int,
	Nr_Tel int,
	Primary Key(Studenti_ID,Nr_Tel),
	Foreign Key(Studenti_ID) references Studenti(StudentiID)
);

Select *
From Telefoni

-----------Tabela Ndjek-------------
Create Table Ndjek(
	Profesori_Id char(10),
	LendaID char(10),
	StudentiID int,
	Primary Key(Profesori_id,LendaID,StudentiID),
	Foreign Key(Profesori_id, LendaID) references Ligjeron(Profesori_Id,Lenda),
	Foreign Key(StudentiID) references Studenti(StudentiID),
);
-----------Tabela Ndjek-------------



