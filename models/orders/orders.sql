{{ config(materialized='table') }}

SELECT *
FROM read_csv_auto('data/orders_dataset.csv')