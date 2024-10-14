-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water`
--

-- --------------------------------------------------------

--
-- Table structure for table `february`
--

CREATE TABLE `february` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `Water ID` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `february`
--

INSERT INTO `february` (`Customer ID`, `Customer Name`, `Water ID`, `Bill Amt`) VALUES
('C001', 'John Doe', 'W001', 85),
('C002', 'Alice Smith', 'W002', 88),
('C003', 'Bob Johnson', 'W003', 82),
('C004', 'Emily Davis', 'W004', 92),
('C005', 'Michael Brown', 'W005', 78);

-- --------------------------------------------------------

--
-- Table structure for table `january`
--

CREATE TABLE `january` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `Water ID` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `january`
--

INSERT INTO `january` (`Customer ID`, `Customer Name`, `Water ID`, `Bill Amt`) VALUES
('C001', 'John Doe', 'W001', 80),
('C002', 'Alice Smith', 'W002', 90),
('C003', 'Bob Johnson', 'W003', 85),
('C004', 'Emily Davis', 'W004', 95),
('C005', 'Michael Brown', 'W005', 75);

-- --------------------------------------------------------

--
-- Table structure for table `march`
--

CREATE TABLE `march` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `Water ID` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `march`
--

INSERT INTO `march` (`Customer ID`, `Customer Name`, `Water ID`, `Bill Amt`) VALUES
('C001', 'John Doe', 'W001', 88),
('C002', 'Alice Smith', 'W002', 92),
('C003', 'Bob Johnson', 'W003', 86),
('C004', 'Emily Davis', 'W004', 96),
('C005', 'Michael Brown', 'W005', 80);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
