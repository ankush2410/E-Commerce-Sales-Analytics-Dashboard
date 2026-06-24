CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE sales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID INT,
    Country VARCHAR(100)
);

SELECT SUM(Quantity * UnitPrice) AS TotalSales
FROM sales;

SELECT COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM sales;

SELECT Country,
       SUM(Quantity * UnitPrice) AS Sales
FROM sales
GROUP BY Country
ORDER BY Sales DESC
LIMIT 10;
