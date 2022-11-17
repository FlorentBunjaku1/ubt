create database PersoniDB

use PersoniDB

create table Personi 
(
	PersoniID decimal(18,0) primary key ,
	Emri varchar(50) not null,
	Mbiemri varchar(50) not null,
	Data_Lindjes date,
	vendi_lindjes varchar(50), 
	Ssn char(11),
	Pesha decimal(18,0) not null default 0
);

create table Hobi
(
	ID_hobi decimal(18,0) primary key,
	Emri_Hobit varchar(100) not null,
	Koment text
);

create table Kontakti 
(
	KontaktID decimal(18, 0) primary key,
	IDpersoni decimal(18, 0),
	Lloji_Kontaktit varchar(25),
	Vlera_Kontaktit varchar(50)

	foreign key (IDpersoni) references Personi (PersoniID)

);

create table Personi_Hobi 
(
	ID_personHobi decimal(18,0) primary key,
	ID_Personi decimal(18,0) foreign key references Personi(PersoniID),
	ID_Hobi decimal(18, 0) foreign key References Hobi (ID_hobi)
);


select * from Personi

INSERT INTO Personi VALUES (1,'Burim','Gashi','1980-11-20','Lipjan','012-05-1120', 95);
INSERT INTO Personi VALUES (2,'Agon', 'Buja','1977-01-22', 'Ferizaj','012-05-1121', 75);
INSERT INTO Personi VALUES (3,'Albulena','Hamiti','1975-12-23','Rahovec','012-05-1122', 56);
INSERT INTO Personi VALUES (4,'Kim','Gashi','2011-06-01','Peje','012-05-1123', 11);
INSERT INTO Personi VALUES (5,'Flori','Kollari','1975-12-23', 'Prishtine', '012-05-1124', 75);
INSERT INTO Personi VALUES (6,'Enver','Berisha','1959-10-03', 'Prishtine', '012-05-1125', 55);
INSERT INTO Personi VALUES (7,'Yll','Sopa','1985-12-23', 'Gjakove','012-05-1126', 64);
INSERT INTO Personi VALUES (8,'Florent','Kollari', '1987-01-22', 'Prishtine','012-05-1127', 77);
INSERT INTO Personi VALUES (9,'Ron','Krasniqi','1985-12-23', 'Rahovec','012-05-1128', 90);
INSERT INTO Personi VALUES (10, 'Valdet','Kollari', '1989-02-28', 'Prishtine','012-05-1129', 78);


select * from Personi

select * from Kontakti

INSERT INTO Kontakti VALUES (1, 1, 'linja fikse', '038-224461');
INSERT INTO Kontakti VALUES (2, 1, 'email','burim.gashi@amce.ks');
INSERT INTO Kontakti VALUES (3, 1, 'email','bg@my_kompania.ks');
INSERT INTO Kontakti VALUES (4, 1, 'skype', '+37745890007');
INSERT INTO Kontakti VALUES (5, 4, 'linja fikse','033-562900');
INSERT INTO Kontakti VALUES (6, 4, 'celulari', '049390411');
INSERT INTO Kontakti VALUES (7, 5, 'email', 'flori.kollari@amce.ks');
INSERT INTO Kontakti VALUES (8, 7, 'linja fikse', '+38139299005');
INSERT INTO Kontakti VALUES (9, 7, 'celulari', '+37745111888');

select * from Hobi

INSERT INTO Hobi VALUES (1, 'Pikturim','Aplikimi boj?s, pigment, ngjyra ose mediume t? tjera n? nj? sip?rfaqe.');
INSERT INTO Hobi VALUES (2, 'Peshkim','Kapjen e peshqeve.');
INSERT INTO Hobi VALUES (3, 'Zhytje n?n uj?','Futja n?n uj? me ose pa aparatin e frym?marrjes (zhytje/frym?-mbajtja).');
INSERT INTO Hobi VALUES (4, 'Shah','Dy lojtar?t kan? 16 shifra secili. Ata l?vizin ato nga tet?-me-tet? rrjet sipas rregullave t? ve?anta.');
INSERT INTO Hobi VALUES (5, 'Let?rsi ',' Leximi i librave.');
INSERT INTO Hobi VALUES (6, 'Yoga','Nj? sport qe aplikon praktike fizike, mendore, dhe shpirt?rore q? filloi n? Indin? e lasht?.');
INSERT INTO Hobi VALUES (7, 'Mbledhjen e Pullave ','Mbledhja e pullave postare dhe objekteve t? ngjashme.');
INSERT INTO Hobi VALUES (8, 'Astronomi','V?zhgimin e objekteve astronomike t? tilla si h?nes, planetet, yjet, dhe galaksit?.');
INSERT INTO Hobi VALUES (9, 'Mikroskopia', 'V?zhgimin e objekteve shum? t? vogla duke p?rdorur nj? mikroskop.');

select * from Personi_Hobi

