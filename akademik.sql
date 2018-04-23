-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Apr 2018 pada 08.38
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `matakuliah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `matakuliah`) VALUES
('00001', 'Dr. Drs. ERI ZULIARSO,M.Kom.', 'WEB SERVICE'),
('00002', 'IMAM HUSNI AL AMIN,S.T., M.Kom', 'SISTEM CERDAS'),
('00003', 'FATKHUL AMIN,S.T., M.Kom.', 'PEMROGRAMAN WEB MOBILE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`nim`, `nama`, `sks`) VALUES
('15.01.53.0065', 'Apriana Panca Kartikasari', 21),
('15.01.53.0082', 'Fadilla Maulida', 21),
('1501530013', 'Listyani Praptining Putri', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`, `alamat`) VALUES
('1501530013', 'LISTYANI PRAPTINING PUTRI', 'TEKNIK INFORMATIKA', 'SURABAYA'),
('1501530065', 'APRIANA PANCA KARTIKASARI', 'TEKNIK INFORMATIKA', 'BANDUNG'),
('1501530082', 'FADILLA MAULIDA', 'TEKNIK INFORMATIKA', 'BALI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(15) NOT NULL,
  `matakuliah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `matakuliah`) VALUES
('001', 'WEB SERVICE'),
('002', 'SISTEM CERDAS'),
('003', 'PEMROGRAMAN WEB MOBILE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
