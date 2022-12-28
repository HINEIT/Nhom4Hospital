-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 06:04 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(18, 'Tai Mũi Họng', 15, 12, 500000, '2022-12-28', '11:10', '2022-12-28 04:10:21', 1, 1, ''),
(20, 'Răng Hàm Mặt', 18, 12, 600000, '2022-12-28', '11:15', '2022-12-28 04:15:24', 1, 2, ''),
(21, 'Khoa nhi', 20, 12, 650000, '2022-12-28', '11:19', '2022-12-28 04:15:59', 1, 3, ''),
(22, 'Tai Mũi Họng', 17, 12, 400000, '2022-12-28', '11:27', '2022-12-28 04:27:08', 1, 1, ''),
(23, 'Khoa nhi', 20, 12, 650000, '2022-12-28', '11:55', '2022-12-28 04:54:42', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(15, 'Tai Mũi Họng', 'Ngô Hoàn Vũ', 'da nang', '500000', 123456790, 'bsvu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:05:48', ''),
(17, 'Tai Mũi Họng', 'Võ Duy Hiền', 'ho chi minh', '400000', 123456791, 'bshien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:09:29', ''),
(18, 'Răng Hàm Mặt', 'Võ Duy Tường', 'ha noi', '600000', 123456792, 'bstuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:12:56', ''),
(19, 'Răng Hàm Mặt', 'Lê Nguyễn Anh Khoa', 'ha noi', '700000', 123456793, 'bskhoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:14:05', ''),
(20, 'Khoa nhi', 'Nguyễn Hoàng Long', 'hue', '650000', 123456794, 'bslong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:14:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(39, 15, 'bsvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:10:51', '28-12-2022 09:41:20 AM', 1),
(40, 15, 'bsvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:16:33', '28-12-2022 09:47:07 AM', 1),
(41, 18, 'bstuong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:17:21', '28-12-2022 09:47:29 AM', 1),
(42, 0, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:17:39', '', 0),
(43, 20, 'bslong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:20:39', '28-12-2022 09:50:56 AM', 1),
(44, 15, 'bsvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:21:46', '28-12-2022 09:52:08 AM', 1),
(45, 18, 'bstuong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:24:57', '28-12-2022 09:55:27 AM', 1),
(46, 20, 'bslong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:55:08', '28-12-2022 10:28:31 AM', 1),
(47, 17, 'bshien@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:00:03', '28-12-2022 10:30:10 AM', 1),
(48, 15, 'bsvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:00:25', '28-12-2022 10:30:30 AM', 1),
(49, 20, 'bslong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:00:40', '28-12-2022 10:30:48 AM', 1),
(50, 20, 'bslong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:01:25', '28-12-2022 10:31:32 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` mediumtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(27, 'Tai Mũi Họng', '2022-12-28 04:03:41', ''),
(28, 'Răng Hàm Mặt', '2022-12-28 04:03:44', ''),
(29, 'Khoa nhi', '2022-12-28 04:03:54', ''),
(30, 'Khoa sản - phụ', '2022-12-28 04:04:00', ''),
(31, 'Chấn thương chỉnh hình', '2022-12-28 04:04:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(71, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:08:25', '28-12-2022 09:38:33 AM', 1),
(72, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:09:44', '28-12-2022 09:40:39 AM', 1),
(73, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:15:00', '28-12-2022 09:46:17 AM', 1),
(74, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:17:49', '28-12-2022 09:50:25 AM', 1),
(75, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:21:13', '28-12-2022 09:51:39 AM', 1),
(76, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:22:18', '28-12-2022 09:54:47 AM', 1),
(77, 0, 'bn', 0x3a3a3100000000000000000000000000, '2022-12-28 04:25:38', '', 0),
(78, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:25:45', '28-12-2022 10:24:51 AM', 1),
(79, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 04:58:50', '28-12-2022 10:29:51 AM', 1),
(80, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:00:57', '28-12-2022 10:31:16 AM', 1),
(81, 0, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:01:47', '', 0),
(82, 12, 'bnvu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-28 05:01:52', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(9, 'Anh Khoa', 'da nang', '0123456780', 'male', 'khoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:01:23', ''),
(10, 'Duy Hiền', 'ho chi minh', '0123456781', 'male', 'bnhien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:01:55', ''),
(11, 'Duy Tường', 'ha noi', '0123456782', 'male', 'bntuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:02:23', ''),
(12, 'Hoàn Vũ', 'da nang', '0123456783', 'male', 'bnvu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:02:50', ''),
(13, 'Hoàng Long', 'da nang', '0123456784', 'male', 'bnlong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-28 04:03:13', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
