# 🛒 Zepto Inventory & Sales Analysis Dashboard

This project showcases a complete **SQL + Power BI analysis pipeline** using a real-world e-commerce inventory dataset inspired by **Zepto**, a 10-minute delivery app. It highlights product pricing, discount patterns, stock status, and revenue estimations for better business decision-making.

## 📊 Tools & Technologies Used
- **PostgreSQL** (SQL Queries, Data Cleaning)
- **Power BI** (Dashboard & Visualizations)
- **pgAdmin** (Database setup)
- **DAX** (Custom measures)

---

## 🧾 Dataset Overview

- **Rows**: 3,700+ product SKUs  
- **Source**: Web-scraped Zepto product listings (hosted on Kaggle)  
- **Format**: CSV  
- **Key Columns**:
  - `sku_id`: Unique product identifier
  - `name`, `category`: Product name & category
  - `mrp`, `discountpercent`, `discountedsellingprice`
  - `weightingms`: Weight in grams
  - `outofstock`: Boolean status
  - `availablequantity`, `quantity`

---

## 🔍 SQL Analysis Performed

- Counted total records and explored sample data
- Detected and removed rows with `MRP = 0`
- Converted prices from **paise to rupees**
- Identified top discounted products
- Estimated **revenue by category**
- Ranked categories by **average discount %**
- Calculated **price per gram** to find value-for-money products
- Segmented products into **Low / Medium / Bulk** weight categories

> ✅ SQL file available in this repo → `zepto_sql_analysis.sql`

---

## 📊 Power BI Dashboard Highlights

![image](https://github.com/user-attachments/assets/d1b6cd7f-a0f0-428e-a6fc-2a9925204f2b)

### 💡 KPIs
- **Total Revenue**
- **Total SKUs in Database**
- **Stock Status Breakdown**

### 📈 Key Visuals
| Visual | Insight |
|--------|---------|
| Bar chart | Top 5 discounted products |
| Pie chart | In-stock vs Out-of-stock |
| Column chart | Revenue by category |
| Table | Products with best ₹/gram pricing |
| Bar chart | Average discounts by category |

---

## 🔍 Key Business Insights

- **87%** of SKUs are currently in stock  
- **Fruits & Vegetables** and **Meats & Eggs** offer the highest discounts  
- Several **high-MRP products are out of stock**, indicating high demand  
- Top **value-for-money products** identified using ₹ per gram logic

---

## 📫 Contact

**Khushi Nigam**  
🔗 [LinkedIn](https://www.linkedin.com/in/khushinigam7)  
📫nigamkhushi125@gmail.com)

---

