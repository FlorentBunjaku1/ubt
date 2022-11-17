



Select TOP 10 c.FirstName, c.LastName, (Select count(o.id)
										From Orders o 
										Where c.Id = o.CustomerId) as 'Numri porosive'
From Customer c
Order by 'Numri porosive' desc