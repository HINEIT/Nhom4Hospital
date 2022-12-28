-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 07:56 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(8, 'Tai MÅ©i Há»ng ', 8, 6, 500000, '2022-12-22', '12:00', '2022-12-21 11:50:30', 1, 1, ''),
(9, 'Tai MÅ©i Há»ng ', 8, 6, 500000, '2022-12-22', '12:00', '2022-12-21 11:50:53', 1, 0, ''),
(10, 'Tai MÅ©i Há»ng ', 8, 7, 500000, '2022-11-11', '11:01', '2022-12-26 17:40:16', 0, 2, ''),
(11, 'Tai MÅ©i Há»ng ', 8, 7, 500000, '1111-11-11', '11:11', '2022-12-26 17:51:01', 0, 2, ''),
(12, 'Tai MÅ©i Há»ng ', 8, 7, 500000, '11111-11-11', '11:11', '2022-12-27 05:22:26', 0, 1, ''),
(14, 'Tai MÅ©i Há»ng ', 8, 7, 500000, '0111-11-11', '11:11', '2022-12-27 05:28:16', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Tai MÅ©i Há»ng ', 'Nguyá»…n Thanh TÃ¹ng', 'da nang', '500000', 123456780, 'tung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-19 08:23:52', ''),
(9, 'RÄƒng HÃ m Máº·t ', 'Phan Máº¡nh Quá»³nh', 'ha noi', '400000', 123456781, 'quynh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-19 08:28:24', ''),
(10, 'Máº¯t ', 'Nguyá»…n PhÆ°Æ¡ng Jack', 'ho chi minh', '550000', 123456782, 'jack@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-19 08:51:52', ''),
(11, 'Khoa sáº£n - phá»¥ ', 'Soobin HoÃ n VÅ©', 'thai binh', '600000', 123456783, 'bsvu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-19 08:58:04', ''),
(12, 'Khoa nhi', 'HoÃ ng Yáº¿n Chibi ', 'bac giang', '650000', 123456784, 'yen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-19 09:01:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(19, 7, 'test@demo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-18 03:34:33', '18-12-2022 09:14:40 AM', 1),
(20, 11, 'bsvu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:12:50', '19-12-2022 02:51:54 PM', 1),
(21, 11, 'bsvu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:22:44', '19-12-2022 02:58:05 PM', 1),
(22, 11, 'bsvu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:33:15', '19-12-2022 04:17:17 PM', 1),
(23, 11, 'bsvu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-22 01:43:34', '', 1),
(24, 11, 'bsvu@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-22 01:53:24', '', 1),
(25, 0, 'vivutrave', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:39:02', '', 0),
(26, 0, 'vivutrave', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:39:11', '', 0),
(27, 8, 'tung@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:41:07', '', 1),
(28, 8, 'tung@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-27 05:14:59', '', 1),
(29, 8, 'tung@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-27 05:23:57', '', 1),
(30, 8, 'tung@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-27 06:24:01', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(16, 'Tai MÅ©i Há»ng ', '2022-12-18 04:41:16', ''),
(17, 'RÄƒng HÃ m Máº·t ', '2022-12-18 04:41:25', ''),
(18, 'Máº¯t ', '2022-12-18 04:41:35', ''),
(19, 'Khoa sáº£n - phá»¥ ', '2022-12-18 04:41:55', ''),
(20, 'Khoa nhi', '2022-12-18 04:42:01', ''),
(21, 'KHoa khÃ¡m chá»‰nh hÃ¬nh', '2022-12-26 18:11:43', ''),
(22, 'KHoa khÃ¡m chá»‰nh hÃ¬nhh', '2022-12-27 06:11:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-18 03:17:52', '18-12-2022 09:04:05 AM', 1),
(31, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-18 04:46:21', '18-12-2022 10:16:29 AM', 1),
(32, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:38:28', '19-12-2022 10:10:04 AM', 1),
(33, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:40:13', '19-12-2022 10:12:06 AM', 1),
(34, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:42:16', '', 1),
(35, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:44:16', '19-12-2022 10:22:00 AM', 1),
(36, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:52:34', '19-12-2022 10:22:40 AM', 1),
(37, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:56:03', '19-12-2022 10:26:14 AM', 1),
(38, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 04:56:33', '19-12-2022 10:26:38 AM', 1),
(39, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 05:03:15', '19-12-2022 10:34:29 AM', 1),
(40, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 05:21:11', '19-12-2022 10:51:17 AM', 1),
(41, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 05:43:46', '19-12-2022 11:13:51 AM', 1),
(42, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:22:02', '19-12-2022 02:52:31 PM', 1),
(43, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:28:12', '19-12-2022 02:58:44 PM', 1),
(44, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:28:53', '', 0),
(45, 0, 'vu', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:29:09', '', 0),
(46, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:29:22', '', 0),
(47, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-19 09:31:58', '19-12-2022 03:02:22 PM', 1),
(48, 6, 'vu1@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-21 11:49:58', '', 1),
(49, 7, 'z2kakarost@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:39:54', '26-12-2022 11:10:32 PM', 1),
(50, 7, 'z2kakarost@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:42:17', '', 1),
(51, 0, 'vivutrave', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:48:20', '', 0),
(52, 0, 'vivutrave', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:49:02', '', 0),
(53, 7, 'z2kakarost@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:50:40', '', 1),
(54, 7, 'z2kakarost@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-26 17:54:13', '', 1),
(55, 7, 'z2kakarost@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2022-12-27 05:22:11', '27-12-2022 12:26:37 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(7, 'Ph?m vi?t quang', 'ha noi', '1321313123', 'male', 'z2kakarost@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-26 17:39:30', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
