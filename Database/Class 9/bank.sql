-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 07:32 AM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `a_num` int(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`a_num`, `Name`, `balance`) VALUES
(1001, 'Asad', 23000.00),
(1002, 'Rahim', 3000.00),
(1003, 'Fahima', 0.10);

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `t_id` int(10) NOT NULL,
  `a_num` int(10) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `type` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`t_id`, `a_num`, `amount`, `type`) VALUES
(1, 1002, 400.00, 0),
(2, 1003, 3000.00, 0),
(3, 1003, 3000.00, 1),
(4, 1003, 3000.40, 0),
(5, 1003, 0.00, 0);

--
-- Triggers `trans`
--
DELIMITER $$
CREATE TRIGGER `tr3` AFTER INSERT ON `trans` FOR EACH ROW BEGIN
    DECLARE c_balance DECIMAL(10, 2) DEFAULT 0;
    
    IF NEW.type = 0 THEN
        -- Check current balance
        SELECT balance INTO c_balance FROM account WHERE a_num = NEW.a_num;
        
        IF c_balance > NEW.amount THEN
            -- Deduct the amount from the balance
            UPDATE account SET balance = balance - NEW.amount
            WHERE a_num = NEW.a_num;
        ELSE
            -- Raise an error if insufficient balance
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient balance';
        END IF;
    ELSE
        -- Add the amount to the balance if type is not 0
        UPDATE account SET balance = balance + NEW.amount
        WHERE a_num = NEW.a_num;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`a_num`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
