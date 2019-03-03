-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2019 at 08:58 AM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garciapremiumcoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountid` int(15) NOT NULL,
  `username` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','Sub-admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`idnumber`, `accountid`, `username`, `password`, `user_type`, `employeeid`, `created`, `updated`, `deleted`) VALUES
(1, 1, 'admin', 'admin', 'Admin', 'AD01', '2019-02-28 23:12:22', '2019-02-28 23:12:22', NULL),
(2, 2, 'subadmin', 'subadmin', 'Sub-admin', 'SA01', '2019-03-01 00:33:18', '2019-03-01 00:33:18', NULL),
(3, 2, 'subadmin2', 'subadmin2', 'Sub-admin', 'SA02', '2019-03-01 00:40:21', '2019-03-01 00:40:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `branchid` int(15) NOT NULL,
  `branch_address` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`idnumber`, `branchid`, `branch_address`) VALUES
(1, 1, 'Public Market Baguio City'),
(2, 2, 'Porta Vaga Session Road Baguio City');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deliveryid` int(15) UNSIGNED NOT NULL,
  `delivery_transaction` int(15) DEFAULT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`idnumber`, `deliveryid`, `delivery_transaction`, `productid`, `quantity`, `created`, `updated`) VALUES
(1, 1, 1, 1, 130.00, '2019-03-01 00:33:33', '2019-03-01 00:33:33'),
(2, 2, 1, 2, 500.00, '2019-03-01 00:34:03', '2019-03-01 00:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2018-12-31 23:00:00',
  `update` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  `branchid` int(15) NOT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `contact_number_UNIQUE` (`contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`idnumber`, `employeeid`, `firstname`, `middlename`, `lastname`, `contact_number`, `email`, `created_at`, `update`, `deleted`, `branchid`) VALUES
(1, 'AD01', 'Eli', 'Angel', 'Garcia', '0123456', 'garcia@gmail.com', '2019-03-01 05:06:08', '2019-03-01 05:06:08', NULL, 1),
(2, 'SA01', 'Steven', 'B', 'Mangati', '01234567', 'steven@gmail.com', '2019-03-01 06:55:33', '2019-03-01 06:55:33', NULL, 2),
(3, 'SA02', 'Michael', 'V', 'Pinto', '0917000000', 'michael@gmail.com', '2019-03-01 07:01:31', '2019-03-01 07:01:31', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orderid` int(15) NOT NULL,
  `supplierid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `delivery_transaction` int(15) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idnumber`, `orderid`, `supplierid`, `productid`, `quantity`, `delivery_transaction`, `created`, `updated`) VALUES
(1, 1, 3, 2, 300.00, 1, '2019-03-01 00:03:05', '2019-03-01 00:03:05'),
(2, 1, 3, 1, 600.00, 1, '2019-03-01 00:04:20', '2019-03-01 00:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productid` int(15) DEFAULT NULL,
  `name` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` blob,
  `description` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(10,2) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT '2019-02-28 23:00:00',
  `date_deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idnumber`, `productid`, `name`, `image`, `description`, `quantity`, `date_added`, `date_deleted`) VALUES
(1, 1, 'Benguet', NULL, NULL, 100.00, '2019-04-01 01:39:57', NULL),
(2, 2, 'Barako', NULL, NULL, 160.00, '2019-04-01 01:40:01', NULL),
(3, 3, 'Premium Barako Excesla', NULL, NULL, 120.65, '2019-03-03 07:25:00', NULL),
(4, 4, 'Sagada Dark', NULL, NULL, 50.23, '2019-03-03 07:26:00', NULL),
(5, 5, 'Sagada Medium', NULL, NULL, 223.33, '2019-03-03 07:27:21', NULL),
(6, 6, 'Arabica Medium Blend', NULL, NULL, 80.50, '2019-03-03 07:28:02', NULL),
(7, 7, 'House Blend Arabica', NULL, NULL, 133.62, '2019-03-03 07:33:41', NULL),
(8, 8, 'Italian Espresso', NULL, NULL, 9.63, '2019-03-03 07:34:01', NULL),
(9, 9, 'Kalinga Medium', NULL, NULL, 11.80, '2019-03-03 07:34:49', NULL),
(10, 10, 'Kalinga Dark', NULL, NULL, 27.00, '2019-03-03 07:35:03', NULL),
(11, 11, 'Hazelnut', NULL, NULL, 23.45, '2019-03-03 07:36:22', NULL),
(12, 12, 'Mocha', NULL, NULL, 0.72, '2019-03-03 07:37:12', NULL),
(13, 13, 'Hazelnut-Vanilla', NULL, NULL, 7.25, '2019-03-03 07:38:03', NULL),
(14, 14, 'Vanilla', NULL, NULL, 8.62, '2019-03-03 07:38:42', NULL),
(15, 15, 'Butterscotch', NULL, NULL, 200.50, '2019-03-03 07:39:10', NULL),
(16, 16, 'Macadamia', NULL, NULL, 2.00, '2019-03-03 07:39:49', NULL),
(17, 17, 'Cinnamon Nut', NULL, NULL, 3.25, '2019-03-03 07:40:00', NULL),
(18, 18, 'Irish Cream', NULL, NULL, 7.25, '2019-03-03 07:40:21', NULL),
(19, 19, 'Caramel', NULL, NULL, 200.50, '2019-03-03 07:41:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reconciliation`
--

DROP TABLE IF EXISTS `reconciliation`;
CREATE TABLE IF NOT EXISTS `reconciliation` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reconciliationid` int(15) NOT NULL,
  `employeeid` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` int(15) NOT NULL,
  `logical_count` double(10,2) NOT NULL,
  `physical_count` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reconciliation`
--

INSERT INTO `reconciliation` (`idnumber`, `reconciliationid`, `employeeid`, `productid`, `logical_count`, `physical_count`, `date`, `time`, `status`, `remarks`) VALUES
(1, 1, 'SA01', 1, 455.00, 456.00, '2019-03-01', '21:01:01', 'Not Match', 'Adjusted');

-- --------------------------------------------------------

--
-- Table structure for table `solditem`
--

DROP TABLE IF EXISTS `solditem`;
CREATE TABLE IF NOT EXISTS `solditem` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `solditemid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solditem`
--

INSERT INTO `solditem` (`idnumber`, `solditemid`, `productid`, `quantity`, `date`, `time`) VALUES
(1, 1, 2, 20.00, '2019-04-01', '09:33:03'),
(2, 1, 1, 10.00, '2019-04-01', '09:33:03'),
(3, 2, 1, 3.00, '2019-04-01', '09:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stockid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `stockin` double(10,2) NOT NULL,
  `stockout` double(10,2) NOT NULL,
  `branchid` int(15) NOT NULL,
  `created` timestamp NOT NULL,
  `updated` timestamp NOT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idnumber`, `stockid`, `productid`, `quantity`, `stockin`, `stockout`, `branchid`, `created`, `updated`, `deleted`) VALUES
(1, 1, 1, 456.00, 300.00, 55.00, 1, '2017-03-01 12:28:34', '2017-03-01 14:33:02', NULL),
(2, 1, 2, 621.00, 200.00, 69.00, 1, '2017-03-01 12:28:34', '2017-03-01 12:28:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `idnumber` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplierid` int(15) NOT NULL,
  `supplier_name` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_contact_person` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `supplierid_UNIQUE` (`supplierid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idnumber`, `supplierid`, `supplier_name`, `supplier_contact_person`, `contact_number`, `address`, `created`, `updated`, `deleted`) VALUES
(1, 1, 'Garcia\'s Farm', 'Eli', '012345', 'Kamog Sablan Baguio City', '2019-02-28 23:33:02', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
