-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2023 at 06:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `News`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_012147_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(2550) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `description`, `content`, `url`, `url_image`, `published_at`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Serangan Titan di Kecamatan Beji Depok', 'Nur Afif Raihan', 'Pada siang yang cerah ada sebuah ledakan besar yang terjadi di sekitar jembatan pocin yang menyebabkan banyak kerusakan gedung dan warung di sekitar nya', 'Mencari untuk memulihkan harapan manusia yang semakin menipis, Survey Corps memulai misi untuk merebut kembali Tembok Maria', 'http//:beritadepok.com', 'https://sport.detik.com/sepakbola/foto-sepakbola/d-7021867/jebolan-pemain-top-piala-dunia-u-17-fabregas-kroos-sampai-foden?_ga=2.81715733.382698828.1700187045-154665396.1673172735', '2023-11-17 02:42:00', 'Fenomena', '2023-11-16 19:57:23', '2023-11-16 19:57:23'),
(3, 'Penampakan Telaga di Hawaii Berubah Warna Misterius Menjadi Pink', 'Detik News', 'Sebuah kolam di Suaka Margasatwa Nasional Kealia Pond di Maui, Hawaii berubah warna jadi merah muda. Para ilmuwan menduga kekeringan jadi sebab warna aneh itu.', 'Foto yang diambil pada 8 November 2023 ini disediakan oleh Leslie Diamond menunjukkan kolam di Suaka Margasatwa Nasional Kealia Pond di Maui, Hawaii, berubah warna menjadi merah muda pada 30 Oktober 2023.', 'https://news.detik.com/foto-news/d-7035899/penampakan-telaga-di-hawaii-berubah-warna-misterius-menjadi-pink', 'https://akcdn.detik.net.id/community/media/visual/2023/11/14/penampakan-telaga-di-hawaii-berubah-warna-misterius-menjadi-pink_169.jpeg?w=700&q=90', '2023-11-14 05:42:00', 'Fenomena', '2023-11-16 20:16:04', '2023-11-16 20:16:04'),
(4, 'Penampakan Telaga di Hawaii Berubah Warna Misterius Menjadi Pink', 'Detik News', 'Sebuah kolam di Suaka Margasatwa Nasional Kealia Pond di Maui, Hawaii berubah warna jadi merah muda. Para ilmuwan menduga kekeringan jadi sebab warna aneh itu.', 'Foto yang diambil pada 8 November 2023 ini disediakan oleh Leslie Diamond menunjukkan kolam di Suaka Margasatwa Nasional Kealia Pond di Maui, Hawaii, berubah warna menjadi merah muda pada 30 Oktober 2023.', 'https://news.detik.com/foto-news/d-7035899/penampakan-telaga-di-hawaii-berubah-warna-misterius-menjadi-pink', 'https://akcdn.detik.net.id/community/media/visual/2023/11/14/penampakan-telaga-di-hawaii-berubah-warna-misterius-menjadi-pink_169.jpeg?w=700&q=90', '2023-11-14 05:42:00', 'Fenomena', '2023-11-16 20:16:04', '2023-11-16 20:16:04'),
(5, 'Statistik Timnas Indonesia vs Timnas Irak di Kualifikasi Piala Dunia 2026 Zona Asia: Garuda Dikurung Singa Mesopotamia', 'Basra', 'Statisik laga Timnas Indonesia vs Timnas Irak di Kualifikasi Piala Dunia 2026 Zona Asia memperlihatkan bahwa permainan Garuda benar-benar dikurung oleh tim berjuluk Singa Mesopotamia tersebut. Alhasil, Timnas Indonesia pun akhirnya kalah 1-5 di laga perdana Grup F tersebut.', 'Lima gol untuk Irak dicatatkan oleh Bashar Rasan (20’), gol bunuh diri Jordi Amat (35’), Osama Rashid (60’), Youssef Amyn (81’), dan Ali Al-Hamadi (88’). Sedangkan, Skuad Garuda membalaskan satu gol via tendangan keras Shayne Pattynama (45+3’)', 'https://bola.okezone.com/read/2023/11/17/51/2921911/statistik-timnas-indonesia-vs-timnas-irak-di-kualifikasi-piala-dunia-2026-zona-asia-garuda-dikurung-singa-mesopotamia', 'https://img.okezone.com/okz/500/library/images/2023/11/17/8hg9ikkiw8uc3n9a6jav_15322.jpg', '2023-11-10 15:04:00', 'sports', '2023-11-16 20:54:25', '2023-11-16 20:54:25'),
(6, 'Statistik Timnas Indonesia vs Timnas Irak di Kualifikasi Piala Dunia 2026 Zona Asia: Garuda Dikurung Singa Mesopotamia', 'Basra', 'Statisik laga Timnas Indonesia vs Timnas Irak di Kualifikasi Piala Dunia 2026 Zona Asia memperlihatkan bahwa permainan Garuda benar-benar dikurung oleh tim berjuluk Singa Mesopotamia tersebut. Alhasil, Timnas Indonesia pun akhirnya kalah 1-5 di laga perdana Grup F tersebut.', 'Lima gol untuk Irak dicatatkan oleh Bashar Rasan (20’), gol bunuh diri Jordi Amat (35’), Osama Rashid (60’), Youssef Amyn (81’), dan Ali Al-Hamadi (88’). Sedangkan, Skuad Garuda membalaskan satu gol via tendangan keras Shayne Pattynama (45+3’)', 'https://bola.okezone.com/read/2023/11/17/51/2921911/statistik-timnas-indonesia-vs-timnas-irak-di-kualifikasi-piala-dunia-2026-zona-asia-garuda-dikurung-singa-mesopotamia', 'https://img.okezone.com/okz/500/library/images/2023/11/17/8hg9ikkiw8uc3n9a6jav_15322.jpg', '2023-11-10 15:04:00', 'sports', '2023-11-16 20:54:25', '2023-11-16 20:54:25'),
(7, 'Google Bayar Samsung Rp 124 Triliun demi Amankan Search dan Play Store', 'Kompas', 'Google ternyata harus merogoh kocek sebesar 8 miliar dollar AS atau sekitar Rp 124,3 triliun, agar layanannya tersedia secara bawaan di jajaran smartphone Samsung.', 'Dana tersebut digelontorkan demi mengamankan mesin pencari Google Search, Google Assistant serta toko aplikasi Google Play Store di HP Samsung, selama periode empat tahun sejak kesepakatan diteken. Pernyataan itu disampaikan oleh Wakil Presiden Kemitraan Google, James Kolotouros, dalam sebuah persidangan di pengadilan San Francisco, Amerika Serikat. Sidang itu memproses gugatan Epic Games yang menuduh Google melanggar undang-undang antimonopoli', 'https://bola.okezone.com/read/2023/11/17/51/2921911/statistik-timnas-indonesia-vs-timnas-irak-di-kualifikasi-piala-dunia-2026-zona-asia-garuda-dikurung-singa-mesopotamia', 'https://img.okezone.com/okz/500/library/images/2023/11/17/8hg9ikkiw8uc3n9a6jav_15322.jpg', '2023-11-10 15:04:00', 'technologi', '2023-11-16 20:58:52', '2023-11-16 20:58:52'),
(8, 'Google Bayar Samsung Rp 124 Triliun demi Amankan Search dan Play Store', 'Kompas', 'Google ternyata harus merogoh kocek sebesar 8 miliar dollar AS atau sekitar Rp 124,3 triliun, agar layanannya tersedia secara bawaan di jajaran smartphone Samsung.', 'Dana tersebut digelontorkan demi mengamankan mesin pencari Google Search, Google Assistant serta toko aplikasi Google Play Store di HP Samsung, selama periode empat tahun sejak kesepakatan diteken. Pernyataan itu disampaikan oleh Wakil Presiden Kemitraan Google, James Kolotouros, dalam sebuah persidangan di pengadilan San Francisco, Amerika Serikat. Sidang itu memproses gugatan Epic Games yang menuduh Google melanggar undang-undang antimonopoli', 'https://bola.okezone.com/read/2023/11/17/51/2921911/statistik-timnas-indonesia-vs-timnas-irak-di-kualifikasi-piala-dunia-2026-zona-asia-garuda-dikurung-singa-mesopotamia', 'https://img.okezone.com/okz/500/library/images/2023/11/17/8hg9ikkiw8uc3n9a6jav_15322.jpg', '2023-11-10 15:04:00', 'technologi', '2023-11-16 20:58:52', '2023-11-16 20:58:52'),
(10, 'Hadiri GEMIRA Jateng Berselawat, Muzani Ajak Warga Demak Dukung Palestina', 'Detiknews', 'Sekjen Partai Gerindra Ahmad Muzani menghadiri acara Gerakan Muslim Indonesia Raya (GEMIRA) Jawa Tengah Berselawat di Alun-alun Kabupaten Demak. Dalam acara tersebut, Muzani menyampaikan salam dari Ketua Umum Gerindra Prabowo Subianto.', 'Dalam keterangan tertulis yang diterima, Jumat (17/11/2023), Muzani turut melantik pengurus GEMIRA Jateng yang merupakan sayap Partai Gerindra. GEMIRA dipimpin oleh Gus Irfan Yusuf Hasyim, cucu KH Hasyim Asyari, pendiri Nahdlatul Ulama.Muzani menyampaikan salam hormat dari Prabowo Subianto kepada masyarakat Demak. Prabowo, kata Muzani, ingin sekali berkunjung dan menyapa masyarakat Demak. Selain itu, Muzani meminta kepada ribuan masyarakat Demak yang hadir untuk terus berselawat sebagai rasa syukur kepada Allah SWT, termasuk mendoakan rakyat Palestina yang menderita akibat agresi Israel.', 'https://news.detik.com/pemilu/d-7041645/hadiri-gemira-jateng-berselawat-muzani-ajak-warga-demak-dukung-palestina', 'https://akcdn.detik.net.id/community/media/visual/2023/11/17/sekjen-gerindra-ahmad-muzani-dok-gerindra_169.jpeg?w=700&q=90', '2023-05-10 15:04:00', 'politik', '2023-11-16 21:06:42', '2023-11-16 21:06:42'),
(11, 'Lini Ritel Diakuisisi UOB, Citibank Indonesia Tetap Lanjutkan Bisnis di RI', 'Bisnis.com', 'JAKARTA -- Citibank, N.A., Indonesia (Citi Indonesia) melakukan refocusing bisnis, di mana pihaknya akan fokus dalam bisnis Institutional Banking, usai menjual sebagian lini bisnis, yakni consumer banking kepada Bank UOB Indonesia.', 'CEO Citi Indonesia Batara Sianturi mengatakan ke depannya, Citibank Indonesia akan mengembangkan lini bisnis, seperti investment banking, corporate banking, commercial banking, transaction banking, market & treasury, custody hingga security services.Adapun, kata Batara, pengalihan bisnis Consumer Banking termasuk kartu kredit dan wealth management kepada UOB sendiri merupakan strategi bisnis global. Di mana, untuk segmen consumer banking hanya akan difokuskan di home country, yaitu Amerika.', 'https://finansial.bisnis.com/read/20231117/90/1715338/lini-ritel-diakuisisi-uob-citibank-indonesia-tetap-lanjutkan-bisnis-di-ri', 'https://images.bisnis.com/posts/2023/11/17/1715338/citibank_batara_1699931894.jpg', '2023-11-17 15:04:00', 'finance', '2023-11-16 21:14:59', '2023-11-16 21:14:59'),
(12, 'Lini Ritel Diakuisisi UOB, Citibank Indonesia Tetap Lanjutkan Bisnis di RI', 'Bisnis.com', 'JAKARTA -- Citibank, N.A., Indonesia (Citi Indonesia) melakukan refocusing bisnis, di mana pihaknya akan fokus dalam bisnis Institutional Banking, usai menjual sebagian lini bisnis, yakni consumer banking kepada Bank UOB Indonesia.', 'CEO Citi Indonesia Batara Sianturi mengatakan ke depannya, Citibank Indonesia akan mengembangkan lini bisnis, seperti investment banking, corporate banking, commercial banking, transaction banking, market & treasury, custody hingga security services.Adapun, kata Batara, pengalihan bisnis Consumer Banking termasuk kartu kredit dan wealth management kepada UOB sendiri merupakan strategi bisnis global. Di mana, untuk segmen consumer banking hanya akan difokuskan di home country, yaitu Amerika.', 'https://finansial.bisnis.com/read/20231117/90/1715338/lini-ritel-diakuisisi-uob-citibank-indonesia-tetap-lanjutkan-bisnis-di-ri', 'https://images.bisnis.com/posts/2023/11/17/1715338/citibank_batara_1699931894.jpg', '2023-11-17 15:04:00', 'finance', '2023-11-16 21:14:59', '2023-11-16 21:14:59'),
(13, 'Cara Mudah Hilangkan Ngelitik pada Mesin Avanza', 'Kompas.com', 'Ngelitik merupakan bunyi ketukan yang timbul saat mobil dioperasikan bersumber dari mesin. Suara ini wujud dari adanya getaran akibat pembakaran tidak sempurna.', 'Maka dari itu, ngelitik bisa muncul pada banyak jenis mobil mesin bensin termasuk Toyota Avanza. Terlebih lagi pengguna kerap mengabaikan peawatan rutin yang dijadwalkan. Meski demikian, pengguna Avanza tidak perlu khawatir karena ngelitik ini bisa diobati dengan cukup mudah dengan melakukan beberapa perawatan. Simak penjelasan ahli berikut!', 'https://otomotif.kompas.com/read/2023/11/17/111200415/cara-mudah-hilangkan-ngelitik-pada-mesin-avanza', 'https://asset.kompas.com/crops/XAB0YbYXAno2CKrxXamD-Tu2H00=/0x76:828x628/750x500/data/photo/2023/09/27/6513bf23e2863.jpg', '2023-11-17 15:04:00', 'automotive', '2023-11-16 21:22:17', '2023-11-16 21:22:17'),
(14, 'Cara Mudah Hilangkan Ngelitik pada Mesin Avanza', 'Kompas.com', 'Ngelitik merupakan bunyi ketukan yang timbul saat mobil dioperasikan bersumber dari mesin. Suara ini wujud dari adanya getaran akibat pembakaran tidak sempurna.', 'Maka dari itu, ngelitik bisa muncul pada banyak jenis mobil mesin bensin termasuk Toyota Avanza. Terlebih lagi pengguna kerap mengabaikan peawatan rutin yang dijadwalkan. Meski demikian, pengguna Avanza tidak perlu khawatir karena ngelitik ini bisa diobati dengan cukup mudah dengan melakukan beberapa perawatan. Simak penjelasan ahli berikut!', 'https://otomotif.kompas.com/read/2023/11/17/111200415/cara-mudah-hilangkan-ngelitik-pada-mesin-avanza', 'https://asset.kompas.com/crops/XAB0YbYXAno2CKrxXamD-Tu2H00=/0x76:828x628/750x500/data/photo/2023/09/27/6513bf23e2863.jpg', '2023-11-17 15:04:00', 'automotive', '2023-11-16 21:22:17', '2023-11-16 21:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '41b087203a6e4dea8c707280a8c48aed740a33b4ee2bc5de68a691240d7e58c5', '[\"*\"]', NULL, NULL, '2023-11-16 22:34:45', '2023-11-16 22:34:45'),
(2, 'App\\Models\\User', 1, 'auth_token', 'cfda464d2ec2c19a2465e67a1ba73f00b89116f0a61a648c3398022770f358ea', '[\"*\"]', '2023-11-16 22:36:30', NULL, '2023-11-16 22:36:04', '2023-11-16 22:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'raihan', 'raihan3@gmail.com', NULL, '$2y$12$JFEoCP/LLtxwLd2HZydwWewLuL7cwxsQdXKvI3iuoVmd1p5qYAXra', NULL, '2023-11-16 22:10:46', '2023-11-16 22:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
