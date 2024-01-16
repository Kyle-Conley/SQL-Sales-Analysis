# SQL Sales Analysis Project

This project involves analyzing sales performance data using SQL. It includes setting up a SQLite database, importing CSV data, and running SQL queries for analysis.

## Project Overview

- **ER Diagram:** The Entity-Relationship diagram, created using Lucidchart, visually represents the relational database schema. It includes entities such as Salesperson, Product, SalesTransaction, and SalesCompensationPlan, along with their attributes and relationships.

- **CSV Files:**
  - `Salesperson.csv`: Information about salespersons.
  - `Product.csv`: Information about products.
  - `SalesTransaction.csv`: Sales transaction data.
  - `SalesCompensationPlan.csv`: Sales compensation plan data.

- **SQL Queries:** The `sql-queries.sql` file includes example SQL queries for analyzing sales performance.

## Setup Instructions

### SQLite Database Setup

1. Navigate to your project directory:
   ```bash
   cd /c/Users/17706/SQLProject

2. Open SQLite and create the database:

    sqlite3 salesDatabase.db

3. Import CSV Data by running following commands:
   
     .mode csv
   
     .import Salesperson.csv Salesperson
   
    .import Product.csv Product
   
    .import SalesTransaction.csv SalesTransaction
   
    .import SalesCompensationPlan.csv SalesCompensationPlan

5. Execute SQL Queries for analysis:
   
     -- Example: Total Sales per Salesperson
   
      SELECT salesperson_id, SUM(amount) AS total_sales
   
      FROM SalesTransaction
   
      GROUP BY salesperson_id;
   

    -- Example: Top-Performing Products
   
    SELECT product_id, COUNT(*) AS sales_count
   
    FROM SalesTransaction
   
    GROUP BY product_id
   
    ORDER BY sales_count DESC
   
    LIMIT 5;
