Create DataBase Universiteti
Use Universiteti


------------Tabela StafiTipi---------------------
Create Table StafiTipi(
	TipiID int Primary Key,
	Tipi varchar(10)
);

Select *
From StafiTipi
------------Tabela StafiTipi---------------------

------------Tabela Lenda---------------------
Create Table Lenda(
	LendaID char(10) Primary Key,
	Lenda varchar(20),
	ECTS int Default 0
);

Select *
From Lenda
------------Tabela Lenda---------------------

------------Tabela Departamenti---------------------
Create Table Departamenti(
	DepartamentiID char(10) Primary Key,
	Departamenti varchar(20),
	Zyra varchar(10)
);

Select *
From Departamenti
------------Tabela Departamenti---------------------

------------Tabela Studenti---------------------
Create Table Studenti(
	StudentiID char(13) Primary Key,
	Emri varchar(20),
	EmriPrindit varchar(20),
	Mbiemri varchar(25),
	Datelindja Date,
	Departamenti char(10) Foreign Key references Departamenti(DepartamentiID),
	VitiAkademik smallint,
	EmailZyrtar varchar(50),
	EmailPrivat varchar(50)
);

Select *
From Studenti
------------Tabela Studenti---------------------

------------Tabela Stafi---------------------
Create Table Stafi(
	StafiID char(20) Primary Key,
	Emri varchar(20),
	Mbiemri varchar(25),
	Datelindja Date,
	GradaAkademike varchar(10),
	NumriPersonal int UNIQUE,
	DepartamentiID char(10),
	TipiID int,
	Foreign Key(DepartamentiID) references Departamenti(DepartamentiID),
	Foreign Key(TipiID) references StafiTipi(TipiID)
);

Select *
From Stafi
------------Tabela Stafi---------------------

------------Tabela Kursi---------------------
Create Table Kursi(
	KursiID char(10) Primary Key,
	LendaID char(10),
	ProfaID char(20),
	StudentiID char(13),
	Data Date,
	KohaFillimit datetime,
	KohaMbarimit datetime,
	Departamenti char(10),
	Grupi char(10),
	Foreign Key(LendaID) references Lenda(LendaID),
	Foreign Key(ProfaID) references Stafi(StafiID),
	Foreign Key(Departamenti) references Departamenti(DepartamentiID),
	Foreign Key(StudentiID) references Studenti(StudentiID)
);