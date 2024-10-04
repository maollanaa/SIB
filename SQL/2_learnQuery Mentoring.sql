  -- "dc" disini sebagai alias agar tidak perlu menulis "DIM_CLients" (asal tabel) berkali-kali
  -- ILIKE berfungsi sama seperti LIKE, tetapi dengan perbedaan pada sensitivitas huruf besar/kecil.

SELECT 
dc."ClientId" 
dc."Brand"
dc."ClientDate"
FROM "DIM_CLients" dc
WHERE
  -- Filter menggunakan data jenis Numeric
-- dc."ClientId" > 100                             --Menampilkan tabel dengan kolom ClientId bernilai lebih dari 100
-- dc."ClientId" >= 100                            --Menampilkan tabel dengan kolom ClientId bernilai lebih dari sama dengan 100
-- dc."ClientId" = 100                             --Menampilkan tabel dengan kolom ClientId bernilai sama dengan 100
-- dc."ClientId" IN (100, 20, 55, 300)             --Menampilkan tabel dengan kolom ClientId bernilai 100, 20, 55 dan 300 saja
-- dc."ClientId" >= 100 AND dc."ClientId" <=100    --Menampilkan tabel dengan kolom ClientId bernilai lebih dari sama dengan 100 dan kurang dari sama dengan 100 (hasil = 100 || FIltering T+T)
  
  -- Filter menggunakan data jenis String
-- dc."Brand" = 'Siloam Hospitals'                --Menampilkan tabel dengan kolom Brand bernilai Siloam Hospitals
-- dc."Brand" LIKE '%siloam%'                     --Menampilkan tabel dengan kolom Brand yang mengandung kata "siloam"
-- UPPER(dc."Brand") LIKE 'SILOAM'                --Menampilkan tabel dengan kolom Brand yang mengandung kata "SILOAM" namun mengubah seluruh nilai pada kolom Brand menjadi upper case
-- UPPER(dc."Brand") LIKE lower 'SILOAM'          --Menampilkan tabel dengan kolom Brand yang mengandung kata "SILOAM" namun mengubah seluruh nilai pada kolom Brand menjadi upper case
-- dc."Brand" ILIKE '%siloam%'                    --Menampilkan tabel dengan kolom Brand yang mengandung kata "siloam" namun tidak sensitive terhadap upper/lower case
-- dc."Brand" ILIKE ANY (ARRAY['%siloam%', 'bakmi'])
-- dc."Brand" ILIKE '%siloam%' OR "Brand" ILIKE '%bakmi%';
  -- Line 23 dan 24 memiliki fungsi yang sama dimana Menampilkan tabel dengan kolom Brand yang mengandung lebih dari 1 kata (disini "siloam" dan "bakmi") namun tidak sensitive terhadap upper/lower case

  -- Filter Data Date
-- dc."ClientDate" >= '2024-01-03'
-- dc."ClientDate"::date = '2024-01-03'
-- dc."ClientDate"::date BETWEEN '2024-01-03' AND '2023-01-31'

  -- Filter Data Boolean
-- dc."enableQris" = TRUE
  
ORDER BY 1 ASC          --Angka 1 merujuk pada urutan kolom di SELECT, bukan nama kolom itu sendiri. (hasil akan menampilkan berdasarkan urutan kolom pertama (dc."ClientId))
