-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2018 at 02:51 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aider`
--

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE IF NOT EXISTS `provider` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobileNo` int(20) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`username`, `password`, `fullname`, `mobileNo`) VALUES
('clary', 'clary', 'Clary Fairchild', 1222),
('jace', 'e2fc714c4727ee9395f324cd2e7f331f', 'Jace Herondale', 123455),
('jane', 'e99a18c428cb38d5f260853678922e03', 'Jane', 1234565666),
('jem', '08f8e0260c64418510cefb2b06eee5cd', 'Jem', 0),
('jjj', 'f27f6f1c7c5cbf4e3e192e0a47b85300', 'Jem', 12344566),
('kaz', 'kaz123', 'Kaz Brekker', 111111),
('laiba', '900150983cd24fb0d6963f7d28e17f72', 'Laiba', 123777790),
('nina', 'f2ceea1536ac1b8fed1a167a9c8bf04d', 'Nina Zenik', 111);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `reviewID` int(10) NOT NULL AUTO_INCREMENT,
  `service` int(100) NOT NULL,
  `reviewDate` date NOT NULL,
  `rating` int(10) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `senior` varchar(50) NOT NULL,
  PRIMARY KEY (`reviewID`),
  UNIQUE KEY `reviewID` (`reviewID`),
  KEY `service` (`service`),
  KEY `senior` (`senior`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `service`, `reviewDate`, `rating`, `comments`, `senior`) VALUES
(15, 101, '2018-11-15', 2, 'yuyuyu', 'tessa'),
(16, 101, '2018-11-15', 2, 'yuyuyu', 'tessa'),
(17, 101, '2018-11-23', 3, 'ghgjhgjh', 'tessa'),
(18, 101, '2018-11-23', 3, 'ghgjhgjh', 'tessa'),
(19, 101, '2018-11-29', 2, 'jkjk', 'tessa'),
(20, 101, '2018-11-29', 2, 'jkjk', 'tessa'),
(21, 101, '2018-11-22', 4, 'jkhjlhkjhjkhl', 'tessa');

-- --------------------------------------------------------

--
-- Table structure for table `senior`
--

CREATE TABLE IF NOT EXISTS `senior` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobileNo` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `senior`
--

INSERT INTO `senior` (`username`, `password`, `fullname`, `mobileNo`, `address`) VALUES
('ahmed786', '96e79218965eb72c92a549dd5a330112', 'Ahmed', 123456789, 'jalan Dungun'),
('clary', '900150983cd24fb0d6963f7d28e17f72', 'Clary Fray', 355443388, 'rrrrrrr'),
('tessa', '81f2190577663a61c0a327e2753e6307', 'Tessa Gray', 12345667, 'KL'),
('will', 'e99a18c428cb38d5f260853678922e03', 'Willam Herondale', 2147483647, 'KL');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `serviceCode` int(100) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(50) NOT NULL,
  `serviceType` varchar(50) NOT NULL,
  `serviceDesc` varchar(100) NOT NULL,
  `provider` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceCode`),
  UNIQUE KEY `serviceID` (`serviceCode`),
  UNIQUE KEY `serviceID_2` (`serviceCode`),
  KEY `provider` (`provider`),
  KEY `serviceType` (`serviceType`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceCode`, `serviceName`, `serviceType`, `serviceDesc`, `provider`) VALUES
(101, 'Shop grocery', 'shopping', 'shop', 'nina'),
(102, 'Home Cleaning', 'cleaning', 'clean home', 'nina');

-- --------------------------------------------------------

--
-- Table structure for table `servicerequest`
--

CREATE TABLE IF NOT EXISTS `servicerequest` (
  `requestID` int(100) NOT NULL AUTO_INCREMENT,
  `requiredDate` date NOT NULL,
  `requiredTime` time NOT NULL,
  `notes` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `senior` varchar(50) NOT NULL,
  `service` int(100) NOT NULL,
  PRIMARY KEY (`requestID`),
  UNIQUE KEY `requestID` (`requestID`),
  KEY `senior` (`senior`),
  KEY `senior_2` (`senior`),
  KEY `serviceID` (`service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`serviceCode`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`senior`) REFERENCES `senior` (`username`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`provider`) REFERENCES `provider` (`username`);

--
-- Constraints for table `servicerequest`
--
ALTER TABLE `servicerequest`
  ADD CONSTRAINT `servicerequest_ibfk_1` FOREIGN KEY (`senior`) REFERENCES `senior` (`username`),
  ADD CONSTRAINT `servicerequest_ibfk_2` FOREIGN KEY (`service`) REFERENCES `service` (`serviceCode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
