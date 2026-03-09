USE [20051855_DW];
GO

DROP TABLE IF EXISTS Fact_Transactions;
-- Drop Dimension Tables
DROP TABLE IF EXISTS Dim_Product;
DROP TABLE IF EXISTS Dim_Customer;
DROP TABLE IF EXISTS Dim_Store;
DROP TABLE IF EXISTS Dim_Date;

USE [20051855_DW];
GO
-- Creating Dimension Tables
CREATE TABLE Dim_Product (
    prod_subcat_key INT NOT NULL IDENTITY,
    prod_cat VARCHAR(50),
    prod_subcat VARCHAR(50),
	PRIMARY KEY (prod_subcat_key)
);
GO

CREATE TABLE Dim_Customer (
    cust_key INT NOT NULL IDENTITY,
    cust_id INT,
    DOB DATE,
    Age INT,
    Gender VARCHAR(50),
    city_code INT,
	PRIMARY KEY (cust_key)
);
GO

CREATE TABLE Dim_Store (
    store_key INT IDENTITY(1,1),
    store_type VARCHAR(50) UNIQUE,
	PRIMARY KEY (store_key)
);
GO

CREATE TABLE Dim_Date (
    date_key INT NOT NULL IDENTITY,
    full_date DATE,
    year INT,
    month INT,
    quarter VARCHAR(10),
    weekday VARCHAR(20),
	PRIMARY KEY (date_key)
);
GO

-- Creating Fact Table
CREATE TABLE Fact_Transactions (
    transaction_key INT NOT NULL IDENTITY,
    transaction_id NUMERIC(18,0),
	cust_key INT NOT NULL,
	prod_subcat_key INT NOT NULL,
	store_key INT NOT NULL,
	date_key INT NOT NULL,
    Qty INT,
    Rate INT,
    Tax FLOAT,
    total_amt FLOAT,
    FOREIGN KEY (cust_key) REFERENCES Dim_Customer(cust_key),
    FOREIGN KEY (prod_subcat_key) REFERENCES Dim_Product(prod_subcat_key),
    FOREIGN KEY (store_key) REFERENCES Dim_Store(store_key),
    FOREIGN KEY (date_key) REFERENCES Dim_Date(date_key),
	PRIMARY KEY (transaction_key)
);
GO




