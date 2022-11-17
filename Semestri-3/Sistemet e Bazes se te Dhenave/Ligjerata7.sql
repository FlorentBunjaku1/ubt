Create DataBase Ligjerata7
Use Ligjerata7

Create Table Salla(
	nrSalles char(5) Primary Key,
	emriSalles varchar(20),
);

Select *
From Salla

----------------------------

	
CREATE TABLE Ligjeratat
(
	nr_Ligjerates INT,
	salla char(5) NOT NULL,
	nrStudenteve INT check
	(nrStudenteve between 15 AND 120),
	PRIMARY KEY (nr_Ligjerates,salla),
	FOREIGN KEY (salla) REFERENCES Salla(nrSalles),
	CONSTARINTS fk_SallLigjerata FOREIGN KEY (salla) REFERENCES Salla(nrSalles),
);

Drop table Ligjeratat
-------------------------

CREATE TABLE Albumet
(
	AlbumID INT PRIMARY KEY,
	Emri VARCHAR(50)
)Insert into Albumet values(1 , 'Albumi1');Insert into Albumet values(2, 'Albumi2');Insert into Albumet values(3, 'Albumi3');Select * From AlbumetDelete AlbumetWhere AlbumID = 1;Update Albumetset Emri = 'AlbumiUpdate'Where Emri = 'Albumi2'CREATE TABLE Kenga
( 
	ID_Kenga INT PRIMARY KEY,
	Titulli VARCHAR(50),
	Albumi INT REFERENCES Albumet(AlbumID)
	ON DELETE SET NULL
	ON UPDATE CASCADE,
);

Insert into Kenga Values(1,'Muzika1', 1);
Insert into Kenga Values(2,'Muzika2', 2);
Insert into Kenga Values(3,'Muzika3', 3);

Select * 
From Kenga k, Albumet a
Where k.Albumi = a.AlbumID;
------------------------------------

create table Studenti(
	Student_ID char(5),
	Emri varchar (20) NOT NULL,
	Mbiemri varchar (20) NOT NULL,
	Gjinia char(1),
	Qyteti varchar (10),
	Email varchar (50) UNIQUE,
	Pages_Regjistrimit MONEY DEFAULT 1200
	Primary Key (Student_ID),
	check (Gjinia IN ('M','F','N'))
);

INSERT INTO Studenti (Student_ID,Emri,Mbiemri,Gjinia,Qyteti,Email) values ('SD1', 'Florent','Bunjaku','M', 'Vushtrri','fb@gmail.com');
INSERT INTO Studenti values ('SD2', 'Florentina','Bunjaku','F', 'Vushtrri','fb1@gmail.com',1000);
INSERT INTO Studenti values ('SD3', 'Florentina','Bunjaku','F', 'Vushtrri','fb1@gmail.com',1000);--Nuk e lejon sepse ka email te njejte
INSERT INTO Studenti values ('SD3', 'Florentina','Bunjaku','Femer', 'Vushtrri','fb3@gmail.com',1000); -- Nuk e lejon sepse keshte vendosur vler tjerer nga ato qe jane valide


Select * From Studenti;


-----------------------------------------------------------

Create Table Konsumatori(
	kosumatori_ID int,
	emri varchar(20) NOT NULL,
	mbiemri varchar(20) NOT NULL,
	rruga varchar(50) ,
	kodi_postar int NOT NULL,
	qyteti char(2)
	Constraint KonsumatoriID Primary Key (kosumatori_ID)
);

Select *
From Konsumatori


-------------------------------

create table Personi(
	IDpersoni int identity (10,10),
	Emri varchar(50) NOT NULL,
	Mbiemri varchar(50),
	dataLindjes date,
	Primary Key(IDpersoni)
);

Drop Table Personi

Select *
From Personi

create table Adresa(
	qyteti varchar(30) not null,
	rruga varchar(50) not null,
	nrShtepis int,
	KodiPostar char(5),
	Personi int,
	primary key(qyteti, rruga),
	Foreign key(Personi) references Personi(IDpersoni)
);

drop table Adresa

Select *
From Adresa

-----------------------
create table Vetura(
	VIN char(17) Primary Key,
	targat char(7) UNIQUE NOT NULL,
	Prodhuesi varchar(2),
	modeli varchar(20),
	vitiProdhimit date,
	Personi int UNIQUE Foreign key references Personi(IDpersoni)
)
