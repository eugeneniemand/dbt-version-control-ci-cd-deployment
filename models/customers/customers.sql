{{ config(materialized='table') }}

SELECT *
FROM read_csv_auto('data/customers_dataset.csv')