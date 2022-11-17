CREATE DATABASE Ushtrimi2
USE Ushtrimi2

CREATE TABLE Produkti(
	[ID] [varchar](10) NOT NULL primary key,
	[EmriProduktit] [varchar](50) NOT NULL,
	[CmimiPerNjesi] [decimal](7, 2) NOT NULL,
	[Sasia] [int] NOT NULL,
	[prodhuesi] [varchar](50) NULL
)

INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-1', N'Monitor', CAST(130.00 AS Decimal(7, 2)), 15, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-10', N'Kufje', CAST(5.00 AS Decimal(7, 2)), 12, N'Sony')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-11', N'Maus', CAST(2.00 AS Decimal(7, 2)), 5, N'Deluxe')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-12', N'Monitor', CAST(150.00 AS Decimal(7, 2)), 5, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-13', N'Laptop', CAST(800.00 AS Decimal(7, 2)), 1, N'Lenovo')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-14', N'Laptop', CAST(550.00 AS Decimal(7, 2)), 7, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-15', N'Monitor', CAST(300.00 AS Decimal(7, 2)), 2, NULL)
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-2', N'Maus', CAST(3.00 AS Decimal(7, 2)), 10, N'BENQ')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-3', N'Tastature', CAST(15.00 AS Decimal(7, 2)), 30, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-4', N'Kufje', CAST(15.00 AS Decimal(7, 2)), 4, N'Remax')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-5', N'Laptop', CAST(700.00 AS Decimal(7, 2)), 2, N'Acer')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-6', N'PC', CAST(300.00 AS Decimal(7, 2)), 1, N'Dell')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-7', N'PC', CAST(450.00 AS Decimal(7, 2)), 3, N'Lenovo')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-8', N'PC', CAST(700.00 AS Decimal(7, 2)), 2, N'HP')
INSERT [dbo].[produkti] ([ID], [EmriProduktit], [CmimiPerNjesi], [Sasia], [prodhuesi]) VALUES (N'PR-9', N'Kufje', CAST(2.50 AS Decimal(7, 2)), 5, N'Samsung')

/*Te listohen të gjitha produktet.*/
SELECT *
FROM Produkti p

/*Të listohen të gjithë emrat e produkteve dhe çmimi për njësi i tyre*/
SELECT p.EmriProduktit, p.CmimiPerNjesi
FROM Produkti p

/*Të listohen të gjithë emrat prodhuesve (pa përsëritjen e tyre).*/
SELECT DISTINCT p.prodhuesi
FROM Produkti p

/*Të listohen të gjitha produktet e prodhuesit Dell.*/
SELECT *
FROM Produkti p
WHERE p.prodhuesi='Dell';

/*Të listohen të gjitha produktet e prodhuesit Lenovo ose Hp*/
SELECT *
FROM Produkti p
WHERE p.prodhuesi='Lenovo' OR p.prodhuesi='Hp';

/*Të listohen të gjithë monitorët që nuk kane prodhues të specifikuar.*/
SELECT *
FROM Produkti p
WHERE p.prodhuesi is NULL;

/*Të listohen të gjithë Laptop-ët që kane çmimin me të vogël se 750.*/
SELECT *
FROM Produkti p
WHERE p.CmimiPerNjesi<750 AND p.EmriProduktit='Laptop';

/*Të listohen të gjitha produktet të cilat kane prodhuesin “Hp” dhe kanë ne sasi mes 10 dhe
40 njesi.*/
SELECT *
FROM Produkti p 
WHERE p.prodhuesi='Hp' AND p.Sasia BETWEEN 10 AND 40;

/*Të listohen të gjithë produktet që janë nga prodhuesi “Hp” ose “Lenovo” dhe të cilët kanë
çmimin me të lartë se 150*/
SELECT *
FROM Produkti p 
WHERE (p.prodhuesi='Hp' OR p.prodhuesi='Lenovo') AND p.CmimiPerNjesi > 150;

/*Të listohen të gjitha produktet e “Acer”, “Hp” , “Lenovo” dhe “Samsung”*/
SELECT *
FROM Produkti p 
WHERE p.prodhuesi='Hp' OR p.prodhuesi='Lenovo' OR p.prodhuesi='Acer' OR p.prodhuesi='Samsung';

/*Të renditen të gjitha produktet e prodhuesit ‘HP’ me vlere me te vogël se 500 duke i
renditur sipas sasisë, nga me e madhja tek me e vogla.*/SELECT *
FROM Produkti p 
WHERE p.prodhuesi='Hp' AND p.CmimiPerNjesi<500
ORDER BY p.Sasia DESC

/*Te listohen të gjithë prodhuesit dhe numri i përgjithshëm i sasisë për to*/
SELECT p.prodhuesi , sum(p.Sasia) [Sasia e pergjithshme]
FROM Produkti p 
GROUP BY p.prodhuesi

/*Të shfaqet mesatarja e çmimit për monitorët.*/
SELECT p.EmriProduktit,avg(p.CmimiPerNjesi) [Mesatarja e cmimit per monitore]
FROM Produkti p 
Where p.EmriProduktit='Monitor'
GROUP BY p.EmriProduktit

/* Të tregoni se sa lloje të produkteve ka “HP”*/
SELECT p.EmriProduktit, count(p.emriProduktit)
FROM Produkti p
Where p.prodhuesi='Hp'
Group by p.EmriProduktit

