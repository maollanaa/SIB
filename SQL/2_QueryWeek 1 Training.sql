  --menampilkan semua kolom pada tabel superstore_orders dengan nilai pada kolom sales lebih dari 1000
SELECT *
FROM superstore_orders
WHERE sales > 1000

  --menampilkan kolom order_id, order_date, sales, quantity dengan nilai pada kolom sales lebih dari 1000
SELECT order_id, order_date, sales, quantity
FROM superstore_orders
WHERE sales > 1000

  --menampilkan semua kolom pada tabel superstore_orders dengan mengurutkan berdasarkan row_id secara ascending (s > L)
SELECT *
FROM superstore_orders
ORDER BY row_id ASC

  --menampilkan tabel order_id, order_date, sales, quantity, region dengan nilai pada tabel region = South dan mengurutkan berdasarkan sales secara descending (L > s) 
SELECT order_id, order_date, sales, quantity, region
FROM superstore_orders
WHERE region = 'South'
ORDER BY sales DESC

  --menampilkan tabel category dan tidak menampilkan duplikasi pada kolom
SELECT DISTINCT category
FROM superstore_orders

  --menampilkan kolom pada tabel superstore_orders dengan nilai lebih dari 1 (Tables, Supplies, Storage pada tabel sub category
SELECT *
FROM superstore_orders
WHERE sub_category = 'Tables'
OR sub_category = 'Supplies'
OR sub_category = 'Storage'

SELECT *
FROM superstore_orders
WHERE sub_category IN ('Tables', 'Supplies', 'Storage')

  --menampilkan semua kolom pada tabel superstore_orders dengan nilai pada kolom order_date diantara 2015-01-02 hingga 2015-12-31 secara descending (L > s) 
SELECT *
FROM superstore_orders
WHERE order_date BETWEEN '2015-01-02' AND '2015-12-31'
ORDER BY ored_date DESC

  --menampilkan semua kolom pada tabel superstore_orders dengan nilai pada kolom region selain "East"
SELECT *
FROM superstore_orders
WHERE region != 'East'

  --menampilkan semua kolom pada tabel superstore_orders dimana kolom postal_code bernilai 42420 dan kolom quantity bernilai 3 (FILTERING t+t = T)
  --serta kolom quantity bernilai 7 serta/atau kolom postal_code bernilai 33311 (t+f = T)
SELECT *
FROM orders
WHERE (postal_code = '42420' AND quantity = 3)
OR (quantity = 7 OR postal_code = '33311')

SELECT *
FROM orders
WHERE quantity = 7 OR postal_code = '33311' OR postal_code = '42420' AND quantity = 3





















