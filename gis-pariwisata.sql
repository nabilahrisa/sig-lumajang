-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 12:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis-pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_icon`
--

CREATE TABLE `tbl_icon` (
  `id_icon` int(11) NOT NULL,
  `nama_icon` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_icon`
--

INSERT INTO `tbl_icon` (`id_icon`, `nama_icon`, `icon`) VALUES
(1, 'Marker 1', 'marker1.png'),
(2, 'Marker 2', 'marker2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_json`
--

CREATE TABLE `tbl_json` (
  `id_json` int(11) NOT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `geojson` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_json`
--

INSERT INTO `tbl_json` (`id_json`, `nama_file`, `geojson`) VALUES
(1, 'wisata', 'wisata.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `no_telpon`, `foto`) VALUES
(1, 'Nabilah Risa', 'nabilahrisa19@gmail.com', 'akashi04', '082338921838', 'fotodiri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `kec` varchar(255) DEFAULT NULL,
  `kab` varchar(255) DEFAULT NULL,
  `prov` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `id_icon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `nama_tempat`, `alamat`, `desa`, `kec`, `kab`, `prov`, `latitude`, `longitude`, `deskripsi`, `gambar`, `id_icon`) VALUES
(10, 'Air Terjun Tumpak Sewu', 'Jl. Raya Sidomulyo, Besukcukit, Sidomulyo, Pronojiwo, Kabupaten Lumajang, Jawa Timur 67374', 'Sidomulyo', 'Pronojiwo', 'Lumajang', 'Jawa Timur', '-8.2300401', '112.9179364', 'Air terjun bertingkat yang besar & populer ini berada di ngarai rimbun, dapat diakses dengan jalur pendakian.', 'air_terjun_tumpak_sewu1.jpg', 2),
(9, 'Air Terjun Kapas Biru', 'Pronojiwo, Mulyoarjo, Pronojiwo, Kabupaten Lumajang, Jawa Timur 67374', 'Mulyoarjo', 'Pronojiwo', 'Lumajang', 'Jawa Timur', '-8.2201634', '112.9378137', 'Air terjun 100 m mengalir melewati tebing merah yang dicapai dengan mendaki sepanjang 1,6 km dari area parkir.', 'air_terjun_kapas_biru1.jpg', 2),
(11, 'Ranu Kumbolo', 'Tulungrejo, Pasrujambe, Kabupaten Lumajang, Jawa Timur', 'Tulungrejo', 'Pasrujambe', 'Lumajang', 'Jawa Timur', '-8.0491835', '112.9187489', 'Danau pegunungan terpencil di Taman Nasional Bromo Tengger Semeru dengan bumi perkemahan dan pemandangan.', 'ranu_kumbolo1.jpg', 2),
(12, 'Puncak B29', 'Argosari, Senduro, Nganjir, Sariwani, Sukapura, Kabupaten Lumajang, Jawa Timur 67254', 'Argosari', 'Senduro', 'Lumajang', 'Jawa Timur', '-7.9592318', '112.9926447', 'Jalur sepeda motor yang mengarah ke puncak bukit ini memiliki pemandangan awan & pegunungan.', 'puncak_b291.jpg', 2),
(13, 'Pantai Dampar', 'Jalan Gondoruso, Kalibendo, Pasirian, Kabupaten Lumajang, Jawa Timur 67372', 'Kalibendo', 'Pasirian', 'Lumajang', 'Jawa Timur', '-8.2894661', '113.0551776', 'Pantai Dampar Lumajang adalah salah satu tempat wisata alam yang berada di desa Bades kota Lumajang kabupaten Lumajang provinsi Jawa timur negara Indonesia . Pantai Dampar Lumajang Tempat wisata ini ramai wisatawan pada hari hari biasa maupun pada weekand atau hari libur. Tempat sangat indah dan bisa memberikan suasana yang menghibur kejenuhan akan aktivitas kita sehari hari.', 'pantai_dampar2.jpg', 2),
(14, 'Hutan Bambu Lumajang', 'Jl. Kalpataru, Umbulrejo, Sumbermujur, Candipuro, Kabupaten Lumajang, Jawa Timur 67373', 'Umbulrejo', 'Candipuro', 'Lumajang', 'Jawa Timur', '-8.1394446', '113.0122563', 'Hutan Bambu Lumajang terletak di kaki Gunung Semeru dengan luas 14 hektar. Selain menawarkan dinginnya suasana kaki gunung, pengunjung juga akan dimanjakan dengan pemandangan pohon-pohon bambu yang rimbun dan menjulang tinggi.', 'hutan_bambu1.jpg', 2),
(15, 'Ranu Klakah', 'Jatian, Tegalrandu, Kec. Klakah, Kabupaten Lumajang, Jawa Timur', 'Jatian', 'Klakah', 'Lumajang', 'Jawa Timur', '-7.9858331', '113.2629119', 'Ranu Klakah menjadi obyek wisata alam rekomended untuk rekreasi bersama keluarga untuk perjalanan libur akhir pekan menyenangkan. Hari libur menjadi waktu terbaik untuk berwisata, menikmati keindahan alam Indonesia yang luar biasa mempesona. Bicara soal destinasi wisata, Jawa Timur menyuguhkan banyak tempat menarik rekomended untuk anda explore keindahnnya.', 'ranu_klakah.jpg', 2),
(16, 'Kebun Teh Kertowono', 'Poli, Gucialit, Kabupaten Lumajang, Jawa Timur 67353', 'Poli', 'Gucialit', 'Lumajang', 'Jawa Timur', '-8.0229414', '113.1296416', 'Perkebunan Teh Kertowono terletak di Desa Gucialit, Kecamatan Gucialit, Kabupaten Lumajang. Berada di ketinggian 500-4000 mdpl, Gucialit merupakan bagian dari wilayah barat Lumajang dan menawarkan sederet pesona alam memukau. Tak mengherankan, mengingat posisinya berada di lereng Gunung Semeru.', 'kebun_teh.jpg', 2),
(17, 'Pantai Bambang', 'Rekasan, Bago, Pasirian, Kabupaten Lumajang, Jawa Timur 67372', 'Rekasan', 'Pasirian', 'Lumajang', 'Jawa Timur', '-8.290683', '113.1086834', 'Pantai Bambang memiliki ombak yang cukup tinggi, sekitar 3 meter. Dan juga terdapat pasir yang berasal dari Gunung Bromo, pasir ini mengalir mengikuti aliran lava dan sungai. Pasir ini memiliki ciri-ciri berwarna hitam dan tinggi akan kandungan besi, di sekitar Pantai Bambang juga terdapat air tawar sebab pasir tersebut dapat menampung air hujan. Selain itu, objek wisata Pantai Bambang juga merupakan penghasil batu hias, dan semua batu hias tersebut dijual berdasarkan bentuk dan motifnya.', 'pantai_bambang.jpg', 2),
(18, 'Air Terjun Manggisan', 'Kandangan, Senduro, Krajan, Kandangan, Lumajang, Kabupaten Lumajang, Jawa Timur 67361', 'Kandangan', 'Senduro', 'Lumajang', 'Jawa Timur', '-8.0529132', '113.0840497', 'Wisata Air Terjun Manggisan Lumajang adalah tempat wisata yang ramai dengan wisatawan pada hari biasa maupun hari liburan. Tempat ini sangat indah dan bisa memberikan sensasi yang berbeda dengan aktivitas kita sehari hari. Air terjun manggisan memiliki pesona keindahan yang sangat menarik untuk dikunjungi. Sangat di sayangkan jika anda berada di kota Lumajang tidak mengunjungi wisata Air Terjun Manggisan Lumajang yang mempunyai keindahan yang tiada duanya tersebut.', 'air_terjun_manggisan.jpg', 2),
(19, 'Ranu Bedali', 'Gn. Cilik, Ranubedali, Kec. Ranuyoso, Kabupaten Lumajang, Jawa Timur', 'Ranubedali', 'Ranuyoso', 'Lumajang', 'Jawa Timur', '-7.9528098', '113.2677761', 'Ranu Bedali adalah sebuah danau di kecamatan Ranuyoso, Lumajang, Jawa Timur. dan merupa salah satu tempat wisata alami yang ada di Kabupaten Lumajang, letaknya sekitar kurang lebih 15 km di sebelah utara kota Lumajang. Ranu Bedali merupakan rangkaian dari tiga danau yaitu Ranu Bedali, Ranu Klakah dan Ranu Pakis. Sebagai rangkaian kawasan Segitiga Ranu, dengan jarak 7 Km dari Ranu Pakis atau 6 Km dari Ranu Klakah. Objek wisata Ranu bedali ini mempunyai keinggian 700 M dari permukaan laut dengan luas danau 25 Ha dan kedalaman 28 m', 'ranu_bedali.jpeg', 2),
(20, 'Pantai Watu Pecak', 'Krajan Dua, Selok Awar Awar, Pasirian, Kabupaten Lumajang, Jawa Timur 67372', 'Krajan', 'Pasirian', 'Lumajang', 'Jawa Timur', '-8.2856868', '113.1441036', 'Pantai ini berdekatan dengan salah satu pantai di Kecamatan Pasirian, yaitu Pantai Bambang. Seperti layaknya objek wisata pantai selatan, Pantai Watu Pecak juga memiliki karakteristik ombak yang cukup besar dan berbahaya. Jika kamu ingin bermain air di sana, harap berhati-hati ya agar tidak terjadi berbagai hal yang tak diinginkan selama berada di sana. Di sisi lain yang juga bersebelahan dengan Pantai Watu Pecak juga terdapat tempat yang terbilang keramat, di sana terdapat sebuah batu dengan bekas tapak harimau yang cukup besar. Warga lokal ataupun pengunjung enggan mendekati kawasan tersebut sebab adanya aura mistis yang menyelimuti batu tersebut', 'pantai_watu_pecak.jpg', 2),
(21, 'Ranu Pakis', 'Dusun Krajan I, Tegalrandu, Kec. Klakah, Kabupaten Lumajang, Jawa Timur', 'Ranu Pakis', 'Klakah', 'Lumajang', 'Jawa Timur', '-8.0004134', '113.2658125', 'Objek wisata ini berada pada ketinggian kurang lebihnya 600 meter dari permukaan air laut, memiliki luas kurang lebih sekitar 112 hektar, dengan kedalaman kurang lebih sekitar 26 meter. Biasanya penduduk lokal membudidayakan berbagai ikan air tawar di sekitar danau tersebut, terkadang kamu juga dapat melihat langsung bagaimana cara penduduk untuk menangkap ikan dengan jaring Ranu Pakis terletak di Kabupaten Lumajang, Kecamatan Klakah, Desa Pakis. Ranu Pakis berada di sebelah kanan Ranu Klakah, dari Ranu Klakah jaraknya hanya 500 meter saja. Di Ranu Pakis kita bisa melihat pemandangan danau yang indah dari atas, sehingga cocok sekali untuk objek fotografi saat berkunjung ke Ranu Pakis. Wisata ini juga memiliki fasilitas penunjang yang cukup baik, semua fasilitas tersebut disediakan agar para pengunjung merasa nyaman ketika berada di Ranu Pakis. ', 'ranu_pakis.jpg', 2),
(22, 'Goa Bima', 'Dampar, Bades, Pasirian, Kabupaten Lumajang, Jawa Timur 67372', 'Bades', 'Pasirian', 'Lumajang', 'Jawa Timur', '-8.2821995', '113.0811482', 'Gua Bima diyakini sebagai lorong penghubung ke Kerajaan Laut Selatan, maka dari itu banyak orang yang menjalankan suatu ritual di sana dengan harapan untuk mendapatkan berkah dari sang penguasa kerajaan gaib tersebut. Di sana terdapat sebuah Ceruk yang kerap digunakan untuk berteduh meskipun sekarang telah dialihfungsikan, menurut kabar yang beredar Ceruk tersebut merupakan pintu gerbang untuk menuju kerajaan Laut Selatan. ', 'goa_bima.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_icon`
--
ALTER TABLE `tbl_icon`
  ADD PRIMARY KEY (`id_icon`) USING BTREE;

--
-- Indexes for table `tbl_json`
--
ALTER TABLE `tbl_json`
  ADD PRIMARY KEY (`id_json`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_icon`
--
ALTER TABLE `tbl_icon`
  MODIFY `id_icon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_json`
--
ALTER TABLE `tbl_json`
  MODIFY `id_json` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
