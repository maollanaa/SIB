  --menampilkan semua tabel dengan nilai pada tabel sales lebih dari 1000
SELECT *
FROM superstore_orders
WHERE sales > 1000

  --menampilkan tabel order_id, order_date, sales, quantity dengan nilai pada tabel sales lebih dari 1000
SELECT order_id, order_date, sales, quantity
FROM superstore_orders
WHERE sales > 1000

  --menampilkan semua tabel dengan mengurutkan berdasarkan row_id secara ascending (s > L)
SELECT *
FROM superstore_orders
ORDER BY row_id ASC

  --menampilkan tabel order_id, order_date, sales, quantity, region dengan nilai pada tabel region = South dan mengurutkan berdasarkan sales secara descending (L > s) 
SELECT order_id, order_date, sales, quantity, region
FROM superstore_orders
WHERE region = 'South'
ORDER BY sales DESC
