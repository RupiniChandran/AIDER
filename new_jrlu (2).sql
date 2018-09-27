-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2018 at 04:20 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new_jrlu`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointmentID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) DEFAULT NULL,
  `serviceID` int(11) NOT NULL,
  `staffID` varchar(40) DEFAULT NULL,
  `customerID` varchar(50) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`appointmentID`),
  KEY `appointmentID` (`appointmentID`),
  KEY `branchID` (`branchID`),
  KEY `staffID` (`staffID`),
  KEY `customerID` (`customerID`),
  KEY `serviceID` (`serviceID`),
  KEY `interval_id` (`interval_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `branchID`, `serviceID`, `staffID`, `customerID`, `appointment_date`, `interval_id`) VALUES
(191, 12, 69, 'jean', 'anon', '2018-05-28', 1),
(192, 12, 45, 'jean', 'anon', '2018-05-28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `bankID` int(11) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(50) NOT NULL,
  PRIMARY KEY (`bankID`),
  UNIQUE KEY `bankID` (`bankID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bankID`, `bankName`) VALUES
(1, 'Maybank'),
(2, 'RHB'),
(3, 'CIMB'),
(4, 'Hong Leong'),
(5, 'Public Bank'),
(6, 'OCBC'),
(7, 'Bank Islam'),
(8, 'HSBC'),
(9, 'AmBank'),
(10, 'Standard Chartered'),
(11, 'Affin Bank'),
(12, 'Alliance Bank');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branchID` int(11) NOT NULL AUTO_INCREMENT,
  `branchName` varchar(50) NOT NULL,
  `bankID` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  PRIMARY KEY (`branchID`),
  KEY `bankID` (`bankID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchName`, `bankID`, `address`, `postcode`) VALUES
(1, 'Kuala Lumpur', 1, '1 st Floor Menara Maybank 100 Jalan tun Perak 50050 Kuala Lumpur ', '50050'),
(2, 'KLCC', 1, 'Lot C21-C, Concourse Expansion Suria KLCC Kuala Lumpur City Centre 50088 Kuala Lumpur', '50088'),
(3, 'Wangsa Maju', 1, 'No 2 & 2A, Ground & 1st Floor Jalan Wangsa Delima 11 Dâ€™wangsa, KLSC Wangsa Maju 53300 Kuala Lumpur ', '53300'),
(4, 'Mid Valley', 1, 'No 2 & 2A, Ground & 1st Floor Jalan Wangsa Delima 11 Dâ€™wangsa, KLSC Wangsa Maju 53300 Kuala Lumpur ', '53300'),
(5, 'Bangi', 1, 'No 2 Jalan 6C/16 Section 16 43650 Bandar Baru Bangi Selangor ', '43650'),
(6, 'Setia Alam', 1, ' No 2, Persiaran Setia Impian Setia Alam Section U13 40170 Shah Alam Selangor', '40170'),
(7, 'Johor Bahru', 1, ' Johor Bharu City Centre 106-108 Jalan Wong Ah Fook 80000 Johor Bahru Johor ', '80000'),
(8, 'Batu Pahat', 1, '32-4 Jalan Rahmat 83000 Batu Pahat Johor ', '83000'),
(9, 'Nilai', 1, 'PT 7443, Jalan BBN 1/2F Bandar Baru Nilai 71800 Nilai Negeri Sembilan', '71800'),
(10, 'Kuantan', 1, 'Kuantan Chinese Commercial Chamber Industry (KCCCI) Ground & 1st Floor Lot 46 & 47, Section 18 Jalan Bukit Ubi 25000 Kuantan ', '25000'),
(11, 'Sri Damansara', 3, '8 Jalan Cempaka SD 12/1 Bandar Sri Damansara\n52200 WP Kuala Lumpur\n', '52200'),
(12, 'Bangsar South', 3, 'Ground & 1st Floor Tower 1 Avenue 5 Bangsar South City (The Horizon) 58000 WP Kuala Lumpur\n', '58000'),
(13, 'Bukit Tunku', 3, 'J2 & K1 Taman Tunku Bukit Tunku 50480 WP Kuala Lumpur\n', '50480'),
(14, 'D''Wangsa', 3, 'No 12A-G Jalan Wangsa Maju Delima 11 Wangsa Link 53500 Pusat Bandar Wangsa Maju WP Kuala Lumpur\n', '53500'),
(15, 'Damansara Heights', 3, 'Wisma UOA II, 6 Changkat Semantan 50490 Damansara Heights\nWP Kuala Lumpur\n', '50490'),
(16, 'Desa Kepong', 3, '4 Jalan 54 Desa Jaya Kepong 52100 WP Kuala Lumpur\n', '52100'),
(17, 'Ampang', 3, 'Unit G-03, Ground Floor Medical Office Building Gleaneagles Intan Medical Centre 282 Jalan Ampang 50450 WP Kuala Lumpur\n', '50450'),
(18, 'Bukit Bintang', 3, 'Plaza Yeoh Tiong Lay 55 Jalan Bukit Bintang 55100 WP Kuala Lumpur\n', '55100'),
(19, 'Jalan Duta', 3, 'Block 8 Kompleks Pejabat Kerajaan Jalan Duta 50480 WP Kuala Lumpur\n', '50480'),
(20, 'Jalan Imbi', 3, '43 Jalan Barat Off Jalan Imbi 55100 WP Kuala Lumpur\n', '55100'),
(21, 'Ampang Point', 2, '37 & 38, Jalan Memanda 7, Taman Dato Ahmad Razali, Jalan Ampang, 68000 Ampang, \r\nKuala Lumpur \r\n', '68000'),
(22, 'Bukit Bintang', 2, '58-60, Jalan Bukit Bintang, 55100 Kuala Lumpur \r\n', '55100'),
(23, 'Damansara Height', 2, 'Lot C9-C12, Block C, Pusat Bandar Damansara, Damansara Heights, \r\n50490 Kuala Lumpur \r\n', '50490'),
(24, 'Jalan Ipoh', 2, '14-16, Jalan Ipoh, 51200 Kuala Lumpur \r\n', '51200'),
(25, 'Jinjang Utara', 2, 'Ground Floor, 3471- A, Jalan Besar, Jinjang Utara, 52000 Kuala Lumpur \r\n', '52000'),
(26, 'Kepong', 2, '321, Batu 7, Jalan Kepong, Kepong Baru, 52100 Kuala Lumpur \r\n', '52100'),
(27, 'KL Sentral', 2, 'Unit 7, Level 1 Arrival Hall, City Air Terminal KL Sentral Station, 50470 Kuala Lumpur \r\n', '50470'),
(28, 'KLCC', 2, 'Lot G 34, Ground Level, Petronas Twin Towers, 50088 Kuala Lumpur \r\n', '50088'),
(29, 'Mid Valley', 2, '17-G & 17-1, The Boulevard, Mid Valley City, Lingkaran Syed Putra, \r\n59200 Kuala Lumpur \r\n', '59200'),
(30, 'Bangsar Shopping', 2, 'Lot G-01, Ground Floor, Bangsar Shopping Centre Office Tower, Jalan Maarof, 59100 Bangsar, Kuala Lumpur\r\n', '59100'),
(31, 'SriDamansara', 5, '6, Jalan Tembaga SD5/2A Bandar Sri Damansara 52200 Kuala Lumpur\r\n', '52200'),
(32, 'Sungai Besi', 5, '12, Jalan Sungai Besi, 57100 Kuala Lumpur \r\n', '57100'),
(33, 'Selayang', 5, '45, 47 & 49, Jalan 2/3A,Pusat Bandar Utara Selayang,Batu Caves, 68100 Kuala Lumpur\r\n', '68100'),
(34, 'Bangsar', 5, '36 & 38, Jalan Maarof, Bangsar, 59100 Kuala Lumpur \r\n', '59100'),
(35, 'Sentul', 5, '36, 38 & 40, Jalan 14/48A, Sentul Raya Off Jalan Sentul, 51000 Kuala Lumpur\r\n', '51000'),
(36, 'Ampang', 5, 'Wisma Saudagar,420, Batu 5, Jalan Ampang, 68000 Ampang , Selangor\r\n', '68000'),
(37, 'BatangKali', 5, '3, 4 & 5, Jalan CKC 1,Bandar Baru Batang Kali,44300 UluSelangor,Selangor\r\n', '44300'),
(38, 'Bukit Beruntung', 5, '23 & 25, Jalan Melati 2B, Seksyen BB11, \r\nBandar Bukit Beruntung, 48300 Rawang, Selangor\r\n', '48300'),
(39, 'JalanTapah', 5, '64 & 66,Jalan Tapah Off Jalan Goh Hock Huat,41400 Kelang, Selangor\r\n', '41400'),
(40, 'Kajang', 5, 'No. 14, 15 & 16,Jalan Raja Haroun, 43000 Kajang, Selangor\r\n', '43000'),
(41, 'Sri Petaling', 4, 'No. 71 & 73, Jalan Radin Tengah Zone J 4 Bandar Baru Seri Petaling 57000 Kuala LumpurState: W. P. KualaLumpur\r\n', '57000'),
(42, 'Brick Fields', 4, '150, Jln Tun Sambanthan 50470 Kuala Lumpur.\r\n\r\n', '50470'),
(43, 'Bukit Bintang', 4, 'No. 53 & 55, Jalan Sultan Ismail, 50250 Kuala Lumpur', '50250'),
(44, 'Danau Kota', 4, 'No 29 & 30 Platinum Walk 2 Jalan Langkawi 53300 Setapak Kuala Lumpur\r\n', '53300'),
(45, 'Sri Hartamas', 4, 'A-G-10 & A-01-11 No 21 Jalan 26/70A Desa Sri Hartamas 50480 Kuala Lumpur\r\n', '50480'),
(46, 'Mega Mendung', 4, '111, Jalan Mega Mendung Kompleks Bandar Off Jalan Kelang Lama 58200 Kuala Lumpur\r\n', '58200'),
(47, 'Perak', 4, 'Level 1, Wisma Hong Leong No 18 Jalan Perak 50450 Kuala Lumpur\r\n', '50450'),
(48, 'Tun Razak', 4, 'Ground & Mezzanine Floors Wisma Sin Heap Lee No 346 Jalan TunRazak 50400 Kuala Lumpur.\r\n', '50400'),
(49, 'Kepong', 4, 'No 77C & D, Lot 58529 Jalan Kepong 52100 Kuala Lumpur\r\n', '52100'),
(50, 'Pandah Indah', 4, 'No. 23GM & 25GM Jalan Pandan Indah 4/8 Pandan Indah\r\n55100 Kuala Lumpur\r\n', '55100');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` varchar(50) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `year` varchar(5) NOT NULL,
  `email` varchar(70) NOT NULL,
  `passportNo` varchar(100) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `password`, `address`, `postcode`, `gender`, `dob`, `year`, `email`, `passportNo`) VALUES
