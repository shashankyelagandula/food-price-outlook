# 🍎 Food Price Outlook: Consumer Price Index Analysis

This repository contains materials related to a data analytics research project focused on analyzing changes in food prices and their impact on consumer behavior, using **Consumer Price Index (CPI)** data.

---

## 📌 Project Overview

The project aims to investigate how changes in food prices affect consumer spending patterns and the demand for specific food items. By utilizing detailed CPI datasets, the project seeks to:

- Build predictive models for future food expenditures.
- Help food producers and retailers plan their pricing strategies.
- Estimate which food items might experience demand surges due to price changes.
- Explore the influence of socioeconomic factors on food-related consumer behavior.
- Inform policymakers on food and agricultural policies, particularly regarding food insecurity and the impact of price fluctuations on vulnerable groups.

---

## 📊 Data

The core dataset used in this project is `CPIForecast.csv`, which provides **"Changes in Consumer Price Indexes, 2020 through 2023"**. This dataset includes information on various food categories such as meat, dairy, fruits, and vegetables, detailing their relative importance, month-to-month changes, year-over-year changes, and historical averages.

### Key Columns in `CPIForecast.csv`:

- Consumer Price Index item  
- Relative importance  
- Month-to-month Feb 2023 to Mar 2023 (Percent change)  
- Year-over-year Mar 2022 to Mar 2023 (Percent change)  
- Year-to-date avg. 2023 to avg. 2022 (Percent change)  
- Annual 2020, 2021, 2022 (Percent change)  
- 20-year historical average (2003 - 2022) (Percent change)  
- Prediction Interval 2023 (Lower, Mid, Upper percent change)

### Additional Data Files:

- `CPIForecast.xlsx - April 2023 CPI Forecast.csv`
- `CPIForecast.xlsx - Sheet1.csv`
- `CPIForecast.xlsx - Sheet2.csv`
- `CPIForecast.xlsx - Sheet3.csv`
- `CPIForecast.xlsx - Sheet4.csv`
- `Old_DataSet_CPIForecast.xlsx - February 2023 CPI Forecast.csv`

These likely represent different sheets or versions of the CPI forecast data.

---

## 💻 Code

The R script `ProjectAssignment#4.R` is used for data analysis and visualization. It loads libraries such as `ggplot2`, `dplyr`, `tidyverse`, and `readxl`. The script demonstrates creating data frames and generating visualizations like histograms and line plots.



## ❓ Research Questions

- What is the annual change in the consumer price index for all food items, and how does it compare to the historical average over the previous 20 years?

- How do changes in food prices affect consumer behavior and spending patterns?

- How can this data be used to build predictive models for future food expenditures?

- How do different socioeconomic factors affect consumer behavior linked to food?

- How can policymakers utilize this dataset to inform food and agricultural policies and address food insecurity?

---

## 📁 Project Assignments

- **ProjectAssignment#4.docx**: Details for "Project Assignment#4 – AIT580 Data Analytics Research Project Food Price Outlook".

- **ProjectAssignment-3_Shashank.docx**: Research Project Dataset Literature Review for Project Assignment 3, focusing on Food Price Outlook with references to U.S. Bureau of Labor Statistics reports.

- **ProjectAssignment#1_ShashankYelagandula.pdf** and **ProjectAssignment-2_AIT.docx**: Likely earlier assignments related to project development.
