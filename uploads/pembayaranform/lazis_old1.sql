-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2018 at 06:33 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awawaw`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kontak` int(11) UNSIGNED DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama_aset` varchar(200) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `id_kelompok` smallint(6) NOT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `tgl_beli` date DEFAULT NULL,
  `tgl_digunakan` date DEFAULT NULL,
  `qty_beli` double NOT NULL DEFAULT '0',
  `qty_disposed` double NOT NULL DEFAULT '0',
  `nilai_satuan` double NOT NULL DEFAULT '0',
  `accum_depr` double NOT NULL DEFAULT '0',
  `nilai_buku` double NOT NULL DEFAULT '0',
  `coa_aset` varchar(50) DEFAULT NULL,
  `coa_akumulasi` varchar(50) DEFAULT NULL,
  `coa_beban` varchar(50) DEFAULT NULL,
  `last_depr` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bid` smallint(6) NOT NULL,
  `bcode` varchar(15) NOT NULL DEFAULT '',
  `btype` smallint(6) NOT NULL DEFAULT '0',
  `bname` varchar(60) NOT NULL DEFAULT '',
  `bnorek` varchar(100) NOT NULL DEFAULT 'N/A',
  `balamat` varchar(60) NOT NULL DEFAULT 'N/A',
  `bank_curr_code` char(3) NOT NULL DEFAULT 'IDR',
  `baktif` tinyint(1) NOT NULL DEFAULT '1',
  `binisial` varchar(5) NOT NULL,
  `bcoa` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bid`, `bcode`, `btype`, `bname`, `bnorek`, `balamat`, `bank_curr_code`, `baktif`, `binisial`, `bcoa`) VALUES
(5, 'KAS', 1, 'Kas ', '', '', 'IDR', 1, 'KAS', '1110101'),
(10, 'MDK', 3, 'Mandiri (Kemanusiaan)', '', '', 'IDR', 1, 'MDK', '1110201');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `dari` date DEFAULT NULL,
  `sampai` date DEFAULT NULL,
  `kd_budget` varchar(25) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `nilai` double NOT NULL DEFAULT '0',
  `realisasi` double NOT NULL DEFAULT '0',
  `tahun` varchar(8) DEFAULT NULL,
  `divisi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cash_flow_detil`
--

CREATE TABLE `cash_flow_detil` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `kd_akun` varchar(35) DEFAULT NULL,
  `pos` varchar(5) DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_flow_detil`
--

