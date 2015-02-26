-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: topproject
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coba`
--

DROP TABLE IF EXISTS `coba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coba` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coba`
--

LOCK TABLES `coba` WRITE;
/*!40000 ALTER TABLE `coba` DISABLE KEYS */;
INSERT INTO `coba` VALUES (1,'f','f'),(2,'novreza','novreza');
/*!40000 ALTER TABLE `coba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Kelas 1','2015-01-31 12:54:41','2015-01-31 12:54:41'),(2,'Kelas 2','2015-01-31 09:05:57','2015-01-31 09:05:57'),(3,'Kelas 3','2015-01-31 09:05:58','2015-01-31 09:05:58'),(4,'Kelas 4','2015-01-31 09:06:00','2015-01-31 09:06:00'),(5,'Kelas 5','2015-01-31 12:54:43','2015-01-31 12:54:43'),(6,'Kelas 6','2015-01-31 12:54:45','2015-01-31 12:54:45'),(7,'Kelas 7','2015-01-31 12:54:47','2015-01-31 12:54:47'),(8,'Kelas 8','2015-01-31 09:06:07','2015-01-31 09:06:07'),(9,'Kelas 9','2015-01-31 09:06:08','2015-01-31 09:06:08'),(10,'Kelas 10','2015-01-31 09:06:11','2015-01-31 09:06:11'),(11,'Kelas 11','2015-01-31 09:06:12','2015-01-31 09:06:12'),(12,'Kelas 12','2015-01-31 12:54:49','2015-01-31 12:54:49');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapels`
--

DROP TABLE IF EXISTS `mapels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mata_pelajaran` varchar(150) DEFAULT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapels`
--

LOCK TABLES `mapels` WRITE;
/*!40000 ALTER TABLE `mapels` DISABLE KEYS */;
INSERT INTO `mapels` VALUES (1,'Bahasa Indonesia',NULL,'2015-01-31 12:15:20','2015-01-31 12:15:20'),(2,'Bahasa Inggris',NULL,'2015-01-31 12:15:29','2015-01-31 12:15:29'),(3,'Matematika',NULL,'2015-01-31 12:15:39','2015-01-31 12:15:39');
/*!40000 ALTER TABLE `mapels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT '/media/images/foto/siswa.jpg',
  `nama_lengkap` varchar(150) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `no_telp` varchar(10) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'/media/images/foto/admin.jpg','Administrator','Laki-laki','Jakarta','1980-09-04','Pengadegan Selatan 7 No.16B RT 006 / RW 05','Pengadegan','Pancoran','Jakarta','12770','0813109138','Ayah Administrator','Super Administrator','Ibu Administrator','Superb Administrator','2015-02-02 12:00:56','2015-02-02 12:00:56'),(2,2,'/media/images/foto/siswa.jpg','Topan Padana','Laki-laki','Jakarta',NULL,'Pengadegan Selatan 7 No.16B RT 006 / RW 05','Pengadegan','Pancoran','Jakarta','12770','0813109138','Ayah Administrator','Super Administrator','Ibu Administrator','Superb Administrator','2015-02-03 15:59:04','2015-02-03 15:59:04');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `jumlah_soal` int(11) DEFAULT NULL,
  `waktu_soal` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soals`
--

DROP TABLE IF EXISTS `soals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `pertanyaan` text,
  `jawab_a` tinytext,
  `jawab_b` tinytext,
  `jawab_c` tinytext,
  `jawab_d` tinytext,
  `kunci_jawab` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soals`
--

LOCK TABLES `soals` WRITE;
/*!40000 ALTER TABLE `soals` DISABLE KEYS */;
/*!40000 ALTER TABLE `soals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_soal`
--

DROP TABLE IF EXISTS `tbl_soal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_soal` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `soal` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `jwaban` int(2) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_soal`
--

LOCK TABLES `tbl_soal` WRITE;
/*!40000 ALTER TABLE `tbl_soal` DISABLE KEYS */;
INSERT INTO `tbl_soal` VALUES (1,'Apa nama latin dari gambar di bawah ini?','Tamarindus indica','Averrhoa bilimbi','Phyllanthus acidus',1,'asam.jpg'),(2,'Apa nama latin dari gambar di bawah ini?','Tamarindus indica','Averrhoa bilimbi','Phyllanthus acidus',2,'belimbingwuluh.jpg'),(3,'Apa nama latin dari gambar di bawah ini?','Tamarindus indica','Averrhoa bilimbi','Phyllanthus acidus',3,'cermai.jpg'),(4,'Apa nama latin dari gambar di bawah ini?','Uncaria gambir','Jatropha curcas','Citrus x hystrix',1,'gambir.jpg'),(5,'Apa nama latin dari gambar di bawah ini?','Uncaria gambir','Jatropha curcas','Citrus x hystrix',2,'jarak_pagar.jpg'),(6,'Apa nama latin dari gambar di bawah ini?','Uncaria gambir','Jatropha curcas','Citrus x hystrix',3,'jeruk_purut.jpg'),(7,'Apa nama latin dari gambar di bawah ini?','Vigna radiata','Cocos nucifera','Stelechocarpus burahol',1,'kacang.jpg'),(8,'Apa nama latin dari gambar di bawah ini?','Vigna radiata','Cocos nucifera','Stelechocarpus burahol',2,'kelapa.jpg'),(9,'Apa nama latin dari gambar di bawah ini?','Vigna radiata','Cocos nucifera','Stelechocarpus burahol',3,'kepel.jpg');
/*!40000 ALTER TABLE `tbl_soal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group_id` int(5) NOT NULL,
  `active` int(1) DEFAULT '0',
  `is_admin` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$J7oHbzm3WZ.k2V2HwowBoeBcQ.nNshJHOARVfrITfxfTNRM0SgGY6',12,1,1,'2015-02-11 05:18:57','2015-02-10 22:18:57','yXt2gwml09nLPi2a7X1zZz8ZLdYt55T1trmzw85kY7f2fxTYgSHTUGqI5wHO'),(2,'topan','$2y$10$2DFuomeMGo097Ap8pl2Ze.os7N9RskiD4XwKx.meBoM0LEFJeQ6yK',10,1,0,'2015-02-09 15:13:50','2015-02-09 08:13:50','mgQojkR19oGNFdNxxpkhh0rV5YqxH7la6IubJfTCacevtXJXACVrkWwbQis3'),(4,'fafa','$2y$10$b0/.54V2CBYtfNPgwNTzO.lO0OUtOdWt0YpLubBC8njVI00rFnmg2',12,1,0,'2015-02-11 04:48:14','2015-02-10 21:48:14','WrRQPeMFuyasZK9qJaGTEQ14O7yOpFoHak7hYbvSrc2Vb1WVUAAJchWwMoDI'),(5,'didit','$2y$10$9z7eXQfIRQrVG3BRggiYXeKDgSbEPa7MYliDRVhs0xJ9Jy.KuEwvm',1,0,0,'2015-02-10 22:18:38','2015-02-10 22:18:38',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-25 13:46:10
