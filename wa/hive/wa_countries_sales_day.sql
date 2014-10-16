CREATE TABLE wa_countries_sales_day (
	country_name STRING,
	amount DOUBLE 
)
PARTITIONED BY (site STRING, created_date STRING)
;
