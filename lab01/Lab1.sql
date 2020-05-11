-- task 1 --
select Name, Color, Size
from Production.Product

-- task 2 --
select Name, Color, Size
from Production.Product
where ListPrice > 100

-- task 3 --
select Name, Color, Size
from Production.Product
where ListPrice < 100
  and Color = 'Black'

-- task 4 --
select Name, Color, Size
from Production.Product
where ListPrice < 100
  and Color = 'Black'
order by ListPrice

-- task 5 --
select top 3 Name, Size
from Production.Product
where Color = 'Black'
order by ListPrice desc

-- task 6 --
select Name, Color
from Production.Product
where Color is not null
  and Size is not null

-- task 7 --
select distinct Color
from Production.Product
where ListPrice between 10 and 50

-- task 8 --
select Color
from Production.Product
where Name like 'L_N%'

-- task 9 --
select Name
from Production.Product
where Name like '[M,D]__%'

-- task 10 --
select Name
from Production.Product
where datepart(year, SellStartDate) <= 2012

-- task 11 --
select Name
from Production.ProductSubcategory

-- task 12 --
select Name
from Production.ProductCategory

-- task 13 --
select FirstName
from Person.Person
where Title like 'Mr.'

-- task 14 --
select FirstName
from Person.Person
where Title is null