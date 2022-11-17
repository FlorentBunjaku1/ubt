Use Ushtrimi3

/*Listoni minimumin e sasisë së produkteve të porositura*/
Select min(p.Sasia) [Min_i_porosive]
From Produkti p

/*Selektoni mesataren e çmimit të të gjitha produkteve.*/
Select avg(p.CmimiPerNjesi) [Mesatarja_e_cmimit]
From Produkti p

/*3.Shfaqni vendbanimin e klientëve (pa përsëritjen e tyre)*/
Select Distinct k.Vendbanimi
From Klienti k

/*Selektoni të gjithë klientët të cilët kanë porositur produkte të caktuara. Selektimi të bëhet në bazë të id-së së porosisë,
emrit dhe mbiemrit të klientit, emrit të produktit dhe sasisë së porosisë.*/
Select pr.PorosiaID, k.Emri, k.Mbiemri, p.EmriProduktit, pr.Sasia
From Produkti p, Porosia pr, Klienti k
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti)

/*Selektoni të gjitha porositë e bëra nga klienti Gresa Gashi duke përfshirë, emrin dhe mbiemrin e klientit,
datën e porosisë si dhe emrin dhe sasinë e produkteve të porositura*/
Select k.Emri, k.Mbiemri, p.EmriProduktit, pr.Sasia
From Produkti p, Porosia pr, Klienti k
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti) AND k.Emri='Gresa' AND k.Mbiemri='Gashi'

/*Numëroni produktet në bazë të prodhuesve të tyre*/
Select p.prodhuesi, count(p.EmriProduktit) [Nr_i_produkteve]
From Produkti p
Group by p.prodhuesi

/*Shfaqni shumën e sasive të porosive të bëra për secilin klient*/
Select k.Emri, k.Mbiemri,pr.Klienti, sum(pr.Sasia) [shuma_e_porosive]
From Klienti k, Porosia pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri,pr.Klienti

/*Shfaqni të gjitha porositë të bëra për ‘PC’ si dhe të shfaqet emri i prodhuesit të tyre.*/
Select pr.PorosiaID, p.EmriProduktit, pr.Klienti, pr.Sasia, p.prodhuesi
From Produkti p, Porosia pr
Where (p.ID=pr.Produkti) AND p.EmriProduktit='PC'


/*Të tregoni numrin e porosive të bëra për secilin klient*/
Select k.Emri, k.Mbiemri, pr.Klienti, count(pr.PorosiaID) [Nr_Porosive]
From Klienti k, Porosia  pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri, pr.Klienti


/*Shfaqni shumën e produkteve të porositura nga klienti Albin Krasniqi*/
Select k.Emri, k.Mbiemri , sum(pr.Sasia) [shuma_e_porosive]
From  Klienti k, Porosia  pr
Where (k.Id=pr.Klienti) AND k.Emri='Albin' AND k.Mbiemri='Krasniqi'
Group by k.Emri, k.Mbiemri

/*Shfaqni të gjitha produktet që janë porositur në sasi mes 5 dhe 10 si dhe porosia është bërë në datat ‘2020-10-14’ dhe ‘2020-10-10’.*/
Select pr.PorosiaID, k.Emri, k.Mbiemri,p.prodhuesi,pr.Sasia, pr.Data
From Produkti p, Klienti k, Porosia pr
Where (p.ID=pr.Produkti AND k.Id=pr.Klienti) AND (pr.Sasia BETWEEN 5 AND 10) AND (pr.Data='2020-10-14' OR pr.Data='2020-10-10')

/*Shfaqni vetëm klientët të cilët kanë bërë më shumë se 1 porosi dhe bëni renditjen e tyre
në bazë të numrit të porosive (nga me e madhja tek me e vogla.)*/
Select k.Emri, k.Mbiemri, pr.Klienti, count(*) [Shuma e porosive]
From Klienti k, Porosia pr
Where (k.Id=pr.Klienti)
Group by k.Emri, k.Mbiemri, pr.Klienti
Having count(*) > 1
Order by [Shuma e porosive] desc

/*Mosha si atribut i derivuar nga vitiLindjes*/
Select k.Emri, k.Mbiemri, YEAR(getdate())-YEAR(k.Datelindja) [Mosha]
From Klienti k