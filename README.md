# Python_Diwali_Sales_Analysis
Python project for beginners- Analyze Diwali sales data to improve customer experience and sales

This project performs Exploratory Data Analysis (EDA) on the Diwali Sales Data to gain insights into customer spending behavior, demographics, and product sales. The analysis includes data cleaning, visualization, and key findings using Python libraries like Pandas, Matplotlib, and Seaborn.

Dataset

The dataset consists of 11,251 records and 15 columns, including:

User_ID: Unique identifier for customers
Cust_name: Customer's name
Product_ID: Identifier for products
Gender: Customer's gender
Age Group: Age category
Age: Customer's age
Marital_Status (Renamed as 'Shaadi'): Whether the customer is married or not
State: Customer's location
Zone: Regional classification
Occupation: Profession of the customer
Product_Category: Category of the purchased product
Orders: Number of orders placed
Amount: Total amount spent

Exploratory Data Analysis (EDA)

The EDA process involved:

Data Cleaning:Handling missing values (e.g., Amount column had missing values)

Removing irrelevant columns (Status, Unnamed1 as they contain no data)
Renaming Marital_Status to Shaadi
Statistical Summary:

df.describe() was used to check the distribution of numerical features.

Visualization:

Customer Demographics: Age, gender, marital status distribution.
Sales Trends: Top-selling products, highest-spending customers.
Regional Analysis: Sales based on states/zones.
Spending Patterns: Identifying the most valuable customer segments.

Key Findings

Top 10 customers who spent the most were identified.
Sales are influenced by gender and marital status.
Certain age groups contribute more to sales (e.g., 25-40 age group).
State-wise analysis helped understand geographic sales distribution.
Different occupations contribute to varying sales patterns.

Tools & Technologies Used

Python (Pandas, NumPy, Matplotlib, Seaborn)
Jupyter Notebook / Google Colab
Git & GitHub
