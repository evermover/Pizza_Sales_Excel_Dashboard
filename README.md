# Pizza_Sales_Excel_Dashboard
This repository contains the code and resources for a Pizza Sales Analysis project. The project involves running SQL queries to extract data from a relational database and then using the extracted data to create a dashboard in Microsoft Excel for further analysis and visualization.

## Table of Contents
Introduction
Project Structure
Getting Started
Prerequisites
Running SQL Queries
Creating the Excel Dashboard
Dashboard Features
Data Sources
Contributing
License

## Introduction
The Pizza Sales Analysis project is aimed at analyzing sales data from a pizza restaurant chain to gain insights into their performance and make informed business decisions. The project consists of two main parts:

Running SQL queries to extract relevant data from a Microsoft SQL Server database.
Creating an Excel dashboard to visualize and analyze the extracted data.

## Project Structure
The project is organized as follows:


pizza-sales-analysis/
├── sql_queries/
│   ├── query1.sql
│   ├── query2.sql
│   └── ...
├── data/
│   ├── pizza_sales_dump.csv
│   └── ...
├── excel_dashboard/
│   ├── pizza_sales_dashboard.xlsx
│   └── ...
├── README.md
└── LICENSE

sql_queries/: Contains SQL query files used to extract data from the database.
data/: Contains data files, including the pizza_sales_dump.csv file, which is the result of running the SQL queries.
excel_dashboard/: Contains the Excel dashboard file (pizza_sales_dashboard.xlsx) that visualizes and analyzes the data.
README.md: This file, providing an overview of the project.
LICENSE: The license for this project. 

# Getting Started

## Prerequisites
Before running the SQL queries and creating the Excel dashboard, ensure that you have the following prerequisites in place:

Microsoft SQL Server installed.
SQL Server Management Studio (SSMS) or a similar SQL client installed.
Microsoft Excel installed.
## Running SQL Queries
Open your SQL client (e.g., SSMS).
Connect to the Microsoft SQL Server database where the pizza sales data is stored.
Execute the SQL query files located in the sql_queries/ directory one by one to extract the required data. Ensure that you save the results in CSV format.
## Creating the Excel Dashboard
Open Microsoft Excel.
Navigate to the excel_dashboard/ directory and open the pizza_sales_dashboard.xlsx file.
In the Excel dashboard, go to the Data tab and refresh the data connections to update the dashboard with the newly extracted data from the SQL queries.
Customize the dashboard as needed, adding charts, pivot tables, and other visualizations to analyze the pizza sales data.
## Dashboard Features
The Excel dashboard includes the following features:

Interactive charts displaying sales trends, product performance.
Pivot tables for slicing and dicing the data.
Filters and slicers for easy data exploration.
Summary statistics and key performance indicators (KPIs).

## Data Sources
The data for this project is sourced from a Microsoft SQL Server database. The SQL queries in the sql_queries/ directory are designed to extract the necessary data for analysis. The resulting data is stored in CSV format in the data/ directory.

## Contributing
If you would like to contribute to this project, feel free to fork the repository, make your changes, and submit a pull request. We welcome contributions in the form of bug fixes, new features, or improvements to documentation.

## License
This project is licensed under the MIT License, which means you are free to use, modify, and distribute the code as long as you include the appropriate attribution and disclaimers.
