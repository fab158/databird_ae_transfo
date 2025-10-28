<<<<<<< HEAD
select CONCAT(order_id, '_', product_id) AS order_item_id,
 order_id,
 product_id,
 seller_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at,
 price as unit_price,
 shipping_cost,
 (price * quantity) + shipping_cost as total_order_item_amount
=======
select CONCAT(order_id, '_', product_id) AS order_item_id_y,
 order_id_y,
 product_id_y,
 seller_id_y,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at_x,
 price as unit_price_y,
 shipping_cost_y,
 quantity as item_quantity_y,
 (price * quantity) + shipping_cost as total_order_item_amount_y
>>>>>>> b4cfa573e1010c61f1d2cae745da331d90707e8b
from {{ source('sales_database', 'order_item') }}
