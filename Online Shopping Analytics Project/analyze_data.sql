USE transactions_db;

-- Displaying tables populated with data
SELECT * FROM Customer;
SELECT * FROM Product;
SELECT * FROM Transactions;


-- Exploring customer demographics
SELECT Gender, COUNT(*) AS CustomerCount
FROM Customer
GROUP BY Gender;

SELECT Gender, AVG(Tenure_Months) AS AvgTenure
FROM Customer
GROUP BY Gender;


-- Analyzing transaction data through product categories and discounts
SELECT P.Product_Category, SUM(T.Quantity) AS TotalSales
FROM Transactions T
JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY P.Product_Category
ORDER BY TotalSales DESC;


-- Average discount percentage by month
SELECT Month, AVG(Discount_pct) AS AvgDiscount
FROM Transactions
GROUP BY Month;


-- Analyzing details on the highest spending customers
SELECT TOP 10 C.Customer_ID, SUM(T.Offline_Spend + T.Online_Spend) AS TotalSpend
FROM Transactions T
JOIN Customer C ON T.Customer_ID = C.Customer_ID
GROUP BY C.Customer_ID
ORDER BY TotalSpend DESC;

SELECT *
FROM Customer
WHERE Customer_ID = 12748;


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


-- Displying general aggregated spending information
SELECT
    c.Customer_ID,
    c.Gender,
    c.Location,
    c.Tenure_Months,
    SUM(t.Online_Spend) AS Total_Online_Spend
FROM Customer c
JOIN Transactions t ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_ID, c.Gender, c.Location, c.Tenure_Months
ORDER BY Total_Online_Spend DESC;


-- Analyzing product popularity via product categories (w/ percentages)
SELECT
    P.Product_Category,
    SUM(T.Quantity) AS TotalSales
FROM
    Transactions T
    JOIN Product P ON T.Product_SKU = P.Product_SKU
GROUP BY
    P.Product_Category
ORDER BY
    TotalSales DESC;

WITH TotalSalesPerCategory AS (
    SELECT
        P.Product_Category,
        SUM(T.Quantity) AS TotalSales
    FROM
        Transactions T
        JOIN Product P ON T.Product_SKU = P.Product_SKU
    GROUP BY
        P.Product_Category
)
SELECT TOP 5
    T.Product_Category,
    FORMAT(100.0 * T.TotalSales / SUM(TotalSales) OVER (), '0.00\%') AS PercentageOfTotalSales
FROM
    TotalSalesPerCategory T
ORDER BY
    T.TotalSales DESC;


-- Analyzing transactional patterns throughout the year
SELECT
    Month,
    SUM(Quantity) AS TotalQuantity,
    SUM(Offline_Spend + Online_Spend) AS TotalAmountSpent
FROM
    Transactions
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


-- Analyzing total spending by location
SELECT
    Location,
    SUM(Offline_Spend + Online_Spend) AS TotalSpending
FROM
    Customer C
    JOIN Transactions T ON C.Customer_ID = T.Customer_ID
GROUP BY
    Location
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
