-- task01 --
select Name, Color, Size
from Production.Product

-- task02 --
select Name, Color, Size
from Production.Product
where ListPrice > 100

-- task03 --
select Name, Color, Size
from Production.Product
where ListPrice < 100 and Color = 'Black'

-- task04 --
select Name, Color, Size
from Production.Product
where ListPrice < 100 and Color = 'Black'
order by ListPrice

-- task05 --
select top 3 Name, Size
from Production.Product
where Color = 'Black'
order by ListPrice desc

-- task06 --
select Name, Color
from Production.Product
where Color is not null and Size is not null

-- task07 --
select distinct Color
from Production.Product
where ListPrice between 10 and 50

-- task08 --
select Color
from Production.Product
where Name like 'L_N%'

-- task09 --
select Name
from Production.Product
where Name like '[M,D]__%'

-- task10 --
select Name
from Production.Product
where datepart(year, SellStartDate) <= 2012

-- task11 --
select Name
from Production.ProductSubcategory

-- task12 --
select Name
from Production.ProductCategory

-- task13 --
select FirstName
from Person.Person
where Title like 'Mr.'

-- task14 --
select FirstName
from Person.Person
where Title is null