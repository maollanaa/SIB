  --Menampilkan kolom customer_name (hindari duplikasi) dengan memunculkan nama dimulai dengan huruf "A" (A sebagai huruf pertama)
SELECT DISTINCT customer_name
FROM superstore_orders
WHERE customer_name LIKE 'A%'

  --Menampilkan kolom customer_name (hindari duplikasi) dengan memunculkan nama dengan pola huruf "A_t%" (A sebagai huruf pertama, t sebagai huruf ketiga)
SELECT DISTINCT customer_name
FROM superstore_orders
WHERE customer_name LIKE 'A_t%'

  --Menampilkan kolom customer_name (hindari duplikasi) dengan memunculkan nama dengan pola "A%t%" (mengandung A sebagai huruf pertama, dan huruf t)
SELECT DISTINCT customer_name
FROM superstore_orders
WHERE customer_name LIKE 'A_t%'

  --Menampilkan kolom product_name (hindari duplikasi)
SELECT DISTINCT product_name
FROM superstore_orders

  --Menampilkan kolom product_name (hindari duplikasi) dengan memunculkan nama produk yang mengandung kata "Phone", menghindari sensitive case juga
SELECT DISTINCT product_name, LOWER(product_name) AS l_productName
FROM superstore_orders
WHERE l_productName LIKE '%phone%'

SELECT DISTINCT product_name
FROM superstore_orders
WHERE LOWER(product_name) LIKE '%phone%'

  --Menampilkan kolom product_name (hindari duplikasi) dengan memunculkan nama produk dalam UPPER CASE 
SELECT DISTINCT UPPER(product_name) AS product_name_capital
FROM superstore_orders

SELECT DISTINCT UPPER(product_name) product_name_capital
FROM superstore_orders

  --Menampilkan kolom order_id, order_date, customer_name, product_name, sales yang terjadi di bulan Juli hingga September 2016
  --Dimana product_name mengandung kata "books", hindari sensitive case
SELECT order_id, order_date, customer_name, product_name, sales
FROM superstore_orders
WHERE LOWER(product_name) LIKE '%books%'
AND order_date BETWEEN '2016-07-01' AND '2016-09-30'

SELECT order_id, order_date, customer_name, product_name, sales
FROM superstore_orders
WHERE UPPER(product_name) LIKE '%BOOKS%'
AND order_date BETWEEN '2016-07-01' AND '2016-09-30'

  --Menampilkan beberapa operasi dalam bentuk kolom baru
SELECT
COUNT(order_id) AS order_count,                                      --Menghitung Jumlah Pesanan
SUM(sales) AS total_sales,                                           --Mengitung Total Penjualan
AVG(sales) AS avg_sales,                                             --Mengitung Rata-rata Penjualan
percentile_cont (0,5) WITHIN GROUP (ORDER BY sales) AS median_sales, --Menghitung Median Penjualan
MIN(sales) AS min_sales,                                             --Menampilkan Nilai terendah Penjualan
MAX(sales) AS max_sales                                              --Menampilkan Nilai tertinggi Penjualan
FROM superstore_orders

  --Menampilkan beberapa operasi dalam bentuk kolom baru yang tebagi berdasarkan beberapa region, dimana nilai penjualannya lebih dari 10
SELECT
region,
COUNT(order_id) AS order_count,                                      --Menghitung Jumlah Pesanan
SUM(sales) AS total_sales,                                           --Mengitung Total Penjualan
AVG(sales) AS avg_sales,                                             --Mengitung Rata-rata Penjualan
percentile_cont (0,5) WITHIN GROUP (ORDER BY sales) AS median_sales, --Menghitung Median Penjualan
MIN(sales) AS min_sales,                                             --Menampilkan Nilai terendah Penjualan
MAX(sales) AS max_sales                                              --Menampilkan Nilai tertinggi Penjualan
FROM superstore_orders
WHERE sales > 10
GROUP BY 1                    --Merujuk ke Select kolom pertama "region"
ORDER BY 3 DESC               --Merujuk ke Select kolom ketiga "total_sales" dan Mengurutkannya secara descending (L > s)

--Melakukan pengelompokan nilai sales menggunakan rentang sales (4 group)
SELECT order_id, sales,
CASE
  WHEN sales <=10 THEN '<=10'
  WHEN sales <=50 THEN '10+ - 50'
  WHEN sales <=100 THEN '50+ - 100'
  ELSE '>100'
END AS sales_group
FROM superstore_orders

SELECT order_id, sales,
CASE
  WHEN sales >100 THEN '>100'
  WHEN sales >50 THEN '50+ - 100'
  WHEN sales >=10 THEN '10+ - 50'
  ELSE '<10'
END AS sales_group
FROM superstore_orders
