# NHS Performance Analysis Dashboard Project

This project provides a complete data solution for analyzing summary-level NHS performance data. It includes a Python-based ETL pipeline, a SQLite database, optimized SQL queries, and a final data export designed for visualization in Tableau. The goal is to transform complex, report-style NHS data into actionable insights for hospital management.

![Dashboard Mockup](https://i.imgur.com/aBcDeFf.png)
*(Image: A conceptual mockup of a Tableau dashboard showing the types of KPIs analyzed)*

---

## 🚀 Project Overview

This project addresses a common challenge in healthcare analytics: working with publicly available data that is often formatted for human-readable reports rather than for machine analysis. The core of this repository is an ETL (Extract, Transform, Load) pipeline that intelligently parses these complex files, cleans them, and models them into a single, analysis-ready dataset.

### Key Features:

*   **Robust ETL Pipeline:** A Python script that handles complex Excel files with multiple sheets and irregular headers. Includes error handling and logging.
*   **Local Database:** Creates a local SQLite database, allowing for data persistence and complex querying.
*   **Reporting Queries:** Provides a set of optimized SQL queries for common healthcare reporting tasks.
*   **Tableau-Ready Export:** Generates a clean CSV file specifically formatted for easy use in Tableau Public to build interactive dashboards.
*   **Actionable Insights:** The analysis focuses on deriving clear, actionable recommendations for improving hospital efficiency and patient care.

---

## 🛠️ Tech Stack

*   **Data Processing:** Python (Pandas)
*   **Database:** SQLite
*   **Visualization:** Tableau Public (via CSV export)
*   **Version Control:** Git & GitHub
*   **Environment:** Kaggle Notebooks

---

## 📂 Repository Structure

.
├── etl_pipeline.py # The core Python script for the ETL process
├── optimized_queries.sql # Example SQL queries for reporting
├── EXECUTIVE_SUMMARY.md # High-level summary and recommendations for management
├── TECHNICAL_DOCUMENTATION.md # Detailed methodology and technical specifications
└── README.md # This file



---

## ⚙️ Setup and Usage

This project is designed to be run within a Kaggle Notebook environment to ensure reproducibility.

### Step 1: Set up the Kaggle Environment

1.  Create a new Kaggle Notebook.
2.  Click on **"+ Add data"** in the right-hand panel.
3.  Search for the dataset: `nhs-free-dataset-for-analysis`
4.  Ensure you select the dataset authored by **Ahad Saleem**. Add it to the notebook.

### Step 2: Run the ETL Pipeline

1.  Copy the entire contents of the `etl_pipeline.py` file from this repository into a single cell in your Kaggle notebook.
2.  Run the cell. The script will execute the full ETL process.
3.  **Expected Output:**
    *   Logs detailing the Extract, Transform, and Load phases.
    *   A verification message confirming the creation of `nhs_data.db` and `tableau_data.csv` in the `/kaggle/working/` directory.

### Step 3: Using the Outputs

*   **SQLite Database (`nhs_data.db`):**
    *   You can connect to this database within the Kaggle notebook using Python's `sqlite3` library to run the queries from `optimized_queries.sql`.

*   **Tableau Dashboard (`tableau_data.csv`):**
    1.  In the Kaggle notebook output panel, navigate to the `/kaggle/working/` directory.
    2.  Download the `tableau_data.csv` file to your local machine.
    3.  Open Tableau Public, connect to a **"Text File"**, and select the downloaded CSV.
    4.  You can now build interactive visualizations as outlined in the `TECHNICAL_DOCUMENTATION.md`.

---

## 📊 Key Metrics Analyzed

This project focuses on deriving insights from the available summary data, including:

*   **A&E Attendance Trends:** Analyzing the year-over-year growth in A&E patient volume.
*   **Outpatient Efficiency:** Calculating the average "Did Not Attend" (DNA) rate as a key performance indicator.
*   **A&E Quality vs. Pressure:** Correlating quality metrics (like waiting times) with patient volume to understand system resilience.
*   **Patient Satisfaction Drivers:** Investigating the relationship between performance indicators and patient satisfaction scores.

---

## 📄 Documentation

*   **[Executive Summary](./EXECUTIVE_SUMMARY.md):** A high-level overview of the project's findings and actionable recommendations, intended for a non-technical audience like hospital management.
*   **[Technical Documentation](./TECHNICAL_DOCUMENTATION.md):** A detailed document explaining the project's methodology, data sources, ETL process, database schema, and key assumptions.