# 📊 COVID-19 Analytics Dashboard (BigQuery + Power BI)

🔹 Problem Statement

- During the COVID-19 pandemic, governments, researchers, and organizations needed real-time insights into the spread of the virus, vaccination progress, and healthcare readiness. However, raw data from multiple sources was scattered, complex, and difficult to analyze.

- This project addresses the challenge by building an interactive COVID-19 dashboard that:

- Consolidates global and country-level data.

- Tracks cases, deaths, vaccinations, and testing in real-time.

- Provides comparisons across countries and continents.

- Enables drill-down analysis for deeper insights.

---

🔹 Data Source

- Dataset: covid19 (You can view and download from here:)(https://drive.google.com/file/d/1BH-xjWXT5kRS7VBf65riWwanU4LsXN76/view?usp=sharing)

- Data Mode: DirectQuery (live connection to BigQuery for real-time updates)

- SQL Queries: 10 optimized queries used for extracting metrics like cases, deaths, vaccinations, rolling averages, and continent-level comparisons.

---

🔹 Tech Stack / Tools

- Google BigQuery (SQL-based querying, cloud data warehouse)

- Power BI (data visualization & reporting)

- SQL (for data extraction & aggregation)

- DirectQuery Mode (real-time data connection)

- Tags: Power BI BigQuery SQL Data Visualization Analytics COVID-19

---

🔹 Dashboard Features

- ✅ Global Overview Page – Total cases, deaths, vaccinations, death %, and interactive map.
- ✅ Top Countries & Comparisons – Compare top countries by cases, deaths, vaccinations, and tests (toggle via bookmark buttons).
- ✅ Global Trend Page – Time-series of rolling averages and new cases/deaths.
- ✅ 7-Day Rolling Average Page – Drill-through visualization for daily new cases trend.
- ✅ GDP vs Vaccination Analysis – Correlation between economic strength and vaccination coverage.
- ✅ Top 5 Countries in Each Continent – Ranking-based bar charts combining total cases & continent splits.
- ✅ Drill-through Pages – Country/continent-specific breakdowns for detailed insights.

---

🔹 Key Insights from Analysis

- 📌 Global Impact: The pandemic affected every continent, but severity varied significantly across regions.
- 📌 Top Countries: A handful of countries (USA, India, Brazil) contributed disproportionately to global cases and deaths.
- 📌 Vaccination Disparity: Developed countries with higher GDP per capita achieved faster vaccination rollouts compared to developing nations.
- 📌 Death Rates: Regions with limited healthcare capacity showed higher death percentages.
- 📌 Testing vs Cases: Higher testing rates correlated with better detection but not necessarily lower cases.
- 📌 Rolling Average Trends: Peaks in cases often lagged behind vaccination campaigns and policy changes.

---

🔹 Future Scope

- 🚀 Automation: Schedule automatic data refreshes via Power BI Service.
- 🤖 Machine Learning Forecasting: Use time-series models (ARIMA, Prophet) to predict new cases/deaths.
- 🌍 Healthcare Resource Tracking: Add ICU capacity, hospital beds, and oxygen supply data.
- 📈 Policy Impact Analysis: Correlate lockdowns/vaccination drives with case/death trends.
- 💻 Web Integration: Publish dashboard to web/embedded in portals for wider accessibility.

---

🔹 How to Use

- Start at Global Overview for high-level metrics.

- Use filters (date, country, continent) to customize view.

- Navigate between pages via tabs or buttons.

- Use drill-through to analyze country-level details.

- Explore bookmarks to switch between cases, deaths, vaccinations, tests views.
