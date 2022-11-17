Use Ushtrimi3

/*Listoni minimumin e sasis� s� produkteve t� porositura*/
Select min(p.Sasia) [Min_i_porosive]
From Produkti p

/*Selektoni mesataren e �mimit t� t� gjitha produkteve.*/
Select avg(p.CmimiPerNjesi) [Mesatarja_e_cmimit]
From Produkti p

/*3.Shfaqni vendbanimin e klient�ve (pa p�rs�ritjen e tyre)*/
Select Distinct k.Vendbanimi
From Klienti k

/*Selektoni t� gjith� klient�t t� cil�t kan� porositur produkte t� caktuara. Selektimi t� b�het n� baz� t� id-s� s� porosis�,
emrit dhe mbiemrit t� klientit, emrit t� produktit dhe sasis� s� porosis�.*/
Select pr.PorosiaID, k.Emri, k.Mbiemri, p.EmriProduktit, pr.Sasia
From Produkti p, Porosia pr, Klienti k
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti)

/*Selektoni t� gjitha porosit� e b�ra nga klienti Gresa Gashi duke p�rfshir�, emrin dhe mbiemrin e klientit,
dat�n e porosis� si dhe emrin dhe sasin� e produkteve t� porositura*/
Select k.Emri, k.Mbiemri, p.EmriProduktit, pr.Sasia
From Produkti p, Porosia pr, Klienti k
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti) AND k.Emri='Gresa' AND k.Mbiemri='Gashi'

/*Num�roni produktet n� baz� t� prodhuesve t� tyre*/
Select p.prodhuesi, count(p.EmriProduktit) [Nr_i_produkteve]
From Produkti p
Group by p.prodhuesi

/*Shfaqni shum�n e sasive t� porosive t� b�ra p�r secilin klient*/
Select k.Emri, k.Mbiemri,pr.Klienti, sum(pr.Sasia) [shuma_e_porosive]
From Klienti k, Porosia pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri,pr.Klienti

/*Shfaqni t� gjitha porosit� t� b�ra p�r �PC� si dhe t� shfaqet emri i prodhuesit t� tyre.*/
Select pr.PorosiaID, p.EmriProduktit, pr.Klienti, pr.Sasia, p.prodhuesi
From Produkti p, Porosia pr
Where (p.ID=pr.Produkti) AND p.EmriProduktit='PC'


/*T� tregoni numrin e porosive t� b�ra p�r secilin klient*/
Select k.Emri, k.Mbiemri, pr.Klienti, count(pr.PorosiaID) [Nr_Porosive]
From Klienti k, Porosia  pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri, pr.Klienti


/*Shfaqni shum�n e produkteve t� porositura nga klienti Albin Krasniqi*/
Select k.Emri, k.Mbiemri , sum(pr.Sasia) [shuma_e_porosive]
From  Klienti k, Porosia  pr
Where (k.Id=pr.Klienti) AND k.Emri='Albin' AND k.Mbiemri='Krasniqi'
Group by k.Emri, k.Mbiemri

/*Shfaqni t� gjitha produktet q� jan� porositur n� sasi mes 5 dhe 10 si dhe porosia �sht� b�r� n� datat �2020-10-14� dhe �2020-10-10�.*/
Select pr.PorosiaID, k.Emri, k.Mbiemri,p.prodhuesi,pr.Sasia, pr.Data
From Produkti p, Klienti k, Porosia pr
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti) AND (pr.Sasia BETWEEN 5 AND 10) AND (pr.Data='2020-10-14' OR pr.Data='2020-10-10')

/*Shfaqni vet�m klient�t t� cil�t kan� b�r� m� shum� se 1 porosi dhe b�ni renditjen e tyre
n� baz� t� numrit t� porosive (nga me e madhja tek me e vogla.)*/
Select k.Emri, k.Mbiemri, pr.Klienti, count(*) [Shuma e porosive]
From Klienti k, Porosia pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri, pr.Klienti
Having count(*) > 1
Order by [Shuma e porosive] desc

/*Mosha si atribut i derivuar nga vitiLindjes*/
Select k.Emri, k.Mbiemri, YEAR(getdate())-YEAR(k.Datelindja) [Mosha]
From Klienti k