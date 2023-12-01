# Online Shopping Analytics Project

## Defining the Question

The primary objective of the Online Shopping Analytics Project was to gain actionable insights into customer behavior and transactional patterns. The key question driving this analysis was to understand the dynamics of online shopping, including customer demographics, product popularity, spending patterns, and engagement with promotional activities like coupons.

## Collecting the Data

The dataset used for this project, titled "Online Shopping Dataset," was obtained from Kaggle. It includes information such as customer demographics, transaction details, product descriptions, and more. The dataset provided a comprehensive foundation for exploring various aspects of online shopping behavior.

**Dataset Source:** [Online Shopping Dataset on Kaggle](https://www.kaggle.com/datasets/jacksondivakarr/online-shopping-dataset/data)

## Cleaning/Analyzing the Data
### Database Creation Using SQL Server Management Studio (SSMS)
To effectively analyze the dataset, a relational database was created using SQL Server Management Studio. The dataset was parsed into three main tables: Customer, Product, and Transactions. The SQL queries for database creation and population ensured a structured and organized foundation for further analysis.

```sql
-- SQL script for creating tables and populating data
-- [create_database.sql](link_to_sql_queries/create_database.sql)

-- SQL queries for data exploration and cleaning
-- ...

SQL Queries for Exploration and Cleaning
SQL queries were employed to explore the dataset, clean the data (though it was already relatively clean), and derive meaningful insights. Key queries included:

Exploring Customer Demographics: Analyzing the distribution of gender and average tenure.
Analyzing Transaction Data: Understanding product category sales, average discount percentages, and transactional patterns throughout the year.
Analyzing Customer Spending: Identifying the highest spending customers and their product preferences.
The detailed SQL queries provided a foundation for further insights and guided the subsequent steps in the analysis.

Tableau Data Visualizations
Transitioning to Tableau, the SQL query findings were used as a basis to create a variety of visualizations. Each visualization aimed to reveal patterns, trends, and relationships within the dataset. Notable visualizations included:

Bar Graphs: Customer demographics, total sales by product category, highest spending consumer analysis.
Area and Bar Graphs: Average discount percentage vs total sales throughout the year.
Packed Bubble Chart: Total spending distribution across locations.
Treemaps: Product categories by total sales.
Tableau Dashboards
The individual visualizations were grouped into five interactive dashboards:

Customer Demographic Dashboard: Highlights gender distribution by location.
Sales Analysis Dashboard: Analyzes total sales by product category, transactional patterns, and customer distribution by gender and tenure range.
Location Analysis Dashboard: Explores total spending distribution across locations and product categories.
Consumer Spending Dashboard: Focuses on the highest spending consumers and their product breakdown.
Coupon Engagement Dashboard: Analyzes coupon engagement by percentage and throughout the year.
Each dashboard provides an interactive user experience, allowing users to explore and highlight factors they deem important.

Sharing Your Results
The results of the Online Shopping Analytics Project are shared in the following ways:

GitHub Repository: The project elements, including SQL scripts, Tableau visualizations, ER diagram, and PowerPoint presentations, are organized within a dedicated repository.
Readme File: The readme file provides an introduction to the project, objectives, key points, and technical details. It also includes a link to the Kaggle dataset.
Project Index: A project index section within the readme file lists the key elements and visualizations, guiding users through the contents.
Summary
The Online Shopping Analytics Project successfully leveraged SQL Server Management Studio and Tableau to derive actionable insights from the Kaggle dataset. The combination of SQL queries, visualizations, and dashboards provided a comprehensive understanding of customer behavior, transactional patterns, and promotional engagement within the realm of online shopping. The project demonstrates proficiency in data analysis, database management, and data visualization, showcasing the skills of the data analyst in uncovering valuable insights from complex datasets.
