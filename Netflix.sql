-- 1. Apa Tipe Konten yang Paling Banyak Ditambahkan ke Netflix Setiap Tahun?

SELECT release_year, type, COUNT(*) AS count
FROM netflix_dataset
GROUP BY release_year, type
ORDER BY release_year, count DESC;

-- Penjelasan:
-- SELECT release_year, type, COUNT(*) AS count: Memilih tahun rilis (release_year), tipe konten (type), dan menghitung jumlah konten untuk setiap kombinasi tahun dan tipe.
-- FROM netflix_dataset: Mengambil data dari tabel netflix_dataset.
-- GROUP BY release_year, type: Mengelompokkan hasil berdasarkan tahun rilis dan tipe konten.
-- ORDER BY release_year, count DESC: Mengurutkan hasil berdasarkan tahun rilis dan jumlah konten secara menurun untuk melihat tipe konten yang paling banyak ditambahkan setiap tahun.

-- 2. Bagaimana Distribusi Rating Konten di Berbagai Negara?

SELECT country, rating, COUNT(*) AS count
FROM netflix_dataset
GROUP BY country, rating
ORDER BY country, rating;

-- Penjelasan:
-- SELECT country, rating, COUNT(*) AS count: Memilih negara (country), rating (rating), dan menghitung jumlah konten berdasarkan negara dan rating.
-- FROM netflix_dataset: Mengambil data dari tabel netflix_dataset.
-- GROUP BY country, rating: Mengelompokkan hasil berdasarkan negara dan rating.
-- ORDER BY country, rating: Mengurutkan hasil berdasarkan negara dan rating untuk melihat distribusi rating di berbagai negara.

-- 3. Siapa Sutradara yang Paling Produktif di Netflix?

SELECT director, COUNT(*) AS count
FROM netflix_dataset
GROUP BY director
ORDER BY count DESC
LIMIT 10;

-- Penjelasan:
-- SELECT director, COUNT(*) AS count: Memilih sutradara (director) dan menghitung jumlah konten yang mereka sutradarai.
-- FROM netflix_dataset: Mengambil data dari tabel netflix_dataset.
-- GROUP BY director: Mengelompokkan hasil berdasarkan sutradara.
-- ORDER BY count DESC: Mengurutkan hasil berdasarkan jumlah konten secara menurun.
-- LIMIT 10: Mengambil 10 sutradara teratas yang paling produktif.

-- 4. Apa Genre yang Paling Banyak Tersedia di Netflix dan Bagaimana Perubahannya dari Tahun ke Tahun?

SELECT release_year, listed_in AS genre, COUNT(*) AS count
FROM netflix_dataset
GROUP BY release_year, listed_in
ORDER BY release_year, count DESC;

-- Penjelasan:
-- SELECT release_year, listed_in AS genre, COUNT(*) AS count: Memilih tahun rilis (release_year), genre (listed_in), dan menghitung jumlah konten untuk setiap kombinasi tahun dan genre.
-- FROM netflix_dataset: Mengambil data dari tabel netflix_dataset.
-- GROUP BY release_year, listed_in: Mengelompokkan hasil berdasarkan tahun rilis dan genre.
-- ORDER BY release_year, count DESC: Mengurutkan hasil berdasarkan tahun rilis dan jumlah konten secara menurun untuk melihat bagaimana distribusi genre berubah dari tahun ke tahun.

-- 5. Apa Konten dengan Deskripsi Terpanjang dan Apa Artinya Untuk Penilaian atau Kategori Konten?

SELECT title, LENGTH(description) AS description_length, listed_in
FROM netflix_dataset
ORDER BY description_length DESC
LIMIT 10;

-- Penjelasan:
-- SELECT title, LENGTH(description) AS description_length, listed_in: Memilih judul konten (title), panjang deskripsi (description_length), dan genre (listed_in).
-- FROM netflix_dataset: Mengambil data dari tabel netflix_dataset.
-- ORDER BY description_length DESC: Mengurutkan hasil berdasarkan panjang deskripsi secara menurun.
-- LIMIT 10: Mengambil 10 konten teratas dengan deskripsi terpanjang.

