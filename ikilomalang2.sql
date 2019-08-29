-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Sep 2016 pada 10.03
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikilomalang2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_akun`
--

INSERT INTO `tbl_akun` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'sadmin', 'c5edac1b8c1d58bad90a246d8f08f53b', 'superadmin'),
(3, 'user', 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `kategori`) VALUES
(1, 'alam'),
(2, 'buatan'),
(3, 'sejarah'),
(4, 'kuliner'),
(6, 'wazirul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `pri` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`pri`, `id`, `nama`, `email`, `komentar`) VALUES
(1, 3, 'wazirul', 'wazirul@gmail.com', 'koemasd '),
(10, 2, 'wazirul', 'wazirul@gmail.com', 'lllllllllllllllllllkkkkkkkkkkkkkkkkkkkkkooooooooooooooooooooopppppppppppppppppppppppppppppssssssssssssssssssssssssssssssssssszzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'),
(11, 2, 'wazirul', 'wazirul@gmail.com', 'lllllllllllllllllllkkkkkkkkkkkkkkkkkkkkkooooooooooooooooooooopppppppppppppppppppppppppppppssssssssssssssssssssssssssssssssssszzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'),
(14, 3, 'wazirul', 'wazirul@gmail.com', 'Sungguh pemandangan yang berkebalikan pada sisi Utaranya yang gersang dan berdebu. Namun perlu diingat, sebaiknya jangan melalui jalur ini pada malam hari dan atau dalam cuaca yang berkabut. Jalur tidak akan terlihat dalam kondidi seperti ini. Lautan pasir adalah andalan wisata dari gunung Bromo, di alam pegunungan yang sejuk, kita dapat melihat padang pasir dan rerumputan yang luas. Sedangkan yang paling ditunggu dari gunung bromo adalah sightview ketika matahari terbit dan terbenam karena memang akan kelihatan jelas sekali dan sangat indah. Walaupun perjalanan ke Bromo sangat berdebu, tapi tidak terasa, karena keindahan yang disuguhkan benar-benar luar biasa. Berlibur menuju bromo dapat dibilang praktis bila anda menyukai tipe traveller dan melalui jalur pintu utara. Anda dapat melakukan kunjungan dalam jangka waktu 12 jam saja. tentunya bila anda memulainya dari kota Surabaya, Malang, Jember dan sekitarnya. Perjalanan dapat dimulai dari jam 12 malam sehingga anda akan sampai sekitar pukul 2 - 3 pagi. Dimana anda dapat beristirahat dahulu sebelum melihat sunrise. Penjual makanan dan minuman di areal lautan pasir biasanya sudah buka menjelang pukul 3 pagi, sehingga anda sudah bisa bersiap - siap untuk melakukan pendakian melewati anak tangga puncak bromo yang terkenal itu. nikmatilah pemandangan sampai jam 9 pagi dan anda pun dapat kembali sampai di kota keberangkatan anda sekitar 12 siang. Sebagai catatan, apabila anda melakukan perjalanan diareal lautan pasir ditengah kegelapan malam, sebagai patokan menuju areal parkir sekitar Pura anda dapat melihat patok dari beton yang sengaja diberikan sebagai penunjuk menuju areal pura. Dan apabila anda tersesat jangan panik dan meneruskan perjalanan ( apalagi ditengah kabut tebal ), tunggulah karena biasanya mulai jam 2 - 3 pagi beberapa penunggang kuda sewaan melintas diarea lautan pasir.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `wisataid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_subkategori`
--

CREATE TABLE `tbl_subkategori` (
  `id` int(11) NOT NULL,
  `subkategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_subkategori`
--

INSERT INTO `tbl_subkategori` (`id`, `subkategori`) VALUES
(1, 'pantai'),
(2, 'gunung'),
(3, 'taman'),
(4, 'tempat-rekreasi'),
(5, 'candi'),
(6, 'museum'),
(7, 'makanan-khas'),
(8, 'oleh-oleh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `lokasi` text NOT NULL,
  `jambuka` varchar(100) NOT NULL,
  `like` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `subkategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id`, `nama`, `gambar`, `isi`, `lokasi`, `jambuka`, `like`, `kategori`, `subkategori`) VALUES
(1, 'Gunung Kawi', 'gkawi.jpg', 'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu), adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai obyek wisata utama di Jawa Timur. Sebagai sebuah obyek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru. Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Gunung Bromo mempunyai sebuah kawah dengan garis tengah Â± 800 meter (utara-selatan) dan Â± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.\r\n\r\n   Perjalanan melalui pintu barat dari arah pasuruan yaitu masuk dari desa Tosari untuk menuju ke pusat obyek wisata ( lautan pasir )terbilang berat karena medan yang harus ditempuh tak bisa dilalui oleh kendaraan roda 4 biasa ini dikarenakan jalan turunan dari penanjakan kearah lautan pasir sangatlah curam, kecuali kita menyewa jip yang disediakan oleh pengelola wisata, jadi wisatawan banyak yang berjalan kaki untuk menuju ke pusat lokasi. Namun apabila kita melalui pintu utara dari arah sebelum masuk probolinggo yaitu pada daerah Tongas, kita akan menuju desa cemoro lawang sebelum turun menuju lautan pasir maka tidaklah terlalu berat dikarenakan turunan dari lerengnya tidaklah terlalu curam sehingga sepeda motor pun dapat melaluinya. Kebanyakan para wisatawan yang ingin mudah mencapai lautan pasir melewati jalur ini. Namun bila anda ingin menyaksikan sunrise yang sering ditampilkan di foto - foto, yang banyak difoto dari puncak penanjakan maka anda lebih praktis melewati jalur pintu barat. Namun bila anda mempunyai jiwa petualang maka anda dapat mencoba jalur perjalanan yang jarang dilalui wisatawan. Yaitu melalui kota Malang anda masuk melalui kota kecil tumpang kemudian masuk kota pronojiwo lalu akan melalui cagar alam yang sangat indah dari sini anda akan menjumpai pertigaan jalan dimana kearah selatan akan memasuki ranu pane ( kearah gunung semeru ) dan kearah utara anda memasuki lautan pasir bromo yang berada di punggung gunung bromo sebelah selatan. Pertigaan tersebut bernama Jemplang. Perjalanan diawali dengan menuruni bukit yang kemudian disambut dengan padang rumput yang lama kelamaan berganti menjadi lautan pasir. Jalan ini akan mengitari gunung bromo melewati lautan pasir selama kurang lebih 3 jam. Jalur ini sebenarnya tidak terlalu curam dan dapat dilalui sepeda motor, namun memerlukan jiwa petualang karena jalurnya yang masih jarang dilewati dan tidak ada satupun persinggahan maupun rumah penduduk. Kita akan benar- benar disuguhkan dengan perjalanan yang sangat menantang. Namun anda akan diganjar dengan rahasia Bromo yang lain, yang sangat jarang dilihat wisatawan, yaitu padang ruput sabana dan bunga yang sangat luas berada dibalik Gunung Bromo. \r\n\r\n      Sungguh pemandangan yang berkebalikan pada sisi Utaranya yang gersang dan berdebu. Namun perlu diingat, sebaiknya jangan melalui jalur ini pada malam hari dan atau dalam cuaca yang berkabut. Jalur tidak akan terlihat dalam kondidi seperti ini. Lautan pasir adalah andalan wisata dari gunung Bromo, di alam pegunungan yang sejuk, kita dapat melihat padang pasir dan rerumputan yang luas. Sedangkan yang paling ditunggu dari gunung bromo adalah sightview ketika matahari terbit dan terbenam karena memang akan kelihatan jelas sekali dan sangat indah. Walaupun perjalanan ke Bromo sangat berdebu, tapi tidak terasa, karena keindahan yang disuguhkan benar-benar luar biasa. Berlibur menuju bromo dapat dibilang praktis bila anda menyukai tipe traveller dan melalui jalur pintu utara. Anda dapat melakukan kunjungan dalam jangka waktu 12 jam saja. tentunya bila anda memulainya dari kota Surabaya, Malang, Jember dan sekitarnya. Perjalanan dapat dimulai dari jam 12 malam sehingga anda akan sampai sekitar pukul 2 - 3 pagi. Dimana anda dapat beristirahat dahulu sebelum melihat sunrise. Penjual makanan dan minuman di areal lautan pasir biasanya sudah buka menjelang pukul 3 pagi, sehingga anda sudah bisa bersiap - siap untuk melakukan pendakian melewati anak tangga puncak bromo yang terkenal itu. nikmatilah pemandangan sampai jam 9 pagi dan anda pun dapat kembali sampai di kota keberangkatan anda sekitar 12 siang. Sebagai catatan, apabila anda melakukan perjalanan diareal lautan pasir ditengah kegelapan malam, sebagai patokan menuju areal parkir sekitar Pura anda dapat melihat patok dari beton yang sengaja diberikan sebagai penunjuk menuju areal pura. Dan apabila anda tersesat jangan panik dan meneruskan perjalanan ( apalagi ditengah kabut tebal ), tunggulah karena biasanya mulai jam 2 - 3 pagi beberapa penunggang kuda sewaan melintas diarea lautan pasir.', 'Provinsi Jawa Timur,Indonesia', '24 jam buka', 0, 1, 2),
(2, 'Gunung Butak', 'butak.jpg', 'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu), adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai obyek wisata utama di Jawa Timur. Sebagai sebuah obyek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru. Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Gunung Bromo mempunyai sebuah kawah dengan garis tengah Â± 800 meter (utara-selatan) dan Â± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.\r\n\r\n   Perjalanan melalui pintu barat dari arah pasuruan yaitu masuk dari desa Tosari untuk menuju ke pusat obyek wisata ( lautan pasir )terbilang berat karena medan yang harus ditempuh tak bisa dilalui oleh kendaraan roda 4 biasa ini dikarenakan jalan turunan dari penanjakan kearah lautan pasir sangatlah curam, kecuali kita menyewa jip yang disediakan oleh pengelola wisata, jadi wisatawan banyak yang berjalan kaki untuk menuju ke pusat lokasi. Namun apabila kita melalui pintu utara dari arah sebelum masuk probolinggo yaitu pada daerah Tongas, kita akan menuju desa cemoro lawang sebelum turun menuju lautan pasir maka tidaklah terlalu berat dikarenakan turunan dari lerengnya tidaklah terlalu curam sehingga sepeda motor pun dapat melaluinya. Kebanyakan para wisatawan yang ingin mudah mencapai lautan pasir melewati jalur ini. Namun bila anda ingin menyaksikan sunrise yang sering ditampilkan di foto - foto, yang banyak difoto dari puncak penanjakan maka anda lebih praktis melewati jalur pintu barat. Namun bila anda mempunyai jiwa petualang maka anda dapat mencoba jalur perjalanan yang jarang dilalui wisatawan. Yaitu melalui kota Malang anda masuk melalui kota kecil tumpang kemudian masuk kota pronojiwo lalu akan melalui cagar alam yang sangat indah dari sini anda akan menjumpai pertigaan jalan dimana kearah selatan akan memasuki ranu pane ( kearah gunung semeru ) dan kearah utara anda memasuki lautan pasir bromo yang berada di punggung gunung bromo sebelah selatan. Pertigaan tersebut bernama Jemplang. Perjalanan diawali dengan menuruni bukit yang kemudian disambut dengan padang rumput yang lama kelamaan berganti menjadi lautan pasir. Jalan ini akan mengitari gunung bromo melewati lautan pasir selama kurang lebih 3 jam. Jalur ini sebenarnya tidak terlalu curam dan dapat dilalui sepeda motor, namun memerlukan jiwa petualang karena jalurnya yang masih jarang dilewati dan tidak ada satupun persinggahan maupun rumah penduduk. Kita akan benar- benar disuguhkan dengan perjalanan yang sangat menantang. Namun anda akan diganjar dengan rahasia Bromo yang lain, yang sangat jarang dilihat wisatawan, yaitu padang ruput sabana dan bunga yang sangat luas berada dibalik Gunung Bromo. \r\n\r\n      Sungguh pemandangan yang berkebalikan pada sisi Utaranya yang gersang dan berdebu. Namun perlu diingat, sebaiknya jangan melalui jalur ini pada malam hari dan atau dalam cuaca yang berkabut. Jalur tidak akan terlihat dalam kondidi seperti ini. Lautan pasir adalah andalan wisata dari gunung Bromo, di alam pegunungan yang sejuk, kita dapat melihat padang pasir dan rerumputan yang luas. Sedangkan yang paling ditunggu dari gunung bromo adalah sightview ketika matahari terbit dan terbenam karena memang akan kelihatan jelas sekali dan sangat indah. Walaupun perjalanan ke Bromo sangat berdebu, tapi tidak terasa, karena keindahan yang disuguhkan benar-benar luar biasa. Berlibur menuju bromo dapat dibilang praktis bila anda menyukai tipe traveller dan melalui jalur pintu utara. Anda dapat melakukan kunjungan dalam jangka waktu 12 jam saja. tentunya bila anda memulainya dari kota Surabaya, Malang, Jember dan sekitarnya. Perjalanan dapat dimulai dari jam 12 malam sehingga anda akan sampai sekitar pukul 2 - 3 pagi. Dimana anda dapat beristirahat dahulu sebelum melihat sunrise. Penjual makanan dan minuman di areal lautan pasir biasanya sudah buka menjelang pukul 3 pagi, sehingga anda sudah bisa bersiap - siap untuk melakukan pendakian melewati anak tangga puncak bromo yang terkenal itu. nikmatilah pemandangan sampai jam 9 pagi dan anda pun dapat kembali sampai di kota keberangkatan anda sekitar 12 siang. Sebagai catatan, apabila anda melakukan perjalanan diareal lautan pasir ditengah kegelapan malam, sebagai patokan menuju areal parkir sekitar Pura anda dapat melihat patok dari beton yang sengaja diberikan sebagai penunjuk menuju areal pura. Dan apabila anda tersesat jangan panik dan meneruskan perjalanan ( apalagi ditengah kabut tebal ), tunggulah karena biasanya mulai jam 2 - 3 pagi beberapa penunggang kuda sewaan melintas diarea lautan pasir.', 'Provinsi Jawa Timur,Indonesia', '24 jam buka', 0, 1, 2),
(3, 'Gunung Bromo', 'gbromo.jpg', 'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu), adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai obyek wisata utama di Jawa Timur. Sebagai sebuah obyek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru. Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Gunung Bromo mempunyai sebuah kawah dengan garis tengah Â± 800 meter (utara-selatan) dan Â± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4 km dari pusat kawah Bromo.\r\n\r\n   Perjalanan melalui pintu barat dari arah pasuruan yaitu masuk dari desa Tosari untuk menuju ke pusat obyek wisata ( lautan pasir )terbilang berat karena medan yang harus ditempuh tak bisa dilalui oleh kendaraan roda 4 biasa ini dikarenakan jalan turunan dari penanjakan kearah lautan pasir sangatlah curam, kecuali kita menyewa jip yang disediakan oleh pengelola wisata, jadi wisatawan banyak yang berjalan kaki untuk menuju ke pusat lokasi. Namun apabila kita melalui pintu utara dari arah sebelum masuk probolinggo yaitu pada daerah Tongas, kita akan menuju desa cemoro lawang sebelum turun menuju lautan pasir maka tidaklah terlalu berat dikarenakan turunan dari lerengnya tidaklah terlalu curam sehingga sepeda motor pun dapat melaluinya. Kebanyakan para wisatawan yang ingin mudah mencapai lautan pasir melewati jalur ini. Namun bila anda ingin menyaksikan sunrise yang sering ditampilkan di foto - foto, yang banyak difoto dari puncak penanjakan maka anda lebih praktis melewati jalur pintu barat. Namun bila anda mempunyai jiwa petualang maka anda dapat mencoba jalur perjalanan yang jarang dilalui wisatawan. Yaitu melalui kota Malang anda masuk melalui kota kecil tumpang kemudian masuk kota pronojiwo lalu akan melalui cagar alam yang sangat indah dari sini anda akan menjumpai pertigaan jalan dimana kearah selatan akan memasuki ranu pane ( kearah gunung semeru ) dan kearah utara anda memasuki lautan pasir bromo yang berada di punggung gunung bromo sebelah selatan. Pertigaan tersebut bernama Jemplang. Perjalanan diawali dengan menuruni bukit yang kemudian disambut dengan padang rumput yang lama kelamaan berganti menjadi lautan pasir. Jalan ini akan mengitari gunung bromo melewati lautan pasir selama kurang lebih 3 jam. Jalur ini sebenarnya tidak terlalu curam dan dapat dilalui sepeda motor, namun memerlukan jiwa petualang karena jalurnya yang masih jarang dilewati dan tidak ada satupun persinggahan maupun rumah penduduk. Kita akan benar- benar disuguhkan dengan perjalanan yang sangat menantang. Namun anda akan diganjar dengan rahasia Bromo yang lain, yang sangat jarang dilihat wisatawan, yaitu padang ruput sabana dan bunga yang sangat luas berada dibalik Gunung Bromo. \r\n\r\n      Sungguh pemandangan yang berkebalikan pada sisi Utaranya yang gersang dan berdebu. Namun perlu diingat, sebaiknya jangan melalui jalur ini pada malam hari dan atau dalam cuaca yang berkabut. Jalur tidak akan terlihat dalam kondidi seperti ini. Lautan pasir adalah andalan wisata dari gunung Bromo, di alam pegunungan yang sejuk, kita dapat melihat padang pasir dan rerumputan yang luas. Sedangkan yang paling ditunggu dari gunung bromo adalah sightview ketika matahari terbit dan terbenam karena memang akan kelihatan jelas sekali dan sangat indah. Walaupun perjalanan ke Bromo sangat berdebu, tapi tidak terasa, karena keindahan yang disuguhkan benar-benar luar biasa. Berlibur menuju bromo dapat dibilang praktis bila anda menyukai tipe traveller dan melalui jalur pintu utara. Anda dapat melakukan kunjungan dalam jangka waktu 12 jam saja. tentunya bila anda memulainya dari kota Surabaya, Malang, Jember dan sekitarnya. Perjalanan dapat dimulai dari jam 12 malam sehingga anda akan sampai sekitar pukul 2 - 3 pagi. Dimana anda dapat beristirahat dahulu sebelum melihat sunrise. Penjual makanan dan minuman di areal lautan pasir biasanya sudah buka menjelang pukul 3 pagi, sehingga anda sudah bisa bersiap - siap untuk melakukan pendakian melewati anak tangga puncak bromo yang terkenal itu. nikmatilah pemandangan sampai jam 9 pagi dan anda pun dapat kembali sampai di kota keberangkatan anda sekitar 12 siang. Sebagai catatan, apabila anda melakukan perjalanan diareal lautan pasir ditengah kegelapan malam, sebagai patokan menuju areal parkir sekitar Pura anda dapat melihat patok dari beton yang sengaja diberikan sebagai penunjuk menuju areal pura. Dan apabila anda tersesat jangan panik dan meneruskan perjalanan ( apalagi ditengah kabut tebal ), tunggulah karena biasanya mulai jam 2 - 3 pagi beberapa penunggang kuda sewaan melintas diarea lautan pasir.', 'Provinsi Jawa Timur,Indonesia', '24 jam buka', 0, 1, 2),
(4, 'Pantai Batu Bengkung', 'Pantai Batu Bengkung 1.jpg', '  Pantai Batu Bengkung Merupakan Salah Satu Destinasi Wisata Pantai Yang Terletak Di Pesisir Jalur Lintas Selatan, Lebih Tepatnya Berada Di Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang. Berjarak Sekitar 65 KM Atau Sekitar 2 Jam 30 Menit Perjalanan Yang Ditempuh Dari Pusat Kota Malang Searah Dengan Rute Menuju Pantai Goa Cina Dan Bajul Mati. Dalam Perjalanan Menuju Pantai Batu Bengkung Ini Anda Akan Dimanjakan Dengan Pemandangan Spektakuler Yang Berada Di Jalur Lintas Selatan Yaitu Jembatan Bajul Mati. Jembatan Ini Berukuran Panjang 90 Meter Dan Lebar 15 Meter Dengan Pemandangan Danau Yang Terlihat Sangat Mempesona Penglihatan Mata Kita Yang Berada Tepat Dibawah Jembatan Tersebut. Selain Jembatan Bajul Mati Rute Menuju Pantai Batu Bengkung Ini Juga Akan Melewati Beberapa Deretan Pantai Yang Sangat Menawan Dan Memukau, Diantaranya Pantai Goa Cina, Pantai Watu Leter, Pantai Ungapan, Pantai Bajul Mati, Pantai Jelangkung, Pantai Parang Dowo, Pantai Telok, Pantai Kajaran, Baru Kemudian Sampai Di Pantai Batu Bengkung. Inilah Alasan Mengapa Malang Selatan Sering Disebut-Sebut Dengan Surganya Pantai Dan Kota Seribu Pantai.\r\n\r\n     Setelah Melewati Jajaran Pantai Diatas, Barulah Anda Sampai Di Pantai Batu Bengkung. Didepan Pintu Masuk Akan Ada Tulisan Batu Bengkung Yang Disebelahnya Berkibar Sang Merah Putih. Dimana Hal Itu Menandakan Lokasi Pantai Batu Bengkung Sudah Didepan Mata. Untuk Harga Tiket Masuknya Anda Cukup Membayar Dengan Rp. 5000 Saja Perorang Dan Rp. 5000 Juga Untuk Parkir Kendaraan Roda Dua, Jika Menginap Parkir Kendaraan Roda Dua Harus Dibayar 2x Lipat Dari Harga Normal. Untuk Berkemah Atau Camping Pun Anda Tidak Dikenakan Biaya Tambahan, Bagaimana? Sangat Murah Bukan? Pastinya Anda Semakin Penasaran Ingin Menjamah Dan Mengeksplore Tempat Ini. Disebut Sebagai Pantai Batu Bengkung Karena Di Pantai Ini Terdapat Batu Karang Yang Membentang Panjang Diantara Dua Bukit Yang Membengkung Hempasan Ombak Yang Berasal Dari Samudera Laut Selatan. Pantai Batu Bengkung Ini Merupakan Salah Satu Destinasi Wisata Kota Malang Yang Paling Banyak Dikunjungi Oleh Para Pengunjung. Mulai Dari Wisatawan Lokal Sampai Wisatawan Asing. Pantai Batu Bengkung Ini Juga Sudah Pernah Di Explore Oleh Tim My Trip My Adventure Trans TV. Mereka Juga Mendirikan Sebuah Papan Bertuliskan â€œPantai Ini Bukan Tempat Sampah, My Trip My Adventureâ€ Yang Mengartikan Bahwa Para Pengunjung Jangan Hanya Menikmati Keindahan Pantai Ini, Akan Tetapi Juga Ikut Menjaga Kebersihan, Kelestarian Serta Keindahan Tempat Ini Dari Tangan-Tangan Yang Tidak Bertanggung Jawab.', 'Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang.', '24 jam buka', 0, 1, 1),
(5, 'Pantai Tamban', 'pantai-tamban.jpg', '  Pantai Batu Bengkung Merupakan Salah Satu Destinasi Wisata Pantai Yang Terletak Di Pesisir Jalur Lintas Selatan, Lebih Tepatnya Berada Di Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang. Berjarak Sekitar 65 KM Atau Sekitar 2 Jam 30 Menit Perjalanan Yang Ditempuh Dari Pusat Kota Malang Searah Dengan Rute Menuju Pantai Goa Cina Dan Bajul Mati. Dalam Perjalanan Menuju Pantai Batu Bengkung Ini Anda Akan Dimanjakan Dengan Pemandangan Spektakuler Yang Berada Di Jalur Lintas Selatan Yaitu Jembatan Bajul Mati. Jembatan Ini Berukuran Panjang 90 Meter Dan Lebar 15 Meter Dengan Pemandangan Danau Yang Terlihat Sangat Mempesona Penglihatan Mata Kita Yang Berada Tepat Dibawah Jembatan Tersebut. Selain Jembatan Bajul Mati Rute Menuju Pantai Batu Bengkung Ini Juga Akan Melewati Beberapa Deretan Pantai Yang Sangat Menawan Dan Memukau, Diantaranya Pantai Goa Cina, Pantai Watu Leter, Pantai Ungapan, Pantai Bajul Mati, Pantai Jelangkung, Pantai Parang Dowo, Pantai Telok, Pantai Kajaran, Baru Kemudian Sampai Di Pantai Batu Bengkung. Inilah Alasan Mengapa Malang Selatan Sering Disebut-Sebut Dengan Surganya Pantai Dan Kota Seribu Pantai.\r\n\r\n     Setelah Melewati Jajaran Pantai Diatas, Barulah Anda Sampai Di Pantai Batu Bengkung. Didepan Pintu Masuk Akan Ada Tulisan Batu Bengkung Yang Disebelahnya Berkibar Sang Merah Putih. Dimana Hal Itu Menandakan Lokasi Pantai Batu Bengkung Sudah Didepan Mata. Untuk Harga Tiket Masuknya Anda Cukup Membayar Dengan Rp. 5000 Saja Perorang Dan Rp. 5000 Juga Untuk Parkir Kendaraan Roda Dua, Jika Menginap Parkir Kendaraan Roda Dua Harus Dibayar 2x Lipat Dari Harga Normal. Untuk Berkemah Atau Camping Pun Anda Tidak Dikenakan Biaya Tambahan, Bagaimana? Sangat Murah Bukan? Pastinya Anda Semakin Penasaran Ingin Menjamah Dan Mengeksplore Tempat Ini. Disebut Sebagai Pantai Batu Bengkung Karena Di Pantai Ini Terdapat Batu Karang Yang Membentang Panjang Diantara Dua Bukit Yang Membengkung Hempasan Ombak Yang Berasal Dari Samudera Laut Selatan. Pantai Batu Bengkung Ini Merupakan Salah Satu Destinasi Wisata Kota Malang Yang Paling Banyak Dikunjungi Oleh Para Pengunjung. Mulai Dari Wisatawan Lokal Sampai Wisatawan Asing. Pantai Batu Bengkung Ini Juga Sudah Pernah Di Explore Oleh Tim My Trip My Adventure Trans TV. Mereka Juga Mendirikan Sebuah Papan Bertuliskan â€œPantai Ini Bukan Tempat Sampah, My Trip My Adventureâ€ Yang Mengartikan Bahwa Para Pengunjung Jangan Hanya Menikmati Keindahan Pantai Ini, Akan Tetapi Juga Ikut Menjaga Kebersihan, Kelestarian Serta Keindahan Tempat Ini Dari Tangan-Tangan Yang Tidak Bertanggung Jawab.', 'Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang.', '24 jam buka', 0, 1, 1),
(6, 'Pantai Balekambang', 'pbalekambang.jpg', '  Pantai Batu Bengkung Merupakan Salah Satu Destinasi Wisata Pantai Yang Terletak Di Pesisir Jalur Lintas Selatan, Lebih Tepatnya Berada Di Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang. Berjarak Sekitar 65 KM Atau Sekitar 2 Jam 30 Menit Perjalanan Yang Ditempuh Dari Pusat Kota Malang Searah Dengan Rute Menuju Pantai Goa Cina Dan Bajul Mati. Dalam Perjalanan Menuju Pantai Batu Bengkung Ini Anda Akan Dimanjakan Dengan Pemandangan Spektakuler Yang Berada Di Jalur Lintas Selatan Yaitu Jembatan Bajul Mati. Jembatan Ini Berukuran Panjang 90 Meter Dan Lebar 15 Meter Dengan Pemandangan Danau Yang Terlihat Sangat Mempesona Penglihatan Mata Kita Yang Berada Tepat Dibawah Jembatan Tersebut. Selain Jembatan Bajul Mati Rute Menuju Pantai Batu Bengkung Ini Juga Akan Melewati Beberapa Deretan Pantai Yang Sangat Menawan Dan Memukau, Diantaranya Pantai Goa Cina, Pantai Watu Leter, Pantai Ungapan, Pantai Bajul Mati, Pantai Jelangkung, Pantai Parang Dowo, Pantai Telok, Pantai Kajaran, Baru Kemudian Sampai Di Pantai Batu Bengkung. Inilah Alasan Mengapa Malang Selatan Sering Disebut-Sebut Dengan Surganya Pantai Dan Kota Seribu Pantai.\r\n\r\n     Setelah Melewati Jajaran Pantai Diatas, Barulah Anda Sampai Di Pantai Batu Bengkung. Didepan Pintu Masuk Akan Ada Tulisan Batu Bengkung Yang Disebelahnya Berkibar Sang Merah Putih. Dimana Hal Itu Menandakan Lokasi Pantai Batu Bengkung Sudah Didepan Mata. Untuk Harga Tiket Masuknya Anda Cukup Membayar Dengan Rp. 5000 Saja Perorang Dan Rp. 5000 Juga Untuk Parkir Kendaraan Roda Dua, Jika Menginap Parkir Kendaraan Roda Dua Harus Dibayar 2x Lipat Dari Harga Normal. Untuk Berkemah Atau Camping Pun Anda Tidak Dikenakan Biaya Tambahan, Bagaimana? Sangat Murah Bukan? Pastinya Anda Semakin Penasaran Ingin Menjamah Dan Mengeksplore Tempat Ini. Disebut Sebagai Pantai Batu Bengkung Karena Di Pantai Ini Terdapat Batu Karang Yang Membentang Panjang Diantara Dua Bukit Yang Membengkung Hempasan Ombak Yang Berasal Dari Samudera Laut Selatan. Pantai Batu Bengkung Ini Merupakan Salah Satu Destinasi Wisata Kota Malang Yang Paling Banyak Dikunjungi Oleh Para Pengunjung. Mulai Dari Wisatawan Lokal Sampai Wisatawan Asing. Pantai Batu Bengkung Ini Juga Sudah Pernah Di Explore Oleh Tim My Trip My Adventure Trans TV. Mereka Juga Mendirikan Sebuah Papan Bertuliskan â€œPantai Ini Bukan Tempat Sampah, My Trip My Adventureâ€ Yang Mengartikan Bahwa Para Pengunjung Jangan Hanya Menikmati Keindahan Pantai Ini, Akan Tetapi Juga Ikut Menjaga Kebersihan, Kelestarian Serta Keindahan Tempat Ini Dari Tangan-Tangan Yang Tidak Bertanggung Jawab.', 'Desa Gajah Rejo, Kecamatan Gedangan Kabupaten Malang.', '24 jam buka', 0, 1, 1),
(7, '7', '1.jpg', 'a', 'a', 'a', 0, 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`pri`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subkategori`
--
ALTER TABLE `tbl_subkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `pri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_subkategori`
--
ALTER TABLE `tbl_subkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
