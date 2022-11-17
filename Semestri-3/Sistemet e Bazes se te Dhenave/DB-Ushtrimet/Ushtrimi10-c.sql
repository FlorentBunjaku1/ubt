

Select DISTINCT s.Shteti, count(*)
From Finalja_LK f JOIN Skuadra s ON f.NenKampioni = s.ID_Skuadres
Group By s.Shteti

Select s.Emri, sum(fk.Golat_shenueraN) 'Golat e shenuara'
From Finalja_LK fk JOIN Skuadra s ON s.ID_Skuadres = fk.NenKampioni
Group By s.Emri
Having SUM(fk.Golat_shenueraN) <ALL (Select sum(f.Golat_shenueraK)
									 From Finalja_LK f
									 Group By f.Kampioni)


Select s.Emri, sum(st.Kapaciteti_Ulseve)
From Stadiumi st JOIN Finalja_LK fk ON st.Stadium_ID = fk.Stadiumi JOIN Skuadra s ON s.ID_Skuadres = fk.Kampioni OR fk.NenKampioni = s.ID_Skuadres
Group By s.Emri
Having sum(st.Kapaciteti_Ulseve) <Any (Select avg(s.Kapaciteti_Ulseve) From Finalja_LK f JOIN Stadiumi s ON f.Stadiumi = s.Stadium_ID Group By f.NenKampioni) 


Select s.Emri,sum(fk.Golat_shenueraN) 'Golat e shenuara' 
From Finalja_LK fk JOIN Skuadra s ON fk.NenKampioni = s.ID_Skuadres
Group By s.Emri
Having sum(fk.Golat_shenueraN) <ANY (Select sum(f.Golat_shenueraK)
									From Finalja_LK f
									Where f.Kampioni = (Select s.ID_Skuadres From Skuadra s Where s.Emri = 'Bayern')
									Group By f.Sezona)

Select sk.Emri, sum(s.Kapaciteti_Ulseve)
From Skuadra sk JOIN Finalja_LK f ON sk.ID_Skuadres = f.Kampioni JOIN Stadiumi s ON f.Stadiumi = s.Stadium_ID
Group By sk.Emri
Having sum(s.Kapaciteti_Ulseve) <=ALL (Select sum(s.Kapaciteti_Ulseve)
									  From Finalja_LK f JOIN Stadiumi s ON f.Stadiumi = s.Stadium_ID	
									  Group By f.Kampioni)

Select sk.Emri, sum(s.Kapaciteti_Ulseve)
From Skuadra sk JOIN Finalja_LK f ON sk.ID_Skuadres = f.Kampioni JOIN Stadiumi s ON f.Stadiumi = s.Stadium_ID
Group By sk.Emri
Order By sk.Emri


Select s.Emri, f.Lojtori_Finales
From Finalja_LK f JOIN Skuadra s ON f.Kampioni = s.ID_Skuadres
Where f.Lojtori_Finales NOT LIKE ''





Select sk.Emri,SUM(s.Kapaciteti_Ulseve)
From Skuadra sk JOIN  Finalja_LK f ON f.Kampioni = sk.ID_Skuadres OR f.NenKampioni = sk.ID_Skuadres
JOIN Stadiumi s ON s.Stadium_ID = f.Stadiumi
Group By sk.Emri
Having SUM(s.Kapaciteti_Ulseve) < (Select AVG(s.Kapaciteti_Ulseve)
									From Finalja_LK f JOIN Stadiumi s ON s.Stadium_ID = f.Stadiumi
									Where f.Kampioni = (Select sk.ID_Skuadres From Skuadra sk Where sk.Emri = 'Liverpool')
									Group By f.Sezona)



Select s.Emri, SUM(f.Golat_shenueraN)
From Finalja_LK f JOIN Skuadra s ON f.NenKampioni = s.ID_Skuadres
Group By s.Emri
Having SUM(f.Golat_shenueraN) <ALL (Select SUM(f.Golat_shenueraK)
									From Finalja_LK f 
									Group By f.Kampioni)



Select TOP 3 s.Shteti,count(*) 'Numri i Fitoreve'
From Finalja_LK f JOIN Skuadra s ON f.Kampioni = s.ID_Skuadres
Where f.Golat_shenueraN > 1
Group By s.Shteti
Order By 'Numri i Fitoreve' DESC





