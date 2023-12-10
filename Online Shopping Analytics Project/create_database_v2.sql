USE transactions_db;

-- Creating Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Gender NVARCHAR(255),
    Location NVARCHAR(255),
    Tenure_Months INT,
    Offline_Spend DECIMAL(10, 2),
    Online_Spend DECIMAL(10, 2)
);

-- Creating Product table
CREATE TABLE Product (
    Product_SKU NVARCHAR(255) PRIMARY KEY,
    Product_Description NVARCHAR(255),
    Product_Category NVARCHAR(255)
);


-- Creating Transactions table with unique primary keys
CREATE TABLE Transactions (
    TransactionKey INT PRIMARY KEY IDENTITY(1,1),
    Customer_ID INT,
    Transaction_ID INT,
    Transaction_Date DATE,
    Product_SKU NVARCHAR(255),
    Quantity INT,
    Avg_Price DECIMAL(10, 2),
    Delivery_Charges DECIMAL(10, 2),
    Coupon_Status NVARCHAR(255),
    GST DECIMAL(10, 2),
    Date DATE,
    Month NVARCHAR(255),
    Coupon_Code NVARCHAR(255),
    Discount_pct DECIMAL(5, 2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_SKU) REFERENCES Product(Product_SKU)
);

-- Displaying entire dataset (https://www.kaggle.com/datasets/jacksondivakarr/online-shopping-dataset/data)
SELECT *
FROM dbo.Dataset;

-- Populating Customer table with data in the dataset
INSERT INTO Customer (Customer_ID, Gender, Location, Tenure_Months, Offline_Spend, Online_Spend)
SELECT DISTINCT 
    CustomerID, 
    Gender, 
    Location, 
    Tenure_Months, 
    SUM(Offline_Spend) AS Offline_Spend, 
    SUM(Online_Spend) AS Online_Spend
FROM dbo.Dataset
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID, Gender, Location, Tenure_Months;

-- Populating Product table with data in the dataset
INSERT INTO Product (Product_SKU, Product_Description, Product_Category)
SELECT DISTINCT Product_SKU, Product_Description, Product_Category
FROM dbo.Dataset
WHERE Product_SKU IS NOT NULL;

-- Populating Transactions table with unique primary keys with data in the dataset
INSERT INTO Transactions (
    Customer_ID,
    Transaction_ID,
    Transaction_Date, 
    Product_SKU, 
    Quantity, 
    Avg_Price, 
    Delivery_Charges, 
    Coupon_Status, 
    GST, 
    Date, 
    Month, 
    Coupon_Code, 
    Discount_pct
)
SELECT 
    CustomerID,
    Transaction_ID,
    Transaction_Date, 
    Product_SKU, 
    Quantity, 
    Avg_Price, 
    Delivery_Charges, 
    Coupon_Status, 
    GST, 
    Date, 
    Month, 
    Coupon_Code, 
    Discount_pct
FROM dbo.Dataset
WHERE CustomerID IS NOT NULL AND Transaction_Date IS NOT NULL AND Product_SKU IS NOT NULL;


-- Displaying tables populated with data
SELECT * FROM Customer;
SELECT * FROM Product;
SELECT * FROM Transactions;