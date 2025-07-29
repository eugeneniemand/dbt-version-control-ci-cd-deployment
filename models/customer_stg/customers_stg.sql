{{ config(materialized='view') }}

SELECT
	CustomerID,
	CustomerName,
	CAST(COALESCE(JoinDate, '2999-12-31') AS DATETIME) AS JoinDate,
	CASE
		WHEN JoinDate IS NOT NULL THEN date_diff('month', JoinDate, current_date)
		ELSE -1
	END AS Tenure,
	Status
FROM {{ ref('customers') }}
