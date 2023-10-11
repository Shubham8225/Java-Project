-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 09:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poshan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addschool_tbl`
--

CREATE TABLE `addschool_tbl` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sadd` varchar(100) NOT NULL,
  `spname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addschool_tbl`
--

INSERT INTO `addschool_tbl` (`sid`, `sname`, `sadd`, `spname`) VALUES
(1, 'Nutan HighSchool', 'Dondaicha', 'Shubham Patil'),
(1, 'Nutan HighSchool', 'Dondaicha', 'Shubham Patil'),
(4, 'jay hind', 'dhule', 'tejas'),
(1, 'Rice quality is not good.', 'patil', '20-7-2023');

-- --------------------------------------------------------

--
-- Table structure for table `addstudent_tbl`
--

CREATE TABLE `addstudent_tbl` (
  `sid` int(50) NOT NULL,
  `scname` varchar(100) NOT NULL,
  `sclass` varchar(20) NOT NULL,
  `sroll` int(10) NOT NULL,
  `sheight` varchar(30) NOT NULL,
  `sweight` int(20) NOT NULL,
  `sadd` varchar(30) NOT NULL,
  `smob` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `days` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addstudent_tbl`
--

INSERT INTO `addstudent_tbl` (`sid`, `scname`, `sclass`, `sroll`, `sheight`, `sweight`, `sadd`, `smob`, `sname`, `days`, `date`) VALUES
(1, 'shubham Dhangar', '1', 2, '100', 100, 'shahada', '01245789865', 'jay hind', '4', '2023-07-22'),
(2, 'Tej', '3', 11, '100', 100, 'Nimjhari', '8855221144', 'jay hind', '4', '2023-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `CId` int(50) NOT NULL,
  `Complaint` varchar(500) NOT NULL,
  `School Name` varchar(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`CId`, `Complaint`, `School Name`, `Date`) VALUES
(1, 'Rice quality is not good.', 'patil', '0000-00-00'),
(0, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `monthlymeal_tbl`
--

CREATE TABLE `monthlymeal_tbl` (
  `sid` int(50) NOT NULL,
  `days` varchar(20) NOT NULL,
  `nextmdays` varchar(10) NOT NULL,
  `Rice` varchar(39) NOT NULL,
  `Wheat` varchar(50) NOT NULL,
  `Eggs` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requirenment_tbl`
--

CREATE TABLE `requirenment_tbl` (
  `rid` int(50) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `rquantity` varchar(100) NOT NULL,
  `runit` varchar(100) NOT NULL,
  `delivarystatus` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirenment_tbl`
--

INSERT INTO `requirenment_tbl` (`rid`, `rname`, `rquantity`, `runit`, `delivarystatus`, `status`, `email`, `date`) VALUES
(1, 'Rice', '5', 'kg', '0', '1', 'sai@gmail.com', '0000-00-00'),
(2, 'asd', '16', 'kg', '0', '1', 'pavan@gmail.com', '0000-00-00'),
(3, 'oil', '16', 'liter', '0', '1', 'shubham@gmail.com', '0000-00-00'),
(4, 'wheat', '30', 'kg', '0', '1', 'sai@gmail.com', '0000-00-00'),
(3, 'Rice', '5', 'kg', '0', '1', 'nisha@gmail.com', '2023-07-21'),
(5, 'oil', '48', 'liter', '0', '1', 'papa@gmail.com', '2023-07-22'),
(6, 'Rice', '75', 'kg', '0', '1', 'nisha@gmail.com', '2023-07-22'),
(7, 'Wheat', '150', 'kg', '0', '1', 'nisha@gmail.com', '2023-07-22'),
(8, 'Eggs', '150', 'kg', '0', '1', 'nisha@gmail.com', '2023-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_tbl`
--

CREATE TABLE `supplier_tbl` (
  `suid` int(50) NOT NULL,
  `suname` varchar(100) NOT NULL,
  `suadd` varchar(100) NOT NULL,
  `suemail` varchar(40) NOT NULL,
  `sumob` varchar(20) NOT NULL,
  `supass` varchar(20) NOT NULL,
  `sucity` varchar(30) NOT NULL,
  `sustatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_tbl`
--

INSERT INTO `supplier_tbl` (`suid`, `suname`, `suadd`, `suemail`, `sumob`, `supass`, `sucity`, `sustatus`) VALUES
(0, 'Nisha Food', 'Karvand Naka', 'nisha@gmail.com', '04578956232', 'Pass@123', 'Shirpur', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `uid` int(50) NOT NULL,
  `uname` int(30) NOT NULL,
  `accNo` int(100) NOT NULL,
  `uemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addstudent_tbl`
--
ALTER TABLE `addstudent_tbl`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addstudent_tbl`
--
ALTER TABLE `addstudent_tbl`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
