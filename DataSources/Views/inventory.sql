SELECT 
    i.product_id,
    p.category,
    p.product_name,
    p.price,
    i.date,
    i.stock_received,
    i.damaged_stock,
    Round(p.price*i.stock_received,2) Price
FROM
    inventory i,
    products p
WHERE
    i.product_id = p.product_id
