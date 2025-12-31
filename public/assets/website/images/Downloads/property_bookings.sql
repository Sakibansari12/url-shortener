-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2025 at 07:28 AM
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
-- Table structure for table `property_bookings`
--

CREATE TABLE `property_bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `parent_user_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `travelagent_id` int DEFAULT NULL,
  `sub_user_id` int DEFAULT NULL,
  `location_id` int NOT NULL,
  `property_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` int NOT NULL,
  `total_amount` double(10,2) DEFAULT NULL,
  `payable_amount` double(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` double(10,2) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `transcation_id` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_of_adult` int DEFAULT NULL,
  `no_of_children` int DEFAULT NULL,
  `provider` enum('stripe','razorpay','paypal','cashfee','payu') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_status` enum('pending','paid','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_quotation_id` int DEFAULT NULL,
  `booking_created_by` enum('admin','user','ru') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Property',
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `razorpay_order_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ru_booking_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_blocking_hour` int NOT NULL DEFAULT '1',
  `additional_charges` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_night_price` double(10,2) DEFAULT NULL,
  `no_of_nights` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `additional_charges_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_charges_discount` float(10,2) DEFAULT NULL,
  `tot_additional_charge` double(10,2) DEFAULT NULL,
  `base_price` double(10,2) DEFAULT NULL,
  `extra_guest_charge` double(10,2) DEFAULT NULL,
  `taxable_amount` double(10,2) DEFAULT NULL,
  `customer_location_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_company_info` int NOT NULL DEFAULT '0',
  `customer_company_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applied_discount_coupon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_serial_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_year` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_booking_status` enum('Requested','Confirmed','Not Confirmed','Canceled','Send Payment Link') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Requested',
  `payment_status` enum('Pending','Paid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `booking_notes` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ru_building_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ru_booking_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `pType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `is_checkin` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_bookings`
--

INSERT INTO `property_bookings` (`id`, `booking_id`, `user_id`, `parent_user_id`, `owner_id`, `travelagent_id`, `sub_user_id`, `location_id`, `property_name`, `property_id`, `total_amount`, `payable_amount`, `paid_amount`, `tax_amount`, `discount_amount`, `transcation_id`, `customer_detail`, `company_detail`, `no_of_adult`, `no_of_children`, `provider`, `booking_status`, `booking_quotation_id`, `booking_created_by`, `checkin_date`, `checkout_date`, `type`, `status`, `deleted_at`, `updated_at`, `created_at`, `razorpay_order_id`, `booking_from`, `ru_booking_status`, `is_blocking_hour`, `additional_charges`, `invoice`, `channel`, `per_night_price`, `no_of_nights`, `tax`, `additional_charges_detail`, `additional_charges_discount`, `tot_additional_charge`, `base_price`, `extra_guest_charge`, `taxable_amount`, `customer_location_detail`, `is_company_info`, `customer_company_info`, `applied_discount_coupon`, `invoice_serial_no`, `invoice_year`, `invoice_no`, `property_booking_status`, `payment_status`, `booking_notes`, `customer_name`, `customer_email`, `customer_number`, `checkin_time`, `checkout_time`, `ru_building_id`, `ru_booking_id`, `room_no`, `pType`, `otp`, `otp_verified`, `is_checkin`) VALUES
(1, '49681580', 1, 1, NULL, NULL, NULL, 26, 'Renovated Old Goan Multiunit', 1, 2000.00, 2240.00, 2240.00, 240.00, 0.00, NULL, '{\"first_name\":\"muzammil\",\"last_name\":\"iws\",\"email\":\"muzammil@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"8837613270\"}', NULL, 1, 0, NULL, 'paid', NULL, 'admin', '2025-05-15', '2025-05-17', 'location', 1, NULL, '2025-05-15 09:28:07', '2025-05-15 08:48:13', NULL, NULL, NULL, 0, '[{\"id\":\"1\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-13T05:53:14.000000Z\",\"created_at\":\"2025-05-13T05:53:14.000000Z\",\"pType\":\"unit\",\"unit_id\":\"1\",\"multi_unit_id\":null,\"isAdditionalChargeChecked\":\"0\",\"final_price\":\"200\"}]', NULL, 'Offline', 1000.00, 2, 12, '[{\"id\":\"1\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-13T05:53:14.000000Z\",\"created_at\":\"2025-05-13T05:53:14.000000Z\",\"pType\":\"unit\",\"unit_id\":\"1\",\"multi_unit_id\":null,\"isAdditionalChargeChecked\":\"0\",\"final_price\":\"200\"}]', NULL, 0.00, 2000.00, NULL, 2000.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Pending', NULL, 'muzammil iws', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'multiunit', NULL, 'No', 1),
(2, '71027328', 1, 1, NULL, NULL, NULL, 26, 'Property added by PM', 2, 12600.00, 14112.00, 252.00, 1512.00, 0.00, NULL, '{\"first_name\":\"Muzammil\",\"last_name\":\"IWS\",\"email\":\"muzammil@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9876543211\"}', NULL, 5, 0, NULL, 'paid', NULL, 'admin', '2025-05-24', '2025-05-27', 'location', 1, NULL, '2025-05-17 10:26:38', '2025-05-15 09:15:26', NULL, NULL, NULL, 0, '[{\"id\":\"14\",\"name\":\"cook\",\"price\":\"1000\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T10:01:39.000000Z\",\"created_at\":\"2025-05-15T10:01:39.000000Z\",\"pType\":\"unit\",\"unit_id\":\"2\",\"multi_unit_id\":null,\"isAdditionalChargeChecked\":\"1\",\"final_price\":\"3000\"}]', NULL, 'Offline', 3000.00, 3, 12, '[{\"id\":\"14\",\"name\":\"cook\",\"price\":\"1000\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T10:01:39.000000Z\",\"created_at\":\"2025-05-15T10:01:39.000000Z\",\"pType\":\"unit\",\"unit_id\":\"2\",\"multi_unit_id\":null,\"isAdditionalChargeChecked\":\"1\",\"final_price\":\"3000\"}]', NULL, 3000.00, 9000.00, 600.00, 12600.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Pending', 'Test', 'Muzammil IWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(3, '22126568', 1, 1, 46, NULL, NULL, 26, 'Renovated Old Goan House', 1, 1000.00, 1120.00, 1120.00, 120.00, 0.00, NULL, '{\"first_name\":\"Karrar\",\"last_name\":\"mujtaba\",\"email\":\"karrar@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9262852851\"}', '{\"company_name\":null,\"gst_no\":null,\"state\":null,\"city\":null,\"address\":null}', 2, 1, NULL, 'paid', NULL, 'admin', '2025-05-20', '2025-05-21', 'Property', 1, '2025-05-15 09:55:16', '2025-05-15 09:55:16', '2025-05-15 09:52:11', NULL, NULL, NULL, 0, '[{\"id\":\"1\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-13T05:53:14.000000Z\",\"created_at\":\"2025-05-13T05:53:14.000000Z\",\"pType\":\"unit\",\"unit_id\":\"1\",\"multi_unit_id\":null}]', NULL, 'Offline', 1000.00, 1, 12, '[{\"id\":\"1\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-13T05:53:14.000000Z\",\"created_at\":\"2025-05-13T05:53:14.000000Z\",\"pType\":\"unit\",\"unit_id\":\"1\",\"multi_unit_id\":null}]', NULL, 0.00, 1000.00, NULL, 1000.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Karrar mujtaba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 1),
(4, '54253943', 1, 1, NULL, NULL, NULL, 26, 'Property added by PM', 2, 3000.00, 3360.00, 0.00, 360.00, 0.00, NULL, '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\"}', '{\"company_name\":\"IWS\",\"gst_no\":\"22AAAAA0000A1Z5\",\"state\":\"DELHI\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', 3, 0, NULL, 'pending', NULL, 'admin', '2025-05-29', '2025-05-30', 'Property', 1, NULL, '2025-05-15 10:06:50', '2025-05-15 10:06:50', NULL, NULL, NULL, 0, '[{\"id\":\"14\",\"name\":\"cook\",\"price\":\"1000\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T10:01:39.000000Z\",\"created_at\":\"2025-05-15T10:01:39.000000Z\",\"pType\":\"unit\",\"unit_id\":\"2\",\"multi_unit_id\":null}]', NULL, 'Offline', 3000.00, 1, 12, '[{\"id\":\"14\",\"name\":\"cook\",\"price\":\"1000\",\"home_id\":null,\"type_option\":\"Per_Night\",\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T10:01:39.000000Z\",\"created_at\":\"2025-05-15T10:01:39.000000Z\",\"pType\":\"unit\",\"unit_id\":\"2\",\"multi_unit_id\":null}]', NULL, 0.00, 3000.00, NULL, 3000.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(5, '90061747', 1, 1, NULL, NULL, NULL, 26, 'Renovated Old Goan Multiunit', 1, 2000.00, 2240.00, 1.00, 240.00, 0.00, NULL, '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\"}', '{\"company_name\":null,\"gst_no\":null,\"state\":null,\"city\":null,\"address\":null}', 1, 0, NULL, 'paid', NULL, 'admin', '2025-05-21', '2025-05-23', 'Property', 1, NULL, '2025-05-20 06:03:34', '2025-05-15 10:14:02', NULL, NULL, NULL, 0, '[{\"id\":\"13\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":null,\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T09:45:27.000000Z\",\"created_at\":\"2025-05-15T09:45:27.000000Z\",\"pType\":\"multiunit\",\"unit_id\":null,\"multi_unit_id\":\"1\"}]', NULL, 'Offline', 1000.00, 2, 12, '[{\"id\":\"13\",\"name\":\"Cook\",\"price\":\"100\",\"home_id\":null,\"type_option\":null,\"gst\":null,\"display_on_website\":\"0\",\"status\":\"1\",\"deleted_at\":null,\"updated_at\":\"2025-05-15T09:45:27.000000Z\",\"created_at\":\"2025-05-15T09:45:27.000000Z\",\"pType\":\"multiunit\",\"unit_id\":null,\"multi_unit_id\":\"1\"}]', NULL, 0.00, 2000.00, NULL, 2000.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Pending', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'multiunit', NULL, 'No', 0),
(6, '22866631', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, 1000.00, 1792.00, 1792.00, 192.00, NULL, 'pay_QXXOd3w3qG4dNN', '{\"first_name\":\"Rajkumar\",\"last_name\":\"kamila\",\"email\":\"admin@gmail.com\",\"country_code\":\"91\",\"mobile_number\":\"1234567890\",\"state\":\"Delhi\",\"city\":\"Delhi\",\"address\":\"testadsa ada\"}', NULL, 10, 0, NULL, 'paid', 0, 'admin', '2025-05-24', '2025-05-25', 'location', 1, NULL, '2025-05-21 07:58:20', '2025-05-21 07:57:53', 'order_QXXOPtaepzSIbL', NULL, NULL, 1, NULL, NULL, 'Website', 1000.00, 1, 12, NULL, NULL, NULL, 1000.00, NULL, 192.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Rajkumar kamila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'multiunit', NULL, 'No', 0),
(7, '84879831', NULL, NULL, NULL, NULL, NULL, 26, NULL, 2, 11499.00, 13999.00, 0.00, 1500.00, NULL, NULL, '{\"first_name\":\"Karrar\",\"last_name\":\"mujtaba\",\"email\":\"karrar82001@gamil.com\",\"country_code\":\"91\",\"mobile_number\":\"9263852851\",\"state\":\"Kerala\",\"city\":\"Select City\",\"address\":\"Gurgao\"}', NULL, 1, 0, NULL, 'pending', 0, 'admin', '2025-05-22', '2025-05-25', 'location', 1, NULL, '2025-05-22 07:38:25', '2025-05-22 07:38:25', 'order_QXvay8rts8RgRh', NULL, NULL, 1, NULL, NULL, 'Website', 3833.00, 3, 12, NULL, NULL, NULL, 11499.00, NULL, 1500.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'Karrar mujtaba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(8, '22173939', NULL, NULL, NULL, NULL, NULL, 26, NULL, 2, 11499.00, 13999.00, 13999.00, 1500.00, NULL, 'pay_QXyB73XoLz82cp', '{\"first_name\":\"Karrar\",\"last_name\":\"mujtaba\",\"email\":\"karrar82001@gamil.com\",\"country_code\":\"91\",\"mobile_number\":\"9263852851\",\"state\":\"Kerala\",\"city\":\"Pathanamthitta\",\"address\":\"Gurgao\"}', NULL, 1, 0, NULL, 'paid', 0, 'admin', '2025-05-22', '2025-05-25', 'location', 1, NULL, '2025-05-22 10:10:16', '2025-05-22 10:09:39', 'order_QXyAiu49JFmX6z', NULL, NULL, 1, NULL, NULL, 'Website', 3833.00, 3, 12, NULL, NULL, NULL, 11499.00, NULL, 1500.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Karrar mujtaba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(9, '48967767', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 5000.00, 5040.00, 5040.00, 540.00, NULL, 'pay_QYKdacZx7Kf3Q0', '{\"first_name\":\"karrar\",\"last_name\":\"mujtaba\",\"email\":\"admin@staycationer.com\",\"country_code\":\"91\",\"mobile_number\":\"6200677641\",\"state\":\"bihar\",\"city\":\"dedf\",\"address\":\"sfdsf\"}', NULL, 2, 2, NULL, 'paid', 13, 'admin', '2025-05-23', '2025-05-24', 'location', 1, NULL, '2025-05-23 08:08:29', '2025-05-23 08:08:09', 'order_QYKdV4aeJDwhTn', NULL, NULL, 1, NULL, NULL, 'Quotation', 5000.00, 1, 12, NULL, NULL, NULL, 5000.00, NULL, 540.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'karrar mujtaba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(10, '45828442', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, 2000.00, 1232.00, 1232.00, 132.00, NULL, 'pay_QYg9JFtpLWQthZ', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 1, 0, NULL, 'paid', 14, 'admin', '2025-05-28', '2025-05-29', 'location', 1, NULL, '2025-05-24 05:11:04', '2025-05-24 05:10:43', 'order_QYg9C4V9z0WGcI', NULL, NULL, 1, NULL, NULL, 'Quotation', 2000.00, 1, 12, NULL, NULL, NULL, 2000.00, NULL, 132.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'multiunit', NULL, 'No', 0),
(11, '46036338', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 13440.00, 13440.00, 1440.00, NULL, 'pay_QZqXBuj1QTKXaR', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 5, 0, NULL, 'paid', 0, 'admin', '2025-07-09', '2025-07-11', 'location', 1, NULL, '2025-06-05 08:08:27', '2025-05-27 03:59:15', 'order_QZqX3Tk1a6B62F', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1440.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(12, '20979375', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 15680.00, 0.00, 1680.00, NULL, NULL, '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 6, 2, NULL, 'pending', 0, 'admin', '2025-06-18', '2025-06-20', 'location', 1, NULL, '2025-05-27 04:18:47', '2025-05-27 04:18:47', 'order_QZqrgCcaL2wDhT', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1680.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(13, '80609077', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 15680.00, 0.00, 1680.00, NULL, NULL, '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya\",\"country_code\":\"91\",\"mobile_number\":\"123563\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 6, 2, NULL, 'pending', 0, 'admin', '2025-06-18', '2025-06-20', 'location', 1, NULL, '2025-05-27 04:22:16', '2025-05-27 04:22:16', 'order_QZqvMTe06dIurX', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1680.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(14, '35470399', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 15680.00, 15680.00, 1680.00, NULL, 'pay_QZqvpDtVrRw14g', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya\",\"country_code\":\"592\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 6, 2, NULL, 'paid', 0, 'admin', '2025-06-18', '2025-06-20', 'location', 1, NULL, '2025-05-27 04:23:13', '2025-05-27 04:22:38', 'order_QZqvkfpqHTBLzI', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1680.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(15, '90667293', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, 1000.00, 1456.00, 0.00, 156.00, NULL, NULL, '{\"first_name\":\"kashif\",\"last_name\":\"kashif\",\"email\":\"kashif@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"6200677641\",\"state\":\"delhi\",\"city\":\"delhi\",\"address\":\"delhi\"}', NULL, 1, 0, NULL, 'pending', 0, 'admin', '2025-05-27', '2025-05-28', 'location', 1, NULL, '2025-06-05 08:08:13', '2025-05-27 05:50:23', 'order_QZsQRbA3iTLeL8', NULL, NULL, 1, NULL, NULL, 'Website', 1000.00, 1, 12, NULL, NULL, NULL, 1000.00, NULL, 156.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Pending', NULL, 'kashif kashif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(16, '64590400', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, 1000.00, 1456.00, 1456.00, 156.00, NULL, 'pay_QZsROGFsPsLYmR', '{\"first_name\":\"kashif\",\"last_name\":\"kashif\",\"email\":\"kashif@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"6200677641\",\"state\":\"delhi\",\"city\":\"delhi\",\"address\":\"delhi\"}', NULL, 1, 0, NULL, 'paid', 0, 'admin', '2025-05-27', '2025-05-28', 'location', 1, NULL, '2025-06-05 08:08:07', '2025-05-27 05:51:11', 'order_QZsRIhJ111ANof', NULL, NULL, 1, NULL, NULL, 'Website', 1000.00, 1, 12, NULL, NULL, NULL, 1000.00, NULL, 156.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'kashif kashif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(17, '28769820', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 5000.00, 5376.00, 0.00, 576.00, NULL, NULL, '{\"first_name\":\"guest\",\"last_name\":\"guest\",\"email\":\"hdgfhfdh\",\"country_code\":\"91\",\"mobile_number\":\"6200677641\",\"state\":\"bihar\",\"city\":\"dedf\",\"address\":\"sfdsf\"}', NULL, 2, 1, NULL, 'pending', 21, 'admin', '2025-05-26', '2025-05-27', 'location', 1, NULL, '2025-05-27 07:42:52', '2025-05-27 07:42:52', 'order_QZuLGsPPWVTUSP', NULL, NULL, 1, NULL, NULL, 'Quotation', 5000.00, 1, 12, NULL, NULL, NULL, 5000.00, NULL, 576.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'guest guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(18, '94588242', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 5000.00, 5376.00, 0.00, 576.00, NULL, NULL, '{\"first_name\":\"guest\",\"last_name\":\"guest\",\"email\":\"adminstaycationer.com\",\"country_code\":\"91\",\"mobile_number\":\"6200677641\",\"state\":\"bihar\",\"city\":\"dedf\",\"address\":\"sdfasf\"}', NULL, 2, 1, NULL, 'pending', 21, 'admin', '2025-05-26', '2025-05-27', 'location', 1, NULL, '2025-05-27 07:45:19', '2025-05-27 07:45:19', 'order_QZuNr2kJlUTdW9', NULL, NULL, 1, NULL, NULL, 'Quotation', 5000.00, 1, 12, NULL, NULL, NULL, 5000.00, NULL, 576.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Requested', 'Pending', NULL, 'guest guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(19, '40282711', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 16000.00, 19411.00, 19411.00, 2961.00, NULL, 'pay_QajCxGhltcrLgB', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 2, 0, NULL, 'paid', 0, 'admin', '2025-06-08', '2025-06-10', 'location', 1, '2025-06-05 08:07:38', '2025-06-05 08:07:38', '2025-05-29 09:28:17', 'order_QajCrMMPwomUyr', NULL, NULL, 1, NULL, NULL, 'Website', 8000.00, 2, 18, NULL, NULL, NULL, 16000.00, NULL, 2961.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(20, '74190514', NULL, NULL, NULL, NULL, NULL, 26, NULL, 2, 6000.00, 7840.00, 7840.00, 840.00, NULL, 'pay_QakMeP3GKsHqr5', '{\"first_name\":\"Sakib\",\"last_name\":\"Ansari\",\"email\":\"sakib@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"5463567356\",\"state\":\"Testing\",\"city\":\"Testing\",\"address\":\"Testing\"}', NULL, 2, 0, NULL, 'paid', 0, 'admin', '2025-06-01', '2025-06-03', 'location', 1, '2025-06-05 07:34:33', '2025-06-05 07:34:33', '2025-05-29 10:35:52', 'order_QakMG2uSgCPtp0', NULL, NULL, 1, NULL, NULL, 'Website', 3000.00, 2, 12, NULL, NULL, NULL, 6000.00, NULL, 840.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'Sakib Ansari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(21, '31174664', NULL, NULL, NULL, NULL, NULL, 26, NULL, 2, 6000.00, 7840.00, 7840.00, 840.00, NULL, 'pay_Qb2W8wBYbRQqO2', '{\"first_name\":\"Sakib Testing\",\"last_name\":\"Ansari dd\",\"email\":\"sakib@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9045269853\",\"state\":\"UP\",\"city\":\"GZB\",\"address\":\"Muradnagar gzb up\"}', NULL, 3, 0, NULL, 'paid', 0, 'admin', '2025-06-05', '2025-06-07', 'location', 1, '2025-06-05 07:34:23', '2025-06-05 07:34:23', '2025-05-30 04:21:38', 'order_Qb2W3k4PvrHpLB', NULL, NULL, 1, NULL, NULL, 'Website', 3000.00, 2, 12, NULL, NULL, NULL, 6000.00, NULL, 840.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'Sakib Testing Ansari dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(22, '70231939', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 11704.00, 11704.00, 1254.00, NULL, 'pay_Qb4gaPkLQikuq8', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 1, 0, NULL, 'paid', 0, 'admin', '2025-06-11', '2025-06-13', 'location', 1, '2025-06-05 07:34:14', '2025-06-05 07:34:14', '2025-05-30 06:28:53', 'order_Qb4gTieMkYtufs', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1254.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(23, '79750425', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 10000.00, 11704.00, 11704.00, 1254.00, NULL, 'pay_QdTfMBbdzj3Izc', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"354\",\"mobile_number\":\"9582184\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 1, 0, NULL, 'paid', 0, 'admin', '2025-06-11', '2025-06-13', 'location', 1, NULL, '2025-06-05 10:28:02', '2025-06-05 08:13:04', 'order_QdTfFl42Gf88OX', NULL, NULL, 1, NULL, NULL, 'Website', 5000.00, 2, 12, NULL, NULL, NULL, 10000.00, NULL, 1254.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Canceled', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(24, '74676355', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 16000.00, 24131.00, 24131.00, 3681.00, NULL, 'pay_QdThNGuYrDI9V3', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 6, 0, NULL, 'paid', 0, 'admin', '2025-06-09', '2025-06-11', 'location', 1, '2025-06-05 09:49:23', '2025-06-05 09:49:23', '2025-06-05 08:15:00', 'order_QdThIVU2ol6kyL', NULL, NULL, 1, NULL, NULL, 'Website', 8000.00, 2, 18, NULL, NULL, NULL, 16000.00, NULL, 3681.00, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0),
(25, '50154824', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, 16000.00, 12824.00, 12824.00, 1374.00, 5000.00, 'pay_QdVQxw8r5TqWEW', '{\"first_name\":\"Taniya\",\"last_name\":\"chauhan\",\"email\":\"taniya@iws.in\",\"country_code\":\"91\",\"mobile_number\":\"9582184616\",\"state\":\"Delhi\",\"city\":\"New Delhi\",\"address\":\"DDA Flats kalkaji\"}', NULL, 1, 0, NULL, 'paid', 0, 'admin', '2025-06-09', '2025-06-11', 'location', 1, '2025-06-05 10:24:46', '2025-06-05 10:24:46', '2025-06-05 09:56:51', 'order_QdVQsJGdaluYQq', NULL, NULL, 1, NULL, NULL, 'Website', 8000.00, 2, 12, NULL, NULL, NULL, 16000.00, NULL, 1374.00, NULL, 0, NULL, 'SC', NULL, NULL, NULL, 'Confirmed', 'Paid', NULL, 'Taniya chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unit', NULL, 'No', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property_bookings`
--
ALTER TABLE `property_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_property_id_checkin_checkout` (`property_id`,`checkin_date`,`checkout_date`),
  ADD KEY `idx_property_booking` (`property_id`,`checkin_date`,`checkout_date`),
  ADD KEY `idx_property_booking_checkin` (`property_id`,`checkin_date`),
  ADD KEY `idx_property_id_checkin_checkouts` (`property_id`,`checkin_date`,`checkout_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property_bookings`
--
ALTER TABLE `property_bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
