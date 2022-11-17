create DataBase Ligjerata8
Use Ligjerata8


create table Studenti(
Student_ID char(5),
Emri varchar (20),
Mbiemri varchar (20),
Gjinia char(1),
Qyteti varchar (10),
Primary Key (Student_ID),
check (Gjinia IN ('M','F','N'))
);

insert into Studenti values ('S100','Liberta','Buja','F', 'PZ');
insert into Studenti values ('S101','Berat','Gashi','M','FR');
insert into Studenti values ('S102','Edita','Syla', 'F','PZ')
insert into Studenti values ('S103','Visar','Dema', 'M','GJK')
insert into Studenti values ('S104','Kushtrim','Hoxha','M','PR')
insert into Studenti values ('S105','Lenonora','Peci','F','PR')
insert into Studenti values ('S106','Kushtrim','Hoxha','M','PR')
insert into Studenti values ('S107','Lenonora','Peci','F','PR')
insert into Studenti values ('S108','Besiana','Shkembi','F','PR')
insert into Studenti values ('S109','Veton','Sopa','M','PZ')
insert into Studenti values ('S110','Alketa','Jakupi','F','FR')

Select *
From Studenti
-----------------------------------------------------------------------

create table Lenda(
Kodi_L char(5) Primary Key ,
Emertimi varchar (40),
ECTS numeric
);
insert into Lenda values ('DBS','Sistemi i Bazave te te Dhenave','6')
insert into Lenda values ('CS2','Shkenca Kompjuterike 2 (POO)','7')
insert into Lenda values ('DSA','Alogoritme dhe Struktura e te Dhenave','4')
insert into Lenda values ('CAO','Arkitektura Kompjuterike dhe Organizimi','5')
insert into Lenda values ('SD','Strukutura Diskrete 1','5')
insert into Lenda values ('CN','Rrjetat Kompjuterike','5')



Select *
From Lenda l
Where l.Kodi_L = 'CS2';

/*Komanda Update*/
Update Lenda 
set ECTS = 6
where Kodi_L = 'CS2';


-----------------------------------------------------------------------
CREATE TABLE Vlersimi (
Nota int,
Emertimi varchar(10),
Studenti char(5),
Lenda char(5),
FOREIGN KEY (Studenti) REFERENCES
Studenti(Student_ID)
ON UPDATE CASCADE ON DELETE SET NULL,
FOREIGN KEY (Lenda) REFERENCES
Lenda(Kodi_L)
ON UPDATE CASCADE ON DELETE SET NULL
);

Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S102','CAO','Nëntë',9)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values ('S100',
'CAO','Shtatë',7)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values ('S102',
'CN','Tetë', 8)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values ('S103',
'DBS','Nëntë',9)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S106','DBS','Tetë',8)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S108','CS2','Tetë',8)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values ('S100',
'CS2','Dhjetë',10)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S101','CN', 'Gjashtë',6)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S100','CN','Nëntë',9)
Insert into Vlersimi (Studenti,Lenda,Emertimi,Nota) values
('S107','DBS','Dhjetë',10);

Select *
From Vlersimi

Select  *
From Vlersimi v
Where v.Studenti = 'S101'

/*Komanda Update per dy kolona*/
Update Vlersimi
set Nota = 8, emertimi = 'Tete'
Where Studenti = 'S101'
------------------------------------------

Select * 
From Studenti s, Vlersimi v, Lenda l
Where s.Student_ID = v.Studenti AND l.Kodi_L = v.Lenda

/*Produkti Kartezian*/
Select	s.Emri, s.Mbiemri,s.Qyteti ,l.Emertimi,v.Nota
From Studenti s,Vlersimi v, Lenda l
Where (s.Student_ID = v.Studenti AND l.Kodi_L = v.Lenda) AND s.Qyteti = 'PR' AND v.Nota > 5

/*Rasti i inner join*/
Select s.Emri, s.Mbiemri , l.Emertimi, v.Nota
From Studenti s inner join Vlersimi v
	on s.Student_ID = v.Studenti
	inner join Lenda l on v.Lenda = l.Kodi_L
Where v.Nota > 5

/*Left outer Join*/
Select s.Emri , s.Mbiemri, v.Nota
From Studenti s left outer join Vlersimi v 
	on s.Student_ID = v.Studenti
Where v.Nota is null
	
