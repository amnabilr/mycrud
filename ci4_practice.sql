-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2023 at 07:20 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_pratice`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `writer` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sipnosis` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `writer`, `publisher`, `cover`, `sipnosis`, `created_at`, `updated_at`) VALUES
(1, 'One Punch Man', 'Yusuke Murataa', 'Shueisha', '1681189125_a37e014370d347bb5620.jpg', 'Saitama, the protagonist, is an exceptionally powerful hero who easily defeats the monsters or other villains with a single punch. However, due to his overwhelming strength, Saitama has become bored with his powers and is constantly trying to find stronge', NULL, NULL),
(2, 'Sakamoto Days', 'Suzuki Yuuto', 'VIZ Media LLC', 'sakamoto.webp', 'An ex-hitman who gave up a life of wealth and crime to marry Aoi. He has gained a lot of weight, and has become more laid-back, but still has his superhuman skill and strength from his hitman days. ', NULL, NULL),
(3, 'Oyasumi Punpun', 'Asano Inio', 'Shogakukan', 'oyasumi-punpun.webp', 'Oyasumi Punpun merupakan manga psikologi yang bercerita tentang beranjak dewasanya seorang pemuda bernama Onodera Punpun, dimulai dari masa kecilnya, hubungan keluarganya, kisah cintanya, dan berbagai permasalahan dalam hidupnya.', NULL, NULL),
(4, 'Jujutsu Kaisen', 'Gege Akutami', 'Shueisha', 'jujutsu.webp', 'Jujutsu Kaisen bercerita tentang seorang siswa SMA bernama Yuji Itadori yang bergabung dengan organisasi rahasia bernama Jujutsu Sorcerers.', NULL, NULL),
(5, 'Grand Blue (ぐらんぶる)', 'Kenji Inoue', 'Kodansha', 'grand-bluewebp.webp', 'Grand Blue adalah sebuah anime slice of life dan komedi yang kisahnya berpusat di sekitar hijinks klub selam scuba perguruan tinggi, Grand Blue bermuara pada serangkaian kesalahpahaman, ekspresi wajah yang dramatis, dan banyak ketelanjangan (pria).', NULL, NULL),
(6, 'Vagabond ( バガボンド )', 'Takehiko Inoue', 'Kodansha', 'vagabond.jpg', 'Growing up in 17th century Sengoku era Japan, Shinmen Takezou is shunned by the local villagers as a devil child due to his wild and violent nature. Running away from home with a fellow boy at age 17, Takezou joins the Toyotomi army to fight the Tokugawa ', NULL, NULL),
(7, 'Solo Leveling', 'Chugong', 'D&C Media', 'solo-leveling.jpg', 'Mengambil latar di dunia dimana muncul “Gate” yang menghubungkan antara dunia monster dan dunia manusia. Sejak Gate muncul, beberapa orang yang menerima kemampuan khusus atau disebut sebagai “Hunter” akan bertugas membasmi monster yang ada di dalam Gate.', NULL, NULL),
(9, 'Spy X Family', 'Tatsuya Endo', 'Shueisha', '1681195540_756bfc5773cc94eaee36.jpg', 'Twilight harus menjalankan sebuah misi untuk menyelidiki pergerakan Donovan Desmond. Donovan Desmond adalah Presiden dari  Partai Persatuan Timur, seorang yang bisa mengancam perdamaian Timur dan Barat.\r\n\r\nNamun, sebelum menjalankan misi tersebut, Twiligh', NULL, NULL),
(48, 'One Piece', 'Eiichiro Oda', 'Shonen Jump', '1681188990_e93eedad1145eb13d348.jpg', 'One Piece menceritakan perjalanan Luffy, seorang anak laki-laki yang bertemu bajak laut hebat bernama Shanks, dimana Luffy terinspirasi oleh kehebatan Shanks dan bermimpi suatu hari nanti ingin menjadi bajak laut. Kemudian Shanks menjanjikan Luffy untuk r', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-04-12-071215', 'App\\Database\\Migrations\\Person', 'default', 'App', 1681287120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `phone`, `email`, `address`, `city`, `country`) VALUES
(1, 'Dwi Suryono M.TI.', '0824 8155 996', 'nurul.wulandari@mandasari.biz', 'Ds. Bank Dagang Negara No. 389, Tangerang 37198, Aceh', 'Magelang', 'Saint Vincent dan Grenadines'),
(2, 'Cici Suartini S.Kom', '0486 3585 039', 'rahmawati.laksana@suryatmi.id', 'Psr. Adisucipto No. 420, Surakarta 34673, BaBel', 'Manado', 'Kenya'),
(3, 'Ratih Rika Nasyidah', '(+62) 835 3802 2928', 'digdaya76@agustina.biz', 'Psr. S. Parman No. 57, Metro 67132, Banten', 'Salatiga', 'Kroasia'),
(4, 'Siti Dina Nurdiyanti', '(+62) 454 7080 3406', 'wahyu03@gmail.com', 'Psr. Monginsidi No. 226, Payakumbuh 45163, SulUt', 'Salatiga', 'Jordan'),
(5, 'Nalar Sirait', '(+62) 306 1143 5186', 'anom.dabukke@yahoo.co.id', 'Dk. Salam No. 510, Palangka Raya 37401, Lampung', 'Tebing Tinggi', 'Inggris Raya'),
(6, 'Keisha Pertiwi', '0768 7304 308', 'nurdiyanti.jasmin@yahoo.com', 'Ds. Panjaitan No. 523, Pagar Alam 18812, SumSel', 'Mataram', 'Kepulauan Virgin Amerika Serikat'),
(7, 'Indra Viktor Saputra S.I.Kom', '(+62) 750 8247 5277', 'uchita.agustina@gmail.co.id', 'Dk. Madrasah No. 527, Samarinda 72454, SulUt', 'Sibolga', 'Kongo'),
(8, 'Cinthia Mandasari', '(+62) 262 1993 806', 'lsetiawan@wijaya.mil.id', 'Gg. Madrasah No. 415, Batam 92282, Gorontalo', 'Pontianak', 'Brunei Darussalam'),
(9, 'Daruna Permadi', '(+62) 951 8749 0790', 'cprayoga@yahoo.com', 'Gg. Jamika No. 204, Pasuruan 51712, Banten', 'Bogor', 'Selandia baru'),
(10, 'Cengkal Prasetya Salahudin', '0233 2536 1978', 'mustika87@wijaya.web.id', 'Jr. Bakin No. 373, Padangpanjang 15280, Bali', 'Denpasar', 'India'),
(11, 'Virman Jati Halim S.I.Kom', '027 7902 0922', 'arta50@haryanti.net', 'Dk. Dipatiukur No. 124, Bontang 38378, KalBar', 'Banda Aceh', 'Norwegia'),
(12, 'Fitria Sarah Hassanah S.Farm', '(+62) 617 0703 4276', 'usamah.omar@gmail.co.id', 'Jln. Gedebage Selatan No. 158, Administrasi Jakarta Selatan 61711, KalTeng', 'Bogor', 'Israel'),
(13, 'Salsabila Nasyiah', '(+62) 507 3688 866', 'syahrini61@yuniar.biz.id', 'Jln. Pasir Koja No. 133, Bengkulu 17670, Maluku', 'Padangpanjang', 'Guam'),
(14, 'Jane Patricia Nuraini', '(+62) 926 8637 609', 'winarsih.jasmin@yahoo.com', 'Jln. Bara Tambar No. 102, Pangkal Pinang 42511, Banten', 'Padangsidempuan', 'San Marino'),
(15, 'Padmi Tiara Hariyah', '0277 8759 3623', 'ega.prasasta@hakim.mil.id', 'Ki. Pacuan Kuda No. 103, Bandar Lampung 62166, SulTra', 'Palangka Raya', 'San Marino'),
(16, 'Tari Azalea Astuti S.Sos', '0406 6120 594', 'suryono.carub@yahoo.co.id', 'Ds. Bah Jaya No. 507, Makassar 43248, DKI', 'Sukabumi', 'Andorra'),
(17, 'Jarwi Wijaya S.Sos', '(+62) 308 0519 267', 'gantar.winarno@yahoo.co.id', 'Jr. Sadang Serang No. 181, Banjarmasin 45622, JaTim', 'Madiun', 'Namibia'),
(18, 'Hasna Puspita', '021 0580 949', 'farida.hafshah@gmail.co.id', 'Kpg. Arifin No. 459, Makassar 81299, SumUt', 'Cirebon', 'Denmark'),
(19, 'Olivia Purnawati', '(+62) 311 6494 7764', 'oyolanda@riyanti.net', 'Jr. Juanda No. 654, Sorong 56984, SulTeng', 'Tangerang Selatan', 'Kazakhstan'),
(20, 'Adika Irfan Pradipta', '(+62) 851 202 106', 'tira.habibi@gmail.com', 'Dk. Villa No. 207, Tebing Tinggi 50161, SulSel', 'Magelang', 'Pulau Man');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
