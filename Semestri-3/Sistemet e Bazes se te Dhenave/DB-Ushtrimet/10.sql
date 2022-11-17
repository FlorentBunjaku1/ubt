
CREATE DATABASE [Ushtrimi10]

USE [Ushtrimi10]

CREATE TABLE [dbo].[Finalja_LK](
	[Sezona] [varchar](10) NOT NULL,
	[Kampioni] [int] NOT NULL,
	[NenKampioni] [int] NOT NULL,
	[Golat_shenueraK] [int] NULL,
	[Golat_shenueraN] [int] NULL,
	[extra_time] [bit] NULL,
	[penalty] [bit] NULL,
	[Stadiumi] [int] NULL,
	[Lojtori_Finales] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sezona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Skuadra](
	[ID_Skuadres] [int] NOT NULL,
	[Emri] [varchar](50) NOT NULL,
	[Qyteti] [varchar](30) NULL,
	[Shteti] [varchar](30) NOT NULL,
	[Viti_Themelimit] [date] NULL DEFAULT ('1880-01-01'),
PRIMARY KEY CLUSTERED 
(
	[ID_Skuadres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Stadiumi](
	[Stadium_ID] [int] NOT NULL,
	[Emri_S] [varchar](50) NOT NULL,
	[Kapaciteti_Ulseve] [int] NULL,
	[Qyteti] [varchar](30) NULL,
	[Shteti] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Stadium_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2000/01', 3, 16, 5, 4, 0, 1, 110, N'')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2001/02', 12, 15, 2, 1, 0, 0, 109, N'')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2002/03', 8, 2, 3, 2, 0, 1, 108, N'')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2003/04', 13, 40, 3, 0, 0, 0, 113, N'')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2004/05', 9, 8, 3, 2, 0, 1, 112, N'Steven Gerrard (Liverpool FC)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2005/06', 1, 10, 2, 1, 0, 0, 111, N'Samuel Etoo (FC Barcelona)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2006/07', 8, 9, 2, 1, 0, 0, 107, N'Filippo Inzaghi (AC Milan)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2007/08', 6, 5, 6, 5, 0, 1, 106, N'Edwin van der Sar (Manchester United FC)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2008/09', 1, 6, 2, 0, 0, 0, 105, N'Xavi Hernandez (FC Barcelona)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2009/10', 7, 3, 2, 0, 0, 0, 104, N'Diego Milito (FC Internazionale Milano)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2010/11', 1, 6, 3, 1, 0, 0, 102, N'Lionel Messi (FC Barcelona)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2011/12', 5, 3, 4, 3, 0, 1, 103, N'Didier Drogba (Chelsea FC)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2012/13', 3, 4, 2, 1, 0, 0, 102, N'Arjen Robben (FC Bayern München)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2013/14', 12, 11, 4, 1, 1, 0, 101, N'Angel Di Maria (Real Madrid CF)')
INSERT [dbo].[Finalja_LK] ([Sezona], [Kampioni], [NenKampioni], [Golat_shenueraK], [Golat_shenueraN], [extra_time], [penalty], [Stadiumi], [Lojtori_Finales]) VALUES (N'2014/15', 1, 2, 3, 1, 0, 0, 100, N'Lionel Messi (FC Barcelona)')
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (1, N'Barcelona', N'Barcelon', N'Spain', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (2, N'Juventues', N'Torino', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (3, N'Bayern', N'Munchen', N'Germany', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (4, N'Dortmund', N'Dortmund', N'Germany', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (5, N'Chelsea', N'London', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (6, N'Man.United', N'Manchester', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (7, N'Internazionale', N'Milano', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (8, N'Milan', N'Milano', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (9, N'Liverpool', N'Liverpool', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (10, N'Arsenal', N'London', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (11, N'Atletico', N'Madrid', N'Spain', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (12, N'Real Madrid', N'Madrid', N'Spain', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (13, N'Porto', N'Porto', N'Portugal', CAST(N'1893-09-28' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (15, N'Leverkusen', N'Leverkusen', N'Germany', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (16, N'Valencia', N'Valencia', N'Spain', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (17, N'Ajax', N'Amsterdam', N'Holland', CAST(N'1900-03-18' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (18, N'Marseille', N'Marseille', N'France', CAST(N'1899-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (19, N'Sampdoria', N'Genoa', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (20, N'Crvena zvezda', N'Belgrade', N'Serbia', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (21, N'Benfica', N'Lisbon', N'Portugal', CAST(N'1904-02-28' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (22, N'Steaua', N'Bucharest', N'Romania', CAST(N'1947-06-07' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (23, N'PSV Eindhoven', N'Eindhoven', N'Holland', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (24, N'Roma', N'Rome', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (25, N'Hamburg', N'Bucharest', N'Germany', CAST(N'1887-09-29' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (26, N'Aston Villa', N'Birmingham', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (27, N'Nottm Forest', N'Nottingham', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (28, N'Malmo', N'Malmo', N' Sweden', CAST(N'1910-02-24' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (29, N'Club Brugge', N'Bruges', N'Belgium', CAST(N'1891-11-13' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (30, N'Monchengladbach', N'Monchengladbach', N'Germany', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (31, N'St-Etienne', N'Saint-Etienne', N'France', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (32, N'Leeds', N'Leeds', N'England', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (33, N'Panathinaikos', N' Athens', N'Greece', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (34, N'Feyenoord', N' Rotterdam', N'Holland', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (35, N'Celtic', N' Glasgow', N'Scotland', CAST(N'1887-11-06' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (36, N'Partizan', N' Belgrade', N'Serbia', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (37, N'Frankfurt', N' Frankfurt', N'Germany', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (38, N'Reims', N' Reims', N'France', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (39, N'Fiorentina', N' Florence', N'Italy', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Skuadra] ([ID_Skuadres], [Emri], [Qyteti], [Shteti], [Viti_Themelimit]) VALUES (40, N'Monoco', N' Monaco', N'France', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (100, N'Olympiastadion', 74475, N'Berlin', N'')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (101, N'Estádio da Luz', 64775, N'Lisbon', N'Portugal')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (102, N'Wembley Stadium', 90000, N'London', N'England')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (103, N'Allianz Arena', 75024, N'Munich', N'Germany')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (104, N'Santiago Bernabéu Stadium', 81044, N'Madrid', N'Spain')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (105, N'Stadio Olimpico', 72698, N'Rome', N'Italy')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (106, N'Luzhniki Stadium', 78360, N'Moskva', N'Russia')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (107, N'Athens Olympic Stadium', 69618, N'Athens', N'Greece')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (108, N'Old Trafford', 75653, N'Manchester', N'England')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (109, N'Hampden Park', 74475, N'Glasgow', N'Scotland')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (110, N'Stadio Giuseppe Meazza ', 80018, N'Milano', N'Italy')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (111, N'Stade de France ', 81338, N'Paris', N'France')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (112, N'Ataturk Olympic Stadium ', 80500, N'Istanbul', N'Turkey')
INSERT [dbo].[Stadiumi] ([Stadium_ID], [Emri_S], [Kapaciteti_Ulseve], [Qyteti], [Shteti]) VALUES (113, N'Veltins-Arena', 78996, N'Gelsenkirchen', N'Germany')
ALTER TABLE [dbo].[Finalja_LK]  WITH CHECK ADD FOREIGN KEY([Stadiumi])
REFERENCES [dbo].[Stadiumi] ([Stadium_ID])
GO
ALTER TABLE [dbo].[Finalja_LK]  WITH CHECK ADD  CONSTRAINT [fk_SkuadraFituesi] FOREIGN KEY([Kampioni])
REFERENCES [dbo].[Skuadra] ([ID_Skuadres])
GO
ALTER TABLE [dbo].[Finalja_LK] CHECK CONSTRAINT [fk_SkuadraFituesi]
GO
ALTER TABLE [dbo].[Finalja_LK]  WITH CHECK ADD  CONSTRAINT [fk_SkuadraNenKamp] FOREIGN KEY([NenKampioni])
REFERENCES [dbo].[Skuadra] ([ID_Skuadres])
GO
ALTER TABLE [dbo].[Finalja_LK] CHECK CONSTRAINT [fk_SkuadraNenKamp]



/*1. Selekto skuadrën e cila ndonjëherë ka qenë kampione*/
Select *
From Skuadra s
Where Exists (Select * From Finalja_LK fk Where fk.Kampioni = s.ID_Skuadres)

/*2. Tregoni për secilën skuadër sa here ka fituar Ligen e kampionëve dhe sa here ka qene
nën kampion.*/
Select s.Emri, (Select count(*) From Finalja_LK fk Where s.ID_Skuadres = fk.Kampioni) 'Kampionet', (Select count(*) From Finalja_LK fk Where s.ID_Skuadres = fk.NenKampioni) 'Nenkampionet'
From Skuadra s
Order By 'Kampionet' DESC


/*3. Selekto skuadrat te cilat kan shenuar me pak gola si nenkampion se sa shuma e golave te
cilat jan shenuara nga skuadrat kampione. (ALL)*/
Select s.emri, sum(fk.Golat_shenueraN) 'Golat e shenuara'
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.NenKampioni
Group By s.ID_Skuadres, s.Emri
Having sum(fk.Golat_shenueraN) < ALL (Select sum(fk.Golat_shenueraK)
									  From Finalja_LK fk
									  Group By fk.Kampioni)


/*4. Selekto skuadrat të cilat kan pasur shumën e shikuesve më të lartë se sa mesatarja e
shikueshmërisë e të gjitha skuadrave kur është mbajtur kampionati.*/
Select sk.Emri, sum(s.Kapaciteti_Ulseve) 'Shikushmeria'
From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
Group By sk.Emri
Having sum(s.Kapaciteti_Ulseve) >Any (Select avg(s.Kapaciteti_Ulseve)
									  From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
									  Group By sk.ID_Skuadres)
Order By 'Shikushmeria';

/*5. Selekto të gjitha skuadrat të cilat kanë pasur shikushmëri më të vogel se sa mesatarja e
shikuesve kur kampion ka qenë 'Barcelona'*/
Select sk.Emri, sum(s.Kapaciteti_Ulseve) 'Shkikushmeria'
From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
Group By sk.Emri
Having sum(s.Kapaciteti_Ulseve) < Any (Select avg(s.Kapaciteti_Ulseve)
									   From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
									   Where sk.Emri = 'Barcelona'
									   Group By s.Stadium_ID)


/*6. Shfaqeni numrin e shikueshmërisë për secilin fitues të ligës se kampionëve.*/
Select sk.Emri, sum(s.Kapaciteti_Ulseve) 'Shkikushmeria'
From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
Where sk.ID_Skuadres IN (Select fk.Kampioni From Finalja_LK fk)
Group By sk.Emri

/*7. Gjeni se cili finalist ka pasur shikueshmëri me te madhe prej te gjithë pjesëmarrësve
finalist të tjerë.*/
Select sk.Emri, sum(s.Kapaciteti_Ulseve) 'Shkikushmeria'
From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
Group By sk.Emri,sk.ID_Skuadres
Having sum(s.Kapaciteti_Ulseve) >=ALL (Select sum(s.Kapaciteti_Ulseve)
									   From Stadiumi s JOIN Finalja_LK fk ON s.Stadium_ID = fk.Stadiumi JOIN Skuadra sk ON sk.ID_Skuadres = fk.Kampioni
									   Group By sk.ID_Skuadres)

/*8. Selekto skuadrat te cilat kan shenuar me shume gola si nenkampion se sa shuma e golave
te cilat jan shenuara kur kampion ka qene Liverpool.*/
Select s.Emri, sum(fk.Golat_shenueraN) 'Golat E Shenuara'
From Finalja_LK fk JOIN Skuadra s ON fk.NenKampioni = s.ID_Skuadres
Group by s.Emri
Having sum(fk.Golat_shenueraN) > (Select sum(fk.Golat_shenueraK)
								  From Finalja_LK fk
								  Where fk.Kampioni = (Select s.ID_Skuadres From Skuadra s Where s.Emri = 'Liverpool'))

/*9. Listo shtetet prej nga vijnë skuadrat sipas numrit te golave te shënuara kur ata kanë qene
nën kampion.*/
Select DISTINCT s.Shteti
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.NenKampioni


/*10. Listoni tre shtetet e ekipeve qe kane fituar me se shpeshti finalen ku numri i golave ne
finale te shenuara nga ekipet nenkampione te jete me i madh se 1.*/

Select TOP 3 s.Shteti, count(*) 'nr'
From Skuadra s JOIN Finalja_LK fk ON s.ID_Skuadres = fk.Kampioni 
Where s.ID_Skuadres IN (Select fk.Kampioni
						From Finalja_LK fk
						Where fk.Golat_shenueraN > 0)
Group by s.Shteti
Order By 'nr' desc