INSERT INTO personi_hobi VALUES (1, 1, 1);
INSERT INTO personi_hobi VALUES (2, 1, 4);
INSERT INTO personi_hobi VALUES (3, 1, 5);
INSERT INTO personi_hobi VALUES (4, 5, 2);
INSERT INTO personi_hobi VALUES (5, 5, 3);
INSERT INTO personi_hobi VALUES (6, 7, 8);
INSERT INTO personi_hobi VALUES (7, 4, 4);
INSERT INTO personi_hobi VALUES (8, 9, 8);
INSERT INTO personi_hobi VALUES (9, 9, 9);

/*1. Krijoni një stored procedure për te gjetur personat qe kane peshe me te madhe se pesha
mesatare e te gjithë personave*/
Alter Proc PMMP
	 @pesha decimal = 0
As
Begin

	Select @pesha=avg(p.pesha)
	From Personi p; 

	Select *
	From Personi p 
	Where  p.Pesha > @pesha
	Order By p.Pesha DESC;
End

Exec PMMP

/*2. Krijoni një stored procedure qe shfaq personat ne baze te inputit qyteti.*/
Create Proc PIQ
	@qyteti varchar(50)
As
Begin
	Select *
	From Personi p 
	Where p.vendi_lindjes = @qyteti
End

Exec PIQ 'Prishtine'


/*3. Krijoni një procedure e cila shfaq numrin e hobi-ve te personit ne baze te id-se. Nese personi
përkatës ka 1 hobi të shfaqet mesazhi: Personi ka vetëm një hobi, dhe nëse personi ka më
shumë se 1 hobi të shfaqet mesazhi: Personi ka më shumë se një hobi.*/
Create Proc PHP
	@id decimal,
	@nrHobive int = 0
AS
Begin
	Select @nrHobive = count(*)
	From Personi_hobi ph
	Where ph.ID_Personi = @id
	
	IF (@nrHobive = '0')
		Begin
			PRINT 'Personi Nuk ka asnje hobi'
		End
	ELSE IF(@nrHobive = 1)
		Begin
			PRINT 'Personi ka nje hobi'
		End 
	ELSE
		BEGIN
			PRINT 'Personi ka me shume se nje hobi'
		END
End

Exec PHP 4


/*4. Krijoni një procedure e cila tregon përqindjen e personave nga një qytet, ne baze të inputit të
qytetit. */
Alter Proc PNQI
	@qyteti varchar(50),
	@perqindja float = 0
AS
Begin
	declare @nrPersonave int = (Select  count(*)
							From Personi)

	declare @nrPerQytet int = (Select count(*)
					From Personi p
					Where p.vendi_lindjes = @qyteti)

	PRINT 'Personat nga ' + @qyteti + ' Jane: ' + convert(varchar,(100*@nrPerQytet/@nrPersonave)) + ' %'
End

Exec PNQI 'Prishtine'



/*5. Krijoni procedure e cila tregon përqindjen e personave që kanë hobi dhe përqindjen e hobive
që nuk e ka asnjë person.*/
Alter Proc PPHPH
	@persona int = 0,
	@hobit int = 0
AS
Begin
	SET @persona = (Select count(*) From Personi)
	SET @hobit = (Select count(*) From Hobi)

	Declare @meHobi int = (Select count(*) From Personi_Hobi ph)
	Declare @hobiPaP int = (Select count(*) From Hobi Where ID_hobi NOT IN (Select ID_hobi From Personi_Hobi))

	PRINT 'Perqindja e personave qe kane hobi eshte : ' + convert(varchar, (100*@meHobi/@persona)) + ' %'
	PRINT 'Perqindja e hobive qe nuk kane asnje person eshte: ' + convert(varchar, (100*@hobiPaP/@hobit)) + ' %'
End

Exec PPHPH


/*6. Krijoni një procedure e cila shton një person dhe kete person që sapo krijoi e lidh me hobin
“Shah”. */
Alter Proc SHTP
	@emri varchar(50),
	@mbiemri varchar(50),
	@dataLindjes date,
	@vendiLindjes varchar(50),
	@ssn char(11),
	@pesha decimal,
	@personiID decimal = 0
AS
Begin
	
	Declare @lastID decimal = (Select TOP 1 ID_personHobi From Personi_Hobi Order By ID_personHobi DESC) + 1
	SET @personiID = (Select TOP 1 p.PersoniID From Personi p Order By p.PersoniID DESC) + 1

	Insert Into Personi Values(@personiID,@emri,@mbiemri,@dataLindjes,@vendiLindjes,@ssn,@pesha)
	Insert Into Personi_Hobi Values(@lastID, @personiID, 4);
End

Exec SHTP 'Florent', 'Bunjaku', '11-12-1232', 'Vu', '23213213213213', '70'


/*7. Krijoni procedurën e cila gjen personat që nuk kanë asnjë hobi dhe kanë peshën me shumë se
inputi që i dërgohet.*/
Create Proc PHPI
	@pesha decimal
As
Begin
	
	Select *
	From Personi p
	Where p.personiID NOT IN (Select ph.ID_Personi From Personi_Hobi ph) AND p.Pesha > @pesha

End

Exec PHPI 75


/*8. Krijo një stored procedure ne te cilën mund te shfaqen Personat ne baze te inputit ID.*/
Create Proc PIID
	@id decimal
AS
Begin
	Select *
	From Personi
	Where PersoniID = @id
End

PIID 2
