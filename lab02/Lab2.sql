-- task 1 --
select Color, count(*) as 'Amount'
from Production.Product
where ListPrice > 30
group by Color

-- task 2 --
select Color
from Production.Product
where ListPrice >= 100

-- task 3 --
select ProductSubcategoryID, count(*) as 'Amount'
from Production.Product
group by ProductSubcategoryID

-- task 4 --
select ProductID, sum(all OrderQty) as 'Amount'
from Sales.SalesOrderDetail
group by ProductID

-- task 5 --
select ProductID
from Sales.SalesOrderDetail
group by ProductID
having count(all SalesOrderDetailID) > 5

-- task 6 --
select CustomerID
from Sales.SalesOrderHeader
group by CustomerID, OrderDate
having count(all SalesOrderID) > 1

-- task 7 --
select SalesOrderid
from Sales.SalesOrderDetail
group by SalesOrderid
having count(all ProductID) > 3

-- task 8 --
select ProductID
from Sales.SalesOrderDetail
group by ProductID
having count(all ProductID) > 3

-- task 9 --
select ProductID
from Sales.SalesOrderDetail
group by ProductID
having count(all ProductID) = 3
    or count(all ProductID) = 5

-- task 10 --
select ProductSubcategoryID
from Production.Product
group by ProductSubcategoryID
having count(all ProductID) > 10

-- task 11 --
select ProductID
from Sales.SalesOrderDetail
group by ProductID
having count(all ProductID) = 1

-- task 12 --
select top 1 SalesOrderID, count(*) as 'Product count'
from Sales.SalesOrderDetail
group by SalesOrderID
order by count(*) desc

-- task 13 --
select top 1 SalesOrderID, UnitPrice
from Sales.SalesOrderDetail
group by SalesOrderID, UnitPrice
order by UnitPrice desc

-- task 14 --
select count(all ProductID) as 'Amount'
from Production.Product
where ProductSubcategoryID is not null
  and Color is not null
group by ProductSubcategoryID

-- task 15 --
select Color
from Production.Product
group by Color
order by count(all ProductID) desc

-- task 16 --
select ProductID, count(*) as 'Product count'
from Sales.SalesOrderDetail
where OrderQty > 1
group by ProductID
having count(*) > 2
order by ProductID