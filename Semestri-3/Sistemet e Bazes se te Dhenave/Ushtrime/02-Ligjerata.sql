create Database L03RH
use L03RH

create table Studenti
(
  idStudenti char(5) Primary Key, 
  sEmri varchar(30) Not Null, 
  sMbiemri varchar(30) Not Null, 
  sDLindjes date, 
  sEmail varchar(50), 
  sNMesatare float, 
  sQyteti varchar(20)
)
insert into Studenti values ('S001','Agnesa','Beqiraj','2001/10/21','ab@gmail.com',3.7,'Peje')
insert into Studenti values ('S002','Kroi','Hoxha',	'2000/09/16','ks@hotmail.com',5,'Prishtine')
insert into Studenti values ('S003','Agim','Keka','2000/01/11','ak@gmail.com',4.2,'Gjilan')
insert into Studenti values ('S004','Florentina','Buzuku','2001/12/05','gb@hotmail.com',4.3,'Prishtine')
insert into Studenti values ('S005','Bekim','Dema',	'2000/03/10','bd@yahoo.com',3.9,'Gjakove')
insert into Studenti values ('S006','Flora','Krasniqi','2000/07/11','fl@yahoo.com',4.5,'Peje')
insert into Studenti values ('S007','Kaltrina','Dushi','2000/07/12','kd@gmail.com',4.8,'Gjakove')
insert into Studenti values ('S008','Dardan','Daka','2001/07/06',' ',' 3.6','Prishtine')
insert into Studenti values ('S009','Shkemb','Bajra','2000/06/10','sb@hotmail',3.2,'Gjilan')
insert into Studenti values ('S010','Enka','Kamza','2000/08/09','ek@hotmail.com',4.7,'Prizeren')

select * from Studenti

create table Lenda
(
  idLenda char(5) Primary Key, 
  Emertimi varchar(30) Not Null, 
  ECTS int, 
  Syllabusi varchar(10), 
)
select * from Lenda
insert into Lenda values('BDH','Bazat e te Dhenave',5,'S002021RH')
insert into Lenda values('UEB','Inxhinieria Ueb',4,'WEB2021RH')
insert into Lenda values('ASDH','Algoritme Struktura te Dhenave',4,'ASDH2021SB')
insert into Lenda values('RrK','Rrjeta Kompjuterike',5,'RrK2021BQ')
insert into Lenda values('SD','Struktura Diskrete',	4,'SD2021AJ')
insert into Lenda values('SHK2','Shkencat Kompjuterike2',6,'SHK22021')


create table Vlersimi
(
  idStudenti char(5),
  idLenda char(5), 
  Nota float, 
  afatiProvimit varchar(15),
  Primary key (idStudenti,idLenda),
  Foreign key (idStudenti) references Studenti (idStudenti),
  Foreign key (idLenda) references Lenda (idLenda),
)

insert into Vlersimi values ('S001','BDH',9,'shkurt')
insert into Vlersimi values ('S001','UEB',8,'prill')
insert into Vlersimi values ('S001','ASDH',9,'shkurt')
insert into Vlersimi values ('S002','RrK',10,'shkurt')
insert into Vlersimi values ('S002','SHK2',8,'prill')
insert into Vlersimi values ('S002','BDH',7,'shkurt')
insert into Vlersimi values ('S003','ASDH',8,'shkurt')
insert into Vlersimi values ('S006','UEB',5,'shkurt')
insert into Vlersimi values ('S003','UEB',5,'shkurt')
insert into Vlersimi values ('S003','BDH',7,'prill')
insert into Vlersimi values ('S002','UEB',9,'prill')
insert into Vlersimi values ('S004','BDH',6,'shkurt')
insert into Vlersimi values ('S004','ASDH',8,'shkurt')
insert into Vlersimi values ('S008','ASDH',8,'prill')
insert into Vlersimi values ('S005','SHK2',5,'shkurt')
insert into Vlersimi values ('S005','SHK2',7,'prill')/*Kjo trego rasti e menaxhimit te qelsit*/

---------------------------------------------------


/*Të i shfaqeni Studentet të cilet janë vlersuar në afatin e
shkurtit në Lëndet respektive*/
Select s.sEmri, s.sMbiemri, l.Emertimi, v.afatiProvimit, v.Nota, l.ECTS
From Vlersimi v, Studenti s, Lenda l
Where v.idStudenti = s.idStudenti AND v.idLenda = l.idLenda AND v.afatiProvimit = 'shkurt'


/*Te gjeni numri e studenteve per secilin qytet*/
Select s.sQyteti, COUNT(*) as [Numri i Studenteve]
From Studenti s
Group by s.sQyteti
Order by [Numri i Studenteve] DESC

/*Të gjeni sa ECTS janë ligjeruar në semestrin 3*/Select SUM(l.ECTS) 'Numri i kredive ne ket semester'
From Lenda l

/*Të shfaqeni numrin e kredive të arritura nga secili Student për këto dy afate të
provimeve*/
Select s.sEmri, s.sMbiemri , SUM(l.ECTS) ' Nr Kredive '
From Vlersimi v, Studenti s, Lenda l
Where v.idStudenti = s.idStudenti AND v.idLenda = l.idLenda AND v.Nota > 5
Group By s.sEmri, s.sMbiemri
Order By ' Nr Kredive ' DESC

/*Të e gjeni cila është noten mesatare me e ulet e studentëve të këtijë viti
akademik*/
Select MIN(s.sNMesatare) 'Nota me e ulet'
From Studenti s

/*Të e gjeni cila është mesatarja e përgjithshme e notes se studenteve*/Select AVG(s.sNMesatare) 'Nota Mesatare'
From Studenti s


/*Të e gjeni numrin e studentve sipas qyteteve*/
Select s.sQyteti, COUNT(*) 'Numri i Studenteve'
From Studenti s
Group By s.sQyteti

/*Tregoni cili student kanë noten mesatar me te mire*/
Select s.sEmri, s.sMbiemri, (sum(Nota)/count(*)) 'Nota Mesatare'
From Studenti s, Vlersimi v
Where s.idStudenti = v.idStudenti
Group By  s.sEmri, s.sMbiemri

/*Shfaqeni noten mesatare të studentëve që kan kaluar më shumë se një lënde me
sukses.*/
Select s.sEmri, Count(*) 'Numri i Landeve'
From Studenti s, Vlersimi v
Where s.idStudenti = v.idStudenti AND v.Nota > 5 
Group by sEmri
Having Count(*) > 1
Order By 'Numri i Landeve' DESC

/*Të tregoni numrin e lëndëve për student që kan kaluar dhe totali i kredive të arritur nga Studenti*/
Select s.sEmri, s.sMbiemri, count(*) 'Numri i Lendeve', sum(l.ECTS) 'Kredite'
From Studenti s, Vlersimi v, Lenda l
Where s.idStudenti = v.idStudenti AND l.idLenda = v.idLenda
Group by s.sEmri, s.sMbiemri
Having count(*) > 1