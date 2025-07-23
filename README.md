
# MovieLens Data Engineering Pipeline with dbt, Snowflake, and Amazon S3

## 1. Overview

This project demonstrates a modern data engineering pipeline using:

- **Amazon S3** for storing raw MovieLens data (CSV format)
- **Snowflake** as the cloud data warehouse
- **dbt (Data Build Tool)** for data transformation and modeling

The dataset is based on publicly available [**MovieLens 20M Dataset**](https://grouplens.org/datasets/movielens/20m/), which makes it ideal for building a real-world analytics pipeline. The data are contained in six files:
  - `genome-scores.csv`
  - `genome-tags.csv`
  - `links.csv`
  - `movies.csv`
  - `ratings.csv`
  - `tags.csv`

## 2. Architecture

![Netflix Pipeline](https://github.com/nguyetha79/netflix-dbt-project/blob/main/Picture1.png)

### Raw Data Storage in Amazon S3

The raw Netflix data is stored in an Amazon S3 bucket in CSV format, offering a scalable and highly durable storage solution. It supports both structured and unstructured data, integrates seamlessly with Snowflake, and enables versioning and lifecycle management—making it ideal for modern, cloud-based data pipelines.

### Data Warehousing in Snowflake

After raw data is uploaded to S3, it is ingested into **Snowflake**, where processing and querying are performed. In Snowflake, I created an external stage to read data directly from Amazon S3, loaded the data into staging tables, performed initial data profiling and cleaning, and established a centralized, scalable data warehouse for efficient data processing and analysis.

### Transformations Using dbt

**dbt** was used to perform SQL-based transformations, modeling, testing, and documentation:
  - Structured the pipeline with **staging**, **fct**, **dim** and **mart** models
  - Cleaned and transformed raw data into analytics-ready tables
  - Created **tests** (e.g., not null, unique constraints) to ensure quality
  - Generated **documentation** and model lineage automatically

## 4. Features
- End-to-end data pipeline using modern tools
- Modular dbt models following best practices
- Testable and extensible

## 5. Future Enhancements

- Add orchestration with **Apache Airflow** or **Dagster**
- Enable CI/CD with **GitHub Actions**
- Integrate **BI dashboards** (e.g., Looker, Tableau, Power BI)
- Automate dbt Docs and source freshness checks

