



/*1. Listo shtetet prej nga vijn skuadrat sipas numrit te golave te shenuara kur ata kan qene
nenkampion.*/
Select s.Shteti, count(fk.Golat_shenueraN) 'Golat e shenuara'
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.NenKampioni
Where Exists (Select * From Finalja_LK fk Where fk.NenKampioni = s.ID_Skuadres)
Group By s.Shteti

/*2. Selekto të gjitha skuadrat te cilat kanë shënuar me pak gola si nenkampion se sa shuma e
golave te cilat jan shenuara nga skuadrat kampione*/
Select s.Emri, sum(fk.Golat_shenueraN) 'Golat e shenuara'
From Finalja_LK fk JOIN Skuadra s ON fk.NenKampioni = s.ID_Skuadres
Group By s.Emri
Having sum(fk.Golat_shenueraN) <ALL (Select sum(fk.Golat_shenueraK)
										From Finalja_LK fk 
										Group By fk.Kampioni)


/*3. Selekto skuadrat të cilat kan pasur shumën e shikuesve më të ulet se sa mesatarja e
shikueshmërisë e të gjitha skuadrave nenkampione.*/
Select sk.Emri, sum(s.Kapaciteti_Ulseve)
From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni OR sk.ID_Skuadres = fk.NenKampioni
Group By sk.Emri
Having sum(s.Kapaciteti_Ulseve) <ANY (Select avg(s.Kapaciteti_Ulseve)
									  From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi
									  Group By fk.NenKampioni)


/*4. Selekto skuadrat te cilat kan shenuar me pak gola si nenkampion se sa shuma e golave te
cilat jan shenuara kur kampion ka qene Bayern.*/
Select s.Emri, sum(fk.Golat_shenueraN) 'Golat'
From Finalja_LK fk JOIN Skuadra s ON fk.NenKampioni = s.ID_Skuadres
Group By s.Emri
Having sum(fk.Golat_shenueraN) <ANY (Select sum(fk.Golat_shenueraK)
								 From Finalja_LK fk
								 Where fk.Kampioni = (Select s.ID_Skuadres From Skuadra s Where s.Emri = 'Bayern')
								 Group By fk.Kampioni)



/*5. Gjeni se cili skuader kampione ka pasur shikueshmëri me te vogel prej te gjithë
skuadrave tjera*/
Select s.Emri, SUM(st.Kapaciteti_Ulseve)
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.Kampioni JOIN Stadiumi st ON st.Stadium_ID = fk.Stadiumi
Group By s.Emri
Having SUM(st.Kapaciteti_Ulseve) <= ALL (Select sum(st.Kapaciteti_Ulseve) From Finalja_LK fk JOIN Stadiumi st ON fk.Stadiumi = st.Stadium_ID Group By fk.Kampioni)

/*6. Shfaqeni numrin e shikueshmërisë për secilin fitues të ligës se kampionëve.*/
Select s.Emri, SUM(st.Kapaciteti_Ulseve)
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.Kampioni JOIN Stadiumi st ON st.Stadium_ID = fk.Stadiumi
Where s.ID_Skuadres IN (Select fk.Kampioni From Finalja_LK fk)
Group By s.Emri


/*7. Selekto Lojtarin e Finales për ekipet kampione*/
Select f.Sezona,s.Emri, f.Lojtori_Finales
From Skuadra s JOIN Finalja_LK f ON s.ID_Skuadres = f.Kampioni
Where f.Lojtori_Finales NOT LIKE ''