('anon', 'C4J8ENgfTrbYXCmV6s1Sag==', 'Hv+3HpHY6W5YsiY+Yn77Yw==', '$2y$10$ehQuCnm2A63G6jAz7rDJdOHn4MirfZ/sGmedOwHh6v/Et7wt80t2O', '7FA40rIPSXbldttituorWaCyymq3umgRfzyh/QU1990=', '6000', 'Female', '28/5/1999', '1990', 'myemail@gmail.com', 'sqxB0ZCa2Hj5rTlmmvYbfA=='),
('huhu', 'LqkB/DAnKrSMca+cpr/bvg==', 'LqkB/DAnKrSMca+cpr/bvg==', '$2y$10$ZakoXoB3h1XRGvY7Z0BUFeP/Lo50RH7qNsdj7J.xxIIJY64IThGEO', '9KCRn6CZ839W6P08Faq5IA==', '666', 'Male', '29/5/2018', '1990', 'G2XQHv2TEXEow6PvWWDVLQ==', 'F4QbDVfkLwhVScYxfQDkCA=='),
('jaja', 'u1TiersKjVTn/L6zYgOhLw==', 'wJR57AC/Vtjk1lNC+ltmLA==', '$2y$10$iGKDhjJ0YLNLjTQYI1pcqOINgciptP9uuJh1b8RacOG9SM1j18DFa', 'OLUu0zrV0cKzffjbzp6Vmg==', '9000', 'Male', 'xtVSb2lEP+xCAZe3eZ49gg==', '1990', 'DBU84cIuxpPyGbqfMV9c6JQLbQCyKjKps8LTSIn8S3g=', 'NyEVWiRT9tnSctZJzfoGaA=='),
('me', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1996', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('new', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '6000', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('newJaja', 'fRV8qG0ieFSfPQ42yOO3eg==', 'X/B52PhwPmMytnOmSUHWkw==', '$2y$10$3EMHKRQa9KHpYioQoDqzhedXzKF4Kdut2UydW2D51oC4yfx1vJvmu', '+yhMMkazLnH3YwMMtIbAxw==', '60000', 'Male', 'SSEJyUMB44+jd911PWoU9A==', '1990', 'qxBMQZ7H0BsrKFn36l4c3g==', 'g9kLZMwbhloER+uzWPsrXA=='),
('old', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '1212', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test1', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '30495', 'Male', '9/7/1996', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test10', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1979', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test11', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60004', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test12', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '50440', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test13', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1986', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test14', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '40324', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test15', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12357', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test16', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1968', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test17', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '95743', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test18', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '39281', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test19', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1996', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test2', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '47400', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test20', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60200', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test21', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12934', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test22', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1955', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test23', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '43943', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test24', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '50400', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test25', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1991', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test26', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '14834', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test27', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '83788', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test28', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1946', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test29', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '13984', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test3', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '52912', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test30', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '48934', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test31', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1985', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test32', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60002', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test33', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12123', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test34', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1976', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test35', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '40003', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test36', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '24983', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test37', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1996', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test38', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60002', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test39', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12122', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test4', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1996', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test40', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '2/7/1976', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test41', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '59843', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test42', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '19382', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test43', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '1/7/1982', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test44', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '48394', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test45', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '39483', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test46', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/4/1972', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test47', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60003', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test48', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12123', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test49', 'dy/URunIh7kNqij71HE1jg==', '8q6zeb8V/xMKHGNms3Ablw==', '$2y$10$U6gFsXTxRUHLghcPWmaeTOanXAgRI0UX0uI5gIy2auUuXjPrWWjx.', 'VxHGe0aUrRQm2R7nNJv8kQ==', '50490', 'Male', '23/01/1994', '1990', 'teta@gmail.com', '57GT9tMPl84p0mlbMpWqFg=='),
('test5', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '50443', 'Female', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test50', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60004', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'jtkja@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test51', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1965', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test6', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '11400', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('test7', '/k1WQ/8VmUND+5hNO+18Hg==', 'JChCXsxFGPsOcwzfvM0OTQ==', '$2y$10$U6BwVaicYhcm0iDQch.fxuuJch.vCVrect/v28AbV31aG.Ifxs8Ku', 'Ip9dtyA18KQcu8TtmCQroWuLWWenSNMTl0rPFOr6o00=', '6000', 'Male', '9/7/1972', '1990', 'graf_kristo18@mail.ru', 'fxyM3xOng+qit6jZrdX+yQ=='),
('test8', '8CrjLfx+TMZzczq2jzi/cA==', 'eluf7lITxwyNJAnHTpUapg==', '$2y$10$dg0T7UDSmvnhVYyoDpifs.uNSzELz3F85L4EhWHR3ZF9kAjdU40SW', 'kq4LCTnvbasYBjyAVIuR8g==', '60000', 'Male', '/xAO5/32BYURmogYT0vIkw==', '1990', 'desakondo697@gmail.com', 'zJSWTl12rb+ZcL+h2izE5A=='),
('test9', 'tUUa4YNFnHIeeCRcwPXuEA==', '8cRvTc0eB8pVAlu7eXJdKQ==', '$2y$10$./gwwl11YUoGXn6WeO0M9ekOQPBCIV/WqexVx7lvZeX3RBhuBnmjq', '2HYvXR4lgtlSG4DYrBc9Mw==', '12120', 'Female', 'qrkVBNSVCVDR1BEyNM1Hvw==', '1990', 'asd', '2HYvXR4lgtlSG4DYrBc9Mw=='),
('umar', 'dy/URunIh7kNqij71HE1jg==', '8q6zeb8V/xMKHGNms3Ablw==', '$2y$10$U6gFsXTxRUHLghcPWmaeTOanXAgRI0UX0uI5gIy2auUuXjPrWWjx.', 'VxHGe0aUrRQm2R7nNJv8kQ==', '6000', 'Male', '18/12/1996', '1990', 'email@gmail.com', '57GT9tMPl84p0mlbMpWqFg==');

-- --------------------------------------------------------

--
-- Table structure for table `data_type`
--

CREATE TABLE IF NOT EXISTS `data_type` (
  `dataTypeID` int(10) NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(50) NOT NULL,
  `fieldType` varchar(50) NOT NULL,
  PRIMARY KEY (`dataTypeID`),
  KEY `dataTypeID` (`dataTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `data_type`
--

INSERT INTO `data_type` (`dataTypeID`, `fieldName`, `fieldType`) VALUES
(1, 'Firstname', 'EditText'),
(2, 'Lastname', 'EditText'),
(3, 'MyKad No/Passport No', 'EditText'),
(4, 'Email', 'EditText'),
(5, 'Date of Birth', 'DatePicker'),
(9, 'Address', 'EditText'),
(15, 'Town', 'EditText'),
(16, 'University Name', 'EditText'),
(17, 'Programme name', 'EditText'),
(19, 'Nationality', 'EditText'),
(20, 'Mobile Phone No.', 'EditText'),
(21, 'NRIC No.', 'EditText'),
(22, 'Educational Level', 'EditText'),
(23, 'Marital Status', 'EditText'),
(25, 'Name of Employer or Firm', 'EditText'),
(26, 'Office Address', 'EditText'),
(27, 'Office Postcode', 'EditText'),
(30, 'Tenure', 'EditText'),
(31, 'Loan Amount', 'EditText'),
(34, 'Model', 'EditText'),
(35, 'Year of Make', 'EditText'),
(36, 'Financing Amount Required', 'EditText'),
(37, 'Annual Income', 'EditText'),
(38, 'Sector', 'EditText'),
(39, 'No. of Children', 'EditText'),
(40, 'Occupation', 'EditText'),
(41, 'Currency', 'EditText'),
(42, 'Repayment Period', 'EditText'),
(43, 'Company Name', 'EditText'),
(44, 'Company Type', 'EditText'),
(45, 'Business Registration Number', 'EditText'),
(46, 'Annual Sales Turnover', 'EditText'),
(47, 'Incorporation Date', 'EditText');

-- --------------------------------------------------------

--
-- Table structure for table `filleddata`
--

CREATE TABLE IF NOT EXISTS `filleddata` (
  `appointmentID` int(11) NOT NULL,
  `fieldName` varchar(70) NOT NULL,
  `data` varchar(200) NOT NULL,
  PRIMARY KEY (`appointmentID`,`fieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filleddata`
--

INSERT INTO `filleddata` (`appointmentID`, `fieldName`, `data`) VALUES
(191, 'Date of Birth', 'nDQxMwyzM5SEkeed+B68iQ=='),
(191, 'Email', 'c7PL+rktey1VhcH3PbdraaArsIgbglVcge1IEvqTwKQ='),
(191, 'Firstname', 't7zCBv6fXsUm75x9ox9isw=='),
(191, 'Lastname', '0lzpUqy0gmFnG4uQ9M5+MQ=='),
(191, 'MyKad No/Passport No', 'vY4DnI6Y+D1Fr8RiHz4q/w=='),
(191, 'Programme name', 'rRw33H/1yP+veSGXDHKpjw=='),
(191, 'Special field', 'khqcSSmJpjvEepffv7CINQ=='),
(191, 'University Name', 'NdQUwzhF/IvVxakfAA0R3Q=='),
(192, 'Address', 'awFQ8rlTHY5bFsA1a58OhovXyD4bDsymbeCxnx40P+Y='),
(192, 'Date of Birth', 'NoVNd3hK1xfUovDg7GWAtw=='),
(192, 'Designation', 'g1zj1hyJGnz4nCM4vh+l5w=='),
(192, 'Educational Level', 'YhWIR1KaJB+glBdXcKgbvg=='),
(192, 'Email', 'dgR74T6ed711IIuqKHd2/bdMV0m8wwZs6BI7YH+S9S8='),
(192, 'Firstname', 'jGmej6RU6ED8uiwNGs7dZQ=='),
(192, 'Lastname', 'V8t4p+l/iJgCibjLeUPwAw=='),
(192, 'Loan Amount', 'ntgD+w2VY2/c4ZOOEyfVkg=='),
(192, 'Marital Status', 'LrI6T8yQkxB/Q3PeFFycBQ=='),
(192, 'Mobile Phone No.', '69yHTdSp3Fro6g6Q4wSCBw=='),
(192, 'MyKad No/Passport No', 'fg55sl+LEu1Breffsf/hJA=='),
(192, 'Name of Employer or Firm', 'XyiFBYmKBW7/Zm4KSWPT9A=='),
(192, 'Nationality', 'ldYRDP1ht50ZTTHwSBTPAg=='),
(192, 'NRIC No.', '3ft1h2AccWRaKabZOu/yxw=='),
(192, 'Office Address', 'nrbkbEotAgIk+t3/F7n+Mg=='),
(192, 'Office Postcode', 'r5XYtc3alIDN54nNsUQrIA=='),
(192, 'Tenure', 'I7w5OB8xRSBEt/o1+PdT2w=='),
(192, 'Town', 'BB7RuDC6OpdoPLcpotRcmg==');

-- --------------------------------------------------------

--
-- Table structure for table `hardcopy`
--

CREATE TABLE IF NOT EXISTS `hardcopy` (
  `hardcopyID` int(11) NOT NULL AUTO_INCREMENT,
  `documentName` varchar(70) NOT NULL,
  PRIMARY KEY (`hardcopyID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hardcopy`
--

INSERT INTO `hardcopy` (`hardcopyID`, `documentName`) VALUES
(1, 'MyKad/Passport'),
(2, 'Driver Licence');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `serviceID` int(10) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(50) NOT NULL,
  `bankID` int(11) NOT NULL,
  `description` varchar(10000) NOT NULL,
  PRIMARY KEY (`serviceID`),
  UNIQUE KEY `serviceID` (`serviceID`),
  KEY `bankID` (`bankID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `serviceName`, `bankID`, `description`) VALUES
(40, 'Personal Loan', 1, 'ServiceDescriptiodkjfksjdfljskldfn'),
(41, 'Hire Purchase', 1, 'Service Description'),
(42, 'Maybank World Mastercard', 1, 'Service Description'),
(43, 'Golden Savers Savings Account', 1, 'Service Description'),
(44, 'Basic Savings Account', 1, 'Service Description'),
(45, 'Cash Plus Personal Loan', 3, 'Service Description'),
(46, 'CIMB Preferred Current Account', 3, 'Service Description'),
(48, 'Foreign Currency Fixed Deposit', 3, 'Service Description'),
(49, 'Private Retirement Scheme', 3, 'Service Description'),
(50, 'Home Loan', 3, 'Service Description'),
(51, 'Basic Savings Account', 4, 'Service Description'),
(52, 'Personal Loan', 4, 'Service Description'),
(53, 'Motor Loan', 4, 'Service Description'),
(54, 'Education Saver', 4, 'Service Description'),
(55, 'Platinum Business Credit Card', 4, 'Service Description'),
(56, 'Basic Savings Account', 5, 'Service Description'),
(57, 'Home Loan', 5, 'Service Description'),
(58, 'Vehicle Financing', 5, 'Service Description'),
(59, 'PB Quantum Credit Card', 5, 'Service Description'),
(60, 'Private Retirement Scheme', 5, 'Service Description'),
(61, 'MySave Account', 2, 'Service Description'),
(62, 'Personal Financing', 2, 'Service Description'),
(64, 'SME Business Loan', 2, 'Service Description'),
(65, 'Hire Purchase', 2, 'Service Description'),
(66, 'RHB PREMIER VISA INFINITE CREDIT CARD', 2, 'Service Description'),
(69, 'My service', 3, 'Description of this service'),
(71, 'new service', 3, 'lsdklfklsdsdfjfsdfjkbsdjfk'),
(72, 'AAA', 3, 'BBB\r\n\r\neklmwelkm\r\n\r\nwekkrlwe');

-- --------------------------------------------------------

--
-- Table structure for table `service_data_type`
--

CREATE TABLE IF NOT EXISTS `service_data_type` (
  `serviceID` int(10) NOT NULL,
  `dataTypeID` int(10) NOT NULL,
  `required` tinyint(4) NOT NULL,
  PRIMARY KEY (`serviceID`,`dataTypeID`),
  KEY `serviceNo` (`serviceID`),
  KEY `dataTypeNo` (`dataTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_data_type`
--

INSERT INTO `service_data_type` (`serviceID`, `dataTypeID`, `required`) VALUES
(40, 1, 0),
(40, 2, 0),
(40, 3, 0),
(40, 4, 0),
(40, 5, 0),
(40, 9, 0),
(40, 15, 0),
(40, 19, 0),
(40, 20, 0),
(40, 21, 0),
(40, 22, 0),
(40, 23, 0),
(40, 25, 0),
(40, 26, 0),
(40, 27, 0),
(40, 30, 0),
(40, 31, 0),
(41, 1, 0),
(41, 2, 0),
(41, 4, 0),
(41, 5, 0),
(41, 9, 0),
(41, 15, 0),
(41, 19, 0),
(41, 20, 0),
(41, 21, 0),
(41, 25, 0),
(41, 26, 0),
(41, 27, 0),
(41, 34, 0),
(41, 35, 0),
(41, 36, 0),
(42, 1, 0),
(42, 2, 0),
(42, 4, 0),
(42, 5, 0),
(42, 19, 0),
(42, 21, 0),
(42, 22, 0),
(42, 25, 0),
(42, 26, 0),
(42, 27, 0),
(42, 37, 0),
(43, 1, 0),
(43, 2, 0),
(43, 3, 0),
(43, 4, 0),
(43, 5, 0),
(43, 9, 0),
(43, 15, 0),
(43, 19, 0),
(43, 20, 0),
(43, 21, 0),
(43, 22, 0),
(43, 23, 0),
(43, 25, 0),
(43, 26, 0),
(43, 27, 0),
(43, 37, 0),
(43, 38, 0),
(43, 39, 0),
(44, 1, 0),
(44, 2, 0),
(44, 4, 0),
(44, 5, 0),
(44, 9, 0),
(44, 15, 0),
(44, 19, 0),
(44, 20, 0),
(44, 21, 0),
(44, 22, 0),
(44, 23, 0),
(44, 25, 0),
(44, 26, 0),
(44, 27, 0),
(44, 40, 0),
(45, 1, 0),
(45, 2, 0),
(45, 3, 0),
(45, 4, 0),
(45, 5, 0),
(45, 9, 0),
(45, 15, 0),
(45, 19, 0),
(45, 20, 0),
(45, 21, 0),
(45, 22, 0),
(45, 23, 0),
(45, 25, 0),
(45, 26, 0),
(45, 27, 0),
(45, 30, 0),
(45, 31, 0),
(46, 1, 0),
(46, 2, 0),
(46, 3, 0),
(46, 4, 0),
(46, 5, 0),
(46, 9, 0),
(46, 15, 0),
(46, 19, 0),
(46, 20, 0),
(46, 21, 0),
(46, 22, 0),
(46, 23, 0),
(46, 40, 0),
(48, 1, 0),
(48, 2, 0),
(48, 3, 0),
(48, 4, 0),
(48, 5, 0),
(48, 9, 0),
(48, 15, 0),
(48, 19, 0),
(48, 20, 0),
(48, 21, 0),
(48, 40, 0),
(48, 41, 0),
(49, 1, 0),
(49, 2, 0),
(49, 3, 0),
(49, 4, 0),
(49, 5, 0),
(49, 9, 0),
(49, 15, 0),
(49, 19, 0),
(49, 20, 0),
(49, 21, 0),
(49, 22, 0),
(49, 25, 0),
(49, 26, 0),
(49, 27, 0),
(49, 37, 0),
(50, 1, 0),
(50, 2, 0),
(50, 3, 0),
(50, 4, 0),
(50, 5, 0),
(50, 9, 0),
(50, 15, 0),
(50, 19, 0),
(50, 20, 0),
(50, 21, 0),
(50, 22, 0),
(50, 25, 0),
(50, 26, 0),
(50, 27, 0),
(50, 30, 0),
(50, 36, 0),
(50, 37, 0),
(50, 38, 0),
(51, 1, 0),
(51, 2, 0),
(51, 3, 0),
(51, 4, 0),
(51, 5, 0),
(51, 9, 0),
(51, 15, 0),
(51, 19, 0),
(51, 20, 0),
(51, 21, 0),
(51, 22, 0),
(51, 40, 0),
(52, 1, 0),
(52, 2, 0),
(52, 3, 0),
(52, 4, 0),
(52, 5, 0),
(52, 9, 0),
(52, 15, 0),
(52, 19, 0),
(52, 20, 0),
(52, 21, 0),
(52, 22, 0),
(52, 25, 0),
(52, 26, 0),
(52, 27, 0),
(52, 31, 0),
(52, 37, 0),
(52, 40, 0),
(52, 42, 0),
(53, 1, 0),
(53, 2, 0),
(53, 3, 0),
(53, 4, 0),
(53, 5, 0),
(53, 9, 0),
(53, 15, 0),
(53, 19, 0),
(53, 20, 0),
(53, 21, 0),
(53, 22, 0),
(53, 25, 0),
(53, 26, 0),
(53, 27, 0),
(53, 31, 0),
(53, 34, 0),
(53, 35, 0),
(53, 36, 0),
(53, 37, 0),
(53, 40, 0),
(53, 42, 0),
(54, 1, 0),
(54, 2, 0),
(54, 3, 0),
(54, 4, 0),
(54, 5, 0),
(54, 9, 0),
(54, 15, 0),
(54, 19, 0),
(54, 20, 0),
(54, 21, 0),
(54, 22, 0),
(54, 23, 0),
(55, 1, 0),
(55, 2, 0),
(55, 3, 0),
(55, 4, 0),
(55, 5, 0),
(55, 9, 0),
(55, 15, 0),
(55, 19, 0),
(55, 20, 0),
(55, 21, 0),
(55, 22, 0),
(55, 23, 0),
(55, 25, 0),
(55, 26, 0),
(55, 27, 0),
(55, 37, 0),
(55, 38, 0),
(56, 1, 0),
(56, 2, 0),
(56, 3, 0),
(56, 4, 0),
(56, 5, 0),
(56, 9, 0),
(56, 15, 0),
(56, 19, 0),
(56, 20, 0),
(56, 21, 0),
(56, 22, 0),
(56, 40, 0),
(57, 1, 0),
(57, 2, 0),
(57, 3, 0),
(57, 4, 0),
(57, 5, 0),
(57, 9, 0),
(57, 15, 0),
(57, 19, 0),
(57, 20, 0),
(57, 21, 0),
(57, 22, 0),
(57, 25, 0),
(57, 26, 0),
(57, 27, 0),
(57, 30, 0),
(57, 31, 0),
(57, 37, 0),
(58, 1, 0),
(58, 2, 0),
(58, 3, 0),
(58, 4, 0),
(58, 5, 0),
(58, 9, 0),
(58, 15, 0),
(58, 19, 0),
(58, 20, 0),
(58, 21, 0),
(58, 22, 0),
(58, 25, 0),
(58, 26, 0),
(58, 27, 0),
(58, 34, 0),
(58, 35, 0),
(58, 36, 0),
(58, 37, 0),
(58, 38, 0),
(58, 42, 0),
(59, 1, 0),
(59, 2, 0),
(59, 3, 0),
(59, 4, 0),
(59, 5, 0),
(59, 9, 0),
(59, 15, 0),
(59, 19, 0),
(59, 20, 0),
(59, 21, 0),
(59, 22, 0),
(59, 23, 0),
(59, 25, 0),
(59, 26, 0),
(59, 27, 0),
(59, 37, 0),
(59, 38, 0),
(60, 1, 0),
(60, 2, 0),
(60, 3, 0),
(60, 4, 0),
(60, 5, 0),
(60, 9, 0),
(60, 15, 0),
(60, 19, 0),
(60, 20, 0),
(60, 21, 0),
(60, 22, 0),
(60, 25, 0),
(60, 26, 0),
(60, 27, 0),
(60, 38, 0),
(61, 1, 0),
(61, 2, 0),
(61, 3, 0),
(61, 4, 0),
(61, 5, 0),
(61, 9, 0),
(61, 15, 0),
(61, 19, 0),
(61, 20, 0),
(61, 21, 0),
(61, 22, 0),
(61, 40, 0),
(62, 1, 0),
(62, 2, 0),
(62, 3, 0),
(62, 4, 0),
(62, 5, 0),
(62, 9, 0),
(62, 15, 0),
(62, 19, 0),
(62, 20, 0),
(62, 21, 0),
(62, 25, 0),
(62, 26, 0),
(62, 27, 0),
(62, 30, 0),
(62, 31, 0),
(62, 37, 0),
(64, 1, 0),
(64, 2, 0),
(64, 3, 0),
(64, 4, 0),
(64, 5, 0),
(64, 9, 0),
(64, 15, 0),
(64, 19, 0),
(64, 20, 0),
(64, 21, 0),
(64, 30, 0),
(64, 31, 0),
(64, 43, 0),
(64, 44, 0),
(64, 45, 0),
(64, 46, 0),
(64, 47, 0),
(65, 1, 0),
(65, 2, 0),
(65, 3, 0),
(65, 4, 0),
(65, 5, 0),
(65, 9, 0),
(65, 15, 0),
(65, 19, 0),
(65, 20, 0),
(65, 21, 0),
(65, 25, 0),
(65, 26, 0),
(65, 27, 0),
(65, 30, 0),
(65, 34, 0),
(65, 35, 0),
(65, 36, 0),
(65, 37, 0),
(65, 38, 0),
(66, 1, 0),
(66, 2, 0),
(66, 3, 0),
(66, 4, 0),
(66, 5, 0),
(66, 9, 0),
(66, 15, 0),
(66, 19, 0),
(66, 20, 0),
(66, 21, 0),
(66, 25, 0),
(66, 26, 0),
(66, 27, 0),
(66, 37, 0),
(66, 38, 0),
(69, 1, 0),
(69, 2, 0),
(69, 3, 0),
(69, 4, 0),
(69, 5, 0),
(69, 16, 0),
(69, 17, 0),
(71, 1, 0),
(72, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_hardcopy`
--

CREATE TABLE IF NOT EXISTS `service_hardcopy` (
  `serviceID` int(11) NOT NULL,
  `hardcopyID` int(11) NOT NULL,
  PRIMARY KEY (`serviceID`,`hardcopyID`),
  KEY `hardcopyID` (`hardcopyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_hardcopy`
--

INSERT INTO `service_hardcopy` (`serviceID`, `hardcopyID`) VALUES
(69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `bankID` int(11) NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `branchID` (`branchID`) USING BTREE,
  KEY `bankID` (`bankID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`username`, `password`, `fullname`, `bankID`, `branchID`, `type`) VALUES
('aaron', '111111', 'Aaron', 1, 10, 'Bank Teller'),
('ackerly', '111111', 'Ackerly', 1, 1, 'Bank Teller'),
('addison', '111111', 'Addison', 1, 2, 'Bank Teller'),
('amber', '111111', 'Amber', 2, 22, 'Bank Teller'),
('annie', '111111', 'Annie', 3, 11, 'Bank Teller'),
('barner', '111111', 'Barner', 5, 39, 'Bank Teller'),
('benjamin', '111111', 'Benjamin', 4, 44, 'Bank Teller'),
('carine', '111111', 'Carine', 1, 6, 'Bank Teller'),
('chris', '111111', 'Chris', 5, 37, 'Bank Teller'),
('cimb', 'cimb', 'Jocelyn', 3, NULL, 'Superadmin'),
('douglas', '111111', 'Douglas', 1, 9, 'Bank Teller'),
('eadric', '111111', 'Eadric', 1, 3, 'Bank Teller'),
('eden', '111111', 'Eden', 2, 28, 'Bank Teller'),
('edison', '111111', 'Edison', 5, 31, 'Bank Teller'),
('hershey', '111111', 'Hershey', 2, 26, 'Bank Teller'),
('hongleong', 'hongleong', 'Laiba Nadeem', 4, NULL, 'Superadmin'),
('ikrom', 'ikrom123', 'Ikrom', 3, 2, 'Admin'),
('jack', '111111', 'Jack', 3, 16, 'Bank Teller'),
('jackie', '111111', 'Jackie', 2, 25, 'Bank Teller'),
('jaclyn', '111111', 'Jaclyn', 3, 17, 'Bank Teller'),
('jasmine', '111111', 'Jasmine', 1, 7, 'Bank Teller'),
('jay', '111111', 'Jay', 2, 24, 'Bank Teller'),
('jean', '111111', 'Jean', 3, 12, 'Bank Teller'),
('jeffrey', '111111', 'Jeffrey', 1, 5, 'Bank Teller'),
('jessica', '111111', 'Jessica', 3, 20, 'Bank Teller'),
('joan', '111111', 'Joan', 2, 29, 'Bank Teller'),
('joseph', '111111', 'Joseph', 2, 23, 'Bank Teller'),
('kelvin', '111111', 'Kelvin', 4, 43, 'Bank Teller'),
('krystal', '111111', 'Krystal', 3, 19, 'Bank Teller'),
('loki', '111111', 'Loki', 5, 36, 'Bank Teller'),
('man', '111111', 'Umid Mirkomilov', 3, 10, 'Bank Teller'),
('maybank', 'maybank', 'Harry ', 1, NULL, 'Superadmin'),
('medelyn', '111111', 'Medelyn', 3, 18, 'Bank Teller'),
('michael', '111111', 'Michael', 3, 14, 'Bank Teller'),
('michelle', '111111', 'Michelle', 3, 15, 'Bank Teller'),
('nicholas', '111111', 'Nicholas', 4, 46, 'Bank Teller'),
('phillip', '111111', 'Phillip', 5, 38, 'Bank Teller'),
('publicbank', 'publicbank', 'Shu Min', 5, NULL, 'Superadmin'),
('quin', '111111', 'Quin', 5, 32, 'Bank Teller'),
('rachel', '111111', 'Rachel', 5, 34, 'Bank Teller'),
('raymond', '111111', 'Raymond', 1, 4, 'Bank Teller'),
('rhb', 'password', 'Umar', 2, NULL, 'Superadmin'),
('robert', '111111', 'Robert', 5, 40, 'Bank Teller'),
('ronaldo', '111111', 'Ronaldo', 5, 9, 'Admin'),
('rousette', '111111', 'Rousette', 4, 42, 'Bank Teller'),
('sabrina', '111111', 'Sabrina', 4, 49, 'Bank Teller'),
('samantha', '111111', 'Samantha', 4, 50, 'Bank Teller'),
('samuel', '111111', 'Samuel', 3, 13, 'Bank Teller'),
('sean', '111111', 'Sean', 4, 47, 'Bank Teller'),
('thomas', '111111', 'Thomas', 4, 45, 'Bank Teller'),
('thor', '111111', 'Thor', 4, 41, 'Bank Teller'),
('tiffany', '111111', 'Tiffany', 2, 21, 'Bank Teller'),
('timothy', '111111', 'Timothy', 4, 48, 'Bank Teller'),
('tony', '111111', 'Tony', 5, 35, 'Bank Teller'),
('umid', 'umid123', 'Umid', 2, 5, 'Admin'),
('veron', '111111', 'Veron', 2, 27, 'Bank Teller'),
('vivien', '111111', 'Vivien', 1, 8, 'Bank Teller'),
('willie', '111111', 'Willie', 2, 30, 'Bank Teller'),
('yevon', '111111', 'Yevon', 5, 33, 'Bank Teller');

-- --------------------------------------------------------

--
-- Table structure for table `teller_time_slots`
--

CREATE TABLE IF NOT EXISTS `teller_time_slots` (
  `tellerID` varchar(40) NOT NULL,
  `timeID` int(11) NOT NULL,
  PRIMARY KEY (`tellerID`,`timeID`),
  KEY `tellerID` (`tellerID`),
  KEY `timeID` (`timeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teller_time_slots`
--

INSERT INTO `teller_time_slots` (`tellerID`, `timeID`) VALUES
('man', 3);

-- --------------------------------------------------------

--
-- Table structure for table `time_intervals`
--

CREATE TABLE IF NOT EXISTS `time_intervals` (
  `interval_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_interval` varchar(20) NOT NULL,
  PRIMARY KEY (`interval_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `time_intervals`
--

INSERT INTO `time_intervals` (`interval_id`, `time_interval`) VALUES
(1, '09:00-09:30'),
(2, '09:30-10:00'),
(3, '10:00-10:30'),
(4, '10:30-11:00'),
(5, '11:00-11:30'),
(6, '11:30-12:00'),
(7, '12:00-12:30'),
(8, '12:30-13:00'),
(9, '13:00-13:30'),
(10, '13:30-14:00'),
(11, '14:00-14:30'),
(12, '14:30-15:00'),
(13, '15:00-15:30'),
(14, '15:30-16:00');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE IF NOT EXISTS `time_slots` (
  `timeID` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`timeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`timeID`, `day`, `time`) VALUES
(1, 'Monday', '09:00-12:00'),
(2, 'Monday', '12:00-16:00'),
(3, 'Tuesday', '09:00-12:00'),
(4, 'Tuesday', '12:00-16:00'),
(5, 'Wednesday', '09:00-12:00'),
(6, 'Wednesday', '12:00-16:00'),
(7, 'Thursday', '09:00-12:00'),
(8, 'Thursday', '12:00-16:00'),
(9, 'Friday', '09:00-12:00'),
(10, 'Friday', '12:00-16:00'),
(11, 'Saturday', '09:00-12:00'),
(12, 'Saturday', '12:00-16:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`staffID`) REFERENCES `staff` (`username`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_5` FOREIGN KEY (`interval_id`) REFERENCES `time_intervals` (`interval_id`);

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`bankID`) REFERENCES `bank` (`bankID`);

--
-- Constraints for table `filleddata`
--
ALTER TABLE `filleddata`
  ADD CONSTRAINT `filleddata_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointment` (`appointmentID`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`bankID`) REFERENCES `bank` (`bankID`);

--
-- Constraints for table `service_data_type`
--
ALTER TABLE `service_data_type`
  ADD CONSTRAINT `service_data_type_ibfk_1` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_data_type_ibfk_2` FOREIGN KEY (`dataTypeID`) REFERENCES `data_type` (`dataTypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_hardcopy`
--
ALTER TABLE `service_hardcopy`
  ADD CONSTRAINT `service_hardcopy_ibfk_1` FOREIGN KEY (`hardcopyID`) REFERENCES `hardcopy` (`hardcopyID`),
  ADD CONSTRAINT `service_hardcopy_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`bankID`) REFERENCES `bank` (`bankID`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`);

--
-- Constraints for table `teller_time_slots`
--
ALTER TABLE `teller_time_slots`
  ADD CONSTRAINT `teller_time_slots_ibfk_1` FOREIGN KEY (`timeID`) REFERENCES `time_slots` (`timeID`),
  ADD CONSTRAINT `teller_time_slots_ibfk_2` FOREIGN KEY (`tellerID`) REFERENCES `staff` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
