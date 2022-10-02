-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Sep 2022 pada 16.11
-- Versi server: 10.3.36-MariaDB-cll-lve
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvikaaj_kp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `jam_absen` time NOT NULL,
  `jam_absen_pulang` time NOT NULL,
  `lat_absen` varchar(250) NOT NULL,
  `long_absen` varchar(250) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `status_absen` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id_absen`, `id_pegawai`, `tgl_absen`, `jam_absen`, `jam_absen_pulang`, `lat_absen`, `long_absen`, `keterangan_absen`, `status_absen`) VALUES
(279, 40, '2022-05-19', '08:43:23', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(280, 51, '2022-05-19', '08:43:35', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(281, 52, '2022-05-19', '08:43:50', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(282, 49, '2022-05-19', '08:43:57', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(283, 48, '2022-05-19', '08:44:10', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(284, 53, '2022-05-19', '08:44:53', '00:00:00', '-7.0311904', '107.6021675', 'Bekerja Di Kantor', 1),
(285, 40, '2022-05-20', '09:07:53', '09:08:14', '-7.0311844', '107.6021731', 'Bekerja Di Kantor', 2),
(286, 47, '2022-05-20', '09:09:01', '00:00:00', '-7.0311845', '107.6021734', 'Sakit', 1),
(291, 40, '2022-06-09', '15:46:43', '00:00:00', '-7.031178', '107.6021783', 'Bekerja Di Kantor', 1),
(292, 53, '2022-06-09', '15:50:03', '00:00:00', '-7.0311834', '107.6021805', 'Bekerja Di Kantor', 1),
(293, 47, '2022-06-09', '23:40:33', '00:00:00', '-7.0317349', '107.6029929', 'Bekerja Di Kantor', 1),
(295, 47, '2022-06-10', '22:29:08', '00:00:00', '-7.03118', '107.6021821', 'Bekerja Di Kantor', 1),
(296, 47, '2022-06-13', '10:16:27', '10:50:34', '-7.0311852', '107.6021788', 'Bekerja Di Kantor', 2),
(298, 40, '2022-06-13', '10:18:44', '10:50:19', '-7.0311852', '107.6021788', 'Bekerja Di Rumah / WFH', 2),
(299, 53, '2022-06-13', '10:51:09', '10:51:16', '-7.0311822', '107.6021801', 'Bekerja Di Rumah / WFH', 2),
(300, 50, '2022-06-13', '10:51:37', '10:51:39', '-7.0311822', '107.6021801', 'Bekerja Di Kantor', 2),
(301, 49, '2022-06-13', '10:51:54', '10:51:57', '-7.0311822', '107.6021801', 'Bekerja Di Kantor', 2),
(302, 40, '2022-06-16', '08:39:16', '00:00:00', '-6.9310697', '107.6150931', 'Bekerja Di Kantor', 1),
(303, 47, '2022-06-16', '08:39:33', '00:00:00', '-6.9310737', '107.6151041', 'Bekerja Di Kantor', 1),
(304, 53, '2022-06-16', '08:40:56', '00:00:00', '-6.9310767', '107.6150979', 'Bekerja Di Kantor', 1),
(305, 49, '2022-06-16', '08:42:14', '00:00:00', '-6.9310805', '107.6151031', 'Bekerja Di Kantor', 1),
(306, 40, '2022-07-05', '14:31:00', '00:00:00', '-6.9539132', '107.5818564', 'Bekerja Di Kantor', 1),
(307, 40, '2022-07-13', '15:09:06', '00:00:00', '-7.0311726', '107.6021891', 'Bekerja Di Kantor', 1),
(309, 49, '2022-07-29', '08:43:52', '00:00:00', '-7.0311842', '107.6021731', 'Bekerja Di Rumah / WFH', 1),
(311, 40, '2022-07-29', '14:43:25', '00:00:00', '-7.041379078132156', '107.60773724826336', 'Bekerja Di Kantor', 1),
(312, 40, '2022-08-02', '17:12:26', '00:00:00', '-7.0564276', '107.572521', 'Bekerja Di Kantor', 1),
(313, 40, '2022-08-06', '14:24:28', '00:00:00', '-7.0413726', '107.6077072', 'Bekerja Di Kantor', 1),
(314, 40, '2022-08-23', '23:04:41', '00:00:00', '-6.9107712', '107.6002816', 'Bekerja Di Kantor', 1),
(315, 40, '2022-08-25', '10:06:08', '11:18:53', '-7.0311839', '107.602161', 'Cuti', 2),
(316, 40, '2022-09-19', '17:13:40', '17:14:32', '-7.0413608', '107.6077436', 'Bekerja Di Kantor', 2),
(317, 40, '2022-09-25', '14:50:01', '00:00:00', '-7.0311782', '107.6021904', 'Bekerja Di Kantor', 1),
(318, 40, '2022-09-27', '08:49:32', '00:00:00', '-7.0311892', '107.6021919', 'Bekerja Di Kantor', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id_jam` int(11) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(7, '08:00:00', '09:30:00', 'Masuk'),
(8, '17:00:00', '18:00:00', 'Pulang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_type` varchar(125) NOT NULL,
  `umur` int(11) NOT NULL,
  `image` varchar(125) NOT NULL DEFAULT 'image.jpg',
  `kode_pegawai` varchar(125) NOT NULL,
  `jabatan` varchar(125) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `user_type`, `umur`, `image`, `kode_pegawai`, `jabatan`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`) VALUES
(40, 'Alvika Aji Prahasta', 'alvika', '2f06a87d2b049973067695328b013230', 'Admin', 20, 'ascw210.jpg', '001', 'Web Developer', '2001-10-16', 'Bandung', 'Pria'),
(47, 'Erni Putri Siswanti', 'erni', '6e59bb96b06c40e477ba58d02cbe2b84', 'Admin', 35, 'erni.png', '002', 'HRD', '1988-06-15', 'Tangerang', 'Perempuan'),
(48, 'Della Dewi', 'della', '4e4a3b45c22f1be8f65067b617722ad6', 'Karyawan', 25, 'della.png', '003', 'Admin Support', '1993-10-14', 'Bandung', 'Perempuan'),
(49, 'Nirwansyah Ramdhani', 'nirwan', '28e47f714c1fcb538a669b971ee6ce46', 'Karyawan', 24, 'nirwan.png', '004', 'Web Developer', '1996-06-24', 'Bandung', 'Pria'),
(50, 'Faisal Kurnia', 'faisal', 'f4668288fdbf9773dd9779d412942905', 'Karyawan', 26, 'faisal.png', '005', 'Digital Marketing', '1990-06-19', 'Bandung', 'Pria'),
(51, 'Rio Gunawan', 'rio', 'd5ed38fdbf28bc4e58be142cf5a17cf5', 'Karyawan', 22, 'rio.png', '006', 'Web Developer', '1996-10-24', 'Bandung', 'Pria'),
(52, 'Aria Wiguna', 'aria', 'aafa7ed7cc46d6b04fc6e2b20baab657', 'Karyawan', 22, 'arya.png', '007', 'Web Developer', '1997-06-23', 'Bandung', 'Pria'),
(53, 'Umi Warsitaningsih', 'umi', 'e84f942d7f93ddc14d24b930d87e3da7', 'Karyawan', 30, 'umi.png', '008', 'Adword Specialis', '1983-10-26', 'Lampung', 'Perempuan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
