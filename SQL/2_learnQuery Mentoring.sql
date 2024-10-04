  -- "dc" disini sebagai alias agar tidak perlu menulis "DIM_CLients" (asal tabel) berkali-kali

SELECT *

FROM "DIM_CLients" dc
WHERE
  -- Filter menggunakan data jenis Numeric
-- dc."ClientId" > 100                             --Menampilkan tabel dengan kolom ClientId bernilai lebih dari 100
-- dc."ClientId" >= 100                            --Menampilkan tabel dengan kolom ClientId bernilai lebih dari sama dengan 100
-- dc."ClientId" = 100                             --Menampilkan tabel dengan kolom ClientId bernilai sama dengan 100
-- dc."ClientId" IN (100, 20, 55, 300)             --Menampilkan tabel dengan kolom ClientId bernilai 100, 20, 55 dan 300 saja
-- dc."ClientId" >= 100 AND dc."ClientId" <=100
