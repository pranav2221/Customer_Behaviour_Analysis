📊 Customer Shopping Behavior Analysis – Data Analytics Project

📌 Overview
        This project analyzes customer shopping behavior using transactional purchase data to uncover insights into spending patterns, customer segments, product performance, discount usage, subscriptions, and demographics.
The complete analysis workflow follows a real-world data analytics pipeline using Python, SQL, and Power BI, with insights communicated through a report and presentation.

## 📂 Dataset
Records: 3,900 customer transactions
Features: 18 columns

### Key Data Includes:
Customer demographics (Age, Gender, Location, Subscription Status)
Purchase details (Item, Category, Amount, Season, Size, Color)
Behavioral data (Discount Applied, Previous Purchases, Review Rating, Shipping Type)

### Data Quality:
  Missing values found in the *Review Rating* column
  No duplicate records

## 🛠️ Tools & Technologies
  Python: Pandas, NumPy (Data loading, EDA, cleaning)
  SQL: PostgreSQL / MySQL / SQL Server (Business analysis queries)
  Power BI: Interactive dashboard & visualizations
  Jupyter Notebook: Analysis and exploration

## 🔍 Project Steps
1️⃣ Data Loading & Exploration (Python)
 Imported dataset using Pandas
 Checked structure using `.info()` and `.describe()`
 Identified missing values and inconsistent columns

 2️⃣ Data Cleaning & Feature Engineering
 Imputed missing review ratings using category-level median
 Renamed columns to snake_case
 Removed redundant columns
 Created new features:
  Age groups
  Customer purchase frequency
  Customer segments (New, Returning, Loyal)

### 3️⃣ SQL Analysis (PostgreSQL / MySQL / SQL Server)
Performed business-focused SQL analysis, including:
 Revenue by gender
 High-spending customers using discounts
 Top-rated products
 Subscribers vs non-subscribers comparison
 Shipping type impact on purchase amount
 Discount-dependent products
 Revenue contribution by age group
 Repeat buyers and subscription trends

### 4️⃣ Power BI Dashboard
Built an interactive dashboard showing:
 Total customers & average purchase value
 Revenue by category and age group
 Subscription distribution
 Product performance insights
 Shipping and discount analysis

### 5️⃣ Reporting & Presentation
 Prepared a business report summarizing findings
 Created a professional PPT for stakeholder presentation

## 📊 Dashboard Highlights
 Quick KPIs for customer count, revenue, and ratings
 Visual comparison of subscriber vs non-subscriber behavior
 Category-wise and age-wise revenue insights
 Data-driven filters for interactive exploration

## ✅ Key Results & Insights

 Female customers contribute lower total revenue compared to male customers
 Discount users can still generate above-average purchase value
 Certain products heavily depend on discounts to drive sales
 Loyal customers form the largest segment
 Subscriptions increase customer retention more than average spend
 Young adult and middle-aged groups drive the highest revenue

## ▶️ How to Run This Project

### Python Analysis

1. Clone the repository
2. Install dependencies:

   ```bash
   pip install pandas numpy
   ```
3. Run the Jupyter Notebook or Python script for data cleaning and EDA

### SQL Analysis
1. Load cleaned CSV into PostgreSQL / MySQL / SQL Server
2. Execute SQL queries provided in the `/sql` folder

### Power BI
1. Open the `.pbix` file
2. Connect to the cleaned dataset
3. Refresh data to view dashboard

## 👤 Author
Pranav Patil
Aspiring Data Analyst | Python | SQL | Power BI
