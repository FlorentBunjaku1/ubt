create database L11_1920
use L11_1920

create table Vetura
(
	nr_Shasis int primary key,
	brandy varchar(20) not null,
	tip varchar(20) not null,
	qmimiStartues money not null,
	pershkrimi text
)
Insert into Vetura values (100,'Porsche','Panamera',97300,'Panamera GTS dhe Sport Turismo GTS.GTS twin-turbo 4.8-litra V8 prodhon 453 kuaj fuqi.'); 
Insert into Vetura values (200,'BMW','M5',113800,'M5 4.4Litra turbo V8 prodhon 600 kuaj fuqi.'); 
Insert into Vetura values (300,'Audi','S7',97750,'S7 Sportback. 4.0-litra TFSI V8 prodhon 450 kuaj fuqi.');
Insert into Vetura values (400,'Mercedes-Benz','AMG CLS 53',92000,'V8 me twin-turbo 3,0 l I-6 prodhon 429 kuaj fuqi.');

Select *
From Shitjet_Veturave
Select *
From Vetura

/*------------------------------------------*/
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

Select *
From Shitjet_Veturave

/*------------------------------------------*/
/*Të gjeni cilat vetura kan totalin i shitjeve të tyre është me të ulta se qmimi
me i lartë startues të ndonje nga veturat*/
Select	v.brandy, sh.qmimiShitjes
From Shitjet_Veturave sh inner join Vetura v ON v.nr_Shasis = sh.vetura
Where sh.qmimiShitjes < (Select MAX(v.qmimiStartues) as 'cmimi_me_larte'
							From Vetura v);

/*Të shfaqeni cila veture nuk është shitur as një e vetëm.*/
Select v.brandy
From Vetura v left join Shitjet_Veturave sh ON v.nr_Shasis = sh.vetura
Where sh.vetura is null;

Select v.brandy
From Vetura v left join Shitjet_Veturave sh ON v.nr_Shasis = sh.vetura
Where v.nr_Shasis NOT IN (Select distinct sh.vetura
							From Shitjet_Veturave sh);

/*Shfaqini veturat dhe sasia totale e shitjeve për secilin brand */
Select	v.brandy, v.tip, SUM(sh.nr_SasisVeturave) as 'Sasia e shitur'
From Shitjet_Veturave sh  join Vetura v ON v.nr_Shasis = sh.vetura
Group by v.brandy, v.tip

Select v.brandy, (Select SUM(sh.nr_SasisVeturave)
				  From Shitjet_Veturave sh 
				  Where v.nr_Shasis = sh.vetura) as 'Sasia e shitur'
From Vetura v
Order by [Sasia e shitur] desc

/*Shfaqini veturat që janë shitur min 5 ose më shumë vetura në sasi */
Select v.brandy, SUM(sh.nr_SasisVeturave) as 'Sasia e Shitur' 
From Vetura v JOIN Shitjet_Veturave sh ON v.nr_Shasis = sh.vetura
Group By v.brandy
HAVING SUM(sh.nr_SasisVeturave) >= 5

Select v.brandy
From Vetura v
Where v.nr_Shasis IN (Select sh.vetura
					  From Shitjet_Veturave sh
					  Group by sh.vetura
					  HAVING SUM(sh.nr_SasisVeturave) >= 5);


