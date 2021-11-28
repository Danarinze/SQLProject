SELECT *
FROM data


--know the total revenue by country 
SELECT Country, SUM(Revenue) AS TotalRevenue
FROM dbo.Data
GROUP BY Country
ORDER BY 2 DESC


--know the total revenue by product
SELECT Product, SUM(Revenue) AS TotalRevenue
FROM dbo.Data
GROUP BY Product
ORDER BY 2 DESC


--know the total  revenue generated in product by different country
SELECT Product, Country, SUM(Revenue) AS TotalRevenue
FROM dbo.Data
GROUP BY Country, Product
ORDER BY 1,3 DESC


--total quantity of products ordered 
SELECT Country, SUM(Order_Quantity) AS Totalquantityordered
FROM Data
GROUP BY Country
ORDER BY 2 DESC


--total quantity of products sold
SELECT Product, SUM(Order_Quantity) AS TotalProductsold
FROM Data
GROUP BY Product
ORDER BY 2 DESC

--Total order quantity of each product by different country
SELECT Country, Product, SUM(Order_Quantity) 
FROM Data
GROUP BY Country, Product
ORDER BY 1,3 DESC


SELECT *
FROM Data


--total quantity ordered by different gender
SELECT Customer_Gender, SUM(Order_Quantity) AS TotalQuantityOrdered
FROM Data
GROUP BY Customer_Gender
ORDER BY 2

--TOTAL REVENUE BY EACH DAY
SELECT DISTINCT Date, SUM(Revenue) AS TotalRevenue
FROM Data
GROUP BY Date
ORDER BY Date