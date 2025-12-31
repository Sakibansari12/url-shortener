-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2025 at 01:15 AM
-- Server version: 8.0.37
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ota`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_privacy_policys`
--

CREATE TABLE `tbl_privacy_policys` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cancellation_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_privacy_policys`
--

INSERT INTO `tbl_privacy_policys` (`id`, `title`, `cancellation_policy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Privacy Policy', '<p>This privacy policy applies only to Le Pensions Stays &amp; Enterprises Pvt Ltd and not to the websites of other companies, individuals, or organizations whose website links we may provide.</p>\r\n\r\n<h3><strong>Purpose of Collection of your Information</strong></h3>\r\n\r\n<p>The information collected through our website is for the safety of our guests and to understand who we are accommodating at our properties for the safety of everyone involved. In addition, website user and guest data are collected for statistical analysis purposes.</p>\r\n\r\n<p>We also collect our guests&rsquo; nationality, date of birth, gender, for statistical analysis purposes. When you visit our websites, we may automatically log your IP address (the unique address which identifies your computer on the internet). We use IP addresses to help us manage our websites and to collect broad demographic information for analytics use.</p>\r\n\r\n<p>For reservations, we send guests confirmation emails and will, therefore, require your email address. We operate an opt-in email policy &ndash; you will be asked to give us consent if you would like to receive newsletters via email.</p>\r\n\r\n<p>Exceptions may occur in the case of us needing to contact previous guests in relation to post or lost property.</p>\r\n\r\n<h3><strong>Reservation Data</strong></h3>\r\n\r\n<p>We require the following information to confirm your booking reservation with us:</p>\r\n\r\n<ul>\r\n	<li>Your name</li>\r\n	<li>Telephone or mobile number &ndash; in case of an emergency</li>\r\n	<li>Gender</li>\r\n	<li>Nationality</li>\r\n	<li>Date of Birth</li>\r\n	<li>Identification data i.e. Passport, Driving License details</li>\r\n	<li>Credit card details, including the three-digit code that appears on the back of your credit card</li>\r\n	<li>Date of arrival and departure</li>\r\n	<li>Email address</li>\r\n</ul>\r\n\r\n<p>Upon arrival, we will require the same information from your fellow travelers. In the case of Indian customers, a govt address proof is mandatory and in the case of travelers from abroad, a passport with a valid Indian Visa is mandatory. Please ensure they are all aware of this to ensure a quick and efficient check-in.</p>\r\n\r\n<h3><strong>Credit Card Data</strong></h3>\r\n\r\n<p>In order to guarantee reservations via our website or through phone (not restricted to these two), you will be required to make an advance payment which may or may not be equivalent to the full reservation price. This payment can be done using a debit/credit card, online wallets, or net banking. For the same, we have partnered with a large payment solutions provider &ldquo;Razorpay&rdquo;.</p>\r\n\r\n<p>Incred Stays &amp; Enterprise Pvt Ltd indemnifies itself against all data use on and reservations made via third-party websites/agents. Please refer to their relevant privacy policy and terms and conditions.</p>\r\n\r\n<h3><strong>Guest Personal Data</strong></h3>\r\n\r\n<p>We respect our guest&rsquo;s privacy and will not sell or disclose guests&rsquo; personal information to any other person, business, or third party unless in the case of an emergency and/or it is seen as part of our duty of care.</p>\r\n\r\n<h3><strong>Keeping Our Data Upto Date</strong></h3>\r\n\r\n<p>As an accommodation and leisure provider, we have guests returning to our properties on a regular basis. It is your duty to inform us if any of your personal information which we hold about you needs to be updated. We may contact you at any time if you have booked accommodation with us and we suspect we hold false information about you.</p>\r\n\r\n<h3><strong>Changes to Our Privacy Policy</strong></h3>\r\n\r\n<p>We may change our Privacy Policy at any time. Continued use of our websites signifies that you agree to any such changes. Please be aware that the privacy policy is in English. For any support in a foreign language please contact us at&nbsp;<a href=\"javascript:void(0);\">sales@incredstays.com</a>.</p>', '2024-12-30 06:08:49', '2025-05-22 10:29:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_privacy_policys`
--
ALTER TABLE `tbl_privacy_policys`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
