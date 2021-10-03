-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2021 at 04:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin', 'abc@gmail.com', 'admin', '0192023a7bbd73250516f069df18b500', '2021-03-29 09:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

DROP TABLE IF EXISTS `tblbookings`;
CREATE TABLE IF NOT EXISTS `tblbookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookingId` bigint(12) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `NumberOfMembers` int(11) DEFAULT NULL,
  `UserRemark` mediumtext,
  `AdminRemark` mediumtext,
  `UserCancelRemark` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `BookingStatus` varchar(100) DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `BookingId`, `UserId`, `EventId`, `NumberOfMembers`, `UserRemark`, `AdminRemark`, `UserCancelRemark`, `BookingDate`, `BookingStatus`, `LastUpdationDate`) VALUES
(3, 659452988, 1, 2, 4, 'Event booked successfully. Booking number is', 'Your booking is confirmed.', NULL, '2019-06-09 18:48:20', 'Confirmed', '2019-06-12 17:54:57'),
(4, 927630009, 2, 2, 5, 'This is sample text for testing.', 'Your booking is confirmed', NULL, '2019-06-14 14:34:56', 'Confirmed', '2019-06-14 14:54:43'),
(5, 313116173, 2, 5, 4, 'This is sample text for testing', 'Canclled', NULL, '2019-06-14 14:51:29', 'Cancelled', '2019-06-14 14:55:23'),
(6, 363749457, 3, 6, 4, 'Very excited. ', NULL, NULL, '2021-03-31 04:23:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryDescription` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryDescription`, `CreationDate`, `UpdationDate`, `IsActive`) VALUES
(2, 'Sports Party', 'Sports Party', '2019-01-07 18:30:11', '2019-06-12 17:49:19', '0'),
(3, 'Music Day', 'Music Day', '2019-01-07 18:30:30', NULL, '1'),
(4, 'Kitty Party', 'Kitty Party', '2019-06-12 17:49:03', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

DROP TABLE IF EXISTS `tblevents`;
CREATE TABLE IF NOT EXISTS `tblevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` char(10) DEFAULT NULL,
  `SponserId` char(10) DEFAULT NULL,
  `EventName` varchar(255) DEFAULT NULL,
  `EventDescription` mediumtext,
  `EventStartDate` date DEFAULT NULL,
  `EventEndDate` date DEFAULT NULL,
  `EventLocation` varchar(255) DEFAULT NULL,
  `EventImage` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsActive` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`id`, `CategoryId`, `SponserId`, `EventName`, `EventDescription`, `EventStartDate`, `EventEndDate`, `EventLocation`, `EventImage`, `PostingDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, '3', '1', 'Mosaic', 'Sample event', '2021-04-28', '2021-04-28', 'Nehu-Tura Campus', '030a598309176bacad1e877e9d2d13fa.jpg', '2019-02-27 18:05:24', '2021-03-29 16:26:15', 1),
(2, '2', '1', 'Cricket Match event', 'This is sample text for testing. This is sample text for testing.  This is sample text for testing.  This is sample text for testing.This is sample text for testing.This is sample text for testing.This is sample text for testing.This is sample text for testing.', '2021-06-15', '2021-06-30', 'NEHU-Tura Campus', '704b27084030f0e97ce3ce3e5953e9e5.jpg', '2019-04-18 09:10:09', '2021-03-29 16:16:03', 1),
(5, '4', '1', 'Kitty Pawri', 'sample event', '2021-06-16', '2021-06-30', 'nehu-Tura Campus', 'e6ddbaa40e957c007050197603a7048a.jpg', '2019-06-14 14:45:13', '2021-03-29 16:19:31', 1),
(6, '3', '1', 'Dj night', 'testEvent', '2022-06-01', '2022-06-30', 'Guwahati', '704b27084030f0e97ce3ce3e5953e9e5.jpg', '2019-06-14 14:50:16', '2021-03-29 16:22:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblgenralsettings`
--

DROP TABLE IF EXISTS `tblgenralsettings`;
CREATE TABLE IF NOT EXISTS `tblgenralsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SiteName` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  `footercontent` mediumtext,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgenralsettings`
--

INSERT INTO `tblgenralsettings` (`id`, `SiteName`, `PhoneNumber`, `EmailId`, `address`, `footercontent`, `LastUpdationDate`) VALUES
(1, 'EMS', 7979797979, 'abc@gmail.com', 'Nalbari\r\nAssam\r\nIN-781303', 'Copyright 2021 All Rights Reserved', '2021-03-30 16:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

DROP TABLE IF EXISTS `tblnews`;
CREATE TABLE IF NOT EXISTS `tblnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDetails` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `NewsTitle`, `NewsDetails`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 'prize won', 'nehu students won 5L worth prize from cycle race', '2021-03-29 10:01:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(255) DEFAULT NULL,
  `PageDetails` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageType`, `PageDetails`, `LastupdationDate`) VALUES
(1, 'aboutus', 'nothing to mention', '2021-03-30 16:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblsponsers`
--

DROP TABLE IF EXISTS `tblsponsers`;
CREATE TABLE IF NOT EXISTS `tblsponsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sponserName` varchar(255) DEFAULT NULL,
  `sponserLogo` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsponsers`
--

INSERT INTO `tblsponsers` (`id`, `sponserName`, `sponserLogo`, `postingDate`, `lastUpdationDate`) VALUES
(1, 'NEHU', '07dcddc510ecc06b8204538a2aaf67e9.png', '2019-02-04 18:05:06', '2021-03-29 10:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

DROP TABLE IF EXISTS `tblsubscriber`;
CREATE TABLE IF NOT EXISTS `tblsubscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(255) DEFAULT NULL,
  `Regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`id`, `UserEmail`, `Regdate`) VALUES
(2, 'risisarma000@gmail.com', '2021-03-30 16:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `Userid` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Emailid` varchar(255) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `UserGender` varchar(100) DEFAULT NULL,
  `UserPassword` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsActive` int(1) DEFAULT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Userid`, `FullName`, `UserName`, `Emailid`, `PhoneNumber`, `UserGender`, `UserPassword`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, 'Test user', 'test12', 'ak30@gmail.com', 1234567899, 'Male', '5c428d8875d2948607f3e3fe134d71b4', '2019-06-08 10:31:18', '2021-03-29 10:01:54', 0),
(2, 'rishi', 'test30', 'test@gmail.com', 1234567890, 'Male', 'f925916e2754e5e03f75dd58a5733251', '2019-06-14 14:34:01', '2021-03-29 10:13:31', 0),
(3, 'Cardano', 'ada', 'ada@cardano.com', 9898656569, 'Male', '2a8822a416a35ddcd411e548f2892d44', '2021-03-29 14:31:59', '2021-03-31 04:23:02', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