INSERT INTO `cash_flow_detil` (`id`, `gid`, `kd_akun`, `pos`, `isactive`) VALUES
(1, 1, '4110101', 'K', 1),
(6, 1, '4310101', 'K', 1),
(7, 1, '4410101', 'K', 1),
(8, 1, '4410102', 'K', 1),
(20, 1, '4210103', 'K', 1),
(21, 1, '4210102', 'K', 1),
(22, 5, '5110101', 'D', 1),
(23, 5, '5110102', 'D', 1),
(24, 5, '5110103', 'D', 1),
(25, 5, '5110104', 'D', 1),
(26, 5, '5110105', 'D', 1),
(27, 5, '5110202', 'D', 1),
(28, 5, '5110301', 'D', 1),
(29, 5, '5110401', 'D', 1),
(30, 5, '5110601', 'D', 1),
(31, 5, '5110501', 'D', 1),
(33, 5, '5220202', 'D', 1),
(34, 5, '5220203', 'D', 1),
(35, 5, '5220204', 'D', 1),
(36, 5, '5210101', 'D', 1),
(37, 5, '5220201', 'D', 1),
(38, 5, '5220205', 'D', 1),
(39, 6, '5220206', 'D', 1),
(40, 7, '5220207', 'D', 1),
(41, 6, '5220208', 'D', 1),
(42, 5, '5220209', 'D', 1),
(43, 5, '5310101', 'D', 1),
(44, 5, '5410101', 'D', 1),
(45, 7, '5510101', 'D', 1),
(46, 7, '5510102', 'D', 1),
(47, 7, '5510103', 'D', 1),
(48, 7, '5510201', 'D', 1),
(49, 7, '5510202', 'D', 1),
(50, 7, '5510203', 'D', 1),
(51, 6, '5520204', 'D', 1),
(53, 7, '5510204', 'D', 1),
(54, 7, '5510205', 'D', 1),
(55, 7, '5510206', 'D', 1),
(56, 7, '5510301', 'D', 1),
(57, 7, '5510302', 'D', 1),
(58, 6, '5520101', 'D', 1),
(59, 6, '5520102', 'D', 1),
(60, 6, '5520104', 'D', 1),
(61, 6, '5520103', 'D', 1),
(62, 6, '5520105', 'D', 1),
(63, 6, '5520106', 'D', 1),
(64, 6, '5520107', 'D', 1),
(65, 6, '5520108', 'D', 1),
(66, 6, '5520201', 'D', 1),
(67, 6, '5520202', 'D', 1),
(68, 6, '5520203', 'D', 1),
(70, 6, '5520205', 'D', 1),
(71, 6, '5520206', 'D', 1),
(72, 6, '5520208', 'D', 1),
(73, 6, '5520207', 'D', 1),
(75, 6, '5520299', 'D', 1),
(76, 6, '5520301', 'D', 1),
(77, 6, '5520401', 'D', 1),
(78, 6, '5520402', 'D', 1),
(79, 6, '5520403', 'D', 1),
(80, 6, '5520404', 'D', 1),
(81, 6, '5520405', 'D', 1),
(82, 6, '5520501', 'D', 1),
(83, 6, '5520502', 'D', 1),
(84, 6, '5520503', 'D', 1),
(85, 6, '5520601', 'D', 1),
(86, 6, '5520602', 'D', 1),
(87, 6, '5520604', 'D', 1),
(88, 6, '5520603', 'D', 1),
(90, 6, '5520605', 'D', 1),
(91, 6, '5520606', 'D', 1),
(92, 6, '5520607', 'D', 1),
(93, 6, '5520608', 'D', 1),
(94, 6, '5520701', 'D', 1),
(95, 6, '5520801', 'D', 1),
(96, 6, '5520802', 'D', 1),
(97, 6, '5520803', 'D', 1),
(98, 6, '5520901', 'D', 1),
(99, 6, '5520902', 'D', 1),
(100, 5, '5210102', 'D', 1),
(101, 5, '5210103', 'D', 1),
(102, 5, '5210104', 'D', 1),
(103, 3, '1130101', 'K', 1),
(104, 4, '1130201', 'K', 1),
(107, 10, '1220101', 'K', 1),
(108, 10, '1220102', 'K', 1),
(109, 10, '1220103', 'K', 1),
(110, 10, '1220104', 'K', 1),
(111, 11, '1220101', 'D', 1),
(112, 11, '1220102', 'D', 1),
(113, 11, '1220103', 'D', 1),
(114, 11, '1220104', 'D', 1),
(115, 12, '1170101', 'K', 1),
(116, 12, '1170201', 'K', 1),
(117, 12, '1210201', 'K', 1),
(118, 13, '1170101', 'D', 1),
(119, 13, '1170201', 'D', 1),
(120, 13, '1210201', 'D', 1),
(121, 1, '4220101', 'K', 1),
(122, 8, '1140101', 'D', 1),
(123, 9, '2210101', 'D', 1),
(124, 1, '4210101', 'K', 1),
(125, 6, '5510303', 'D', 1),
(126, 1, '4510601', 'K', 1),
(127, 1, '4510602', 'K', 1),
(128, 9, '2110101', 'D', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cash_flow_group`
--

CREATE TABLE `cash_flow_group` (
  `id` int(11) NOT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `gid` int(11) NOT NULL,
  `sortid` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_flow_group`
--

INSERT INTO `cash_flow_group` (`id`, `caption`, `gid`, `sortid`, `isactive`) VALUES
(1, 'Penerimaan Dana Terikat', 1, 1, 1),
(2, 'Penerimaan Dana Tidak Terikat', 1, 2, 1),
(3, 'Pengembalian Piutang Karyawan', 1, 4, 1),
(4, 'Pengembalian Piutang Pihak Ketiga', 1, 6, 1),
(5, 'Penyaluran Untuk Program', 1, 3, 1),
(6, 'Penyaluran Untuk Biaya Operasional', 1, 8, 1),
(7, 'Penyaluran SDM dan Personalia', 1, 9, 1),
(8, 'Penyaluran Piutang Karyawan', 1, 5, 1),
(9, 'Penyaluran Piutang Pihak Ketiga', 1, 7, 1),
(10, 'Penambahan Aset Tetap Tidak Terikat', 2, 10, 1),
(11, 'Pengurangan Aset Tetap Tidak Terikat', 2, 11, 1),
(12, 'Penambahan Investasi', 2, 12, 1),
(13, 'Pengurangan Investasi', 2, 13, 1),
(14, 'Penambahan Aset Tetap Terikat', 3, 14, 1),
(15, 'Pengurangan Aset Tetap Terikat', 3, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `did` int(11) NOT NULL,
  `dnama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`did`, `dnama`) VALUES
(1, 'PENDIDIKAN'),
(2, 'OPERASIONAL'),
(3, 'DAKWAH DAN KARITAS'),
(4, 'EKONOMI'),
(5, 'KESEHATAN'),
(6, 'SOSIAL KEMANUSIAAN'),
(7, 'KOORDINASI DAN KERJASAMA');

-- --------------------------------------------------------

--
-- Table structure for table `gaji_detail`
--

CREATE TABLE `gaji_detail` (
  `gdid` int(11) NOT NULL,
  `gdkaryawan` int(11) NOT NULL,
  `gdmasuk` double NOT NULL,
  `gdkeluar` double NOT NULL,
  `gdidu` int(11) NOT NULL,
  `gdgajipokok` double NOT NULL,
  `gduangmakan` double NOT NULL,
  `gdtunjangankhusus` double NOT NULL,
  `gduangtransport` double NOT NULL,
  `gdtunjangankinerja` double NOT NULL,
  `gdtunjanganrumah` double NOT NULL,
  `gdpotonganpinjaman` double NOT NULL,
  `gdpotonganpensiun` double NOT NULL,
  `gdtotalgaji` double NOT NULL,
  `gdlembur` double NOT NULL,
  `gdsanksi` double NOT NULL,
  `gdtotalbayar` double NOT NULL,
  `tanggal` date DEFAULT NULL,
  `refno` varchar(25) NOT NULL,
  `gdthr` double NOT NULL DEFAULT '0',
  `gdtotalpotongan` double NOT NULL DEFAULT '0',
  `gdtotalbersih` double NOT NULL DEFAULT '0',
  `cre_date` date NOT NULL,
  `bulangaji` varchar(5) NOT NULL,
  `tahungaji` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `gaji_detail`
--
DELIMITER $$
CREATE TRIGGER `PINJAMAN` AFTER INSERT ON `gaji_detail` FOR EACH ROW Update gaji_pinjaman Set jumlah_bayar=jumlah_bayar +
NEW.gdpotonganpinjaman 
Where id_kontak=NEW.gdkaryawan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_detail_temp`
--

CREATE TABLE `gaji_detail_temp` (
  `gdid` int(11) NOT NULL,
  `gdkaryawan` int(11) NOT NULL,
  `gdnoref` varchar(25) NOT NULL,
  `gdkeluar` double NOT NULL,
  `gdidu` double NOT NULL,
  `gdgajipokok` double NOT NULL,
  `gduangmakan` double NOT NULL,
  `gdtunjangankhusus` double NOT NULL,
  `gduangtransport` double NOT NULL,
  `gdtunjangankinerja` double NOT NULL,
  `gdtunjanganrumah` double NOT NULL,
  `gdpotonganpinjaman` double NOT NULL,
  `gdpotonganpensiun` double NOT NULL,
  `gdtotalgaji` double NOT NULL,
  `gdtemp_id` int(11) NOT NULL,
  `gdlembur` double NOT NULL,
  `gdsanksi` double NOT NULL,
  `gdtotalbayar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_lembur`
--

CREATE TABLE `gaji_lembur` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kontak` int(11) UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `total` decimal(10,0) NOT NULL,
  `pembulatan_pembayaran` decimal(10,0) NOT NULL,
  `jamkerja` smallint(6) NOT NULL,
  `totalgaji` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_pinjaman`
--

CREATE TABLE `gaji_pinjaman` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kontak` int(11) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah_pinjaman` decimal(10,0) DEFAULT NULL,
  `lama_cicilan` smallint(4) DEFAULT NULL,
  `jumlah_cicilan` decimal(10,0) DEFAULT NULL,
  `jumlah_cicilan_akhir` decimal(10,0) DEFAULT '0',
  `jumlah_bayar` decimal(10,0) NOT NULL DEFAULT '0',
  `cicilanke` smallint(4) NOT NULL,
  `refno` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_sanksi`
--

CREATE TABLE `gaji_sanksi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kontak` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sanksi` varchar(100) DEFAULT NULL,
  `jumlah` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_sifat_lembur`
--

CREATE TABLE `gaji_sifat_lembur` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_gaji_lembur` int(11) UNSIGNED NOT NULL,
  `id_sifat_lembur` smallint(4) UNSIGNED NOT NULL,
  `waktu_lembur` int(11) DEFAULT NULL,
  `nilai_lembur` tinyint(4) DEFAULT NULL,
  `jumlah` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_thr`
--

CREATE TABLE `gaji_thr` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_kontak` int(11) UNSIGNED DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `createdOn` date DEFAULT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_utama`
--

CREATE TABLE `gaji_utama` (
  `guid` int(11) NOT NULL,
  `gutanggal` date NOT NULL,
  `gutahungaji` double NOT NULL,
  `gubulangaji` double NOT NULL,
  `gunoref` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_akun`
--

CREATE TABLE `general_akun` (
  `id` smallint(6) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `kode_akun` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_akun`
--

INSERT INTO `general_akun` (`id`, `deskripsi`, `kode_akun`) VALUES
(1, 'perantara_penerimaan_dana_pengelola', '7110304'),
(2, 'saldo_dana_pengelola', '3150101'),
(3, 'perantara_penyaluran_dana_pengelola', '7110404'),
(4, 'laba_ditahan', '399.01.01'),
(5, 'opening_balance', '399.01.01');

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

CREATE TABLE `grup` (
  `gid` varchar(10) NOT NULL,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `class_id` varchar(3) NOT NULL DEFAULT '',
  `gparent` varchar(10) NOT NULL DEFAULT '-1',
  `gaktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup`
--

INSERT INTO `grup` (`gid`, `gname`, `class_id`, `gparent`, `gaktif`) VALUES
('1', 'ASET', '1', '', 1),
('11', 'ASET LANCAR', '1', '1', 1),
('111', 'KAS DAN BANK', '1', '11', 1),
('11101', 'Kas  ', '1', '111', 1),
('11102', 'Bank', '1', '111', 1),
('112', 'TRANSFER INTERN', '1', '11', 1),
('11201', 'Transfer Intern', '1', '112', 1),
('113', 'PIUTANG', '1', '11', 1),
('11301', 'Piutang Karyawan', '1', '113', 1),
('11302', 'Piutang Pihak Ketiga', '1', '113', 1),
('114', 'UANG MUKA KERJA', '1', '11', 1),
('11401', 'Uang Muka Kerja ', '1', '114', 1),
('115', 'PERSEDIAAN DONASI ', '1', '11', 1),
('11501', 'Persediaan Donasi', '1', '115', 1),
('116', 'BIAYA DIBAYAR DIMUKA', '1', '11', 1),
('11601', 'Asuransi Dibayar Dimuka', '1', '116', 1),
('11602', 'Sewa Dibayar Dimuka', '1', '116', 1),
('117', 'INVESTASI JANGKA PENDEK', '1', '11', 1),
('11701', 'Deposito  < 1 tahun', '1', '117', 1),
('11702', 'Investasi Jangka Pendek Lainnya', '1', '117', 1),
('12', 'ASET TIDAK LANCAR', '1', '1', 1),
('121', 'INVESTASI JANGKA PANJANG', '1', '12', 1),
('12102', 'Investasi Jangka Panjang > 1th', '1', '121', 1),
('122', 'ASET TETAP', '1', '12', 1),
('12201', 'ASET Tetap Tidak Terikat', '1', '122', 1),
('12202', 'ASET Tetap Terikat', '1', '122', 1),
('12203', 'Akumulasi Penyusutan Aset Tetap Tidak Terikat', '1', '122', 1),
('12204', 'Akumulasi Penyusutan Aset Tetap Terikat', '1', '122', 1),
('13', 'ASSET LAINNYA', '1', '12204', 1),
('131', 'Aset Lainnya', '1', '13', 1),
('13101', 'Aset Lainnya', '1', '131', 1),
('19', 'REKENING ANTAR KANTOR ', '1', '1', 1),
('191', 'REKENING ANTAR KANTOR OTOMATIS', '1', '19', 1),
('192', 'REKENING ANTAR KANTOR UMUM', '1', '19', 1),
('19201', 'Rekening Antar Kantor LAZIS PLN Pusat', '1', '192', 1),
('19202', 'Rekening Antar Kantor LAZIS PLN….', '1', '192', 1),
('2', 'LIABILITAS', '2', '', 1),
('21', 'LIABILITAS JANGKA PENDEK', '2', '2', 1),
('211', 'Hutang Penyaluran', '2', '21', 1),
('21101', 'Hutang Penyaluran Intern', '2', '211', 1),
('21102', 'Hutang Penyaluran Antar Unit', '2', '211', 1),
('212', 'Pendapatan Diterima Dimuka', '2', '21', 1),
('213', 'Biaya yang masih Harus Dibayar', '2', '21', 1),
('21301', 'Gaji yang Masih Harus Dibayar', '2', '213', 1),
('21302', 'Sewa yang masih harus dibayar', '2', '213', 1),
('22', 'LIABILITAS JANGKA PANJANG', '2', '2', 1),
('221', 'Hutang Dengan Pihak ketiga >1 tahun', '2', '22', 1),
('22101', 'Hutang Dengan Pihak ketiga >1 tahun', '2', '221', 1),
('3', 'SALDO DANA', '3', '', 1),
('31', 'SALDO DANA BERSIH', '3', '3', 1),
('311', 'SALDO DANA ZAKAT', '3', '31', 1),
('31101', 'SALDO DANA ZAKAT', '3', '311', 1),
('312', 'SALDO DANA INFAQ DAN SHODAQOH', '3', '31', 1),
('31201', 'SALDO DANA INFAQ/SHODAQOH TERIKAT', '3', '312', 1),
('31202', 'SALDO DANA INFAQ/SHODAQOH TIDAK TERIKAT', '3', '312', 1),
('313', 'SALDO DANA WAKAF', '3', '31', 1),
('31301', 'SALDO DANA WAKAF', '3', '313', 1),
('314', 'SALDO DANA FASILITAS UMUM', '3', '31', 1),
('31401', 'SALDO DANA FASILITAS UMUM', '3', '314', 1),
('315', 'SALDO DANA PENGELOLA', '3', '31', 1),
('31501', 'SALDO DANA PENGELOLA', '3', '315', 1),
('4', 'PENERIMAAN DANA', '4', '', 1),
('41', 'PENERIMAAN ZAKAT', '4', '4', 1),
('411', 'PENERIMAAN ZAKAT', '4', '41', 1),
('41101', 'Penerimaan Zakat ', '4', '411', 1),
('42', 'PENERIMAAN INFAK/SHODAQOH', '4', '4', 1),
('421', 'PENERIMAAN INFAK/SHODAQOH TERIKAT', '4', '42', 1),
('42101', 'Penerimaan Infaq/Shodaqoh Terikat', '4', '421', 1),
('422', 'PENERIMAAN INFAK/SHODAQOH TIDAK TERIKAT', '4', '42', 1),
('42201', 'Penerimaan Infaq/ShodaqohTidak Terikat', '4', '422', 1),
('43', 'PENERIMAAN WAKAF', '4', '4', 1),
('431', 'PENERIMAAN WAKAF', '4', '43', 1),
('43101', 'Penerimaan Wakaf', '4', '431', 1),
('44', 'PENERIMAAN DANA FASILITAS UMUM', '4', '4', 1),
('441', 'PENERIMAAN DANA FASILITAS UMUM', '4', '44', 1),
('44101', 'Penerimaan Dana Fasilitas Umum', '4', '441', 1),
('45', 'PENERIMAAN PENGELOLA', '4', '4', 1),
('451', 'PENERIMAAN PENGELOLA', '4', '45', 1),
('45101', 'Penerimaan Usaha', '4', '451', 1),
('45102', 'Penerimaan Pengelola dari Zakat', '4', '451', 1),
('45103', 'Penerimaan Pengelola dari Infak/Shodaqoh -Terikat', '4', '451', 1),
('45104', 'Penerimaan Pengelola dari Wakaf', '4', '451', 1),
('45105', 'Penerimaan Diluar Usaha', '4', '451', 1),
('45106', 'Penerimaan Bagi Hasil', '4', '451', 1),
('45109', 'Pendapatan Lain-Lain', '4', '451', 1),
('47', 'PENERIMAAN YANG AKAN DITERIMA', '4', '4', 1),
('471', 'PENERIMAAN YANG AKAN DITERIMA', '4', '47', 1),
('47101', 'Penerimaan Yang Akan Diterima', '4', '471', 1),
('49', 'PENERIMAAN LAINNYA', '4', '4', 1),
('491', 'PENERIMAAN LAINNYA', '4', '49', 1),
('49101', 'Penerimaan lainnya', '4', '491', 1),
('5', 'PENYALURAN DANA', '5', '', 1),
('51', 'PENYALURAN ZAKAT', '5', '5', 1),
('511', 'PENYALURAN ZAKAT', '5', '51', 1),
('51101', 'Fakir Miskin', '5', '511', 1),
('51102', 'Riqob', '5', '511', 1),
('51103', 'Gharim', '5', '511', 1),
('51104', 'Muallaf', '5', '511', 1),
('51105', 'Sabilillah', '5', '511', 1),
('51106', 'Ibnu Sabil', '5', '511', 1),
('52', 'PENYALURAN INFAK/SHODAQOH ', '5', '5', 1),
('521', 'PENYALURAN INFAK/SHODAQOH ', '5', '52', 1),
('52101', 'PENYALURAN INFAK/SHODAQOH - TERIKAT', '5', '521', 1),
('52202', 'PENYALURAN INFAK/SHODAQOH - TIDAK TERIKAT', '5', '522', 1),
('53', 'PENYALURAN WAKAF', '5', '5', 1),
('531', 'PENYALURAN WAKAF', '5', '53', 1),
('53101', 'PENYALURAN WAKAF', '5', '531', 1),
('54', 'PENYALURAN DANA FASILITAS UMUM', '5', '5', 1),
('541', 'PENYALURAN DANA FASILITAS UMUM', '5', '54', 1),
('54101', 'PENYALURAN DANA FASILITAS UMUM', '5', '541', 1),
('55', 'PENYALURAN PENGELOLA', '5', '5', 1),
('551', 'BIAYA SDM DAN PERSONALIA', '5', '55', 1),
('55101', 'BIAYA SDM', '5', '551', 1),
('55102', 'BIAYA PERSONALIA', '5', '551', 1),
('55103', 'BIAYA PENGEMBANGAN ORGANISASI', '5', '551', 1),
('552', 'BIAYA ADMINISTRASI DAN UMUM', '5', '55', 1),
('55201', 'BIAYA PERLENGKAPAN', '5', '552', 1),
('55202', 'BIAYA KEBUTUHAN RUMAH TANGGA KANTOR', '5', '552', 1),
('55203', 'BIAYA PERJALANAN DINAS', '5', '552', 1),
('55204', 'BIAYA PEMELIHARAAN ASET', '5', '552', 1),
('55205', 'BIAYA TRANSPORTASI', '5', '552', 1),
('55206', 'BIAYA LEGAL DAN PAJAK', '5', '552', 1),
('55207', 'BIAYA ADMINISTRASI BANK', '5', '552', 1),
('55208', 'BIAYA PENYUSUTAN ASET TETAP TIDAK TERIKAT', '5', '552', 1),
('55209', 'BIAYA LAIN-LAIN', '5', '552', 1),
('56', 'PENGURANGAN DANA TERMANFAATKAN', '5', '5', 1),
('561', 'PENGURANGAN DANA TERMANFAATKAN', '5', '56', 1),
('56101', 'PENGURANGAN DANA TERMANFAATKAN', '5', '561', 1),
('7', 'REKENING PERANTARA', '6', '', 1),
('71', 'REKENING PERANTARA', '6', '7', 1),
('711', 'REKENING PERANTARA', '6', '71', 1),
('71101', 'Rekening Perantara Aktiva', '6', '711', 1),
('71102', 'Rekening Perantara Pasiva', '6', '711', 1),
('71103', 'Rekening Perantara Penerimaan', '6', '711', 1),
('71104', 'Rekening Perantara Penyaluran', '6', '711', 1),
('8', 'REKENING PERANTARA VALUTA ASING', '7', '', 1),
('81', 'RPV', '7', '8', 1),
('811', 'RPV', '7', '81', 1),
('81101', 'RPV', '7', '811', 1),
('9999999', 'TEMPORARY ACCOUNT', '8', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `indeks_grafik`
--

CREATE TABLE `indeks_grafik` (
  `id` smallint(6) NOT NULL,
  `sortid` int(11) DEFAULT NULL,
  `rname` varchar(25) DEFAULT NULL,
  `rlink` varchar(60) DEFAULT NULL,
  `rgambar` varchar(100) DEFAULT NULL,
  `raktif` tinyint(4) NOT NULL DEFAULT '1',
  `rmodal` tinyint(4) NOT NULL DEFAULT '0',
  `parentid` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indeks_grafik`
--

INSERT INTO `indeks_grafik` (`id`, `sortid`, `rname`, `rlink`, `rgambar`, `raktif`, `rmodal`, `parentid`) VALUES
(71, 1, 'Penerimaan Dana', 'grafik_penerimaandana_1', 'misc/SLW_Scheda.png', 1, 0, 77),
(72, 2, 'Penerimaan Lain', 'grafik_penerimaanlain_1', 'misc/SLW_Scheda.png', 1, 0, 77),
(73, 3, 'Pengeluaran Dana', 'grafik_pengeluarandana_1', 'misc/SLW_Scheda.png', 1, 0, 78),
(74, 4, 'Pengeluaran Lain', 'grafik_pengeluaranlain_1', 'misc/SLW_Scheda.png', 1, 0, 78),
(75, 1, 'Penerimaan Dana', 'grafik_penerimaandana_antarbulan', 'misc/SLW_Scheda.png', 1, 0, 80),
(76, 2, 'Penerimaan Lain', 'grafik_penerimaanlain_antarbulan', 'misc/SLW_Scheda.png', 1, 0, 80),
(77, 3, 'Pengeluaran Dana', 'grafik_pengeluarandana_antarbulan', 'misc/SLW_Scheda.png', 1, 0, 80),
(78, 4, 'Pengeluaran Lain', 'grafik_pengeluaranlain_antarbulan', 'misc/SLW_Scheda.png', 1, 0, 80),
(79, 1, 'Penerimaan Dana', 'grafik_penerimaandana_antartahun', 'misc/SLW_Scheda.png', 1, 0, 81),
(80, 2, 'Penerimaan Lain', 'grafik_penerimaanlain_antartahun', 'misc/SLW_Scheda.png', 1, 0, 81),
(81, 3, 'Pengeluaran Dana', 'grafik_pengeluarandana_antartahun', 'misc/SLW_Scheda.png', 1, 0, 81),
(82, 4, 'Pengeluaran Lain', 'grafik_pengeluaranlain_antartahun', 'misc/SLW_Scheda.png', 1, 0, 81),
(83, 1, 'Kinerja Amil', 'grafik_kinerja_amil', 'misc/SLW_Scheda.png', 1, 0, 82),
(84, 2, 'Jumlah Lembur', 'grafik_lembur', 'misc/SLW_Scheda.png', 1, 0, 82),
(91, 4, 'Grafik Sanksi', 'grafik_sanksi_amil', 'misc/SLW_Scheda.png', 1, 0, 82),
(90, 3, 'Kehadiran Amil', 'grafik_kehadiran_amil', 'misc/SLW_Scheda.png', 1, 0, 82),
(87, 1, 'Perubahan Dana', 'grafik_perubahandana_1', 'misc/SLW_Scheda.png', 1, 0, 79),
(88, 2, 'Antar Bulan', 'grafik_perubahandana_antarbulan', 'misc/SLW_Scheda.png', 1, 0, 79),
(89, 3, 'Antar Tahun', 'grafik_perubahandana_antartahun', 'misc/SLW_Scheda.png', 1, 0, 79),
(92, 3, 'Pengeluaran Dana ZISWAF', 'grafik_pengeluarandana_ziswaf', 'misc/SLW_Scheda.png', 1, 0, 78),
(93, 5, 'Grafik Absensi', 'grafik_absensi', 'misc/SLW_Scheda.png', 1, 0, 82),
(94, 5, 'Pengeluaran ZISWAF', 'grafik_pengeluarandana_ziswaf_ab', 'misc/SLW_Scheda.png', 1, 0, 80),
(95, 5, 'Pengeluaran ZISWAF', 'grafik_pengeluarandana_ziswaf_at', 'misc/SLW_Scheda.png', 1, 0, 81),
(96, 1, 'Perubahan Dana', 'grafik_perubahandana_1_kons', 'misc/SLW_Scheda.png', 1, 0, 86),
(97, 2, 'Antar Bulan', 'grafik_perubahandana_antarbulan_kons', 'misc/SLW_Scheda.png', 1, 0, 86),
(98, 3, 'Antar Tahun', 'grafik_perubahandana_antartahun_kons', 'misc/SLW_Scheda.png', 1, 0, 86);

-- --------------------------------------------------------

--
-- Table structure for table `indeks_laporan`
--

CREATE TABLE `indeks_laporan` (
  `id` smallint(6) NOT NULL,
  `sortid` int(11) DEFAULT NULL,
  `rname` varchar(25) DEFAULT NULL,
  `rlink` varchar(60) DEFAULT NULL,
  `rgambar` varchar(100) DEFAULT NULL,
  `raktif` tinyint(4) NOT NULL DEFAULT '1',
  `rmodal` tinyint(4) NOT NULL DEFAULT '0',
  `parentid` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indeks_laporan`
--

INSERT INTO `indeks_laporan` (`id`, `sortid`, `rname`, `rlink`, `rgambar`, `raktif`, `rmodal`, `parentid`) VALUES
(19, 2, 'Pengeluaran Lainnya', 'pengeluaran_lain_r', 'misc/SLW_Scheda.png', 1, 0, 64),
(20, 15, 'Jurnal Umum', 'jurnal_umum_r', 'misc/SLW_Scheda.png', 1, 0, 68),
(21, 31, 'Rekapitulasi Jurnal', 'ringkasan_jurnal', 'misc/SLW_Scheda.png', 1, 0, 68),
(18, 2, 'Penerimaan Lainnya', 'penerimaan_lain_r', 'misc/SLW_Scheda.png', 1, 0, 63),
(22, 1, 'Bagan Akun', 'bagan_akun_html', 'misc/SLW_Scheda.png', 1, 1, 69),
(23, 3, 'Rekap Transaksi', 'buku_besar_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(24, 7, 'Posisi Keuangan (Neraca)', 'neraca_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(25, 8, 'Trial Balance', 'trial_balance_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(16, 1, 'Penerimaan Dana', 'penerimaan_dana_r', 'misc/SLW_Scheda.png', 1, 0, 63),
(17, 1, 'Pengeluaran Dana', 'pengeluaran_dana_r', 'misc/SLW_Scheda.png', 1, 0, 64),
(26, 2, 'Daftar Aset', 'daftar_aset_r', 'misc/SLW_Scheda.png', 1, 0, 65),
(27, 16, 'Transfer Intern', 'transfer_intern_r', 'misc/SLW_Scheda.png', 1, 0, 66),
(28, 17, 'Transfer Antar Dana', 'transfer_dana_r', 'misc/SLW_Scheda.png', 1, 0, 66),
(29, 2, 'Arus Kas', 'cash_flow_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(30, 36, 'Pengajuan Dana', 'pengajuan_dana_r', 'misc/SLW_Scheda.png', 1, 0, 64),
(33, 9, 'Perubahan Dana Zakat', 'perubahan_dana_zakat_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(34, 10, 'Perubahan Dana Infaq', 'perubahan_dana_infaq_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(35, 11, 'Perubahan Dana Wakaf', 'perubahan_dana_wakaf_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(36, 12, 'Perubahan Dana Non Halal', 'perubahan_dana_non_halal_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(37, 13, 'Perubahan Dana Pengelola', 'perubahan_dana_pengelola_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(38, 14, 'Rekap Anggaran', 'rekap_anggaran_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(39, 15, 'Detail Anggaran', 'detail_anggaran_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(40, 5, 'Program', 'program_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(41, 4, 'Buku Harian Kas dan Bank', 'rekening_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(42, 3, 'Rekap Bukti Penerimaan', 'bukti_penerimaan_r', 'misc/SLW_Scheda.png', 1, 0, 63),
(43, 16, 'Rekap Realisasi Anggaran', 'rekap_realisasi_anggaran_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(44, 6, 'Kartu Piutang', 'kartu_piutang_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(45, 1, 'Aktifitas LAZIS', 'aktifitas_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(46, 17, 'Perubahan Dana ZIS Waf', 'perubahan_dana_gabungan_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(47, 3, 'Daftar Tunjangan', 'tunjangan_r', 'misc/SLW_Scheda.png', 1, 0, 67),
(48, 1, 'Daftar Gaji', 'daftar_gaji', 'misc/SLW_Scheda.png', 1, 0, 67),
(49, 2, 'Gaji Per Karyawan', 'kartu_gaji', 'misc/SLW_Scheda.png', 1, 0, 67),
(50, 4, 'Tunjangan Per Karyawan', 'kartu_tunjangan', 'misc/SLW_Scheda.png', 1, 0, 67),
(51, 5, 'Daftar Lembur', 'daftar_lembur', 'misc/SLW_Scheda.png', 1, 0, 67),
(52, 6, 'Lembur Per Karyawan', 'kartu_lembur', 'misc/SLW_Scheda.png', 1, 0, 67),
(53, 7, 'Daftar Pinjaman', 'daftar_pinjaman', 'misc/SLW_Scheda.png', 1, 0, 67),
(54, 8, 'Pinjaman Per Karyawan', 'kartu_pinjaman', 'misc/SLW_Scheda.png', 1, 0, 67),
(55, 9, 'Daftar Sanksi', 'daftar_sanksi', 'misc/SLW_Scheda.png', 1, 0, 67),
(56, 10, 'Sanksi Per Karyawan', 'kartu_sanksi', 'misc/SLW_Scheda.png', 1, 0, 67),
(57, 11, 'Daftar RAB', 'daftar_rab', 'misc/SLW_Scheda.png', 1, 0, 67),
(58, 12, 'RAB Perkaryawan', 'kartu_rab', 'misc/SLW_Scheda.png', 1, 0, 67),
(59, 4, 'Buku Besar', 'rekap_transaksi_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(60, 37, 'Pengajuan Dana Lain', 'pengajuan_dana_lain_r', 'misc/SLW_Scheda.png', 1, 0, 64),
(61, 3, 'Pembelian Aset', 'pembelian_aset_r', 'misc/SLW_Scheda.png', 1, 0, 65),
(64, 13, 'Pinjaman Per Karyawan Per', 'kartu_pinjaman_pertanggal', 'misc/SLW_Scheda.png', 1, 0, 67),
(63, 5, 'Penyusutan Aset', 'penyusutan_aset_r', 'misc/SLW_Scheda.png', 1, 0, 65),
(65, 13, 'Pinjaman Per Tanggal', 'kartu_pinjaman_pertanggal_r', 'misc/SLW_Scheda.png', 1, 0, 67),
(70, 4, 'Rekap Penerimaan', 'rekap_penerimaan', 'misc/SLW_Scheda.png', 1, 0, 63),
(71, 1, 'Neraca', 'kos_neraca_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(68, 18, 'Perubahan Dana Zakat 2', 'perubahan_dana_zakat_2_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(69, 19, 'Perubahan Dana Infaq 2', 'perubahan_dana_infaq_2_r', 'misc/SLW_Scheda.png', 1, 0, 62),
(72, 2, 'Arus Kas', 'kos_arus_kas_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(73, 3, 'Perubahan Dana Zakat', 'kos_zakat_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(74, 4, 'Perubahan Dana Infaq', 'kos_infaq_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(75, 5, 'Perubahan Dana Wakaf', 'kos_wakaf_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(76, 5, 'Perubahan Dana Non Halal', 'kos_non_halal_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(77, 6, 'Perubahan Dana Pengelola', 'kos_pengelola_r', 'misc/SLW_Scheda.png', 1, 0, 84),
(78, 7, 'Perubahan Dana ZISWAF', 'kos_ziswaf_r', 'misc/SLW_Scheda.png', 1, 0, 84);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_dana`
--

CREATE TABLE `jenis_dana` (
  `jid` smallint(6) NOT NULL,
  `jkode` varchar(15) DEFAULT NULL,
  `jnama` varchar(35) DEFAULT NULL,
  `jketerangan` mediumtext,
  `persen_pengelola` float(6,2) DEFAULT NULL,
  `jaktif` tinyint(4) NOT NULL DEFAULT '1',
  `coa_penerimaan` varchar(15) DEFAULT NULL,
  `coa_penerimaan_pengelola` varchar(15) DEFAULT NULL,
  `coa_saldo_dana` varchar(15) DEFAULT NULL,
  `coa_perantara_terima` varchar(15) DEFAULT NULL,
  `coa_perantara_keluar` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_dana`
--

INSERT INTO `jenis_dana` (`jid`, `jkode`, `jnama`, `jketerangan`, `persen_pengelola`, `jaktif`, `coa_penerimaan`, `coa_penerimaan_pengelola`, `coa_saldo_dana`, `coa_perantara_terima`, `coa_perantara_keluar`) VALUES
(18, 'SD08', 'Dana Pengelola', '', 0.00, 1, '4510201', '4510401', '3150101', '7110304', '7110404'),
(16, 'SD06', 'Wakaf', '', 12.50, 1, '4310101', '4910101', '3130101', '7110303', '7110403'),
(12, 'SD02', 'Infaq', '', 20.00, 1, '4210101', '4510301', '3120101', '7110302', '7110402'),
(11, 'SD01', 'Zakat', '', 12.50, 1, '4110101', '4510201', '3110101', '7110301', '7110401'),
(19, 'SD10', 'Non Halal', '', 0.00, 1, '4410102', '4510901', '3140101', '7110305', '7110405');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_kontak`
--

CREATE TABLE `kategori_kontak` (
  `kat_id` smallint(6) NOT NULL,
  `kat_name` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_kontak`
--

INSERT INTO `kategori_kontak` (`kat_id`, `kat_name`) VALUES
(1, 'Muzakki'),
(2, 'Mustahiq'),
(3, 'Lainnya'),
(4, 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_mustahiq`
--

CREATE TABLE `kategori_mustahiq` (
  `catid` smallint(6) NOT NULL,
  `catname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_mustahiq`
--

INSERT INTO `kategori_mustahiq` (`catid`, `catname`) VALUES
(3, 'Lembaga'),
(4, 'Perorangan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_muzakki`
--

CREATE TABLE `kategori_muzakki` (
  `catid` smallint(6) NOT NULL,
  `catname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_muzakki`
--

INSERT INTO `kategori_muzakki` (`catid`, `catname`) VALUES
(1, 'Badan'),
(3, 'Lembaga'),
(4, 'Perorangan');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_aset`
--

CREATE TABLE `kelompok_aset` (
  `id` smallint(6) NOT NULL,
  `nama_kelompok` varchar(100) NOT NULL,
  `metode` smallint(6) NOT NULL,
  `umur_aktiva` double NOT NULL,
  `rate` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_aset`
--

INSERT INTO `kelompok_aset` (`id`, `nama_kelompok`, `metode`, `umur_aktiva`, `rate`) VALUES
(1, 'Tanah', 0, 0, 0),
(2, 'Bangunan', 1, 240, 5),
(3, 'Kendaraan', 1, 60, 20),
(5, 'Peralatan Kantor', 1, 60, 20);

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `kid` varchar(3) NOT NULL,
  `kname` varchar(60) NOT NULL DEFAULT '',
  `ktype` tinyint(1) NOT NULL DEFAULT '0',
  `kaktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`kid`, `kname`, `ktype`, `kaktif`) VALUES
('8', 'Rekening Perantara Valas', 7, 1),
('7', 'Rekening Perantara', 7, 1),
('5', 'Penyaluran Dana', 6, 1),
('4', 'Penerimaan Dana', 4, 1),
('1', 'Aset', 1, 1),
('2', 'Liability', 2, 1),
('3', 'Saldo Dana', 3, 1),
('9', 'Akun Sementara', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `kid` int(11) NOT NULL,
  `kkode` varchar(15) DEFAULT NULL,
  `knama` varchar(60) DEFAULT NULL,
  `kalamat` varchar(200) DEFAULT NULL,
  `prop_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `kkecamatan` varchar(50) DEFAULT NULL,
  `kkelurahan` varchar(50) DEFAULT NULL,
  `ktelp` varchar(25) DEFAULT NULL,
  `khandphone` varchar(25) DEFAULT NULL,
  `knpwp` varchar(50) DEFAULT NULL,
  `knpwz` varchar(50) DEFAULT NULL,
  `cat_id` smallint(6) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `tgl_reg` date DEFAULT NULL,
  `maktif` tinyint(4) DEFAULT '1',
  `kimport` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kotamadya`
--

CREATE TABLE `kotamadya` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `prop_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotamadya`
--

INSERT INTO `kotamadya` (`id`, `name`, `prop_id`) VALUES
(1, 'Tangerang', 16),
(2, 'Serang', 16),
(3, 'Lebak', 16),
(4, 'Pandeglang', 16),
(5, 'Cilegon', 16),
(6, 'Tangerang Selatan', 16),
(7, 'Jakarta Barat', 11),
(8, 'Jakarta Pusat', 11),
(9, 'Jakarta Selatan', 11),
(10, 'Jakarta Timur', 11),
(11, 'Jakarta Utara', 11),
(12, 'Bandung', 12),
(13, 'Bandung Barat', 12),
(14, 'Bekasi', 12),
(15, 'Bogor', 12),
(16, 'Ciamis', 12),
(17, 'Cianjur', 12),
(18, 'Cirebon', 12),
(19, 'Garut', 12),
(20, 'Indramayu', 12),
(21, 'Karawang', 12),
(22, 'Kuningan', 12),
(23, 'Majalengka', 12),
(24, 'Purwakarta', 12),
(25, 'Subang', 12),
(26, 'Sukabumi', 12),
(27, 'Sumedang', 12),
(28, 'Tasikmalaya', 12),
(29, 'Banjar', 12),
(30, 'Cimahi', 12),
(31, 'Depok', 12);

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `kd_akun` varchar(15) DEFAULT NULL,
  `posisi` char(2) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` mediumtext,
  `posting` tinyint(4) NOT NULL DEFAULT '0',
  `cre_user` varchar(25) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `kontak_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `id` int(11) NOT NULL,
  `sort_id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `rlink` varchar(150) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `aktif` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id`, `sort_id`, `caption`, `rlink`, `level`, `parent_id`, `aktif`) VALUES
(1, 1, 'Master', NULL, 1, NULL, 1),
(2, 2, 'Transaksi', NULL, 1, NULL, 1),
(3, 5, 'Pemeliharaan', NULL, 1, NULL, 1),
(4, 4, 'Laporan', NULL, 1, NULL, 1),
(5, 1, 'Kode Akun', NULL, 2, 1, 1),
(6, 2, 'Rekening Kas Bank', '?n=bank', 2, 1, 1),
(7, 3, 'Program Lazis', '?n=sub_program', 2, 1, 1),
(8, 4, 'Jenis Dana Lazis', '?n=sumber_dana', 2, 1, 1),
(9, 5, 'Daftar Kontak', '?n=kontak', 2, 1, 1),
(10, 1, 'Klasifikasi Akun', '?n=klasifikasi', 3, 5, 1),
(11, 2, 'Kelompok Akun', '?n=group', 3, 5, 1),
(12, 3, 'Daftar Akun', '?n=rekening', 3, 5, 1),
(13, 4, 'Saldo Awal Akun', '?n=saldo_awal', 3, 5, 1),
(16, 6, 'Kelompok Aset', '?n=fa_group', 2, 1, 1),
(17, 7, 'Umum', NULL, 2, 1, 1),
(18, 1, 'Profil Lembaga', '?n=profil', 3, 17, 1),
(19, 2, 'Daftar Pengguna', '?n=user_a', 3, 17, 1),
(20, 3, 'Level Pengguna', '?n=role', 3, 17, 0),
(21, 1, 'Penerimaan', NULL, 2, 2, 1),
(22, 2, 'Pengeluaran', NULL, 2, 2, 1),
(23, 3, 'Akuntansi', NULL, 2, 2, 1),
(24, 4, 'Transaksi Aset', NULL, 2, 2, 1),
(25, 5, 'Transaksi Lain', NULL, 2, 2, 1),
(26, 1, 'Penerimaan Dana', '?n=penerimaan_dana', 3, 21, 1),
(27, 2, 'Penerimaan Lainnya', '?n=penerimaan_lain', 3, 21, 1),
(28, 1, 'Penyaluran Dana', '?n=penyaluran_dana', 3, 22, 1),
(29, 2, 'Pengeluaran Lain', '?n=pengeluaran_lain', 3, 22, 1),
(30, 1, 'Jurnal Umum', '?n=jurnal', 3, 23, 1),
(31, 2, 'Post Jurnal', '?n=jrn', 3, 23, 1),
(32, 3, 'Unpost Jurnal', '?n=unpost', 3, 23, 1),
(33, 1, 'Daftar Aset', '?n=daftar_aset', 3, 24, 1),
(34, 2, 'Pembelian Aset', '?n=pembelian_aset', 3, 24, 1),
(35, 3, 'Penyusutan Aset', '?n=penyusutan_aset', 3, 24, 1),
(36, 1, 'Transfer Intern', '?n=transfer_intern', 3, 25, 1),
(37, 2, 'Transfer Antar Dana', '?n=transfer_dana', 3, 25, 1),
(38, 1, 'Bersihkan Data Sementara', '?n=cleandata', 2, 3, 1),
(40, 6, 'Master Anggaran', '', 2, 1, 1),
(41, 9, 'Setting Laporan', NULL, 2, 4, 1),
(42, 1, 'Grup Arus Kas', '?n=grp_kas', 3, 41, 1),
(43, 2, 'Detil Arus Kas', '?n=dtl_kas', 3, 41, 1),
(44, 3, 'Import Dari Payroll', '?n=danaimport', 3, 21, 1),
(45, 3, 'Data-data', NULL, 1, NULL, 1),
(46, 1, 'Data Transaksi', '?n=data_data_transaksi', 2, 45, 1),
(47, 9, 'Master Gaji', '?n=master_gaji', 2, 1, 0),
(48, 6, 'Gaji', NULL, 2, 2, 0),
(49, 1, 'Perhitungan Total Gaji', '?n=gaji_utama', 3, 48, 1),
(50, 6, 'Absen', '?n=absen', 1, 0, 0),
(51, 3, 'Tunjangan', '?n=thr', 3, 48, 1),
(52, 4, 'Lembur', '?n=lembur', 3, 48, 1),
(53, 5, 'Pinjaman', '?n=pinjaman', 3, 48, 1),
(55, 7, 'Sanksi', '?n=sanksi', 3, 48, 1),
(56, 2, 'Import Anggaran', '?n=budgetimport', 3, 40, 1),
(58, 1, 'Absen', '?n=absen', 2, 50, 0),
(59, 2, 'Data Absensi', '?n=dataabsen', 2, 50, 0),
(60, 8, 'RAB', '?n=rab', 3, 48, 0),
(61, 1, 'Anggaran', '?n=budget', 3, 40, 1),
(62, 1, 'Laporan Keuangan', '?n=laporan_keuangan', 2, 4, 1),
(63, 2, 'Laporan Penerimaan', '?n=laporan_penerimaan', 2, 4, 1),
(64, 3, 'Laporan Pengeluaran', '?n=laporan_pengeluaran', 2, 4, 1),
(65, 4, 'Laporan Aset', '?n=laporan_asset', 2, 4, 1),
(66, 6, 'Laporan Transaksi Lain', '?n=laporan_lain', 2, 4, 1),
(67, 7, 'Laporan Gaji', '?n=laporan_gaji', 2, 4, 0),
(68, 5, 'Laporan Akuntansi', '?n=laporan_akuntansi', 2, 4, 1),
(69, 8, 'Laporan Master Data', '?n=laporan_master', 2, 4, 1),
(70, 4, 'Hapus Transaksi', '?n=hapustransaksi', 3, 23, 1),
(71, 4, 'Penerimaan Khusus', '?n=penerimaan_dana_audit', 3, 21, 1),
(72, 3, 'Penyaluran Khusus', '?n=penyaluran_dana_audit', 3, 22, 1),
(73, 10, 'Tipe Penerimaan', '?n=tipe_penerimaan', 2, 1, 1),
(74, 11, 'Kode Form Transaksi', '?n=setingan_nama', 2, 1, 1),
(75, 12, 'RAB Pengajuan', '?n=rab_pengajuan', 2, 2, 0),
(76, 7, 'Grafik', NULL, 1, 0, 1),
(77, 1, 'Penerimaan Dana', '?n=grafik_penerimaandana', 2, 76, 1),
(78, 2, 'Pengeluaran Dana', '?n=grafik_pengeluarandana', 2, 76, 1),
(79, 3, 'Perubahan Dana', '?n=grafik_perubahandana', 2, 76, 1),
(80, 4, 'Perbandingan Antar Bulan', '?n=grafik_perbandinganantarbulan', 2, 76, 1),
(81, 5, 'Perbandingan Antar Tahun', '?n=grafik_perbandinganantartahun', 2, 76, 1),
(82, 6, 'Tentang Amil', '?n=grafik_amil', 2, 76, 0),
(83, 13, 'RAB Realisasi', '?n=rab_realisasi', 2, 2, 0),
(84, 10, 'Laporan Konsolidasi', '?n=laporan_konsolidasi', 2, 4, 0),
(86, 7, 'Grafik Konsolidasi', '?n=grafik_konsolidasi', 2, 76, 0),
(87, 12, 'Master Divisi', '?n=divisi', 3, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_gaji`
--

CREATE TABLE `master_gaji` (
  `gid` int(11) NOT NULL,
  `gkontak` int(11) NOT NULL,
  `ggajipokok` double NOT NULL,
  `guangmakan` double NOT NULL,
  `gtunjangankhusus` double NOT NULL,
  `guangtransport` double NOT NULL,
  `gtunjangankinerja` double NOT NULL,
  `gtunjanganrumah` double NOT NULL,
  `gpotonganpinjaman` double NOT NULL,
  `gpotonganpensiun` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memo_jurnal`
--

CREATE TABLE `memo_jurnal` (
  `id` int(11) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `memo_` mediumtext,
  `posting` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mustahiq`
--

CREATE TABLE `mustahiq` (
  `mid` int(11) NOT NULL,
  `mkode` varchar(15) DEFAULT NULL,
  `mnama` varchar(60) DEFAULT NULL,
  `malamat` varchar(200) DEFAULT NULL,
  `prop_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `mkecamatan` varchar(50) DEFAULT NULL,
  `mkelurahan` varchar(50) DEFAULT NULL,
  `mtelp` varchar(25) DEFAULT NULL,
  `mtelp2` varchar(25) DEFAULT NULL,
  `cat_id` smallint(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `tgl_reg` date DEFAULT NULL,
  `maktif` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `muzakki`
--

CREATE TABLE `muzakki` (
  `mid` int(11) NOT NULL,
  `mkode` varchar(15) DEFAULT NULL,
  `mnama` varchar(60) DEFAULT NULL,
  `malamat` varchar(200) DEFAULT NULL,
  `prop_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `mkecamatan` varchar(50) DEFAULT NULL,
  `mkelurahan` varchar(50) DEFAULT NULL,
  `mtelp` varchar(25) DEFAULT NULL,
  `mhandphone` varchar(25) DEFAULT NULL,
  `mnpwp` varchar(50) DEFAULT NULL,
  `mnpwz` varchar(50) DEFAULT NULL,
  `cat_id` smallint(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `tgl_reg` date DEFAULT NULL,
  `maktif` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_dana`
--

CREATE TABLE `penerimaan_dana` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `muzakki` varchar(20) DEFAULT NULL,
  `memo_` mediumtext,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `bank` varchar(25) DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_dana_audit`
--

CREATE TABLE `penerimaan_dana_audit` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `muzakki` varchar(20) DEFAULT NULL,
  `memo_` mediumtext,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `bank` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_dana_audit_detil`
--

CREATE TABLE `penerimaan_dana_audit_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` varchar(200) DEFAULT NULL,
  `sub_program` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_dana_detil`
--

CREATE TABLE `penerimaan_dana_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` varchar(200) DEFAULT NULL,
  `sub_program` int(11) DEFAULT NULL,
  `tipedana` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_dana_export`
--

CREATE TABLE `penerimaan_dana_export` (
  `id` int(11) NOT NULL,
  `muzaki` varchar(20) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kode_akun` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_lain`
--

CREATE TABLE `penerimaan_lain` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `memo_` mediumtext,
  `jenis_dana` varchar(15) DEFAULT NULL,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `muzakki` varchar(20) DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_lain_detil`
--

CREATE TABLE `penerimaan_lain_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `kd_akun` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_lain`
--

CREATE TABLE `pengeluaran_lain` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `kredit_akun` varchar(30) DEFAULT NULL,
  `memo_` mediumtext,
  `jenis_dana` varchar(15) DEFAULT NULL,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `mustahiq` varchar(20) DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_lain_detil`
--

CREATE TABLE `pengeluaran_lain_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `kd_akun` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` varchar(200) DEFAULT NULL,
  `kd_budget` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_aset`
--

CREATE TABLE `penjualan_aset` (
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `nilai_jual` double NOT NULL,
  `memo_` mediumtext,
  `kode_aset` varchar(50) NOT NULL,
  `akun_selisih` varchar(50) NOT NULL,
  `akun_jual` varchar(50) DEFAULT NULL,
  `cre_user` varchar(50) DEFAULT NULL,
  `cre_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyaluran_dana`
--

CREATE TABLE `penyaluran_dana` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `kredit_akun` varchar(30) DEFAULT NULL,
  `mustahiq` varchar(20) DEFAULT NULL,
  `memo_` mediumtext,
  `approved` tinyint(4) DEFAULT '0',
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyaluran_dana_detil`
--

CREATE TABLE `penyaluran_dana_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `sub_program` int(11) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` varchar(200) DEFAULT NULL,
  `kd_budget` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyusutan_aset`
--

CREATE TABLE `penyusutan_aset` (
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `bulan` varchar(5) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `jumlah` double NOT NULL,
  `memo_` mediumtext,
  `kode_aset` varchar(50) NOT NULL,
  `cre_user` varchar(50) DEFAULT NULL,
  `cre_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perolehan_aset`
--

CREATE TABLE `perolehan_aset` (
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `akun` varchar(50) NOT NULL,
  `jumlah` double NOT NULL,
  `memo_` mediumtext,
  `kode_aset` varchar(50) NOT NULL,
  `cre_user` varchar(50) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `kredit_akun` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` smallint(6) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `npwz` varchar(50) DEFAULT NULL,
  `no_landasan_hukum` varchar(50) DEFAULT NULL,
  `tgl_pengesahan` date DEFAULT NULL,
  `pimpinan` varchar(60) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `pnomor` varchar(10) NOT NULL,
  `ptanggalawal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `npwp`, `npwz`, `no_landasan_hukum`, `tgl_pengesahan`, `pimpinan`, `alamat`, `kode_pos`, `telp`, `fax`, `email`, `website`, `pnomor`, `ptanggalawal`) VALUES
(2, 'P3B JAWA BALI', '', '', '', '0000-00-00', '-', '-', '-', '-', '', '-', '-', '02-', '2015-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `pid` smallint(6) NOT NULL,
  `pcode` varchar(5) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `palias` varchar(20) DEFAULT NULL,
  `pcatatan` mediumtext,
  `coa_penyaluran` varchar(25) DEFAULT NULL,
  `paktif` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`pid`, `pcode`, `pname`, `palias`, `pcatatan`, `coa_penyaluran`, `paktif`) VALUES
(24, 'P01', 'Zakat', 'Zakat', 'Penyaluran dari Dana Zakat', NULL, 1),
(25, 'P02', 'Infaq & Shodaqoh Terikat', 'Infak', 'Penyaluran dari Dana Infaq & Shodaqoh Terikat', NULL, 1),
(26, 'P03', 'Infaq & Shodaqoh Tidak Terikat', 'Infak', 'Penyaluran dari Dana Infaq & Shodaqoh Tidak Terikat', NULL, 1),
(27, 'P04', 'Wakaf', 'Wakaf', 'Penyaluran dari Dana Wakaf', NULL, 1),
(28, 'P05', 'Fasilitas Umum', 'Umum', 'Penyaluran dari Dana Fasilitas Umum', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`id`, `name`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Jambi'),
(6, 'Sumatera Selatan'),
(7, 'Bengkulu'),
(8, 'Lampung'),
(9, 'Kepulauan Bangka Belitung'),
(10, 'Kepulauan Riau'),
(11, 'DKI Jakarta'),
(12, 'Jawa Barat'),
(13, 'Jawa Tengah'),
(14, 'DI Yogyakarta'),
(15, 'Jawa Timur'),
(16, 'Banten'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Sulawesi Utara'),
(25, 'Sulawesi Tengah'),
(26, 'Sulawesi Tenggara'),
(27, 'Sulawesi Selatan'),
(28, 'Gorontalo'),
(29, 'Sulawesi Barat'),
(30, 'Maluku'),
(31, 'Maluku Utara'),
(32, 'Papua Barat'),
(33, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `rab`
--

CREATE TABLE `rab` (
  `type_id` smallint(6) DEFAULT '0',
  `type_no` bigint(20) DEFAULT '0',
  `refno` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `memo` mediumtext,
  `cre_date` date DEFAULT NULL,
  `cre_user` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil`
--

CREATE TABLE `rab_detil` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double NOT NULL DEFAULT '0',
  `qty` double NOT NULL DEFAULT '0',
  `satuan` varchar(50) DEFAULT NULL,
  `frekuensi` double NOT NULL DEFAULT '0',
  `catatan` varchar(255) DEFAULT NULL,
  `subtotal` double DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil_pengajuan`
--

CREATE TABLE `rab_detil_pengajuan` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double NOT NULL DEFAULT '0',
  `qty` double NOT NULL DEFAULT '0',
  `satuan` varchar(50) DEFAULT NULL,
  `frekuensi` double NOT NULL DEFAULT '0',
  `catatan` varchar(255) DEFAULT NULL,
  `subtotal` double DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil_pengajuan_temp`
--

CREATE TABLE `rab_detil_pengajuan_temp` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `satuan` varchar(25) DEFAULT NULL,
  `frek` double DEFAULT '0',
  `catatan` varchar(100) DEFAULT NULL,
  `subtotal` double DEFAULT '0',
  `frekuensi` double DEFAULT '0',
  `type_no` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil_realisasi`
--

CREATE TABLE `rab_detil_realisasi` (
  `counter` bigint(20) NOT NULL,
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double NOT NULL DEFAULT '0',
  `qty` double NOT NULL DEFAULT '0',
  `satuan` varchar(50) DEFAULT NULL,
  `frekuensi` double NOT NULL DEFAULT '0',
  `catatan` varchar(255) DEFAULT NULL,
  `subtotal` double DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil_realisasi_temp`
--

CREATE TABLE `rab_detil_realisasi_temp` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `satuan` varchar(25) DEFAULT NULL,
  `frek` double DEFAULT '0',
  `catatan` varchar(100) DEFAULT NULL,
  `subtotal` double DEFAULT '0',
  `frekuensi` double DEFAULT '0',
  `type_no` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_detil_temp`
--

CREATE TABLE `rab_detil_temp` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` double DEFAULT '0',
  `qty` double DEFAULT '0',
  `satuan` varchar(25) DEFAULT NULL,
  `frek` double DEFAULT '0',
  `catatan` varchar(100) DEFAULT NULL,
  `subtotal` double DEFAULT '0',
  `frekuensi` double DEFAULT '0',
  `type_no` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_pengajuan`
--

CREATE TABLE `rab_pengajuan` (
  `type_id` smallint(6) DEFAULT '0',
  `type_no` bigint(20) DEFAULT '0',
  `refno` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `memo` mediumtext,
  `cre_date` date DEFAULT NULL,
  `cre_user` varchar(10) DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rab_realisasi`
--

CREATE TABLE `rab_realisasi` (
  `type_id` smallint(6) DEFAULT '0',
  `type_no` bigint(20) DEFAULT '0',
  `refno` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `memo` mediumtext,
  `cre_date` date DEFAULT NULL,
  `cre_user` varchar(10) DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `acode` varchar(15) NOT NULL DEFAULT '',
  `aname` varchar(60) NOT NULL DEFAULT '',
  `group_id` varchar(10) NOT NULL DEFAULT '0',
  `aaktif` tinyint(1) NOT NULL DEFAULT '1',
  `atipe` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`acode`, `aname`, `group_id`, `aaktif`, `atipe`) VALUES
('1110201', 'Bank ', '11102', 1, ''),
('1110101', 'Kas  ', '11101', 1, ''),
('1120101', 'Transfer Intern', '11201', 1, ''),
('1130101', 'Piutang Karyawan', '11301', 1, ''),
('1130201', 'Piutang Pihak Ketiga', '11302', 1, ''),
('1130202', 'Piutang Penyaluran Intern', '11302', 1, ''),
('1130203', 'Piutang Penyaluran Antar Unit', '11302', 1, ''),
('1140101', 'Uang Muka Kerja ', '11401', 1, ''),
('1150101', 'Persediaan Donasi', '11501', 1, ''),
('1160101', 'Asuransi Dibayar Dimuka', '11601', 1, ''),
('1160201', 'Sewa Dibayar Dimuka', '11602', 1, ''),
('1170101', 'Deposito  < 1 tahun', '117', 1, ''),
('1170201', 'Investasi Jangka Pendek Lainnya', '11702', 1, ''),
('1210201', 'Investasi Jangka Panjang > 1th', '12102', 1, ''),
('1220101', 'Tanah Tidak Terikat', '12201', 1, ''),
('1220102', 'Bangunan Tidak Terikat', '12201', 1, ''),
('1220103', 'Kendaraan Tidak Terikat', '12201', 1, ''),
('1220104', 'Peralatan Tidak Terikat', '12201', 1, ''),
('1220201', 'Tanah Terikat', '12202', 1, ''),
('1220202', 'Bangunan Terikat', '12202', 1, ''),
('1220203', 'Kendaraan Terikat', '12202', 1, ''),
('1220204', 'Peralatan Terikat', '12202', 1, ''),
('1220301', 'Ak. Peny. Bangunan Tidak Terikat', '12203', 1, ''),
('1220302', 'Ak. Peny. Kendaraan Tidak Terikat', '12203', 1, ''),
('1220303', 'Ak. Peny. Peralatan Tidak Terikat', '12203', 1, ''),
('1220401', 'Ak. Peny. Bangunan Terikat', '12204', 1, ''),
('1220402', 'Ak. Peny. Kendaraan Terikat', '12204', 1, ''),
('1220403', 'Ak. Peny. Peralatan Terikat', '12204', 1, ''),
('1310101', 'Aset Lainnya', '13101', 1, ''),
('2110101', 'Hutang Penyaluran Intern', '21101', 1, ''),
('2110201', 'Hutang Penyaluran Antar Unit', '21102', 1, ''),
('2130101', 'Gaji yang Masih Harus Dibayar', '21301', 1, ''),
('2130201', 'Sewa yang masih harus dibayar', '21302', 1, ''),
('2210101', 'Hutang Dengan Pihak ketiga >1 tahun', '22101', 1, ''),
('3110101', 'Saldo Dana Zakat', '31101', 1, ''),
('3120101', 'Saldo Dana Infaq/Shodaqoh Terikat', '31201', 1, ''),
('3120201', 'Saldo Dana Infaq/Shodaqoh - Tidak Terikat', '31202', 1, ''),
('3130101', 'Saldo Dana Wakaf', '31301', 1, ''),
('3140101', 'Saldo Dana Fasilitas Umum', '31401', 1, ''),
('3150101', 'Saldo Dana Pengelola ', '31501', 1, ''),
('4110101', 'Penerimaan Zakat ', '41101', 1, ''),
('4210101', 'Penerimaan Infaq Yatim', '42101', 1, ''),
('4210102', 'Penerimaan Infaq Peduli Bencana', '42101', 1, ''),
('4210103', 'Penerimaan Infaq/Shodaqoh Terikat Lainnya', '42101', 1, ''),
('4220101', 'Penerimaan Infaq/ShodaqohTidak Terikat', '42201', 1, ''),
('4310101', 'Penerimaan Wakaf', '43101', 1, ''),
('4410101', 'Infak Dana Fasilitas Umum', '44101', 1, ''),
('4410102', 'Penerimaan Bunga Bank Konvensional', '44101', 1, ''),
('4510101', 'Penerimaan Usaha', '45102', 1, ''),
('4510301', 'Penerimaan Pengelola dari Infak/Shodaqoh -Terikat', '45103', 1, ''),
('4510302', 'Penerimaan Pengelola dari Infaq/Shodaqoh - Tidak Terikat', '45103', 1, ''),
('4510401', 'Penerimaan Pengelola dari Wakaf', '45104', 1, ''),
('4510501', 'Penerimaan Diluar Usaha', '45105', 1, ''),
('4510601', 'Bagi Hasil Bank Syariah', '45106', 1, ''),
('4510602', 'Bagi Hasil Deposito', '45106', 1, ''),
('4510901', 'Pendapatan Lain-Lain', '45109', 1, ''),
('4710101', 'Penerimaan Yang Akan Diterima', '47101', 1, ''),
('4910101', 'Penerimaan lainnya', '49101', 1, ''),
('5110101', 'Pendidikan', '51101', 1, ''),
('5110102', 'Ekonomi', '51101', 1, ''),
('5110103', 'Kesehatan', '51101', 1, ''),
('5110104', 'Charity', '51101', 1, ''),
('5110105', 'Alokasi pemanfaatan aset kelolaan dari dana zakat', '51101', 1, ''),
('5110202', 'Riqob', '51102', 1, ''),
('5110301', 'Gharim', '51103', 1, ''),
('5110401', 'Muallaf', '51104', 1, ''),
('5110501', 'Sabilillah', '51105', 1, ''),
('5110601', 'Ibnu Sabil', '51106', 1, ''),
('5210101', 'Penyaluran Yatim', '52101', 1, ''),
('5210102', 'Penyaluran Peduli Bencana', '52101', 1, ''),
('5210103', 'Penyaluran Lainnya', '52101', 1, ''),
('5210104', 'Alokasi pemanfaatan aset kelolaan dari dana infaq terikat', '52101', 1, ''),
('5220201', 'Pendidikan', '52202', 1, ''),
('5220202', 'Ekonomi', '52202', 1, ''),
('5220203', 'Sosial Kemanusiaan', '52202', 1, ''),
('5220204', 'Kesehatan', '52202', 1, ''),
('5220205', 'Dakwah', '52202', 1, ''),
('5220206', 'Biaya Pengelolaan Program', '52202', 1, 'Lembaga'),
('5220207', 'Biaya Marketing ', '52202', 1, 'Lembaga'),
('5220208', 'Biaya Lainnya', '52202', 1, 'Lembaga'),
('5220209', 'Alokasi pemanfaatan aset kelolaan dari dana infaq tdk terika', '52202', 1, ''),
('5310101', 'Penyaluran Wakaf', '53101', 1, ''),
('5410101', 'Penyaluran Dana Fasilitas Umum', '54101', 1, ''),
('5510101', 'Biaya Pengembangan SDM', '55101', 1, 'Amil'),
('5510102', 'Biaya Pelatihan/Workshop Karyawan', '55101', 1, 'Amil'),
('5510103', 'Biaya Sosialisasi Internal', '55101', 1, 'Amil'),
('5510201', 'Biaya Gaji & Honor', '55102', 1, 'Amil'),
('5510202', 'Biaya THR', '55102', 1, 'Amil'),
('5510203', 'Biaya Bonus/Insentif Karyawan', '55102', 1, 'Amil'),
('5510204', 'Biaya Tunjangan Cuti Tahunan', '55102', 1, 'Amil'),
('5510205', 'Biaya Jaminan Hari Tua', '55102', 1, 'Amil'),
('5510206', 'Biaya Kesehatan Karyawan', '55102', 1, 'Amil'),
('5510301', 'Biaya Rapat Kerja', '55103', 1, 'Lembaga'),
('5510302', 'Biaya Rapat Koordinasi Nasional', '55103', 1, 'Lembaga'),
('5510303', 'Biaya Jasa Konsultan', '55103', 1, 'Lembaga'),
('5520101', 'Biaya ATK', '55201', 1, 'Lembaga'),
('5520102', 'Biaya Langganan Media Massa', '55201', 1, 'Lembaga'),
('5520103', 'Biaya Materai', '55201', 1, 'Lembaga'),
('5520104', 'Biaya Tinta Printer', '55201', 1, 'Lembaga'),
('5520105', 'Biaya Fotocopy', '55201', 1, 'Lembaga'),
('5520106', 'Biaya Kit Lembaga', '55201', 1, 'Lembaga'),
('5520107', 'Biaya Kirim', '55201', 1, 'Lembaga'),
('5520108', 'Biaya Perlengkapan Kantor Umum', '55201', 1, 'Lembaga'),
('5520201', 'Biaya Keperluan Dapur', '55202', 1, 'Lembaga'),
('5520202', 'Biaya Listrik', '55202', 1, 'Lembaga'),
('5520203', 'Biaya Air/Pam', '55202', 1, 'Lembaga'),
('5520204', 'Biaya Telepon', '55202', 1, 'Lembaga'),
('5520205', 'Biaya Internet', '55202', 1, 'Lembaga'),
('5520206', 'Biaya Sewa Gedung', '55202', 1, 'Lembaga'),
('5520207', 'Biaya Konsumsi', '55202', 1, 'Lembaga'),
('5520208', 'Biaya K3 (Kebersihan, Keamanan dan Ketertiban)', '55202', 1, 'Lembaga'),
('5520299', 'Biaya pembuatan seragam ', '55202', 1, 'Lembaga'),
('5520301', 'Biaya Perjalanan Dinas Non Program', '55203', 1, 'Amil'),
('5520401', 'Biaya Pemeliharaan Gedung', '55204', 1, 'Lembaga'),
('5520402', 'Biaya Pemeliharaan Kendaraan', '55204', 1, 'Lembaga'),
('5520403', 'Biaya Pemeliharaan Peralatan', '55204', 1, 'Lembaga'),
('5520404', 'Biaya Asuransi Gedung', '55204', 1, 'Lembaga'),
('5520405', 'Biaya Asuransi Kendaraan', '55204', 1, 'Lembaga'),
('5520501', 'Biaya Survei (Bensin, Tol, Parkir dll)', '55205', 1, 'Lembaga'),
('5520502', 'Biaya Perpanjangan STNK', '55205', 1, 'Lembaga'),
('5520503', 'Insentif driver LAZIS', '55205', 1, 'Lembaga'),
('5520601', 'Biaya Perijinan', '55206', 1, 'Lembaga'),
('5520602', 'Biaya Pembuatan Akte', '55206', 1, 'Lembaga'),
('5520603', 'Biaya Balik Nama', '55206', 1, 'Lembaga'),
('5520604', 'Biaya Legal Lainnya', '55206', 1, 'Lembaga'),
('5520605', 'Biaya PPh Final', '55206', 1, 'Lembaga'),
('5520606', 'Biaya PPn Final', '55206', 1, 'Lembaga'),
('5520607', 'Biaya Pajak Bumi dan Bangunan (PBB)', '55206', 1, 'Lembaga'),
('5520608', 'Biaya PPh Badan', '55206', 1, 'Lembaga'),
('5520701', 'Biaya Administrasi bank', '55207', 1, 'Lembaga'),
('5520801', 'Biaya Penyusutan Gedung', '55208', 1, 'Lembaga'),
('5520802', 'Biaya Penyusutan Kendaraan', '55208', 1, 'Lembaga'),
('5520803', 'Biaya Penyusutan Peralatan', '55208', 1, 'Lembaga'),
('5520901', 'Laba/Rugi Selisih Kurs', '55209', 1, ''),
('5520902', 'Biaya Hak Pengelola Mitra', '55209', 1, ''),
('5610101', 'Pengurang Dana Termanfaatkan dari zakat', '56101', 1, ''),
('5610102', 'Pengurang Dana Termanfaatkan dari Infak/Shodaqoh-Terikat', '56101', 1, ''),
('5610103', 'Pengurang Dana Termanfaatkan dari Infak/Shodaqoh-Tidak Terik', '56101', 1, ''),
('5610104', 'Pengurang Dana Termanfaatkan dari wakaf', '56101', 1, ''),
('5610105', 'Pengurang Dana Termanfaatkan dari Dana Pengelola', '56101', 1, ''),
('6', '', '6', 1, ''),
('7110101', 'Rekening Perantara Aktiva', '71101', 1, ''),
('7110202', 'Rekening Perantara Pasiva', '71102', 1, ''),
('7110301', 'Rekening Perantara Penerimaan Zakat', '71103', 1, ''),
('7110302', 'Rekening Perantara Penerimaan Infak/Shodaqoh', '71103', 1, ''),
('7110303', 'Rekening Perantara Penerimaan Wakaf', '71103', 1, ''),
('7110304', 'Rekening Perantara Penerimaan Dana Pengelola', '71103', 1, ''),
('7110401', 'Rekening Perantara Penyaluran Zakat', '71104', 1, ''),
('7110402', 'Rekening Perantara Penyaluran Infak/Shodaqoh ', '71104', 1, ''),
('7110403', 'Rekening Perantara Penyaluran Wakaf', '71104', 1, ''),
('7110404', 'Rekening Perantara Penyaluran Dana Pengelola', '71104', 1, ''),
('8110101', 'RPV JPY', '81101', 1, ''),
('8110102', 'RPV SGD', '81101', 1, ''),
('8110103', 'RPV MYR', '81101', 1, ''),
('8110104', 'RPV SAR', '81101', 1, ''),
('8110105', 'RPV AUD', '81101', 1, ''),
('8110106', 'RPV EUR', '81101', 1, ''),
('8110107', 'RPV USD', '81101', 1, ''),
('8110108', 'RPV GBP', '81101', 1, ''),
('8110109', 'RPV NLG', '81101', 1, ''),
('81101010', 'RPV DEM', '81101', 1, ''),
('4510201', 'Penerimaan Pengelola dari Zakat', '45102', 1, ''),
('7110405', 'Rekening Perantara Penyaluran Non Halal', '71104', 1, ''),
('7110305', 'Rekening Perantara Penerimaan Non Halal', '71103', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rid` int(3) NOT NULL,
  `rname` varchar(32) DEFAULT NULL,
  `raktif` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rid`, `rname`, `raktif`) VALUES
(1, 'Sistem Administrator', 1),
(5, 'Supervisi', 1),
(3, 'Operator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saldo_awal`
--

CREATE TABLE `saldo_awal` (
  `id` int(11) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `kd_akun` varchar(25) NOT NULL,
  `per_tgl` date DEFAULT NULL,
  `pos` char(5) DEFAULT NULL,
  `saldo` double DEFAULT '0',
  `bcode` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setingannama`
--

CREATE TABLE `setingannama` (
  `snid` int(11) NOT NULL,
  `snkode` varchar(100) NOT NULL,
  `snketuabidang` varchar(255) NOT NULL,
  `snbendahara` varchar(255) NOT NULL,
  `snketua` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setingannama`
--

INSERT INTO `setingannama` (`snid`, `snkode`, `snketuabidang`, `snbendahara`, `snketua`) VALUES
(3, 'A1.1', 'Sugeng Budiyanto', 'Tri Handayani', ''),
(9, 'B1.1', 'Sugeng Budiyanto', 'Tri Handayani', 'Syamsurijal Munif');

-- --------------------------------------------------------

--
-- Table structure for table `sifat_lembur`
--

CREATE TABLE `sifat_lembur` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `sifat_lembur` char(64) DEFAULT NULL,
  `faktor_pengali` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sifat_lembur`
--

INSERT INTO `sifat_lembur` (`id`, `sifat_lembur`, `faktor_pengali`) VALUES
(1, 'Hari Libur', 1.5),
(2, 'Hari Biasa', 1),
(3, 'Hari Raya', 2.5),
(4, '> Jam 21.00', 1.25);

-- --------------------------------------------------------

--
-- Table structure for table `sub_program`
--

CREATE TABLE `sub_program` (
  `spid` smallint(6) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `spname` varchar(100) DEFAULT NULL,
  `spdeskripsi` mediumtext,
  `coa_penyaluran` varchar(25) DEFAULT NULL,
  `jenis_dana` varchar(25) DEFAULT NULL,
  `coa_zakat` varchar(25) NOT NULL,
  `coa_infaq` varchar(25) NOT NULL,
  `coa_wakaf` varchar(25) NOT NULL,
  `coa_pengelola` varchar(25) NOT NULL,
  `coa_nonhalal` varchar(25) NOT NULL,
  `coa_zakat_2` varchar(25) DEFAULT NULL,
  `coa_infaq_2` varchar(25) DEFAULT NULL,
  `coa_wakaf_2` varchar(25) DEFAULT NULL,
  `coa_pengelola_2` varchar(25) DEFAULT NULL,
  `coa_nonhalal_2` varchar(25) DEFAULT NULL,
  `jenis` varchar(50) NOT NULL,
  `asnaf_zakat` varchar(100) NOT NULL,
  `kelompok` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_program`
--

INSERT INTO `sub_program` (`spid`, `pid`, `spname`, `spdeskripsi`, `coa_penyaluran`, `jenis_dana`, `coa_zakat`, `coa_infaq`, `coa_wakaf`, `coa_pengelola`, `coa_nonhalal`, `coa_zakat_2`, `coa_infaq_2`, `coa_wakaf_2`, `coa_pengelola_2`, `coa_nonhalal_2`, `jenis`, `asnaf_zakat`, `kelompok`, `penerima`) VALUES
(62, 0, 'Bunga Bank', 'Bunga Bank', NULL, NULL, '', '', '', '', '', '', '', '', '', '4410102', '', '', '', 'Kepentingan Umum'),
(58, 0, 'Infaq Shodaqoh', 'Infaq Shodaqoh', NULL, NULL, '', '', '', '', '', '', '4220101', '', '', '', '', '', '', 'Infaq Tidak Terikat'),
(60, 0, 'Wakaf', 'Wakaf', NULL, NULL, '', '', '5310101', '', '', '', '', '4310101', '', '', '', '', '', ''),
(61, 0, 'Fasilitas Umum dan Sosial', 'Fasilitas Umum dan Sosial', NULL, NULL, '', '', '', '', '5410101', '', '', '', '', '4410101', '', '', 'Sosial Kemanusiaan', 'Kepentingan Umum'),
(52, 0, 'Zakat Profesi / Penghasilan', 'Zakat Profesi / Penghasilan', NULL, NULL, '', '', '', '', '', '4110101', '', '', '', '', '', '', '', 'Zakat'),
(53, 0, 'Zakat Maal', 'Zakat Maal', NULL, NULL, '', '', '', '', '', '4110101', '', '', '', '', '', '', '', 'Zakat'),
(54, 0, 'Zakat Fitrah', 'Zakat Fitrah', NULL, NULL, '5110104', '', '', '', '', '4110101', '', '', '', '', '', 'Fakir Miskin', 'Sosial Kemanusiaan', 'Zakat'),
(55, 0, 'Fidyah', 'Fidyah', NULL, NULL, '', '5210103', '', '', '', '', '4210103', '', '', '', '', 'Fakir Miskin', 'Sosial Kemanusiaan', 'Infaq Terikat'),
(56, 0, 'Yatim', 'Yatim', NULL, NULL, '', '5210101', '', '', '', '', '4210101', '', '', '', '', 'Fakir Miskin', 'Sosial Kemanusiaan', 'Infaq Terikat'),
(57, 0, 'Kemanusiaan Umum', 'Kemanusiaan Umum', NULL, NULL, '', '5210102', '', '', '', '', '4210102', '', '', '', '', 'Fakir Miskin', 'Sosial Kemanusiaan', 'Infaq Terikat'),
(64, 0, 'Beasiswa Umum', 'Beasiswa Umum', NULL, NULL, '5110101', '5220201', '', '', '', '', '', '', '', '', '', 'Fakir Miskin', 'Pendidikan', ''),
(65, 0, 'Bantuan Kesehatan', 'Bantuan Kesehatan', NULL, NULL, '5110103', '5220204', '', '', '', '', '4220101', '', '', '', '', 'Fakir Miskin', 'Kesehatan', ''),
(66, 0, 'Bantuan Ekonomi', 'Bantuan Ekonomi', NULL, NULL, '5110102', '5220202', '', '', '', '', '', '', '', '', '', 'Fakir Miskin', 'Ekonomi', ''),
(67, 0, 'Bantuan Riqob', 'Bantuan Riqob', NULL, NULL, '5110202', '', '', '', '', '', '', '', '', '', '', '', 'Sosial Kemanusiaan', ''),
(68, 0, 'Bantuan Gharimin', 'Bantuan Gharimin', NULL, NULL, '5110301', '', '', '', '', '', '', '', '', '', '', 'Gharim', 'Sosial Kemanusiaan', ''),
(69, 0, 'Bantuan Muallaf', 'Bantuan Muallaf', NULL, NULL, '5110401', '', '', '', '', '', '', '', '', '', '', 'Muallaf', 'Dakwah', ''),
(70, 0, 'Bantuan Fisabilillah', 'Bantuan Fisabilillah', NULL, NULL, '5110501', '5220205', '', '', '', '', '', '', '', '', '', 'Fisabilillah', 'Dakwah', ''),
(71, 0, 'Bantuan Ibnu Sabil', 'Bantuan Ibnu Sabil', NULL, NULL, '5110601', '', '', '', '', '', '', '', '', '', '', 'Ibnu Sabil', 'Sosial Kemanusiaan', ''),
(72, 0, 'Bantuan PHBI', 'Bantuan PHBI', NULL, NULL, '5110104', '5220203', '', '', '', '', '', '', '', '', '', 'Fakir Miskin', 'Sosial Kemanusiaan', 'Zakat'),
(73, 0, 'Bagi Hasil Bank', 'Bagi Hasil Bank', NULL, NULL, '', '', '', '', '', '4510601', '4510601', '4510601', '', '', 'Tidak Terikat', '', '', 'Zakat'),
(82, 0, 'Karitas Pendidikan', '', NULL, NULL, '5110101', '5220201', '', '', '', '4110101', '4510302', '', '', '', 'Tidak Terikat', 'Fakir Miskin', 'Pendidikan', ''),
(83, 0, 'Karitas Kesehatan', '', NULL, NULL, '5110103', '5220204', '', '', '', '4110101', '4220101', '', '', '', 'Tidak Terikat', 'Fakir Miskin', 'Kesehatan', ''),
(84, 0, 'Karitas Rumah Ibadah', '', NULL, NULL, '5110501', '5220205', '', '', '', '4110101', '4510302', '', '', '', 'Tidak Terikat', 'Fisabilillah', 'Dakwah', ''),
(85, 0, 'Karitas Dakwah', '', NULL, NULL, '5110501', '5220205', '', '', '', '4110101', '4220101', '', '', '', 'Tidak Terikat', 'Fisabilillah', 'Dakwah', ''),
(86, 0, 'Karitas Ekonomi', '', NULL, NULL, '5110102', '5220202', '', '', '', '4110101', '4220101', '', '', '', 'Tidak Terikat', 'Fakir Miskin', 'Ekonomi', ''),
(87, 0, 'Karitas Sosial Kemanusiaan', '', NULL, NULL, '5110104', '5220203', '', '', '', '4110101', '4220101', '', '', '', 'Tidak Terikat', 'Fakir Miskin', 'Sosial Kemanusiaan', ''),
(91, 0, 'Khitanan Massal', 'Khitanan Massal', NULL, NULL, '5110103', '5220204', '', '', '', '4110101', '4210103', '', '', '', 'Tidak Terikat', 'Fakir Miskin', 'Kesehatan', 'Infaq Tidak Terikat');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `s_id` int(3) NOT NULL,
  `sno` int(11) NOT NULL DEFAULT '0',
  `sip` varchar(15) NOT NULL,
  `sapp` varchar(24) DEFAULT 'Offline',
  `snama` varchar(64) DEFAULT NULL,
  `salamat` varchar(128) DEFAULT NULL,
  `sinfo` varchar(155) DEFAULT NULL,
  `sok` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`s_id`, `sno`, `sip`, `sapp`, `snama`, `salamat`, `sinfo`, `sok`) VALUES
(72, 1, '127.0.0.1', 'Server', NULL, 'PT PLN (PERSERO)', NULL, 1),
(69, 0, '127.0.0.1', 'Server', NULL, NULL, NULL, 0),
(70, 0, '127.0.0.1', 'Server', NULL, NULL, NULL, 0),
(71, 0, '127.0.0.1', 'Server', NULL, NULL, NULL, 0),
(73, 0, '39.211.118.16', 'Server', NULL, NULL, NULL, 0),
(74, 0, '222.124.103.63', 'Server', NULL, NULL, NULL, 0),
(75, 0, '182.0.78.34', 'Server', NULL, NULL, NULL, 0),
(76, 0, '182.6.220.200', 'Server', NULL, NULL, NULL, 0),
(77, 0, '110.138.72.7', 'Server', NULL, NULL, NULL, 0),
(78, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(79, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(80, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(81, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(82, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(83, 0, '118.96.43.116', 'Server', NULL, NULL, NULL, 0),
(84, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(85, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(86, 0, '192.168.2.107', 'Server', NULL, NULL, NULL, 0),
(87, 0, '182.5.253.21', 'Server', NULL, NULL, NULL, 0),
(88, 0, '39.208.193.139', 'Server', NULL, NULL, NULL, 0),
(89, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(90, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(91, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(92, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(93, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(94, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(95, 0, '192.168.120.97,', 'Server', NULL, NULL, NULL, 0),
(96, 0, '192.168.120.41,', 'Server', NULL, NULL, NULL, 0),
(97, 0, '192.168.120.41,', 'Server', NULL, NULL, NULL, 0),
(98, 0, '192.168.120.41,', 'Server', NULL, NULL, NULL, 0),
(99, 0, '192.168.2.108', 'Server', NULL, NULL, NULL, 0),
(100, 0, '114.4.21.144', 'Server', NULL, NULL, NULL, 0),
(101, 0, '120.168.1.131', 'Server', NULL, NULL, NULL, 0),
(102, 0, '103.246.38.196', 'Server', NULL, NULL, NULL, 0),
(103, 0, '119.252.172.252', 'Server', NULL, NULL, NULL, 0),
(104, 0, '39.208.72.133', 'Server', NULL, NULL, NULL, 0),
(105, 0, '39.215.96.102', 'Server', NULL, NULL, NULL, 0),
(106, 0, '114.4.21.205', 'Server', NULL, NULL, NULL, 0),
(107, 0, '182.2.173.74', 'Server', NULL, NULL, NULL, 0),
(108, 0, '66.249.69.218', 'Server', NULL, NULL, NULL, 0),
(109, 0, '114.4.21.196', 'Server', NULL, NULL, NULL, 0),
(110, 0, '69.58.178.57', 'Server', NULL, NULL, NULL, 0),
(111, 0, '71.183.90.10', 'Server', NULL, NULL, NULL, 0),
(112, 0, '114.79.59.100', 'Server', NULL, NULL, NULL, 0),
(113, 0, '67.217.35.30', 'Server', NULL, NULL, NULL, 0),
(114, 0, '38.100.21.67', 'Server', NULL, NULL, NULL, 0),
(115, 0, '202.152.194.230', 'Server', NULL, NULL, NULL, 0),
(116, 0, '66.249.69.204', 'Server', NULL, NULL, NULL, 0),
(117, 0, '202.152.204.69', 'Server', NULL, NULL, NULL, 0),
(118, 0, '120.168.1.220', 'Server', NULL, NULL, NULL, 0),
(119, 0, '120.168.1.44', 'Server', NULL, NULL, NULL, 0),
(120, 0, '202.93.37.95', 'Server', NULL, NULL, NULL, 0),
(121, 0, '114.79.3.253', 'Server', NULL, NULL, NULL, 0),
(122, 0, '120.168.1.112', 'Server', NULL, NULL, NULL, 0),
(123, 0, '157.55.32.94', 'Server', NULL, NULL, NULL, 0),
(124, 0, '46.4.121.36', 'Server', NULL, NULL, NULL, 0),
(125, 0, '202.148.26.202', 'Server', NULL, NULL, NULL, 0),
(126, 0, '118.96.123.81', 'Server', NULL, NULL, NULL, 0),
(127, 0, '125.160.99.110', 'Server', NULL, NULL, NULL, 0),
(128, 0, '157.55.32.56', 'Server', NULL, NULL, NULL, 0),
(129, 0, '110.137.228.28', 'Server', NULL, NULL, NULL, 0),
(130, 0, '120.168.1.111', 'Server', NULL, NULL, NULL, 0),
(131, 0, '110.137.239.171', 'Server', NULL, NULL, NULL, 0),
(132, 0, '120.168.1.3', 'Server', NULL, NULL, NULL, 0),
(133, 0, '125.160.115.193', 'Server', NULL, NULL, NULL, 0),
(134, 0, '110.137.226.255', 'Server', NULL, NULL, NULL, 0),
(135, 0, '66.249.74.188', 'Server', NULL, NULL, NULL, 0),
(136, 0, '125.166.30.181', 'Server', NULL, NULL, NULL, 0),
(137, 0, '110.137.225.60', 'Server', NULL, NULL, NULL, 0),
(138, 0, '222.124.94.196', 'Server', NULL, NULL, NULL, 0),
(139, 0, '110.137.246.248', 'Server', NULL, NULL, NULL, 0),
(140, 0, '125.160.113.104', 'Server', NULL, NULL, NULL, 0),
(141, 0, '110.137.228.167', 'Server', NULL, NULL, NULL, 0),
(142, 0, '110.137.236.1', 'Server', NULL, NULL, NULL, 0),
(143, 0, '110.137.245.246', 'Server', NULL, NULL, NULL, 0),
(144, 0, '110.137.226.43', 'Server', NULL, NULL, NULL, 0),
(145, 0, '125.160.106.166', 'Server', NULL, NULL, NULL, 0),
(146, 0, '110.137.237.49', 'Server', NULL, NULL, NULL, 0),
(147, 0, '110.137.231.110', 'Server', NULL, NULL, NULL, 0),
(148, 0, '125.166.205.128', 'Server', NULL, NULL, NULL, 0),
(149, 0, '110.137.238.88', 'Server', NULL, NULL, NULL, 0),
(150, 0, '110.137.239.191', 'Server', NULL, NULL, NULL, 0),
(151, 0, '125.166.206.138', 'Server', NULL, NULL, NULL, 0),
(152, 0, '222.124.46.104', 'Server', NULL, NULL, NULL, 0),
(153, 0, '110.137.232.199', 'Server', NULL, NULL, NULL, 0),
(154, 0, '114.79.18.147', 'Server', NULL, NULL, NULL, 0),
(155, 0, '204.236.235.245', 'Server', NULL, NULL, NULL, 0),
(156, 0, '125.166.207.203', 'Server', NULL, NULL, NULL, 0),
(157, 0, '112.215.36.171', 'Server', NULL, NULL, NULL, 0),
(158, 0, '110.137.237.211', 'Server', NULL, NULL, NULL, 0),
(159, 0, '112.215.36.183', 'Server', NULL, NULL, NULL, 0),
(160, 0, '125.166.35.123', 'Server', NULL, NULL, NULL, 0),
(161, 0, '125.160.115.209', 'Server', NULL, NULL, NULL, 0),
(162, 0, '110.137.236.215', 'Server', NULL, NULL, NULL, 0),
(163, 0, '66.249.75.159', 'Server', NULL, NULL, NULL, 0),
(164, 0, '222.124.40.49', 'Server', NULL, NULL, NULL, 0),
(165, 0, '61.94.62.144', 'Server', NULL, NULL, NULL, 0),
(166, 0, '216.38.216.101', 'Server', NULL, NULL, NULL, 0),
(167, 0, '125.166.34.30', 'Server', NULL, NULL, NULL, 0),
(168, 0, '125.160.112.10', 'Server', NULL, NULL, NULL, 0),
(169, 0, '112.215.66.54', 'Server', NULL, NULL, NULL, 0),
(170, 0, '61.94.63.155', 'Server', NULL, NULL, NULL, 0),
(171, 0, '125.166.31.47', 'Server', NULL, NULL, NULL, 0),
(172, 0, '125.166.200.44', 'Server', NULL, NULL, NULL, 0),
(173, 0, '222.124.47.98', 'Server', NULL, NULL, NULL, 0),
(174, 0, '114.79.1.105', 'Server', NULL, NULL, NULL, 0),
(175, 0, '114.79.3.148', 'Server', NULL, NULL, NULL, 0),
(176, 0, '76.73.3.18', 'Server', NULL, NULL, NULL, 0),
(177, 0, '120.168.1.46', 'Server', NULL, NULL, NULL, 0),
(178, 0, '114.141.51.10', 'Server', NULL, NULL, NULL, 0),
(179, 0, '110.137.245.22', 'Server', NULL, NULL, NULL, 0),
(180, 0, '114.79.48.156', 'Server', NULL, NULL, NULL, 0),
(181, 0, '125.160.115.203', 'Server', NULL, NULL, NULL, 0),
(182, 0, '125.160.114.152', 'Server', NULL, NULL, NULL, 0),
(183, 0, '114.79.2.146', 'Server', NULL, NULL, NULL, 0),
(184, 0, '125.160.103.63', 'Server', NULL, NULL, NULL, 0),
(185, 0, '110.137.233.12', 'Server', NULL, NULL, NULL, 0),
(186, 0, '222.124.40.156', 'Server', NULL, NULL, NULL, 0),
(187, 0, '125.167.15.102', 'Server', NULL, NULL, NULL, 0),
(188, 0, '110.137.228.118', 'Server', NULL, NULL, NULL, 0),
(189, 0, '110.137.228.108', 'Server', NULL, NULL, NULL, 0),
(190, 0, '125.160.103.108', 'Server', NULL, NULL, NULL, 0),
(191, 0, '114.79.54.216', 'Server', NULL, NULL, NULL, 0),
(192, 0, '110.138.122.173', 'Server', NULL, NULL, NULL, 0),
(193, 0, '110.137.231.146', 'Server', NULL, NULL, NULL, 0),
(194, 0, '202.93.37.83', 'Server', NULL, NULL, NULL, 0),
(195, 0, '120.168.0.17', 'Server', NULL, NULL, NULL, 0),
(196, 0, '110.137.244.35', 'Server', NULL, NULL, NULL, 0),
(197, 0, '110.137.236.130', 'Server', NULL, NULL, NULL, 0),
(198, 0, '110.137.236.105', 'Server', NULL, NULL, NULL, 0),
(199, 0, '125.160.114.95', 'Server', NULL, NULL, NULL, 0),
(200, 0, '120.168.0.161', 'Server', NULL, NULL, NULL, 0),
(201, 0, '120.168.0.108', 'Server', NULL, NULL, NULL, 0),
(202, 0, '125.160.113.79', 'Server', NULL, NULL, NULL, 0),
(203, 0, '114.79.13.194', 'Server', NULL, NULL, NULL, 0),
(204, 0, '202.152.205.89', 'Server', NULL, NULL, NULL, 0),
(205, 0, '110.137.246.118', 'Server', NULL, NULL, NULL, 0),
(206, 0, '125.166.203.180', 'Server', NULL, NULL, NULL, 0),
(207, 0, '202.152.204.106', 'Server', NULL, NULL, NULL, 0),
(208, 0, '110.137.244.150', 'Server', NULL, NULL, NULL, 0),
(209, 0, '202.152.204.129', 'Server', NULL, NULL, NULL, 0),
(210, 0, '202.152.204.87', 'Server', NULL, NULL, NULL, 0),
(211, 0, '120.168.1.83', 'Server', NULL, NULL, NULL, 0),
(212, 0, '202.93.37.88', 'Server', NULL, NULL, NULL, 0),
(213, 0, '114.4.21.145', 'Server', NULL, NULL, NULL, 0),
(214, 0, '222.124.41.170', 'Server', NULL, NULL, NULL, 0),
(215, 0, '125.160.112.160', 'Server', NULL, NULL, NULL, 0),
(216, 0, '202.152.194.158', 'Server', NULL, NULL, NULL, 0),
(217, 0, '110.137.231.141', 'Server', NULL, NULL, NULL, 0),
(218, 0, '110.137.239.250', 'Server', NULL, NULL, NULL, 0),
(219, 0, '61.247.33.136', 'Server', NULL, NULL, NULL, 0),
(220, 0, '125.167.14.51', 'Server', NULL, NULL, NULL, 0),
(221, 0, '120.168.1.167', 'Server', NULL, NULL, NULL, 0),
(222, 0, '125.166.203.108', 'Server', NULL, NULL, NULL, 0),
(223, 0, '125.160.106.173', 'Server', NULL, NULL, NULL, 0),
(224, 0, '125.166.205.150', 'Server', NULL, NULL, NULL, 0),
(225, 0, '110.137.234.57', 'Server', NULL, NULL, NULL, 0),
(226, 0, '61.94.61.181', 'Server', NULL, NULL, NULL, 0),
(227, 0, '110.138.122.82', 'Server', NULL, NULL, NULL, 0),
(228, 0, '110.137.230.249', 'Server', NULL, NULL, NULL, 0),
(229, 0, '202.152.204.173', 'Server', NULL, NULL, NULL, 0),
(230, 0, '202.152.205.219', 'Server', NULL, NULL, NULL, 0),
(231, 0, '110.137.237.195', 'Server', NULL, NULL, NULL, 0),
(232, 0, '120.168.0.232', 'Server', NULL, NULL, NULL, 0),
(233, 0, '114.4.21.152', 'Server', NULL, NULL, NULL, 0),
(234, 0, '110.138.122.131', 'Server', NULL, NULL, NULL, 0),
(235, 0, '110.137.226.108', 'Server', NULL, NULL, NULL, 0),
(236, 0, '222.124.46.118', 'Server', NULL, NULL, NULL, 0),
(237, 0, '202.152.194.200', 'Server', NULL, NULL, NULL, 0),
(238, 0, '65.55.52.118', 'Server', NULL, NULL, NULL, 0),
(239, 0, '125.160.115.197', 'Server', NULL, NULL, NULL, 0),
(240, 0, '61.94.63.104', 'Server', NULL, NULL, NULL, 0),
(241, 0, '36.73.44.83', 'Server', NULL, NULL, NULL, 0),
(242, 0, '125.166.207.184', 'Server', NULL, NULL, NULL, 0),
(243, 0, '61.94.61.3', 'Server', NULL, NULL, NULL, 0),
(244, 0, '110.137.234.22', 'Server', NULL, NULL, NULL, 0),
(245, 0, '50.31.96.8', 'Server', NULL, NULL, NULL, 0),
(246, 0, '95.108.157.251', 'Server', NULL, NULL, NULL, 0),
(247, 0, '61.94.61.99', 'Server', NULL, NULL, NULL, 0),
(248, 0, '206.53.148.25', 'Server', NULL, NULL, NULL, 0),
(249, 0, '180.241.101.232', 'Server', NULL, NULL, NULL, 0),
(250, 0, '38.100.21.64', 'Server', NULL, NULL, NULL, 0),
(251, 0, '157.56.93.216', 'Server', NULL, NULL, NULL, 0),
(252, 0, '222.124.64.60', 'Server', NULL, NULL, NULL, 0),
(253, 0, '110.137.227.83', 'Server', NULL, NULL, NULL, 0),
(254, 0, '120.168.0.235', 'Server', NULL, NULL, NULL, 0),
(255, 0, '120.168.0.202', 'Server', NULL, NULL, NULL, 0),
(256, 0, '125.166.201.62', 'Server', NULL, NULL, NULL, 0),
(257, 0, '157.56.93.210', 'Server', NULL, NULL, NULL, 0),
(258, 0, '202.152.202.92', 'Server', NULL, NULL, NULL, 0),
(259, 0, '202.152.194.169', 'Server', NULL, NULL, NULL, 0),
(260, 0, '202.152.204.11', 'Server', NULL, NULL, NULL, 0),
(261, 0, '125.166.207.176', 'Server', NULL, NULL, NULL, 0),
(262, 0, '71.190.254.55', 'Server', NULL, NULL, NULL, 0),
(263, 0, '110.138.160.67', 'Server', NULL, NULL, NULL, 0),
(264, 0, '69.58.178.59', 'Server', NULL, NULL, NULL, 0),
(265, 0, '157.55.33.31', 'Server', NULL, NULL, NULL, 0),
(266, 0, '202.152.194.243', 'Server', NULL, NULL, NULL, 0),
(267, 0, '65.55.213.58', 'Server', NULL, NULL, NULL, 0),
(268, 0, '65.55.213.41', 'Server', NULL, NULL, NULL, 0),
(269, 0, '39.215.79.187', 'Server', NULL, NULL, NULL, 0),
(270, 0, '222.124.47.4', 'Server', NULL, NULL, NULL, 0),
(271, 0, '110.138.40.178', 'Server', NULL, NULL, NULL, 0),
(272, 0, '202.152.202.66', 'Server', NULL, NULL, NULL, 0),
(273, 0, '110.137.238.68', 'Server', NULL, NULL, NULL, 0),
(274, 0, '125.166.35.35', 'Server', NULL, NULL, NULL, 0),
(275, 0, '125.160.103.27', 'Server', NULL, NULL, NULL, 0),
(276, 0, '222.124.46.249', 'Server', NULL, NULL, NULL, 0),
(277, 0, '110.137.230.175', 'Server', NULL, NULL, NULL, 0),
(278, 0, '110.137.238.120', 'Server', NULL, NULL, NULL, 0),
(279, 0, '125.160.113.17', 'Server', NULL, NULL, NULL, 0),
(280, 0, '125.160.110.240', 'Server', NULL, NULL, NULL, 0),
(281, 0, '103.246.36.213', 'Server', NULL, NULL, NULL, 0),
(282, 0, '39.214.170.155', 'Server', NULL, NULL, NULL, 0),
(283, 0, '110.137.232.26', 'Server', NULL, NULL, NULL, 0),
(284, 0, '110.137.237.135', 'Server', NULL, NULL, NULL, 0),
(285, 0, '125.160.99.158', 'Server', NULL, NULL, NULL, 0),
(286, 0, '125.166.33.118', 'Server', NULL, NULL, NULL, 0),
(287, 0, '125.166.202.97', 'Server', NULL, NULL, NULL, 0),
(288, 0, '110.137.228.171', 'Server', NULL, NULL, NULL, 0),
(289, 0, '125.167.13.2', 'Server', NULL, NULL, NULL, 0),
(290, 0, '125.160.104.195', 'Server', NULL, NULL, NULL, 0),
(291, 0, '125.160.104.203', 'Server', NULL, NULL, NULL, 0),
(292, 0, '110.137.224.220', 'Server', NULL, NULL, NULL, 0),
(293, 0, '125.160.112.31', 'Server', NULL, NULL, NULL, 0),
(294, 0, '125.161.4.98', 'Server', NULL, NULL, NULL, 0),
(295, 0, '120.168.1.244', 'Server', NULL, NULL, NULL, 0),
(296, 0, '120.168.0.131', 'Server', NULL, NULL, NULL, 0),
(297, 0, '157.56.93.222', 'Server', NULL, NULL, NULL, 0),
(298, 0, '125.166.201.114', 'Server', NULL, NULL, NULL, 0),
(299, 0, '125.160.110.181', 'Server', NULL, NULL, NULL, 0),
(300, 0, '69.58.178.58', 'Server', NULL, NULL, NULL, 0),
(301, 0, '110.137.230.25', 'Server', NULL, NULL, NULL, 0),
(302, 0, '120.168.0.245', 'Server', NULL, NULL, NULL, 0),
(303, 0, '180.214.232.88', 'Server', NULL, NULL, NULL, 0),
(304, 0, '114.4.21.198', 'Server', NULL, NULL, NULL, 0),
(305, 0, '110.137.224.138', 'Server', NULL, NULL, NULL, 0),
(306, 0, '110.138.122.209', 'Server', NULL, NULL, NULL, 0),
(307, 0, '110.137.239.5', 'Server', NULL, NULL, NULL, 0),
(308, 0, '125.167.2.247', 'Server', NULL, NULL, NULL, 0),
(309, 0, '222.124.95.207', 'Server', NULL, NULL, NULL, 0),
(310, 0, '222.124.42.230', 'Server', NULL, NULL, NULL, 0),
(311, 0, '110.137.225.14', 'Server', NULL, NULL, NULL, 0),
(312, 0, '125.160.109.42', 'Server', NULL, NULL, NULL, 0),
(313, 0, '202.152.204.80', 'Server', NULL, NULL, NULL, 0),
(314, 0, '202.152.204.72', 'Server', NULL, NULL, NULL, 0),
(315, 0, '202.152.204.76', 'Server', NULL, NULL, NULL, 0),
(316, 0, '125.167.3.136', 'Server', NULL, NULL, NULL, 0),
(317, 0, '202.93.35.102', 'Server', NULL, NULL, NULL, 0),
(318, 0, '120.168.0.114', 'Server', NULL, NULL, NULL, 0),
(319, 0, '120.168.1.1', 'Server', NULL, NULL, NULL, 0),
(320, 0, '202.152.202.109', 'Server', NULL, NULL, NULL, 0),
(321, 0, '202.152.204.211', 'Server', NULL, NULL, NULL, 0),
(322, 0, '192.168.5.147', 'Server', NULL, NULL, NULL, 0),
(323, 0, '120.168.0.31', 'Server', NULL, NULL, NULL, 0),
(324, 0, '125.166.203.210', 'Server', NULL, NULL, NULL, 0),
(325, 0, '110.137.245.211', 'Server', NULL, NULL, NULL, 0),
(326, 0, '192.168.5.200', 'Server', NULL, NULL, NULL, 0),
(327, 0, '114.4.21.199', 'Server', NULL, NULL, NULL, 0),
(328, 0, '69.58.178.56', 'Server', NULL, NULL, NULL, 0),
(329, 0, '157.55.32.229', 'Server', NULL, NULL, NULL, 0),
(330, 0, '114.4.21.208', 'Server', NULL, NULL, NULL, 0),
(331, 0, '114.4.21.209', 'Server', NULL, NULL, NULL, 0),
(332, 0, '120.168.0.149', 'Server', NULL, NULL, NULL, 0),
(333, 0, '120.168.0.8', 'Server', NULL, NULL, NULL, 0),
(334, 0, '120.168.1.31', 'Server', NULL, NULL, NULL, 0),
(335, 0, '114.4.21.197', 'Server', NULL, NULL, NULL, 0),
(336, 0, '114.4.21.200', 'Server', NULL, NULL, NULL, 0),
(337, 0, '114.4.23.72', 'Server', NULL, NULL, NULL, 0),
(338, 0, '114.4.21.207', 'Server', NULL, NULL, NULL, 0),
(339, 0, '114.4.21.204', 'Server', NULL, NULL, NULL, 0),
(340, 0, '114.4.21.212', 'Server', NULL, NULL, NULL, 0),
(341, 0, '114.4.21.210', 'Server', NULL, NULL, NULL, 0),
(342, 0, '120.168.1.18', 'Server', NULL, NULL, NULL, 0),
(343, 0, '38.100.21.69', 'Server', NULL, NULL, NULL, 0),
(344, 0, '41.58.58.67', 'Server', NULL, NULL, NULL, 0),
(345, 0, '157.55.33.15', 'Server', NULL, NULL, NULL, 0),
(346, 0, '114.4.21.206', 'Server', NULL, NULL, NULL, 0),
(347, 0, '114.4.23.18', 'Server', NULL, NULL, NULL, 0),
(348, 0, '180.214.232.29', 'Server', NULL, NULL, NULL, 0),
(349, 0, '180.243.212.59', 'Server', NULL, NULL, NULL, 0),
(350, 0, '125.160.109.131', 'Server', NULL, NULL, NULL, 0),
(351, 0, '125.160.104.68', 'Server', NULL, NULL, NULL, 0),
(352, 0, '66.249.73.130', 'Server', NULL, NULL, NULL, 0),
(353, 0, '125.160.103.139', 'Server', NULL, NULL, NULL, 0),
(354, 0, '125.166.30.168', 'Server', NULL, NULL, NULL, 0),
(355, 0, '157.55.32.105', 'Server', NULL, NULL, NULL, 0),
(356, 0, '125.166.200.9', 'Server', NULL, NULL, NULL, 0),
(357, 0, '199.116.169.254', 'Server', NULL, NULL, NULL, 0),
(358, 0, '120.168.0.43', 'Server', NULL, NULL, NULL, 0),
(359, 0, '180.252.165.79', 'Server', NULL, NULL, NULL, 0),
(360, 0, '27.111.49.209', 'Server', NULL, NULL, NULL, 0),
(361, 0, '110.137.233.50', 'Server', NULL, NULL, NULL, 0),
(362, 0, '120.168.1.198', 'Server', NULL, NULL, NULL, 0),
(363, 0, '114.4.23.85', 'Server', NULL, NULL, NULL, 0),
(364, 0, '157.55.35.104', 'Server', NULL, NULL, NULL, 0),
(365, 0, '222.124.95.45', 'Server', NULL, NULL, NULL, 0),
(366, 0, '125.160.111.212', 'Server', NULL, NULL, NULL, 0),
(367, 0, '110.137.235.184', 'Server', NULL, NULL, NULL, 0),
(368, 0, '125.166.205.28', 'Server', NULL, NULL, NULL, 0),
(369, 0, '125.160.103.81', 'Server', NULL, NULL, NULL, 0),
(370, 0, '120.168.1.216', 'Server', NULL, NULL, NULL, 0),
(371, 0, '120.168.0.224', 'Server', NULL, NULL, NULL, 0),
(372, 0, '125.160.96.229', 'Server', NULL, NULL, NULL, 0),
(373, 0, '120.168.1.6', 'Server', NULL, NULL, NULL, 0),
(374, 0, '114.4.23.26', 'Server', NULL, NULL, NULL, 0),
(375, 0, '192.168.5.109', 'Server', NULL, NULL, NULL, 0),
(376, 0, '192.168.5.58', 'Server', NULL, NULL, NULL, 0),
(377, 0, '120.168.0.195', 'Server', NULL, NULL, NULL, 0),
(378, 0, '192.168.5.107', 'Server', NULL, NULL, NULL, 0),
(379, 0, '125.160.104.233', 'Server', NULL, NULL, NULL, 0),
(380, 0, '114.4.23.40', 'Server', NULL, NULL, NULL, 0),
(381, 0, '120.168.1.208', 'Server', NULL, NULL, NULL, 0),
(382, 0, '157.56.92.141', 'Server', NULL, NULL, NULL, 0),
(383, 0, '120.168.1.5', 'Server', NULL, NULL, NULL, 0),
(384, 0, '120.168.1.5', 'Server', NULL, NULL, NULL, 0),
(385, 0, '202.93.37.89', 'Server', NULL, NULL, NULL, 0),
(386, 0, '157.55.35.100', 'Server', NULL, NULL, NULL, 0),
(387, 0, '120.168.1.124', 'Server', NULL, NULL, NULL, 0),
(388, 0, '120.168.0.157', 'Server', NULL, NULL, NULL, 0),
(389, 0, '120.166.206.15', 'Server', NULL, NULL, NULL, 0),
(390, 0, '120.166.169.156', 'Server', NULL, NULL, NULL, 0),
(391, 0, '120.168.1.89', 'Server', NULL, NULL, NULL, 0),
(392, 0, '120.168.0.112', 'Server', NULL, NULL, NULL, 0),
(393, 0, '110.137.253.157', 'Server', NULL, NULL, NULL, 0),
(394, 0, '120.168.1.84', 'Server', NULL, NULL, NULL, 0),
(395, 0, '192.168.5.141', 'Server', NULL, NULL, NULL, 0),
(396, 0, '120.168.1.148', 'Server', NULL, NULL, NULL, 0),
(397, 0, '120.168.1.61', 'Server', NULL, NULL, NULL, 0),
(398, 0, '192.168.5.170', 'Server', NULL, NULL, NULL, 0),
(399, 0, '114.4.23.8', 'Server', NULL, NULL, NULL, 0),
(400, 0, '120.168.1.33', 'Server', NULL, NULL, NULL, 0),
(401, 0, '120.168.1.65', 'Server', NULL, NULL, NULL, 0),
(402, 0, '120.176.152.119', 'Server', NULL, NULL, NULL, 0),
(403, 0, '120.165.71.108', 'Server', NULL, NULL, NULL, 0),
(404, 0, '120.172.133.151', 'Server', NULL, NULL, NULL, 0),
(405, 0, '120.166.176.89', 'Server', NULL, NULL, NULL, 0),
(406, 0, '120.168.0.231', 'Server', NULL, NULL, NULL, 0),
(407, 0, '120.175.2.87', 'Server', NULL, NULL, NULL, 0),
(408, 0, '114.4.23.89', 'Server', NULL, NULL, NULL, 0),
(409, 0, '120.168.1.21', 'Server', NULL, NULL, NULL, 0),
(410, 0, '120.180.42.127', 'Server', NULL, NULL, NULL, 0),
(411, 0, '120.165.31.166', 'Server', NULL, NULL, NULL, 0),
(412, 0, '120.172.8.249', 'Server', NULL, NULL, NULL, 0),
(413, 0, '120.168.1.228', 'Server', NULL, NULL, NULL, 0),
(414, 0, '120.168.0.128', 'Server', NULL, NULL, NULL, 0),
(415, 0, '114.4.23.43', 'Server', NULL, NULL, NULL, 0),
(416, 0, '120.168.0.167', 'Server', NULL, NULL, NULL, 0),
(417, 0, '114.4.23.119', 'Server', NULL, NULL, NULL, 0),
(418, 0, '120.168.0.138', 'Server', NULL, NULL, NULL, 0),
(419, 0, '120.168.0.199', 'Server', NULL, NULL, NULL, 0),
(420, 0, '120.168.1.237', 'Server', NULL, NULL, NULL, 0),
(421, 0, '120.168.1.186', 'Server', NULL, NULL, NULL, 0),
(422, 0, '120.168.0.206', 'Server', NULL, NULL, NULL, 0),
(423, 0, '114.4.23.33', 'Server', NULL, NULL, NULL, 0),
(424, 0, '120.168.1.113', 'Server', NULL, NULL, NULL, 0),
(425, 0, '120.168.1.159', 'Server', NULL, NULL, NULL, 0),
(426, 0, '114.4.23.113', 'Server', NULL, NULL, NULL, 0),
(427, 0, '120.168.1.75', 'Server', NULL, NULL, NULL, 0),
(428, 0, '120.168.1.87', 'Server', NULL, NULL, NULL, 0),
(429, 0, '114.4.23.106', 'Server', NULL, NULL, NULL, 0),
(430, 0, '120.174.117.132', 'Server', NULL, NULL, NULL, 0),
(431, 0, '120.174.12.65', 'Server', NULL, NULL, NULL, 0),
(432, 0, '120.168.1.4', 'Server', NULL, NULL, NULL, 0),
(433, 0, '120.176.106.94', 'Server', NULL, NULL, NULL, 0),
(434, 0, '114.4.23.121', 'Server', NULL, NULL, NULL, 0),
(435, 0, '114.4.23.117', 'Server', NULL, NULL, NULL, 0),
(436, 0, '114.4.23.86', 'Server', NULL, NULL, NULL, 0),
(437, 0, '120.168.1.177', 'Server', NULL, NULL, NULL, 0),
(438, 0, '180.214.232.92', 'Server', NULL, NULL, NULL, 0),
(439, 0, '202.93.35.107', 'Server', NULL, NULL, NULL, 0),
(440, 0, '114.4.23.36', 'Server', NULL, NULL, NULL, 0),
(441, 0, '114.4.23.70', 'Server', NULL, NULL, NULL, 0),
(442, 0, '103.10.66.68', 'Server', NULL, NULL, NULL, 0),
(443, 0, '120.168.1.192', 'Server', NULL, NULL, NULL, 0),
(444, 0, '120.168.1.107', 'Server', NULL, NULL, NULL, 0),
(445, 0, '114.4.23.84', 'Server', NULL, NULL, NULL, 0),
(446, 0, '120.168.1.45', 'Server', NULL, NULL, NULL, 0),
(447, 0, '120.168.1.59', 'Server', NULL, NULL, NULL, 0),
(448, 0, '114.4.23.124', 'Server', NULL, NULL, NULL, 0),
(449, 0, '120.168.0.156', 'Server', NULL, NULL, NULL, 0),
(450, 0, '114.4.23.60', 'Server', NULL, NULL, NULL, 0),
(451, 0, '120.168.1.217', 'Server', NULL, NULL, NULL, 0),
(452, 0, '66.249.77.214', 'Server', NULL, NULL, NULL, 0),
(453, 0, '114.4.23.42', 'Server', NULL, NULL, NULL, 0),
(454, 0, '120.168.1.252', 'Server', NULL, NULL, NULL, 0),
(455, 0, '120.168.1.26', 'Server', NULL, NULL, NULL, 0),
(456, 0, '120.173.28.112', 'Server', NULL, NULL, NULL, 0),
(457, 0, '120.168.1.136', 'Server', NULL, NULL, NULL, 0),
(458, 0, '114.4.23.24', 'Server', NULL, NULL, NULL, 0),
(459, 0, '120.176.57.70', 'Server', NULL, NULL, NULL, 0),
(460, 0, '202.93.37.84', 'Server', NULL, NULL, NULL, 0),
(461, 0, '157.55.33.38', 'Server', NULL, NULL, NULL, 0),
(462, 0, '114.4.23.118', 'Server', NULL, NULL, NULL, 0),
(463, 0, '120.165.251.154', 'Server', NULL, NULL, NULL, 0),
(464, 0, '114.4.21.215', 'Server', NULL, NULL, NULL, 0),
(465, 0, '120.168.1.166', 'Server', NULL, NULL, NULL, 0),
(466, 0, '120.176.28.134', 'Server', NULL, NULL, NULL, 0),
(467, 0, '192.168.5.137', 'Server', NULL, NULL, NULL, 0),
(468, 0, '120.168.1.98', 'Server', NULL, NULL, NULL, 0),
(469, 0, '120.172.147.130', 'Server', NULL, NULL, NULL, 0),
(470, 0, '114.79.13.102', 'Server', NULL, NULL, NULL, 0),
(471, 0, '120.165.47.66', 'Server', NULL, NULL, NULL, 0),
(472, 0, '120.166.203.197', 'Server', NULL, NULL, NULL, 0),
(473, 0, '120.168.1.30', 'Server', NULL, NULL, NULL, 0),
(474, 0, '120.180.54.140', 'Server', NULL, NULL, NULL, 0),
(475, 0, '114.4.23.9', 'Server', NULL, NULL, NULL, 0),
(476, 0, '120.165.222.179', 'Server', NULL, NULL, NULL, 0),
(477, 0, '120.168.0.41', 'Server', NULL, NULL, NULL, 0),
(478, 0, '125.161.253.6', 'Server', NULL, NULL, NULL, 0),
(479, 0, '114.4.23.34', 'Server', NULL, NULL, NULL, 0),
(480, 0, '120.168.0.19', 'Server', NULL, NULL, NULL, 0),
(481, 0, '120.168.1.193', 'Server', NULL, NULL, NULL, 0),
(482, 0, '120.168.0.205', 'Server', NULL, NULL, NULL, 0),
(483, 0, '114.4.23.96', 'Server', NULL, NULL, NULL, 0),
(484, 0, '120.165.245.28', 'Server', NULL, NULL, NULL, 0),
(485, 0, '120.168.0.248', 'Server', NULL, NULL, NULL, 0),
(486, 0, '120.168.1.253', 'Server', NULL, NULL, NULL, 0),
(487, 0, '120.168.1.139', 'Server', NULL, NULL, NULL, 0),
(488, 0, '180.214.232.79', 'Server', NULL, NULL, NULL, 0),
(489, 0, '120.168.0.62', 'Server', NULL, NULL, NULL, 0),
(490, 0, '120.176.172.76', 'Server', NULL, NULL, NULL, 0),
(491, 0, '120.166.228.43', 'Server', NULL, NULL, NULL, 0),
(492, 0, '120.174.74.144', 'Server', NULL, NULL, NULL, 0),
(493, 0, '66.249.74.138', 'Server', NULL, NULL, NULL, 0),
(494, 0, '114.4.21.201', 'Server', NULL, NULL, NULL, 0),
(495, 0, '120.168.0.39', 'Server', NULL, NULL, NULL, 0),
(496, 0, '120.172.121.201', 'Server', NULL, NULL, NULL, 0),
(497, 0, '120.168.0.49', 'Server', NULL, NULL, NULL, 0),
(498, 0, '120.168.0.88', 'Server', NULL, NULL, NULL, 0),
(499, 0, '202.93.37.92', 'Server', NULL, NULL, NULL, 0),
(500, 0, '116.197.132.45', 'Server', NULL, NULL, NULL, 0),
(501, 0, '202.43.165.22', 'Server', NULL, NULL, NULL, 0),
(502, 0, '66.249.77.26', 'Server', NULL, NULL, NULL, 0),
(503, 0, '120.172.245.130', 'Server', NULL, NULL, NULL, 0),
(504, 0, '120.168.0.147', 'Server', NULL, NULL, NULL, 0),
(505, 0, '120.168.0.116', 'Server', NULL, NULL, NULL, 0),
(506, 0, '120.168.0.126', 'Server', NULL, NULL, NULL, 0),
(507, 0, '120.168.1.184', 'Server', NULL, NULL, NULL, 0),
(508, 0, '120.168.0.244', 'Server', NULL, NULL, NULL, 0),
(509, 0, '120.175.77.249', 'Server', NULL, NULL, NULL, 0),
(510, 0, '114.79.12.173', 'Server', NULL, NULL, NULL, 0),
(511, 0, '114.79.13.89', 'Server', NULL, NULL, NULL, 0),
(512, 0, '114.79.13.63', 'Server', NULL, NULL, NULL, 0),
(513, 0, '114.4.21.156', 'Server', NULL, NULL, NULL, 0),
(514, 0, '101.255.81.58', 'Server', NULL, NULL, NULL, 0),
(515, 0, '120.168.1.179', 'Server', NULL, NULL, NULL, 0),
(516, 0, '114.4.23.102', 'Server', NULL, NULL, NULL, 0),
(517, 0, '120.168.1.49', 'Server', NULL, NULL, NULL, 0),
(518, 0, '202.148.28.186', 'Server', NULL, NULL, NULL, 0),
(519, 0, '114.79.12.229', 'Server', NULL, NULL, NULL, 0),
(520, 0, '120.168.1.231', 'Server', NULL, NULL, NULL, 0),
(521, 0, '120.168.0.50', 'Server', NULL, NULL, NULL, 0),
(522, 0, '120.168.0.191', 'Server', NULL, NULL, NULL, 0),
(523, 0, '114.4.23.7', 'Server', NULL, NULL, NULL, 0),
(524, 0, '114.79.12.94', 'Server', NULL, NULL, NULL, 0),
(525, 0, '114.79.13.9', 'Server', NULL, NULL, NULL, 0),
(526, 0, '114.79.12.250', 'Server', NULL, NULL, NULL, 0),
(527, 0, '114.79.13.149', 'Server', NULL, NULL, NULL, 0),
(528, 0, '114.79.13.190', 'Server', NULL, NULL, NULL, 0),
(529, 0, '114.79.12.89', 'Server', NULL, NULL, NULL, 0),
(530, 0, '114.79.13.23', 'Server', NULL, NULL, NULL, 0),
(531, 0, '114.79.13.101', 'Server', NULL, NULL, NULL, 0),
(532, 0, '120.168.1.55', 'Server', NULL, NULL, NULL, 0),
(533, 0, '114.79.13.67', 'Server', NULL, NULL, NULL, 0),
(534, 0, '114.79.12.41', 'Server', NULL, NULL, NULL, 0),
(535, 0, '114.79.13.199', 'Server', NULL, NULL, NULL, 0),
(536, 0, '120.168.0.77', 'Server', NULL, NULL, NULL, 0),
(537, 0, '114.79.12.146', 'Server', NULL, NULL, NULL, 0),
(538, 0, '120.168.1.56', 'Server', NULL, NULL, NULL, 0),
(539, 0, '120.168.1.204', 'Server', NULL, NULL, NULL, 0),
(540, 0, '114.79.12.151', 'Server', NULL, NULL, NULL, 0),
(541, 0, '114.79.12.32', 'Server', NULL, NULL, NULL, 0),
(542, 0, '120.168.1.60', 'Server', NULL, NULL, NULL, 0),
(543, 0, '120.168.1.196', 'Server', NULL, NULL, NULL, 0),
(544, 0, '39.215.86.31', 'Server', NULL, NULL, NULL, 0),
(545, 0, '120.168.0.133', 'Server', NULL, NULL, NULL, 0),
(546, 0, '120.168.0.186', 'Server', NULL, NULL, NULL, 0),
(547, 0, '114.4.23.68', 'Server', NULL, NULL, NULL, 0),
(548, 0, '202.162.214.171', 'Server', NULL, NULL, NULL, 0),
(549, 0, '120.168.0.150', 'Server', NULL, NULL, NULL, 0),
(550, 0, '120.168.1.36', 'Server', NULL, NULL, NULL, 0),
(551, 0, '114.4.23.19', 'Server', NULL, NULL, NULL, 0),
(552, 0, '114.4.23.11', 'Server', NULL, NULL, NULL, 0),
(553, 0, '202.93.37.80', 'Server', NULL, NULL, NULL, 0),
(554, 0, '192.168.5.65', 'Server', NULL, NULL, NULL, 0),
(555, 0, '114.79.13.132', 'Server', NULL, NULL, NULL, 0),
(556, 0, '114.4.23.71', 'Server', NULL, NULL, NULL, 0),
(557, 0, '202.93.37.86', 'Server', NULL, NULL, NULL, 0),
(558, 0, '114.4.23.109', 'Server', NULL, NULL, NULL, 0),
(559, 0, '120.168.0.38', 'Server', NULL, NULL, NULL, 0),
(560, 0, '114.4.23.0', 'Server', NULL, NULL, NULL, 0),
(561, 0, '120.168.0.141', 'Server', NULL, NULL, NULL, 0),
(562, 0, '192.168.5.10', 'Server', NULL, NULL, NULL, 0),
(563, 0, '120.168.0.236', 'Server', NULL, NULL, NULL, 0),
(564, 0, '120.168.0.16', 'Server', NULL, NULL, NULL, 0),
(565, 0, '120.168.0.221', 'Server', NULL, NULL, NULL, 0),
(566, 0, '120.168.0.173', 'Server', NULL, NULL, NULL, 0),
(567, 0, '120.168.1.173', 'Server', NULL, NULL, NULL, 0),
(568, 0, '120.168.0.169', 'Server', NULL, NULL, NULL, 0),
(569, 0, '120.168.1.23', 'Server', NULL, NULL, NULL, 0),
(570, 0, '114.4.23.88', 'Server', NULL, NULL, NULL, 0),
(571, 0, '114.4.23.95', 'Server', NULL, NULL, NULL, 0),
(572, 0, '114.4.23.111', 'Server', NULL, NULL, NULL, 0),
(573, 0, '114.79.13.169', 'Server', NULL, NULL, NULL, 0),
(574, 0, '120.168.1.191', 'Server', NULL, NULL, NULL, 0),
(575, 0, '114.4.23.97', 'Server', NULL, NULL, NULL, 0),
(576, 0, '120.168.1.207', 'Server', NULL, NULL, NULL, 0),
(577, 0, '192.168.5.117', 'Server', NULL, NULL, NULL, 0),
(578, 0, '120.168.1.134', 'Server', NULL, NULL, NULL, 0),
(579, 0, '120.168.1.135', 'Server', NULL, NULL, NULL, 0),
(580, 0, '120.168.1.190', 'Server', NULL, NULL, NULL, 0),
(581, 0, '192.168.5.57', 'Server', NULL, NULL, NULL, 0),
(582, 0, '120.168.1.165', 'Server', NULL, NULL, NULL, 0),
(583, 0, '120.168.1.54', 'Server', NULL, NULL, NULL, 0),
(584, 0, '120.168.0.226', 'Server', NULL, NULL, NULL, 0),
(585, 0, '120.168.1.74', 'Server', NULL, NULL, NULL, 0),
(586, 0, '192.168.5.18, 1', 'Server', NULL, NULL, NULL, 0),
(587, 0, '192.168.5.18, 1', 'Server', NULL, NULL, NULL, 0),
(588, 0, '192.168.5.18, 1', 'Server', NULL, NULL, NULL, 0),
(589, 0, '192.168.5.18, 1', 'Server', NULL, NULL, NULL, 0),
(590, 0, '192.168.5.18, 1', 'Server', NULL, NULL, NULL, 0),
(591, 0, '114.4.23.31', 'Server', NULL, NULL, NULL, 0),
(592, 0, '114.4.23.82', 'Server', NULL, NULL, NULL, 0),
(593, 0, '120.168.1.154', 'Server', NULL, NULL, NULL, 0),
(594, 0, '120.168.0.13', 'Server', NULL, NULL, NULL, 0),
(595, 0, '192.168.5.254, ', 'Server', NULL, NULL, NULL, 0),
(596, 0, '192.168.5.254, ', 'Server', NULL, NULL, NULL, 0),
(597, 0, '192.168.5.254, ', 'Server', NULL, NULL, NULL, 0),
(598, 0, '192.168.5.254, ', 'Server', NULL, NULL, NULL, 0),
(599, 0, '192.168.5.254, ', 'Server', NULL, NULL, NULL, 0),
(600, 0, '114.4.23.76', 'Server', NULL, NULL, NULL, 0),
(601, 0, '120.168.0.79', 'Server', NULL, NULL, NULL, 0),
(602, 0, '114.4.23.112', 'Server', NULL, NULL, NULL, 0),
(603, 0, '114.4.23.35', 'Server', NULL, NULL, NULL, 0),
(604, 0, '120.168.0.37', 'Server', NULL, NULL, NULL, 0),
(605, 0, '114.4.23.54', 'Server', NULL, NULL, NULL, 0),
(606, 0, '114.4.23.100', 'Server', NULL, NULL, NULL, 0),
(607, 0, '120.168.1.215', 'Server', NULL, NULL, NULL, 0),
(608, 0, '120.168.1.187', 'Server', NULL, NULL, NULL, 0),
(609, 0, '114.4.23.25', 'Server', NULL, NULL, NULL, 0),
(610, 0, '120.168.1.140', 'Server', NULL, NULL, NULL, 0),
(611, 0, '114.4.23.81', 'Server', NULL, NULL, NULL, 0),
(612, 0, '114.4.23.120', 'Server', NULL, NULL, NULL, 0),
(613, 0, '120.168.0.69', 'Server', NULL, NULL, NULL, 0),
(614, 0, '120.168.1.104', 'Server', NULL, NULL, NULL, 0),
(615, 0, '120.168.1.203', 'Server', NULL, NULL, NULL, 0),
(616, 0, '120.168.0.35', 'Server', NULL, NULL, NULL, 0),
(617, 0, '120.168.0.71', 'Server', NULL, NULL, NULL, 0),
(618, 0, '120.168.0.56', 'Server', NULL, NULL, NULL, 0),
(619, 0, '120.168.0.219', 'Server', NULL, NULL, NULL, 0),
(620, 0, '120.168.1.201', 'Server', NULL, NULL, NULL, 0),
(621, 0, '114.4.23.1', 'Server', NULL, NULL, NULL, 0),
(622, 0, '120.168.0.95', 'Server', NULL, NULL, NULL, 0),
(623, 0, '120.168.0.109', 'Server', NULL, NULL, NULL, 0),
(624, 0, '27.111.50.173', 'Server', NULL, NULL, NULL, 0),
(625, 0, '120.168.1.40', 'Server', NULL, NULL, NULL, 0),
(626, 0, '120.168.1.233', 'Server', NULL, NULL, NULL, 0),
(627, 0, '36.69.238.167', 'Server', NULL, NULL, NULL, 0),
(628, 0, '114.4.23.110', 'Server', NULL, NULL, NULL, 0),
(629, 0, '114.4.23.2', 'Server', NULL, NULL, NULL, 0),
(630, 0, '114.4.23.30', 'Server', NULL, NULL, NULL, 0),
(631, 0, '120.168.0.103', 'Server', NULL, NULL, NULL, 0),
(632, 0, '120.168.0.105', 'Server', NULL, NULL, NULL, 0),
(633, 0, '114.4.23.49', 'Server', NULL, NULL, NULL, 0),
(634, 0, '120.168.1.171', 'Server', NULL, NULL, NULL, 0),
(635, 0, '202.93.37.87', 'Server', NULL, NULL, NULL, 0),
(636, 0, '114.4.23.59', 'Server', NULL, NULL, NULL, 0),
(637, 0, '114.4.23.98', 'Server', NULL, NULL, NULL, 0),
(638, 0, '120.168.0.3', 'Server', NULL, NULL, NULL, 0),
(639, 0, '120.168.1.236', 'Server', NULL, NULL, NULL, 0),
(640, 0, '114.4.23.52', 'Server', NULL, NULL, NULL, 0),
(641, 0, '120.168.1.189', 'Server', NULL, NULL, NULL, 0),
(642, 0, '114.4.21.158', 'Server', NULL, NULL, NULL, 0),
(643, 0, '120.168.0.21', 'Server', NULL, NULL, NULL, 0),
(644, 0, '120.168.1.245', 'Server', NULL, NULL, NULL, 0),
(645, 0, '103.246.39.213', 'Server', NULL, NULL, NULL, 0),
(646, 0, '114.4.23.39', 'Server', NULL, NULL, NULL, 0),
(647, 0, '120.168.0.130', 'Server', NULL, NULL, NULL, 0),
(648, 0, '114.4.23.46', 'Server', NULL, NULL, NULL, 0),
(649, 0, '114.79.55.13', 'Server', NULL, NULL, NULL, 0),
(650, 0, '114.79.53.55', 'Server', NULL, NULL, NULL, 0),
(651, 0, '120.168.1.76', 'Server', NULL, NULL, NULL, 0),
(652, 0, '202.93.37.82', 'Server', NULL, NULL, NULL, 0),
(653, 0, '120.168.1.34', 'Server', NULL, NULL, NULL, 0),
(654, 0, '120.168.1.100', 'Server', NULL, NULL, NULL, 0),
(655, 0, '114.4.23.20', 'Server', NULL, NULL, NULL, 0),
(656, 0, '120.168.1.214', 'Server', NULL, NULL, NULL, 0),
(657, 0, '120.168.1.246', 'Server', NULL, NULL, NULL, 0),
(658, 0, '120.168.0.118', 'Server', NULL, NULL, NULL, 0),
(659, 0, '114.4.21.202', 'Server', NULL, NULL, NULL, 0),
(660, 0, '114.4.21.214', 'Server', NULL, NULL, NULL, 0),
(661, 0, '120.174.21.62', 'Server', NULL, NULL, NULL, 0),
(662, 0, '120.172.144.211', 'Server', NULL, NULL, NULL, 0),
(663, 0, '114.4.23.12', 'Server', NULL, NULL, NULL, 0),
(664, 0, '112.215.66.71', 'Server', NULL, NULL, NULL, 0),
(665, 0, '112.215.66.79', 'Server', NULL, NULL, NULL, 0),
(666, 0, '112.215.66.68', 'Server', NULL, NULL, NULL, 0),
(667, 0, '112.215.66.77', 'Server', NULL, NULL, NULL, 0),
(668, 0, '112.215.66.69', 'Server', NULL, NULL, NULL, 0),
(669, 0, '112.215.66.78', 'Server', NULL, NULL, NULL, 0),
(670, 0, '112.215.66.75', 'Server', NULL, NULL, NULL, 0),
(671, 0, '112.215.66.72', 'Server', NULL, NULL, NULL, 0),
(672, 0, '112.215.66.73', 'Server', NULL, NULL, NULL, 0),
(673, 0, '112.215.66.76', 'Server', NULL, NULL, NULL, 0),
(674, 0, '112.215.66.70', 'Server', NULL, NULL, NULL, 0),
(675, 0, '112.215.66.81', 'Server', NULL, NULL, NULL, 0),
(676, 0, '112.215.36.143', 'Server', NULL, NULL, NULL, 0),
(677, 0, '112.215.36.144', 'Server', NULL, NULL, NULL, 0),
(678, 0, '112.215.36.145', 'Server', NULL, NULL, NULL, 0),
(679, 0, '112.215.36.142', 'Server', NULL, NULL, NULL, 0),
(680, 0, '199.19.249.196', 'Server', NULL, NULL, NULL, 0),
(681, 0, '114.4.23.83', 'Server', NULL, NULL, NULL, 0),
(682, 0, '120.168.0.58', 'Server', NULL, NULL, NULL, 0),
(683, 0, '114.79.12.238', 'Server', NULL, NULL, NULL, 0),
(684, 0, '36.78.169.191', 'Server', NULL, NULL, NULL, 0),
(685, 0, '112.215.66.74', 'Server', NULL, NULL, NULL, 0),
(686, 0, '120.168.0.120', 'Server', NULL, NULL, NULL, 0),
(687, 0, '114.4.21.154', 'Server', NULL, NULL, NULL, 0),
(688, 0, '114.4.23.94', 'Server', NULL, NULL, NULL, 0),
(689, 0, '120.168.1.90', 'Server', NULL, NULL, NULL, 0),
(690, 0, '120.168.1.239', 'Server', NULL, NULL, NULL, 0),
(691, 0, '120.161.1.98', 'Server', NULL, NULL, NULL, 0),
(692, 0, '120.168.1.141', 'Server', NULL, NULL, NULL, 0),
(693, 0, '120.168.0.87', 'Server', NULL, NULL, NULL, 0),
(694, 0, '120.168.0.52', 'Server', NULL, NULL, NULL, 0),
(695, 0, '202.93.37.90', 'Server', NULL, NULL, NULL, 0),
(696, 0, '120.168.0.162', 'Server', NULL, NULL, NULL, 0),
(697, 0, '120.161.1.34', 'Server', NULL, NULL, NULL, 0),
(698, 0, '120.168.0.160', 'Server', NULL, NULL, NULL, 0),
(699, 0, '120.161.1.110', 'Server', NULL, NULL, NULL, 0),
(700, 0, '120.161.1.79', 'Server', NULL, NULL, NULL, 0),
(701, 0, '120.161.1.96', 'Server', NULL, NULL, NULL, 0),
(702, 0, '120.168.1.20', 'Server', NULL, NULL, NULL, 0),
(703, 0, '120.161.1.146', 'Server', NULL, NULL, NULL, 0),
(704, 0, '120.161.1.147', 'Server', NULL, NULL, NULL, 0),
(705, 0, '120.168.1.145', 'Server', NULL, NULL, NULL, 0),
(706, 0, '120.161.1.236', 'Server', NULL, NULL, NULL, 0),
(707, 0, '120.161.1.91', 'Server', NULL, NULL, NULL, 0),
(708, 0, '120.168.0.1', 'Server', NULL, NULL, NULL, 0),
(709, 0, '120.168.0.134', 'Server', NULL, NULL, NULL, 0),
(710, 0, '120.161.1.186', 'Server', NULL, NULL, NULL, 0),
(711, 0, '120.161.1.125', 'Server', NULL, NULL, NULL, 0),
(712, 0, '110.138.69.50', 'Server', NULL, NULL, NULL, 0),
(713, 0, '110.138.69.84', 'Server', NULL, NULL, NULL, 0),
(714, 0, '114.4.23.62', 'Server', NULL, NULL, NULL, 0),
(715, 0, '125.166.201.112', 'Server', NULL, NULL, NULL, 0),
(716, 0, '120.168.1.93', 'Server', NULL, NULL, NULL, 0),
(717, 0, '114.4.23.125', 'Server', NULL, NULL, NULL, 0),
(718, 0, '120.161.1.54', 'Server', NULL, NULL, NULL, 0),
(719, 0, '8.28.16.254', 'Server', NULL, NULL, NULL, 0),
(720, 0, '120.181.68.184', 'Server', NULL, NULL, NULL, 0),
(721, 0, '120.168.0.249', 'Server', NULL, NULL, NULL, 0),
(722, 0, '120.176.10.141', 'Server', NULL, NULL, NULL, 0),
(723, 0, '120.177.211.243', 'Server', NULL, NULL, NULL, 0),
(724, 0, '120.175.29.234', 'Server', NULL, NULL, NULL, 0),
(725, 0, '120.174.232.78', 'Server', NULL, NULL, NULL, 0),
(726, 0, '120.174.39.253', 'Server', NULL, NULL, NULL, 0),
(727, 0, '120.180.38.134', 'Server', NULL, NULL, NULL, 0),
(728, 0, '120.172.29.100', 'Server', NULL, NULL, NULL, 0),
(729, 0, '120.176.156.240', 'Server', NULL, NULL, NULL, 0),
(730, 0, '120.174.41.4', 'Server', NULL, NULL, NULL, 0),
(731, 0, '120.180.19.2', 'Server', NULL, NULL, NULL, 0),
(732, 0, '202.62.17.35', 'Server', NULL, NULL, NULL, 0),
(733, 0, '120.161.1.172', 'Server', NULL, NULL, NULL, 0),
(734, 0, '202.62.16.215', 'Server', NULL, NULL, NULL, 0),
(735, 0, '114.4.21.155', 'Server', NULL, NULL, NULL, 0),
(736, 0, '202.62.16.191', 'Server', NULL, NULL, NULL, 0),
(737, 0, '120.161.0.37', 'Server', NULL, NULL, NULL, 0),
(738, 0, '120.161.1.77', 'Server', NULL, NULL, NULL, 0),
(739, 0, '120.161.1.65', 'Server', NULL, NULL, NULL, 0),
(740, 0, '120.177.174.98', 'Server', NULL, NULL, NULL, 0),
(741, 0, '202.62.16.229', 'Server', NULL, NULL, NULL, 0),
(742, 0, '120.181.25.194', 'Server', NULL, NULL, NULL, 0),
(743, 0, '120.161.1.255', 'Server', NULL, NULL, NULL, 0),
(744, 0, '120.168.0.110', 'Server', NULL, NULL, NULL, 0),
(745, 0, '120.161.1.31', 'Server', NULL, NULL, NULL, 0),
(746, 0, '120.161.0.98', 'Server', NULL, NULL, NULL, 0),
(747, 0, '120.161.1.49', 'Server', NULL, NULL, NULL, 0),
(748, 0, '202.62.16.210', 'Server', NULL, NULL, NULL, 0),
(749, 0, '120.161.0.94', 'Server', NULL, NULL, NULL, 0),
(750, 0, '120.161.1.75', 'Server', NULL, NULL, NULL, 0),
(751, 0, '120.161.0.243', 'Server', NULL, NULL, NULL, 0),
(752, 0, '120.168.1.170', 'Server', NULL, NULL, NULL, 0),
(753, 0, '202.62.16.2', 'Server', NULL, NULL, NULL, 0),
(754, 0, '120.161.1.167', 'Server', NULL, NULL, NULL, 0),
(755, 0, '202.62.17.77', 'Server', NULL, NULL, NULL, 0),
(756, 0, '120.161.0.241', 'Server', NULL, NULL, NULL, 0),
(757, 0, '202.93.35.96', 'Server', NULL, NULL, NULL, 0),
(758, 0, '120.168.0.66', 'Server', NULL, NULL, NULL, 0),
(759, 0, '202.62.16.199', 'Server', NULL, NULL, NULL, 0),
(760, 0, '120.161.1.163', 'Server', NULL, NULL, NULL, 0),
(761, 0, '202.62.17.72', 'Server', NULL, NULL, NULL, 0),
(762, 0, '120.168.1.78', 'Server', NULL, NULL, NULL, 0),
(763, 0, '202.62.16.162', 'Server', NULL, NULL, NULL, 0),
(764, 0, '202.62.16.40', 'Server', NULL, NULL, NULL, 0),
(765, 0, '202.62.17.22', 'Server', NULL, NULL, NULL, 0),
(766, 0, '103.246.39.212', 'Server', NULL, NULL, NULL, 0),
(767, 0, '202.62.16.112', 'Server', NULL, NULL, NULL, 0),
(768, 0, '120.161.0.71', 'Server', NULL, NULL, NULL, 0),
(769, 0, '202.62.17.7', 'Server', NULL, NULL, NULL, 0),
(770, 0, '202.62.16.65', 'Server', NULL, NULL, NULL, 0),
(771, 0, '202.62.16.129', 'Server', NULL, NULL, NULL, 0),
(772, 0, '120.161.1.103', 'Server', NULL, NULL, NULL, 0),
(773, 0, '120.161.0.29', 'Server', NULL, NULL, NULL, 0),
(774, 0, '120.168.0.53', 'Server', NULL, NULL, NULL, 0),
(775, 0, '114.4.23.91', 'Server', NULL, NULL, NULL, 0),
(776, 0, '202.153.31.78', 'Server', NULL, NULL, NULL, 0),
(777, 0, '120.161.1.134', 'Server', NULL, NULL, NULL, 0),
(778, 0, '120.161.0.147', 'Server', NULL, NULL, NULL, 0),
(779, 0, '120.161.0.195', 'Server', NULL, NULL, NULL, 0),
(780, 0, '114.4.23.87', 'Server', NULL, NULL, NULL, 0),
(781, 0, '120.161.0.151', 'Server', NULL, NULL, NULL, 0),
(782, 0, '202.62.16.14', 'Server', NULL, NULL, NULL, 0),
(783, 0, '120.161.1.220', 'Server', NULL, NULL, NULL, 0),
(784, 0, '202.62.16.8', 'Server', NULL, NULL, NULL, 0),
(785, 0, '114.4.23.114', 'Server', NULL, NULL, NULL, 0),
(786, 0, '120.168.0.86', 'Server', NULL, NULL, NULL, 0),
(787, 0, '120.168.1.14', 'Server', NULL, NULL, NULL, 0),
(788, 0, '202.62.16.159', 'Server', NULL, NULL, NULL, 0),
(789, 0, '120.161.1.211', 'Server', NULL, NULL, NULL, 0),
(790, 0, '120.161.0.87', 'Server', NULL, NULL, NULL, 0),
(791, 0, '120.161.0.100', 'Server', NULL, NULL, NULL, 0),
(792, 0, '120.161.0.70', 'Server', NULL, NULL, NULL, 0),
(793, 0, '120.168.0.78', 'Server', NULL, NULL, NULL, 0),
(794, 0, '120.168.0.127', 'Server', NULL, NULL, NULL, 0),
(795, 0, '202.62.16.46', 'Server', NULL, NULL, NULL, 0),
(796, 0, '120.161.1.250', 'Server', NULL, NULL, NULL, 0),
(797, 0, '114.124.36.23', 'Server', NULL, NULL, NULL, 0),
(798, 0, '120.168.1.197', 'Server', NULL, NULL, NULL, 0),
(799, 0, '202.62.16.125', 'Server', NULL, NULL, NULL, 0),
(800, 0, '202.62.16.121', 'Server', NULL, NULL, NULL, 0),
(801, 0, '202.62.17.11', 'Server', NULL, NULL, NULL, 0),
(802, 0, '120.161.1.87', 'Server', NULL, NULL, NULL, 0),
(803, 0, '202.62.16.97', 'Server', NULL, NULL, NULL, 0),
(804, 0, '202.62.16.38', 'Server', NULL, NULL, NULL, 0),
(805, 0, '202.62.16.214', 'Server', NULL, NULL, NULL, 0),
(806, 0, '202.62.16.187', 'Server', NULL, NULL, NULL, 0),
(807, 0, '120.161.1.74', 'Server', NULL, NULL, NULL, 0),
(808, 0, '202.62.16.168', 'Server', NULL, NULL, NULL, 0),
(809, 0, '120.168.1.58', 'Server', NULL, NULL, NULL, 0),
(810, 0, '202.62.16.192', 'Server', NULL, NULL, NULL, 0),
(811, 0, '202.62.17.74', 'Server', NULL, NULL, NULL, 0),
(812, 0, '202.62.17.8', 'Server', NULL, NULL, NULL, 0),
(813, 0, '202.62.16.4', 'Server', NULL, NULL, NULL, 0),
(814, 0, '202.62.16.85', 'Server', NULL, NULL, NULL, 0),
(815, 0, '202.62.16.195', 'Server', NULL, NULL, NULL, 0),
(816, 0, '202.62.16.48', 'Server', NULL, NULL, NULL, 0),
(817, 0, '202.62.16.69', 'Server', NULL, NULL, NULL, 0),
(818, 0, '202.62.16.239', 'Server', NULL, NULL, NULL, 0),
(819, 0, '202.62.16.52', 'Server', NULL, NULL, NULL, 0),
(820, 0, '114.4.23.79', 'Server', NULL, NULL, NULL, 0),
(821, 0, '202.62.16.115', 'Server', NULL, NULL, NULL, 0),
(822, 0, '120.161.1.143', 'Server', NULL, NULL, NULL, 0),
(823, 0, '120.168.1.205', 'Server', NULL, NULL, NULL, 0),
(824, 0, '10.3.6.159', 'Server', NULL, NULL, NULL, 0),
(825, 0, '202.62.17.104', 'Server', NULL, NULL, NULL, 0),
(826, 0, '120.168.0.171', 'Server', NULL, NULL, NULL, 0),
(827, 0, '202.62.16.47', 'Server', NULL, NULL, NULL, 0),
(828, 0, '120.161.0.182', 'Server', NULL, NULL, NULL, 0),
(829, 0, '120.161.1.174', 'Server', NULL, NULL, NULL, 0),
(830, 0, '114.4.23.99', 'Server', NULL, NULL, NULL, 0),
(831, 0, '120.161.0.66', 'Server', NULL, NULL, NULL, 0),
(832, 0, '120.161.1.122', 'Server', NULL, NULL, NULL, 0),
(833, 0, '114.4.23.48', 'Server', NULL, NULL, NULL, 0),
(834, 0, '202.62.17.62', 'Server', NULL, NULL, NULL, 0),
(835, 0, '120.161.1.144', 'Server', NULL, NULL, NULL, 0),
(836, 0, '120.168.1.251', 'Server', NULL, NULL, NULL, 0),
(837, 0, '202.62.16.221', 'Server', NULL, NULL, NULL, 0),
(838, 0, '120.168.1.147', 'Server', NULL, NULL, NULL, 0),
(839, 0, '120.161.0.119', 'Server', NULL, NULL, NULL, 0),
(840, 0, '192.168.100.106', 'Server', NULL, NULL, NULL, 0),
(841, 0, '120.168.0.121', 'Server', NULL, NULL, NULL, 0),
(842, 0, '120.161.1.208', 'Server', NULL, NULL, NULL, 0),
(843, 0, '120.161.1.62', 'Server', NULL, NULL, NULL, 0),
(844, 0, '120.161.1.8', 'Server', NULL, NULL, NULL, 0),
(845, 0, '120.168.0.243', 'Server', NULL, NULL, NULL, 0),
(846, 0, '114.4.23.65', 'Server', NULL, NULL, NULL, 0),
(847, 0, '163.53.186.186', 'Server', NULL, NULL, NULL, 0),
(848, 0, '114.4.23.50', 'Server', NULL, NULL, NULL, 0),
(849, 0, '120.164.46.96', 'Server', NULL, NULL, NULL, 0),
(850, 0, '124.195.119.238', 'Server', NULL, NULL, NULL, 0),
(851, 0, '114.4.23.16', 'Server', NULL, NULL, NULL, 0),
(852, 0, '120.161.0.21', 'Server', NULL, NULL, NULL, 0),
(853, 0, '120.168.1.127', 'Server', NULL, NULL, NULL, 0),
(854, 0, '114.4.23.15', 'Server', NULL, NULL, NULL, 0),
(855, 0, '114.4.23.122', 'Server', NULL, NULL, NULL, 0),
(856, 0, '120.164.47.91', 'Server', NULL, NULL, NULL, 0),
(857, 0, '119.18.152.82', 'Server', NULL, NULL, NULL, 0),
(858, 0, '124.195.116.2', 'Server', NULL, NULL, NULL, 0),
(859, 0, '120.164.45.70', 'Server', NULL, NULL, NULL, 0),
(860, 0, '120.168.1.79', 'Server', NULL, NULL, NULL, 0),
(861, 0, '120.164.41.184', 'Server', NULL, NULL, NULL, 0),
(862, 0, '124.195.116.96', 'Server', NULL, NULL, NULL, 0),
(863, 0, '120.168.0.233', 'Server', NULL, NULL, NULL, 0),
(864, 0, '124.195.115.9', 'Server', NULL, NULL, NULL, 0),
(865, 0, '120.168.1.241', 'Server', NULL, NULL, NULL, 0),
(866, 0, '120.164.43.4', 'Server', NULL, NULL, NULL, 0),
(867, 0, '114.4.23.6', 'Server', NULL, NULL, NULL, 0),
(868, 0, '202.93.35.108', 'Server', NULL, NULL, NULL, 0),
(869, 0, '120.164.44.9', 'Server', NULL, NULL, NULL, 0),
(870, 0, '120.168.1.194', 'Server', NULL, NULL, NULL, 0),
(871, 0, '120.164.43.141', 'Server', NULL, NULL, NULL, 0),
(872, 0, '124.195.114.237', 'Server', NULL, NULL, NULL, 0),
(873, 0, '120.164.45.141', 'Server', NULL, NULL, NULL, 0),
(874, 0, '120.164.42.220', 'Server', NULL, NULL, NULL, 0),
(875, 0, '120.164.47.227', 'Server', NULL, NULL, NULL, 0),
(876, 0, '120.164.44.61', 'Server', NULL, NULL, NULL, 0),
(877, 0, '120.168.0.154', 'Server', NULL, NULL, NULL, 0),
(878, 0, '124.195.119.29', 'Server', NULL, NULL, NULL, 0),
(879, 0, '120.168.0.96', 'Server', NULL, NULL, NULL, 0),
(880, 0, '124.195.112.147', 'Server', NULL, NULL, NULL, 0),
(881, 0, '124.195.112.41', 'Server', NULL, NULL, NULL, 0),
(882, 0, '120.168.0.68', 'Server', NULL, NULL, NULL, 0),
(883, 0, '120.164.42.197', 'Server', NULL, NULL, NULL, 0),
(884, 0, '120.164.47.123', 'Server', NULL, NULL, NULL, 0),
(885, 0, '120.164.42.204', 'Server', NULL, NULL, NULL, 0),
(886, 0, '120.164.42.194', 'Server', NULL, NULL, NULL, 0),
(887, 0, '202.62.16.128', 'Server', NULL, NULL, NULL, 0),
(888, 0, '124.195.116.41', 'Server', NULL, NULL, NULL, 0),
(889, 0, '124.195.112.237', 'Server', NULL, NULL, NULL, 0),
(890, 0, '120.168.1.43', 'Server', NULL, NULL, NULL, 0),
(891, 0, '120.161.1.194', 'Server', NULL, NULL, NULL, 0),
(892, 0, '120.164.45.124', 'Server', NULL, NULL, NULL, 0),
(893, 0, '124.195.118.140', 'Server', NULL, NULL, NULL, 0),
(894, 0, '124.195.119.112', 'Server', NULL, NULL, NULL, 0),
(895, 0, '120.168.0.122', 'Server', NULL, NULL, NULL, 0),
(896, 0, '124.195.117.208', 'Server', NULL, NULL, NULL, 0),
(897, 0, '124.195.114.96', 'Server', NULL, NULL, NULL, 0),
(898, 0, '114.4.23.28', 'Server', NULL, NULL, NULL, 0),
(899, 0, '124.195.115.136', 'Server', NULL, NULL, NULL, 0),
(900, 0, '146.185.31.219', 'Server', NULL, NULL, NULL, 0),
(901, 0, '120.168.0.230', 'Server', NULL, NULL, NULL, 0),
(902, 0, '120.164.41.177', 'Server', NULL, NULL, NULL, 0),
(903, 0, '202.62.17.23', 'Server', NULL, NULL, NULL, 0),
(904, 0, '124.195.115.146', 'Server', NULL, NULL, NULL, 0),
(905, 0, '120.164.41.206', 'Server', NULL, NULL, NULL, 0),
(906, 0, '120.164.42.72', 'Server', NULL, NULL, NULL, 0),
(907, 0, '124.195.112.221', 'Server', NULL, NULL, NULL, 0),
(908, 0, '202.62.16.56', 'Server', NULL, NULL, NULL, 0),
(909, 0, '202.62.16.44', 'Server', NULL, NULL, NULL, 0),
(910, 0, '202.62.16.32', 'Server', NULL, NULL, NULL, 0),
(911, 0, '120.164.47.138', 'Server', NULL, NULL, NULL, 0),
(912, 0, '124.195.113.81', 'Server', NULL, NULL, NULL, 0),
(913, 0, '120.164.40.81', 'Server', NULL, NULL, NULL, 0),
(914, 0, '202.62.17.115', 'Server', NULL, NULL, NULL, 0),
(915, 0, '202.62.17.123', 'Server', NULL, NULL, NULL, 0),
(916, 0, '124.195.113.27', 'Server', NULL, NULL, NULL, 0),
(917, 0, '124.195.117.69', 'Server', NULL, NULL, NULL, 0),
(918, 0, '124.195.114.143', 'Server', NULL, NULL, NULL, 0),
(919, 0, '120.168.1.39', 'Server', NULL, NULL, NULL, 0),
(920, 0, '120.164.44.127', 'Server', NULL, NULL, NULL, 0),
(921, 0, '124.195.113.204', 'Server', NULL, NULL, NULL, 0),
(922, 0, '124.195.117.15', 'Server', NULL, NULL, NULL, 0),
(923, 0, '125.162.231.99', 'Server', NULL, NULL, NULL, 0),
(924, 0, '125.167.123.156', 'Server', NULL, NULL, NULL, 0),
(925, 0, '202.162.216.218', 'Server', NULL, NULL, NULL, 0),
(926, 0, '202.93.37.85', 'Server', NULL, NULL, NULL, 0),
(927, 0, '124.195.114.66', 'Server', NULL, NULL, NULL, 0),
(928, 0, '124.195.119.19', 'Server', NULL, NULL, NULL, 0),
(929, 0, '202.93.37.91', 'Server', NULL, NULL, NULL, 0),
(930, 0, '114.4.23.80', 'Server', NULL, NULL, NULL, 0),
(931, 0, '124.195.119.199', 'Server', NULL, NULL, NULL, 0),
(932, 0, '120.168.0.208', 'Server', NULL, NULL, NULL, 0),
(933, 0, '120.168.0.175', 'Server', NULL, NULL, NULL, 0),
(934, 0, '124.195.119.57', 'Server', NULL, NULL, NULL, 0),
(935, 0, '120.164.43.246', 'Server', NULL, NULL, NULL, 0),
(936, 0, '124.195.117.252', 'Server', NULL, NULL, NULL, 0),
(937, 0, '114.4.23.78', 'Server', NULL, NULL, NULL, 0),
(938, 0, '202.62.17.112', 'Server', NULL, NULL, NULL, 0),
(939, 0, '124.195.114.192', 'Server', NULL, NULL, NULL, 0),
(940, 0, '120.164.46.85', 'Server', NULL, NULL, NULL, 0),
(941, 0, '124.195.114.105', 'Server', NULL, NULL, NULL, 0),
(942, 0, '114.4.23.4', 'Server', NULL, NULL, NULL, 0),
(943, 0, '120.164.42.151', 'Server', NULL, NULL, NULL, 0),
(944, 0, '120.164.43.147', 'Server', NULL, NULL, NULL, 0),
(945, 0, '124.195.115.105', 'Server', NULL, NULL, NULL, 0),
(946, 0, '124.195.117.218', 'Server', NULL, NULL, NULL, 0),
(947, 0, '124.195.116.90', 'Server', NULL, NULL, NULL, 0),
(948, 0, '120.164.43.226', 'Server', NULL, NULL, NULL, 0),
(949, 0, '114.4.23.69', 'Server', NULL, NULL, NULL, 0),
(950, 0, '120.164.45.231', 'Server', NULL, NULL, NULL, 0),
(951, 0, '120.164.41.124', 'Server', NULL, NULL, NULL, 0),
(952, 0, '120.168.1.68', 'Server', NULL, NULL, NULL, 0),
(953, 0, '119.110.81.162', 'Server', NULL, NULL, NULL, 0),
(954, 0, '124.195.113.169', 'Server', NULL, NULL, NULL, 0),
(955, 0, '202.62.16.207', 'Server', NULL, NULL, NULL, 0),
(956, 0, '120.168.0.146', 'Server', NULL, NULL, NULL, 0),
(957, 0, '120.164.42.213', 'Server', NULL, NULL, NULL, 0),
(958, 0, '124.195.113.232', 'Server', NULL, NULL, NULL, 0),
(959, 0, '120.168.1.80', 'Server', NULL, NULL, NULL, 0);
INSERT INTO `system` (`s_id`, `sno`, `sip`, `sapp`, `snama`, `salamat`, `sinfo`, `sok`) VALUES
(960, 0, '120.164.41.161', 'Server', NULL, NULL, NULL, 0),
(961, 0, '120.161.0.99', 'Server', NULL, NULL, NULL, 0),
(962, 0, '124.195.116.130', 'Server', NULL, NULL, NULL, 0),
(963, 0, '124.195.113.136', 'Server', NULL, NULL, NULL, 0),
(964, 0, '120.164.43.138', 'Server', NULL, NULL, NULL, 0),
(965, 0, '120.161.1.155', 'Server', NULL, NULL, NULL, 0),
(966, 0, '114.4.23.67', 'Server', NULL, NULL, NULL, 0),
(967, 0, '120.164.40.96', 'Server', NULL, NULL, NULL, 0),
(968, 0, '120.164.45.248', 'Server', NULL, NULL, NULL, 0),
(969, 0, '125.166.205.171', 'Server', NULL, NULL, NULL, 0),
(970, 0, '120.164.46.30', 'Server', NULL, NULL, NULL, 0),
(971, 0, '124.195.112.28', 'Server', NULL, NULL, NULL, 0),
(972, 0, '120.168.0.213', 'Server', NULL, NULL, NULL, 0),
(973, 0, '120.168.0.246', 'Server', NULL, NULL, NULL, 0),
(974, 0, '124.195.114.223', 'Server', NULL, NULL, NULL, 0),
(975, 0, '124.195.117.210', 'Server', NULL, NULL, NULL, 0),
(976, 0, '124.195.114.21', 'Server', NULL, NULL, NULL, 0),
(977, 0, '202.62.16.185', 'Server', NULL, NULL, NULL, 0),
(978, 0, '124.195.115.86', 'Server', NULL, NULL, NULL, 0),
(979, 0, '124.195.116.49', 'Server', NULL, NULL, NULL, 0),
(980, 0, '124.195.118.221', 'Server', NULL, NULL, NULL, 0),
(981, 0, '120.168.1.168', 'Server', NULL, NULL, NULL, 0),
(982, 0, '114.4.23.3', 'Server', NULL, NULL, NULL, 0),
(983, 0, '120.161.0.36', 'Server', NULL, NULL, NULL, 0),
(984, 0, '124.195.112.173', 'Server', NULL, NULL, NULL, 0),
(985, 0, '124.195.117.211', 'Server', NULL, NULL, NULL, 0),
(986, 0, '120.161.0.213', 'Server', NULL, NULL, NULL, 0),
(987, 0, '202.62.16.227', 'Server', NULL, NULL, NULL, 0),
(988, 0, '124.195.119.5', 'Server', NULL, NULL, NULL, 0),
(989, 0, '120.164.43.117', 'Server', NULL, NULL, NULL, 0),
(990, 0, '120.168.0.100', 'Server', NULL, NULL, NULL, 0),
(991, 0, '120.161.1.133', 'Server', NULL, NULL, NULL, 0),
(992, 0, '124.195.118.74', 'Server', NULL, NULL, NULL, 0),
(993, 0, '124.195.117.141', 'Server', NULL, NULL, NULL, 0),
(994, 0, '124.195.114.17', 'Server', NULL, NULL, NULL, 0),
(995, 0, '120.164.46.140', 'Server', NULL, NULL, NULL, 0),
(996, 0, '124.195.118.211', 'Server', NULL, NULL, NULL, 0),
(997, 0, '120.164.41.163', 'Server', NULL, NULL, NULL, 0),
(998, 0, '120.164.45.51', 'Server', NULL, NULL, NULL, 0),
(999, 0, '124.195.112.184', 'Server', NULL, NULL, NULL, 0),
(1000, 0, '120.168.0.80', 'Server', NULL, NULL, NULL, 0),
(1001, 0, '124.195.114.217', 'Server', NULL, NULL, NULL, 0),
(1002, 0, '124.195.117.240', 'Server', NULL, NULL, NULL, 0),
(1003, 0, '120.161.0.198', 'Server', NULL, NULL, NULL, 0),
(1004, 0, '120.164.45.211', 'Server', NULL, NULL, NULL, 0),
(1005, 0, '124.195.115.175', 'Server', NULL, NULL, NULL, 0),
(1006, 0, '124.195.119.157', 'Server', NULL, NULL, NULL, 0),
(1007, 0, '120.164.42.254', 'Server', NULL, NULL, NULL, 0),
(1008, 0, '114.4.23.57', 'Server', NULL, NULL, NULL, 0),
(1009, 0, '120.164.43.232', 'Server', NULL, NULL, NULL, 0),
(1010, 0, '120.164.45.158', 'Server', NULL, NULL, NULL, 0),
(1011, 0, '124.195.112.25', 'Server', NULL, NULL, NULL, 0),
(1012, 0, '124.195.113.176', 'Server', NULL, NULL, NULL, 0),
(1013, 0, '120.169.255.56', 'Server', NULL, NULL, NULL, 0),
(1014, 0, '124.195.113.185', 'Server', NULL, NULL, NULL, 0),
(1015, 0, '124.195.114.240', 'Server', NULL, NULL, NULL, 0),
(1016, 0, '120.169.254.196', 'Server', NULL, NULL, NULL, 0),
(1017, 0, '120.169.254.154', 'Server', NULL, NULL, NULL, 0),
(1018, 0, '89.145.95.2', 'Server', NULL, NULL, NULL, 0),
(1019, 0, '124.195.113.245', 'Server', NULL, NULL, NULL, 0),
(1020, 0, '120.164.47.106', 'Server', NULL, NULL, NULL, 0),
(1021, 0, '192.168.7.3, 19', 'Server', NULL, NULL, NULL, 0),
(1022, 0, '192.168.7.3, 19', 'Server', NULL, NULL, NULL, 0),
(1023, 0, '192.168.7.3, 19', 'Server', NULL, NULL, NULL, 0),
(1024, 0, '192.168.7.3, 19', 'Server', NULL, NULL, NULL, 0),
(1025, 0, '192.168.7.3, 19', 'Server', NULL, NULL, NULL, 0),
(1026, 0, '120.161.1.251', 'Server', NULL, NULL, NULL, 0),
(1027, 0, '124.195.114.218', 'Server', NULL, NULL, NULL, 0),
(1028, 0, '120.169.254.227', 'Server', NULL, NULL, NULL, 0),
(1029, 0, '36.77.209.140', 'Server', NULL, NULL, NULL, 0),
(1030, 0, '192.168.1.66', 'Server', NULL, NULL, NULL, 0),
(1031, 0, '180.243.127.30', 'Server', NULL, NULL, NULL, 0),
(1032, 0, '124.195.116.243', 'Server', NULL, NULL, NULL, 0),
(1033, 0, '120.169.255.195', 'Server', NULL, NULL, NULL, 0),
(1034, 0, '120.168.1.150', 'Server', NULL, NULL, NULL, 0),
(1035, 0, '36.80.61.54', 'Server', NULL, NULL, NULL, 0),
(1036, 0, '120.164.47.242', 'Server', NULL, NULL, NULL, 0),
(1037, 0, '120.164.43.64', 'Server', NULL, NULL, NULL, 0),
(1038, 0, '124.195.112.134', 'Server', NULL, NULL, NULL, 0),
(1039, 0, '120.164.43.153', 'Server', NULL, NULL, NULL, 0),
(1040, 0, '124.195.119.133', 'Server', NULL, NULL, NULL, 0),
(1041, 0, '124.195.117.33', 'Server', NULL, NULL, NULL, 0),
(1042, 0, '120.164.44.245', 'Server', NULL, NULL, NULL, 0),
(1043, 0, '120.169.255.218', 'Server', NULL, NULL, NULL, 0),
(1044, 0, '120.169.254.169', 'Server', NULL, NULL, NULL, 0),
(1045, 0, '120.164.47.236', 'Server', NULL, NULL, NULL, 0),
(1046, 0, '114.4.23.53', 'Server', NULL, NULL, NULL, 0),
(1047, 0, '120.164.41.171', 'Server', NULL, NULL, NULL, 0),
(1048, 0, '120.169.255.40', 'Server', NULL, NULL, NULL, 0),
(1049, 0, '124.195.117.182', 'Server', NULL, NULL, NULL, 0),
(1050, 0, '124.195.117.130', 'Server', NULL, NULL, NULL, 0),
(1051, 0, '124.195.119.41', 'Server', NULL, NULL, NULL, 0),
(1052, 0, '125.160.108.198', 'Server', NULL, NULL, NULL, 0),
(1053, 0, '120.164.44.21', 'Server', NULL, NULL, NULL, 0),
(1054, 0, '120.168.1.42', 'Server', NULL, NULL, NULL, 0),
(1055, 0, '124.195.114.31', 'Server', NULL, NULL, NULL, 0),
(1056, 0, '120.164.46.6', 'Server', NULL, NULL, NULL, 0),
(1057, 0, '120.169.255.183', 'Server', NULL, NULL, NULL, 0),
(1058, 0, '120.164.47.52', 'Server', NULL, NULL, NULL, 0),
(1059, 0, '124.195.118.119', 'Server', NULL, NULL, NULL, 0),
(1060, 0, '124.195.118.254', 'Server', NULL, NULL, NULL, 0),
(1061, 0, '120.164.46.162', 'Server', NULL, NULL, NULL, 0),
(1062, 0, '120.164.46.47', 'Server', NULL, NULL, NULL, 0),
(1063, 0, '120.164.45.157', 'Server', NULL, NULL, NULL, 0),
(1064, 0, '120.164.41.40', 'Server', NULL, NULL, NULL, 0),
(1065, 0, '124.195.114.214', 'Server', NULL, NULL, NULL, 0),
(1066, 0, '120.161.0.83', 'Server', NULL, NULL, NULL, 0),
(1067, 0, '120.164.44.43', 'Server', NULL, NULL, NULL, 0),
(1068, 0, '120.169.255.23', 'Server', NULL, NULL, NULL, 0),
(1069, 0, '120.168.1.92', 'Server', NULL, NULL, NULL, 0),
(1070, 0, '120.164.40.190', 'Server', NULL, NULL, NULL, 0),
(1071, 0, '124.195.118.228', 'Server', NULL, NULL, NULL, 0),
(1072, 0, '120.169.254.64', 'Server', NULL, NULL, NULL, 0),
(1073, 0, '120.164.47.188', 'Server', NULL, NULL, NULL, 0),
(1074, 0, '124.195.115.199', 'Server', NULL, NULL, NULL, 0),
(1075, 0, '120.161.0.11', 'Server', NULL, NULL, NULL, 0),
(1076, 0, '114.4.21.211', 'Server', NULL, NULL, NULL, 0),
(1077, 0, '114.4.21.203', 'Server', NULL, NULL, NULL, 0),
(1078, 0, '120.169.254.16', 'Server', NULL, NULL, NULL, 0),
(1079, 0, '124.195.119.17', 'Server', NULL, NULL, NULL, 0),
(1080, 0, '124.195.119.201', 'Server', NULL, NULL, NULL, 0),
(1081, 0, '120.164.46.112', 'Server', NULL, NULL, NULL, 0),
(1082, 0, '124.195.117.61', 'Server', NULL, NULL, NULL, 0),
(1083, 0, '120.168.1.200', 'Server', NULL, NULL, NULL, 0),
(1084, 0, '120.164.43.33', 'Server', NULL, NULL, NULL, 0),
(1085, 0, '124.195.117.81', 'Server', NULL, NULL, NULL, 0),
(1086, 0, '124.195.112.166', 'Server', NULL, NULL, NULL, 0),
(1087, 0, '124.195.119.39', 'Server', NULL, NULL, NULL, 0),
(1088, 0, '36.69.161.121', 'Server', NULL, NULL, NULL, 0),
(1089, 0, '58.147.188.2', 'Server', NULL, NULL, NULL, 0),
(1090, 0, '124.195.119.70', 'Server', NULL, NULL, NULL, 0),
(1091, 0, '124.195.113.161', 'Server', NULL, NULL, NULL, 0),
(1092, 0, '120.169.255.114', 'Server', NULL, NULL, NULL, 0),
(1093, 0, '120.164.43.217', 'Server', NULL, NULL, NULL, 0),
(1094, 0, '120.169.254.158', 'Server', NULL, NULL, NULL, 0),
(1095, 0, '125.161.58.114', 'Server', NULL, NULL, NULL, 0),
(1096, 0, '114.4.23.64', 'Server', NULL, NULL, NULL, 0),
(1097, 0, '120.164.42.239', 'Server', NULL, NULL, NULL, 0),
(1098, 0, '120.161.0.149', 'Server', NULL, NULL, NULL, 0),
(1099, 0, '120.168.0.27', 'Server', NULL, NULL, NULL, 0),
(1100, 0, '124.195.116.228', 'Server', NULL, NULL, NULL, 0),
(1101, 0, '36.69.169.224', 'Server', NULL, NULL, NULL, 0),
(1102, 0, '124.195.112.111', 'Server', NULL, NULL, NULL, 0),
(1103, 0, '120.164.45.220', 'Server', NULL, NULL, NULL, 0),
(1104, 0, '36.70.247.53', 'Server', NULL, NULL, NULL, 0),
(1105, 0, '120.161.1.197', 'Server', NULL, NULL, NULL, 0),
(1106, 0, '124.195.115.169', 'Server', NULL, NULL, NULL, 0),
(1107, 0, '36.70.248.63', 'Server', NULL, NULL, NULL, 0),
(1108, 0, '120.169.254.137', 'Server', NULL, NULL, NULL, 0),
(1109, 0, '120.164.47.23', 'Server', NULL, NULL, NULL, 0),
(1110, 0, '120.164.43.220', 'Server', NULL, NULL, NULL, 0),
(1111, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1112, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1113, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1114, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1115, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1116, 0, '120.168.0.125', 'Server', NULL, NULL, NULL, 0),
(1117, 0, '120.164.45.116', 'Server', NULL, NULL, NULL, 0),
(1118, 0, '36.69.170.194', 'Server', NULL, NULL, NULL, 0),
(1119, 0, '124.195.119.188', 'Server', NULL, NULL, NULL, 0),
(1120, 0, '124.195.114.88', 'Server', NULL, NULL, NULL, 0),
(1121, 0, '120.164.46.59', 'Server', NULL, NULL, NULL, 0),
(1122, 0, '120.168.0.63', 'Server', NULL, NULL, NULL, 0),
(1123, 0, '120.161.1.138', 'Server', NULL, NULL, NULL, 0),
(1124, 0, '120.169.254.81', 'Server', NULL, NULL, NULL, 0),
(1125, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1126, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1127, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1128, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1129, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1130, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1131, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1132, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1133, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1134, 0, '120.164.47.148', 'Server', NULL, NULL, NULL, 0),
(1135, 0, '124.195.118.51', 'Server', NULL, NULL, NULL, 0),
(1136, 0, '120.164.40.38', 'Server', NULL, NULL, NULL, 0),
(1137, 0, '120.169.254.167', 'Server', NULL, NULL, NULL, 0),
(1138, 0, '120.161.0.96', 'Server', NULL, NULL, NULL, 0),
(1139, 0, '120.169.254.117', 'Server', NULL, NULL, NULL, 0),
(1140, 0, '120.164.44.187', 'Server', NULL, NULL, NULL, 0),
(1141, 0, '114.4.76.100', 'Server', NULL, NULL, NULL, 0),
(1142, 0, '120.164.47.22', 'Server', NULL, NULL, NULL, 0),
(1143, 0, '120.164.42.22', 'Server', NULL, NULL, NULL, 0),
(1144, 0, '120.168.0.26', 'Server', NULL, NULL, NULL, 0),
(1145, 0, '114.4.77.171', 'Server', NULL, NULL, NULL, 0),
(1146, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1147, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1148, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1149, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1150, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1151, 0, '120.164.42.226', 'Server', NULL, NULL, NULL, 0),
(1152, 0, '120.161.0.246', 'Server', NULL, NULL, NULL, 0),
(1153, 0, '120.168.1.158', 'Server', NULL, NULL, NULL, 0),
(1154, 0, '120.164.45.110', 'Server', NULL, NULL, NULL, 0),
(1155, 0, '114.4.77.164', 'Server', NULL, NULL, NULL, 0),
(1156, 0, '120.164.41.180', 'Server', NULL, NULL, NULL, 0),
(1157, 0, '120.164.47.96', 'Server', NULL, NULL, NULL, 0),
(1158, 0, '114.4.76.201', 'Server', NULL, NULL, NULL, 0),
(1159, 0, '114.4.76.198', 'Server', NULL, NULL, NULL, 0),
(1160, 0, '114.4.76.75', 'Server', NULL, NULL, NULL, 0),
(1161, 0, '124.195.118.55', 'Server', NULL, NULL, NULL, 0),
(1162, 0, '120.169.255.66', 'Server', NULL, NULL, NULL, 0),
(1163, 0, '120.164.43.145', 'Server', NULL, NULL, NULL, 0),
(1164, 0, '114.4.79.161', 'Server', NULL, NULL, NULL, 0),
(1165, 0, '114.4.77.0', 'Server', NULL, NULL, NULL, 0),
(1166, 0, '120.169.255.30', 'Server', NULL, NULL, NULL, 0),
(1167, 0, '120.169.254.71', 'Server', NULL, NULL, NULL, 0),
(1168, 0, '114.4.78.51', 'Server', NULL, NULL, NULL, 0),
(1169, 0, '120.164.45.240', 'Server', NULL, NULL, NULL, 0),
(1170, 0, '114.4.79.128', 'Server', NULL, NULL, NULL, 0),
(1171, 0, '120.161.1.19', 'Server', NULL, NULL, NULL, 0),
(1172, 0, '36.69.168.36', 'Server', NULL, NULL, NULL, 0),
(1173, 0, '36.69.169.217', 'Server', NULL, NULL, NULL, 0),
(1174, 0, '114.4.78.105', 'Server', NULL, NULL, NULL, 0),
(1175, 0, '36.69.168.73', 'Server', NULL, NULL, NULL, 0),
(1176, 0, '120.164.46.33', 'Server', NULL, NULL, NULL, 0),
(1177, 0, '36.69.162.216', 'Server', NULL, NULL, NULL, 0),
(1178, 0, '36.69.149.197', 'Server', NULL, NULL, NULL, 0),
(1179, 0, '36.70.145.73', 'Server', NULL, NULL, NULL, 0),
(1180, 0, '36.69.166.215', 'Server', NULL, NULL, NULL, 0),
(1181, 0, '36.69.154.64', 'Server', NULL, NULL, NULL, 0),
(1182, 0, '36.70.246.123', 'Server', NULL, NULL, NULL, 0),
(1183, 0, '114.4.82.240', 'Server', NULL, NULL, NULL, 0),
(1184, 0, '120.164.46.152', 'Server', NULL, NULL, NULL, 0),
(1185, 0, '202.62.17.212', 'Server', NULL, NULL, NULL, 0),
(1186, 0, '120.164.43.253', 'Server', NULL, NULL, NULL, 0),
(1187, 0, '114.4.76.60', 'Server', NULL, NULL, NULL, 0),
(1188, 0, '36.70.241.45', 'Server', NULL, NULL, NULL, 0),
(1189, 0, '114.4.82.51', 'Server', NULL, NULL, NULL, 0),
(1190, 0, '125.161.69.85', 'Server', NULL, NULL, NULL, 0),
(1191, 0, '114.4.83.101', 'Server', NULL, NULL, NULL, 0),
(1192, 0, '114.4.77.188', 'Server', NULL, NULL, NULL, 0),
(1193, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1194, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1195, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1196, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1197, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1198, 0, '114.4.76.208', 'Server', NULL, NULL, NULL, 0),
(1199, 0, '114.4.82.126', 'Server', NULL, NULL, NULL, 0),
(1200, 0, '120.161.0.185', 'Server', NULL, NULL, NULL, 0),
(1201, 0, '114.4.83.38', 'Server', NULL, NULL, NULL, 0),
(1202, 0, '120.169.254.222', 'Server', NULL, NULL, NULL, 0),
(1203, 0, '114.4.77.213', 'Server', NULL, NULL, NULL, 0),
(1204, 0, '114.4.79.32', 'Server', NULL, NULL, NULL, 0),
(1205, 0, '114.4.83.71', 'Server', NULL, NULL, NULL, 0),
(1206, 0, '36.69.153.201', 'Server', NULL, NULL, NULL, 0),
(1207, 0, '120.168.1.82', 'Server', NULL, NULL, NULL, 0),
(1208, 0, '114.4.76.255', 'Server', NULL, NULL, NULL, 0),
(1209, 0, '125.161.50.80', 'Server', NULL, NULL, NULL, 0),
(1210, 0, '124.195.117.136', 'Server', NULL, NULL, NULL, 0),
(1211, 0, '36.69.145.106', 'Server', NULL, NULL, NULL, 0),
(1212, 0, '120.164.41.16', 'Server', NULL, NULL, NULL, 0),
(1213, 0, '124.195.115.65', 'Server', NULL, NULL, NULL, 0),
(1214, 0, '114.4.79.184', 'Server', NULL, NULL, NULL, 0),
(1215, 0, '180.252.123.229', 'Server', NULL, NULL, NULL, 0),
(1216, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1217, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1218, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1219, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1220, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1221, 0, '36.69.145.122', 'Server', NULL, NULL, NULL, 0),
(1222, 0, '180.245.33.235', 'Server', NULL, NULL, NULL, 0),
(1223, 0, '180.244.230.247', 'Server', NULL, NULL, NULL, 0),
(1224, 0, '120.164.47.25', 'Server', NULL, NULL, NULL, 0),
(1225, 0, '114.4.82.122', 'Server', NULL, NULL, NULL, 0),
(1226, 0, '114.4.82.121', 'Server', NULL, NULL, NULL, 0),
(1227, 0, '120.169.255.182', 'Server', NULL, NULL, NULL, 0),
(1228, 0, '114.4.76.6', 'Server', NULL, NULL, NULL, 0),
(1229, 0, '125.161.55.23', 'Server', NULL, NULL, NULL, 0),
(1230, 0, '120.164.44.118', 'Server', NULL, NULL, NULL, 0),
(1231, 0, '114.4.78.156', 'Server', NULL, NULL, NULL, 0),
(1232, 0, '36.69.157.226', 'Server', NULL, NULL, NULL, 0),
(1233, 0, '120.164.40.200', 'Server', NULL, NULL, NULL, 0),
(1234, 0, '36.69.150.44', 'Server', NULL, NULL, NULL, 0),
(1235, 0, '36.70.242.59', 'Server', NULL, NULL, NULL, 0),
(1236, 0, '114.4.77.134', 'Server', NULL, NULL, NULL, 0),
(1237, 0, '180.245.39.163', 'Server', NULL, NULL, NULL, 0),
(1238, 0, '120.169.255.79', 'Server', NULL, NULL, NULL, 0),
(1239, 0, '120.164.41.232', 'Server', NULL, NULL, NULL, 0),
(1240, 0, '120.169.254.189', 'Server', NULL, NULL, NULL, 0),
(1241, 0, '114.4.79.120', 'Server', NULL, NULL, NULL, 0),
(1242, 0, '124.195.119.49', 'Server', NULL, NULL, NULL, 0),
(1243, 0, '124.195.116.247', 'Server', NULL, NULL, NULL, 0),
(1244, 0, '114.4.78.228', 'Server', NULL, NULL, NULL, 0),
(1245, 0, '114.4.76.3', 'Server', NULL, NULL, NULL, 0),
(1246, 0, '120.168.1.47', 'Server', NULL, NULL, NULL, 0),
(1247, 0, '120.168.0.24', 'Server', NULL, NULL, NULL, 0),
(1248, 0, '36.71.47.51', 'Server', NULL, NULL, NULL, 0),
(1249, 0, '120.164.47.197', 'Server', NULL, NULL, NULL, 0),
(1250, 0, '199.91.135.140', 'Server', NULL, NULL, NULL, 0),
(1251, 0, '125.161.65.95', 'Server', NULL, NULL, NULL, 0),
(1252, 0, '124.195.116.42', 'Server', NULL, NULL, NULL, 0),
(1253, 0, '120.169.255.217', 'Server', NULL, NULL, NULL, 0),
(1254, 0, '114.4.79.117', 'Server', NULL, NULL, NULL, 0),
(1255, 0, '114.4.76.51', 'Server', NULL, NULL, NULL, 0),
(1256, 0, '124.195.118.12', 'Server', NULL, NULL, NULL, 0),
(1257, 0, '114.4.78.117', 'Server', NULL, NULL, NULL, 0),
(1258, 0, '120.164.42.183', 'Server', NULL, NULL, NULL, 0),
(1259, 0, '124.195.117.201', 'Server', NULL, NULL, NULL, 0),
(1260, 0, '114.4.21.151', 'Server', NULL, NULL, NULL, 0),
(1261, 0, '114.4.77.173', 'Server', NULL, NULL, NULL, 0),
(1262, 0, '120.164.41.91', 'Server', NULL, NULL, NULL, 0),
(1263, 0, '36.69.169.234', 'Server', NULL, NULL, NULL, 0),
(1264, 0, '124.195.118.249', 'Server', NULL, NULL, NULL, 0),
(1265, 0, '120.164.41.254', 'Server', NULL, NULL, NULL, 0),
(1266, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1267, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1268, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1269, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1270, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1271, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1272, 0, '114.4.79.42', 'Server', NULL, NULL, NULL, 0),
(1273, 0, '120.169.254.141', 'Server', NULL, NULL, NULL, 0),
(1274, 0, '120.169.254.208', 'Server', NULL, NULL, NULL, 0),
(1275, 0, '114.4.78.227', 'Server', NULL, NULL, NULL, 0),
(1276, 0, '120.164.40.42', 'Server', NULL, NULL, NULL, 0),
(1277, 0, '124.195.118.7', 'Server', NULL, NULL, NULL, 0),
(1278, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1279, 0, '114.4.78.146', 'Server', NULL, NULL, NULL, 0),
(1280, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1281, 0, '36.70.247.72', 'Server', NULL, NULL, NULL, 0),
(1282, 0, '120.164.45.198', 'Server', NULL, NULL, NULL, 0),
(1283, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1284, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1285, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1286, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1287, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1288, 0, '114.4.78.130', 'Server', NULL, NULL, NULL, 0),
(1289, 0, '114.4.77.117', 'Server', NULL, NULL, NULL, 0),
(1290, 0, '120.164.42.46', 'Server', NULL, NULL, NULL, 0),
(1291, 0, '36.69.175.70', 'Server', NULL, NULL, NULL, 0),
(1292, 0, '114.4.78.115', 'Server', NULL, NULL, NULL, 0),
(1293, 0, '125.161.51.110', 'Server', NULL, NULL, NULL, 0),
(1294, 0, '114.4.76.21', 'Server', NULL, NULL, NULL, 0),
(1295, 0, '124.195.117.219', 'Server', NULL, NULL, NULL, 0),
(1296, 0, '114.4.79.169', 'Server', NULL, NULL, NULL, 0),
(1297, 0, '114.4.78.175', 'Server', NULL, NULL, NULL, 0),
(1298, 0, '120.169.254.200', 'Server', NULL, NULL, NULL, 0),
(1299, 0, '36.70.249.179', 'Server', NULL, NULL, NULL, 0),
(1300, 0, '114.4.78.246', 'Server', NULL, NULL, NULL, 0),
(1301, 0, '120.164.43.181', 'Server', NULL, NULL, NULL, 0),
(1302, 0, '120.169.255.207', 'Server', NULL, NULL, NULL, 0),
(1303, 0, '36.69.159.208', 'Server', NULL, NULL, NULL, 0),
(1304, 0, '114.4.76.101', 'Server', NULL, NULL, NULL, 0),
(1305, 0, '114.4.78.21', 'Server', NULL, NULL, NULL, 0),
(1306, 0, '36.69.156.70', 'Server', NULL, NULL, NULL, 0),
(1307, 0, '114.4.79.48', 'Server', NULL, NULL, NULL, 0),
(1308, 0, '180.251.201.235', 'Server', NULL, NULL, NULL, 0),
(1309, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1310, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1311, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1312, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1313, 0, '192.168.7.44, 1', 'Server', NULL, NULL, NULL, 0),
(1314, 0, '114.4.78.34', 'Server', NULL, NULL, NULL, 0),
(1315, 0, '114.4.79.162', 'Server', NULL, NULL, NULL, 0),
(1316, 0, '114.4.78.49', 'Server', NULL, NULL, NULL, 0),
(1317, 0, '120.164.46.241', 'Server', NULL, NULL, NULL, 0),
(1318, 0, '114.4.79.46', 'Server', NULL, NULL, NULL, 0),
(1319, 0, '114.4.78.168', 'Server', NULL, NULL, NULL, 0),
(1320, 0, '125.161.63.177', 'Server', NULL, NULL, NULL, 0),
(1321, 0, '114.4.78.184', 'Server', NULL, NULL, NULL, 0),
(1322, 0, '114.4.77.169', 'Server', NULL, NULL, NULL, 0),
(1323, 0, '120.164.47.143', 'Server', NULL, NULL, NULL, 0),
(1324, 0, '114.4.78.218', 'Server', NULL, NULL, NULL, 0),
(1325, 0, '114.4.78.197', 'Server', NULL, NULL, NULL, 0),
(1326, 0, '36.71.159.204', 'Server', NULL, NULL, NULL, 0),
(1327, 0, '114.4.77.11', 'Server', NULL, NULL, NULL, 0),
(1328, 0, '114.4.77.93', 'Server', NULL, NULL, NULL, 0),
(1329, 0, '114.4.78.12', 'Server', NULL, NULL, NULL, 0),
(1330, 0, '114.4.78.179', 'Server', NULL, NULL, NULL, 0),
(1331, 0, '36.69.150.116', 'Server', NULL, NULL, NULL, 0),
(1332, 0, '114.4.78.37', 'Server', NULL, NULL, NULL, 0),
(1333, 0, '124.195.112.255', 'Server', NULL, NULL, NULL, 0),
(1334, 0, '114.4.77.32', 'Server', NULL, NULL, NULL, 0),
(1335, 0, '114.4.78.39', 'Server', NULL, NULL, NULL, 0),
(1336, 0, '114.4.77.216', 'Server', NULL, NULL, NULL, 0),
(1337, 0, '124.195.115.249', 'Server', NULL, NULL, NULL, 0),
(1338, 0, '114.4.76.132', 'Server', NULL, NULL, NULL, 0),
(1339, 0, '125.161.8.60', 'Server', NULL, NULL, NULL, 0),
(1340, 0, '36.69.171.65', 'Server', NULL, NULL, NULL, 0),
(1341, 0, '125.161.2.163', 'Server', NULL, NULL, NULL, 0),
(1342, 0, '114.4.79.181', 'Server', NULL, NULL, NULL, 0),
(1343, 0, '114.4.79.54', 'Server', NULL, NULL, NULL, 0),
(1344, 0, '120.169.255.163', 'Server', NULL, NULL, NULL, 0),
(1345, 0, '36.69.166.254', 'Server', NULL, NULL, NULL, 0),
(1346, 0, '114.4.79.53', 'Server', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tandatangan`
--

CREATE TABLE `tandatangan` (
  `ttdid` int(11) NOT NULL,
  `ttdjenis` varchar(255) DEFAULT NULL,
  `ttdnama` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_dana_detil`
--

CREATE TABLE `temp_dana_detil` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `kd_dana` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` mediumtext,
  `proses` tinyint(4) NOT NULL DEFAULT '0',
  `sub_program` int(11) DEFAULT NULL,
  `tipedana` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_ledger`
--

CREATE TABLE `temp_ledger` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `kd_akun` varchar(15) DEFAULT NULL,
  `posisi` char(2) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` mediumtext,
  `proses` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_penerimaan_audit_detil`
--

CREATE TABLE `temp_penerimaan_audit_detil` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `kd_akun` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` mediumtext,
  `proses` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_penerimaan_detil`
--

CREATE TABLE `temp_penerimaan_detil` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `kd_akun` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` mediumtext,
  `proses` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_pengeluaran_detil`
--

CREATE TABLE `temp_pengeluaran_detil` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `kd_akun` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `proses` tinyint(4) NOT NULL DEFAULT '0',
  `kd_budget` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_penyaluran_detil`
--

CREATE TABLE `temp_penyaluran_detil` (
  `counter` bigint(20) NOT NULL,
  `temp_id` bigint(20) NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `type_no` bigint(20) NOT NULL,
  `refno` varchar(25) NOT NULL,
  `sub_program` int(8) DEFAULT NULL,
  `kd_dana` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `proses` tinyint(4) NOT NULL DEFAULT '0',
  `kd_budget` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_penerimaan`
--

CREATE TABLE `tipe_penerimaan` (
  `tpid` int(11) NOT NULL,
  `tpkode` varchar(100) NOT NULL,
  `tpaktif` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_penerimaan`
--

INSERT INTO `tipe_penerimaan` (`tpid`, `tpkode`, `tpaktif`) VALUES
(1, 'Tunai', 1),
(2, 'Payroll', 1),
(3, 'Non Payroll', 1),
(4, 'Kontribusi Unit', 1),
(5, 'Ramadhan', 1),
(6, 'Bagi Hasil/Bunga Bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipe_transaksi`
--

CREATE TABLE `tipe_transaksi` (
  `type_id` smallint(6) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `alias` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_transaksi`
--

INSERT INTO `tipe_transaksi` (`type_id`, `name`, `type_no`, `alias`) VALUES
(0, 'Jurnal Umum', 169, 'JU'),
(1, 'Penerimaan Dana', 1763, 'TD'),
(2, 'Penyaluran Dana', 901, 'SD'),
(3, 'Penerimaan Lain', 370, 'TL'),
(4, 'Pengeluaran Lain', 859, 'SL'),
(5, 'Transfer Intern', 126, 'TI'),
(6, 'Pinjaman Antar Dana', 6, 'AD'),
(7, 'Pembelian Aset', 14, 'BA'),
(8, 'Penyusutan Aset', 25, 'SA'),
(9, 'Penjualan Aset', 5, 'JA'),
(10, 'RAB', 20, 'RA'),
(11, 'Penerimaan Dana Audit', 7, 'PDA'),
(12, 'Penyaluran Audit', 12, 'PNA');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_dana`
--

CREATE TABLE `transfer_dana` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `dari` varchar(30) DEFAULT NULL,
  `tujuan` varchar(30) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` mediumtext,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_intern`
--

CREATE TABLE `transfer_intern` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(20) NOT NULL DEFAULT '0',
  `refno` varchar(25) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `kredit_akun` varchar(30) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `memo_` mediumtext,
  `cre_user` varchar(0) DEFAULT NULL,
  `cre_date` date DEFAULT NULL,
  `kodeform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(8) NOT NULL,
  `rid` int(3) NOT NULL DEFAULT '0',
  `uname` varchar(16) NOT NULL,
  `upasswd` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `ukontak` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `rid`, `uname`, `upasswd`, `name`, `ukontak`) VALUES
(15, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(6, 1, 'Dani', '1c68e04954642d3cff06dcfa8371a937', 'Dani', 43),
(12, 1, 'Hafiz', 'fb29ed3264c5a92bcf74eccd7489e828', 'Hafiz', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_menu`
--

CREATE TABLE `users_menu` (
  `umid` int(11) NOT NULL,
  `umidmenu` int(11) NOT NULL,
  `umiduser` int(11) NOT NULL,
  `umbuka` tinyint(4) NOT NULL,
  `umtambah` tinyint(4) DEFAULT NULL,
  `umedit` tinyint(4) DEFAULT NULL,
  `umhapus` tinyint(4) DEFAULT NULL,
  `umapprove` tinyint(4) DEFAULT NULL,
  `umcetak` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_menu`
--

INSERT INTO `users_menu` (`umid`, `umidmenu`, `umiduser`, `umbuka`, `umtambah`, `umedit`, `umhapus`, `umapprove`, `umcetak`) VALUES
(1742, 70, 1, 1, 1, 0, 0, 0, 0),
(1741, 69, 1, 1, 1, 0, 0, 0, 0),
(1740, 68, 1, 1, 1, 0, 0, 0, 0),
(1739, 67, 1, 1, 1, 0, 0, 0, 0),
(1738, 66, 1, 1, 1, 0, 0, 0, 0),
(1737, 65, 1, 1, 1, 0, 0, 0, 0),
(1736, 64, 1, 1, 1, 0, 0, 0, 0),
(1735, 63, 1, 1, 1, 0, 0, 0, 0),
(1734, 62, 1, 1, 1, 0, 0, 0, 0),
(1733, 61, 1, 1, 1, 0, 0, 0, 0),
(1732, 60, 1, 1, 1, 0, 0, 0, 0),
(1731, 59, 1, 1, 1, 0, 0, 0, 0),
(1730, 58, 1, 1, 1, 0, 0, 0, 0),
(1729, 56, 1, 1, 1, 0, 0, 0, 0),
(1728, 55, 1, 1, 1, 0, 0, 0, 0),
(1727, 53, 1, 1, 1, 0, 0, 0, 0),
(1726, 52, 1, 1, 1, 0, 0, 0, 0),
(1725, 51, 1, 1, 1, 0, 0, 0, 0),
(1724, 50, 1, 1, 1, 1, 1, 1, 1),
(1723, 49, 1, 1, 1, 0, 0, 0, 0),
(1722, 48, 1, 1, 1, 0, 0, 0, 0),
(1721, 47, 1, 1, 1, 0, 0, 0, 0),
(1720, 46, 1, 1, 1, 0, 0, 0, 0),
(1719, 45, 1, 1, 1, 1, 1, 1, 1),
(1718, 44, 1, 1, 1, 0, 0, 0, 0),
(1717, 43, 1, 1, 1, 0, 0, 0, 0),
(1716, 42, 1, 1, 1, 0, 0, 0, 0),
(1715, 41, 1, 1, 1, 0, 0, 0, 0),
(1714, 40, 1, 1, 1, 0, 0, 0, 0),
(1713, 38, 1, 1, 1, 0, 0, 0, 0),
(1712, 37, 1, 1, 1, 0, 0, 0, 0),
(1711, 36, 1, 1, 1, 0, 0, 0, 0),
(1710, 35, 1, 1, 1, 0, 0, 0, 0),
(1709, 34, 1, 1, 1, 0, 0, 0, 0),
(1708, 33, 1, 1, 1, 0, 0, 0, 0),
(1707, 32, 1, 1, 1, 0, 0, 0, 0),
(1706, 31, 1, 1, 1, 0, 0, 0, 0),
(1705, 30, 1, 1, 1, 0, 0, 0, 0),
(1704, 29, 1, 1, 1, 0, 0, 0, 0),
(1703, 28, 1, 1, 1, 0, 0, 0, 0),
(1702, 27, 1, 1, 1, 0, 0, 0, 0),
(1701, 26, 1, 1, 1, 0, 0, 0, 0),
(1700, 25, 1, 1, 1, 0, 0, 0, 0),
(1699, 24, 1, 1, 1, 0, 0, 0, 0),
(1698, 23, 1, 1, 1, 0, 0, 0, 0),
(1697, 22, 1, 1, 1, 0, 0, 0, 0),
(1696, 21, 1, 1, 1, 0, 0, 0, 0),
(1695, 20, 1, 1, 1, 0, 0, 0, 0),
(1694, 19, 1, 1, 1, 0, 0, 0, 0),
(1693, 18, 1, 1, 1, 0, 0, 0, 0),
(1692, 17, 1, 1, 1, 0, 0, 0, 0),
(1691, 16, 1, 1, 1, 0, 0, 0, 0),
(1690, 13, 1, 1, 1, 0, 0, 0, 0),
(1689, 12, 1, 1, 1, 0, 0, 0, 0),
(3774, 86, 6, 1, 1, 1, 1, 1, 1),
(3773, 84, 6, 1, 1, 1, 1, 1, 1),
(3772, 83, 6, 1, 1, 1, 1, 1, 1),
(3771, 82, 6, 1, 1, 1, 1, 1, 1),
(3770, 81, 6, 1, 1, 1, 1, 1, 1),
(3769, 80, 6, 1, 1, 1, 1, 1, 1),
(3768, 79, 6, 1, 1, 1, 1, 1, 1),
(3767, 78, 6, 1, 1, 1, 1, 1, 1),
(3766, 77, 6, 1, 1, 1, 1, 1, 1),
(3765, 76, 6, 1, 1, 1, 1, 1, 1),
(3764, 75, 6, 1, 1, 1, 1, 1, 1),
(3763, 74, 6, 1, 1, 1, 1, 1, 1),
(3762, 73, 6, 1, 1, 1, 1, 1, 1),
(3761, 72, 6, 1, 1, 1, 1, 1, 1),
(3760, 71, 6, 1, 1, 1, 1, 1, 1),
(3759, 70, 6, 1, 1, 1, 1, 1, 1),
(3758, 69, 6, 1, 1, 1, 1, 1, 1),
(3757, 68, 6, 1, 1, 1, 1, 1, 1),
(3756, 67, 6, 1, 1, 1, 1, 1, 1),
(3755, 66, 6, 1, 1, 1, 1, 1, 1),
(3754, 65, 6, 1, 1, 1, 1, 1, 1),
(3753, 64, 6, 1, 1, 1, 1, 1, 1),
(3752, 63, 6, 1, 1, 1, 1, 1, 1),
(3751, 62, 6, 1, 1, 1, 1, 1, 1),
(3750, 61, 6, 1, 1, 1, 1, 1, 1),
(3749, 60, 6, 1, 1, 1, 1, 1, 1),
(3748, 59, 6, 1, 1, 1, 1, 1, 1),
(3747, 58, 6, 1, 1, 1, 1, 1, 1),
(3746, 56, 6, 1, 1, 1, 1, 1, 1),
(3745, 55, 6, 1, 1, 1, 1, 1, 1),
(3744, 53, 6, 1, 1, 1, 1, 1, 1),
(3743, 52, 6, 1, 1, 1, 1, 1, 1),
(3742, 51, 6, 1, 1, 1, 1, 1, 1),
(3741, 50, 6, 1, 1, 1, 1, 1, 1),
(3740, 49, 6, 1, 1, 1, 1, 1, 1),
(3739, 48, 6, 1, 1, 1, 1, 1, 1),
(3738, 47, 6, 1, 1, 1, 1, 1, 1),
(3737, 46, 6, 1, 1, 1, 1, 1, 1),
(3736, 45, 6, 1, 1, 1, 1, 1, 1),
(3735, 44, 6, 1, 1, 1, 1, 1, 1),
(3734, 43, 6, 1, 1, 1, 1, 1, 1),
(3733, 42, 6, 1, 1, 1, 1, 1, 1),
(3732, 41, 6, 1, 1, 1, 1, 1, 1),
(3731, 40, 6, 1, 1, 1, 1, 1, 1),
(3730, 38, 6, 1, 1, 1, 1, 1, 1),
(3729, 37, 6, 1, 1, 1, 1, 1, 1),
(3728, 36, 6, 1, 1, 1, 1, 1, 1),
(3727, 35, 6, 1, 1, 1, 1, 1, 1),
(3726, 34, 6, 1, 1, 1, 1, 1, 1),
(3725, 33, 6, 1, 1, 1, 1, 1, 1),
(3724, 32, 6, 1, 1, 1, 1, 1, 1),
(3723, 31, 6, 1, 1, 1, 1, 1, 1),
(3722, 30, 6, 1, 1, 1, 1, 1, 1),
(3721, 29, 6, 1, 1, 1, 1, 1, 1),
(1863, 61, 8, 0, 0, 0, 0, 0, 1),
(1862, 60, 8, 0, 0, 0, 0, 0, 1),
(1861, 59, 8, 1, 0, 0, 0, 0, 0),
(1860, 58, 8, 1, 0, 0, 0, 0, 0),
(1859, 56, 8, 0, 0, 0, 0, 0, 1),
(1858, 55, 8, 0, 0, 0, 0, 0, 1),
(1857, 53, 8, 0, 0, 0, 0, 0, 1),
(1856, 52, 8, 0, 0, 0, 0, 0, 1),
(1855, 51, 8, 0, 0, 0, 0, 0, 1),
(1854, 50, 8, 1, 0, 0, 0, 0, 0),
(1853, 49, 8, 0, 0, 0, 0, 0, 1),
(1852, 48, 8, 0, 0, 0, 0, 0, 1),
(1851, 47, 8, 0, 0, 0, 0, 0, 1),
(1850, 46, 8, 0, 0, 0, 0, 0, 1),
(1849, 45, 8, 0, 0, 0, 0, 0, 1),
(1848, 44, 8, 0, 0, 0, 0, 0, 1),
(1847, 43, 8, 0, 0, 0, 0, 0, 1),
(1846, 42, 8, 0, 0, 0, 0, 0, 1),
(1845, 41, 8, 0, 0, 0, 0, 0, 1),
(1844, 40, 8, 0, 0, 0, 0, 0, 1),
(1843, 38, 8, 0, 0, 0, 0, 0, 1),
(1842, 37, 8, 0, 0, 0, 0, 0, 1),
(1841, 36, 8, 0, 0, 0, 0, 0, 1),
(1840, 35, 8, 0, 0, 0, 0, 0, 1),
(1839, 34, 8, 0, 0, 0, 0, 0, 1),
(1838, 33, 8, 0, 0, 0, 0, 0, 1),
(1837, 32, 8, 0, 0, 0, 0, 0, 1),
(1836, 31, 8, 0, 0, 0, 0, 0, 1),
(1835, 30, 8, 0, 0, 0, 0, 0, 1),
(1834, 29, 8, 1, 1, 0, 0, 0, 1),
(1833, 28, 8, 1, 1, 0, 0, 0, 1),
(1832, 27, 8, 0, 0, 0, 0, 0, 1),
(1831, 26, 8, 0, 0, 0, 0, 0, 1),
(1830, 25, 8, 0, 0, 0, 0, 0, 1),
(1829, 24, 8, 0, 0, 0, 0, 0, 1),
(1828, 23, 8, 0, 0, 0, 0, 0, 1),
(1827, 22, 8, 1, 1, 0, 0, 0, 1),
(1826, 21, 8, 0, 0, 0, 0, 0, 1),
(1825, 20, 8, 0, 0, 0, 0, 0, 0),
(1824, 19, 8, 0, 0, 0, 0, 0, 1),
(1823, 18, 8, 0, 0, 0, 0, 0, 1),
(1822, 17, 8, 0, 0, 0, 0, 0, 1),
(1821, 16, 8, 0, 0, 0, 0, 0, 1),
(1820, 13, 8, 0, 0, 0, 0, 0, 1),
(1819, 12, 8, 0, 0, 0, 0, 0, 1),
(1818, 11, 8, 0, 0, 0, 0, 0, 1),
(1817, 10, 8, 0, 0, 0, 0, 0, 1),
(1816, 9, 8, 1, 1, 1, 0, 0, 1),
(1815, 8, 8, 0, 0, 0, 0, 0, 1),
(1814, 7, 8, 0, 0, 0, 0, 0, 1),
(1813, 6, 8, 0, 0, 0, 0, 0, 1),
(1812, 5, 8, 0, 0, 0, 0, 0, 1),
(1811, 4, 8, 0, 0, 0, 0, 0, 1),
(1810, 3, 8, 0, 0, 0, 0, 0, 1),
(1688, 11, 1, 1, 1, 0, 0, 0, 0),
(1687, 10, 1, 0, 0, 0, 0, 0, 0),
(3720, 28, 6, 1, 1, 1, 1, 1, 1),
(3719, 27, 6, 1, 1, 1, 1, 1, 1),
(1809, 2, 8, 1, 1, 0, 0, 0, 1),
(1808, 1, 8, 1, 1, 0, 0, 0, 1),
(1928, 61, 9, 0, 0, 0, 0, 0, 0),
(1927, 60, 9, 0, 0, 0, 0, 0, 0),
(1926, 59, 9, 1, 0, 0, 0, 0, 1),
(1925, 58, 9, 1, 0, 0, 0, 0, 1),
(1924, 56, 9, 0, 0, 0, 0, 0, 0),
(1923, 55, 9, 0, 0, 0, 0, 0, 0),
(1922, 53, 9, 0, 0, 0, 0, 0, 0),
(1921, 52, 9, 0, 0, 0, 0, 0, 0),
(1920, 51, 9, 0, 0, 0, 0, 0, 0),
(1919, 50, 9, 1, 0, 0, 0, 0, 1),
(1918, 49, 9, 0, 0, 0, 0, 0, 0),
(1917, 48, 9, 0, 0, 0, 0, 0, 0),
(1916, 47, 9, 0, 0, 0, 0, 0, 0),
(1915, 46, 9, 0, 0, 0, 0, 0, 0),
(1914, 45, 9, 0, 0, 0, 0, 0, 0),
(1913, 44, 9, 0, 0, 0, 0, 0, 0),
(1912, 43, 9, 0, 0, 0, 0, 0, 0),
(1911, 42, 9, 0, 0, 0, 0, 0, 0),
(1910, 41, 9, 0, 0, 0, 0, 0, 0),
(1909, 40, 9, 0, 0, 0, 0, 0, 0),
(1908, 38, 9, 0, 0, 0, 0, 0, 0),
(1907, 37, 9, 0, 0, 0, 0, 0, 0),
(1906, 36, 9, 0, 0, 0, 0, 0, 0),
(1905, 35, 9, 0, 0, 0, 0, 0, 0),
(1904, 34, 9, 0, 0, 0, 0, 0, 0),
(1903, 33, 9, 0, 0, 0, 0, 0, 0),
(1902, 32, 9, 0, 0, 0, 0, 0, 0),
(1901, 31, 9, 0, 0, 0, 0, 0, 0),
(1900, 30, 9, 0, 0, 0, 0, 0, 0),
(1899, 29, 9, 0, 0, 0, 0, 0, 0),
(1898, 28, 9, 0, 0, 0, 0, 0, 0),
(1897, 27, 9, 0, 0, 0, 0, 0, 0),
(1896, 26, 9, 0, 0, 0, 0, 0, 0),
(1895, 25, 9, 0, 0, 0, 0, 0, 0),
(1894, 24, 9, 0, 0, 0, 0, 0, 0),
(1893, 23, 9, 0, 0, 0, 0, 0, 0),
(1892, 22, 9, 0, 0, 0, 0, 0, 0),
(1891, 21, 9, 0, 0, 0, 0, 0, 0),
(1890, 20, 9, 0, 0, 0, 0, 0, 0),
(1889, 19, 9, 0, 0, 0, 0, 0, 0),
(1888, 18, 9, 0, 0, 0, 0, 0, 0),
(1887, 17, 9, 0, 0, 0, 0, 0, 0),
(1886, 16, 9, 0, 0, 0, 0, 0, 0),
(1885, 13, 9, 0, 0, 0, 0, 0, 0),
(1884, 12, 9, 0, 0, 0, 0, 0, 0),
(1883, 11, 9, 0, 0, 0, 0, 0, 0),
(1882, 10, 9, 0, 0, 0, 0, 0, 0),
(1881, 9, 9, 0, 0, 0, 0, 0, 0),
(1880, 8, 9, 0, 0, 0, 0, 0, 0),
(1879, 7, 9, 0, 0, 0, 0, 0, 0),
(1878, 6, 9, 0, 0, 0, 0, 0, 0),
(1877, 5, 9, 0, 0, 0, 0, 0, 0),
(1876, 4, 9, 1, 0, 0, 0, 0, 1),
(1875, 3, 9, 0, 0, 0, 0, 0, 0),
(1874, 2, 9, 0, 0, 0, 0, 0, 0),
(1873, 1, 9, 0, 0, 0, 0, 0, 0),
(1346, 61, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1345, 60, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1344, 59, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1343, 58, 10, 1, NULL, NULL, NULL, NULL, NULL),
(1342, 56, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1341, 55, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1340, 53, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1339, 52, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1338, 51, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1337, 50, 10, 1, NULL, NULL, NULL, NULL, NULL),
(1336, 49, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1335, 48, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1334, 47, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1333, 46, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1332, 45, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1331, 44, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1330, 43, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1329, 42, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1328, 41, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1327, 40, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1326, 38, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1325, 37, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1324, 36, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1323, 35, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1322, 34, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1321, 33, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1320, 32, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1319, 31, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1318, 30, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1317, 29, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1316, 28, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1315, 27, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1314, 26, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1313, 25, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1312, 24, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1311, 23, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1310, 22, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1309, 21, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1308, 20, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1307, 19, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1306, 18, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1305, 17, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1304, 16, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1303, 13, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1302, 12, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1301, 11, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1300, 10, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1299, 9, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1298, 8, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1297, 7, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1296, 6, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1295, 5, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1294, 4, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1293, 3, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1292, 2, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1291, 1, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1226, 69, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1225, 68, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1224, 67, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1223, 66, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1222, 65, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1221, 64, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1220, 63, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1219, 62, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1218, 61, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1217, 60, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1216, 59, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1215, 58, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1214, 56, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1213, 55, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1212, 53, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1211, 52, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1210, 51, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1209, 50, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1208, 49, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1207, 48, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1206, 47, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1205, 46, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1204, 45, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1203, 44, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1202, 43, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1201, 42, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1200, 41, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1199, 40, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1198, 38, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1197, 37, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1196, 36, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1195, 35, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1194, 34, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1193, 33, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1192, 32, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1191, 31, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1190, 30, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1189, 29, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1188, 28, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1187, 27, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1186, 26, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1185, 25, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1184, 24, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1183, 23, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1182, 22, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1181, 21, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1180, 20, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1179, 19, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1178, 18, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1177, 17, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1176, 16, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1175, 13, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1174, 12, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1173, 11, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1172, 10, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1171, 9, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1686, 9, 1, 1, 1, 0, 0, 0, 0),
(1685, 8, 1, 1, 1, 0, 0, 0, 0),
(1684, 7, 1, 1, 1, 0, 0, 0, 0),
(1683, 6, 1, 1, 1, 0, 0, 0, 0),
(1682, 5, 1, 1, 1, 0, 0, 0, 0),
(1681, 4, 1, 1, 1, 1, 1, 1, 1),
(1680, 3, 1, 1, 1, 1, 1, 1, 1),
(1679, 2, 1, 1, 1, 1, 1, 1, 1),
(3718, 26, 6, 1, 1, 1, 1, 1, 1),
(3717, 25, 6, 1, 1, 1, 1, 1, 1),
(3716, 24, 6, 1, 1, 1, 1, 1, 1),
(3715, 23, 6, 1, 1, 1, 1, 1, 1),
(3714, 22, 6, 1, 1, 1, 1, 1, 1),
(3713, 21, 6, 1, 1, 1, 1, 1, 1),
(3712, 20, 6, 0, 0, 0, 0, 0, 0),
(3711, 19, 6, 1, 1, 1, 1, 1, 1),
(1170, 8, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1169, 7, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1168, 6, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1167, 5, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1166, 4, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1165, 3, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1164, 2, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1163, 1, 11, 0, NULL, NULL, NULL, NULL, NULL),
(1347, 62, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1348, 63, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1349, 64, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1350, 65, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1351, 66, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1352, 67, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1353, 68, 10, 0, NULL, NULL, NULL, NULL, NULL),
(1354, 69, 10, 0, NULL, NULL, NULL, NULL, NULL),
(3693, 86, 12, 1, 1, 1, 1, 1, 1),
(3692, 84, 12, 1, 1, 1, 1, 1, 1),
(3691, 83, 12, 1, 1, 1, 1, 1, 1),
(3690, 82, 12, 1, 1, 1, 1, 1, 1),
(3689, 81, 12, 1, 1, 1, 1, 1, 1),
(3688, 80, 12, 1, 1, 1, 1, 1, 1),
(3687, 79, 12, 1, 1, 1, 1, 1, 1),
(3686, 78, 12, 1, 1, 1, 1, 1, 1),
(3685, 77, 12, 1, 1, 1, 1, 1, 1),
(3684, 76, 12, 1, 1, 1, 1, 1, 1),
(3683, 75, 12, 1, 1, 1, 1, 1, 1),
(3682, 74, 12, 1, 1, 1, 1, 1, 1),
(3681, 73, 12, 1, 1, 1, 1, 1, 1),
(3680, 72, 12, 1, 1, 1, 1, 1, 1),
(3679, 71, 12, 1, 1, 1, 1, 1, 1),
(3678, 70, 12, 1, 1, 1, 1, 1, 1),
(3677, 69, 12, 1, 1, 1, 1, 1, 1),
(3676, 68, 12, 1, 1, 1, 1, 1, 1),
(3675, 67, 12, 1, 1, 1, 1, 1, 1),
(3674, 66, 12, 1, 1, 1, 1, 1, 1),
(3673, 65, 12, 1, 1, 1, 1, 1, 1),
(3672, 64, 12, 1, 1, 1, 1, 1, 1),
(3671, 63, 12, 1, 1, 1, 1, 1, 1),
(3670, 62, 12, 1, 1, 1, 1, 1, 1),
(3669, 61, 12, 1, 1, 1, 1, 1, 1),
(3668, 60, 12, 1, 1, 1, 1, 1, 1),
(3667, 59, 12, 1, 1, 1, 1, 1, 1),
(3666, 58, 12, 1, 1, 1, 1, 1, 1),
(3665, 56, 12, 1, 1, 1, 1, 1, 1),
(3664, 55, 12, 1, 1, 1, 1, 1, 1),
(3663, 53, 12, 1, 1, 1, 1, 1, 1),
(3662, 52, 12, 1, 1, 1, 1, 1, 1),
(3661, 51, 12, 1, 1, 1, 1, 1, 1),
(3660, 50, 12, 1, 1, 1, 1, 1, 1),
(3659, 49, 12, 1, 1, 1, 1, 1, 1),
(3658, 48, 12, 1, 1, 1, 1, 1, 1),
(3657, 47, 12, 1, 1, 1, 1, 1, 1),
(3656, 46, 12, 1, 1, 1, 1, 1, 1),
(3655, 45, 12, 1, 1, 1, 1, 1, 1),
(3654, 44, 12, 1, 1, 1, 1, 1, 1),
(3653, 43, 12, 1, 1, 1, 1, 1, 1),
(3652, 42, 12, 1, 1, 1, 1, 1, 1),
(3651, 41, 12, 1, 1, 1, 1, 1, 1),
(3650, 40, 12, 1, 1, 1, 1, 1, 1),
(3649, 38, 12, 1, 1, 1, 1, 1, 1),
(3648, 37, 12, 1, 1, 1, 1, 1, 1),
(3647, 36, 12, 1, 1, 1, 1, 1, 1),
(3646, 35, 12, 1, 1, 1, 1, 1, 1),
(3645, 34, 12, 1, 1, 1, 1, 1, 1),
(3644, 33, 12, 1, 1, 1, 1, 1, 1),
(3643, 32, 12, 1, 1, 1, 1, 1, 1),
(3642, 31, 12, 1, 1, 1, 1, 1, 1),
(3641, 30, 12, 1, 1, 1, 1, 1, 1),
(3640, 29, 12, 1, 1, 1, 1, 1, 1),
(3639, 28, 12, 1, 1, 1, 1, 1, 1),
(3638, 27, 12, 1, 1, 1, 1, 1, 1),
(3637, 26, 12, 1, 1, 1, 1, 1, 1),
(3636, 25, 12, 1, 1, 1, 1, 1, 1),
(3635, 24, 12, 1, 1, 1, 1, 1, 1),
(3634, 23, 12, 1, 1, 1, 1, 1, 1),
(3633, 22, 12, 1, 1, 1, 1, 1, 1),
(3632, 21, 12, 1, 1, 1, 1, 1, 1),
(3631, 20, 12, 0, 0, 0, 0, 0, 0),
(3630, 19, 12, 1, 1, 1, 1, 1, 1),
(1678, 1, 1, 1, 1, 1, 1, 1, 1),
(3629, 18, 12, 1, 1, 1, 1, 1, 1),
(3710, 18, 6, 1, 1, 1, 1, 1, 1),
(1864, 62, 8, 0, 0, 0, 0, 0, 1),
(1865, 63, 8, 0, 0, 0, 0, 0, 1),
(1866, 64, 8, 0, 0, 0, 0, 0, 1),
(1867, 65, 8, 0, 0, 0, 0, 0, 1),
(1868, 66, 8, 0, 0, 0, 0, 0, 1),
(1869, 67, 8, 0, 0, 0, 0, 0, 1),
(1870, 68, 8, 0, 0, 0, 0, 0, 1),
(1871, 69, 8, 0, 0, 0, 0, 0, 1),
(1872, 70, 8, 0, 0, 0, 0, 0, 1),
(1929, 62, 9, 1, 0, 0, 0, 0, 1),
(1930, 63, 9, 0, 0, 0, 0, 0, 0),
(1931, 64, 9, 0, 0, 0, 0, 0, 0),
(1932, 65, 9, 0, 0, 0, 0, 0, 0),
(1933, 66, 9, 0, 0, 0, 0, 0, 0),
(1934, 67, 9, 0, 0, 0, 0, 0, 0),
(1935, 68, 9, 0, 0, 0, 0, 0, 0),
(1936, 69, 9, 0, 0, 0, 0, 0, 0),
(1937, 70, 9, 0, 0, 0, 0, 0, 0),
(1938, 1, 13, 0, 0, 0, 0, 0, 0),
(1939, 2, 13, 1, 0, 0, 0, 1, 0),
(1940, 3, 13, 0, 0, 0, 0, 0, 0),
(1941, 4, 13, 1, 0, 0, 0, 0, 0),
(1942, 5, 13, 0, 0, 0, 0, 0, 0),
(1943, 6, 13, 0, 0, 0, 0, 0, 0),
(1944, 7, 13, 0, 0, 0, 0, 0, 0),
(1945, 8, 13, 0, 0, 0, 0, 0, 0),
(1946, 9, 13, 0, 0, 0, 0, 0, 0),
(1947, 10, 13, 0, 0, 0, 0, 0, 0),
(1948, 11, 13, 0, 0, 0, 0, 0, 0),
(1949, 12, 13, 0, 0, 0, 0, 0, 0),
(1950, 13, 13, 0, 0, 0, 0, 0, 0),
(1951, 16, 13, 0, 0, 0, 0, 0, 0),
(1952, 17, 13, 0, 0, 0, 0, 0, 0),
(1953, 18, 13, 0, 0, 0, 0, 0, 0),
(1954, 19, 13, 0, 0, 0, 0, 0, 0),
(1955, 20, 13, 0, 0, 0, 0, 0, 0),
(1956, 21, 13, 1, 0, 0, 0, 1, 0),
(1957, 22, 13, 1, 0, 0, 0, 1, 0),
(1958, 23, 13, 0, 0, 0, 0, 0, 0),
(1959, 24, 13, 0, 0, 0, 0, 0, 0),
(1960, 25, 13, 0, 0, 0, 0, 0, 0),
(1961, 26, 13, 1, 0, 0, 0, 1, 0),
(1962, 27, 13, 1, 0, 0, 0, 1, 0),
(1963, 28, 13, 1, 0, 0, 0, 1, 0),
(1964, 29, 13, 1, 0, 0, 0, 1, 0),
(1965, 30, 13, 0, 0, 0, 0, 0, 0),
(1966, 31, 13, 0, 0, 0, 0, 0, 0),
(1967, 32, 13, 0, 0, 0, 0, 0, 0),
(1968, 33, 13, 0, 0, 0, 0, 0, 0),
(1969, 34, 13, 0, 0, 0, 0, 0, 0),
(1970, 35, 13, 0, 0, 0, 0, 0, 0),
(1971, 36, 13, 0, 0, 0, 0, 0, 0),
(1972, 37, 13, 0, 0, 0, 0, 0, 0),
(1973, 38, 13, 0, 0, 0, 0, 0, 0),
(1974, 40, 13, 0, 0, 0, 0, 0, 0),
(1975, 41, 13, 0, 0, 0, 0, 0, 0),
(1976, 42, 13, 0, 0, 0, 0, 0, 0),
(1977, 43, 13, 0, 0, 0, 0, 0, 0),
(1978, 44, 13, 0, 0, 0, 0, 0, 0),
(1979, 45, 13, 0, 0, 0, 0, 0, 0),
(1980, 46, 13, 0, 0, 0, 0, 0, 0),
(1981, 47, 13, 0, 0, 0, 0, 0, 0),
(1982, 48, 13, 0, 0, 0, 0, 0, 0),
(1983, 49, 13, 0, 0, 0, 0, 0, 0),
(1984, 50, 13, 0, 0, 0, 0, 0, 0),
(1985, 51, 13, 0, 0, 0, 0, 0, 0),
(1986, 52, 13, 0, 0, 0, 0, 0, 0),
(1987, 53, 13, 0, 0, 0, 0, 0, 0),
(1988, 55, 13, 0, 0, 0, 0, 0, 0),
(1989, 56, 13, 0, 0, 0, 0, 0, 0),
(1990, 58, 13, 0, 0, 0, 0, 0, 0),
(1991, 59, 13, 0, 0, 0, 0, 0, 0),
(1992, 60, 13, 0, 0, 0, 0, 0, 0),
(1993, 61, 13, 0, 0, 0, 0, 0, 0),
(1994, 62, 13, 1, 0, 0, 0, 0, 0),
(1995, 63, 13, 0, 0, 0, 0, 0, 0),
(1996, 64, 13, 1, 0, 0, 0, 0, 0),
(1997, 65, 13, 0, 0, 0, 0, 0, 0),
(1998, 66, 13, 0, 0, 0, 0, 0, 0),
(1999, 67, 13, 0, 0, 0, 0, 0, 0),
(2000, 68, 13, 0, 0, 0, 0, 0, 0),
(2001, 69, 13, 0, 0, 0, 0, 0, 0),
(2002, 70, 13, 0, 0, 0, 0, 0, 0),
(3628, 17, 12, 1, 1, 1, 1, 1, 1),
(3627, 16, 12, 1, 1, 1, 1, 1, 1),
(3709, 17, 6, 1, 1, 1, 1, 1, 1),
(3708, 16, 6, 1, 1, 1, 1, 1, 1),
(3626, 13, 12, 1, 1, 1, 1, 1, 1),
(3625, 12, 12, 1, 1, 1, 1, 1, 1),
(3624, 11, 12, 1, 1, 1, 1, 1, 1),
(3623, 10, 12, 1, 1, 1, 1, 1, 1),
(3622, 9, 12, 1, 1, 1, 1, 1, 1),
(3621, 8, 12, 1, 1, 1, 1, 1, 1),
(3620, 7, 12, 1, 1, 1, 1, 1, 1),
(3619, 6, 12, 1, 1, 1, 1, 1, 1),
(3618, 5, 12, 1, 1, 1, 1, 1, 1),
(3617, 4, 12, 1, 1, 1, 1, 1, 1),
(3707, 13, 6, 1, 1, 1, 1, 1, 1),
(3706, 12, 6, 1, 1, 1, 1, 1, 1),
(3705, 11, 6, 1, 1, 1, 1, 1, 1),
(3704, 10, 6, 1, 1, 1, 1, 1, 1),
(3703, 9, 6, 1, 1, 1, 1, 1, 1),
(3702, 8, 6, 1, 1, 1, 1, 1, 1),
(3701, 7, 6, 1, 1, 1, 1, 1, 1),
(3700, 6, 6, 1, 1, 1, 1, 1, 1),
(3699, 5, 6, 1, 1, 1, 1, 1, 1),
(3698, 4, 6, 1, 1, 1, 1, 1, 1),
(3697, 3, 6, 1, 1, 1, 1, 1, 1),
(3616, 3, 12, 1, 1, 1, 1, 1, 1),
(3615, 2, 12, 1, 1, 1, 1, 1, 1),
(3614, 1, 12, 1, 1, 1, 1, 1, 1),
(3375, 1, 14, 0, 0, 0, 0, 0, 0),
(3376, 2, 14, 1, 0, 0, 0, 0, 0),
(3377, 3, 14, 0, 0, 0, 0, 0, 0),
(3378, 4, 14, 1, 0, 0, 0, 0, 0),
(3379, 5, 14, 0, 0, 0, 0, 0, 0),
(3380, 6, 14, 0, 0, 0, 0, 0, 0),
(3381, 7, 14, 0, 0, 0, 0, 0, 0),
(3382, 8, 14, 0, 0, 0, 0, 0, 0),
(3383, 9, 14, 0, 0, 0, 0, 0, 0),
(3384, 10, 14, 0, 0, 0, 0, 0, 0),
(3385, 11, 14, 0, 0, 0, 0, 0, 0),
(3386, 12, 14, 0, 0, 0, 0, 0, 0),
(3387, 13, 14, 0, 0, 0, 0, 0, 0),
(3388, 16, 14, 0, 0, 0, 0, 0, 0),
(3389, 17, 14, 0, 0, 0, 0, 0, 0),
(3390, 18, 14, 0, 0, 0, 0, 0, 0),
(3391, 19, 14, 0, 0, 0, 0, 0, 0),
(3392, 20, 14, 0, 0, 0, 0, 0, 0),
(3393, 21, 14, 1, 0, 0, 0, 0, 0),
(3394, 22, 14, 1, 0, 0, 0, 0, 0),
(3395, 23, 14, 1, 0, 0, 0, 0, 0),
(3396, 24, 14, 0, 0, 0, 0, 0, 0),
(3397, 25, 14, 1, 0, 0, 0, 0, 0),
(3398, 26, 14, 1, 0, 0, 0, 0, 0),
(3399, 27, 14, 1, 0, 0, 0, 0, 0),
(3400, 28, 14, 1, 0, 0, 0, 0, 0),
(3401, 29, 14, 1, 0, 0, 0, 0, 0),
(3402, 30, 14, 1, 0, 0, 0, 0, 0),
(3403, 31, 14, 0, 0, 0, 0, 0, 0),
(3404, 32, 14, 0, 0, 0, 0, 0, 0),
(3405, 33, 14, 0, 0, 0, 0, 0, 0),
(3406, 34, 14, 0, 0, 0, 0, 0, 0),
(3407, 35, 14, 0, 0, 0, 0, 0, 0),
(3408, 36, 14, 1, 0, 0, 0, 0, 0),
(3409, 37, 14, 0, 0, 0, 0, 0, 0),
(3410, 38, 14, 0, 0, 0, 0, 0, 0),
(3411, 40, 14, 0, 0, 0, 0, 0, 0),
(3412, 41, 14, 0, 0, 0, 0, 0, 0),
(3413, 42, 14, 0, 0, 0, 0, 0, 0),
(3414, 43, 14, 0, 0, 0, 0, 0, 0),
(3415, 44, 14, 0, 0, 0, 0, 0, 0),
(3416, 45, 14, 0, 0, 0, 0, 0, 0),
(3417, 46, 14, 0, 0, 0, 0, 0, 0),
(3418, 47, 14, 0, 0, 0, 0, 0, 0),
(3419, 48, 14, 0, 0, 0, 0, 0, 0),
(3420, 49, 14, 0, 0, 0, 0, 0, 0),
(3421, 50, 14, 0, 0, 0, 0, 0, 0),
(3422, 51, 14, 0, 0, 0, 0, 0, 0),
(3423, 52, 14, 0, 0, 0, 0, 0, 0),
(3424, 53, 14, 0, 0, 0, 0, 0, 0),
(3425, 55, 14, 0, 0, 0, 0, 0, 0),
(3426, 56, 14, 0, 0, 0, 0, 0, 0),
(3427, 58, 14, 0, 0, 0, 0, 0, 0),
(3428, 59, 14, 0, 0, 0, 0, 0, 0),
(3429, 60, 14, 0, 0, 0, 0, 0, 0),
(3430, 61, 14, 0, 0, 0, 0, 0, 0),
(3431, 62, 14, 1, 0, 0, 0, 0, 0),
(3432, 63, 14, 0, 0, 0, 0, 0, 0),
(3433, 64, 14, 0, 0, 0, 0, 0, 0),
(3434, 65, 14, 0, 0, 0, 0, 0, 0),
(3435, 66, 14, 0, 0, 0, 0, 0, 0),
(3436, 67, 14, 0, 0, 0, 0, 0, 0),
(3437, 68, 14, 0, 0, 0, 0, 0, 0),
(3438, 69, 14, 0, 0, 0, 0, 0, 0),
(3439, 70, 14, 0, 0, 0, 0, 0, 0),
(3440, 71, 14, 1, 0, 0, 0, 0, 0),
(3441, 72, 14, 1, 0, 0, 0, 0, 0),
(3442, 73, 14, 0, 0, 0, 0, 0, 0),
(3443, 74, 14, 0, 0, 0, 0, 0, 0),
(3444, 75, 14, 0, 0, 0, 0, 0, 0),
(3445, 76, 14, 0, 0, 0, 0, 0, 0),
(3446, 77, 14, 0, 0, 0, 0, 0, 0),
(3447, 78, 14, 0, 0, 0, 0, 0, 0),
(3448, 79, 14, 0, 0, 0, 0, 0, 0),
(3449, 80, 14, 0, 0, 0, 0, 0, 0),
(3450, 81, 14, 0, 0, 0, 0, 0, 0),
(3451, 82, 14, 0, 0, 0, 0, 0, 0),
(3452, 83, 14, 0, 0, 0, 0, 0, 0),
(3453, 84, 14, 0, 0, 0, 0, 0, 0),
(3696, 2, 6, 1, 1, 1, 1, 1, 1),
(3695, 1, 6, 1, 1, 1, 1, 1, 1),
(3694, 87, 12, 1, 1, 1, 1, 1, 1),
(3775, 87, 6, 1, 1, 1, 1, 1, 1),
(3776, 1, 15, 1, 1, 1, 1, 1, 1),
(3777, 2, 15, 1, 1, 1, 1, 1, 1),
(3778, 3, 15, 0, 1, 1, 1, 1, 1),
(3779, 4, 15, 1, 1, 1, 1, 1, 1),
(3780, 5, 15, 1, 1, 1, 1, 1, 1),
(3781, 6, 15, 1, 1, 1, 1, 1, 1),
(3782, 7, 15, 1, 1, 1, 1, 1, 1),
(3783, 8, 15, 1, 1, 1, 1, 1, 1),
(3784, 9, 15, 1, 1, 1, 1, 1, 1),
(3785, 10, 15, 1, 1, 1, 1, 1, 1),
(3786, 11, 15, 1, 1, 1, 1, 1, 1),
(3787, 12, 15, 1, 1, 1, 1, 1, 1),
(3788, 13, 15, 1, 1, 1, 1, 1, 1),
(3789, 16, 15, 1, 1, 1, 1, 1, 1),
(3790, 17, 15, 1, 1, 1, 1, 1, 1),
(3791, 18, 15, 1, 1, 1, 1, 1, 1),
(3792, 19, 15, 0, 1, 1, 1, 1, 1),
(3793, 20, 15, 0, 0, 0, 0, 0, 0),
(3794, 21, 15, 1, 1, 1, 1, 1, 1),
(3795, 22, 15, 1, 1, 1, 1, 1, 1),
(3796, 23, 15, 1, 1, 1, 1, 1, 1),
(3797, 24, 15, 1, 1, 1, 1, 1, 1),
(3798, 25, 15, 1, 1, 1, 1, 1, 1),
(3799, 26, 15, 1, 1, 1, 1, 1, 1),
(3800, 27, 15, 1, 1, 1, 1, 1, 1),
(3801, 28, 15, 1, 1, 1, 1, 1, 1),
(3802, 29, 15, 1, 1, 1, 1, 1, 1),
(3803, 30, 15, 1, 1, 1, 1, 1, 1),
(3804, 31, 15, 1, 1, 1, 1, 1, 1),
(3805, 32, 15, 1, 1, 1, 1, 1, 1),
(3806, 33, 15, 1, 1, 1, 1, 1, 1),
(3807, 34, 15, 1, 1, 1, 1, 1, 1),
(3808, 35, 15, 1, 1, 1, 1, 1, 1),
(3809, 36, 15, 1, 1, 1, 1, 1, 1),
(3810, 37, 15, 1, 1, 1, 1, 1, 1),
(3811, 38, 15, 0, 1, 1, 1, 1, 1),
(3812, 40, 15, 1, 1, 1, 1, 1, 1),
(3813, 41, 15, 1, 1, 1, 1, 1, 1),
(3814, 42, 15, 1, 1, 1, 1, 1, 1),
(3815, 43, 15, 1, 1, 1, 1, 1, 1),
(3816, 44, 15, 1, 1, 1, 1, 1, 1),
(3817, 45, 15, 1, 1, 1, 1, 1, 1),
(3818, 46, 15, 1, 1, 1, 1, 1, 1),
(3819, 47, 15, 0, 1, 1, 1, 1, 1),
(3820, 48, 15, 0, 1, 1, 1, 1, 1),
(3821, 49, 15, 1, 1, 1, 1, 1, 1),
(3822, 50, 15, 0, 1, 1, 1, 1, 1),
(3823, 51, 15, 1, 1, 1, 1, 1, 1),
(3824, 52, 15, 1, 1, 1, 1, 1, 1),
(3825, 53, 15, 1, 1, 1, 1, 1, 1),
(3826, 55, 15, 1, 1, 1, 1, 1, 1),
(3827, 56, 15, 1, 1, 1, 1, 1, 1),
(3828, 58, 15, 1, 1, 1, 1, 1, 1),
(3829, 59, 15, 1, 1, 1, 1, 1, 1),
(3830, 60, 15, 1, 1, 1, 1, 1, 1),
(3831, 61, 15, 1, 1, 1, 1, 1, 1),
(3832, 62, 15, 1, 1, 1, 1, 1, 1),
(3833, 63, 15, 1, 1, 1, 1, 1, 1),
(3834, 64, 15, 1, 1, 1, 1, 1, 1),
(3835, 65, 15, 1, 1, 1, 1, 1, 1),
(3836, 66, 15, 1, 1, 1, 1, 1, 1),
(3837, 67, 15, 0, 1, 1, 1, 1, 1),
(3838, 68, 15, 1, 1, 1, 1, 1, 1),
(3839, 69, 15, 1, 1, 1, 1, 1, 1),
(3840, 70, 15, 1, 1, 1, 1, 1, 1),
(3841, 71, 15, 1, 1, 1, 1, 1, 1),
(3842, 72, 15, 1, 1, 1, 1, 1, 1),
(3843, 73, 15, 1, 1, 1, 1, 1, 1),
(3844, 74, 15, 1, 1, 1, 1, 1, 1),
(3845, 75, 15, 0, 1, 1, 1, 1, 1),
(3846, 76, 15, 1, 1, 1, 1, 1, 1),
(3847, 77, 15, 1, 1, 1, 1, 1, 1),
(3848, 78, 15, 1, 1, 1, 1, 1, 1),
(3849, 79, 15, 1, 1, 1, 1, 1, 1),
(3850, 80, 15, 1, 1, 1, 1, 1, 1),
(3851, 81, 15, 1, 1, 1, 1, 1, 1),
(3852, 82, 15, 0, 1, 1, 1, 1, 1),
(3853, 83, 15, 0, 1, 1, 1, 1, 1),
(3854, 84, 15, 1, 1, 1, 1, 1, 1),
(3855, 86, 15, 1, 1, 1, 1, 1, 1),
(3856, 87, 15, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_transaksi_program`
-- (See below for the actual view)
--
CREATE TABLE `v_transaksi_program` (
`type_id` bigint(20)
,`type_no` bigint(20)
,`refno` varchar(50)
,`tanggal` date
,`debet_akun` varchar(30)
,`muzakki` varchar(20)
,`memo_` mediumtext
,`counter` bigint(20)
,`kode_dana` varchar(25)
,`jumlah` double
,`kredit` double
,`sub_program` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `v_transaksi_program2`
--

CREATE TABLE `v_transaksi_program2` (
  `type_id` bigint(20) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `muzakki` varchar(20) DEFAULT NULL,
  `memo_` mediumtext,
  `counter` bigint(20) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `sub_program` varbinary(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `v_transaksi_program3`
--

CREATE TABLE `v_transaksi_program3` (
  `type_id` smallint(6) DEFAULT NULL,
  `type_no` bigint(20) DEFAULT NULL,
  `refno` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `debet_akun` varchar(30) DEFAULT NULL,
  `muzakki` varchar(20) DEFAULT NULL,
  `memo_` mediumtext,
  `counter` bigint(20) DEFAULT NULL,
  `kode_dana` varchar(25) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `sub_program` varbinary(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `v_transaksi_program`
--
DROP TABLE IF EXISTS `v_transaksi_program`;

CREATE ALGORITHM=UNDEFINED DEFINER=`k0703321`@`localhost` SQL SECURITY DEFINER VIEW `v_transaksi_program`  AS  select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`debet_akun` AS `debet_akun`,`a`.`muzakki` AS `muzakki`,`a`.`memo_` AS `memo_`,`b`.`counter` AS `counter`,`b`.`kode_dana` AS `kode_dana`,`b`.`jumlah` AS `jumlah`,0 AS `kredit`,`b`.`sub_program` AS `sub_program` from (`penerimaan_dana` `a` join `penerimaan_dana_detil` `b` on(((`a`.`type_id` = `b`.`type_id`) and (`b`.`type_no` = `a`.`type_no`)))) union select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`debet_akun` AS `debet_akun`,0 AS `muzakki`,`a`.`memo_` AS `memo_`,1 AS `counter`,'TI' AS `kode_dana`,`a`.`jumlah` AS `jumlah`,0 AS `kredit`,'TI' AS `TI` from `transfer_intern` `a` union select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`debet_akun` AS `debet_akun`,`a`.`muzakki` AS `muzakki`,`a`.`memo_` AS `memo_`,`b`.`counter` AS `counter`,`a`.`jenis_dana` AS `kode_dana`,`b`.`jumlah` AS `jumlah`,0 AS `kredit`,'LM' AS `LM` from (`penerimaan_lain` `a` join `penerimaan_lain_detil` `b` on(((`a`.`type_id` = `b`.`type_id`) and (`b`.`type_no` = `a`.`type_no`)))) union select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`kredit_akun` AS `kredit_akun`,`a`.`mustahiq` AS `mustahiq`,`a`.`memo_` AS `memo_`,`b`.`counter` AS `counter`,`b`.`kode_dana` AS `kode_dana`,0 AS `0`,`b`.`jumlah` AS `jumlah`,`b`.`sub_program` AS `sub_program` from (`penyaluran_dana` `a` join `penyaluran_dana_detil` `b` on(((`a`.`type_id` = `b`.`type_id`) and (`b`.`type_no` = `a`.`type_no`)))) union select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`kredit_akun` AS `kredit_akun`,`a`.`mustahiq` AS `mustahiq`,`a`.`memo_` AS `memo_`,`b`.`counter` AS `counter`,`a`.`jenis_dana` AS `kode_dana`,0 AS `0`,`b`.`jumlah` AS `jumlah`,'L' AS `L` from (`pengeluaran_lain` `a` join `pengeluaran_lain_detil` `b` on(((`a`.`type_id` = `b`.`type_id`) and (`b`.`type_no` = `a`.`type_no`)))) union select `a`.`type_id` AS `type_id`,`a`.`type_no` AS `type_no`,`a`.`refno` AS `refno`,`a`.`tanggal` AS `tanggal`,`a`.`kredit_akun` AS `kredit_akun`,0 AS `mustahiq`,`a`.`memo_` AS `memo_`,1 AS `counter`,'TI' AS `kode_dana`,0 AS `0`,`a`.`jumlah` AS `jumlah`,'TI' AS `TI` from `transfer_intern` `a` union select 0 AS `type_id`,1 AS `type_no`,`a`.`refno` AS `refno`,`a`.`per_tgl` AS `tanggal`,`a`.`bcode` AS `kredit_akun`,0 AS `mustahiq`,'SA' AS `memo_`,1 AS `counter`,'SA' AS `kode_dana`,`a`.`saldo` AS `jumlah`,0 AS `0`,'SA' AS `SA` from `saldo_awal` `a` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masuk` (`check_in`),
  ADD KEY `keluar` (`check_out`);

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id`,`kode`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `bank_account_name` (`bname`),
  ADD KEY `bank_account_number` (`bnorek`),
  ADD KEY `account_code` (`bcode`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_flow_detil`
--
ALTER TABLE `cash_flow_detil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_flow_group`
--
ALTER TABLE `cash_flow_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `gaji_detail`
--
ALTER TABLE `gaji_detail`
  ADD PRIMARY KEY (`gdid`);

--
-- Indexes for table `gaji_detail_temp`
--
ALTER TABLE `gaji_detail_temp`
  ADD PRIMARY KEY (`gdid`);

--
-- Indexes for table `gaji_lembur`
--
ALTER TABLE `gaji_lembur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tanggal` (`tanggal`);

--
-- Indexes for table `gaji_pinjaman`
--
ALTER TABLE `gaji_pinjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_sanksi`
--
ALTER TABLE `gaji_sanksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_sifat_lembur`
--
ALTER TABLE `gaji_sifat_lembur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gaji_lembur` (`id_gaji_lembur`),
  ADD KEY `id_sifat_lembur` (`id_sifat_lembur`);

--
-- Indexes for table `gaji_thr`
--
ALTER TABLE `gaji_thr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_utama`
--
ALTER TABLE `gaji_utama`
  ADD PRIMARY KEY (`guid`);

--
-- Indexes for table `general_akun`
--
ALTER TABLE `general_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `name` (`gname`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `indeks_grafik`
--
ALTER TABLE `indeks_grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indeks_laporan`
--
ALTER TABLE `indeks_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_dana`
--
ALTER TABLE `jenis_dana`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `kategori_kontak`
--
ALTER TABLE `kategori_kontak`
  ADD PRIMARY KEY (`kat_id`);

--
-- Indexes for table `kategori_mustahiq`
--
ALTER TABLE `kategori_mustahiq`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `kategori_muzakki`
--
ALTER TABLE `kategori_muzakki`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `kelompok_aset`
--
ALTER TABLE `kelompok_aset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`kid`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`kid`);

--
-- Indexes for table `kotamadya`
--
ALTER TABLE `kotamadya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_gaji`
--
ALTER TABLE `master_gaji`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `memo_jurnal`
--
ALTER TABLE `memo_jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mustahiq`
--
ALTER TABLE `mustahiq`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `muzakki`
--
ALTER TABLE `muzakki`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `penerimaan_dana`
--
ALTER TABLE `penerimaan_dana`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `penerimaan_dana_audit`
--
ALTER TABLE `penerimaan_dana_audit`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `penerimaan_dana_audit_detil`
--
ALTER TABLE `penerimaan_dana_audit_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `penerimaan_dana_detil`
--
ALTER TABLE `penerimaan_dana_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `penerimaan_dana_export`
--
ALTER TABLE `penerimaan_dana_export`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penerimaan_lain`
--
ALTER TABLE `penerimaan_lain`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `penerimaan_lain_detil`
--
ALTER TABLE `penerimaan_lain_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `pengeluaran_lain`
--
ALTER TABLE `pengeluaran_lain`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `pengeluaran_lain_detil`
--
ALTER TABLE `pengeluaran_lain_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `penjualan_aset`
--
ALTER TABLE `penjualan_aset`
  ADD PRIMARY KEY (`type_no`,`refno`);

--
-- Indexes for table `penyaluran_dana`
--
ALTER TABLE `penyaluran_dana`
  ADD PRIMARY KEY (`refno`);

--
-- Indexes for table `penyaluran_dana_detil`
--
ALTER TABLE `penyaluran_dana_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `penyusutan_aset`
--
ALTER TABLE `penyusutan_aset`
  ADD PRIMARY KEY (`type_no`,`refno`);

--
-- Indexes for table `perolehan_aset`
--
ALTER TABLE `perolehan_aset`
  ADD PRIMARY KEY (`type_no`,`refno`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`pid`,`pcode`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rab_detil`
--
ALTER TABLE `rab_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rab_detil_pengajuan`
--
ALTER TABLE `rab_detil_pengajuan`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rab_detil_pengajuan_temp`
--
ALTER TABLE `rab_detil_pengajuan_temp`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rab_detil_realisasi`
--
ALTER TABLE `rab_detil_realisasi`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rab_detil_realisasi_temp`
--
ALTER TABLE `rab_detil_realisasi_temp`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rab_detil_temp`
--
ALTER TABLE `rab_detil_temp`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`acode`),
  ADD KEY `account_name` (`aname`),
  ADD KEY `accounts_by_type` (`group_id`,`acode`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `rname` (`rname`);

--
-- Indexes for table `saldo_awal`
--
ALTER TABLE `saldo_awal`
  ADD PRIMARY KEY (`id`,`refno`,`kd_akun`);

--
-- Indexes for table `setingannama`
--
ALTER TABLE `setingannama`
  ADD PRIMARY KEY (`snid`);

--
-- Indexes for table `sifat_lembur`
--
ALTER TABLE `sifat_lembur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_program`
--
ALTER TABLE `sub_program`
  ADD PRIMARY KEY (`spid`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tandatangan`
--
ALTER TABLE `tandatangan`
  ADD PRIMARY KEY (`ttdid`);

--
-- Indexes for table `temp_dana_detil`
--
ALTER TABLE `temp_dana_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `temp_ledger`
--
ALTER TABLE `temp_ledger`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `temp_penerimaan_audit_detil`
--
ALTER TABLE `temp_penerimaan_audit_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `temp_penerimaan_detil`
--
ALTER TABLE `temp_penerimaan_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `temp_pengeluaran_detil`
--
ALTER TABLE `temp_pengeluaran_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `temp_penyaluran_detil`
--
ALTER TABLE `temp_penyaluran_detil`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `tipe_penerimaan`
--
ALTER TABLE `tipe_penerimaan`
  ADD PRIMARY KEY (`tpid`),
  ADD UNIQUE KEY `tpid` (`tpid`);

--
-- Indexes for table `tipe_transaksi`
--
ALTER TABLE `tipe_transaksi`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `transfer_dana`
--
ALTER TABLE `transfer_dana`
  ADD PRIMARY KEY (`type_no`,`refno`);

--
-- Indexes for table `transfer_intern`
--
ALTER TABLE `transfer_intern`
  ADD PRIMARY KEY (`type_no`,`refno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `users_menu`
--
ALTER TABLE `users_menu`
  ADD PRIMARY KEY (`umid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2025;

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `cash_flow_detil`
--
ALTER TABLE `cash_flow_detil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `cash_flow_group`
--
ALTER TABLE `cash_flow_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gaji_detail`
--
ALTER TABLE `gaji_detail`
  MODIFY `gdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `gaji_detail_temp`
--
ALTER TABLE `gaji_detail_temp`
  MODIFY `gdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gaji_lembur`
--
ALTER TABLE `gaji_lembur`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `gaji_pinjaman`
--
ALTER TABLE `gaji_pinjaman`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gaji_sanksi`
--
ALTER TABLE `gaji_sanksi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `gaji_sifat_lembur`
--
ALTER TABLE `gaji_sifat_lembur`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- AUTO_INCREMENT for table `gaji_thr`
--
ALTER TABLE `gaji_thr`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gaji_utama`
--
ALTER TABLE `gaji_utama`
  MODIFY `guid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_akun`
--
ALTER TABLE `general_akun`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `indeks_grafik`
--
ALTER TABLE `indeks_grafik`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `indeks_laporan`
--
ALTER TABLE `indeks_laporan`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `jenis_dana`
--
ALTER TABLE `jenis_dana`
  MODIFY `jid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori_kontak`
--
ALTER TABLE `kategori_kontak`
  MODIFY `kat_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_mustahiq`
--
ALTER TABLE `kategori_mustahiq`
  MODIFY `catid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_muzakki`
--
ALTER TABLE `kategori_muzakki`
  MODIFY `catid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelompok_aset`
--
ALTER TABLE `kelompok_aset`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `kotamadya`
--
ALTER TABLE `kotamadya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28869;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `master_gaji`
--
ALTER TABLE `master_gaji`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `memo_jurnal`
--
ALTER TABLE `memo_jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5694;

--
-- AUTO_INCREMENT for table `mustahiq`
--
ALTER TABLE `mustahiq`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `muzakki`
--
ALTER TABLE `muzakki`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penerimaan_dana_audit_detil`
--
ALTER TABLE `penerimaan_dana_audit_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1905;

--
-- AUTO_INCREMENT for table `penerimaan_dana_detil`
--
ALTER TABLE `penerimaan_dana_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2823;

--
-- AUTO_INCREMENT for table `penerimaan_dana_export`
--
ALTER TABLE `penerimaan_dana_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `penerimaan_lain_detil`
--
ALTER TABLE `penerimaan_lain_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `pengeluaran_lain_detil`
--
ALTER TABLE `pengeluaran_lain_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1480;

--
-- AUTO_INCREMENT for table `penyaluran_dana_detil`
--
ALTER TABLE `penyaluran_dana_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1334;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `pid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rab_detil`
--
ALTER TABLE `rab_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `rab_detil_pengajuan`
--
ALTER TABLE `rab_detil_pengajuan`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `rab_detil_pengajuan_temp`
--
ALTER TABLE `rab_detil_pengajuan_temp`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `rab_detil_realisasi`
--
ALTER TABLE `rab_detil_realisasi`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `rab_detil_realisasi_temp`
--
ALTER TABLE `rab_detil_realisasi_temp`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `rab_detil_temp`
--
ALTER TABLE `rab_detil_temp`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `saldo_awal`
--
ALTER TABLE `saldo_awal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `setingannama`
--
ALTER TABLE `setingannama`
  MODIFY `snid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sifat_lembur`
--
ALTER TABLE `sifat_lembur`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_program`
--
ALTER TABLE `sub_program`
  MODIFY `spid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `s_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;

--
-- AUTO_INCREMENT for table `tandatangan`
--
ALTER TABLE `tandatangan`
  MODIFY `ttdid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_dana_detil`
--
ALTER TABLE `temp_dana_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1805;

--
-- AUTO_INCREMENT for table `temp_ledger`
--
ALTER TABLE `temp_ledger`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `temp_penerimaan_audit_detil`
--
ALTER TABLE `temp_penerimaan_audit_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_penerimaan_detil`
--
ALTER TABLE `temp_penerimaan_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `temp_pengeluaran_detil`
--
ALTER TABLE `temp_pengeluaran_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `temp_penyaluran_detil`
--
ALTER TABLE `temp_penyaluran_detil`
  MODIFY `counter` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tipe_penerimaan`
--
ALTER TABLE `tipe_penerimaan`
  MODIFY `tpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_menu`
--
ALTER TABLE `users_menu`
  MODIFY `umid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3857;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
