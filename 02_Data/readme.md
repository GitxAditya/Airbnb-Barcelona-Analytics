#  Data Directory — Airbnb Barcelona Analytics

This folder contains the datasets used for the Airbnb Barcelona Analytics project. 

Because the raw and processed datasets are extremely large (over 500MB combined), **the full CSV files are not hosted in this GitHub repository**. Instead, this repository contains small, 500-row sample files so you can inspect the schema, data types, and cleaning transformations without downloading massive files.

---

##  Folder Structure

```text
02_Data/
│
├── listings.csv                  # Raw listings data (Ignored by Git)
├── calendar.csv                  # Raw calendar data (Ignored by Git)
├── reviews.csv                   # Raw reviews data (Ignored by Git)
├── neighbourhoods.csv            # Raw neighbourhood data (Ignored by Git)
│
├── processed/                    # Cleaned data (Ignored by Git)
│   ├── listings_clean.csv
│   ├── calendar_clean.csv
│   ├── reviews_clean.csv
│   └── neighbourhoods_clean.csv
│
└── samples/                     
    └── processed/              
        ├── listings_clean_sample.csv       #  SMALL SAMPLES (Uploaded to GitHub)
        ├── calendar_clean_sample.csv       # 500 rows of cleaned data
        ├── reviews_clean_sample.csv
        └── neighbourhoods_clean_sample.csv