--CREATE TABLE
CREATE TABLE Blinkit (
    Item_Fat_Content VARCHAR(50),
    Item_Identifier VARCHAR(50),
    Item_Type VARCHAR(50),
    Outlet_Establishment_Year INT,
    Outlet_Identifier VARCHAR(50),
    Outlet_Location_Type VARCHAR(50),
    Outlet_Size VARCHAR(50),
    Outlet_Type VARCHAR(50),
    Item_Visibility FLOAT,
    Item_Weight FLOAT NULL,
    Total_Sales FLOAT,
    Rating FLOAT
);



--VIEW TABLE
SELECT * FROM BLINKIT;

--COUNT ROWS
SELECT COUNT(*) FROM BLINKIT;

--CHANGE COLUMN VALUES
UPDATE BLINKIT
SET Item_Fat_Content = 
CASE 
WHEN Item_Fat_Content IN ('LF','low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END

--VIEW CHANGE KOSAM 
SELECT DISTINCT(Item_Fat_Content) FROM blinkit

--A.KPI'S
--1.TOTAL SALES
SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM blinkit;

--2.AVERAGE SALES
SELECT CAST(AVG(Total_Sales) AS INT) AS Avg_Sales
FROM blinkit;

--3. NO OF ITEMS
SELECT COUNT(*) AS No_of_Orders
FROM blinkit;

--4. AVG RATING
SELECT CAST(AVG(Rating) AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit;

--B. Total Sales by Fat Content:
SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit
GROUP BY Item_Fat_Content;

--C. Total Sales by Item Type
SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

--D. Fat Content by Outlet for Total Sales
SELECT Outlet_Location_Type, 
       SUM(Total_Sales) AS Total_Sales, 
       Item_Fat_Content 
FROM blinkit 
GROUP BY Outlet_Location_Type, Item_Fat_Content 
ORDER BY Outlet_Location_Type;

--E. Total Sales by Outlet Establishment
SELECT Outlet_Establishment_Year, 
       SUM(Total_Sales)  AS Total_Sales 
FROM blinkit 
GROUP BY Outlet_Establishment_Year 
ORDER BY Outlet_Establishment_Year;


--F. Percentage of Sales by Outlet Size
SELECT 
    Outlet_Size, 
    SUM(Total_Sales) AS Total_Sales, 
    (SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS Sales_Percentage 
FROM blinkit 
GROUP BY Outlet_Size 
ORDER BY Total_Sales DESC;

--G. Sales by Outlet Location
SELECT Outlet_Location_Type, 
       SUM(Total_Sales) * 1.0 AS Total_Sales 
FROM blinkit
GROUP BY Outlet_Location_Type 
ORDER BY Total_Sales DESC;

--H. All Metrics by Outlet Type
SELECT 
    Outlet_Type,
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales, --(CAST FOR DECIMAL)
    AVG(Total_Sales) * 1.0 AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    AVG(Rating) * 1.0 AS Avg_Rating,
    AVG(Item_Visibility) * 1.0 AS Item_Visibility
FROM blinkit
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

