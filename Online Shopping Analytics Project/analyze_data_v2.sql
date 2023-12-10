-- Exploring customer demographics
SELECT Gender, COUNT(*) AS CustomerCount
FROM Customer
GROUP BY Gender;

SELECT Gender, AVG(Tenure_Months) AS AvgTenure
FROM Customer
GROUP BY Gender;


-- Analyzing transaction data through product categories and discounts
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Units_Sold
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY P.Product_Category
ORDER BY Total_Units_Sold DESC;

-- Average discount percentage by month
SELECT Month, AVG(Discount_pct) AS AvgDiscount
FROM Transactions
GROUP BY Month
ORDER BY CAST(Month AS INT);


-- Analyzing details on the highest spending customers
SELECT TOP 10 C.Customer_ID, SUM(C.Offline_Spend + C.Online_Spend) AS OverallSpend
FROM Customer C
GROUP BY C.Customer_ID
ORDER BY OverallSpend DESC;

-- Comparing the current highest spending customers to the overall highest spending customers
SELECT TOP 10
    C.Customer_ID,
    SUM(T.Avg_Price * T.Quantity) AS TotalSpend
FROM
    Customer C
JOIN
    Transactions T ON C.Customer_ID = T.Customer_ID
GROUP BY
    C.Customer_ID
ORDER BY
    TotalSpend DESC;

SELECT *
FROM Customer
WHERE Customer_ID = 15311;

-- Displaying the breakdown of products bought by the high spending customers
SELECT
    P.Product_Category,
    COUNT(T.Transaction_ID) AS TotalTransactions,
    SUM(T.Quantity) AS TotalQuantity,
    SUM(T.Offline_Spend + T.Online_Spend) AS TotalSpend
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
WHERE T.Customer_ID = 12748
GROUP BY P.Product_Category
ORDER BY TotalSpend DESC;


-- Displaying general aggregated spending information
SELECT
    c.Customer_ID,
    c.Gender,
    c.Location,
    c.Tenure_Months,
    c.Online_Spend,
	c.Offline_Spend,
	SUM(c.Online_Spend + c.Offline_Spend) AS TotalSpent
FROM Customer c
JOIN Transactions t ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_ID, c.Gender, c.Location, c.Tenure_Months, c.Online_Spend, c.Offline_Spend
ORDER BY TotalSpent DESC;


-- Analyzing product popularity via product categories
SELECT
    P.Product_Category,
    SUM(T.Quantity) AS TotalUnitSold
FROM
    Transactions T
    JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY
    P.Product_Category
ORDER BY
    TotalUnitSold DESC;

WITH TotalUnitSoldPerCategory AS (
    SELECT
        P.Product_Category,
        SUM(T.Quantity) AS TotalUnitSold
    FROM
        Transactions T
        JOIN Product P ON T.Product_SKU = P.Product_SKU
    GROUP BY
        P.Product_Category
)
SELECT TOP 5
    T.Product_Category,
    FORMAT(100.0 * T.TotalUnitSold / SUM(TotalUnitSold) OVER (), '0.00\%') AS PercentageOfTotalUnitSold
FROM
    TotalUnitSoldPerCategory T
ORDER BY
    T.TotalUnitSold DESC;

use transactions_db;

-- Analyzing product popularity by each specific product
SELECT
    p.Product_Description,
    SUM(t.Quantity) AS TotalQuantityBought,
    SUM(t.Quantity * t.Avg_Price) AS TotalEarnings
FROM
    Product p
JOIN
    Transactions t ON p.Product_SKU = t.Product_SKU
GROUP BY
    p.Product_Description
ORDER BY
    TotalEarnings DESC
LIMIT 10;

-- Analyzing quantity and earnings for a specific product
SELECT
    p.Product_Description,
    SUM(t.Quantity) AS TotalQuantityBought,
	SUM(t.Quantity * t.Avg_Price) AS TotalEarnings
FROM
    Product p
JOIN
    Transactions t ON p.Product_SKU = t.Product_SKU
WHERE
    p.Product_Description = 'Nest Learning Thermostat 3rd Gen-USA - Stainless Steel'
GROUP BY
    p.Product_Description;



-- Analyzing transactional patterns throughout the year using TotalSpend
SELECT
    Month,
    SUM(Quantity) AS TotalQuantity,
    SUM(T.Avg_Price * T.Quantity) AS TotalAmountSpent
FROM
    Transactions T
GROUP BY
    Month
ORDER BY
    TotalAmountSpent DESC;


-- Analyzing coupon usage trends
SELECT
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Coupon_Status;

SELECT
    Month,
    Coupon_Status,
    COUNT(*) AS CouponCount
FROM
    Transactions
WHERE
    Coupon_Status IS NOT NULL
GROUP BY
    Month, Coupon_Status
ORDER BY
    Month, Coupon_Status;

-- Analyzing coupon usage by product categories
SELECT P.Product_Category, COUNT(T.Coupon_Status) AS UsedCouponCount
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
WHERE T.Coupon_Status = 'Used'
GROUP BY P.Product_Category
ORDER BY UsedCouponCount DESC;


-- Analyzing total spending by location using TotalSpend
SELECT
    C.Location,
    SUM(T.Avg_Price * T.Quantity) AS TotalSpending
FROM
    Customer C
    JOIN Transactions T ON C.Customer_ID = T.Customer_ID
GROUP BY
    C.Location
ORDER BY
    TotalSpending DESC;


-- Analyzing customers by gender and tenure range
SELECT
    Gender,
    CASE
        WHEN Tenure_Months <= 12 THEN '0-12 months'
        WHEN Tenure_Months <= 24 THEN '13-24 months'
        WHEN Tenure_Months <= 36 THEN '25-36 months'
        ELSE 'Over 36 months'
    END AS Tenure_Range,
    COUNT(*) AS CustomerCount
FROM
    Customer
GROUP BY
    Gender,
    CASE
        WHEN Tenure_Months <= 12 THEN '0-12 months'
        WHEN Tenure_Months <= 24 THEN '13-24 months'
        WHEN Tenure_Months <= 36 THEN '25-36 months'
        ELSE 'Over 36 months'
    END
ORDER BY
    Gender, Tenure_Range;
