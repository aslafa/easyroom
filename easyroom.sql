-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2025 pada 20.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyroom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(15) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
('ADMCWTW3E', 'adm123', 'adm123', 'adm123'),
('ADMTS2DXE', 'admin02', 'admin02', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` varchar(15) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `nip`, `email`, `password`) VALUES
('DSN1KV9L6', 'Any Muanalifah, P.hD', '198201132011012009', 'Any@gmail.com', 'Any123'),
('DSN7IYP5V', 'Maya Rini Handayani, M.Kom', '197605052011012007', 'Maya@gmail.com', 'Maya123'),
('DSNDJ7NCA', 'Dr. Wenty Dwi Yuniarti, M.Kom.', '197706222006042005', 'Wenty@gmail.com', 'Wenty123'),
('DSNJNBBTJ', 'Hery Mustofa, M.Kom', '198703172019031007', 'Hery@gmail.com', 'Hery123'),
('DSNN4YQYX', 'Dr. Khothibul Umam S.T., M. Kom', '197908272011011007', 'Khothibul@gmail.com', 'khotibul123'),
('DSNNH3ZYU', 'Siti Nur’aini, M.Kom', '198401312018012001', 'Siti@gmail.com', 'Siti123'),
('DSNQLBDOX', 'Adzhal Arwani Mahfudh, M.Kom', '199107032019031006', 'Adzal@gmail.com', 'Adzal123'),
('DSNSL3X15', 'Nur Cahyo Hendro Wibowo, S.T., M.Kom', '197312222006041001', 'Nur@gmail.com', 'Nur123'),
('DSNVYFOPI', 'Mokhamad Iklil Mustofa, M.Kom', '198808072019031010', 'Mokhamad@gmail.com', 'Mokhamad123'),
('DSNX3UFQ4', 'Dr. Masy Ari Ulinuha, S.T., M.T.', '198108122011011007', 'Masy@gmail.com', 'Masy123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `kode_jadwal` varchar(15) NOT NULL,
  `kode_mk` varchar(20) DEFAULT NULL,
  `id_dosen` varchar(15) DEFAULT NULL,
  `kode_ruang` varchar(15) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `hari` varchar(15) DEFAULT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `kuota_peserta` int(11) DEFAULT NULL,
  `kuota_masuk` int(11) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `kode_mk`, `id_dosen`, `kode_ruang`, `kelas`, `hari`, `jam_mulai`, `jam_selesai`, `kuota_peserta`, `kuota_masuk`, `semester`) VALUES
('JDWN6TSQUL', 'TI01', 'DSNDJ7NCA', 'RM705', 'TIF-5B', 'Rabu', '07:00:00', '09:30:00', 40, 0, '5'),
('JDWSVH98ET', 'TI08', 'DSN1KV9L6', 'RM907', 'TIF-5B', 'Senin', '08:40:00', '10:30:00', 40, 0, '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` varchar(15) NOT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mahasiswa` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `email`, `password`, `nama_mahasiswa`, `jurusan`, `prodi`) VALUES
('MHS8GI3DB', '23080960144', 'Arif@gmail.com', 'Arif123', 'Arif Nanda', 'Teknologi Informasi', NULL),
('MHSBR97JW', '23080960130', 'Aqib@gmail.com', 'Aqib123', 'Aqib Nu\'man Attamami', 'Teknologi Informasi', NULL),
('MHSH7V7FZ', '23080960145', 'Saylul@gmail.com', 'Saylul123', 'Saylul Hidayah Salsabila', 'Teknologi Informasi', NULL),
('MHSJXLNMN', '23080960083', 'Bagus@gmail.com', 'Bagus123', 'Bagus Dwi', 'Teknologi Informasj', NULL),
('MHSMQ4GYL', '23080950135', 'Marwan@gmail.com', 'Marwan123', 'Marwan Aldi Pratama', 'Teknik Lingkungan', NULL),
('MHSRCI3O5', '23080960138', 'Rizkullah@gmail.com', 'Rizkullah123', 'Rizkullah Akmal Natsir', 'Teknologi Informasi', NULL),
('MHSTNCYRG', '23080960101', 'Munzir@gmail.com', 'Munzir123', 'Munzir Mustofa', 'Teknologi Informasi', NULL),
('MHSXP3AGF', '23080960096', 'Harun@gmail.com', 'Harun123', 'Harun Arrosyid ', 'Teknologi Informasi', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(20) NOT NULL,
  `id_dosen` varchar(15) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `id_dosen`, `nama_mk`, `sks`) VALUES
('TI01', NULL, 'Data Mining', 2),
('TI011', NULL, 'Kalkulus', 2),
('TI02', NULL, 'Praktikum Data Mining', 2),
('TI03', NULL, 'Sistem Pakar', 2),
('TI04', NULL, 'Pengolahan Citra Digital', 2),
('TI05', NULL, 'Praktikum Pengolahan Citra Digital', 1),
('TI07', NULL, 'Islam dan Moderasi Beragama', 2),
('TI08', NULL, 'Bahasa Indonesia Karya Tulis Ilmiah', 2),
('TI09', NULL, 'Ilmu Fiqih', 2),
('TI098', NULL, 'Pemrograman Web', 2),
('TI10', NULL, 'Tauhid dan Akhlak Tasawuf', 2),
('TI23', NULL, 'OOP', 3),
('TIF06', NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kode_peminjaman` varchar(15) NOT NULL,
  `id_dosen` varchar(15) DEFAULT NULL,
  `kode_ruang` varchar(15) DEFAULT NULL,
  `id_admin` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `file_pengajuan` varchar(255) DEFAULT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') DEFAULT 'Menunggu',
  `catatan_admin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`kode_peminjaman`, `id_dosen`, `kode_ruang`, `id_admin`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `keperluan`, `file_pengajuan`, `status`, `catatan_admin`) VALUES
('PMJ4WFUUZ76', 'DSN1KV9L6', 'RM907', NULL, '2025-12-18', '02:00:00', '03:00:00', 'kelas', 'uploads/pengajuan/1765995687_6942f4a72e2b8_response_time_comparison.png', 'Disetujui', 'Auto-approve: ruang tersedia pada rentang waktu ini.'),
('PMJQWOIWECM', 'DSN1KV9L6', 'RM907', NULL, '2025-12-18', '03:00:00', '04:00:00', 'nugas', 'uploads/pengajuan/1765995810_6942f5221d736_throughput_comparison.png', 'Disetujui', 'Auto-approve: ruang tersedia pada rentang waktu ini.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` varchar(15) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `status` enum('Terpakai','Kosong') DEFAULT 'Terpakai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `nama_ruang`, `kapasitas`, `fasilitas`, `lokasi`, `status`) VALUES
('RM237', 'ISDB 4.4', 40, NULL, NULL, 'Terpakai'),
('RM583', 'ISDB 3.10', 40, NULL, NULL, 'Terpakai'),
('RM705', 'LAB RPL', 40, NULL, NULL, 'Terpakai'),
('RM907', 'ISDB 2.8', 35, NULL, NULL, 'Terpakai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nidn` (`nip`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kode_jadwal`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `kode_ruang` (`kode_ruang`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode_ruang`);

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode_ruang`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
