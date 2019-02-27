-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2019 at 06:37 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garciaspremiumcoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `bean`
--

DROP TABLE IF EXISTS `bean`;
CREATE TABLE IF NOT EXISTS `bean` (
  `beanid` int(4) NOT NULL AUTO_INCREMENT,
  `beanname` varchar(50) NOT NULL,
  PRIMARY KEY (`beanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branchid` int(4) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(30) NOT NULL,
  `branchaddress` varchar(50) NOT NULL,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `deliveryid` int(4) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` timestamp(6) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `beanid` int(4) NOT NULL,
  `branchid` int(4) NOT NULL,
  `orderid` int(4) NOT NULL,
  `supplierid` int(4) NOT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employeeid` int(4) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `contactnumber` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(4) NOT NULL AUTO_INCREMENT,
  `quantity` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` timestamp(6) NOT NULL,
  `status` varchar(30) NOT NULL,
  `beanid` int(4) NOT NULL,
  `branchid` int(4) NOT NULL,
  `deliveryid` int(4) NOT NULL,
  `employeeid` int(4) NOT NULL,
  `solditemid` int(4) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `employeeid_idx` (`employeeid`),
  KEY `beanid_idx` (`beanid`),
  KEY `branchid_idx` (`branchid`),
  KEY `deliveryid_idx` (`deliveryid`),
  KEY `solditemid_idx` (`solditemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `solditem`
--

DROP TABLE IF EXISTS `solditem`;
CREATE TABLE IF NOT EXISTS `solditem` (
  `solditemid` int(4) NOT NULL AUTO_INCREMENT,
  `quantity` int(4) NOT NULL,
  `date` date NOT NULL,
  `time` timestamp(6) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `beanid` int(4) NOT NULL,
  `employeeid` int(4) NOT NULL,
  `orderid` int(4) NOT NULL,
  PRIMARY KEY (`solditemid`),
  KEY `employeeid_idx` (`employeeid`),
  KEY `beanid_idx` (`beanid`),
  KEY `orderid_idx` (`orderid`,`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`beanid`) REFERENCES `bean` (`beanid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`branchid`) REFERENCES `branch` (`branchid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`deliveryid`) REFERENCES `delivery` (`deliveryid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`solditemid`) REFERENCES `solditem` (`solditemid`) ON UPDATE CASCADE;

--
-- Constraints for table `solditem`
--
ALTER TABLE `solditem`
  ADD CONSTRAINT `solditem_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solditem_ibfk_2` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solditem_ibfk_3` FOREIGN KEY (`beanid`) REFERENCES `bean` (`beanid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
