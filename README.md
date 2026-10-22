# 🏠 Airbnb Barcelona — End-to-End Data Analytics Portfolio

**An end-to-end analytics project covering data auditing, cleaning, relational data modeling, exploratory analysis, Power BI dashboards, and business recommendations for an Airbnb property portfolio manager.**

![Dashboard Preview](08_PowerBI_Dashboard/screenshots/market_overview.png)

*Replace the screenshot path above if your dashboard image is stored elsewhere in this repository.*

---

## 🎯 The Business Problem

An independent Airbnb portfolio manager in Barcelona needs to make better-informed decisions about the local market.

The key questions are:

1. **Understand supply:** Which neighbourhoods have high listing concentration and competition?
2. **Compare prices:** How do advertised prices vary by neighbourhood and room type?
3. **Explore seasonality:** How do calendar availability, advertised prices, and review activity change over time?

**Goal:** Use data to support market research and pricing decisions instead of relying on intuition alone.

---

## 📊 Key Findings

Add findings here only after verifying them against the analysis outputs.

| # | Finding | Potential Business Implication |
|---|---|---|
| 1 | **[Verified neighbourhood supply finding]** | Helps compare competition between neighbourhoods. |
| 2 | **[Verified calendar or seasonal pattern]** | Can inform further investigation of seasonal pricing. |
| 3 | **[Verified Superhost comparison]** | Helps assess differences between comparable host/listing groups. |
| 4 | **[Verified room-type mix or price comparison]** | Supports analysis of market positioning by room type. |
| 5 | **[Verified price outlier finding]** | Identifies records that may require validation or further investigation. |

> **Important:** These are placeholders, not results. Do not publish unverified numbers or claim that an observed pattern proves demand, occupancy, revenue, or profitability.

---

## 🛠️ The Analytics Pipeline

| Phase | Work Completed | Tools | Main Output |
|---|---|---|---|
| **1. Data Audit** | Inspected dataset dimensions, data types, missing values, duplicates, coverage, and relationships. | Python, Pandas | `03_Data_Audit/data_audit_report.md` |
| **2. Data Cleaning** | Prepared and validated data for analysis; documented relevant cleaning decisions. | Pandas, NumPy | `04_Cleaning/` |
| **3. Data Modeling** | Designed a relational structure for listings, calendar, reviews, and neighbourhood data. | MySQL | `05_Data_Modeling/data_model.md` |
| **4. Exploratory Analysis** | Analysed listing supply, advertised prices, room types, neighbourhoods, and activity patterns. | Pandas, Matplotlib, Seaborn | `06_Exploratory_Data_Analysis/` |
| **5. Business Analysis** | Compared market segments and developed evidence-based recommendations. | Python, Power BI | `07_Business_Analysis/business_recommendations.md` |
| **6. Dashboard Development** | Built interactive dashboards for market overview, pricing competition, and listing activity. | Power BI | `08_PowerBI_Dashboard/` |

*Update folder names and output links to match the actual repository structure.*

---

## 📈 Power BI Dashboards

### 1. Market Overview

- Listing supply across neighbourhoods
- Advertised price comparisons
- Room-type composition
- High-level market indicators

### 2. Pricing & Competition

- Advertised price distribution
- Neighbourhood and room-type comparisons
- Price benchmarks and relative positioning
- Listings requiring further pricing review

### 3. Listing Activity & Availability

- Calendar availability patterns
- Advertised price patterns over the available calendar period
- Review activity over time
- Differences across listing segments

---

## 💡 Business Recommendations

Recommendations should be tied to verified findings and treated as hypotheses to investigate—not guaranteed outcomes.

1. **Compare neighbourhoods before considering acquisitions.** Evaluate listing concentration, comparable advertised prices, room types, local regulations, acquisition costs, and operating expenses together.
2. **Use comparable listings when reviewing prices.** Compare listings with similar neighbourhoods, room types, capacity, and amenities before considering a pricing adjustment.
3. **Investigate seasonal patterns before changing prices.** Calendar availability and review activity can provide context, but they do not independently measure bookings or demand.
4. **Review extreme price records.** Check unusual prices for data errors, unusual property characteristics, or legitimate premium listings before drawing conclusions.

---

## 🧰 Tech Stack

![Python](https://img.shields.io/badge/Python-Data_Analysis-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data_Cleaning-150458)
![MySQL](https://img.shields.io/badge/MySQL-Data_Modeling-orange)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-yellow)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-orange)
![GitHub](https://img.shields.io/badge/GitHub-Version_Control-black)

---

## 📂 Data Source

The project uses publicly available Airbnb data from **[Inside Airbnb — Get the Data](https://insideairbnb.com/get-the-data/)**.

**Location:** Barcelona, Catalonia, Spain.

Datasets used may include:

- `listings.csv` — listing attributes and host information
- `calendar.csv` — calendar dates, availability, and advertised prices
- `reviews.csv` — review records and dates
- `neighbourhoods.csv` — neighbourhood reference data

The full raw files and complete processed datasets are not included in this repository because of their size. A small processed sample is included for reference.

To reproduce the analysis, download the appropriate Barcelona dataset snapshot from the source page and follow the repository's data setup instructions. Record the snapshot/download date used, since data coverage and results may change over time.

Check the source's applicable license and attribution requirements before redistributing data or publishing a Power BI file that may embed it.

---

## 📏 Methodology & Limitations

- Listing supply should be calculated using distinct listing IDs, not repeated calendar or review rows.
- Advertised prices are not the same as final prices paid by guests.
- Calendar availability does **not** prove occupancy or bookings.
- Review activity is an imperfect signal and does **not** represent all bookings.
- Price benchmarks depend on how comparable listings and reference prices are defined.
- Extreme values should be investigated before being removed or described as errors.
- Observed associations do not establish causation.
- This project does not independently establish realized revenue, net profit, or investment returns.

The dashboards are intended to support market research and further investigation—not to guarantee pricing outcomes or investment performance.

---

## 🚀 Future Improvements

- Validate key measures and document their formulas.
- Add statistical comparisons and sensitivity checks.
- Improve comparable-listing groups using room type, capacity, amenities, and neighbourhood.
- Incorporate verified booking, realized revenue, and cost data where legally available.
- Automate data-quality checks and refresh workflows.
- Add screenshots and a concise case study with verified findings.

---

## 👤 Author

**Aditya Kumar**  
B.Tech CSE | Data Analytics & Business Intelligence

- LinkedIn: [Add your LinkedIn profile]
- Email: [Add your professional email]

---

## 📜 Attribution

Data source: [Inside Airbnb](https://insideairbnb.com/get-the-data/).

This is an independent portfolio project and is not affiliated with or endorsed by Airbnb or Inside Airbnb.
