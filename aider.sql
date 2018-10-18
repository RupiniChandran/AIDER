-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 04:26 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `service` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `rating` int(10) NOT NULL,
  `comments` varchar(100) NOT NULL,
  KEY `service` (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `serviceCode` varchar(10) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `serviceType` varchar(50) NOT NULL,
  `serviceDescription` varchar(100) NOT NULL,
  `provider` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceCode`),
  UNIQUE KEY `serviceID` (`serviceCode`),
  UNIQUE KEY `serviceID_2` (`serviceCode`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicerequest`
--

CREATE TABLE IF NOT EXISTS `servicerequest` (
  `requestID` varchar(10) NOT NULL,
  `requiredDate` date NOT NULL,
  `requiredTime` time NOT NULL,
  `notes` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `senior` varchar(50) NOT NULL,
  `service` varchar(10) NOT NULL,
  PRIMARY KEY (`requestID`),
  UNIQUE KEY `requestID` (`requestID`),
  KEY `senior` (`senior`),
  KEY `senior_2` (`senior`),
  KEY `serviceID` (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`serviceCode`);

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
