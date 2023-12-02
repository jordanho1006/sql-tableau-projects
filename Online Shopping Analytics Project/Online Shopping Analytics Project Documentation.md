# Online Shopping Analytics Project

## Project Title
**Unveiling Online Shopping Dynamics: A Data-Driven Exploration**

## Introduction
In an era dominated by online commerce, understanding customer behavior is paramount. This project delves into the dynamics of online shopping, aiming to extract actionable insights from a comprehensive dataset.

## Project Overview
### Dataset:
The project utilized the "Online Shopping Dataset" sourced from Kaggle. This dataset contains comprehensive information, including customer demographics, transaction details, product descriptions, and more. It played a crucial role as the foundation for exploring various aspects of online shopping behavior.

Dataset Source: ['🛒 Online Shopping Dataset 📊📉📈'](https://www.kaggle.com/datasets/jacksondivakarr/online-shopping-dataset/data)

### Project Objective(s):
The Online Shopping Analytics project aims to gain actionable insights into customer behavior and transactional patterns within the context of the online shopping dataset. The primary objective was to understand various dynamics, including customer demographics, product popularity, spending patterns, and engagement with promotional activities such as coupons.

### Exploration Questions:
The project aimed to address key questions related to online shopping behavior:
  - What are the demographics of online shoppers, and how is the platform utilized by different genders and locations?
  - Which products or product categories are most popular among customers?
  - How do spending patterns vary throughout the year, and what role do discounts and coupons play?
  - Who are the highest spending customers, and what are their preferences?

### Tools and Technologies:
The project utilized the following tools and technologies:
  - **SQL (Structured Query Language):** The primary language used for data manipulation, exploration, and analysis.
  - **SQL Server Management Studio (SSMS):** For database creation, data parsing, and initial data exploration.
  - **Tableau:** For creating a variety of visualizations and interactive dashboards based on SQL query findings.
  - **Excel:** While not directly used in the project, the dataset obtained from Kaggle was in Excel format, serving as the initial file type for data exploration.

This combination of tools facilitated a comprehensive approach to the analysis, from database creation and exploration using SQL to visual representation and interactive dashboards in Tableau. The dataset's initial format in Excel underscored the importance of diverse tools in handling and extracting insights from real-world datasets.

## Approach
1. Obtained the online shopping dataset in Excel format from Kaggle, encompassing customer demographics, transaction details, and product descriptions.
2. Created a relational database in SQL Server Management Studio (SSMS) using SQL queries to establish tables for Customer, Product, and Transactions.
3. Imported the Kaggle dataset into SSMS and utilized SQL queries to parse the data into their respective tables.
4. Ensured data quality and consistency by addressing any missing or inconsistent values.
5. Conducted a comprehensive exploration of the dataset using SQL queries.
   - Examined key attributes, identified patterns, and gained insights into customer demographics, product popularity, and transactional patterns.
6. Transitioned the database to Tableau for developing insightful visualizations based on SQL query findings.
7. Developed a variety of visualizations, including bar graphs, area graphs, and packed bubble charts.
8. Grouped visualizations into dashboards focusing on key aspects such as customer demographics, sales analysis, location insights, consumer spending, and coupon engagement.

This approach involves a systematic progression from dataset acquisition to database development, data import, exploration, and visualization. Each step contributes to a cohesive and user-friendly understanding of the online shopping behavior in this dataset.

## Data Visualizations
Transitioning to Tableau, the SQL query findings were used as a basis to create a variety of visualizations. Each visualization aimed to reveal patterns, trends, and relationships within the dataset. Notable visualizations included:
  - **Bar Graphs:** Customer demographics, total sales by product category, highest spending consumer analysis.
  - **Area and Bar Graphs:** Average discount percentage vs total sales throughout the year.
  - **Packed Bubble Chart:** Total spending distribution across locations.
  - **Treemaps:** Product categories by total sales.

The individual visualizations were grouped into five interactive dashboards:
  - **Customer Demographic Dashboard:** Highlights gender distribution by location.
  - **Sales Analysis Dashboard:** Analyzes total sales by product category, transactional patterns, and customer distribution by gender and tenure range.
  - **Location Analysis Dashboard:** Explores total spending distribution across locations and product categories.
  - **Consumer Spending Dashboard:** Focuses on the highest spending consumers and their product breakdown.
  - **Coupon Engagement Dashboard:** Analyzes coupon engagement by percentage and throughout the year.
    
Each dashboard provides an interactive user experience, allowing users to explore and highlight factors they deem important.

## Files Included
  - ['Individual Visualizations'](): The individual visualizations created in Tableau based on SQL query findings.
  - ['Dashboards'](): The interactive dashboards created on Tableau. *Note: These are just images of the interactive dashboard.*
  - ['create_database.sql'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/Online%20Shopping%20Analytics%20Project/analyze_data.sql): The Raw SQL query for constructing the relational database.
  - ['analyze_data.sql'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/Online%20Shopping%20Analytics%20Project/create_database.sql): The Raw SQL query for extensive dataset exploration.
  - ['Project Documentation'](https://github.com/jordanho1006/sql-tableau-projects/blob/main/Online%20Shopping%20Analytics%20Project/Online%20Shopping%20Analytics%20Project%20Documentation.md): This file provides an overview of the project.
  - ['er-diagram.png'](): This file provides a simple ER diagram depicting the relational database structure.
  - ['online_shopping_analytics.twb'](): This Tableau file compromises all the data visualizations and interactive dashboards.
  - ['online_shopping_analytics.pptx'](): This Powerpoint file includes static images of all the data visualizations.
    
## Conclusion
In the absence of actual findings, hypothetical results could include:

  - **Customer Demographic Dashboard:** Reveals a balanced gender distribution across locations.
  - **Sales Analysis Dashboard:** Highlights a spike in total sales during holiday seasons.
  - **Location Analysis Dashboard:** Identifies specific regions with higher spending on certain product categories.
  - **Consumer Spending Dashboard:** Showcases the top 10 highest spending customers and their preferred products.
  - **Coupon Engagement Dashboard:** Illustrates an increase in coupon usage during festive months.
