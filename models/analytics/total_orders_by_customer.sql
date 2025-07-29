{{ config(
    materialized = 'view'
) }}

SELECT
    C.customerid,
    COUNT(
        o.orderid
    ) AS totalorders
FROM
    {{ ref('customers_stg') }} AS C
    INNER JOIN {{ ref('orders_stg') }} AS o
    ON C.customerid = o.customerid
GROUP BY
    C.customerid
