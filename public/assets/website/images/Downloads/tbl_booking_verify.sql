-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2025 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staycationer_dev_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_verify`
--

CREATE TABLE `tbl_booking_verify` (
  `id` int(11) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `otp_verified` int(11) DEFAULT 0,
  `customer_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking_verify`
--

INSERT INTO `tbl_booking_verify` (`id`, `otp`, `booking_id`, `start_date`, `end_date`, `otp_verified`, `customer_number`, `created_at`, `updated_at`) VALUES
(1, '790079', '51313513', '2025-06-05 06:21:28', '2025-06-05 06:22:28', 1, '9045269853', '2025-06-05 01:38:25', '2025-06-05 06:21:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking_verify`
--
ALTER TABLE `tbl_booking_verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_booking_verify`
--
ALTER TABLE `tbl_booking_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
