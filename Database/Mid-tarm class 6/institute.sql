-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 07:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institute`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptid` int(6) NOT NULL,
  `deptname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptid`, `deptname`) VALUES
(1, 'web Application'),
(2, 'hotel tourism'),
(3, 'Ict'),
(4, 'English Comunication'),
(5, 'Graphics design');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `distid` int(6) NOT NULL,
  `dname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`distid`, `dname`) VALUES
(1, 'Bhola'),
(2, 'Bogra'),
(3, 'Savar');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hid` int(6) NOT NULL,
  `hname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hid`, `hname`) VALUES
(1, 'male hostel'),
(2, 'female hostel'),
(3, 'International hostel');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(6) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `hid` int(6) DEFAULT NULL,
  `distid` int(6) DEFAULT NULL,
  `deptid` int(6) DEFAULT NULL,
  `room_no` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `name`, `email`, `mobile`, `hid`, `distid`, `deptid`,`room_no`) VALUES
(1, 'Shakib', 'shakib@gmail.com', 17, 1, 1, 1,202),
(2, 'Khaled', 'khaled@gmail.com', 17, 2, 1, 2,202),
(3, 'Asad', 'asad@gmail.com', 17, 2, 2, 1,103),
(4, 'Kamal', 'kamal@gmail.com', 14, 1, 2, 1,400),
(5, 'Karim', 'karim@gmail.com', 16, 3, 2, 3,200),
(6, 'Polash', 'polash@gmail.com', 18, 3, 3, 5,300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`distid`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `hid` (`hid`),
  ADD KEY `deptid` (`deptid`),
  ADD KEY `distid` (`distid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hostel` (`hid`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`deptid`) REFERENCES `dept` (`deptid`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`distid`) REFERENCES `district` (`distid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
