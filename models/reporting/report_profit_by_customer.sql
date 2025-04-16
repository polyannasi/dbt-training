SELECT 
    customerid, 
    category,
    country,
    sum(orderprofit) AS profit 
FROM {{ ref('stg_orders') }}
GROUP BY 
    customerid, 
    category,
    country