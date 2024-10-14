-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 02:40 PM
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
-- Database: `dth`
--

-- --------------------------------------------------------

--
-- Table structure for table `february`
--

CREATE TABLE `february` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `DTH Bill Id` varchar(15) NOT NULL,
  `DTH Operator` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `february`
--

INSERT INTO `february` (`Customer ID`, `Customer Name`, `DTH Bill Id`, `DTH Operator`, `Bill Amt`) VALUES
('C001', 'John Doe', 'D001', 'Airtel', 52),
('C002', 'Alice Smith', 'D002', 'DishTv', 57),
('C003', 'Bob Johnson', 'D003', 'Tata Sky', 62),
('C004', 'Emily Davis', 'D004', 'Sun Direct', 67),
('C005', 'Michael Brown', 'D005', 'Videocon D2H', 72);

-- --------------------------------------------------------

--
-- Table structure for table `january`
--

CREATE TABLE `january` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `DTH Bill Id` varchar(15) NOT NULL,
  `DTH Operator` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `january`
--

INSERT INTO `january` (`Customer ID`, `Customer Name`, `DTH Bill Id`, `DTH Operator`, `Bill Amt`) VALUES
('C001', 'John Doe', 'D001', 'Airtel', 50),
('C002', 'Alice Smith', 'D002', 'DishTv', 55),
('C003', 'Bob Johnson', 'D003', 'Tata Sky', 60),
('C004', 'Emily Davis', 'D004', 'Sun Direct', 65),
('C005', 'Michael Brown', 'D005', 'Videocon D2H', 70);

-- --------------------------------------------------------

--
-- Table structure for table `march`
--

CREATE TABLE `march` (
  `Customer ID` varchar(15) NOT NULL,
  `Customer Name` varchar(15) NOT NULL,
  `DTH Bill Id` varchar(15) NOT NULL,
  `DTH Operator` varchar(15) NOT NULL,
  `Bill Amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `march`
--

INSERT INTO `march` (`Customer ID`, `Customer Name`, `DTH Bill Id`, `DTH Operator`, `Bill Amt`) VALUES
('C001', 'John Doe', 'D001', 'Airtel', 55),
('C002', 'Alice Smith', 'D002', 'DishTv', 60),
('C003', 'Bob Johnson', 'D003', 'Tata Sky', 65),
('C004', 'Emily Davis', 'D004', 'Sun Direct', 70),
('C005', 'Michael Brown', 'D005', 'Videocon D2H', 75);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
