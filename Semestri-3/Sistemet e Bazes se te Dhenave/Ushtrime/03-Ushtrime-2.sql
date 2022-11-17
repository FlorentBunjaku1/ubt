
CREATE DATABASE [Spitali]

USE [Spitali]


CREATE TABLE [dbo].[Doktori](
	[Id] [int] NOT NULL,
	[Emri] [varchar](50) NULL,
	[Mbiemri] [varchar](50) NULL,
	[Kualifikimi] [char](20) NULL,
	[Spitali] [int] NULL,
	[PagaMujore] [decimal](7, 2) NULL,
 CONSTRAINT [PK_Doktori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Pacienti](
	[Id] [varchar](10) NOT NULL,
	[Emri] [varchar](50) NULL,
	[Mbiemri] [varchar](50) NULL,
	[Datelindja] [date] NULL,
	[Vendbanimi] [varchar](50) NULL,
	[Doktori] [int] NULL,
	[Spitali] [int] NULL,
 CONSTRAINT [PK_Pacienti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Spitali](
	[Id] [int] NOT NULL,
	[Emri] [varchar](50) NULL,
	[Vendi] [varchar](20) NULL,
 CONSTRAINT [PK_Spitali] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (1, N'Blerton', N'Gashi', N'Dr                  ', 1, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (2, N'Dardan ', N'Krasniqi', N'Dr                  ', 2, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (3, N'Adelina', N'Sefa', N'Dr                  ', 8, CAST(890.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (4, N'Jon ', N'Hoxha', N'Dr                  ', 5, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (5, N'Marigona', N'Kryeziu', N'Dr                  ', 1, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (6, N'Lorik', N'Gashi', N'Dr                  ', 2, CAST(900.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (7, N'Erzen', N'Mehmeti', N'Dr                  ', 8, CAST(1200.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (8, N'Flutura', N'Krasniqi', N'Dr                  ', 1, CAST(1250.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (9, N'Jetlira', N'Hoxha', N'Dr                  ', 12, CAST(1000.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (10, N'Samir', N'Shala', N'Dr                  ', 1, CAST(1400.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (11, N'Fjolla', N'Ahmeti', N'Dr                  ', 12, CAST(800.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (12, N'Mirjeta', N'Abazi', N'Dr                  ', 3, CAST(950.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (13, N'Eda', N'Shala', N'Dr                  ', 3, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (14, N'Arta', N'Krasniqi', N'Dr                  ', 7, CAST(1350.00 AS Decimal(7, 2)))
INSERT [dbo].[Doktori] ([Id], [Emri], [Mbiemri], [Kualifikimi], [Spitali], [PagaMujore]) VALUES (15, N'Shend', N'Kryeziu', N'Dr                  ', 8, CAST(1400.00 AS Decimal(7, 2)))
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P001', N'Blend', N'Gashi', CAST(N'1999-12-17' AS Date), N'Lipjan', 10, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P002', N'Altin ', N'Shala', CAST(N'2000-02-15' AS Date), N'Prishtine', 6, 2)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P003', N'Visar', N'Krasniqi', CAST(N'2001-08-14' AS Date), N'Ferizaj', 12, 3)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P004', N'Anila ', N'Mehmeti', CAST(N'1999-06-19' AS Date), N'Gjilan', 14, 7)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P005', N'Gresa', N'Gashi', CAST(N'2001-08-25' AS Date), N'Lipjan', 14, 7)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P006', N'Enis', N'Zeka', CAST(N'2000-04-30' AS Date), N'Ferizaj', 6, 2)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P007', N'Valentina', N'Azemi', CAST(N'2000-01-09' AS Date), N'Prishtine', 10, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P008', N'Albin', N'Krasniqi', CAST(N'2001-10-07' AS Date), N'Ferizaj', 12, 3)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P009', N'Taulant', N'Shala', CAST(N'2000-10-12' AS Date), N'Lipjan', 9, 12)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P010', N'Besa', N'Mehmeti', CAST(N'2001-05-27' AS Date), N'Prishtine', 9, 12)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P011', N'Adelina', N'Zeka', CAST(N'2000-07-13' AS Date), N'Gjilan', 8, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P012', N'Gresa', N'Krasniqi', CAST(N'1962-02-15' AS Date), N'Vushtrri', 5, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P013', N'Muhamet', N'Shala', CAST(N'1983-11-07' AS Date), N'Peje', 10, 1)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P014', N'Agim', N'Kryeziu', CAST(N'1972-08-20' AS Date), N'Prishtine', 12, 3)
INSERT [dbo].[Pacienti] ([Id], [Emri], [Mbiemri], [Datelindja], [Vendbanimi], [Doktori], [Spitali]) VALUES (N'P015', N'Naim', N'Berisha', CAST(N'1976-04-30' AS Date), N'Lipjan', 9, 12)
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (1, N'QKUK', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (2, N'Rezonanca', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (3, N'Aloka', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (4, N'Spitali Amerikan', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (5, N'Kubati', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (6, N'Vita Hospital', N'Prishtine')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (7, N'Spitali i Vushtrrise', N'Vushtrri')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (8, N'E-Lab', N'Ferizaj')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (9, N'Spitali I Pejes', N'Peje')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (10, N'Spitali i Gjakoves', N'Gjakove')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (11, N'Spitali i Prizrenit', N'Prizren')
INSERT [dbo].[Spitali] ([Id], [Emri], [Vendi]) VALUES (12, N'Spitali i Mitrovices', N'Mitrovice')
ALTER TABLE [dbo].[Doktori]  WITH CHECK ADD  CONSTRAINT [FK_Doktori_Spitali] FOREIGN KEY([Spitali])
REFERENCES [dbo].[Spitali] ([Id])
GO
ALTER TABLE [dbo].[Doktori] CHECK CONSTRAINT [FK_Doktori_Spitali]
GO
ALTER TABLE [dbo].[Pacienti]  WITH CHECK ADD  CONSTRAINT [FK_Pacienti_Doktori] FOREIGN KEY([Doktori])
REFERENCES [dbo].[Doktori] ([Id])
GO
ALTER TABLE [dbo].[Pacienti] CHECK CONSTRAINT [FK_Pacienti_Doktori]
GO
ALTER TABLE [dbo].[Pacienti]  WITH CHECK ADD  CONSTRAINT [FK_Pacienti_Spitali] FOREIGN KEY([Spitali])
REFERENCES [dbo].[Spitali] ([Id])
GO
ALTER TABLE [dbo].[Pacienti] CHECK CONSTRAINT [FK_Pacienti_Spitali]
---------------------------------------------


/*1. Listo pagën mesatare të Doktorëve*/
Select AVG(d.PagaMujore) 'Paga_Mesatare'
From Doktori d


/*2. Listo pagën maksimale të doktorëve*/
Select MAX(d.PagaMujore) as [Paga_Maksimale]
From Doktori d


/*3. Selekto të gjithë pacientët të cilët janë trajtuar në ndonjë spital. Selektimi të bëhet në bazë
të emrit, mbiemrit dhe vendbanimit të pacientit si dhe emrit të spitalit ku pacienti është
trajtuar.*/
Select p.Emri, p.Mbiemri, p.Vendbanimi , s.Emri
From Pacienti p, Spitali s
Where p.Spitali = s.Id

/*4. Listo spitalet sipas numrit të doktorëve që punojnë në to.*/
Select s.Emri, COUNT(*) 'Numri_i_Dokotoreve'
From Doktori d, Spitali s
Where d.Spitali = s.Id
Group By s.Emri


/*5. Selektoni të gjithë pacientët të cilët janë trajtuar në spitalin ‘QKUK’. Selektimi të bëhet
në bazë të IDs, emrit, mbiemrit dhe datëlindjes së pacientit.*/
Select p.Id, p.Emri, p.Mbiemri, p.Datelindja, p.Spitali
From Pacienti p
Where p.Spitali = (Select s.Id
				   From Spitali s
				   where s.emri = 'QKUK');

				 
/*6. Selektoni Emrin, Mbiemrin, datëlindjen dhe moshën e secilit pacientë.*/
Select p.Emri, p.Mbiemri, p.Datelindja, DATEDIFF(YEAR,p.Datelindja,GETDATE()) 'Mosha'
From Pacienti p


/*7. Selekto të gjithë pacientët të cilët janë trajtuar tek doktori ‘Mirjeta Abazi’. Selektimi të
bëhet në bazë të emrit, mbiemrit dhe vendbanimit të pacientit si dhe në bazë të emrit dhe
mbiemrit të doktorit. */
Select p.Emri, p.Mbiemri, p.Vendbanimi, d.Emri , d.Mbiemri
From Pacienti p, Doktori d
Where p.Doktori = d.Id AND d.Emri = 'Mirjeta' AND d.Mbiemri = 'Abazi';


/*8. Selekto të gjithë pacientët të cilët janë trajtuar ndonjëherë në spital nga ndonjë doktor i
caktuar. Seleketimi të bëhet në bazë të ID-së dhe vendit të spitalit, Emrit, mbiemrit të
pacientit si dhe emrit, mbiemrit të doktorit.*/
Select s.Id, p.Emri,p.Mbiemri, d.Emri as [EmriDoktorit] , d.Mbiemri as [MbiemriDoktorit], s.Vendi
From Pacienti p, Doktori d, Spitali s
Where p.Spitali = s.Id AND p.Doktori = d.Id
Group by s.Id, p.Emri,p.Mbiemri, d.Emri , d.Mbiemri , s.Vendi
HAVING COUNT(*) > 0;


/*9. Listo të gjithë pacientët të cilët janë trajtuar në spitalin ‘QKUK’ dhe ‘Aloka’. Selektimi të
bëhet në bazë të ID-së, emrit dhe mbiemrit të pacientit, ID-së dhe emrit të spitalit si dhe
të shfqet emri i doktorit. Gjithashtu rezultati të renditet në atë mënyrë që pacientët e
spitalit Aloka të renditën të parët. */
Select p.Id, p.Emri, p.Mbiemri, s.Id, s.Emri
From Pacienti p, Spitali s
Where p.Spitali = s.Id AND s.Emri IN ('Aloka','QKUK')
Order By s.Id DESC



/*10. Selektoni spitalet në bazë të numrit të pacientëve */
Select s.Emri, COUNT(*) 'Nr_Pacienteve'
From Spitali s, Pacienti p
Where s.Id = p.Spitali
Group By s.Emri;

/*11. Selekto të gjithë pacientët e lindur në mes datave '1998-01-01' dhe '2001-12-31' dhe të
cilët janë trajtuar tek doktori 'Arta' dhe 'Mirjeta'. */
Select  d.Emri, d.Mbiemri,p.Emri, p.Mbiemri, p.Datelindja, s.emri
From Pacienti p, Doktori d, Spitali s
Where (p.Doktori = d.Id AND s.Id = p.Spitali) AND (p.Datelindja BETWEEN '1998-01-01' AND '2001-12-31') 
		AND d.Emri IN ('Arta','Mirjeta')
Order By d.Emri;


/*12. Listo të gjithë doktorët të cilët kanë trajtuar më shumë se dy pacientë. Renditja të bëhet
nga doktori i cili ka trajtuar më shumë pacient tek ai i cili ka trajtuar më pak.*/
Select d.Emri, Count(*) as [Numri_Pacienteve]
From Doktori d, Pacienti p
Where d.Id = p.Doktori
Group By d.Emri
HAVING Count(*) > 2
Order By [Numri_Pacienteve] DESC

Select *
From Doktori