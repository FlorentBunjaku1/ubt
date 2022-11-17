create database L09_2021
use L09_2021

create table Vetura
(
	nr_Shasis int primary key,
	brandy varchar(20) not null,
	tip varchar(20) not null,
	qmimiStartues money not null,
	pershkrimi text
)

Insert into Vetura values (100,'Porsche','Panamera',97300,'Panamera GTS dhe Sport Turismo GTS.GTS twin-turbo 4.8-litra V8 prodhon 453 kuaj fuqi.');
Insert into Vetura values (200,'BMW','M5',113800,'M5 4.4Litra turbo V8 prodhon 600 kuaj fuqi.');
Insert into Vetura values (300,'Audi','S7',97750,'S7 Sportback. 4.0-litra TFSI V8 prodhon 450 kuaj fuqi.');
Insert into Vetura values (400,'Mercedes-Benz','AMG CLS 53',92000,'V8 me twin-turbo 3,0 l I-6 prodhon 429 kuaj fuqi.');

------------------------------------------

create table Shitjet_Veturave
(
	ID_Shitjes int primary key,
	vetura int,
	qmimiShitjes money not null,
	nr_SasisVeturave int,
	foreign key (vetura) references Vetura (nr_Shasis)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


Insert into Shitjet_Veturave values (10,300,129400.00,4);
Insert into Shitjet_Veturave values (20,400,137600.00,3);
Insert into Shitjet_Veturave values (30,100,124800.00,5);
Insert into Shitjet_Veturave values (40,300,108900.00,6);
Insert into Shitjet_Veturave values (50,100,106600.00,2);

--------------------------------------------------

/*Te Gjeni Cilat vetura kan totatlin e shitjeve te tyre me te ulte se cmimi me i larte startues i ndonje veture*/
Select v.brandy, sv.qmimiShitjes, v.qmimiStartues
From Vetura v JOIN Shitjet_Veturave sv 
	ON v.nr_Shasis = sv.vetura
Where sv.qmimiShitjes < (Select MAX(V.qmimiStartues) 
						 From Vetura V)


/*Te Shfaqni veturat qe skan pas shitje asnjeher*/
Select v.brandy,sv.qmimiShitjes, v.qmimiStartues
From Vetura v left JOIN Shitjet_Veturave sv 
ON v.nr_Shasis = sv.vetura
Where sv.vetura is NULL

Select v.nr_Shasis, v.brandy, v.tip, v.pershkrimi
From Vetura v 
Where v.nr_Shasis not in (Select distinct sv.vetura
							From Shitjet_Veturave sv)

------------------------------

/*Veturen dhe totalin e shitjes per secilin brend*/

Select  v.brandy, v.tip, sv.vetura,sum(sv.nr_SasisVeturave) [Sasisa e Shitur]
From Shitjet_Veturave sv Join  Vetura v on sv.vetura = v.nr_Shasis
Group By sv.vetura, brandy,v.tip, sv.vetura

Select v.brandy, (select sum(sv.nr_SasisVeturave)
				from  Shitjet_Veturave sv
				where v.nr_Shasis = sv.vetura) as [Vetura_e_shitur]
from Vetura v




 

 --Shfaqni veturat qe jane shitur min 5 here --
Select  v.brandy, v.tip, sv.vetura,sum(sv.nr_SasisVeturave) [Sasisa e Shitur]
From Shitjet_Veturave sv Join  Vetura v on sv.vetura = v.nr_Shasis
Group By sv.vetura, brandy,v.tip, sv.vetura
Having sum(sv.nr_SasisVeturave) > 5	
