# Web Retail Revenue Data Warehouse & BI Solution

End-to-end data warehouse and BI project for online retail sales using SQL Server, SSIS, SSRS, and Tableau.

## Features

- Star-schema data warehouse (Fact_Transactions, Dim_Customer, Dim_Product, Dim_Store, Dim_Date) defined in `sql/Data_Storage_Schema.sql`.
- SSIS ETL packages for customer, date, product, store, and transaction data (see `etl/` folders).
- Tableau dashboard showing sales trends, product contribution, and customer/store segmentation.
- Paginated-style reports for tax by store/category and customer purchase summaries.

## Datasets

- Online retail sales dataset from Kaggle (warehouse and Tableau).

Raw data is not included; download from Kaggle and update your local connections.

## Documentation

See `docs/Data_Storage_Report.docx` for the full technical report.

## Dashboard
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c8375c9f-95cf-47f6-865c-40387e97e91a" />


## Author

- Rohit Yadav
