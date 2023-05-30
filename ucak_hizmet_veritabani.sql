-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 29 May 2023, 15:31:16
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ucak_hizmet`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `checkin`
--

CREATE TABLE `checkin` (
  `PNR_no` int(20) NOT NULL,
  `yolcu_no` int(50) NOT NULL,
  `ucak_id` int(50) NOT NULL,
  `gise_no` int(30) NOT NULL,
  `tarih_saat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `checkin`
--

INSERT INTO `checkin` (`PNR_no`, `yolcu_no`, `ucak_id`, `gise_no`, `tarih_saat`) VALUES
(182, 1234797, 10, 4, '2020-06-23'),
(2376, 4512097, 7, 4, '2022-03-06'),
(2846, 7483961, 5, 3, '2022-04-19'),
(9223, 3751920, 7, 3, '2021-02-03'),
(14563, 9745634, 4, 2, '2022-12-12'),
(14752, 8578492, 3, 4, '2020-09-19'),
(15394, 7351043, 2, 1, '2018-12-09'),
(17359, 8013645, 7, 1, '2018-03-20'),
(28462, 5638921, 5, 3, '2017-05-12'),
(36451, 8473629, 4, 3, '2020-07-30'),
(45723, 9027216, 1, 1, '2021-03-04'),
(47346, 6327121, 4, 4, '2019-06-06'),
(48215, 8520471, 9, 1, '2022-05-22'),
(58253, 8572436, 10, 4, '2019-01-14'),
(65216, 701365, 2, 1, '2017-02-20'),
(72712, 2740162, 6, 1, '2020-06-23'),
(72816, 1047386, 4, 2, '2020-06-23'),
(74536, 7451826, 4, 3, '2020-11-01'),
(74638, 4726351, 8, 3, '2021-09-01'),
(75293, 8473628, 4, 2, '2017-10-27'),
(81752, 4702328, 3, 4, '2023-02-10'),
(83617, 2813736, 2, 4, '2022-06-16'),
(87361, 937415, 9, 4, '2018-03-30'),
(92145, 1039724, 6, 1, '2020-06-21'),
(92817, 2356623, 4, 4, '2020-06-23'),
(92837, 5182630, 1, 2, '2019-03-30'),
(92871, 3746012, 5, 3, '2018-10-22'),
(92877, 3614204, 3, 1, '2017-08-23'),
(97125, 2583045, 8, 3, '2020-06-23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dagilim`
--

CREATE TABLE `dagilim` (
  `servis_id` int(50) NOT NULL,
  `ucak_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dagilim`
--

INSERT INTO `dagilim` (`servis_id`, `ucak_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(56, 7),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 9),
(66, 9),
(67, 9),
(68, 9),
(69, 9),
(70, 9),
(71, 10),
(72, 10),
(73, 10),
(74, 10),
(75, 10),
(76, 10),
(77, 10),
(78, 10),
(79, 10),
(80, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dagitim`
--

CREATE TABLE `dagitim` (
  `servis_id` int(50) NOT NULL,
  `yolcu_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dagitim`
--

INSERT INTO `dagitim` (`servis_id`, `yolcu_no`) VALUES
(19, 3614204),
(21, 8578492),
(25, 7483961),
(3, 5182630),
(77, 1234797),
(76, 1234797),
(61, 4726351),
(49, 4512097);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eglence_turu`
--

CREATE TABLE `eglence_turu` (
  `tur_id` int(50) NOT NULL,
  `gosteri_turu` varchar(40) NOT NULL,
  `gosteri_ucret` varchar(40) NOT NULL,
  `gosteri_adi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `eglence_turu`
--

INSERT INTO `eglence_turu` (`tur_id`, `gosteri_turu`, `gosteri_ucret`, `gosteri_adi`) VALUES
(1, 'Film', '23 €', 'Netflix Film Paketi'),
(2, 'Film', '25 €', 'Disney Plus Film Paketi'),
(3, 'Oyun', '12 €', 'Masa Oyunları Paketi'),
(4, 'Oyun', '15 €', 'Mobil Oyun Paketi'),
(5, 'Kitap', '23 €', '5 li Kitap Seti');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `hizmetci_id` int(50) NOT NULL,
  `yolcu_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`hizmetci_id`, `yolcu_no`) VALUES
(4, 7483961),
(22, 9027216),
(29, 1234797),
(20, 1039724),
(18, 3614204),
(30, 8572436),
(10, 4512097),
(11, 3751920),
(10, 3751920);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kargo_bolumu`
--

CREATE TABLE `kargo_bolumu` (
  `depo_id` int(50) NOT NULL,
  `ucak_id` int(50) NOT NULL,
  `alan` varchar(20) NOT NULL,
  `kilo_sınır` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kargo_bolumu`
--

INSERT INTO `kargo_bolumu` (`depo_id`, `ucak_id`, `alan`, `kilo_sınır`) VALUES
(1, 1, '55m2', 800),
(2, 10, '65m2', 1000),
(3, 9, '70m2', 1500),
(4, 6, '25m2', 400),
(5, 5, '70m2', 1500),
(6, 7, '50m2', 900),
(7, 4, '70m2', 1500),
(8, 3, '45m2', 650),
(9, 2, '56m2', 820),
(10, 8, '110m2', 2000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri_hizmetleri`
--

CREATE TABLE `musteri_hizmetleri` (
  `hizmetci_id` int(50) NOT NULL,
  `hizmetin_turu` varchar(50) NOT NULL,
  `firma_adi` varchar(30) NOT NULL,
  `hizmetci_adi` text NOT NULL,
  `deger_puani` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri_hizmetleri`
--

INSERT INTO `musteri_hizmetleri` (`hizmetci_id`, `hizmetin_turu`, `firma_adi`, `hizmetci_adi`, `deger_puani`) VALUES
(1, 'Bagaj Bilgilendirmesi', 'PEGASUS', 'Zuhal', 3),
(2, 'Koltuk Bilgilendirilmesi', 'PEGASUS', 'Mehmet', 4),
(3, 'Havalimanı Hizmetleri', 'PEGASUS', 'Berrak', 4),
(4, 'Personel Şikayeti', 'PEGASUS', 'Zeynep', 3),
(5, 'Bilet İşlemleri', 'PEGASUS', 'Burak', 4),
(6, 'Bagaj Hasar Kaydı İşlemleri', 'PEGASUS', 'Burçin', 3),
(7, 'Müşteri Hizmetleri Değerlendirme Anketi', 'PEGASUS', 'Selman', 2),
(8, 'Bagaj Bilgilendirmesi', 'TURKISH AIRLINES', 'Sümbül', 4),
(9, 'Koltuk Bilgilendirmesi', 'TURKISH AIRLINES', 'Refika', 3),
(10, 'Havalimanı Hizmetleri', 'TURKISH AIRLINES', 'Kerem', 4),
(11, 'Personel Şikayeti', 'TURKISH AIRLINES', 'Lefter', 5),
(12, 'Bilet İşlemleri', 'TURKISH AIRLINES', 'Zülal', 4),
(13, 'Bagaj Hasar Kaydı İşlemleri', 'TURKISH AIRLINES', 'Pelin', 3),
(14, 'Müşteri Hizmetleri Değerlendirme Anketi', 'TURKISH AIRLINES', 'Can', 5),
(15, 'Bagaj Bilgilendirmesi', 'AIR SERBIA', 'Frank', 3),
(16, 'Koltuk Bilgilendirilmesi', 'AIR SERBIA', 'Keller', 2),
(17, 'Havalimanı Hizmetleri', 'AIR SERBIA', 'Mark', 4),
(18, 'Personel Şikayeti', 'AIR SERBIA', 'Zelenski', 5),
(19, 'Bilet İşlemleri', 'AIR SERBIA', 'Patrick', 4),
(20, 'Bagaj Hasar Kaydı İşlemleri', 'AIR SERBIA', 'Kevin', 3),
(21, 'Bagaj Bilgilendirmesi', 'FLY EMIRATES', 'Muhammed', 3),
(22, 'Koltuk Bilgilendirilmesi', 'FLY EMIRATES', 'Justin', 2),
(23, 'Havalimanı Hizmetleri', 'FLY EMIRATES', 'Islam', 4),
(24, 'Personel Şikayeti', 'FLY EMIRATES', 'Zelenski', 5),
(25, 'Bilet İşlemleri', 'FLY EMIRATES', 'Enner', 4),
(26, 'Bagaj Hasar Kaydı İşlemleri', 'FLY EMIRATES', 'Persie', 3),
(27, 'Müşteri Hizmetleri Değerlendirme Anketi', 'FLY EMIRATES', 'Faith', 4),
(28, 'Müşteri Hizmetleri Değerlendirme Anketi', 'AIR SERBIA', 'Tim', 4),
(29, 'Bilet İşlemleri', 'QATAR AIRWAYS', 'Mohammed', 2),
(30, 'Müşteri Hizmetleri Değerlendirme Anketi', 'QATAR AIRWAYS', 'Isak', 4),
(31, 'Bagaj Hasar Kaydı İşlemleri', 'QATAR AIRWAYS', 'James', 2),
(32, 'Persoenel Şikayeti', 'QATAR AIRWAYS', 'Jones', 4),
(33, 'Havalimanı Hizmetleri', 'QATAR AIRWAYS', 'Jax', 3),
(34, 'Bagaj Bilgilendirmesi', 'QATAR AIRWAYS', 'Faith', 4),
(35, 'Koltuk Bilgilendirmesi', 'QATAR AIRWAYS', 'Elliot', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `personel_id` int(50) NOT NULL,
  `ucak_id` int(50) NOT NULL,
  `personel_adi` text NOT NULL,
  `personel_soyadi` text NOT NULL,
  `tecrube_yili` int(10) NOT NULL,
  `unvan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`personel_id`, `ucak_id`, `personel_adi`, `personel_soyadi`, `tecrube_yili`, `unvan`) VALUES
(1, 1, 'Alexander', 'FREY', 6, 'Pilot'),
(2, 4, 'Billy', 'FREAK', 3, 'Pilot'),
(3, 5, 'Cesur', 'KAHRAMAN', 4, 'Pilot'),
(4, 3, 'Yasemin', 'AKARSU', 4, 'Pilot'),
(5, 9, 'Mehmet', 'AKTÜRK', 5, 'Pilot'),
(6, 8, 'Haluk', 'BİLGİN', 7, 'Pilot'),
(7, 10, 'Marco', 'PATRICK', 12, 'Pilot'),
(8, 2, 'Jiro', 'SUZUKI', 10, 'Pilot'),
(9, 7, 'Maria', 'MONROE', 6, 'Pilot'),
(10, 6, 'Burak', 'KARACA', 4, 'Pilot'),
(11, 3, 'Fatih', 'TORAMAN', 4, 'Yardımcı Pilot'),
(12, 5, 'Micheal', 'MAX', 5, 'Yardımcı Pilot'),
(13, 2, 'Julia', 'JUNE', 5, 'Yardımcı Pilot'),
(14, 4, 'Fatih', 'KARAPINAR', 3, 'Yardımcı Pilot'),
(15, 1, 'George', 'PAUL', 5, 'Yardımcı Pilot'),
(16, 7, 'Kevin', 'CLAY', 7, 'Yardımcı Pilot'),
(17, 6, 'Kerem', 'YAPICI', 4, 'Yardımcı Pilot'),
(18, 9, 'Pınar', 'KORUTÜRK', 2, 'Yardımcı Pilot'),
(19, 10, 'Hayati', 'PARLAK', 7, 'Yardımcı Pilot'),
(20, 8, 'Larry', 'JACKSON', 8, 'Yardımcı Pilot'),
(21, 2, 'Nur', 'DAĞLI', 8, 'Kabin Personeli'),
(22, 2, 'Kamil', 'ÖZCAN', 3, 'Kabin Personeli'),
(23, 2, 'Uğur', 'LALE', 8, 'Kabin Personeli'),
(24, 2, 'Gamze', 'USLU', 2, 'Kabin Personeli'),
(25, 1, 'Cihan', 'CAMGÖZ', 1, 'Kabin Personeli'),
(26, 1, 'Nuri', 'ASYA', 3, 'Kabin Personeli'),
(27, 1, 'Cansel', 'TAŞÇI', 8, 'Kabin Personeli'),
(28, 2, 'Burak', 'DURSUN', 4, 'Kabin Personeli'),
(29, 1, 'Jale', 'VARLI', 5, 'Kabin Personeli'),
(30, 3, 'Zeynep', 'VARLI', 6, 'Kabin Personeli'),
(31, 3, 'Willian', 'JAMES', 9, 'Kabin Personeli'),
(32, 3, 'Fikret', 'İLERİ', 2, 'Kabin Personeli'),
(33, 3, 'Yunus', 'ŞAHİN', 5, 'Kabin Personeli'),
(34, 1, 'Stefan', 'IVORY', 2, 'Kabin Personeli'),
(35, 3, 'Faruk', 'ÇİFTÇİ', 1, 'Kabin Personeli'),
(36, 4, 'Cenk', 'PORTAKAL', 5, 'Kabin Personeli'),
(37, 4, 'Kayhan', 'BARIŞ', 1, 'Kabin Personeli'),
(38, 4, 'Gökhan', 'UYSAL', 6, 'Kabin Personeli'),
(39, 4, 'Ahmet', 'ELMAS', 2, 'Kabin Personeli'),
(40, 4, 'Frank', 'MARTIN', 6, 'Kabin Personeli'),
(41, 5, 'İrfan', 'TAŞÇI', 8, 'Kabin Personeli'),
(42, 5, 'Cengiz', 'GÜNGÖR', 3, 'Kabin Personeli'),
(43, 5, 'Mehtap', 'LEFKOŞA', 7, 'Kabin Personeli'),
(44, 5, 'Can', 'OZAN', 2, 'Kabin Personeli'),
(45, 5, 'Leyla', 'GÜNEŞ', 5, 'Kabin Personeli'),
(46, 6, 'Yüksel', 'ÖZCAN', 7, 'Kabin Personeli'),
(47, 6, 'Zeynep', 'KEKİK', 3, 'Kabin Personeli'),
(48, 6, 'Carmen', 'KUNTZ', 4, 'Kabin Personeli'),
(49, 6, 'Mehmet', 'UYGUN', 2, 'Kabin Personeli'),
(50, 6, 'Uğur', 'TAŞKIN', 7, 'Kabin Personeli'),
(51, 7, 'Kamil', 'BAŞ', 5, 'Kabin Personeli'),
(52, 7, 'Fatih', 'BERK', 1, 'Kabin Personeli'),
(53, 7, 'Kemal', 'COŞKUN', 2, 'Kabin Personeli'),
(54, 7, 'Emre', 'ŞAHİN', 5, 'Kabin Personeli'),
(55, 7, 'Cemile', 'VARLI', 9, 'Kabin Personeli'),
(56, 8, 'Coşkun', 'YILMAZ', 1, 'Kabin Personeli'),
(57, 8, 'Kezban', 'ZENGİN', 7, 'Kabin Personeli'),
(58, 8, 'Yüksel', 'ŞAHİN', 5, 'Kabin Personeli'),
(59, 8, 'Kerem', 'LİDYA', 2, 'Kabin Personeli'),
(60, 8, 'Kamil', 'KAHRAMAN', 5, 'Kabin Personeli'),
(61, 9, 'Kerim', 'ALICI', 3, 'Kabin Personeli'),
(62, 9, 'Arda', 'İSTANBULLUOĞLU', 5, 'Kabin Personeli'),
(63, 9, 'Sarp', 'YARABBİOĞULLARI', 10, 'Kabin Personeli'),
(64, 9, 'Derin', 'COŞAN', 2, 'Kabin Personeli'),
(65, 9, 'Helin', 'BERAT', 3, 'Kabin Personeli'),
(66, 10, 'Zeynep', 'ÇORUMLU', 5, 'Kabin Personeli'),
(67, 10, 'Şermin', 'FERAH', 7, 'Kabin Personeli'),
(68, 10, 'Ahmet', 'YÜKSEL', 8, 'Kabin Personeli'),
(69, 10, 'James', 'PALINKA', 1, 'Kabin Personeli'),
(70, 10, 'Mahmut', 'KAVALA', 1, 'Kabin Personeli');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `per_temizlik`
--

CREATE TABLE `per_temizlik` (
  `personel_id` int(50) NOT NULL,
  `temizlik_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `per_temizlik`
--

INSERT INTO `per_temizlik` (`personel_id`, `temizlik_no`) VALUES
(29, 3),
(26, 1),
(26, 2),
(29, 4),
(29, 5),
(26, 6),
(24, 1),
(24, 2),
(24, 3),
(23, 4),
(23, 5),
(23, 6),
(31, 1),
(31, 2),
(31, 3),
(33, 4),
(33, 5),
(33, 6),
(37, 1),
(37, 2),
(37, 3),
(38, 4),
(38, 5),
(38, 6),
(42, 1),
(42, 2),
(42, 3),
(43, 4),
(43, 5),
(43, 6),
(47, 1),
(47, 2),
(47, 3),
(48, 4),
(48, 5),
(48, 6),
(51, 1),
(51, 2),
(51, 3),
(53, 4),
(53, 5),
(53, 6),
(58, 1),
(58, 2),
(58, 3),
(60, 4),
(60, 5),
(60, 6),
(61, 1),
(61, 2),
(61, 3),
(62, 4),
(62, 5),
(62, 6),
(66, 1),
(66, 2),
(66, 3),
(69, 4),
(69, 5),
(69, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satis`
--

CREATE TABLE `satis` (
  `yolcu_no` int(50) NOT NULL,
  `gosteri_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `satis`
--

INSERT INTO `satis` (`yolcu_no`, `gosteri_no`) VALUES
(701365, 6),
(2740162, 28),
(8473629, 20),
(8013645, 31),
(2740162, 28),
(8572436, 49),
(8520471, 45),
(701365, 44),
(5182630, 3),
(7483961, 23),
(5638921, 25),
(8013645, 34);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `servis_hizmeti`
--

CREATE TABLE `servis_hizmeti` (
  `servis_id` int(50) NOT NULL,
  `personel_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `servis_hizmeti`
--

INSERT INTO `servis_hizmeti` (`servis_id`, `personel_id`) VALUES
(1, 27),
(2, 27),
(3, 27),
(4, 27),
(5, 23),
(6, 23),
(7, 23),
(8, 23),
(9, 21),
(10, 21),
(11, 21),
(12, 21),
(13, 22),
(14, 22),
(15, 22),
(16, 22),
(17, 32),
(18, 32),
(19, 32),
(20, 32),
(21, 30),
(22, 30),
(23, 30),
(24, 30),
(25, 39),
(26, 39),
(27, 39),
(28, 39),
(29, 40),
(30, 40),
(31, 40),
(32, 40),
(33, 44),
(34, 44),
(35, 44),
(36, 44),
(37, 45),
(38, 45),
(39, 45),
(40, 45),
(41, 46),
(42, 46),
(43, 46),
(44, 46),
(45, 50),
(46, 50),
(47, 50),
(48, 50),
(49, 54),
(50, 54),
(51, 54),
(52, 54),
(53, 55),
(54, 55),
(55, 55),
(56, 5),
(57, 56),
(58, 56),
(59, 56),
(60, 56),
(61, 57),
(62, 57),
(63, 57),
(64, 57),
(65, 63),
(66, 63),
(67, 63),
(68, 63),
(69, 65),
(70, 65),
(71, 65),
(72, 65),
(73, 67),
(74, 67),
(75, 67),
(76, 67),
(77, 68),
(78, 68),
(79, 68),
(80, 68);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `servis_turu`
--

CREATE TABLE `servis_turu` (
  `s_tur_id` int(50) NOT NULL,
  `servis_turu` varchar(20) NOT NULL,
  `servis_ucreti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `servis_turu`
--

INSERT INTO `servis_turu` (`s_tur_id`, `servis_turu`, `servis_ucreti`) VALUES
(1, 'Alkollü İçecek', '5 €'),
(2, 'Alkolsüz İçecek', '3 €'),
(3, 'Yiyecek', '4 €'),
(4, 'Özel İstekler', '10 €');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `temizlik`
--

CREATE TABLE `temizlik` (
  `temizlik_no` int(50) NOT NULL,
  `temizlik_turu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `temizlik`
--

INSERT INTO `temizlik` (`temizlik_no`, `temizlik_turu`) VALUES
(1, 'Süpürge Tutma'),
(2, 'Yerleri Silme'),
(3, 'Perdeleri Düzeltme'),
(4, 'Tuvalet Temizliği'),
(5, 'Cam Silme'),
(6, 'Pilot Kabini Temizliği');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tur_eglence`
--

CREATE TABLE `tur_eglence` (
  `gosteri_no` int(50) NOT NULL,
  `tur_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tur_eglence`
--

INSERT INTO `tur_eglence` (`gosteri_no`, `tur_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 1),
(27, 2),
(28, 3),
(29, 4),
(30, 5),
(31, 1),
(32, 2),
(33, 3),
(34, 4),
(35, 5),
(36, 1),
(37, 2),
(38, 3),
(39, 4),
(40, 5),
(41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 1),
(47, 2),
(48, 3),
(49, 4),
(50, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tur_servis`
--

CREATE TABLE `tur_servis` (
  `servis_id` int(50) NOT NULL,
  `s_tur_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tur_servis`
--

INSERT INTO `tur_servis` (`servis_id`, `s_tur_id`) VALUES
(1, 1),
(5, 1),
(9, 1),
(13, 1),
(17, 1),
(21, 1),
(25, 1),
(29, 1),
(33, 1),
(37, 1),
(41, 1),
(45, 1),
(49, 1),
(53, 1),
(57, 1),
(2, 2),
(6, 2),
(10, 2),
(14, 2),
(18, 2),
(22, 2),
(26, 2),
(30, 2),
(34, 2),
(38, 2),
(42, 2),
(46, 2),
(50, 2),
(54, 2),
(58, 2),
(3, 3),
(7, 3),
(11, 3),
(15, 3),
(19, 3),
(23, 3),
(27, 3),
(31, 3),
(35, 3),
(39, 3),
(43, 3),
(47, 3),
(51, 3),
(55, 3),
(59, 3),
(4, 4),
(8, 4),
(12, 4),
(16, 4),
(20, 4),
(24, 4),
(28, 4),
(32, 4),
(36, 4),
(40, 4),
(44, 4),
(48, 4),
(52, 4),
(56, 4),
(60, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ucak_e`
--

CREATE TABLE `ucak_e` (
  `ucak_id` int(50) NOT NULL,
  `gosteri_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ucak_e`
--

INSERT INTO `ucak_e` (`ucak_id`, `gosteri_no`) VALUES
(1, 1),
(1, 1),
(2, 1),
(2, 1),
(3, 1),
(3, 1),
(4, 1),
(4, 1),
(5, 1),
(5, 1),
(6, 2),
(6, 2),
(7, 2),
(7, 2),
(8, 2),
(8, 2),
(9, 2),
(9, 2),
(10, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ucak_eglencesi`
--

CREATE TABLE `ucak_eglencesi` (
  `gosteri_no` int(50) NOT NULL,
  `personel_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ucak_eglencesi`
--

INSERT INTO `ucak_eglencesi` (`gosteri_no`, `personel_id`) VALUES
(6, 28),
(7, 28),
(8, 28),
(9, 28),
(10, 28),
(1, 34),
(2, 34),
(3, 34),
(4, 34),
(5, 34),
(11, 35),
(12, 35),
(13, 35),
(14, 35),
(15, 35),
(16, 36),
(17, 36),
(18, 36),
(19, 36),
(20, 36),
(21, 41),
(22, 41),
(23, 41),
(24, 41),
(25, 41),
(26, 49),
(27, 49),
(28, 49),
(29, 49),
(30, 49),
(31, 52),
(32, 52),
(33, 52),
(34, 52),
(35, 52),
(36, 59),
(37, 59),
(38, 59),
(39, 59),
(40, 59),
(41, 64),
(42, 64),
(43, 64),
(44, 64),
(45, 64),
(46, 70),
(47, 70),
(48, 70),
(49, 70),
(50, 70);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ucak_model`
--

CREATE TABLE `ucak_model` (
  `model_id` int(11) NOT NULL,
  `marka` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ucak_model`
--

INSERT INTO `ucak_model` (`model_id`, `marka`, `model`) VALUES
(1, 'Airbus', 'A321 neo'),
(2, 'Airbus', 'A330'),
(3, 'Boeing', '777'),
(4, 'ATR Aircraft', '72-600'),
(5, 'Airbus', 'A320'),
(6, 'ATR Aircraft', '42-600'),
(7, 'Boeing', '772x'),
(8, 'Boeing', '737-700'),
(9, 'Airbus', 'A380');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `u_temizlik`
--

CREATE TABLE `u_temizlik` (
  `ucak_id` int(50) NOT NULL,
  `temizlik_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `u_temizlik`
--

INSERT INTO `u_temizlik` (`ucak_id`, `temizlik_no`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uçak`
--

CREATE TABLE `uçak` (
  `ucak_id` int(50) NOT NULL,
  `model_id` int(50) NOT NULL,
  `ucus_saati` int(10) NOT NULL,
  `uretim_yili` int(5) NOT NULL,
  `kapasite` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uçak`
--

INSERT INTO `uçak` (`ucak_id`, `model_id`, `ucus_saati`, `uretim_yili`, `kapasite`) VALUES
(1, 1, 2500, 2015, 250),
(2, 2, 3100, 2014, 295),
(3, 3, 2100, 2016, 317),
(4, 4, 2500, 2013, 78),
(5, 6, 1800, 2016, 220),
(6, 5, 3500, 2012, 50),
(7, 7, 1500, 2017, 317),
(8, 9, 800, 2019, 250),
(9, 10, 2300, 2017, 149),
(10, 8, 2000, 2016, 525);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yolcu`
--

CREATE TABLE `yolcu` (
  `yolcu_no` int(50) NOT NULL,
  `ucak_id` int(50) NOT NULL,
  `yolcu_ad` text NOT NULL,
  `yolcu_soyad` text NOT NULL,
  `pasaport_no` varchar(11) NOT NULL,
  `dogum_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yolcu`
--

INSERT INTO `yolcu` (`yolcu_no`, `ucak_id`, `yolcu_ad`, `yolcu_soyad`, `pasaport_no`, `dogum_tarihi`) VALUES
(701365, 2, 'JACOB', 'TAYLOR', '58SM9K3', '1984-03-13'),
(937415, 9, 'OSCAR', 'TREMBLAY', 'U46D9U1', '1987-08-09'),
(1039724, 6, 'LİLY', 'LEE', 'CY63M21', '1984-06-26'),
(1047386, 4, 'CHARLİE', 'DAVİES', 'J4D07H1', '1979-10-03'),
(1234797, 10, 'JACK', 'MAX', 'HS35A57', '1968-06-12'),
(2356623, 4, 'ANTONIO', 'BREMEN', '76DHSJ3', '1980-11-01'),
(2583045, 8, 'AVA', 'MARTİN', 'RTE1630', '1985-10-24'),
(2740162, 6, 'SEBASTİEN', 'KAREN', '976CHS5', '1990-12-21'),
(2813736, 2, 'KEVIN', 'MCLAREN', '6T83UJ8', '2003-02-21'),
(3614204, 3, 'AUSTİN', 'BERTİN', 'V5D8M93', '1993-12-30'),
(3746012, 5, 'ISAL', 'EVSAN', '98DY36X', '1970-09-02'),
(3751920, 7, 'SOPHİE', 'ROY', 'ZK57D01', '1985-11-04'),
(4512097, 7, 'LİAM', 'BRODVEY', 'MA4710J', '1984-06-14'),
(4702328, 3, 'TAHOMAS', 'WİLSON', '39KN2X6', '1983-06-18'),
(4726351, 8, 'MARY', 'SARAH', 'P63H9C6', '1974-02-28'),
(5182630, 1, 'CLİFF', 'DARİAN', '20CNK09', '1993-07-10'),
(5638921, 5, 'MICHEAL', 'DOWNHELL', '76FN9K7', '1990-10-25'),
(6327121, 4, 'ZEYNEP', 'BALCI', 'U8YU98K', '2000-10-11'),
(7351043, 2, 'ADAM', 'CRAK', '56MSJ31', '1994-05-25'),
(7451826, 4, 'ABEL', 'BERT', 'ME07D63', '1987-10-21'),
(7483961, 5, 'CRAİG', 'AXEL', '81H4C8S', '1988-06-18'),
(8013645, 7, 'JACOB', 'JONES', '31HC45S', '1981-08-28'),
(8473628, 4, 'LARSEN', 'KELLERIN', '89UEK72', '1999-02-21'),
(8473629, 4, 'ANNA', 'KELLERIN', '76FHJ83', '1998-05-12'),
(8520471, 9, 'HARRY', 'BROWN', 'SO368N9', '1983-12-31'),
(8572436, 10, 'JESSİCA', 'ROBERTS', 'G365BS7', '1988-07-24'),
(8578492, 3, 'JACKSON', 'PRESTON', '98HD55J', '1972-06-05'),
(9027216, 1, 'AHMET', 'DURSUN', 'U738259', '1965-12-30'),
(9745634, 4, 'OLİVER', 'SMİTH', 'A35H68G', '1972-01-22');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`PNR_no`),
  ADD KEY `checkin_ibfk_1` (`ucak_id`),
  ADD KEY `yolcu_no` (`yolcu_no`);

--
-- Tablo için indeksler `dagilim`
--
ALTER TABLE `dagilim`
  ADD KEY `servis_id` (`servis_id`),
  ADD KEY `ucak_id` (`ucak_id`);

--
-- Tablo için indeksler `dagitim`
--
ALTER TABLE `dagitim`
  ADD KEY `servis_id` (`servis_id`),
  ADD KEY `yolcu_no` (`yolcu_no`);

--
-- Tablo için indeksler `eglence_turu`
--
ALTER TABLE `eglence_turu`
  ADD PRIMARY KEY (`tur_id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD KEY `hizmetci_id` (`hizmetci_id`),
  ADD KEY `yolcu_no` (`yolcu_no`);

--
-- Tablo için indeksler `kargo_bolumu`
--
ALTER TABLE `kargo_bolumu`
  ADD PRIMARY KEY (`depo_id`),
  ADD KEY `ucak_id` (`ucak_id`);

--
-- Tablo için indeksler `musteri_hizmetleri`
--
ALTER TABLE `musteri_hizmetleri`
  ADD PRIMARY KEY (`hizmetci_id`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`personel_id`),
  ADD KEY `ucak_id` (`ucak_id`);

--
-- Tablo için indeksler `per_temizlik`
--
ALTER TABLE `per_temizlik`
  ADD KEY `personel_id` (`personel_id`),
  ADD KEY `temizlik_no` (`temizlik_no`);

--
-- Tablo için indeksler `satis`
--
ALTER TABLE `satis`
  ADD KEY `gosteri_no` (`gosteri_no`),
  ADD KEY `yolcu_no` (`yolcu_no`);

--
-- Tablo için indeksler `servis_hizmeti`
--
ALTER TABLE `servis_hizmeti`
  ADD PRIMARY KEY (`servis_id`);

--
-- Tablo için indeksler `servis_turu`
--
ALTER TABLE `servis_turu`
  ADD PRIMARY KEY (`s_tur_id`);

--
-- Tablo için indeksler `temizlik`
--
ALTER TABLE `temizlik`
  ADD PRIMARY KEY (`temizlik_no`);

--
-- Tablo için indeksler `tur_eglence`
--
ALTER TABLE `tur_eglence`
  ADD KEY `gosteri_no` (`gosteri_no`,`tur_id`),
  ADD KEY `tur_id` (`tur_id`);

--
-- Tablo için indeksler `tur_servis`
--
ALTER TABLE `tur_servis`
  ADD KEY `s_tur_id` (`s_tur_id`,`servis_id`),
  ADD KEY `servis_id` (`servis_id`);

--
-- Tablo için indeksler `ucak_e`
--
ALTER TABLE `ucak_e`
  ADD KEY `ucak_id` (`ucak_id`,`gosteri_no`),
  ADD KEY `gosteri_no` (`gosteri_no`);

--
-- Tablo için indeksler `ucak_eglencesi`
--
ALTER TABLE `ucak_eglencesi`
  ADD PRIMARY KEY (`gosteri_no`),
  ADD KEY `personel_id` (`personel_id`);

--
-- Tablo için indeksler `ucak_model`
--
ALTER TABLE `ucak_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Tablo için indeksler `u_temizlik`
--
ALTER TABLE `u_temizlik`
  ADD KEY `temizlik_no` (`temizlik_no`),
  ADD KEY `ucak_id` (`ucak_id`);

--
-- Tablo için indeksler `uçak`
--
ALTER TABLE `uçak`
  ADD PRIMARY KEY (`ucak_id`),
  ADD KEY `kapasite` (`kapasite`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `kapasite_2` (`kapasite`);

--
-- Tablo için indeksler `yolcu`
--
ALTER TABLE `yolcu`
  ADD PRIMARY KEY (`yolcu_no`),
  ADD KEY `ucak_id` (`ucak_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `checkin`
--
ALTER TABLE `checkin`
  MODIFY `PNR_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9872179;

--
-- Tablo için AUTO_INCREMENT değeri `eglence_turu`
--
ALTER TABLE `eglence_turu`
  MODIFY `tur_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kargo_bolumu`
--
ALTER TABLE `kargo_bolumu`
  MODIFY `depo_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `musteri_hizmetleri`
--
ALTER TABLE `musteri_hizmetleri`
  MODIFY `hizmetci_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `personel_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Tablo için AUTO_INCREMENT değeri `servis_hizmeti`
--
ALTER TABLE `servis_hizmeti`
  MODIFY `servis_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Tablo için AUTO_INCREMENT değeri `servis_turu`
--
ALTER TABLE `servis_turu`
  MODIFY `s_tur_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `temizlik`
--
ALTER TABLE `temizlik`
  MODIFY `temizlik_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `ucak_eglencesi`
--
ALTER TABLE `ucak_eglencesi`
  MODIFY `gosteri_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `ucak_model`
--
ALTER TABLE `ucak_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `uçak`
--
ALTER TABLE `uçak`
  MODIFY `ucak_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yolcu`
--
ALTER TABLE `yolcu`
  MODIFY `yolcu_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9745635;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `checkin`
--
ALTER TABLE `checkin`
  ADD CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`),
  ADD CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`yolcu_no`) REFERENCES `yolcu` (`yolcu_no`);

--
-- Tablo kısıtlamaları `dagilim`
--
ALTER TABLE `dagilim`
  ADD CONSTRAINT `dagilim_ibfk_1` FOREIGN KEY (`servis_id`) REFERENCES `servis_hizmeti` (`servis_id`),
  ADD CONSTRAINT `dagilim_ibfk_2` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`);

--
-- Tablo kısıtlamaları `dagitim`
--
ALTER TABLE `dagitim`
  ADD CONSTRAINT `dagitim_ibfk_1` FOREIGN KEY (`servis_id`) REFERENCES `servis_hizmeti` (`servis_id`),
  ADD CONSTRAINT `dagitim_ibfk_2` FOREIGN KEY (`yolcu_no`) REFERENCES `yolcu` (`yolcu_no`);

--
-- Tablo kısıtlamaları `iletisim`
--
ALTER TABLE `iletisim`
  ADD CONSTRAINT `iletisim_ibfk_1` FOREIGN KEY (`hizmetci_id`) REFERENCES `musteri_hizmetleri` (`hizmetci_id`),
  ADD CONSTRAINT `iletisim_ibfk_2` FOREIGN KEY (`yolcu_no`) REFERENCES `yolcu` (`yolcu_no`);

--
-- Tablo kısıtlamaları `kargo_bolumu`
--
ALTER TABLE `kargo_bolumu`
  ADD CONSTRAINT `kargo_bolumu_ibfk_1` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`);

--
-- Tablo kısıtlamaları `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `personel_ibfk_1` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`);

--
-- Tablo kısıtlamaları `per_temizlik`
--
ALTER TABLE `per_temizlik`
  ADD CONSTRAINT `per_temizlik_ibfk_1` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`personel_id`),
  ADD CONSTRAINT `per_temizlik_ibfk_2` FOREIGN KEY (`temizlik_no`) REFERENCES `temizlik` (`temizlik_no`);

--
-- Tablo kısıtlamaları `satis`
--
ALTER TABLE `satis`
  ADD CONSTRAINT `satis_ibfk_1` FOREIGN KEY (`gosteri_no`) REFERENCES `ucak_eglencesi` (`gosteri_no`),
  ADD CONSTRAINT `satis_ibfk_2` FOREIGN KEY (`yolcu_no`) REFERENCES `yolcu` (`yolcu_no`);

--
-- Tablo kısıtlamaları `tur_eglence`
--
ALTER TABLE `tur_eglence`
  ADD CONSTRAINT `tur_eglence_ibfk_1` FOREIGN KEY (`gosteri_no`) REFERENCES `ucak_eglencesi` (`gosteri_no`),
  ADD CONSTRAINT `tur_eglence_ibfk_2` FOREIGN KEY (`tur_id`) REFERENCES `eglence_turu` (`tur_id`);

--
-- Tablo kısıtlamaları `tur_servis`
--
ALTER TABLE `tur_servis`
  ADD CONSTRAINT `tur_servis_ibfk_1` FOREIGN KEY (`servis_id`) REFERENCES `servis_hizmeti` (`servis_id`),
  ADD CONSTRAINT `tur_servis_ibfk_2` FOREIGN KEY (`s_tur_id`) REFERENCES `servis_turu` (`s_tur_id`);

--
-- Tablo kısıtlamaları `ucak_e`
--
ALTER TABLE `ucak_e`
  ADD CONSTRAINT `ucak_e_ibfk_2` FOREIGN KEY (`gosteri_no`) REFERENCES `ucak_eglencesi` (`gosteri_no`);

--
-- Tablo kısıtlamaları `ucak_eglencesi`
--
ALTER TABLE `ucak_eglencesi`
  ADD CONSTRAINT `ucak_eglencesi_ibfk_1` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`personel_id`);

--
-- Tablo kısıtlamaları `ucak_model`
--
ALTER TABLE `ucak_model`
  ADD CONSTRAINT `ucak_model_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `uçak` (`model_id`);

--
-- Tablo kısıtlamaları `u_temizlik`
--
ALTER TABLE `u_temizlik`
  ADD CONSTRAINT `u_temizlik_ibfk_1` FOREIGN KEY (`temizlik_no`) REFERENCES `temizlik` (`temizlik_no`),
  ADD CONSTRAINT `u_temizlik_ibfk_2` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`);

--
-- Tablo kısıtlamaları `uçak`
--
ALTER TABLE `uçak`
  ADD CONSTRAINT `uçak_ibfk_1` FOREIGN KEY (`ucak_id`) REFERENCES `ucak_e` (`ucak_id`);

--
-- Tablo kısıtlamaları `yolcu`
--
ALTER TABLE `yolcu`
  ADD CONSTRAINT `yolcu_ibfk_2` FOREIGN KEY (`ucak_id`) REFERENCES `uçak` (`ucak_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
