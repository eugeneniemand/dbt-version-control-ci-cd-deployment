{{ config(materialized='table') }}

SELECT
	OrderID
	CustomerID
	OrderDate
	Quantity
	Category
	Status
FROM
	{{ ref('orders') }}
WHERE
	Status NOT IN ('cancelled', 'pending')