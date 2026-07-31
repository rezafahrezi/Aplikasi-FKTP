-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2026 pada 19.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fktp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(150) NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `id_fktp` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `id_poli`, `id_fktp`, `status`, `created_at`) VALUES
(2, 'dr. Denny Eka Praja, M.Ked(Ped), Sp.A', '1', '3', 'true', '2026-07-28 01:30:14'),
(4, 'dr. Ayu Pathya, Sp.PD', '2', '3', 'true', '2026-07-28 08:32:49'),
(5, 'drg. Elsa Br Ginting', '1', '3', 'true', '2026-07-28 08:34:31'),
(7, 'drg. tes', '3', '2', 'true', '2026-07-28 09:31:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fktp`
--

CREATE TABLE `tb_fktp` (
  `id_fktp` int(11) NOT NULL,
  `kode_fktp` varchar(150) NOT NULL,
  `nama_fktp` varchar(150) NOT NULL,
  `wilayah` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_fktp`
--

INSERT INTO `tb_fktp` (`id_fktp`, `kode_fktp`, `nama_fktp`, `wilayah`, `status`, `created_at`) VALUES
(1, 'FKTP001', 'Klinik Kartika Tambusai', 'Pekanbaru', 'true', '2026-07-27 21:29:12'),
(2, 'FKTP002', 'Klinik Pratama Hesti Wira Sakti', 'Bagansiapiapi', 'true', '2026-07-28 00:13:16'),
(3, 'FKTP003', 'Polkes 01.10.10', 'Rengat', 'true', '2026-07-28 00:13:46'),
(4, 'FKTP004', 'Polkes 01.10.12', 'Bangkinang', 'true', '2026-07-28 00:15:08'),
(5, 'FKTP005', 'Polkes 01.10.09', 'Dumai', 'true', '2026-07-28 00:15:32'),
(6, 'FKTP006', 'Klinik Polkes 01.10.11', 'Tembilahan', 'true', '2026-07-28 00:16:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien_keluarga`
--

CREATE TABLE `tb_pasien_keluarga` (
  `id_pasien_keluarga` int(11) NOT NULL,
  `id_fktp` int(11) NOT NULL,
  `kategori_pasien` varchar(250) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `hubungan_keluarga` varchar(50) DEFAULT NULL,
  `nama_personil` varchar(100) DEFAULT NULL,
  `nrp_nip` varchar(50) DEFAULT NULL,
  `pangkat_gol` varchar(50) DEFAULT NULL,
  `kesatuan` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pasien_keluarga`
--

INSERT INTO `tb_pasien_keluarga` (`id_pasien_keluarga`, `id_fktp`, `kategori_pasien`, `nama_pasien`, `tanggal_lahir`, `jenis_kelamin`, `hubungan_keluarga`, `nama_personil`, `nrp_nip`, `pangkat_gol`, `kesatuan`, `created_at`) VALUES
(1, 1, 'Keluarga', 'Furqon', '2026-07-08', 'Laki-laki', 'Anak', 'Anton', '15156456465', 'Sertu', 'Pomdam XIX/TT', '2026-07-29 17:11:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien_personil`
--

CREATE TABLE `tb_pasien_personil` (
  `id_pasien_personil` int(11) NOT NULL,
  `id_fktp` int(11) NOT NULL,
  `kategori_pasien` varchar(250) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `nrp_nip` varchar(50) DEFAULT NULL,
  `pangkat_gol` varchar(50) DEFAULT NULL,
  `kesatuan` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pasien_personil`
--

INSERT INTO `tb_pasien_personil` (`id_pasien_personil`, `id_fktp`, `kategori_pasien`, `nama_pasien`, `nrp_nip`, `pangkat_gol`, `kesatuan`, `tanggal_lahir`, `jenis_kelamin`, `created_at`) VALUES
(3, 2, 'Personil', 'Akmal Imron', '312000255555555', 'Pratu', 'Kodim 0302/Inhu', '1998-05-15', 'Laki-laki', '2026-07-29 01:59:54'),
(4, 1, 'Personil', 'Reza Fahrezi', '1213158864846446', 'Kapten Ckm', 'Kesdam XIX/TT', '2000-09-11', 'Laki-laki', '2026-07-29 11:47:23'),
(5, 1, 'Personil', 'tes', '2313', 'dadad', 'tes', '2026-07-07', 'Perempuan', '2026-07-29 17:34:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelayanan`
--

CREATE TABLE `tb_pelayanan` (
  `id_pelayanan` int(11) NOT NULL,
  `id_pasien_personil` int(11) DEFAULT NULL,
  `id_pasien_keluarga` int(11) DEFAULT NULL,
  `id_dokter` int(11) NOT NULL,
  `tanggal_pelayanan` date DEFAULT NULL,
  `keluhan` varchar(250) DEFAULT NULL,
  `diagnosa` varchar(250) DEFAULT NULL,
  `faskes_rujuk` varchar(250) DEFAULT NULL,
  `tgl_kontrol_kembali` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pelayanan`
--

INSERT INTO `tb_pelayanan` (`id_pelayanan`, `id_pasien_personil`, `id_pasien_keluarga`, `id_dokter`, `tanggal_pelayanan`, `keluhan`, `diagnosa`, `faskes_rujuk`, `tgl_kontrol_kembali`, `created_at`) VALUES
(2, 3, NULL, 5, '2026-07-29', 'nyeri pada luka', 'Pasca fr tibua kemonatif Orif tanpa kalius', 'Rawat Jalan RSPAD Gatot Subroto Jakarta', '2026-08-03', '2026-07-29 01:59:54'),
(3, 4, NULL, 5, '2026-07-29', 'Tes', 'Tes', 'Rs Awal Bros', '2026-07-31', '2026-07-29 11:47:23'),
(4, NULL, 1, 2, '2026-07-29', 'tes', 'tes', 'Rawat Jalan RSPAD Gatot Subroto Jakarta', '2026-07-31', '2026-07-29 17:11:32'),
(5, 5, NULL, 4, '2026-07-29', 'tesssss', 'tes', 'sdadasdad', '2026-08-01', '2026-07-29 17:34:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poli`
--

CREATE TABLE `tb_poli` (
  `id_poli` int(11) NOT NULL,
  `kode_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_poli`
--

INSERT INTO `tb_poli` (`id_poli`, `kode_poli`, `nama_poli`, `status`, `created_at`) VALUES
(1, 'POLI001', 'Umum', 'true', '2026-07-28 08:06:41'),
(2, 'POLI002', 'KIA', 'true', '2026-07-28 08:11:30'),
(3, 'POLI003', 'Gigi & Mulut', 'true', '2026-07-28 09:29:42'),
(4, 'POLI004', 'UGD', 'true', '2026-07-28 09:29:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_imt`
--

CREATE TABLE `tb_surat_imt` (
  `id_surat_imt` int(11) NOT NULL,
  `no_sprint` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `nrp_nip` varchar(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(50) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `kesatuan` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tb` varchar(50) NOT NULL,
  `bb` varchar(50) NOT NULL,
  `imt` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `lp` varchar(50) NOT NULL,
  `td` varchar(50) NOT NULL,
  `denyut` varchar(50) NOT NULL,
  `gol_darah` varchar(50) NOT NULL,
  `kesimpulan` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_surat_imt`
--

INSERT INTO `tb_surat_imt` (`id_surat_imt`, `no_sprint`, `no_surat`, `nama`, `pangkat`, `nrp_nip`, `nik`, `tgl_lahir`, `jk`, `jabatan`, `kesatuan`, `alamat`, `tb`, `bb`, `imt`, `kategori`, `lp`, `td`, `denyut`, `gol_darah`, `kesimpulan`, `created_at`) VALUES
(13, 1, 'SKD/ 1 /VI/2026/Kes', 'RAMLI', 'PELDA', '21020011180782', '1174050207820001', '1982-07-02', 'Laki-laki', 'BATI URMIN SIKESPREV KESDAM XIX/TT', 'KESDAM XIX/TT', 'JL.TERATAI ASR PEING NO.B5 KOTA PEKANBARU', '168', '65', '23.03', 'Normal', '85', '120/70', '80', 'AB', 'sehat', '2026-06-24 23:48:55'),
(16, 2, 'SKD/ 2 /VI/2026/Kes', 'MOHAMMAD RIZAL KURNIAWAN ', 'KAPTEN INF ', '11160003300592', '3215051405920002', '1992-05-14', 'Laki-laki', 'WADAN YONIF TP 952/IB', 'YONIF TP 952/IB', 'YONIF TP 952 IMAM BULQIN, SIMPANG LIIMA, JLN. PIPA AIR BERSIH KAB. BENGKALIS, PROV. RIAU', '174', '75', '24.77', 'Normal', '88', '120/88', '71', 'A+', 'sehat', '2026-06-24 04:54:00'),
(18, 3, 'SKD/ 3 /VI/2026/Kes', 'SUFRIADI LINGGA ', 'LETDA CKM', '21080615871086', '1401131410860001', '1986-10-14', 'Laki-laki', 'PAKES 1 TIMBANKES DENKESLAP KESDAM XIX/TT', 'KESDAM XIX/TT', 'JL.DR SUTOMO BLOK BIII/2 ASRAMA PANCASILA ,SUKAMULYA ,SAIL ,KOTA PEKANBARU ', '170', '70', '24.22', 'Normal', '88', '120/80', '88', 'B', 'sehat', '2026-06-24 02:31:13'),
(19, 4, 'SKD/ 4 /VI/2026/Kes', 'BAYU SYAHPUTRA ', 'PRADA', '1723110020016984', '1009232810020001', '2002-10-28', 'Laki-laki', 'TAMINLOG DENMA BRIGIF TP 89/GG', 'BRIGIF TP 89/GG', 'ASRAMA PHB ,JL HANG TUAH ', '165', '75', '27.55', 'Overweight', '89', '120/89', '72', 'O', 'sehat', '2026-06-24 02:38:25'),
(20, 5, 'SKD/ 5 /VI/2026/Kes', 'NAZRI DARMI ', 'LETDA CAJ ', '21070330330987', '2171112409879007', '1987-09-24', 'Laki-laki', 'PAURUDAL SITUUD ', 'AJENDAM XIX /TT ', 'ASRAMA MANIPOL ,JL SUKOHARJO ', '165', '68', '24.61', 'Normal', '83', '124/88', '74', 'O', 'sehat', '2026-06-24 04:15:15'),
(21, 6, 'SKD/ 6 /VI/2026/Kes', 'LASMARIA SINAGA ', 'KAPTEN CAJ (K) ', '21980349400177', '1471047001770001', '1977-01-30', 'Perempuan', 'KASI TUUD AJENDAM XIX /TT ', 'AJENDAM XIX /TT ', 'ASRAMA PHB ,JALAN HANG TUAH NO H 16 ', '157', '60', '24.34', 'Normal', '79', '130/90', '72', 'A', 'sehat', '2026-06-24 03:53:44'),
(22, 7, 'SKD/ 7 /VI/2026/Kes', 'SANDY YUDHA ', 'SERKA ', '31980054920779', '1471030107790001', '1979-07-01', 'Laki-laki', 'BAMINBEKKES  URBEKKALKES SIMATKES KESDAM XIX/TT', 'KESDAM XIX/TT', 'JL.BATA NO 8 KEL.REJOSARI, KEC .TENAYAN RAYA,PEKANBARU ', '178', '78', '24.62', 'Normal', '87', '120/80', '80', 'O', 'sehat', '2026-06-24 06:18:57'),
(23, 8, 'SKD/ 8 /VI/2026/Kes', 'ANIRTA ALAMSYAH WAHYU UTAMA ', 'KAPTEN CKE ', '11160028560792', '1207072907920001', '1992-07-29', 'Laki-laki', 'KABENG KOMLEKDAM XIX/TT', 'KOMLEKDAM XIX/TT', 'JL.PRAMUKA ,KEL REMU,KEC SORONG ,PROV PAPUA BARAT ', '177', '70', '22.34', 'Normal', '87', '120/80', '78', 'O', 'Sehat', '2026-06-24 08:35:59'),
(24, 9, 'SKD/ 9 /VI/2026/Kes', 'FERA MAYHARDAN', 'LETTU Inf', '21040022050585', '1101101005850011', '1985-05-10', 'Laki-laki', 'KAURLISSTRASAT SILISSTRASAT PENDAM XIX/TT', 'PENDAM XIX/TT', 'JLN. PESISI GG. MERAPI NOMOR 1 KOTA PEKANBARU', '168', '70', '24.80', 'Normal', '68', '130/80', '80', 'B', 'Sehat', '2026-06-24 08:23:32'),
(25, 10, 'SKD/ 10 /VI/2026/Kes', 'HERI SUPRIANTO', 'SERDA', '31080003851086', '1', '1986-10-09', 'Laki-laki', 'BALAPMATZI URMINLAHTAMATZI SIMATZI ZIDAM XIX/TT', 'ZIDAM XIX/TT', 'ASRAMA MANIPOL JL SUTOMO PEKANBARU', '164', '64', '23.80', 'Normal', '70', '122/85', '89', 'B', 'Sehat', '2026-06-24 08:31:12'),
(26, 11, 'SKD/ 11 /VI/2026/Kes', 'ANDANG KASORA', 'KAPTEN Czi', '21980065831275', '1', '1975-12-31', 'Laki-laki', 'KASI REKON', 'ZIDAM XIX/TT', 'JL. JENDRAL A.YANI', '165', '68', '24.98', 'Normal', '78', '128/83', '86', 'O', 'Sehat', '2026-06-24 08:34:37'),
(27, 12, 'SKD/ 12 /VI/2026/Kes', 'MUHAMMAD YUSRON', 'SERDA', '31050521081283', '2', '1983-12-14', 'Laki-laki', 'BA, INSTALASI AIR DAN LISTRIK DENZIBANG 6/I', 'ZIDAM XIX/TT', 'ASRAMA PANCASILA', '170', '65', '22.49', 'Normal', '78', '125/79', '84', 'B', 'Sehat', '2026-06-24 08:40:08'),
(28, 13, 'SKD/ 13 /VI/2026/Kes', 'JASMADI', 'LETTU Czi', '3930008800471', '3', '1971-04-23', 'Laki-laki', 'KAURRARIK DAN BINTININKZI SI ASWAS', 'ZIDAM XIX/TT', 'ASRAMA PHB NO.1 JLN. GUNUNG KELUD', '167', '67', '24.02', 'Normal', '73', '121/84', '82', 'A', 'Sehat', '2026-06-24 08:45:30'),
(29, 14, 'SKD/ 14 /VI/2026/Kes', 'SURYA DHARMA', 'SERDA', '31080293351187', '4', '1987-11-26', 'Laki-laki', 'BA DATA AIR SIFASJASA', 'ZIDAM XIX/TT', 'ASMIL PANCASILA, JLN. DR SUTOMO, KEC.SAIL, KOTA PEKANBARU', '170', '71', '24.57', 'Normal', '85', '124/85', '86', 'A', 'Sehat', '2026-06-24 08:49:34'),
(30, 15, 'SKD/ 15 /VI/2026/Kes', 'ARIH SISWANTO, S.M.', 'LETDA Cku', '21090100881286', '1210022412860002', '1986-12-24', 'Laki-laki', 'PAURPAMOPSLAT SITUUD KUDAM XIX/TT', 'KUDAM XIX/TT', 'JLN.AHMAD YANI NO.126. KOTA PEKANBARU. PROV.RIAU', '170', '71', '24.57', 'Normal', '84', '120/84', '80', 'O', 'Sehat', '2026-06-24 09:05:22'),
(31, 16, 'SKD/ 16 /VI/2026/Kes', 'TRI WIBOWO', 'LETDA Cku', '21080618271287', '1173021412870005', '1987-12-14', 'Laki-laki', 'PAURDALMIN SIDALKU KUDAM XIX/TT', 'KUDAM XIX/TT', 'ASRAMA PHB JLN. HANGTUAH NO H 15 KOTA PEKANBARU', '168', '70', '24.80', 'Normal', '74', '125/76', '86', 'O', 'Sehat', '2026-06-24 09:18:26'),
(32, 17, 'SKD/ 17 /VI/2026/Kes', 'MUSLIADI ', 'KAPTEN Cku', '21990143700878', '730651408780001', '1978-08-14', 'Laki-laki', 'KASI DALKU KUDAM XIX/TT', 'KUDAM XIX/TT', 'JLN. DR SUTOMO NO.54 KOTA PEKANBARU, PROV.RIAU', '164', '66', '24.54', 'Normal', '85', '126/88', '80', 'A', 'Sehat', '2026-06-24 09:15:11'),
(33, 18, 'SKD/ 18 /VI/2026/Kes', 'FAHMI ZALIMU', 'LETTU Ckm', '1221112970000329', '7472041812970001', '1997-12-18', 'Laki-laki', 'KAUR LOG SITUUD KESDAM XIX/TT', 'KESDAM XIX/TT', 'JL.JATI KARYA RT 016/RW 005, KEL. WOWAWANGGU, KEC.KADIA, KOTA KENDARI, SULAWESI TENGGARA', '166', '66', '23.95', 'Normal', '80', '120/80', '80', 'O', 'Sehat', '2026-06-24 09:22:47'),
(34, 19, 'SKD/ 19 /VI/2026/Kes', 'EDI PURNAMA ', 'KAPTEN ARH ', '21990172900477', '1471030404770022', '1977-04-04', 'Laki-laki', 'PABANDA MINWATPERS SPERSDAM XIX/TT ', 'KODAM XIX/TT ', 'MESS KOREM 031/WB ,JL SUTOMO PEKANBARU ', '169', '71', '24.86', 'Normal', '86', '125/80', '75', 'A', 'Sehat', '2026-06-25 01:58:52'),
(35, 20, 'SKD/ 20 /VI/2026/Kes', 'TEGAR MANDRA MUSLIM ', 'PRATU ', '31190033450399', '1301071503990001', '1999-03-15', 'Laki-laki', 'TA ZIDAM ', 'ZIDAM XIX /TT', 'JL.AHMAD YANI  (ZIDAM XIX/TT ) ', '165', '63', '23.14', 'Normal', '74', '126/70', '82', 'O', 'Sehat', '2026-06-25 02:42:16'),
(36, 21, 'SKD/ 21 /VI/2026/Kes', 'ENDRA SAPUTRA ', 'SERKA ', '31950038051275', '7106083012750001', '1975-12-30', 'Laki-laki', 'BAMINGUD DOKMASI ZIDAM XIX/TT', 'ZIDAM XIX /TT', 'ASRAMA PANCASILA B II ', '165', '68', '24.98', 'Normal', '84', '120/70', '75', 'A', 'Sehat', '2026-06-25 02:48:26'),
(37, 22, 'SKD/ 22 /VI/2026/Kes', 'YOGI BRAMASONTIO ', 'PRATU', '31190542070799', '1377012107990001', '1999-07-21', 'Laki-laki', 'TA ZIDAM XIX/TT', 'ZIDAM XIX/TT', 'JL.AHMAD YANI (ZIDAM XIX / TT)', '168', '64', '22.68', 'Normal', '73', '110/70', '75', 'A', 'Sehat', '2026-06-25 02:54:32'),
(38, 23, 'SKD/ 23 /VI/2026/Kes', 'AGUS PRIYANTO ', 'SERDA', '31040722550784', '6471040407840008', '1984-07-04', 'Laki-laki', 'TURMINROH BINTAL DENMADAM XIX/TT ', 'DENMADAM XIX /TT ', 'DENMADAM XIX/TT ', '169', '82', '28.71', 'Overweight', '88', '120/80', '88', 'B', 'Sehat', '2026-06-25 07:23:08'),
(39, 24, 'SKD/ 24 /VI/2026/Kes', 'BAYU WIBOWO, S.H., M.H.I.', 'LETKOL Cke', '11020053680179', '1', '1979-01-04', 'Laki-laki', 'KAKOMLEKDAM XIX/TT', 'KOMLEKDAM XIX/TT', 'KPAD SUMUR BATU JL RANJAU NO.6', '167', '69', '24.74', 'Normal', '88', '123/90', '70', 'B', 'Sehat', '2026-06-25 04:10:20'),
(40, 25, 'SKD/ 25 /VI/2026/Kes', 'NANANG KURNIAWAN, S.H.', 'KAPTEN Cpl', '21960310051075', '3578042410750003', '1975-10-24', 'Laki-laki', 'KASI TEKMEK', 'PALDAM XIX/TT', 'KARANGREJO BALONG 7', '161', '58', '22.38', 'Normal', '89', '109/78', '84', 'O', 'Sehat', '2026-06-25 04:20:56'),
(41, 26, 'SKD/ 26 /VI/2026/Kes', 'TRI WAHYU PURNOMO', 'LETTU Cpl', '21970212110976', '1401101909760002', '1976-09-19', 'Laki-laki', 'KAURMINBEKHAR GUDMURAH XIX/KAMPAR', 'PALDAM XIX/TT', 'DESA PETAPAHAN KEC. TAPUNG KAB,KAMPAR RT 017/RW 004', '168', '70', '24.80', 'Normal', '86', '130/80', '78', 'B', 'Sehat', '2026-06-25 04:27:23'),
(43, 27, 'SKD/ 27 /VI/2026/Kes', 'MHD FAISAL', 'PRATU', '31180933130699', '1218151106990003', '1999-06-11', 'Laki-laki', 'TABAN SO', 'BATALION KOMPOSIT', 'DUSUN 7 BROHOL KEC.SEI BAMBAN', '166', '80', '29.03', 'Overweight', '96', '119/75', '68', 'AB', 'Sehat', '2026-06-25 06:26:46'),
(44, 28, 'SKD/ 28 /VI/2026/Kes', 'GREGORIUS JAYA SITANGGANG', 'PRATU', '31190545871298', '1207323112980007', '1998-12-31', 'Laki-laki', 'TABANMON RANPUR 1 SIBENGRAN TON PAL KIMA YONKOMPOSIT 1/GP DAM XIX/TT', 'YON KOMPOSIT 1/GP', 'JLN.PANTAI LABU DESA RAMUNIA 1 KEC. PANTAI LABU,KAB. DELI SERDANG', '165', '70', '25.71', 'Overweight', '93', '121/83', '83', 'B+', 'Sehat', '2026-06-25 06:36:32'),
(45, 29, 'SKD/ 29 /VI/2026/Kes', 'DIMAS TRI ADITYA', 'PRATU', '31190523001298', '1271032812980006', '1998-12-28', 'Laki-laki', 'TABANMIN DATA STAF LOG', 'BATALYON KOMPOSIT 1/GP', 'JL. GAPERTA V NO.K2 LK IV', '165', '75', '27.55', 'Overweight', '99', '127/87', '70', 'B', 'Sehat', '2026-06-25 06:31:56'),
(46, 30, 'SKD/ 30 /VI/2026/Kes', 'VIJAI NABABAN', 'PRATU', '31190524250299', '1207320104970003', '1999-02-09', 'Laki-laki', 'TABAN/JURLISS POKKO KI INF 2 YONKOMPOSIT 1/GARDAPATI', 'YANKOMPOSIT 1/GARDA PATI', 'DUSUN IV DESA DURIAN, KEC. PANTAI LABU, KAB. DELI SERDANG', '167', '69', '24.74', 'Normal', '67', '122/80', '80', 'O', 'Sehat', '2026-06-25 06:38:35'),
(47, 31, 'SKD/ 31 /VI/2026/Kes', 'TRI ANDIKA MALEMNA GINTING ', 'PRAKA ', '31150341791095', '1271112710950002', '1995-10-27', 'Laki-laki', 'TUMINPERSSIP URPERS SITUUD KESDAM XIX/TT', 'KESDAM XIX /TT', 'JALAN GUNUNG RAYA HANG TUAH  ,KEL REJOSARI,KEC TENAYAN RAYA ,PEKANBARU', '165', '68', '24.98', 'Normal', '86', '120/80', '76', 'AB', 'Sehat', '2026-06-25 07:56:15'),
(48, 32, 'SKD/ 32 /VI/2026/Kes', 'PERIMADA ', 'SERDA ', '31081925050186', '5171013001860004', '1986-01-30', 'Laki-laki', 'BAMONRANPUR 2 BENGRAN BENGLAP XIX /1-1 PEKANBARU DENPAL XIX /1 PEKANBARU PALDAM XIX/TT', 'PALDAM XIX /TT ', 'ASRAMA PHB HANG TUAH ', '165', '64', '23.51', 'Normal', '87', '122/89', '77', 'AB', 'Sehat', '2026-06-25 08:34:41'),
(49, 33, 'SKD/ 33 /VI/2026/Kes', 'HARRY APRIJAL ', 'SERDA ', '31080023570489', '3273181404840001', '1989-04-14', 'Laki-laki', 'BAGUDJAT GUDJAT OPTIK GUDPALRAH PALDAM XIX/TT', 'PALDAM XIX /TT', 'PERUM OCE REGENCY PERMAI RIMBO PANJANG ', '172', '65', '21.97', 'Normal', '77', '120/80', '76', 'O', 'Sehat', '2026-06-26 03:01:25'),
(50, 34, 'SKD/ 34 /VI/2026/Kes', 'RIAN RAMADHAN ', 'PRADA ', '1723111020016925', '1209141911020003', '2002-11-19', 'Laki-laki', 'TAMUDI URDAL GUDPALRAH PALDAM XIX/TT', 'PALDAM XIX /TT ', 'JL.GATOT SUBROTO NO 54', '171', '77', '26.33', 'Overweight', '84', '120/70', '78', 'AB', 'Sehat', '2026-06-25 08:25:15'),
(51, 35, 'SKD/ 35 /VI/2026/Kes', 'SUHERDI', 'SERKA', '31970026150476', '1401061004760002', '1976-04-10', 'Laki-laki', 'BAMON UTAMA JATRI OPTIK BENGJAT BENGLAP XIX/1-1 PEKANBARU DENPAL XIX/TT PEKANBARU PALDAM XIX/TT', 'PALDAM XIX /TT ', 'PERUMAHAN JALAN PINANG E.6.', '167', '68', '24.38', 'Normal', '99', '140/60', '70', 'O', 'Sehat', '2026-06-26 04:45:55'),
(52, 36, 'SKD/ 36 /VI/2026/Kes', 'AJAY MASTOPAN PURBA', 'PRATU', '31190535970200', '1471074909030001', '2000-06-05', 'Laki-laki', 'TON ANG YON KOMPOSIT 1/ GP', 'BATALYON KOMPOSIT I/GP', 'DESA KOTARIH BARU', '167', '67', '24.02', 'Normal', '83', '110/70', '76', 'B', 'Sehat', '2026-06-25 08:35:27'),
(53, 37, 'SKD/ 37 /VI/2026/Kes', 'SYAHRUL EFENDI', 'PRATU', '31190520451098', '2', '1998-10-15', 'Laki-laki', 'TABANTEKMEK TON PAL KI MARKAS BATALYON KOMPOSIT 1/ GARDAPATI', 'YON KOMPOSIT 1/GP', 'KERAMAT JAYA', '171', '64', '21.89', 'Normal', '78', '124/80', '80', 'O', 'Sehat', '2026-06-25 08:44:04'),
(54, 38, 'SKD/ 38 /VI/2026/Kes', 'ZULKARNAIN', 'MAYOR Cku', '21930111091073', '1207231510730005', '1973-10-15', 'Laki-laki', 'PAKU MAKODAM XIX/TT', 'KUDAM XIX/TT', 'DUSUN V KALI REJO NO 12A DESA SEI SEMAYANG KEC. SUNGGAL, KAB. DELI SERDANG PROV.SUMUT', '164', '67', '24.91', 'Normal', '70', '120/80', '80', 'O', 'Sehat', '2026-06-25 09:40:11'),
(55, 39, 'SKD/ 39 /VI/2026/Kes', 'RIKI RIZKIANA', 'KAPTEN Cku', '21000113900481', '3217022204810004', '1981-04-22', 'Laki-laki', 'PAKU BEKANGDAM XIX/TT', 'KUDAM XIX/TT', 'JL.MAYOR ALI RASYID NO.1 PEKANBARU RIAU', '168', '69', '24.45', 'Normal', '85', '130/80', '84', 'B', 'Sehat', '2026-06-25 11:16:28'),
(56, 40, 'SKD/ 40 /VI/2026/Kes', 'SYAIFULNAHAR ', 'KAPTEN CKM', '21950223771174', '2171110911749004', '1974-11-09', 'Laki-laki', 'KASITUUD KESDAM XIX/TT', 'KESDAM XIX/TT', 'JL.BANGAU NO 4A KEL KP MELAYU', '168', '70', '24.80', 'Normal', '88', '120/86', '78', 'AB', 'Sehat', '2026-06-26 13:27:00'),
(57, 41, 'SKD/ 41 /VI/2026/Kes', 'JASMANI  TARIGAN, S.H', 'LETDA Cku', '21060034170585', '1211060505850003', '1985-05-05', 'Laki-laki', 'PAKU KODIM O315/TANJUNG PINANG ', 'KUDAM XIX/TT', 'BATU 7 TANJUNG PINANG ', '169', '70', '24.51', 'Normal', '87', '120/84', '74', 'A', 'Sehat', '2026-06-26 00:32:56'),
(58, 42, 'SKD/ 42 /VI/2026/Kes', 'DUDY, S.E ', 'KAPTEN Cku', '21970268890576', '3276982305760001', '1976-05-23', 'Laki-laki', 'PAKU MAKOREM 033/WP', 'KOREM 033/WP', 'KOREM 033/WP TANJUNG PINANG KEPULAUAN RIAU ', '170', '67', '23.18', 'Normal', '88', '120/70', '74', 'A', 'Sehat', '2026-06-26 00:37:18'),
(59, 43, 'SKD/ 43 /VI/2026/Kes', 'DEAGTA RASUL RIWANCI ', 'PRATU ', '31190532251299', '1501172112990007', '1999-12-21', 'Laki-laki', 'TA BEKANGDAM XIX /TT ', 'BEKANGDAM XIX /TT ', 'ASRAMA PANCASILA ', '165', '82', '30.12', 'Obesitas', '91', '120/70', '76', '-', 'Sehat', '2026-06-26 04:33:04'),
(60, 44, 'SKD/ 44 /VI/2026/Kes', 'HEAGIAN', 'PRATU ', '31190032950798', '1572922407980002', '1998-07-24', 'Laki-laki', 'TA ZIDAM XIX/TT ', 'ZIDAM XIX/TT', 'ASRAMA PHB ', '166', '68', '24.68', 'Normal', '85', '120/80', '75', 'O', 'Sehat', '2026-06-28 03:00:41'),
(61, 45, 'SKD/ 45 /VI/2026/Kes', 'HENDRIK REJEKI KERISTIAN, S.H ', 'KAPTEN Chk ', '11160026250291', '1408112102910001', '1991-02-21', 'Laki-laki', 'KASI DUKBANKUM KUMDAM XIX/TT', 'KUMDAM XIX /TT', 'ASMIL PHB JL GUNUNG SAHLAN NO 24 ,SEKIP, KOTA PEKANBARU ', '169', '71', '24.86', 'Normal', '86', '125/80', '76', 'O', 'Sehat', '2026-06-26 06:11:37'),
(62, 46, 'SKD/ 46 /VI/2026/Kes', 'DIKA PUTRA HARDIANTO ', 'SERTU ', '21160170680195', '3519070201950001', '1995-01-02', 'Laki-laki', 'BATON POKKO TON III KI INF 2 YONKOMPOSIT I / GP DAM XIX /TT ', 'SPERS DAM XIX/TT ', 'KODAM XIX /TT', '172', '73', '24.68', 'Normal', '85', '120/86', '78', 'O', 'Sehat', '2026-06-26 07:19:37'),
(63, 47, 'SKD/ 47 /VI/2026/Kes', 'HENDRA PENGARAPEN BARUS ', 'KAPTEN INF ', '21950006620574', '00', '1974-05-30', 'Laki-laki', 'WADANDENMA BRIGIF TP 89 /GG DAM XIX /TT ', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '172', '78', '26.37', 'Overweight', '110', '120/80', '76', 'O', 'Sehat', '2026-06-26 07:34:24'),
(64, 48, 'SKD/ 48 /VI/2026/Kes', 'SAHALA MARTUA SIRAIT ', 'LETTU Inf', '21050112130583', '00', '1983-05-08', 'Laki-laki', 'DANKIMA DENMA BRIGIF TP 89/GG DAM XIX /TT ', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '165', '68', '24.98', 'Normal', '90', '120/70', '78', 'O', 'Sehat', '2026-06-26 05:28:04'),
(65, 49, 'SKD/ 49 /VI/2026/Kes', 'MUHAMMAD RIDWAN ', 'PRATU ', '31190529610999', '00', '1999-09-12', 'Laki-laki', 'TEPANGGUD 3 SIWAT KIMA DENMA BRIGIF TP 89/GG DAM XIX /TT', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '166', '68', '24.68', 'Normal', '90', '126/70', '87', 'O', 'Sehat', '2026-06-26 05:26:32'),
(66, 50, 'SKD/ 50 /VI/2026/Kes', 'ADI ARYANTO BATUBARA ', 'PRATU ', '311900074770497', '-00', '1997-04-12', 'Laki-laki', 'TABAKPAN 1 RUKAM 1 TONTAIKAM DENMA BRIGIF TP 89/GG DAM XIX/TT', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '170', '86', '29.76', 'Overweight', '99', '126/89', '78', 'O', 'Sehat', '2026-06-26 05:25:19'),
(67, 51, 'SKD/ 51 /VI/2026/Kes', 'BAGUS DWI ANDRIANTO , S.T.Han ', 'KAPTEN Arh', '11130019840890', '3309090508909002', '1990-08-05', 'Laki-laki', 'PABANDAPAM SINTELDAM JAYA', 'DENMADAM JAYA ', 'ASRAMA BS KODAM JAYA ', '173', '74', '24.73', 'Normal', '85', '120/80', '76', '0', 'Sehat', '2026-06-26 06:32:14'),
(68, 52, 'SKD/ 52 /VI/2026/Kes', 'PERDANA NATANAEL SITORUS ', 'PRATU ', '31190026511299', '1211060505850003', '1997-04-12', 'Laki-laki', 'TAMUDI RUTAI TONTAIKAM DENMA BRIGIF TP 89/GGDAM XIX /TT', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '187', '100', '28.60', 'Overweight', '105', '125/78', '87', 'B', 'Sehat', '2026-06-26 05:23:32'),
(69, 53, 'SKD/ 53 /VI/2026/Kes', 'ALFADLI IRFIANDA', 'PRADA', '1723102040019966', '1408041205960004', '2004-02-01', 'Laki-laki', 'TABANJURMONOB 1 RUMONOB TONPERNIKA KIKOMLEK DENMA BRIGIF TP  89/GG DAM XIX /TT', 'BRIGIF TP 89/GG DAM XIX /TT ', 'ASRAMA HAJI BRIGIF  TP 89/GG KABUPATEN SIAK ', '165', '65', '23.88', 'Normal', '84', '120/87', '78', 'B', 'Sehat', '2026-06-26 05:22:11'),
(70, 54, 'SKD/ 54 /VI/2026/Kes', 'ASHFIZAR LARRY IDARMANTO ', 'LETTU ARH ', '1121103980000150', '3528040703920004', '1998-03-07', 'Laki-laki', 'PASIOPSLAT YONARHANUD 13/PBY KODAM XIX/TT', 'YONARHANUD 13/PBY', 'JL.KAHARUDDIN NST ,SIMPANG TIGA , BUKIT RAYA,PEKANBARU ', '173', '74', '24.73', 'Normal', '89', '120/80', '78', 'O', 'Sehat', '2026-06-26 06:31:10'),
(71, 55, 'SKD/ 55 /VI/2026/Kes', 'BORRY AGUS PERMANA', 'LETDA Cke', '21070354000888', '1207192408880005', '1988-08-24', 'Laki-laki', 'DANTON KOMLAP BRIGIF TP 89/GG', 'BRIGIF TP 89/GG', 'JL.SAPTA MARGA TIMUR NO K-13', '174', '73', '24.11', 'Normal', '76', '130/78', '80', 'O', 'Sehat', '2026-06-26 06:19:51'),
(72, 56, 'SKD/ 56 /VI/2026/Kes', 'CHANDRA CHRISTIAN SINAGA', 'KAPTEN Inf', '11150013960693', '2', '1993-06-29', 'Laki-laki', 'WADANYONIF TP 898/PC', 'YONIF TP 898/PANCALANG CAKTI BRIGIF TP 89/GG KODAM XIX/TT', 'ASRAMA GRUP 1 KOPASSUS', '168', '68', '24.09', 'Normal', '76', '124/80', '85', 'AB', 'Sehat', '2026-06-26 06:28:54'),
(73, 57, 'SKD/ 57 /VI/2026/Kes', 'HENDRA', 'LETTU Inf', '21040012151083', '1111081410830001', '1983-10-14', 'Laki-laki', 'PASI LOG', 'YONIF TP 849/BS', 'ASMIL KIPAN B', '165', '62', '22.77', 'Normal', '81', '110/80', '90', 'O', 'Sehat', '2026-06-26 06:38:15'),
(74, 58, 'SKD/ 58 /VI/2026/Kes', 'SAHRUL HIDAYAT', 'LETTU Inf', '1121105990000079', '4', '1999-05-01', 'Laki-laki', 'DANTON BAN KIPAN A', 'YONIF TP 849/BS', 'ASMIL YONIF 133/YS', '184', '82', '24.22', 'Normal', '77', '120/80', '86', 'O', 'Sehat', '2026-06-26 06:42:09'),
(75, 59, 'SKD/ 59 /VI/2026/Kes', 'WIJAYA KESUMA', 'LETTU Inf', '21040011650983', '5', '1983-09-18', 'Laki-laki', 'PASIPERS', 'YONIF TP 849/BS', 'ASMIL YONIF RAIDER KHUSUS 136/TS', '165', '60', '22.04', 'Normal', '78', '120/80', '90', 'B', 'Sehat', '2026-06-26 06:45:44'),
(76, 60, 'SKD/ 60 /VI/2026/Kes', 'MUHAMMAD KAMAL KARRAZI', 'LETDA Arh', '1123101000001133', '2', '2000-01-13', 'Laki-laki', 'PADALPUR RAI A YONARHANUD 13/PBY', 'YON ARHANUD 13/PBY', 'JL.BULAK III GANG SALAM NO.14', '171', '70', '23.94', 'Normal', '78', '122/80', '80', 'O', 'Sehat', '2026-06-26 07:28:26'),
(77, 61, 'SKD/ 61 /VI/2026/Kes', 'HASANUL REZKI', 'PRATU', '31190519630998', '4', '1998-09-09', 'Laki-laki', 'TA PENDAM XIX/TT', 'PENDAM XIX/TT', 'JL.SEKUNTUM NO.50', '168', '60', '21.26', 'Normal', '70', '122/75', '80', 'B', 'Sehat', '2026-06-26 06:57:34'),
(78, 62, 'SKD/ 62 /VI/2026/Kes', 'MUSTAPA ICHYAR MANURUNG', 'KOPDA', '31081575240488', '4', '1988-04-06', 'Laki-laki', 'TA PENDAM XIX/TT', 'PENDAM XIX/TT', 'BATALYON KOMPOSIT GARDAPATI', '170', '80', '27.68', 'Overweight', '85', '125/80', '80', 'O', 'Sehat', '2026-06-26 07:18:40'),
(79, 63, 'SKD/ 63 /VI/2026/Kes', 'KENNEDI SIREGAR, A. MD.Kep', 'LETTU Ckm', '21040272100782', '2', '1982-07-13', 'Laki-laki', 'DANKI MEDIS/KESLAP', 'YONIF TP 851/BBC', 'BUPER TENGKU BUANG ASMARA', '165', '68', '24.98', 'Normal', '85', '130/80', '80', 'B', 'Sehat', '2026-06-26 08:08:47'),
(80, 64, 'SKD/ 64 /VI/2026/Kes', 'SADOK SILABAN', 'LETDA KAV', '21060096790285', '1216011011860003', '1985-02-11', 'Laki-laki', 'PA SANDI', 'KODIM 0302/INHU', 'ASRAMA KODIM O3O2/INHU', '172', '77', '26.03', 'Overweight', '80', '122/87', '80', 'B', 'Sehat', '2026-06-26 08:15:08'),
(81, 65, 'SKD/ 65 /VI/2026/Kes', 'UJANG ZAKHARI', 'KAPTEN Inf', '617549', '1472022508060020', '1968-11-23', 'Laki-laki', 'DANRAMIL 0321-04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '175', '70', '22.86', 'Normal', '70', '130/80', '80', 'O', 'Sehat', '2026-06-27 02:38:48'),
(82, 66, 'SKD/ 66 /VI/2026/Kes', 'NURAHMAD', 'LETDA Inf', '21060010640885', '2', '1985-08-18', 'Laki-laki', 'DANUNIT INTEL DIM 0321/ROHIL', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '170', '65', '22.49', 'Normal', '71', '122/70', '78', 'A', 'Sehat', '2026-06-27 02:52:17'),
(83, 67, 'SKD/ 67 /VI/2026/Kes', 'JUNAEDI', 'SERMA', '31940417800673', '3', '1973-06-23', 'Laki-laki', 'DANPOK INTEL 2 UNIT INTEL', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '170', '72', '24.91', 'Normal', '76', '125/80', '77', 'B', 'Sehat', '2026-06-27 03:05:27'),
(84, 68, 'SKD/ 68 /VI/2026/Kes', 'ASWAN', 'SERKA', '31960475120175', '1407022211160001', '1975-01-18', 'Laki-laki', 'BABINSA RAMIL', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '166', '67', '24.31', 'Normal', '77', '125/80', '82', 'O', 'Sehat', '2026-06-27 03:04:05'),
(85, 69, 'SKD/ 69 /VI/2026/Kes', 'BAHARMAN', 'SERKA', '31970396900676', '2', '1976-06-22', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '165', '66', '24.24', 'Normal', '76', '129/74', '80', 'O', 'Sehat', '2026-06-27 03:11:28'),
(86, 70, 'SKD/ 70 /VI/2026/Kes', 'BAHARUDDIN SIREGAR', 'SERKA', '31950035400575', '4', '1975-05-11', 'Laki-laki', 'BABINSA RAMIL 05/RM', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 05/RIMBA MELINTANG', '167', '68', '24.38', 'Normal', '74', '130/70', '80', 'AB', 'Sehat', '2026-06-27 03:15:28'),
(87, 71, 'SKD/ 71 /VI/2026/Kes', 'SUYETNO', 'SERTU', '31030498170482', '3', '1982-04-14', 'Laki-laki', 'BABINSA RAMIL 06', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 06/TANJUNG MEDAN', '166', '68', '24.68', 'Normal', '75', '124/69', '70', 'B', 'Sehat', '2026-06-27 03:19:12'),
(88, 72, 'SKD/ 72 /VI/2026/Kes', 'ABU SAMMA HASIBUAN', 'SERTU', '31960480490575', '2', '1975-05-04', 'Laki-laki', 'BABINSA RAMIL 03/BGS', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINAMBAH', '170', '70', '24.22', 'Normal', '75', '111/70', '73', 'O', 'Sehat', '2026-06-27 03:24:47'),
(89, 73, 'SKD/ 73 /VI/2026/Kes', 'SUYANTO', 'SERTU', '31970012780675', '3', '1975-06-17', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '165', '65', '23.88', 'Normal', '73', '117/76', '78', 'O', 'Sehat', '2026-06-27 03:28:59'),
(90, 74, 'SKD/ 74 /VI/2026/Kes', 'HERI SUSANTO', 'SERDA ', '31010437960880', '1', '1980-08-28', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '164', '65', '24.17', 'Normal', '71', '130/70', '81', 'B', 'Sehat', '2026-06-27 03:32:51'),
(91, 75, 'SKD/ 75 /VI/2026/Kes', 'SEDIONO', 'SERDA', '31950373990573', '2', '1973-05-30', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINEMBAH', '165', '65', '23.88', 'Normal', '72', '124/84', '84', 'O', 'Sehat', '2026-06-27 03:36:24'),
(92, 76, 'SKD/ 76 /VI/2026/Kes', 'KHOLIK', 'SERDA', '31020140360181', '2', '1981-01-04', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '166', '65', '23.59', 'Normal', '72', '127/65', '68', 'A', 'Sehat', '2026-06-27 03:40:11'),
(93, 77, 'SKD/ 77 /VI/2026/Kes', 'JONRI HALOMOAN SIRAIT', 'SERDA', '31010441580181', '2', '1981-01-13', 'Laki-laki', 'BAINTEL 1 UNIT INTEL', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '166', '65', '23.59', 'Normal', '73', '128/70', '78', 'A', 'Sehat', '2026-06-27 03:44:23'),
(94, 78, 'SKD/ 78 /VI/2026/Kes', 'KARYONO', 'SERDA', '31010622830281', '2', '1981-02-17', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINEMBAH', '165', '65', '23.88', 'Normal', '72', '122/70', '70', 'B', 'Sehat', '2026-06-27 03:57:32'),
(95, 79, 'SKD/ 79 /VI/2026/Kes', 'AGUS FAJARYONO', 'SERDA', '31020655580882', '21', '1982-08-23', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '167', '66', '23.67', 'Normal', '72', '123/76', '66', 'A', 'Sehat', '2026-06-27 04:04:41'),
(96, 80, 'SKD/ 80 /VI/2026/Kes', 'SUGIANTO', 'SERDA', '31010041600482', '11', '1982-04-01', 'Laki-laki', 'BABINSA RAMIL 05', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 05/RIMBA MELINTANG', '166', '65', '23.59', 'Normal', '71', '125/82', '75', 'O', 'Sehat', '2026-06-27 04:25:17'),
(97, 81, 'SKD/ 81 /VI/2026/Kes', 'PURWANTO', 'SERDA', '31020880630482', '1', '1982-04-23', 'Laki-laki', 'BABINSA RAMIL 06', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 06/TANJUNG MEDAN', '165', '66', '24.24', 'Normal', '72', '120/70', '73', 'B', 'Sehat', '2026-06-27 04:28:40'),
(98, 82, 'SKD/ 82 /VI/2026/Kes', 'SUANDI H.SIMANJUNTAK', 'SERDA', '31060017241184', '1', '1984-11-23', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINAMBAH', '170', '71', '24.57', 'Normal', '75', '115/84', '70', '0', 'Sehat', '2026-06-27 04:31:37'),
(99, 83, 'SKD/ 83 /VI/2026/Kes', 'BENY GUNAWAN', 'SERDA', '31081635971286', '4', '1986-12-11', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '164', '67', '24.91', 'Normal', '76', '127/71', '75', '0', 'Sehat', '2026-06-27 04:34:38'),
(100, 84, 'SKD/ 84 /VI/2026/Kes', 'EPRI HARWANTO', 'SERDA', '31081651960688', '3', '1988-06-19', 'Laki-laki', 'BABINSA RAMIL 01', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 01/BANGKO', '166', '68', '24.68', 'Normal', '74', '125/79', '88', 'O', 'Sehat', '2026-06-27 04:37:32'),
(101, 85, 'SKD/ 85 /VI/2026/Kes', 'ROBIANDA SITOPU', 'SERDA', '31080003361086', '5', '1986-10-05', 'Laki-laki', 'BABINSA RAMIL 06', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL O6/TANJUNG MEDAN', '166', '67', '24.31', 'Normal', '74', '130/75', '70', 'AB', 'Sehat', '2026-06-27 04:40:47'),
(102, 86, 'SKD/ 86 /VI/2026/Kes', 'AHMAD SYARIF', 'SERDA', '31081573340288', '7', '1988-02-03', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '180', '80', '24.69', 'Normal', '80', '126/73', '82', 'A', 'Sehat', '2026-06-27 04:44:15'),
(103, 87, 'SKD/ 87 /VI/2026/Kes', 'HENDRA SITANGGANG', 'SERDA', '31080014250288', '7', '1988-02-04', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '168', '67', '23.74', 'Normal', '75', '110/74', '70', 'B', 'Sehat', '2026-06-27 04:47:11'),
(104, 88, 'SKD/ 88 /VI/2026/Kes', 'JHON MESTIKA', 'SERDA', '31080011771087', '4', '1987-10-24', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '166', '66', '23.95', 'Normal', '73', '117/65', '71', 'B', 'Sehat', '2026-06-27 04:50:12'),
(105, 89, 'SKD/ 89 /VI/2026/Kes', 'ERIK HANDAYANI', 'SERDA', '31060511411285', '8', '1985-12-01', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '167', '66', '23.67', 'Normal', '72', '124/68', '68', 'O', 'Sehat', '2026-06-27 04:53:12'),
(106, 90, 'SKD/ 90 /VI/2026/Kes', 'ROBERT ANTONY SIPAHUTAR', 'SERDA', '31070859241085', '4', '1985-10-13', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '175', '74', '24.16', 'Normal', '80', '131/81', '75', 'O', 'Sehat', '2026-06-27 04:56:43'),
(107, 91, 'SKD/ 91 /VI/2026/Kes', 'TULUS M.M. LUMBANTORUAN', 'SERDA', '31080015400388', '9', '1988-03-14', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINEMBAH', '170', '70', '24.22', 'Normal', '77', '125/80', '74', 'O', 'Sehat', '2026-06-27 05:00:26'),
(108, 92, 'SKD/ 92 /VI/2026/Kes', 'HERMANTO', 'SERDA', '31080016980688', '1', '1988-06-09', 'Laki-laki', 'BABINSA RAMIL 04/KUBU', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '168', '67', '23.74', 'Normal', '73', '123/65', '70', 'O', 'Sehat', '2026-06-27 05:03:11'),
(109, 93, 'SKD/ 93 /VI/2026/Kes', 'MUNAWIR EFENDI NST', 'SERDA', '31080023400489', '0', '1989-04-13', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '169', '69', '24.16', 'Normal', '76', '124/70', '75', 'O', 'Sehat', '2026-06-27 05:06:17'),
(110, 94, 'SKD/ 94 /VI/2026/Kes', 'BOBI ERTANTO', 'SERDA', '31050643921083', '3', '1983-10-05', 'Laki-laki', 'BABINSA RAMIL 05', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 05/RIMBA MELINTANG', '167', '68', '24.38', 'Normal', '73', '129/83', '70', 'B', 'Sehat', '2026-06-27 05:09:03'),
(111, 95, 'SKD/ 95 /VI/2026/Kes', 'JULIANTO', 'SERDA', '31060044960786', '2', '1986-07-12', 'Laki-laki', 'BABINSA RAMIL 04', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 04/KUBU', '170', '70', '24.22', 'Normal', '75', '125/67', '66', 'B', 'Sehat', '2026-06-27 05:11:39'),
(112, 96, 'SKD/ 96 /VI/2026/Kes', 'MULYONO', 'SERDA', '31081620860389', '3', '1989-03-22', 'Laki-laki', 'BABINSARAMIL 06', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 06/TANJUNG MEDAN', '165', '65', '23.88', 'Normal', '72', '131/68', '70', 'B', 'Sehat', '2026-06-27 05:14:26'),
(113, 97, 'SKD/ 97 /VI/2026/Kes', 'JANTER HAERMANTO SIRAIT', 'SERDA', '31080027200786', '1', '1986-07-16', 'Laki-laki', 'BABINSA RAMIL 02', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 02/TANAH PUTIH', '175', '75', '24.49', 'Normal', '76', '118/85', '86', 'O', 'Sehat', '2026-06-27 05:17:27'),
(114, 98, 'SKD/ 98 /VI/2026/Kes', 'HERMANSYAH', 'SERDA', '31060558780985', '1', '1985-11-30', 'Laki-laki', 'BAINTEL 4 UNIT INTEL', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '165', '65', '23.88', 'Normal', '73', '127/75', '71', 'AB', 'Sehat', '2026-06-27 05:20:31'),
(115, 99, 'SKD/ 99 /VI/2026/Kes', 'SAGINA', 'KOPDA', '31100577380189', '3', '1989-01-11', 'Laki-laki', 'TAMUDI ALANG AIR 2/SPEED BOAY', 'KODIM 0321/ROHIL', 'ASRAMA KODIM 0321/ROHIL', '165', '65', '23.88', 'Normal', '73', '127/67', '70', 'B', 'Sehat', '2026-06-27 05:23:22'),
(116, 100, 'SKD/ 100 /VI/2026/Kes', 'WIDIAR ABIDIN', 'KOPDA', '31100288951189', '2', '1989-11-16', 'Laki-laki', 'BABINSA RAMIL 01', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 01/BANGKO', '165', '65', '23.88', 'Normal', '73', '115/78', '76', 'B', 'Sehat', '2026-06-27 05:25:54'),
(117, 101, 'SKD/ 101 /VI/2026/Kes', 'ZULFIKRI SITORUS', 'KOPDA', '31081577060688', '3', '1988-06-07', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 03/BAGAN SINEMBAH', '166', '67', '24.31', 'Normal', '74', '121/65', '73', 'O', 'Sehat', '2026-06-27 05:28:12'),
(118, 102, 'SKD/ 102 /VI/2026/Kes', 'ROBY WINATA SINAGA', 'PRAKA', '31150321730695', '1', '1995-06-02', 'Laki-laki', 'BABINSA RAMIL 01', 'KODIM 0321/ROHIL', 'ASRAMA KORAMIL 01/BANGKO', '165', '67', '24.61', 'Normal', '74', '126/70', '70', 'O', 'Sehat', '2026-06-27 05:31:39'),
(119, 103, 'SKD/ 103 /VI/2026/Kes', 'HADI RUBIANTO ', 'PRAKA', '31150076960595', '0', '1995-05-10', 'Laki-laki', 'TA UNIT  MOTORIS POMDAM XIX/TT', 'POMDAM XIX/TT', 'KODAM XIX/TT', '181', '90', '27.47', 'Overweight', '90', '120/80', '78', 'A', 'Sehat', '2026-06-29 11:38:07'),
(120, 104, 'SKD/ 104 /VI/2026/Kes', 'SISTRA BAYU SUGHORO,S.T.Han.,M.Sc', 'KAPTEN Arh ', '11150018910193', '332708001930021', '1993-01-10', 'Laki-laki', 'WADANYONARH 13/PBY ', 'YON ARHANUD 13/PBY ', 'KOMPLEK KODAM BINTARO, RT 11 RW 6 PESANGGRAHAN ,JAKARTA SELATAN', '181', '81', '24.72', 'Normal', '88', '120/70', '76', 'B', 'Sehat', '2026-07-01 11:30:33'),
(121, 105, 'SKD/ 105 /VI/2026/Kes', 'NANANG GUSTIAWAN', 'SERKA', '31970398070876', '1401130508760001', '1976-08-05', 'Laki-laki', 'BAMINBIT SIPENSAT PENDAM XIX/TT', 'PENDAM XIX/TT', 'JL.SUTOMO ,KEL SUKAMULYA ,KEC SAIL ', '163', '62', '23.34', 'Normal', '80', '120/80', '78', 'O', 'Sehat', '2026-06-29 00:28:36'),
(125, 106, 'SKD/ 106 /VI/2026/Kes', 'MUHAMMAD HAMDANI', 'SERDA', '31081552700286', '1401062402860002', '1986-02-24', 'Laki-laki', 'BA UNIT INTEL 2/C/III TIM INTEL', 'KOREM 031/WB', 'JL. PASIR PUTIH, DESA BARU, KEC. SIAK HULU, KAB. KAMPAR', '164', '69', '25.65', 'Overweight', '86', '120/70', '76', 'O', 'Sehat', '2026-06-29 11:44:16'),
(126, 107, 'SKD/ 107 /VI/2026/Kes', 'RISWANTO MANIK', 'SERKA', '31970619420676', '1405030606760007', '1976-06-06', 'Laki-laki', 'BAMIN UNIT INTEL II TIM INTEL', 'KOREM 031/WB', 'SOREK, KAB. PELALAWAN', '170', '75', '25.95', 'Overweight', '75', '120/80', '76', 'B', 'Sehat', '2026-06-29 11:46:45'),
(127, 108, 'SKD/ 108 /VI/2026/Kes', 'SUNARNO ', 'LETDA Arh', '3920722520173', '-', '1973-01-10', 'Laki-laki', 'DANUNIT INTEL 1 TIM INTEL KOREM 031 /WB KODAM XIX/TT', 'KOREM 031/WB KODAM XIX /TT', 'JL.A YANI PEKANBARU ', '166', '68', '24.68', 'Normal', '82', '120/80', '78', 'O', 'Sehat', '2026-06-29 11:51:58'),
(128, 109, 'SKD/ 109 /VI/2026/Kes', 'IMAM SUNANDAR', 'PRAKA ', '31150049410993', '3217060209930004', '1993-09-02', 'Laki-laki', 'TABAKCUK 2 RU 2 TON SLT DENMADAM 031/WB', 'KOREM 031/WB', 'PANDAM JAYA, BLOK B 10 NO. 2, SIAK HULU, KAMPAR', '169', '71', '24.86', 'Normal', '84', '120/80', '76', 'B', 'Sehat', '2026-06-29 11:55:21'),
(129, 110, 'SKD/ 110 /VI/2026/Kes', 'HUSNI MUBAROK', 'SERKA', '21110228161289', '1401130812890004', '1989-12-08', 'Laki-laki', 'BAMIN PENREM 031/WB', 'KOREM 031/WB', 'ASRAMA PANCASILA', '171', '85', '29.07', 'Overweight', '88', '120/80', '76', 'B', 'Sehat', '2026-06-29 11:57:32'),
(130, 111, 'SKD/ 111 /VI/2026/Kes', 'ARIGUNADI', 'LETDA Arh', '3910433610470', '-', '1970-04-29', 'Laki-laki', 'PAMINOPS TIM INTEL REM 031/WB', 'KOREM 031/WB', 'JL. SUKA KARYA', '165', '54', '19.83', 'Normal', '70', '120/80', '76', 'O', 'Sehat', '2026-06-29 12:04:11'),
(131, 112, 'SKD/ 112 /VI/2026/Kes', 'LINTANG NUGRAHA ADITAMA', 'LETTU Inf', '1121112980000054', '3273081212980003', '1998-12-12', 'Laki-laki', 'DANKIPAN A', 'YONIF 132/BS', 'ASMIL KIPAN A YONIF 132/BS, JL. INPRES KEL. BAGAN BESAR, KEC. BUKIT KAPUR, KOTA DUMAI', '176', '76', '24.54', 'Normal', '82', '120/80', '76', 'AB', 'Sehat', '2026-06-29 12:12:21'),
(132, 113, 'SKD/ 113 /VI/2026/Kes', 'MOHAMMAD HARYO BAGASKORO ', 'LETTU Inf', '1121111950000002', '3515082111950003', '1995-11-21', 'Laki-laki', 'DANKIPAN B YONIF 132/BS', 'YONIF 132/BS', 'ASMIL KIPAN B YONIF 132/BS, JL. LINTAS TIMUR, SIDUMULYO, KEC. LIRIK, INDRAGIRI HULU, RIAU', '177', '78', '24.90', 'Normal', '70', '120/80', '76', 'O', 'Sehat', '2026-06-29 12:17:01'),
(133, 114, 'SKD/ 114 /VI/2026/Kes', 'ANDI HENDRATA SIREGAR', 'LETTU Inf', '21040018920984', '1210010709840002', '1984-09-07', 'Laki-laki', 'DANKI SENAPAN C YONIF 132/BS', 'YONIF 132/BS', 'ASMIL YONIF 132/BS, SALO, BANGKINANG', '167', '69', '24.74', 'Normal', '71', '120/80', '76', 'O', 'Sehat', '2026-06-29 12:20:17'),
(134, 115, 'SKD/ 115 /VI/2026/Kes', 'TRIYONO', 'SERDA', '31080290790687', '91710106870006', '1987-06-07', 'Laki-laki', 'BAURGUJATMA DENPOM 1/3 PEKANBARU', 'DENPOM 1/3 PEKANBARU', 'ASRAMA DENPOM 1/3, SIMPANG TIGA, TENGKUBEY', '176', '92', '29.70', 'Overweight', '94', '120/80', '76', 'B', 'Sehat', '2026-06-29 12:24:00'),
(135, 116, 'SKD/ 116 /VI/2026/Kes', 'UCOK A. HASIBUAN', 'SERMA', '31950023361073', '-', '1973-10-21', 'Laki-laki', 'BABINSA RAMIL 04', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '169', '76', '26.61', 'Overweight', '78', '130/85', '76', 'B+', 'Sehat', '2026-06-29 12:27:12'),
(136, 117, 'SKD/ 117 /VI/2026/Kes', 'MUHAJIR', 'SERMA', '21060049360884', '1', '1984-08-08', 'Laki-laki', 'Danpos Ramil 02 Kec. Bungaraya Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '166', '68', '24.68', 'Normal', '88', '120/80', '76', 'O', 'Sehat', '2026-06-30 13:00:19'),
(137, 118, 'SKD/ 118 /VI/2026/Kes', 'EDY SUPRAYETNO', 'SERMA', '21060004700984', '1', '1984-09-19', 'Laki-laki', 'Danpos Ramil 02 Kec. Sabak Auh Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '166', '68', '24.68', 'Normal', '88', '120/80', '76', 'O', 'Sehat', '2026-06-30 12:59:13'),
(138, 119, 'SKD/ 119 /VI/2026/Kes', 'IRWAN', 'SERKA', '31970421080876', '-', '1976-08-17', 'Laki-laki', 'Babinsa Ramil 02 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '78', '26.67', 'Overweight', '88', '120/80', '76', 'B', 'Sehat', '2026-06-29 13:22:47'),
(139, 120, 'SKD/ 120 /VI/2026/Kes', 'MULYADI', 'SERTU', '3930058550674', '1', '1974-06-05', 'Laki-laki', 'Baurmin Unit Intel Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'B', 'Sehat', '2026-06-30 12:55:25'),
(140, 121, 'SKD/ 121 /VI/2026/Kes', 'RUDIANTO', 'SERTU', '31030091830282', '-', '1982-02-11', 'Laki-laki', 'Babinsa Ramil 02 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '167', '68', '24.38', 'Normal', '88', '120/80', '76', 'A+', 'Sehat', '2026-06-29 13:25:22'),
(141, 122, 'SKD/ 122 /VI/2026/Kes', 'SARJU', 'SERTU', '3920788120673', '1', '1973-06-08', 'Laki-laki', 'Babinsa Ramil 04 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '175', '76', '24.82', 'Normal', '88', '120/80', '76', 'B', 'Sehat', '2026-06-30 12:54:17'),
(142, 123, 'SKD/ 123 /VI/2026/Kes', 'SURIYADI', 'SERTU', '31970386350775', '-', '1975-07-01', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '168', '60', '21.26', 'Normal', '64', '120/80', '76', 'O', 'Sehat', '2026-06-29 13:27:55'),
(143, 124, 'SKD/ 124 /VI/2026/Kes', 'RAMATSAH', 'SERDA', '31010445540781', '1', '1981-07-25', 'Laki-laki', 'Basus Unit Intel Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'O', 'Sehat', '2026-06-30 12:51:59'),
(144, 125, 'SKD/ 125 /VI/2026/Kes', 'KAMTONO MANULANG', 'SERDA', '31010432260380', '1', '1980-03-25', 'Laki-laki', 'Babinsa Ramil 04 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '168', '70', '24.80', 'Normal', '88', '120/80', '76', 'A', 'Sehat', '2026-06-30 12:50:53'),
(145, 126, 'SKD/ 126 /VI/2026/Kes', 'MAYUS MARULI', 'SERDA', '31010039491181', '1', '1981-11-22', 'Laki-laki', 'Babinsa Ramil 03 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'B', 'Sehat', '2026-06-30 12:49:28'),
(146, 127, 'SKD/ 127 /VI/2026/Kes', 'SATRIA MARNI', 'SERDA', '31010452390682', '-', '1982-06-25', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '172', '65', '21.97', 'Normal', '70', '120/80', '76', 'AB', 'Sehat', '2026-06-29 13:33:08'),
(147, 128, 'SKD/ 128 /VI/2026/Kes', 'DEMENGGUL GULTOM', 'SERDA', '31030025920282', '1', '1982-02-28', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'O', 'Sehat', '2026-06-30 12:48:14'),
(148, 129, 'SKD/ 129 /VI/2026/Kes', 'GUNAWAN', 'SERDA', '31010489690181', '1', '1981-01-10', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '167', '69', '24.74', 'Normal', '88', '120/80', '76', 'O', 'Sehat', '2026-06-30 12:46:43'),
(149, 130, 'SKD/ 130 /VI/2026/Kes', 'PARJUNI', 'SERDA', '31020700040681', '-', '1981-06-14', 'Laki-laki', 'Baintel 1.2 Unit Intel Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '172', '63', '21.30', 'Normal', '70', '120/80', '76', 'O', 'Sehat', '2026-06-29 13:36:40'),
(150, 131, 'SKD/ 131 /VI/2026/Kes', 'RONI PANJAITAN', 'SERDA', '31020040940582', '1', '1982-05-01', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'A', 'Sehat', '2026-06-30 12:45:15'),
(151, 132, 'SKD/ 132 /VI/2026/Kes', 'HEPPY SETIAWAN', 'SERDA', '31030184241281', '1', '1981-12-27', 'Laki-laki', 'Babinsa Ramil 04 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '88', '120/80', '76', 'AB', 'Sehat', '2026-06-30 12:42:10'),
(152, 133, 'SKD/ 133 /VI/2026/Kes', 'PRIMA OKTAVIANDI', 'SERDA', '31071519731086', '1', '1986-10-12', 'Laki-laki', 'Ba Simak BMN Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '168', '70', '24.80', 'Normal', '88', '120/80', '76', 'AB', 'Sehat', '2026-06-30 12:41:23'),
(153, 134, 'SKD/ 134 /VI/2026/Kes', 'TONI EFENDI', 'SERKA', '31980468191279', '-', '1979-12-10', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '170', '69', '23.88', 'Normal', '93', '130/85', '76', 'B', 'Sehat', '2026-06-29 13:46:11'),
(154, 135, 'SKD/ 135 /VI/2026/Kes', 'RIZKY ANANDA PULUNGAN', 'PRADA', '1723104020016876', '1271091304020001', '2002-04-13', 'Laki-laki', 'TA DENMA DAM XIX/TT', 'KODAM XIX/TT', 'ASRAMA WIDURI BARAK KENARI NO. 161', '167', '69', '24.74', 'Normal', '88', '120/80', '76', 'A', 'Sehat', '2026-06-29 16:36:55'),
(155, 136, 'SKD/ 136 /VI/2026/Kes', 'YANDRI ERMANTO', 'KOPTU', '31040480570385', '-', '1985-03-03', 'Laki-laki', 'KORAMIL 01 RUMBAI', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '170', '87', '30.10', 'Obesitas', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 13:51:03'),
(156, 137, 'SKD/ 137 /VI/2026/Kes', 'NOVALDI', 'PELDA', '21010008480280', '-', '1980-02-12', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '164', '80', '29.74', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 13:53:31'),
(157, 138, 'SKD/ 138 /VI/2026/Kes', 'NOVALDI', 'PELDA', '21010008480280', '-', '1980-02-12', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '164', '92', '34.21', 'Obesitas', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 13:55:22'),
(158, 139, 'SKD/ 139 /VI/2026/Kes', 'SUGIANTO', 'SERDA', '31080011360987', '-', '1987-09-30', 'Laki-laki', 'BABINSA RAMIL 06/SKJ', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '176', '82', '26.47', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 13:57:44'),
(159, 140, 'SKD/ 140 /VI/2026/Kes', 'HARFAN', 'SERDA', '31030804320681', '-', '1981-06-26', 'Laki-laki', 'BABINSA RAMIL 08/RB', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '167', '75', '26.89', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 13:59:52'),
(160, 141, 'SKD/ 141 /VI/2026/Kes', 'RIFKI MANUBA SIMANJUNTAK', 'PRAKA', '31100370780590', '1271182205900006', '1990-05-22', 'Laki-laki', 'TAMUDIRAN', 'BEKANGDAM XIX/TT', 'ASRAMA KARKAM, JL. LOKOMOTIF, RIAU', '168', '72', '25.51', 'Overweight', '84', '120/80', '76', 'AB', 'Sehat', '2026-06-29 14:09:24'),
(161, 142, 'SKD/ 142 /VI/2026/Kes', 'GERKLIWON SINAGA', 'SERDA', '31088022410289', '-', '1989-02-21', 'Laki-laki', 'BABINSA KORAMIL 06/SKJ', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '166', '86', '31.21', 'Obesitas', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 14:12:04'),
(162, 143, 'SKD/ 143 /VI/2026/Kes', 'MISWANTO', 'SERDA', '31000439120881', '-', '1981-08-27', 'Laki-laki', 'BABINSA RAMIL 03', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '162', '65', '24.77', 'Normal', '70', '130/85', '76', 'A', 'Sehat', '2026-06-29 14:13:53'),
(163, 144, 'SKD/ 144 /VI/2026/Kes', 'MIFTAKHU ROHMAN', 'PELDA', '21020150840481', '-', '1981-04-26', 'Laki-laki', 'BATI WATPAL SILOG', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '170', '78', '26.99', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 14:15:41'),
(164, 145, 'SKD/ 145 /VI/2026/Kes', 'EDO BAYU S.', 'KOPDA', '31100352960389', '-', '1989-03-31', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '179', '100', '31.21', 'Obesitas', '110', '130/85', '76', 'O', 'Sehat', '2026-06-29 14:17:37'),
(165, 146, 'SKD/ 146 /VI/2026/Kes', 'MEIDIAN RIYANDAH', 'SERTU', '31020483150581', '-', '1981-05-03', 'Laki-laki', 'BAMIN SINTEL', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '167', '70', '25.10', 'Overweight', '93', '130/85', '76', 'A', 'Sehat', '2026-06-29 14:20:25'),
(166, 147, 'SKD/ 147 /VI/2026/Kes', 'ANGGI RONALDO', 'KOPDA', '31100011990789', '-', '1989-07-30', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '173', '72', '24.06', 'Normal', '76', '130/85', '76', 'B+', 'Sehat', '2026-06-29 14:22:48'),
(167, 148, 'SKD/ 148 /VI/2026/Kes', 'AGUS SAFUTRA', 'SERDA', '31020484300881', '-', '1981-08-01', 'Laki-laki', 'BABINSA 03/SENAPELAN', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '169', '79', '27.66', 'Overweight', '93', '130/85', '76', 'B+', 'Sehat', '2026-06-29 14:25:18'),
(168, 149, 'SKD/ 149 /VI/2026/Kes', 'YULIANTO', 'SERTU', '31950061880773', '-', '1973-07-18', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '168', '75', '26.57', 'Overweight', '93', '130/85', '76', 'AB', 'Sehat', '2026-06-29 14:27:14'),
(169, 150, 'SKD/ 150 /VI/2026/Kes', 'USMAN', 'SERKA', '31980000551075', '-', '1975-10-25', 'Laki-laki', 'BABINSA', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '175', '88', '28.73', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 14:30:57'),
(170, 151, 'SKD/ 151 /VI/2026/Kes', 'SUKIRAN', 'SERDA', '31010169740282', '1', '1982-02-11', 'Laki-laki', 'BABINSA RAMIL 06/SKJ', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '170', '77', '26.64', 'Overweight', '93', '130/85', '68', 'O', 'Sehat', '2026-06-29 15:03:05'),
(171, 152, 'SKD/ 152 /VI/2026/Kes', 'OKTA ALFAMI CANDRA', 'PRATU', '3190017030998', '3', '1998-09-10', 'Laki-laki', 'BABINSA RAMIL 03/SENAPELAN', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '168', '72', '25.51', 'Overweight', '93', '130/85', '69', 'O', 'Sehat', '2026-06-29 15:05:59'),
(172, 153, 'SKD/ 153 /VI/2026/Kes', 'DWI HARYATNO ADI', 'SERDA', '31000817710581', '2', '1980-05-04', 'Laki-laki', 'BABINSA RAMIL 05/SAIL', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301', '166', '67', '24.31', 'Normal', '93', '130/85', '70', 'A+', 'Sehat', '2026-06-29 15:11:53'),
(173, 154, 'SKD/ 154 /VI/2026/Kes', 'SURIADI', 'SERDA', '31050123180884', '4', '1984-08-22', 'Laki-laki', 'BABINSA RAMIL 05/SAIL', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301', '168', '70', '24.80', 'Normal', '93', '130/85', '78', 'O', 'Sehat', '2026-06-30 12:52:59'),
(174, 155, 'SKD/ 155 /VI/2026/Kes', 'DENNY SOFRIANTO', 'SERDA', '31080037021287', '3', '1987-12-13', 'Laki-laki', 'BABINSA KORAMIL 05/SAIL', 'KODIM 0301/PEKANBARU', 'ASRAMA KODIM 0301', '170', '78', '26.99', 'Overweight', '93', '130/85', '78', 'B', 'Sehat', '2026-06-29 15:17:37'),
(175, 156, 'SKD/ 156 /VI/2026/Kes', 'MANGAPUL ALFRIANDI MANULLANG', 'PRAKA', '31140031831291', '3', '1991-12-22', 'Laki-laki', 'TA DATA RUANG YUDHA SIAPORS PUSKODAL DAM XIX/TT', 'PENDAM XIX/TT', 'AIR BULUH RT001/RW 002 KEL/DESA. TELUK BUTON, KEC. BUNGURAN UTARA', '169', '71', '24.86', 'Normal', '89', '130/78', '75', 'AB+', 'Sehat', '2026-06-30 09:58:43'),
(176, 157, 'SKD/ 157 /VI/2026/Kes', 'JERI ZULHENDRI', 'SERKA', '31980435430878', '3', '1978-08-03', 'Laki-laki', 'BAMIN SETUMDAM XIX/TT', 'KODAM XIX/TT', 'KODAM XIX/TT', '163', '64', '24.09', 'Normal', '65', '125/78', '69', 'O', 'Sehat', '2026-06-29 15:30:01'),
(177, 158, 'SKD/ 158 /VI/2026/Kes', 'JUNAIDI HADI KUSMIADY', 'SERKA', '31980052860678', '2', '1978-06-12', 'Laki-laki', 'BAMIN IRUTBEN ITDAM XIX/TT', 'KODAM XIX/TT', 'KODAM XIX/TT', '166', '62', '22.50', 'Normal', '67', '130/65', '70', 'O', 'Sehat', '2026-06-29 15:34:53'),
(178, 159, 'SKD/ 159 /VI/2026/Kes', 'JUNAIDI SILALAHI', 'SERKA', '31980058070276', '3', '1976-02-13', 'Laki-laki', 'BABANPROGOPS INFOLATAHDAM XIX/TT', 'INFOLATANDAM XIX/TT', 'JL.CIPTA KARYA GG. LENGKEPE BLOK A.10', '168', '64', '22.68', 'Normal', '78', '125/78', '80', 'B', 'Sehat', '2026-06-29 15:38:50'),
(179, 160, 'SKD/ 160 /VI/2026/Kes', 'SUTONO', 'SERDA', '31010245560482', '1', '1982-04-19', 'Laki-laki', 'BAHARWAT PERWAKILAN DAM XIX/TT', 'DENMADAM XIX/TT', 'PERUM MAWADAH III JL.SUKA KARYA DESA TARAI ', '169', '60', '21.01', 'Normal', '76', '125/68', '82', 'B', 'Sehat', '2026-06-29 15:42:09'),
(180, 161, 'SKD/ 161 /VI/2026/Kes', 'AZWIR AMIR.S.E.', 'KAPTEN Cba XIX/TT', '21960255441176', '3', '1976-11-10', 'Laki-laki', 'KASIJASA BEKANGDAM XIX/TT', 'BEKANGDAM XIX/TT', 'ASRAMA', '167', '62', '22.23', 'Normal', '82', '120/80', '78', 'A', 'Sehat', '2026-06-29 15:46:39'),
(181, 162, 'SKD/ 162 /VI/2026/Kes', 'AGUS KURNIAWAN', 'SERDA', '31030566480881', '2', '1981-08-12', 'Laki-laki', 'DANRU 2 TONPAN 1 DENMADAM XIX/TT', 'DENMADAM  XIX/TT', 'JL.KAHARUDIN NST 1 ASRAMA ARHANUD 13', '169', '65', '22.76', 'Normal', '78', '126/76', '83', 'AB+', 'Sehat', '2026-06-29 15:52:16'),
(182, 163, 'SKD/ 163 /VI/2026/Kes', 'DAPMAN HARAHAP', 'SERDA', '31080258610986', '1471062307690001', '1986-09-20', 'Laki-laki', 'DANRU 1 TON 1 KIWAL DENMADAM XIX/TT', 'BA KODAM XIX/TT', 'ASRAMA BATERAI-P', '164', '66', '24.54', 'Normal', '82', '123/78', '77', 'B', 'Sehat', '2026-06-29 15:56:37'),
(183, 164, 'SKD/ 164 /VI/2026/Kes', 'AHMAD ROUP SIREGAR', 'SERDA', '31081562520287', '1', '1987-02-15', 'Laki-laki', 'BAMONTIR 2 TON ANGKUTAN DENMADAM XIX/TT', 'BA KODAM XIX/TT', 'ASRAMA PANCASILA BLOK A2 NO 4 JLN DR SUTOMO', '164', '66', '24.54', 'Normal', '70', '125/76', '72', 'O', 'Sehat', '2026-06-29 15:59:06'),
(184, 165, 'SKD/ 165 /VI/2026/Kes', 'NANANG PRIYO HANDOKO', 'KOPDA', '31100536121089', '1', '1989-10-02', 'Laki-laki', 'TAMUDI TON ANG DENMADAM', 'TA KODAM XIX/TT', 'JL.TENGKU BEY ASRAMA MILITER BLOK A NO.19', '165', '80', '29.38', 'Overweight', '83', '128/80', '88', 'B+', 'Sehat', '2026-06-29 16:05:56'),
(185, 166, 'SKD/ 166 /VI/2026/Kes', 'IRAWAN', 'KOPDA', '31100340000989', '2', '1989-09-28', 'Laki-laki', 'TAMUDI 2 SITUUD PENDAM XIX/TT', 'PENDAM XIX/TT', 'RT 006/RW 006 BATRAI R JLN. HARAPAN RAYA', '170', '87', '30.10', 'Obesitas', '84', '120/76', '83', 'O', 'Sehat', '2026-06-29 16:05:15'),
(186, 167, 'SKD/ 167 /VI/2026/Kes', 'DADANG ', 'SERDA', '31040539411085', '1', '1985-10-20', 'Laki-laki', 'BA SETUMDAM XIX/TT', 'KODAM XIX/TT', 'ASRAMA KODAM XIX/TT', '168', '65', '23.03', 'Normal', '75', '115/69', '70', 'O', 'Sehat', '2026-06-29 16:09:23'),
(188, 168, 'SKD/ 168 /VI/2026/Kes', 'SUGIONO', 'SERDA', '31080293431187', '1', '1987-11-29', 'Laki-laki', 'BAPEM TROMBINE VALUE SATSIKMIL AJENDAM XIX/TT', 'AJENDAM XIX/TT', 'ASRAMA PANCASILA BLOK A1. NO 2', '164', '66', '24.54', 'Normal', '77', '110/76', '73', 'O', 'Sehat', '2026-06-29 16:12:18');
INSERT INTO `tb_surat_imt` (`id_surat_imt`, `no_sprint`, `no_surat`, `nama`, `pangkat`, `nrp_nip`, `nik`, `tgl_lahir`, `jk`, `jabatan`, `kesatuan`, `alamat`, `tb`, `bb`, `imt`, `kategori`, `lp`, `td`, `denyut`, `gol_darah`, `kesimpulan`, `created_at`) VALUES
(189, 170, 'SKD/ 170 /VI/2026/Kes', 'FRANDI BISMAN SAMOSIR', 'SERKA', '21100013810691', '1401060406910008', '1991-06-04', 'Laki-laki', 'BAMIN RENPROGRAR', 'KOREM 031/WB', 'JL. GUNUNG KELUD HANGTUAH', '175', '88', '28.73', 'Overweight', '93', '120/80', '76', 'A+', 'Sehat', '2026-06-29 16:13:59'),
(190, 169, 'SKD/ 169 /VI/2026/Kes', 'DICKY IRWANSYAH ', 'PRATU', '31190549180499', '1', '1999-01-29', 'Laki-laki', 'TA PROV 1 URDAL SITUUD AJENDAM XIX/TT', 'AJENDAM XIX/TT', 'ASRAMA PANCASILA JL. DR. SUTOMO', '175', '87', '28.41', 'Overweight', '84', '110/70', '83', 'O', 'Sehat', '2026-06-29 16:18:23'),
(191, 172, 'SKD/ 172 /VI/2026/Kes', 'RANO BANJAR', 'SERKA', '31980425111078', '1206020210780003', '1978-10-02', 'Laki-laki', 'BAURORICUSI JASREM 031/WB', 'KOREM 031/WB', 'ASRAMA PANCASILA', '163', '60', '22.58', 'Normal', '70', '120/80', '76', 'O', 'Sehat', '2026-06-29 16:16:03'),
(192, 171, 'SKD/ 171 /VI/2026/Kes', 'OGI ROHMANA', 'PRATU', '31190545791298', '1', '1998-12-18', 'Laki-laki', 'TA PROVOST PALDAM', 'PALDAM XIX/TT', 'ASRAMA MANIPOL', '174', '99', '32.70', 'Obesitas', '98', '115/76', '82', 'O', 'Sehat', '2026-06-29 16:17:26'),
(193, 174, 'SKD/ 174 /VI/2026/Kes', 'DEPRI HENDRI SAPUTRA', 'PRATU', '31190513101297', '1471071212970001', '1997-12-12', 'Laki-laki', 'TABANIMUDI', 'KOREM 031/WB', 'ASRAMA KOREM 031/WB', '175', '77', '25.14', 'Overweight', '83', '120/80', '76', 'O+', 'Sehat', '2026-06-29 16:18:38'),
(194, 175, 'SKD/ 175 /VI/2026/Kes', 'S. HERMANTO', 'SERTU', '31940741460874', '-', '1974-08-14', 'Laki-laki', 'BABINSA RAMIL 07', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '167', '75', '26.89', 'Overweight', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 16:20:34'),
(195, 176, 'SKD/ 176 /VI/2026/Kes', 'NOVIANDI', 'SERKA', '31970048681177', '-', '1977-11-11', 'Laki-laki', 'BABINSA RAMIL 06', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '167', '60', '21.51', 'Normal', '68', '130/85', '76', 'O', 'Sehat', '2026-06-29 16:22:04'),
(196, 173, 'SKD/ 173 /VI/2026/Kes', 'FACHRUROZI RAHMAN', 'PRAKA', '31150008320595', '1', '1995-05-22', 'Laki-laki', 'TAMUDI-2 SPERSDAM XIX/TT', 'KODAM XIX/TT', 'JL.GARUDA SAKTI KM.2', '174', '75', '24.77', 'Normal', '76', '115/78', '70', 'O', 'Sehat', '2026-06-29 16:44:18'),
(197, 178, 'SKD/ 178/VI/2026/Kes', 'ANDRINOVA', 'SERTU', '31950366311174', '-', '1974-11-02', 'Laki-laki', 'BABINSA RAMIL 05', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '168', '70', '24.80', 'Normal', '75', '130/85', '76', 'O', 'Sehat', '2026-06-29 16:23:43'),
(198, 179, 'SKD/ 179/VI/2026/Kes', 'ADI HERMANSYAH', 'SERDA', '31020511940182', '-', '1982-01-05', 'Laki-laki', 'BABINSA RAMIL 07', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '168', '75', '26.57', 'Overweight', '83', '13', '76', 'O', 'Sehat', '2026-06-29 16:25:15'),
(199, 177, 'SKD/ 177 /VI/2026/Kes', 'BIMANTARA ADE KRISMAWAN', 'SERTU', '21160071760495', '1', '1995-04-25', 'Laki-laki', 'BA DENMADAM XIX/TT', 'KODAM XIX/TT', 'ASRAMA MANIPOL', '180', '79', '24.38', 'Normal', '80', '130/70', '83', 'B', 'Sehat', '2026-06-29 16:30:08'),
(200, 181, 'SKD/ 181 /VI/2026/Kes', 'PONCO SAPUTRO', 'SERDA', '31081559571186', '-', '1986-11-12', 'Laki-laki', 'BABINSA RAMIL 04', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '174', '72', '23.78', 'Normal', '78', '13', '76', 'O', 'Sehat', '2026-06-29 16:26:49'),
(201, 182, 'SKD/ 182/VI/2026/Kes', 'HERMANSYAH', 'SERDA', '31030021390581', '-', '1982-01-05', 'Laki-laki', 'BABINSA RAMIL 07', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '168', '75', '26.57', 'Overweight', '83', '130/85', '76', 'O', 'Sehat', '2026-06-29 17:28:00'),
(202, 183, 'SKD/ 183/VI/2026/Kes', 'NURSYIRWAN', 'SERDA', '31020036660681', '-', '1981-06-02', 'Laki-laki', 'BABINSA RAMIL 05/SAIL', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '163', '84', '31.62', 'Obesitas', '93', '130/85', '76', 'O', 'Sehat', '2026-06-29 16:29:19'),
(203, 180, 'SKD/ 180/VI/2026/Kes', 'PEPI SURYADI', 'PRATU', '31160056810197', '1', '1997-01-19', 'Laki-laki', 'TA DENMA DAM XIX/TT', 'DENMA DAM XIX/TT', 'ASRAMA PANCASILA', '165', '68', '24.98', 'Normal', '80', '117/76', '72', 'B+', 'Sehat', '2026-06-29 16:29:28'),
(204, 185, 'SKD/ 185/VI/2026/Kes', 'GHOZI HARTANTO', 'SERDA', '31070989011286', '-', '1986-12-22', 'Laki-laki', 'BABINSA KORAMIL 01/RUMBAI', 'KODIM 0301/PBR', 'ASRAMA KODIM 0301/PBR', '169', '78', '27.31', 'Overweight', '83', '130/85', '76', 'O', 'Sehat', '2026-06-29 16:30:51'),
(205, 184, 'SKD/ 184/VI/2026/Kes', 'RIANTO RASMANA GINTING', 'PRATU', '31190500980200', '1', '2000-02-10', 'Laki-laki', 'TA DENMA KOREM', 'KOREM 031/WB', 'ASRAMA MANIPOL', '165', '68', '24.98', 'Normal', '79', '122/60', '76', 'O', 'Sehat', '2026-06-29 16:33:25'),
(206, 186, 'SKD/ 186/VI/2026/Kes', 'UMARUDDIN HARAHAP', 'PRADA', '1723101020016759', '2', '2002-01-15', 'Laki-laki', 'TA BAN SO 132/BS', 'YONIF 132/BS', 'ASRAMA MANIPOL', '171', '73', '24.96', 'Normal', '82', '117/76', '82', 'O', 'Sehat', '2026-06-29 16:35:58'),
(207, 188, 'SKD/ 188/VI/2026/Kes', 'ALDI HENDRAWAN', 'PRATU', '31190485631199', '1508142111990001', '1999-11-21', 'Laki-laki', 'TABAKPAN 1', 'YONIF 132/BS', 'ASMIL YONIF 132/BS', '169', '74', '25.91', 'Overweight', '80', '120/80', '76', 'O', 'Sehat', '2026-06-29 16:39:26'),
(208, 187, 'SKD/ 187/VI/2026/Kes', 'ILHAM WAHYUDI', 'PRATU', '31190542800698', '1', '1998-06-18', 'Laki-laki', 'TA PROVOST SITUUD DENKOMLEKREM 031/WB KOMLEKDAM XIX/TT', 'KOMLEKDAM XIX/TT', 'ASRAMA MANIPOL JL.DR. SUTOMO KEL.SUKA MULYA KEC. SAIL PEKANBARU', '168', '56', '19.84', 'Normal', '69', '119/70', '68', 'AB', 'Sehat', '2026-06-29 16:45:35'),
(209, 189, 'SKD/ 189/VI/2026/Kes', 'M. FAJAR PUTRA PRATAMA', 'SERDA', '21210056450601', '1', '2000-01-29', 'Laki-laki', 'BAUR DATABESE DF SUBDENPERNIKAFOTFILMIL KOMLEKDAM XIX/TT', 'KOMLEKDAM XIX/TT', 'ASRAMA PHB', '168', '82', '29.05', 'Overweight', '91', '127/76', '86', 'O', 'Tidak Sehat', '2026-06-30 07:48:16'),
(210, 190, 'SKD/ 190/VI/2026/Kes', 'HENDRI DEMORA', 'SERKA', '31980054760579', '1', '1979-05-25', 'Laki-laki', 'BAMINTER URPAMTER SIUUD', 'KOMLEKDAM XIX/TT', 'ASRAMA PANCASILA BLOK E 11 NO.7', '175', '85', '27.76', 'Overweight', '89', '124/76', '89', 'A', 'Sehat', '2026-06-29 16:48:28'),
(211, 191, 'SKD/ 191 /VI/2026/Kes', 'MUHAMMAD FERLI', 'PRAKA', '31150308391195', '1', '1995-11-19', 'Laki-laki', 'TAMUDI 1 SITUUD DENKOMLEKREM 031/WB KOMEKDAM XIX/TT', 'KOMLEKDAM XIX/TT', 'ASRAMA PHB, SEKIP, PEKANBARU', '164', '75', '27.89', 'Overweight', '88', '123/70', '80', 'B+', 'Sehat', '2026-06-29 16:51:01'),
(212, 192, 'SKD/ 192 /VI/2026/Kes', 'HADIS FIRMAN SYAH', 'SERDA', '21210057280102', '1', '2002-01-13', 'Laki-laki', 'BA JUYAR SITUUD DENKOMLEKREM 031/WB', 'KOMLEKDAM XIX/TT', 'ASRAMA PHB, SEKIP, PEKANBARU', '171', '68', '23.26', 'Normal', '80', '122/76', '80', 'B+', 'Sehat', '2026-06-29 16:53:40'),
(213, 194, 'SKD/ 194/VI/2026/Kes', 'FAHRUDIN', 'SERDA', '31070883160288', '1271191202880005', '1988-12-02', 'Laki-laki', 'BA PUSKODAL OPSDAM XIX/TT', 'PUSKODAL OPSDAM XIX/TT', 'ASRAMA PHB', '171', '70', '23.94', 'Normal', '75', '120/80', '76', 'O', 'Sehat', '2026-06-29 16:55:50'),
(214, 193, 'SKD/ 193 /VI/2026/Kes', 'SAMUEL DODY SYAHPUTRA NABABAN', 'SERDA', '21210062470602', '1', '2002-01-29', 'Laki-laki', 'BAMINWAL', 'POMDAM XIX/TT', 'ASRAMA DENPOM SIMPANG TIGA JL.TENGKU BEY SIMPANG TIGA', '183', '82', '24.49', 'Normal', '80', '112/78', '67', 'AB+', 'Sehat', '2026-06-29 16:56:28'),
(215, 196, 'SKD/ 196 /VI/2026/Kes', 'HERI KURNIAWAN', 'LETTU Kav', '21050016101083', '6112011710830006', '1983-10-17', 'Laki-laki', 'PASANDI INTELDIM 0301/PBR', 'KODIM 0301/PBR', 'JL. GUNUNG KELUD ASMIL TNI AD NO. 21', '178', '76', '23.99', 'Normal', '83', '120/80', '76', 'O', 'Sehat', '2026-06-29 16:58:10'),
(216, 195, 'SKD/ 195 /VI/2026/Kes', 'RIFALDI NOVEREZA', 'PRATU', '31160407381195', '1', '1995-11-02', 'Laki-laki', 'TABANMUDI CUK 1 RU II TON SNB DENMA REM 031/WB', 'KOREM 031/WB', 'JL.GARUDA SAKTI KM 1 GG.AMAL', '170', '77', '26.64', 'Overweight', '84', '122/70', '72', 'A', 'Sehat', '2026-06-29 17:00:18'),
(217, 198, 'SKD/ 198 /VI/2026/Kes', 'NOFRI YANTO', 'LETDA Inf', '31980436591178', '1305021811780001', '1978-11-18', 'Laki-laki', 'PAURBINKASJAS SIKASJAS DAM XIX/TT', 'JASDAM XIX/TT', 'Jl.Dr Sutomo, Asrama Manipol Blok K 1/1', '170', '70', '24.22', 'Normal', '75', '120/80', '76', 'O', 'Sehat', '2026-06-29 17:00:59'),
(218, 199, 'SKD/ 199 /VI/2026/Kes', 'DADANG HAMDANI', 'LETDA Inf', '31980473040876', '1207191908760003', '1976-08-19', 'Laki-laki', 'PA ANALIS 2 TIM INTEL REM 031/WB', 'KOREM 031/WB', 'ASRAMA PHB', '166', '68', '24.68', 'Normal', '91', '120/80', '76', 'B', 'Sehat', '2026-06-30 10:02:12'),
(219, 197, 'SKD/ 197 /VI/2026/Kes', 'FRENGKI FRANSISKUS SIPAYUNG', 'PRATU', '31190076840497', '1', '1997-04-28', 'Laki-laki', 'TA MUDI SINTELREM 031/WB', 'KOREM 031/WB', 'ASRAMA MANIPOL', '170', '78', '26.99', 'Overweight', '82', '115/76', '79', 'AB', 'Sehat', '2026-06-29 17:04:11'),
(220, 201, 'SKD/ 201 /VI/2026/Kes', 'AZWIR AMIR, S.E.', 'KAPTEN Cba', '21960255441176', '-', '1976-11-10', 'Laki-laki', 'KASIJASA BEKANGDAM XIX/TT', 'BEKANGDAM XIX/TT', 'ASRAMA BEKANGDAM XIX/TT', '167', '62', '22.23', 'Normal', '82', '120/80', '76', 'A', 'Sehat', '2026-06-29 17:05:49'),
(221, 200, 'SKD/ 200 /VI/2026/Kes', 'MHD.ARIF SIREGAR ', 'PRATU', '31180525330897', '1', '1997-08-01', 'Laki-laki', 'TAMUNISI CUK 1 RU 2 TON SLT DENMAREM 031/WB', 'KOREM 031/WB', 'ASRAMA MANIPOL', '175', '76', '24.82', 'Normal', '83', '118/70', '80', 'O', 'Sehat', '2026-06-29 17:07:34'),
(222, 203, 'SKD/ 203 /VI/2026/Kes', 'SYAMSURIZAL', 'KAPTEN Cba', '21950194640473', '1207262504730003', '1973-04-25', 'Laki-laki', 'Kagudkaporsatlap XIX/Pekanbaru Bekangdam XIX/TT', 'BEKANGDAM XIX/TT', 'ASRAMA BEKANGDAM XIX/TT', '166', '67', '24.31', 'Normal', '84', '120/80', '76', 'B', 'Sehat', '2026-06-29 17:08:13'),
(223, 202, 'SKD/ 202 /VI/2026/Kes', 'RHEYZANIVANSYAH RITONGA', 'PRADA', '1723110040016963', '1', '2004-10-23', 'Laki-laki', 'TA SITUUD POMDAM XIX/TT', 'POMDAM XIX/TT', 'ASRAMA DENPOM 1-3', '171', '67', '22.91', 'Normal', '81', '119/80', '78', 'O', 'Sehat', '2026-06-29 17:09:47'),
(224, 205, 'SKD/ 205 /VI/2026/Kes', 'RUDI HARIYANTO, S.H.', 'KAPTEN Cba', '21960216001275', '-', '1975-12-05', 'Laki-laki', 'KASITUUD BEKANGDAM XIX/TT', 'BEKANGDAM XIX/TT', 'ASRAMA BEKANGDAM', '169', '70', '24.51', 'Normal', '83', '120/80', '76', 'O', 'Sehat', '2026-06-29 17:11:05'),
(225, 204, 'SKD/ 204 /VI/2026/Kes', 'MUHAMMAD HAMZAH ATSAURI', 'PRATU', '31190485061099', '1', '1999-10-25', 'Laki-laki', 'TABAN RU 1 CUK 1 TON MORSE KI BANT YONIF 132/BS', 'YONIF 132/BS', 'ASMIL YONIF 132/BS', '165', '68', '24.98', 'Normal', '85', '124/78', '78', 'O', 'Sehat', '2026-06-29 17:12:38'),
(226, 206, 'SKD/ 206 /VI/2026/Kes', 'ALDI HENDRAWAN', 'PRATU', '31190485631199', '1', '1999-11-21', 'Laki-laki', 'TABAKPAN 1', 'YONIF 132/BS', 'ASMIL YONIF 132/BS', '169', '72', '25.21', 'Overweight', '78', '118/68', '80', 'O', 'Sehat', '2026-06-29 17:15:12'),
(227, 207, 'SKD/ 207 /VI/2026/Kes', 'GHOZI HARTANTO', 'SERDA', '3107098911286', '1', '1986-12-22', 'Laki-laki', 'BABINSA KORAMIL 01/RUMBAI', 'KODIM 0301/PEKANBARU', 'KODIM 0301/PBR', '169', '75', '26.26', 'Overweight', '93', '130/85', '78', 'O', 'Sehat', '2026-06-29 17:20:47'),
(228, 208, 'SKD/ 208 /VI/2026/Kes', 'NURSYIRWAN', 'SERDA', '31020036660681', '1', '1981-06-02', 'Laki-laki', 'BABINSA RAMIL 05/SAIL', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '163', '70', '26.35', 'Overweight', '93', '122/70', '78', 'O', 'Sehat', '2026-06-29 17:23:19'),
(229, 209, 'SKD/ 209/VI/2026/Kes', 'DIMAS WINATA', 'SERDA', '21210063200700', '-', '2000-07-08', 'Laki-laki', 'BP JASREM 031/WB', 'KODIM 0303/BENGKALIS', 'Jl. WanAbdurrahman II NO.2 rt/rw 002/001 kel.air dingin Kec. Bukit raya\r\n', '171', '73', '24.96', 'Normal', '85', '120/80', '76', 'B', 'Sehat', '2026-06-29 19:27:11'),
(230, 209, 'SKD/ 209 /VI/2026/Kes', 'MULIONO ', 'SERDA', '31019439521180', '1', '1980-11-02', 'Laki-laki', 'BABINSA KORAMIL 05/SAIL', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '168', '75', '26.57', 'Overweight', '93', '130/85', '69', 'O', 'Sehat', '2026-06-29 17:26:57'),
(231, 211, 'SKD/ 211 /VI/2026/Kes', 'GUNADO MAULANA', 'PRADA', '1723102020017020', '1408102502020001', '2002-02-05', 'Laki-laki', 'Caraka Kumdam XIX/TT', 'KUMDAM XIX/TT', 'Jl. Dr Sutomo Asrama Pancasila', '164', '67', '24.91', 'Normal', '68', '120/80', '76', 'B+', 'Sehat', '2026-06-29 17:26:58'),
(232, 212, 'SKD/ 212 /VI/2026/Kes', 'ADI HERMANSYAH', 'SERDA', '31020511940182', '1', '1982-01-05', 'Laki-laki', 'BABINSA RAMIL 07', 'KODIM 0301/PBR', 'KODIM 0301/PBR', '168', '75', '26.57', 'Overweight', '93', '130/85', '85', 'O', 'Sehat', '2026-06-29 17:29:50'),
(233, 213, 'SKD/ 213 /VI/2026/Kes', 'S.HERMANTO', 'SERTU', '31940741460874', '1', '1974-08-14', 'Laki-laki', 'BABINSA RAMIL 07', 'KODIM 0301', 'KODIM 0301/PBR', '167', '75', '26.89', 'Overweight', '93', '130/74', '88', 'O', 'Sehat', '2026-06-29 17:33:28'),
(234, 215, 'SKD/ 215 /VI/2026/Kes', 'TONY EBENER SIPAYUNG', 'PRATU', '31190029660999', '1271021609990003', '1999-09-15', 'Laki-laki', 'TA DENMADAM XIX/TT', 'DENMADAM XIX/TT', 'JLN.SISINGAMARAJA,PEKANBARU', '168', '60', '21.26', 'Normal', '70', '110/45', '61', 'B', 'Sehat', '2026-06-29 17:40:53'),
(235, 214, 'SKD/ 214 /VI/2026/Kes', 'RIZKY WAHYU PRATAMA', 'PRATU', '31190038571098', '1', '1998-10-25', 'Laki-laki', 'TA MOTORIS 2 UNITGAKKUMWAL 1 TONGAKKUMWAL 1 SATLAKGAKKUMWAL POMDAM XIX/TT', 'POMDA XIX/TT', 'ASMIL POMDAM XIX/TT JL. S.PARMAN BLOK B NO.04 KEL. SUKA MULYA KEC.SAIL KOTA PEKANBARU', '177', '78', '24.90', 'Normal', '80', '125/80', '85', 'B', 'Sehat', '2026-06-29 17:44:06'),
(236, 216, 'SKD/ 216 /VI/2026/Kes', 'MAKMUR HUTAGALUNG', 'KAPTEN INF', '21020115620581', '9202010605810002', '1981-05-06', 'Laki-laki', 'Kasipers Brigif TP 89/GG', 'Brigif TP 89/GG', 'Asrama Brigif TP 89/GG ', '171', '78', '26.67', 'Overweight', '85', '110/70', '61', 'O', 'Sehat', '2026-06-29 17:44:09'),
(237, 217, 'SKD/ 217 /VI/2026/Kes', 'MUSTOFA ICHYAR MANURUNG', 'KOPDA', '31081575240488', '120719060488001', '1988-04-06', 'Laki-laki', 'TA PENDAM XIX/TT', 'PENDAM XIX/TT', 'Asmil Yon Komposit RT 004 RW 002 Sepempang,Bunguran Timur', '170', '70', '24.22', 'Normal', '70', '120/80', '80', 'O', 'Sehat', '2026-06-29 17:47:05'),
(238, 218, 'SKD/ 218 /VI/2026/Kes', 'RISKY HIDAYATULLAH', 'PRADA', '1723109040030848', '1', '2004-09-29', 'Laki-laki', 'TABAKPAN 4 RU 3 TONPAN II KIWAL', 'ARHANUD', 'HARAPAN RAYA KOTA PEKANBARU PROV.RIAU', '170', '71', '24.57', 'Normal', '88', '122/78', '78', 'A', 'Sehat', '2026-06-29 17:50:41'),
(239, 219, 'SKD/ 219/VI/2026/Kes', 'YAYAN SUGIANTO', 'PRAKA', '31150317951094', '1371091110940012', '1994-10-11', 'Laki-laki', 'TA KODIM 0313 KPR ', 'KODIM 0313 KPR ', 'SALO TIMUR', '180', '70', '21.60', 'Normal', '70', '120/80', '80', 'O', 'Sehat', '2026-06-29 17:51:07'),
(240, 220, 'SKD/ 220 /VI/2026/Kes', 'M.FADHLY PRAMA ARTA', 'SERMA', '21060033831284', '1', '1984-12-19', 'Laki-laki', 'BATIMINLOG URPERSLOG SITUUD KUDAM XIX/TT', 'KUDAM XIX/TT', 'JLN. Dr SUTOMO ASMIL MANIPOL BLOK H NO 3 PEKANBARU', '168', '65', '23.03', 'Normal', '70', '120/80', '75', 'B', 'Sehat', '2026-06-29 17:59:52'),
(241, 221, 'SKD/ 221 /VI/2026/Kes', 'AGUS MARTOPO', 'SERDA', '31080018700888', '1', '1988-08-17', 'Laki-laki', 'BABINSA RAMIL 01 DIM 0322/SIAK REM 031/WB DAM XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '78', '130/76', '80', 'B', 'Sehat', '2026-06-29 18:16:56'),
(242, 222, 'SKD/ 222 /VI/2026/Kes', 'DWIYANTO', 'SERDA', '31081693620788', '1', '1988-07-03', 'Laki-laki', 'BABINSA RAMIL 01 DIM 0322/SIAK REM 031/WB DAM XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '167', '69', '24.74', 'Normal', '76', '131/78', '72', 'B', 'Sehat', '2026-06-29 18:16:23'),
(243, 223, 'SKD/ 223 /VI/2026/Kes', 'KETUT BUDIASA', 'KOPTU', '31040808941085', '1', '1985-10-25', 'Laki-laki', 'BABINSA RAMIL 01 DIM 0322/SIAK REM 031/WB DAM XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '167', '65', '23.31', 'Normal', '68', '122/78', '73', 'B', 'Sehat', '2026-06-29 18:19:23'),
(244, 224, 'SKD/ 224 /VI/2026/Kes', 'PARMOHONAN HARAHAP', 'KOPDA', '31080122811186', '1', '1986-11-22', 'Laki-laki', 'BABINSA RAMIL 01 DIM 0322/SIAK REM 031/WB DAM XIX/TT', 'KODIM 0322/SIAK', 'KODIM O322/SIAK', '169', '68', '23.81', 'Normal', '74', '125/80', '80', 'O', 'Sehat', '2026-06-29 18:21:58'),
(245, 225, 'SKD/ 225 /VI/2026/Kes', 'BUDIMAN', 'KOPDA', '31070852130385', '1', '1985-03-14', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '72', '24.62', 'Normal', '71', '127/74', '75', 'A', 'Sehat', '2026-06-29 18:23:57'),
(246, 226, 'SKD/ 226 /VI/2026/Kes', 'DEDI IRAWAN', 'KOPDA', '31050619350285', '1', '1985-09-30', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '165', '68', '24.98', 'Normal', '72', '122/82', '78', 'O', 'Sehat', '2026-06-29 18:25:47'),
(247, 227, 'SKD/ 227 /VI/2026/Kes', 'SARITUA SITUMORANG', 'KOPDA', '31090404551088', '1', '1988-10-27', 'Laki-laki', 'Babinsa Ramil 02 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '169', '67', '23.46', 'Normal', '70', '115/78', '71', 'O', 'Sehat', '2026-06-29 18:27:44'),
(248, 228, 'SKD/ 228 /VI/2026/Kes', 'PANCA IRMANTO', 'PRAKA', '31150048670693', '1', '1993-06-26', 'Laki-laki', 'TAMUDI 2 POK TUUD DIM 0322/SIAK REM 031/WB DAM XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '168', '69', '24.45', 'Normal', '75', '125/80', '79', 'O', 'Sehat', '2026-06-29 18:29:44'),
(249, 229, 'SKD/ 229 /VI/2026/Kes', 'ARMANSYAH', 'PRATU', '31140472711095', '1', '1995-10-05', 'Laki-laki', 'Babinsa Ramil 02 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '166', '68', '24.68', 'Normal', '74', '116/80', '78', 'A', 'Sehat', '2026-06-29 18:31:44'),
(250, 230, 'SKD/ 230 /VI/2026/Kes', 'IRWAN', 'SERKA', '31970421080876', '1', '1976-08-17', 'Laki-laki', 'Babinsa Ramil 02 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0322/SIAK', 'KODIM 0322/SIAK', '171', '73', '24.96', 'Normal', '80', '128/85', '83', 'B', 'Sehat', '2026-06-29 18:33:50'),
(251, 231, 'SKD/ 231 /VI/2026/Kes', 'AMIR MAHMUD', 'PELDA', '21020153570382', '1', '1982-03-30', 'Laki-laki', 'BABINSA RAMIL 05/BUKIT BATU', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 05/BUKIT BATU', '166', '68', '24.68', 'Normal', '105', '133/78', '88', 'B', 'Sehat', '2026-06-29 18:40:47'),
(252, 232, 'SKD/ 232 /VI/2026/Kes', 'SUHANDI', 'SERKA', '21110015470192', '1', '1992-01-14', 'Laki-laki', 'BAMIN SITER', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '167', '69', '24.74', 'Normal', '90', '120/78', '83', 'O', 'Sehat', '2026-06-29 18:43:12'),
(253, 233, 'SKD/ 233 /VI/2026/Kes', 'HERRY GAUTAMA', 'SERTU', '31020085820180', '1', '1980-01-08', 'Laki-laki', 'BAURDAL POK TUUD', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '167', '69', '24.74', 'Normal', '95', '110/70', '73', 'O', 'Sehat', '2026-06-29 18:45:54'),
(254, 234, 'SKD/ 234 /VI/2026/Kes', 'NAAM', 'SERTU', '31020754580381', '1', '1981-03-25', 'Laki-laki', 'BAURTU POK TUUD', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '167', '69', '24.74', 'Normal', '95', '122/78', '88', 'O', 'Sehat', '2026-06-29 18:49:53'),
(255, 235, 'SKD/ 235 /VI/2026/Kes', 'MUZAINUDIN', 'SERTU', '31020854570780', '1', '1980-07-18', 'Laki-laki', 'BABINSA RAMIL 01/BENGKALIS', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '167', '69', '24.74', 'Normal', '90', '120/80', '88', 'O', 'Sehat', '2026-06-29 18:52:57'),
(256, 236, 'SKD/ 236 /VI/2026/Kes', 'ERIKSON SIPAHUTAR', 'SERDA', '31040058000283', '1', '1983-07-01', 'Laki-laki', 'BAINTEL 3.1 UNIT INTEL', 'KODIM 0322/SIAK', 'ASRAMA KODIM 0303/BENGKALIS', '170', '68', '23.53', 'Normal', '86', '120/75', '67', 'AB', 'Sehat', '2026-06-29 18:55:38'),
(257, 237, 'SKD/ 237 /VI/2026/Kes', 'HANOTO', 'SERDA', '31020486380182', '1', '1982-01-07', 'Laki-laki', 'BABINSA RAMIL 01/BENGKALIS', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '174', '75', '24.77', 'Normal', '86', '122/78', '80', 'O', 'Sehat', '2026-06-29 18:58:53'),
(258, 238, 'SKD/ 238 /VI/2026/Kes', 'MUHAMMAD HENDRA GUNAWAN', 'SERDA', '31010440421280', '1', '1980-12-07', 'Laki-laki', 'BABINSA RAMIL 01/BENGKALIS', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 01/BENGKALIS', '165', '60', '22.04', 'Normal', '90', '124/76', '88', 'AB', 'Sehat', '2026-06-29 19:02:52'),
(259, 239, 'SKD/ 239 /VI/2026/Kes', 'ASNAWI', 'SERDA', '31010443070481', '1', '1981-04-16', 'Laki-laki', 'BABINSA RAMIL 01/BENGKALIS', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 01/BENGKALIS', '174', '74', '24.44', 'Normal', '94', '115/80', '82', 'O', 'Sehat', '2026-06-29 19:05:53'),
(260, 240, 'SKD/ 240 /VI/2026/Kes', 'IMAM SUBARKAH', 'SERDA', '31081556350786', '1', '1986-07-07', 'Laki-laki', 'BABINSA RAMIL 01/BENGKALIS', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 01/BENGKALIS', '165', '60', '22.04', 'Normal', '90', '112/80', '88', 'AB', 'Sehat', '2026-06-29 19:09:01'),
(261, 241, 'SKD/ 241 /VI/2026/Kes', 'EKA RAFIZ', 'SERDA', '31020483720681', '1', '1981-06-04', 'Laki-laki', 'BABINSA RAMIL 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 02/TEBING TINGGI', '165', '68', '24.98', 'Normal', '88', '133/80', '70', 'A', 'Sehat', '2026-06-29 19:12:55'),
(262, 242, 'SKD/ 242 /VI/2026/Kes', 'ALSYUKRI', 'SERDA', '31080287741086', '1', '1986-10-14', 'Laki-laki', 'BA UNIT GAKKUMWAL', 'POMDAM XIX/TT', 'ASRAMA DENPOM', '180', '80', '24.69', 'Normal', '78', '122/78', '80', 'A', 'Sehat', '2026-06-29 19:24:50'),
(263, 243, 'SKD/ 243 /VI/2026/Kes', 'P.SAPUTRA ZEGA', 'PRADA', '1723111020017492', '1', '2002-11-24', 'Laki-laki', 'TA POMDAM XIX/TT', 'POMDAM XIX/TT', 'ASRAMA DENPOM', '179', '68', '21.22', 'Normal', '78', '116/78', '80', 'B', 'Sehat', '2026-06-29 19:26:24'),
(264, 244, 'SKD/ 244 /VI/2026/Kes', 'LASIDI', 'SERDA', '31070875080487', '1', '1987-04-11', 'Laki-laki', 'BABINSA RAMIL 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 02/TEBING TINGGI', '170', '72', '24.91', 'Normal', '85', '123/75', '80', 'AB', 'Sehat', '2026-06-29 19:38:22'),
(265, 245, 'SKD/ 245 /VI/2026/Kes', 'DEDI HERMANSYAH ', 'SERDA', '31030848140884', '1', '1984-08-23', 'Laki-laki', 'BABINSA RAMIL 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 02/TEBING TINGGI', '186', '85', '24.57', 'Normal', '96', '125/80', '88', 'O', 'Sehat', '2026-06-29 19:37:46'),
(266, 246, 'SKD/ 246 /VI/2026/Kes', 'KHAIRUL SALEH', 'SERDA', '31010090370479', '1', '1979-04-19', 'Laki-laki', 'BABINSA RAMIL 05/BUKIT BATU', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 05/BUKIT BATU', '164', '67', '24.91', 'Normal', '95', '133/80', '78', 'AB', 'Sehat', '2026-06-29 19:41:26'),
(267, 247, 'SKD/ 247 /VI/2026/Kes', 'ZULFIRMAN PANGARIBUAN ', 'SERDA', '31030468390784', '1', '1984-01-23', 'Laki-laki', 'BABINSA RAMIL 05/BUKIT BATU', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 05/BUKIT BATU', '165', '66', '24.24', 'Normal', '91', '126/80', '70', 'O', 'Sehat', '2026-06-29 19:47:17'),
(268, 248, 'SKD/ 248 /VI/2026/Kes', 'SAHRU RAMADAN', 'KOPDA', '31100555911188', '1', '1988-11-11', 'Laki-laki', 'TA PROVOOST 2 SIPERS', 'KODIM 0303/BENGKALIS', 'ASRAMA KODIM 0303/BENGKALIS', '170', '72', '24.91', 'Normal', '88', '125/76', '80', 'B', 'Sehat', '2026-06-29 19:50:27'),
(269, 249, 'SKD/ 249 /VI/2026/Kes', 'ZOWEL LIMBONG', 'KOPDA', '31070861121285', '1', '1985-12-28', 'Laki-laki', 'Babinsa Ramil 01 Dim 0322/Siak Rem 031/WB Dam XIX/TT', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 01/BENGKALIS', '174', '75', '24.77', 'Normal', '88', '120/80', '80', 'A', 'Sehat', '2026-06-29 19:52:39'),
(270, 250, 'SKD/ 250 /VI/2026/Kes', 'JARYM SARUBABEL ARITONANG', 'KOPDA', '31100279700988', '1', '1988-09-23', 'Laki-laki', 'Babinsa Ramil 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 01/BENGKALIS', '170', '72', '24.91', 'Normal', '84', '117/70', '90', 'O', 'Sehat', '2026-06-29 19:55:39'),
(271, 251, 'SKD/ 251 /VI/2026/Kes', 'SUKARMAN', 'KOPDA', '31100076911287', '1', '1987-12-16', 'Laki-laki', 'BABINSA RAMIL 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 02/TEBING TINGGI', '170', '66', '22.84', 'Normal', '90', '122/67', '78', 'B', 'Sehat', '2026-06-29 19:57:51'),
(272, 252, 'SKD/ 252 /VI/2026/Kes', 'MUHAMMAD YUHDI', 'KOPDA', '31040032500984', '1', '1984-09-21', 'Laki-laki', 'BABINSA RAMIL 02/TEBING TINGGI', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 02/TEBING TINGGI', '169', '62', '21.71', 'Normal', '78', '123/67', '80', 'A', 'Sehat', '2026-06-29 19:59:51'),
(273, 253, 'SKD/ 253 /VI/2026/Kes', 'SUINDRA', 'PRAKA', '31150292110394', '1', '1994-03-25', 'Laki-laki', 'BABINSA RAMIL 05/BUKIT BATU', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 05/BUKIT BATU', '171', '73', '24.96', 'Normal', '89', '123/67', '84', 'AB', 'Sehat', '2026-06-29 20:02:06'),
(274, 254, 'SKD/ 254 /VI/2026/Kes', 'ARI ANGGA SAHPUTRA TANJUNG', 'PRATU', '31190031620799', '1', '1999-07-27', 'Laki-laki', 'BABINSA RAMIL 05/BUKIT BATU', 'KODIM 0303/BENGKALIS', 'ASRAMA KORAMIL 05/BUKIT BATU', '165', '56', '20.57', 'Normal', '82', '122/84', '75', 'B+', 'Sehat', '2026-06-29 20:04:22'),
(275, 255, 'SKD/ 255 /VI/2026/Kes', 'RANGGA ADIKA PRATAMA ', 'PRADA ', '1723109040017018', '-', '2004-02-03', 'Laki-laki', 'Ta  AJENDAM ', 'AJENDAM XIX /TT ', 'ASRAMA PANCASILA ', '165', '68', '24.98', 'Normal', '80', '120/80', '78', 'O', 'Sehat', '2026-06-30 07:39:38'),
(276, 256, 'SKD/ 256 /VI/2026/Kes', 'M.BIMA SURYA KANTA ', 'PRADA', '1723107010017012', '-', '2001-07-14', 'Laki-laki', 'Ta AJENDAM I/BB ', 'AJENDAM XIX /TT ', 'J. DR WAHIDIN KM 19,5 BINJAI ', '168', '63', '22.32', 'Normal', '80', '120/70', '76', 'AB', 'Sehat', '2026-06-30 07:44:18'),
(277, 257, 'SKD/ 257 /VI/2026/Kes', 'AHMAD FAHREZI ', 'PRADA ', '1723107040017017', '1', '2004-03-07', 'Laki-laki', 'Ta AJENDAM XIX/TT', 'AJENDAM XIX /TT ', 'ASRAMA PANCASILA ', '167', '58', '20.80', 'Normal', '69', '125/80', '75', 'O', 'Sehat', '2026-06-30 15:42:35'),
(278, 258, 'SKD/ 258 /VI/2026/Kes', 'KEVIN ADRIAN SIMANJUNTAK ', 'PRADA', '1722107010007888', '1', '2001-07-25', 'Laki-laki', 'Ta AJENDAM I/BB ', 'AJENDAM XIX /TT ', 'ASRAMA PANCASILA ', '172', '65', '21.97', 'Normal', '81', '120/70', '74', 'O', 'Sehat', '2026-06-30 07:55:56'),
(279, 259, 'SKD/ 259 /VI/2026/Kes', 'HADI RUBIANTO', 'PRAKA ', '31150076960595', '1', '1995-05-10', 'Laki-laki', 'Ta UNIT MOTORIS POMDAM XIX/TT', 'POMDAM XIX /TT ', 'KODAM XIX/TT', '181', '80', '24.42', 'Normal', '79', '120/70', '78', 'A', 'Sehat', '2026-06-30 10:48:58'),
(282, 260, 'SKD/ 260/VI/2026/Kes', 'AZIZUL HAKIM ', 'SERKA ', '21080615951086', '-', '1986-10-23', 'Laki-laki', 'BAMIN ANEV SIREN DENMADAM XIX/TT ', 'DENMADAM XIX /TT ', 'JL.ARIFIN AHMAD PELANGI RESIDENCE NO 16', '165', '68', '24.98', 'Normal', '80', '120/80', '73', 'A', 'Sehat', '2026-06-30 09:29:47'),
(283, 261, 'SKD/ 261 /VI/2026/Kes', 'KRISNANTO', 'SERMA', '21950169320674', '1', '1974-06-15', 'Laki-laki', 'TURMIN ', 'POM DAM XIX/TT', 'JLN. PANGLIMA UNDAN RT 04 RW 02, KEL.KAMPUNG BANDAR-KEC. SENAPELAN, PEKAKANBARU', '174', '73', '24.11', 'Normal', '78', '122/70', '80', 'O', 'Sehat', '2026-06-30 11:04:45'),
(284, 262, 'SKD/ 262 /VI/2026/Kes', 'ARSENSIUS SARAGIH', 'PELDA', '31940425641173', '1', '1973-11-01', 'Laki-laki', 'DANSUB UNIT INTEL C/1 TIM INTEL', 'TIM INTEL KOREM 031/WB', 'ASRAMA UNIT INTEL C/I TIM INTEL', '170', '96', '33.22', 'Obesitas', '90', '125/80', '88', 'O', 'Sehat', '2026-06-30 11:17:06'),
(285, 263, 'SKD/ 263 /VI/2026/Kes', 'NICOLAS RIANSANJAYA MANIK', 'PRATU', '31190443071299', '1', '1999-12-06', 'Laki-laki', 'TAYANRAD POKKO TON 1 KIPAN B YONIF 132/BS', 'YONIF 132/BS', 'JL.LINTAS TIMUR KIPAN B YONIF 132/BS', '176', '75', '24.21', 'Normal', '80', '115/78', '80', 'O', 'Sehat', '2026-06-30 10:15:31'),
(286, 264, 'SKD/ 264 /VI/2026/Kes', 'MUHAMMAD BIMA SURYA KANTA', 'PRADA', '1723107010017012', '1', '2001-07-14', 'Laki-laki', 'TA AJENDAM I/BB', 'AJENDAM I/BB', 'JL. DR WAHIDIN KM 19,5 BINJAI', '167', '62', '22.23', 'Normal', '70', '116/78', '73', 'AB', 'Sehat', '2026-06-30 10:19:53'),
(287, 265, 'SKD/ 265 /VI/2026/Kes', 'RANGGA ADIKA PRATAMA', 'PRADA', '1723109040017018', '1', '2004-09-02', 'Laki-laki', 'TA AJENDAM XIX/TT', 'AJENDAM XIX/TT', 'ASRAMA PANCASILA', '165', '65', '23.88', 'Normal', '70', '125/78', '80', 'O', 'Sehat', '2026-06-30 10:22:10'),
(288, 266, 'SKD/ 266 /VI/2026/Kes', 'ROBERTO CARLOS PARAPAT', 'PRATU', '31180034521196', '1', '1996-11-07', 'Laki-laki', 'TA POMDAM XIX/TT', 'POMDAM XIX /TT ', 'JL.MURAI NO.11', '178', '65', '20.52', 'Normal', '74', '115/70', '78', 'B+', 'Sehat', '2026-06-30 10:48:03'),
(289, 267, 'SKD/ 267 /VI/2026/Kes', 'DAVID YUSMAIL SIAHAAN', 'PRADA', '1723103010016942', '1', '2001-03-29', 'Laki-laki', 'TA UNIT GAKKUMWAL', 'DENPOM 1/3 POMDAM XIX/TT', 'JL.JENDRAL  AHMAD YANI NO.126', '180', '78', '24.07', 'Normal', '82', '117/80', '80', 'B', 'Sehat', '2026-06-30 10:54:14'),
(290, 268, 'SKD/ 268 /VI/2026/Kes', 'SUMIARNO', 'SERKA ', '31970581200677', '1', '1977-06-09', 'Laki-laki', 'BAMIN TIMANGMOR DENBEKANG 1/4.A', 'BEKANGDAM XIX/TT', 'JL.SUTOMO ASRAMA PANCASILA', '169', '70', '24.51', 'Normal', '85', '122/70', '80', 'B', 'Sehat', '2026-06-30 16:00:28'),
(291, 269, 'SKD/ 269 /VI/2026/Kes', 'HONDRIZON', 'SERKA ', '31970421400976', '1', '1976-09-22', 'Laki-laki', 'BAMIN PRESPA ', 'BEKANGDAM XIX /TT ', 'DUSUN TIGA UJUNG PADANG', '179', '80', '24.97', 'Normal', '84', '115/70', '85', 'O', 'Sehat', '2026-06-30 11:22:59'),
(292, 270, 'SKD/ 270 /VI/2026/Kes', 'ANGGIK PUTRA', 'PRATU ', '31190547280598', '1', '1998-05-12', 'Laki-laki', 'TARENDAL SIRENDAL ', 'BEKANGDAM XIX /TT ', 'JL.SUTOMO ASRAMA PANCASILA', '166', '70', '25.40', 'Overweight', '70', '115/78', '78', 'B', 'Sehat', '2026-06-30 11:31:20'),
(293, 271, 'SKD/ 271 /VI/2026/Kes', 'HARIO SIGIT SUPRABOWO', 'PRATU ', '31190547360698', '1', '1998-06-21', 'Laki-laki', 'TACADMUDI 2 RU 1TONANGMOR 1 KIANGMOR', 'BEKANGDAM XIX /TT ', 'JL.LOKOMOTIF ASRAMA KARKAM', '168', '64', '22.68', 'Normal', '84', '117/78', '80', 'A', 'Sehat', '2026-06-30 15:53:15'),
(294, 272, 'SKD/ 272 /VI/2026/Kes', 'EKO SAPUTRA', 'KOPDA', '31100367160789', '1', '1989-07-26', 'Laki-laki', 'TAYANRAD TONPAN II KIWAL DENMADAM XIX/TT', 'DENMADAM XIX/TT', 'PERUMAHAN NUANSA BERINGIN RESIDENT RT 02, RW 02 KEL. SUNGAI SIBAN, KEC. BINA WIDYA KOTA PEKANBARU', '171', '92', '31.46', 'Obesitas', '111', '117/70', '75', 'B+', 'Sehat', '2026-06-30 12:03:25'),
(295, 273, 'SKD/ 273 /VI/2026/Kes', 'JULPAHRI', 'SERDA', '31081578390788', '1', '1988-07-12', 'Laki-laki', 'BA INTEL TIM 2 BKI C DEN INTELDAM XIX/TT', 'DEN INTELDAM XIX/TT', 'ASRAMA DEN INTELDAM XIX/TT', '176', '86', '27.76', 'Overweight', '90', '115/78', '85', 'B', 'Sehat', '2026-06-30 12:09:40'),
(296, 274, 'SKD/ 274 /VI/2026/Kes', 'GOMGOM OKTORA SILALAHI', 'PRAKA', '31130021601093', '1', '1993-10-30', 'Laki-laki', 'TAMUDI/RUH-2 WADAN DEN INTELDAM XIX/TT', 'DEN INTELDAM XIX/TT', 'ASRAMA DEN INTELDAM XIX/TT', '170', '64', '22.15', 'Normal', '80', '118/80', '78', 'O', 'Sehat', '2026-06-30 12:13:57'),
(297, 275, 'SKD/ 275 /VI/2026/Kes', 'Jauhar Luthfiarrufif, S.Tr(Han)', 'Letda Arh', '112310998000126', '1', '1998-09-05', 'Laki-laki', 'Danton 1 Rai B', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '170', '65', '22.49', 'Normal', '80', '120/80', '76', 'AB', 'Sehat', '2026-06-30 13:13:53'),
(298, 276, 'SKD/ 276 /VI/2026/Kes', 'I Ketut Artha Uliantara', 'Serka', '21110182510591', '1', '1991-05-26', 'Laki-laki', 'Bamin Pokko Rai B', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '169', '68', '23.81', 'Normal', '80', '120/80', '78', 'O', 'Sehat', '2026-06-30 13:19:38'),
(299, 277, 'SKD/ 277 /VI/2026/Kes', 'Carlos Rama S.T Girsang, S.Pd,. S.H', 'KAPTEN Chk', '11090001980682', '3175052306820003', '1982-06-23', 'Laki-laki', 'Kasi Tuud Kumdam XIX/TT', 'KUMDAM XIX/TT', 'Jl dr Sutomo Asrama Pancasila', '167', '60', '21.51', 'Normal', '65', '120/80', '75', 'O', 'Sehat', '2026-06-30 13:19:48'),
(300, 278, 'SKD/ 278 /VI/2026/Kes', 'Agus Bayu Ratno Nugroho', 'Sertu', '21160058080896', '1', '1996-08-10', 'Laki-laki', 'Dansatbak LML 2 Ton 1 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '169', '67', '23.46', 'Normal', '82', '120/80', '78', 'AB', 'Sehat', '2026-06-30 13:24:41'),
(301, 279, 'SKD/ 279 /VI/2026/Kes', 'Bayu Adrian', 'SERTU', '1271060303950001', '1', '1995-03-03', 'Laki-laki', 'Dansatbak LML 2 Ton 2 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '170', '68', '23.53', 'Normal', '83', '120/80', '76', 'B', 'Sehat', '2026-06-30 13:28:24'),
(302, 280, 'SKD/ 280 /VI/2026/Kes', 'Azri Wahyu Perdana', 'serda', '21210044650502', '1', '2002-05-01', 'Laki-laki', 'Babak Rudal MMS Ton 1 Rai B', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '166', '68', '24.68', 'Normal', '82', '126/76', '76', 'A', 'Sehat', '2026-06-30 13:35:54'),
(303, 281, 'SKD/ 281 /VI/2026/Kes', 'Roni Risky Hasibuan', 'Praka', '31190539770699', '2', '1999-06-13', 'Laki-laki', 'Tamudi Yanrad LML 1 Ton 1 Rai B', 'Asmil Denarhanud 004 Dumai', 'Asmil Denarhanud 004 Dumai', '168', '67', '23.74', 'Normal', '82', '125/80', '72', 'O', 'Sehat', '2026-06-30 13:40:34'),
(304, 282, 'SKD/ 282 /VI/2026/Kes', 'MUHAMMAD RIZKY PERANGIN', 'PRATU', '31180483820799', '1', '1999-07-29', 'Laki-laki', 'TABAK CUK 2 RU 2 TON SLT KI BANT', 'YONIF 132/BS', 'ASMIL YONIF 132/BS', '165', '68', '24.98', 'Normal', '80', '120/70', '78', 'B', 'Sehat', '2026-06-30 14:30:09'),
(305, 283, 'SKD/ 283 /VI/2026/Kes', 'MUHAJIR', 'PRAKA', '31150639470196', '1', '1996-01-01', 'Laki-laki', 'TA.PROV BINTAL JAHRAHDAM', 'BINTAL JAHRAHDAM', 'ASRAMA KIKAV SER', '170', '72', '24.91', 'Normal', '84', '120/78', '80', 'O', 'Sehat', '2026-06-30 13:47:59'),
(306, 284, 'SKD/ 284 /VI/2026/Kes', 'Wahyu Ipan Sena', 'Praka', '31190539930799', '6', '1999-07-19', 'Laki-laki', 'Tamudi Yanrad LML 1 Ton 1 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '165', '65', '23.88', 'Normal', '80', '125/80', '75', 'O', 'Sehat', '2026-06-30 13:48:51'),
(307, 285, 'SKD/ 285 /VI/2026/Kes', 'RADEN GUSTAMAN WIRADINATA, S.H. ', 'LETKOL Chk ', '11030039660782', '3507240507820006', '1982-07-05', 'Laki-laki', 'KAKUMDAM XIX/TT ', 'KUMDAM XIX/TT ', 'JL.GATOT SUBROTO NO 56 RINTIS ,KEC LIMA PULUH , RIAU ', '176', '76', '24.54', 'Normal', '82', '120/80', '76', 'O', 'Sehat', '2026-06-30 14:14:38'),
(308, 286, 'SKD/ 286 /VI/2026/Kes', 'MUHAMMAD AFRAIZAL,S.S.T.Han.,S.I.P ', 'MAYOR Kav ', '11120011750287', '1', '1987-02-13', 'Laki-laki', 'PABANDYAPAM SINTELDAM XIX/TT', 'KODAM XIX/TT', 'ASMIL BATERAI B YON ARHANUD 13,JL TANGGERANG URATA BUKIT RAYA , KOTA PEKANBARU RIAU ', '170', '71', '24.57', 'Normal', '80', '120/80', '76', 'B', 'Sehat', '2026-06-30 14:48:19'),
(309, 287, 'SKD/ 287 /VI/2026/Kes', 'Galank Nur Pratama ', 'PRAKA', '31190540090799', '1', '1999-07-21', 'Laki-laki', 'Tamudi Silog', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Duma', '168', '68', '24.09', 'Normal', '84', '120/70', '76', 'O', 'Sehat', '2026-06-30 14:56:33'),
(310, 288, 'SKD/ 288 /VI/2026/Kes', 'Bruno Imam Roberto  Manullang ', 'Praka', '31190540331099', '1', '1999-10-29', 'Laki-laki', 'Tamudi 1 Ruharpan Timhar', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '165', '64', '23.51', 'Normal', '80', '120/80', '76', 'A', 'Sehat', '2026-06-30 15:41:25'),
(311, 289, 'SKD/ 289 /VI/2026/Kes', 'Fajri Isma Rangga', 'Praka', '31190540411199', '1', '1999-11-11', 'Laki-laki', 'Tamudi Yanrad Siintel', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '169', '67', '23.46', 'Normal', '81', '120/70', '76', 'A', 'Sehat', '2026-06-30 15:47:18'),
(312, 290, 'SKD/ 290 /VI/2026/Kes', 'Hari Tri Prabowo', 'PRADA', '1723112010021032', '1', '2001-12-24', 'Laki-laki', 'Tayanrad Pokko Ton 2 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '169', '65', '22.76', 'Normal', '79', '120/80', '76', 'AB', 'Sehat', '2026-06-30 15:50:28'),
(313, 291, 'SKD/ 291 /VI/2026/Kes', 'Riu Satya Wibisono', 'PRADA', '1723109020021145', '2', '2002-09-05', 'Laki-laki', 'Tayan Misil 2 LML 2 Ton 2 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '167', '68', '24.38', 'Normal', '82', '120/70', '73', 'O', 'Sehat', '2026-06-30 15:53:16'),
(314, 292, 'SKD/ 292 /VI/2026/Kes', 'Ahmed Fahrul rozi', 'PRADA', '1723107010021771', '2', '2001-07-27', 'Laki-laki', 'Tayan Misil 2 LML 1 Ton 2 Rai A', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '170', '69', '23.88', 'Normal', '84', '120/80', '71', 'B', 'Sehat', '2026-06-30 15:56:34'),
(315, 293, 'SKD/ 293 /VI/2026/Kes', 'Muhammad Naseh Alqusyairi ', 'PRADA', '1723107030021150', '1', '2003-07-22', 'Laki-laki', 'Tayan Misil 1 MMS Ton 1 Rai B', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '166', '68', '24.68', 'Normal', '80', '120/72', '78', 'O', 'Sehat', '2026-06-30 15:59:59'),
(316, 294, 'SKD/ 294 /VI/2026/Kes', 'ANGGIL PUTRA', 'PRATU', '31190547280598', '1', '1998-05-12', 'Laki-laki', 'TARENDAL SIRENDAL DENJASAANG XIX/ A PEKANBARU', 'BEKANGDAM XIX/TT', 'JL.SUTOMO ASRAMA PANCASILA', '166', '68', '24.68', 'Normal', '87', '120/70', '80', 'B', 'Sehat', '2026-06-30 16:03:49'),
(317, 295, 'SKD/ 295 /VI/2026/Kes', 'Jordy Herfi Saputra', 'Prada', '1723107010021030', '1', '2001-07-27', 'Laki-laki', 'Tayan Misil 2 MMS Ton 2 Rai B', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '164', '60', '22.31', 'Normal', '70', '110/70', '76', 'A', 'Sehat', '2026-06-30 16:05:06'),
(318, 296, 'SKD/ 296 /VI/2026/Kes', 'Fauzan Adtima', 'PRADA', '1723112010021033', '1', '2001-12-29', 'Laki-laki', 'Tabanharpan 4 Ruharpan Timhar', 'Denarhanud 004/WSBY', 'Asmil Denarhanud 004 Dumai', '177', '75', '23.94', 'Normal', '70', '120/72', '76', 'B', 'Sehat', '2026-06-30 16:09:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `akses` varchar(250) NOT NULL,
  `id_fktp` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `akses`, `id_fktp`, `status`, `gambar`, `created_at`) VALUES
(1, 'Super Admin', 'admin', '$2y$10$r7RPZaq0JR5lId99eX/aXu4oMBRsjEuzMmdlA1NCVks6ufkdrT6Vu', 'Admin', 0, 'true', 'default.jpeg', '2026-07-27 21:14:21'),
(3, 'MCU', 'mcu', '$2y$10$gdwpBcAWapFTk40/RfXyqOD2pBOF2bWDBuj1Pynr9X9FpeKOUmVZW', 'Operator', 3, 'true', '6a680e8756b03.jpg', '2026-07-27 21:14:21'),
(4, 'Reza Fahrezi', 'reza', '$2y$10$C12EafJ1ZWB3ALia4xiwrO5NzDcNLhuP0j0.MLKosKDjvjnza/KCO', 'Operator', 2, 'true', '6a6763429ef0e.jpg', '2026-07-27 21:14:21'),
(5, 'Muhammad Rafli', 'rafli', '$2y$10$ipDEKld8ldHBwQ/DCTdf2eVnqQCOhmHjEkr9QWUXF8Mtw26q1NPvO', 'Operator', 1, 'true', '6a67724f7a892.jpg', '2026-07-27 21:59:27'),
(6, 'Kakesdam', 'kakesdam', '$2y$10$0y/IsnZvVoTGZgvrcjrAQO8SDAYwqgfljB6l1K2hdd8zYSANrXii2', 'Kakesdam', 0, 'true', '6a6811ed56153.jpg', '2026-07-28 09:20:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `tb_fktp`
--
ALTER TABLE `tb_fktp`
  ADD PRIMARY KEY (`id_fktp`);

--
-- Indeks untuk tabel `tb_pasien_keluarga`
--
ALTER TABLE `tb_pasien_keluarga`
  ADD PRIMARY KEY (`id_pasien_keluarga`);

--
-- Indeks untuk tabel `tb_pasien_personil`
--
ALTER TABLE `tb_pasien_personil`
  ADD PRIMARY KEY (`id_pasien_personil`);

--
-- Indeks untuk tabel `tb_pelayanan`
--
ALTER TABLE `tb_pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indeks untuk tabel `tb_poli`
--
ALTER TABLE `tb_poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indeks untuk tabel `tb_surat_imt`
--
ALTER TABLE `tb_surat_imt`
  ADD PRIMARY KEY (`id_surat_imt`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dokter`
--
ALTER TABLE `tb_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_fktp`
--
ALTER TABLE `tb_fktp`
  MODIFY `id_fktp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_pasien_keluarga`
--
ALTER TABLE `tb_pasien_keluarga`
  MODIFY `id_pasien_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pasien_personil`
--
ALTER TABLE `tb_pasien_personil`
  MODIFY `id_pasien_personil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pelayanan`
--
ALTER TABLE `tb_pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_poli`
--
ALTER TABLE `tb_poli`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_imt`
--
ALTER TABLE `tb_surat_imt`
  MODIFY `id_surat_imt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
