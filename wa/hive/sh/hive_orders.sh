FROM orders

INSERT OVERWRITE TABLE wa_countries_sales_day
PARTITION (site, created_date)
    SELECT delivery_country, SUM(order_total), site, created_date
    WHERE site='www.tinydeal.com' AND created_date = '2014-09-01'
    GROUP BY site, created_date, delivery_country

