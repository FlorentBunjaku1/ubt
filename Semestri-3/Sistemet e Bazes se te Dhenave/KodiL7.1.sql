create Table Studenti
(
	IDS int Primary Key,
	emri varchar(20) not null,
)

Create table Drejtimi
(
	ID_D int Primary key,
	emriD char(5),
	studenti int unique,
	foreign key(studenti) references Studenti(IDS)
)

