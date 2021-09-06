-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 05:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitallibrery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` varchar(11) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_image` varchar(50) NOT NULL,
  `book_price` varchar(10) NOT NULL,
  `book_discription` text NOT NULL,
  `short_disc` varchar(150) NOT NULL,
  `book_bigimage` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `subcat_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `category_name`, `book_name`, `book_image`, `book_price`, `book_discription`, `short_disc`, `book_bigimage`, `publisher`, `subcat_name`) VALUES
('a11', 'Science', 'ac paper1', '10510470.jpg', '125', 'Bharat', 'Bharat', '10510470.jpg', 'Bharat', 'Computer'),
('Psy1', 'Home', 'HOme Sci1', 'cover.action.jpg', '200', 'Upword', 'Upwrod', 'cover.action.jpg', 'Upword', 'Economic');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `category_id` varchar(8) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_type` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`category_id`, `category_name`, `category_type`) VALUES
('art1', 'Arts', 'Arts'),
('mana1', 'Management', 'Managemen');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enquiry` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `qty` varchar(5) NOT NULL,
  `rate` varchar(5) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `book_id`, `qty`, `rate`, `total`) VALUES
(57, '11', 'a11', '1', '125', '125'),
(58, '12', 'a11', '1', '125', '125'),
(59, '12', 'Psy1', '1', '200', '200');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `orderid` int(10) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `pay_method` varchar(10) NOT NULL,
  `shipping_nm` varchar(30) NOT NULL,
  `shipping_ad` varchar(50) NOT NULL,
  `billing_nm` varchar(30) NOT NULL,
  `billing_ad` varchar(50) NOT NULL,
  `credit_name` varchar(30) NOT NULL,
  `credit_no` varchar(30) NOT NULL,
  `credit_date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`orderid`, `user_id`, `date`, `pay_method`, `shipping_nm`, `shipping_ad`, `billing_nm`, `billing_ad`, `credit_name`, `credit_no`, `credit_date`) VALUES
(11, 'r', '', 'credit', 'amreli', 'amreli', 'amreli', 'amreli', 'raviBhai', '1123456', '14/05/2018'),
(12, 'r', '', 'credit', '', '', '', '', '', '', 'dd/mm/yyyy');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`) VALUES
('12', 'Psycology'),
('16', 'Economic'),
('17', 'Business Math');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `comp_nm` varchar(30) DEFAULT NULL,
  `street_add` varchar(50) DEFAULT NULL,
  `post_code` varchar(8) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `tele_no` varchar(15) DEFAULT NULL,
  `fax_no` varchar(15) DEFAULT NULL,
  `news` char(1) DEFAULT NULL,
  `userid` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `sque` varchar(30) NOT NULL DEFAULT '',
  `sans` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`f_name`, `l_name`, `dob`, `e_mail`, `gender`, `comp_nm`, `street_add`, `post_code`, `city`, `state`, `country`, `tele_no`, `fax_no`, `news`, `userid`, `password`, `sque`, `sans`) VALUES
('p', 'p', '18/01/1987', 'HHH', 'male', 'HHH', 'HHH', '8888', 'JJJJ', 'LLL', 'Algeria', '9090', '9090', '1', 'p', 'p', 'P', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cart_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `book_discription` varchar(200) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `book_image` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viewcart`
--

INSERT INTO `viewcart` (`cart_id`, `user_id`, `book_id`, `qty`, `rate`, `book_discription`, `session_id`, `book_image`, `date`) VALUES
(58, 'p', 'a11', '1', '125', 'Bharat', '9p6c8b0q0u4c66adegstp3fpf1', '10510470.jpg', '211012'),
(59, 'p', 'Psy1', '1', '200', 'Upwrod', '9p6c8b0q0u4c66adegstp3fpf1', 'cover.action.jpg', '211012'),
(64, 'p', 'sci11', '1', '500', 'Dynamiv', 'ht66cjrbqajpgg27mimq3m0oo7', 's.jpg', '211012'),
(63, 'p', 'a11', '1', '125', 'Bharat', 'ht66cjrbqajpgg27mimq3m0oo7', '10510470.jpg', '211012');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
