Use Ligj08

Create Table Employess(
	EmpNbr int Primary Key,
	Name varchar(50),
	Title varchar(20),
	Mngr int Foreign Key references Employess(EmpNbr)
)

insert into Employess values(105,'Mary Smith','Analyst',104);
insert into Employess values(109,'Jill Jones','Sr Analyst',107);
insert into Employess values(104,'Sally Silver','Manager',111);
insert into Employess values(107,'Pat Brown','Manager',111);
insert into Employess (EmpNbr,Name,Title) values(111,'Eileen Howe','President');

Truncate Table Employess

Select *
From Employess;

Select E.Name, M.Name, M.EmpNbr
From Employess E Inner Join
Employess M
ON E.Mngr = M.EmpNbr;