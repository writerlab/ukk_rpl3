# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.21)
# Database: ukk_paket_3
# Generation Time: 2019-02-07 06:48:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table detil_pinjam
# ------------------------------------------------------------

CREATE TABLE `detil_pinjam` (
  `id_detil_pinjam` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_inventaris` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_peminjaman` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detil_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table inventaris
# ------------------------------------------------------------

CREATE TABLE `inventaris` (
  `id_inventaris` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `kondisi` varchar(5) DEFAULT NULL,
  `keterangan` text,
  `jumlah` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `tanggal_register` date DEFAULT NULL,
  `id_ruang` int(11) DEFAULT NULL,
  `kode_inventaris` varchar(20) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_inventaris`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table jenis
# ------------------------------------------------------------

CREATE TABLE `jenis` (
  `id_jenis` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(30) DEFAULT NULL,
  `kode_jenis` varchar(20) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table level
# ------------------------------------------------------------

CREATE TABLE `level` (
  `id_level` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pegawai
# ------------------------------------------------------------

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(30) DEFAULT NULL,
  `nip` int(15) DEFAULT NULL,
  `alamat` text,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table peminjaman
# ------------------------------------------------------------

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status_peminjaman` varchar(20) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table petugas
# ------------------------------------------------------------

CREATE TABLE `petugas` (
  `id_petugas` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ruang
# ------------------------------------------------------------

CREATE TABLE `ruang` (
  `id_ruang` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(20) DEFAULT NULL,
  `kode_ruang` varchar(20) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
