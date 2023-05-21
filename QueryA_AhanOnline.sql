
--1-      کل فروش شرکت چه مقدار است

select 
	sum (Quantity * UnitPrice) as TotalSalePrice 
from sale

--2-      تعداد متمایز مشتریانی که از این شرکت خرید داشته اند، چند تاست؟

select 
	count (distinct Customer) CustomersCount 
from sale

--3-      این شرکت از هر محصول چه مقدار فروخته است؟

select 
	Product ProductName, 
	sum(quantity) SaleCount 
from sale
group by Product

--4-      یک کوئری بنویسید که در آن مشتریانی نمایش داده شوند که حداقل یک فاکتور بیش
--از مبلغ 1500 دارند و به ازای هر کدام از این مشتریان، مبلغ خرید، تعداد فاکتور و
--تعداد آیتم خریداری شده نمایش داده شود.

select 
	customer CustomerName,
	sum(quantity * UnitPrice) BuyPrice, 
	Count(SalesID) FactorCount, 
	sum(Quantity) ProductQuantity 
from sale 
where (quantity * UnitPrice) > 1500
group by Customer


--5-      مبلغ سود و درصد سود حاصل از فروش کل را محاسبه نمایید.

select 
	--round(sum(quantity * UnitPrice ) , 0), --فروش کل
	round(sum(quantity * UnitPrice * isnull(profitratio,0.1) ) , 0) AS TotalProfit,
	round((sum(quantity * UnitPrice * isnull(profitratio,0.1) )) / (sum(quantity * UnitPrice ) - sum(quantity * UnitPrice * isnull(profitratio,0.1) )) * 100 , 0) AS TotalProfitPercent
from sale s 
	left join saleprofit sp on sp.Product = s.Product


--6-      با فرض اینکه خریدهای هر مشتری در هر روز فقط 1 بار شمرده شود، در مجموع چند
--مشتری از شرکت خرید داشته اند

select 
	sum(CustomerCount) CustomerCount 
from (select 
			date , 
			count (distinct Customer) CustomerCount 
	  from sale 
	  group by date) a