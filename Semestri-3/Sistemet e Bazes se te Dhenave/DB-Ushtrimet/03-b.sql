
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



Select AVG(d.PagaMujore) 'Paga_Mesatare'
From Doktori d

Select MAX(d.PagaMujore) 'Paga_MAX'
From Doktori d

Select p.emri, p.mbiemri, p.vendbanimi, s.emri
From Pacienti p, Spitali s
Where p.spitali = s.id

Select s.emri, count(*) 'Nr_i_Doktoreve'
From Doktori d, Spitali s
Where d.spitali = s.id
Group By s.emri


Select p.id,p.emri, p.mbiemri, p.datelindja, s.id
From Pacienti p, Spitali s
Where p.spitali = s.id AND s.emri = 'QKUK'


Select p.Emri, p.Mbiemri, p.dateLindja, datediff(year,p.datelindja, getDate()) 'Mosha'
From Pacienti p


Select p.Emri, p.mbiemri, p.vendbanimi, d.emri as 'EmriDoktorit' , d.mbiemri as 'MbiemriDoktorit'
From Pacienti p, Doktori d
Where p.Doktori = d.id AND (d.emri+' '+d.mbiemri) LIKE 'Mirjeta Abazi'


Select s.id, p.emri, p.mbiemri, d.emri as 'EmriDoktorit' , d.mbiemri as 'MbiemriDoktorit', s.vendi
From Pacienti p, Doktori d, Spitali s
Where p.spitali = s.id AND p.doktori = d.id


Select p.id, p.emri, p.mbiemri, s.id, s.emri
From Pacienti p, Doktori d, Spitali s
Where p.spitali = s.id AND p.doktori = d.id AND s.emri IN ('QKUK','ALOKA')
Order By s.Emri 

Select s.emri, count(*) 'Nr_i_pacienteve'
From Pacienti p, Spitali s
Where p.spitali = s.id
Group By s.emri

Select d.emri,d.mbiemri,p.emri, p.mbiemri, p.datelindja, s.emri
From Pacienti p, Spitali s, Doktori d
Where p.spitali = s.id AND p.doktori = d.id AND (p.datelindja BETWEEN '1998-01-01' AND '2001-12-31') AND (d.emri+' '+d.mbiemri) IN ('Lorik Gashi','Jetlira Hoxha')


Select d.emri, d.mbiemri, count(*) 'Nr_i_Pacienteve'
From Doktori d, Pacienti p
Where d.id = p.doktori
Group By d.emri, d.mbiemri
Having count(*) > 2
Order By 'Nr_i_Pacienteve'