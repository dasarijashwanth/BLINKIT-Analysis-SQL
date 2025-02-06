# Blinkit Sales Analysis - SQL Queries
![](https://github.com/dasarijashwanth/BLINKIT-Analysis-SQL/blob/main/logo.png)

## 📌 Overview
This repository contains SQL queries for analyzing sales data from Blinkit, an e-commerce retail platform. The dataset includes information about various products, their sales performance, and outlet characteristics. The queries perform key performance indicator (KPI) analysis, data transformations, and aggregations to extract insights.

## 🛠️ Database Schema
The dataset is stored in a table named `Blinkit`, structured as follows:

| Column Name                | Data Type       | Description |
|----------------------------|----------------|-------------|
| `Item_Fat_Content`         | VARCHAR(50)    | Fat content category (e.g., Low Fat, Regular) |
| `Item_Identifier`          | VARCHAR(50)    | Unique item code |
| `Item_Type`                | VARCHAR(50)    | Type/category of the item |
| `Outlet_Establishment_Year`| INT            | Year the outlet was established |
| `Outlet_Identifier`        | VARCHAR(50)    | Unique outlet code |
| `Outlet_Location_Type`     | VARCHAR(50)    | Location type of the outlet (e.g., Urban, Rural) |
| `Outlet_Size`              | VARCHAR(50)    | Outlet size (e.g., Small, Medium, Large) |
| `Outlet_Type`              | VARCHAR(50)    | Type of outlet (e.g., Supermarket, Grocery) |
| `Item_Visibility`          | FLOAT          | Visibility percentage of the item |
| `Item_Weight`              | FLOAT (NULL)   | Weight of the item (if available) |
| `Total_Sales`              | FLOAT          | Total sales for the item |
| `Rating`                   | FLOAT          | Customer rating of the item |

## 📊 SQL Queries & Analysis
This project includes various SQL queries categorized into different sections:

### 🏗️ Table Creation
- Creates the `Blinkit` table with relevant columns.

### 🔍 Data Exploration & Transformation
- View all records (`SELECT * FROM Blinkit`)
- Count total rows (`SELECT COUNT(*) FROM Blinkit`)
- Standardize `Item_Fat_Content` values (e.g., 'LF' → 'Low Fat')
- Check distinct values of `Item_Fat_Content`

### 📈 Key Performance Indicators (KPIs)
1. **Total Sales**: Aggregates sales across all items.
2. **Average Sales**: Computes the average sales per item.
3. **Total Number of Items Sold**: Counts all transactions.
4. **Average Rating**: Determines the overall average item rating.

### 📊 Sales Insights
- **Total Sales by Fat Content**: Groups sales based on `Item_Fat_Content`.
- **Total Sales by Item Type**: Analyzes the most profitable item categories.
- **Sales by Outlet Location & Fat Content**: Compares sales performance across outlet locations.
- **Total Sales by Outlet Establishment Year**: Tracks sales trends over the years.
- **Percentage of Sales by Outlet Size**: Calculates sales distribution by outlet size.
- **Sales by Outlet Location**: Highlights total sales by outlet location.
- **All Metrics by Outlet Type**: Provides a comprehensive analysis of total sales, average sales, item count, average rating, and visibility across different outlet types.

## 🏆 How to Use
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/blinkit-sales-analysis.git
   ```
2. Import the dataset into your SQL environment.
3. Run the queries in sequence to analyze and visualize the data.

## 📌 Future Enhancements
- Data visualization using Power BI or Tableau.
- Advanced analytics like forecasting and segmentation.
- Performance optimization of SQL queries.

## 🤝 Contributing
Contributions are welcome! Feel free to fork the repository and submit pull requests with improvements.

## 📜 License
This project is licensed under the MIT License. See the `LICENSE` file for details.

---
For more insights, connect with me on **[LinkedIn](https://www.linkedin.com/in/jashwanthdasari2001/)**. 🚀

