-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2019 at 08:33 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feed` varchar(300) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `custname` varchar(20) NOT NULL,
  `phonno` bigint(12) NOT NULL,
  `addr` varchar(50) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `feed`, `comment`, `custname`, `phonno`, `addr`) VALUES
(14, 'Highly Satisfied', 'very good', 'taher ali', 919630525318, 'C-1103,ira housing society,undri\r\npune');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

DROP TABLE IF EXISTS `tbl_courier`;
CREATE TABLE IF NOT EXISTS `tbl_courier` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `mode` varchar(20) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `book_date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `s_add`, `rev_name`, `r_phone`, `r_add`, `type`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `mode`, `pick_date`, `pick_time`, `status`, `comments`, `book_date`) VALUES
(12, 'WSCMC5A9', 'anuj', '968557411', 'pune', 'gauri', '8644648751', 'banglore', 'Parcel', 5, '55555', 1, 'ToPay', 5000, 'Air', '14/11/2019', '4 pm', 'Delayed', 'fragile', '2019-11-02'),
(11, 'DXRHGU5B', 'sachin', '787844996', 'delhi', 'manish', '588996633', 'godda', 'Sentiments', 0.5, '98745', 1, 'Paid', 555, 'Air', '06/11/2019', '4 pm', 'In Transit', 'asap', '2019-11-02'),
(9, 'CMHTL36D', 'Taher', '7070128799', 'pune', 'ritu', '8804236219', 'mumbai', 'Parcel', 1.25, '7846662', 1, 'ToPay', 123, 'Air', '02/11/2019', '4 pm', 'Delivered', 'may be late due to flight delays.', '2019-11-02'),
(10, 'Z1UHRT53', 'sagar', '9693665484', 'deoghar', 'chaman', '9865669854', 'sitamarhi', 'Parcel', 2, '789456', 2, 'Paid', 999, 'Road', '05/11/2019', '4 pm', 'In Transit', 'asap', '2019-11-02'),
(7, 'V6GMNB47', 'Taher', '09630525318', 'C-1103,ira housing society,undri\r\npune', 'Swapneel', '09630525314', '101,new complex\r\nFreeganj Road', 'Documents', 1, '7846662', 44, 'Paid', 555, 'Air', '24/10/2019', '4 pm', 'Onhold', 'qqqq', '2019-10-31'),
(13, 'Y80VKTBO', 'atul', '4548925155', 'delhi', 'aman', '542241431252', 'patna', 'Documents', 2, '11111', 2, 'TBB', 560, 'Train', '12/11/2019', '7pm', 'In Transit', 'asap', '2019-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_officers`
--

DROP TABLE IF EXISTS `tbl_courier_officers`;
CREATE TABLE IF NOT EXISTS `tbl_courier_officers` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `officer_name` varchar(40) NOT NULL,
  `off_pwd` varchar(40) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` bigint(12) NOT NULL,
  `office` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier_officers`
--

INSERT INTO `tbl_courier_officers` (`cid`, `officer_name`, `off_pwd`, `address`, `email`, `ph_no`, `office`, `reg_date`) VALUES
(1, 'Taher', 'taher', '101,new complex,freeganj road,ratlam(M.p)', 'taher@gmail.com', 9890989989, 'Fast Courier - Jalgaon', '2011-01-30 09:25:21'),
(2, 'ritu verma', 'admin', '11, bhaguday nagar', 'ritu@gmail.com', 9854254125, 'Fast Courier - Aurangabad', '2011-01-30 09:40:42'),
(3, 'swapneel', '12345', 'delhi', 'admin@gmail.com', 1022541288, 'Fast Courier - Pune', '2019-10-11 16:25:38'),
(4, 'Milind', 'admin', 'C-1103,ira housing society,undri\r\npune', 'admin@gmail.com', 9630525318, 'Fast Courier - Jalgaon', '2019-10-11 16:27:33'),
(6, 'vivek singh', '135465', 'mumbai', 'vivek@gmail.com', 7070128799, 'Fast Courier - Jalgaon', '2019-11-02 01:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_track`
--

DROP TABLE IF EXISTS `tbl_courier_track`;
CREATE TABLE IF NOT EXISTS `tbl_courier_track` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `bk_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier_track`
--

INSERT INTO `tbl_courier_track` (`id`, `cid`, `cons_no`, `current_city`, `status`, `comments`, `bk_time`) VALUES
(6, 12, 'WSCMC5A9', 'Fast Courier - Jalgaon', 'Delayed', '', '2019-11-02 01:57:41'),
(7, 7, 'V6GMNB47', 'Fast Courier - Jalgaon', 'Onhold', 'Sorry for the inconvinince.', '2019-11-02 01:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offices`
--

DROP TABLE IF EXISTS `tbl_offices`;
CREATE TABLE IF NOT EXISTS `tbl_offices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `off_name` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `city` varchar(100) NOT NULL,
  `ph_no` varchar(20) NOT NULL,
  `office_time` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_offices`
--

INSERT INTO `tbl_offices` (`id`, `off_name`, `address`, `city`, `ph_no`, `office_time`, `contact_person`) VALUES
(1, 'Fast Courier - Jalgaon', '290, shani peth, jalgaon', 'Jalgaon', '0257-25125', '10.00 am - 9.00 pm', 'Ritu Verma'),
(2, 'Fast Courier - Aurangabad', '20/12, sector 12, bhavani peth', 'Aurangabad', '0245-858521', '10.00 am - 9.00 pm', 'Taher Ali'),
(3, 'Fast Courier - Pune', '230, Fashion Street', 'pune', '020-25125', '10.00 am - 9.00 pm', 'Milind ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
