# Modern Data Warehouse & Business Intelligence Project

## 📌 Project Overview

This project demonstrates the design and implementation of a modern **Data Warehouse using Microsoft SQL Server**, integrating sales data from two different business systems: **ERP (Enterprise Resource Planning)** and **CRM (Customer Relationship Management)**.

The primary objective is to consolidate data from multiple sources, address data quality issues, establish a unified analytical data model, and develop SQL-based analytics to support business reporting and data-driven decision-making.

The project covers the complete data warehousing workflow, from data ingestion and transformation to data integration, analytical modeling, and reporting.

## 🎯 Project Objectives

### 1. Data Warehousing (Data Engineering)

Build a centralized data warehouse that integrates data from multiple business systems and provides a reliable foundation for analytical workloads.

Key objectives:

- **Data Integration:** Import and consolidate sales-related data from ERP and CRM CSV files.
- **Data Quality:** Identify and resolve data quality issues, including duplicates, missing values, inconsistent formats, and data integrity problems.
- **Data Transformation:** Clean, standardize, and transform source data into a consistent structure.
- **Data Modeling:** Design a user-friendly analytical data model optimized for reporting and business queries.
- **Data Scope:** Work with the latest available datasets. Historical data tracking and historization are outside the scope of this project.
- **Documentation:** Document the data architecture, data model, and transformation logic to support business stakeholders and analytics teams.

### 2. Business Intelligence (Data Analytics)

Develop SQL-based analytical queries to extract meaningful business insights from the integrated data warehouse.

The analytics layer aims to support:

- Sales performance analysis.
- Customer behavior and segmentation analysis.
- Product and category performance.
- Revenue and business performance analysis.
- Identification of trends and actionable business insights.

## 🏗️ Data Architecture

The project follows a layered data warehouse architecture to organize the ingestion, transformation, integration, and consumption of data.

**High-Level Architecture:**

```text
       SOURCE SYSTEMS
      ┌───────────────┐
      │     ERP       │
      │   (CSV Files) │
      └───────┬───────┘
              │
              ▼
      ┌───────────────┐
      │               │
      │  CRM          │
      │  (CSV Files)  │
      └───────┬───────┘
              │
              ▼
     ┌──────────────────┐
     │   DATA INGESTION │
     │                  │
     │ Import CSV Files │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │   STAGING LAYER  │
     │                  │
     │ Raw Data Loading │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │ TRANSFORMATION & │
     │   DATA QUALITY   │
     │                  │
     │ Cleaning         │
     │ Standardization  │
     │ Deduplication    │
     │ Validation       │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │ DATA WAREHOUSE   │
     │                  │
     │ Integrated Data  │
     │ Analytical Model │
     └────────┬─────────┘
              │
              ▼
     ┌──────────────────┐
     │ ANALYTICS LAYER  │
     │                  │
     │ SQL Analysis     │
     │ Business Metrics │
     │ Reporting        │
     └──────────────────┘
```

## 🛠️ Technology Stack

| Component | Technology |
|---|---|
| Database | Microsoft SQL Server |
| Query Language | SQL / T-SQL |
| Data Sources | ERP and CRM CSV Files |
| Data Integration | SQL-based ETL |
| Data Modeling | Analytical Data Modeling |
| Version Control | Git & GitHub |
| Documentation | Markdown |

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/
│   ├── source_erp/
│   └── source_crm/
│
├── docs/
│   ├── data_architecture.md
│   ├── data_catalog.md
│   └── data_model.png
│
├── scripts/
│   ├── init_database.sql
│   │
│   ├── bronze/
│   │   └── load_bronze.sql
│   │
│   ├── silver/
│   │   └── transform_silver.sql
│   │
│   └── gold/
│       └── load_gold.sql
│
├── tests/
│   └── data_quality_checks.sql
│
├── analytics/
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   └── sales_analysis.sql
│
└── README.md
```

*Note: The folder structure is a proposed organization and can be adjusted to match the actual repository.*

## ⚙️ Project Workflow

The implementation is organized into the following phases:

**Phase 1: Database Initialization**
- Create the SQL Server database.
- Establish the required schemas and database objects.
- Prepare the environment for data ingestion.

**Phase 2: Data Ingestion**
- Import ERP and CRM CSV datasets.
- Load source data into the staging environment.
- Validate the initial data load.

**Phase 3: Data Transformation & Quality**
- Identify and resolve data inconsistencies.
- Handle missing and duplicate records.
- Standardize data formats and values.
- Validate data relationships and integrity.

**Phase 4: Data Warehouse Development**
- Integrate ERP and CRM datasets.
- Develop the analytical data model.
- Establish relationships between business entities.
- Optimize the model for analytical queries.

**Phase 5: Business Analytics**
- Develop SQL-based analytical queries.
- Calculate business KPIs and metrics.
- Analyze sales, customers, and product performance.
- Generate insights
