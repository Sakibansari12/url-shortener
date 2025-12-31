-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2025 at 03:01 PM
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
-- Database: `laravel_product_web_sana`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `image`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Quality Products, Delivered with Care', 'aboutus/images/aboutus_image_1749625039_clothes-logo.webp', '<p>So to begin with, we curated a list of the &#39;best homestays to live&rsquo; in and around the places we had explored, tailored to our preferences and started recommending them within our inner circle through a WhatsApp group. The genuine joy, warmth and positivity with which our suggestions were received, motivated us to turn our passion into a purposeful venture.</p>\r\n\r\n<p>And thus, in 2023 staycationer.in was launched, a dedicated online platform which, keeping in mind the purpose of one&rsquo;s travel, strives to provide a hassle free, most relaxing and one of a kind of an experience of curated stays.</p>\r\n\r\n<p>With a commitment to redefining the way we experience stays, we invite you to join us on this empathetic journey. Staycationer for us is not just a business but a testament to the empathy, care and attention to detail that we both wish to bring to the world of hospitality.</p>', NULL, '2025-06-11 01:27:19', '2025-06-11 01:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Explore our latest fashion collection curated for all age groups and styles', 'PvAmVWdNpu1BytA88BDNf7vhQrGdATSqZvhnPuJO.png', NULL, '2025-06-11 07:00:18', '2025-06-12 01:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirts', 't-shirts', NULL, '2025-06-10 05:58:17', '2025-06-10 05:58:17'),
(2, 'Solid Black Round Neck T-Shirt', 'solid-black-round-neck-t-shirt', NULL, '2025-06-10 23:29:17', '2025-06-10 23:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(48, 'Anantapur', 1, NULL, NULL),
(49, 'Chittoor', 1, NULL, NULL),
(50, 'East Godavari', 1, NULL, NULL),
(51, 'Guntur', 1, NULL, NULL),
(52, 'Krishna', 1, NULL, NULL),
(53, 'Nellore', 1, NULL, NULL),
(54, 'Prakasam', 1, NULL, NULL),
(55, 'Sri Potti Sriramulu Nellore', 1, NULL, NULL),
(56, 'Visakhapatnam', 1, NULL, NULL),
(57, 'West Godavari', 1, NULL, NULL),
(58, 'Vijayanagaram', 1, NULL, NULL),
(59, 'Srikakulam', 1, NULL, NULL),
(60, 'Tawang', 2, NULL, NULL),
(61, 'West Kameng', 2, NULL, NULL),
(62, 'East Kameng', 2, NULL, NULL),
(63, 'Papum Pare', 2, NULL, NULL),
(64, 'Lower Subansiri', 2, NULL, NULL),
(65, 'Upper Subansiri', 2, NULL, NULL),
(66, 'West Siang', 2, NULL, NULL),
(67, 'Siang', 2, NULL, NULL),
(68, 'Upper Siang', 2, NULL, NULL),
(69, 'Lower Siang', 2, NULL, NULL),
(70, 'Namsai', 2, NULL, NULL),
(71, 'Changlang', 2, NULL, NULL),
(72, 'Tirap', 2, NULL, NULL),
(73, 'Longding', 2, NULL, NULL),
(74, 'Baksa', 3, NULL, NULL),
(75, 'Barpeta', 3, NULL, NULL),
(76, 'Biswanath', 3, NULL, NULL),
(77, 'Bongaigaon', 3, NULL, NULL),
(78, 'Cachar', 3, NULL, NULL),
(79, 'Charaideo', 3, NULL, NULL),
(80, 'Chirang', 3, NULL, NULL),
(81, 'Darrang', 3, NULL, NULL),
(82, 'Dibrugarh', 3, NULL, NULL),
(83, 'Dima Hasao', 3, NULL, NULL),
(84, 'Goalpara', 3, NULL, NULL),
(85, 'Golaghat', 3, NULL, NULL),
(86, 'Hailakandi', 3, NULL, NULL),
(87, 'Jorhat', 3, NULL, NULL),
(88, 'Kamrup', 3, NULL, NULL),
(89, 'Karimganj', 3, NULL, NULL),
(90, 'Kokrajhar', 3, NULL, NULL),
(91, 'Lakhimpur', 3, NULL, NULL),
(92, 'Morigaon', 3, NULL, NULL),
(93, 'Nagaon', 3, NULL, NULL),
(94, 'Nalbari', 3, NULL, NULL),
(95, 'Sivasagar', 3, NULL, NULL),
(96, 'Sonitpur', 3, NULL, NULL),
(97, 'Tinsukia', 3, NULL, NULL),
(98, 'Udalguri', 3, NULL, NULL),
(99, 'Araria', 4, NULL, NULL),
(100, 'Arwal', 4, NULL, NULL),
(101, 'Aurangabad', 4, NULL, NULL),
(102, 'Banka', 4, NULL, NULL),
(103, 'Bihar Sharif', 4, NULL, NULL),
(104, 'Bhagalpur', 4, NULL, NULL),
(105, 'Buxar', 4, NULL, NULL),
(106, 'Darbhanga', 4, NULL, NULL),
(107, 'Gaya', 4, NULL, NULL),
(108, 'Gopalganj', 4, NULL, NULL),
(109, 'Jamui', 4, NULL, NULL),
(110, 'Jehanabad', 4, NULL, NULL),
(111, 'Kaimur', 4, NULL, NULL),
(112, 'Katihar', 4, NULL, NULL),
(113, 'Khagaria', 4, NULL, NULL),
(114, 'Kishanganj', 4, NULL, NULL),
(115, 'Madhepura', 4, NULL, NULL),
(116, 'Madhubani', 4, NULL, NULL),
(117, 'Nalanda', 4, NULL, NULL),
(118, 'Nawada', 4, NULL, NULL),
(119, 'Purnea', 4, NULL, NULL),
(120, 'Rohtas', 4, NULL, NULL),
(121, 'Saran', 4, NULL, NULL),
(122, 'Sheikhpura', 4, NULL, NULL),
(123, 'Sitamarhi', 4, NULL, NULL),
(124, 'Siwan', 4, NULL, NULL),
(125, 'Supaul', 4, NULL, NULL),
(126, 'Vaishali', 4, NULL, NULL),
(127, 'West Champaran', 4, NULL, NULL),
(128, 'Balod', 5, NULL, NULL),
(129, 'Baloda Bazar', 5, NULL, NULL),
(130, 'Bastar', 5, NULL, NULL),
(131, 'Bilaspur', 5, NULL, NULL),
(132, 'Dantewada', 5, NULL, NULL),
(133, 'Dhamtari', 5, NULL, NULL),
(134, 'Durg', 5, NULL, NULL),
(135, 'Janjgir-Champa', 5, NULL, NULL),
(136, 'Korba', 5, NULL, NULL),
(137, 'Koriya', 5, NULL, NULL),
(138, 'Mahasamund', 5, NULL, NULL),
(139, 'Raigarh', 5, NULL, NULL),
(140, 'Raipur', 5, NULL, NULL),
(141, 'Rajnandgaon', 5, NULL, NULL),
(142, 'Sukma', 5, NULL, NULL),
(143, 'Surguja', 5, NULL, NULL),
(144, 'North Goa', 6, NULL, NULL),
(145, 'South Goa', 6, NULL, NULL),
(146, 'Ahmedabad', 7, NULL, NULL),
(147, 'Amreli', 7, NULL, NULL),
(148, 'Anand', 7, NULL, NULL),
(149, 'Banaskantha', 7, NULL, NULL),
(150, 'Bharuch', 7, NULL, NULL),
(151, 'Bhavnagar', 7, NULL, NULL),
(152, 'Dahod', 7, NULL, NULL),
(153, 'Gandhinagar', 7, NULL, NULL),
(154, 'Kutch', 7, NULL, NULL),
(155, 'Mehsana', 7, NULL, NULL),
(156, 'Panchmahal', 7, NULL, NULL),
(157, 'Rajkot', 7, NULL, NULL),
(158, 'Sabarkantha', 7, NULL, NULL),
(159, 'Surat', 7, NULL, NULL),
(160, 'Vadodara', 7, NULL, NULL),
(161, 'Valsad', 7, NULL, NULL),
(162, 'Ambala', 8, NULL, NULL),
(163, 'Bhiwani', 8, NULL, NULL),
(164, 'Charkhi Dadri', 8, NULL, NULL),
(165, 'Faridabad', 8, NULL, NULL),
(166, 'Fatehabad', 8, NULL, NULL),
(167, 'Gurugram', 8, NULL, NULL),
(168, 'Hisar', 8, NULL, NULL),
(169, 'Jhajjar', 8, NULL, NULL),
(170, 'Jind', 8, NULL, NULL),
(171, 'Kaithal', 8, NULL, NULL),
(172, 'Karnal', 8, NULL, NULL),
(173, 'Kurukshetra', 8, NULL, NULL),
(174, 'Mewat', 8, NULL, NULL),
(175, 'Panchkula', 8, NULL, NULL),
(176, 'Panipat', 8, NULL, NULL),
(177, 'Rewari', 8, NULL, NULL),
(178, 'Rohtak', 8, NULL, NULL),
(179, 'Sirsa', 8, NULL, NULL),
(180, 'Sonipat', 8, NULL, NULL),
(181, 'Yamunanagar', 8, NULL, NULL),
(182, 'Bilaspur', 9, NULL, NULL),
(183, 'Chamba', 9, NULL, NULL),
(184, 'Hamirpur', 9, NULL, NULL),
(185, 'Kinnaur', 9, NULL, NULL),
(186, 'Kullu', 9, NULL, NULL),
(187, 'Mandi', 9, NULL, NULL),
(188, 'Shimla', 9, NULL, NULL),
(189, 'Sirmaur', 9, NULL, NULL),
(190, 'Solan', 9, NULL, NULL),
(191, 'Una', 9, NULL, NULL),
(192, 'Bokaro', 10, NULL, NULL),
(193, 'Chatra', 10, NULL, NULL),
(194, 'Deoghar', 10, NULL, NULL),
(195, 'Dhanbad', 10, NULL, NULL),
(196, 'Dumka', 10, NULL, NULL),
(197, 'East Singhbhum', 10, NULL, NULL),
(198, 'Garhwa', 10, NULL, NULL),
(199, 'Giridih', 10, NULL, NULL),
(200, 'Godda', 10, NULL, NULL),
(201, 'Gumla', 10, NULL, NULL),
(202, 'Jamtara', 10, NULL, NULL),
(203, 'Khunti', 10, NULL, NULL),
(204, 'Latehar', 10, NULL, NULL),
(205, 'Palamu', 10, NULL, NULL),
(206, 'Ramgarh', 10, NULL, NULL),
(207, 'Ranchi', 10, NULL, NULL),
(208, 'Sahibganj', 10, NULL, NULL),
(209, 'Seraikela Kharsawan', 10, NULL, NULL),
(210, 'Simdega', 10, NULL, NULL),
(211, 'West Singhbhum', 10, NULL, NULL),
(212, 'Bagalkote', 11, NULL, NULL),
(213, 'Ballari', 11, NULL, NULL),
(214, 'Bangalore Rural', 11, NULL, NULL),
(215, 'Bangalore Urban', 11, NULL, NULL),
(216, 'Belagavi', 11, NULL, NULL),
(217, 'Bellary', 11, NULL, NULL),
(218, 'Bidar', 11, NULL, NULL),
(219, 'Chamarajanagar', 11, NULL, NULL),
(220, 'Chikkamagaluru', 11, NULL, NULL),
(221, 'Chitradurga', 11, NULL, NULL),
(222, 'Dakshina Kannada', 11, NULL, NULL),
(223, 'Davanagere', 11, NULL, NULL),
(224, 'Hassan', 11, NULL, NULL),
(225, 'Haveri', 11, NULL, NULL),
(226, 'Kodagu', 11, NULL, NULL),
(227, 'Kolar', 11, NULL, NULL),
(228, 'Koppal', 11, NULL, NULL),
(229, 'Mandya', 11, NULL, NULL),
(230, 'Mysuru', 11, NULL, NULL),
(231, 'Raichur', 11, NULL, NULL),
(232, 'Ramanagara', 11, NULL, NULL),
(233, 'Shivamogga', 11, NULL, NULL),
(234, 'Tumakuru', 11, NULL, NULL),
(235, 'Udupi', 11, NULL, NULL),
(236, 'Uttara Kannada', 11, NULL, NULL),
(237, 'Alappuzha', 12, NULL, NULL),
(238, 'Ernakulam', 12, NULL, NULL),
(239, 'Idukki', 12, NULL, NULL),
(240, 'Kollam', 12, NULL, NULL),
(241, 'Kottayam', 12, NULL, NULL),
(242, 'Kozhikode', 12, NULL, NULL),
(243, 'Malappuram', 12, NULL, NULL),
(244, 'Palakkad', 12, NULL, NULL),
(245, 'Pathanamthitta', 12, NULL, NULL),
(246, 'Thiruvananthapuram', 12, NULL, NULL),
(247, 'Thrissur', 12, NULL, NULL),
(248, 'Wayanad', 12, NULL, NULL),
(249, 'Agar Malwa', 13, NULL, NULL),
(250, 'Alirajpur', 13, NULL, NULL),
(251, 'Anuppur', 13, NULL, NULL),
(252, 'Ashoknagar', 13, NULL, NULL),
(253, 'Balaghat', 13, NULL, NULL),
(254, 'Barwani', 13, NULL, NULL),
(255, 'Betul', 13, NULL, NULL),
(256, 'Bhopal', 13, NULL, NULL),
(257, 'Burhanpur', 13, NULL, NULL),
(258, 'Chhatarpur', 13, NULL, NULL),
(259, 'Chhindwara', 13, NULL, NULL),
(260, 'Dewas', 13, NULL, NULL),
(261, 'Dhar', 13, NULL, NULL),
(262, 'Guna', 13, NULL, NULL),
(263, 'Gwalior', 13, NULL, NULL),
(264, 'Harda', 13, NULL, NULL),
(265, 'Hoshangabad', 13, NULL, NULL),
(266, 'Indore', 13, NULL, NULL),
(267, 'Jabalpur', 13, NULL, NULL),
(268, 'Jhabua', 13, NULL, NULL),
(269, 'Katni', 13, NULL, NULL),
(270, 'Khandwa', 13, NULL, NULL),
(271, 'Khargone', 13, NULL, NULL),
(272, 'Mandla', 13, NULL, NULL),
(273, 'Mandsaur', 13, NULL, NULL),
(274, 'Morena', 13, NULL, NULL),
(275, 'Narmadapuram', 13, NULL, NULL),
(276, 'Neemuch', 13, NULL, NULL),
(277, 'Panna', 13, NULL, NULL),
(278, 'Raisen', 13, NULL, NULL),
(279, 'Rajgarh', 13, NULL, NULL),
(280, 'Ratlam', 13, NULL, NULL),
(281, 'Rewa', 13, NULL, NULL),
(282, 'Sagar', 13, NULL, NULL),
(283, 'Satna', 13, NULL, NULL),
(284, 'Sehore', 13, NULL, NULL),
(285, 'Shahdol', 13, NULL, NULL),
(286, 'Shajapur', 13, NULL, NULL),
(287, 'Sidhi', 13, NULL, NULL),
(288, 'Singrauli', 13, NULL, NULL),
(289, 'Tikamgarh', 13, NULL, NULL),
(290, 'Ujjain', 13, NULL, NULL),
(291, 'Umaria', 13, NULL, NULL),
(292, 'Vidisha', 13, NULL, NULL),
(293, 'Ahmednagar', 14, NULL, NULL),
(294, 'Akola', 14, NULL, NULL),
(295, 'Amravati', 14, NULL, NULL),
(296, 'Aurangabad', 14, NULL, NULL),
(297, 'Beed', 14, NULL, NULL),
(298, 'Bhandara', 14, NULL, NULL),
(299, 'Buldhana', 14, NULL, NULL),
(300, 'Chandrapur', 14, NULL, NULL),
(301, 'Dhule', 14, NULL, NULL),
(302, 'Gadchiroli', 14, NULL, NULL),
(303, 'Gondia', 14, NULL, NULL),
(304, 'Hingoli', 14, NULL, NULL),
(305, 'Jalna', 14, NULL, NULL),
(306, 'Jalna', 14, NULL, NULL),
(307, 'Kolhapur', 14, NULL, NULL),
(308, 'Latur', 14, NULL, NULL),
(309, 'Mumbai', 14, NULL, NULL),
(310, 'Nagpur', 14, NULL, NULL),
(311, 'Nanded', 14, NULL, NULL),
(312, 'Nashik', 14, NULL, NULL),
(313, 'Osmanabad', 14, NULL, NULL),
(314, 'Palghar', 14, NULL, NULL),
(315, 'Parbhani', 14, NULL, NULL),
(316, 'Pune', 14, NULL, NULL),
(317, 'Raigad', 14, NULL, NULL),
(318, 'Ratnagiri', 14, NULL, NULL),
(319, 'Sangli', 14, NULL, NULL),
(320, 'Satara', 14, NULL, NULL),
(321, 'Sindhudurg', 14, NULL, NULL),
(322, 'Solapur', 14, NULL, NULL),
(323, 'Thane', 14, NULL, NULL),
(324, 'Wardha', 14, NULL, NULL),
(325, 'Washim', 14, NULL, NULL),
(326, 'Yavatmal', 14, NULL, NULL),
(327, 'Bishnupur', 15, NULL, NULL),
(328, 'Churachandpur', 15, NULL, NULL),
(329, 'Imphal East', 15, NULL, NULL),
(330, 'Imphal West', 15, NULL, NULL),
(331, 'Senapati', 15, NULL, NULL),
(332, 'Tamenglong', 15, NULL, NULL),
(333, 'Thoubal', 15, NULL, NULL),
(334, 'Ukhrul', 15, NULL, NULL),
(335, 'East Garo Hills', 16, NULL, NULL),
(336, 'East Khasi Hills', 16, NULL, NULL),
(337, 'Jaintia Hills', 16, NULL, NULL),
(338, 'West Garo Hills', 16, NULL, NULL),
(339, 'West Khasi Hills', 16, NULL, NULL),
(340, 'Aizawl', 17, NULL, NULL),
(341, 'Champhai', 17, NULL, NULL),
(342, 'Kolasib', 17, NULL, NULL),
(343, 'Lunglei', 17, NULL, NULL),
(344, 'Mamit', 17, NULL, NULL),
(345, 'Saiha', 17, NULL, NULL),
(346, 'Serchhip', 17, NULL, NULL),
(347, 'Dimapur', 18, NULL, NULL),
(348, 'Kiphire', 18, NULL, NULL),
(349, 'Mokokchung', 18, NULL, NULL),
(350, 'Mon', 18, NULL, NULL),
(351, 'Peren', 18, NULL, NULL),
(352, 'Phek', 18, NULL, NULL),
(353, 'Tuensang', 18, NULL, NULL),
(354, 'Wokha', 18, NULL, NULL),
(355, 'Zunheboto', 18, NULL, NULL),
(356, 'Angul', 19, NULL, NULL),
(357, 'Balangir', 19, NULL, NULL),
(358, 'Balasore', 19, NULL, NULL),
(359, 'Bargarh', 19, NULL, NULL),
(360, 'Bhadrak', 19, NULL, NULL),
(361, 'Bolangir', 19, NULL, NULL),
(362, 'Dhenkanal', 19, NULL, NULL),
(363, 'Ganjam', 19, NULL, NULL),
(364, 'Ganjam', 19, NULL, NULL),
(365, 'Kalahandi', 19, NULL, NULL),
(366, 'Kandhamal', 19, NULL, NULL),
(367, 'Keonjhar', 19, NULL, NULL),
(368, 'Koraput', 19, NULL, NULL),
(369, 'Malkangiri', 19, NULL, NULL),
(370, 'Nabarangpur', 19, NULL, NULL),
(371, 'Nayagarh', 19, NULL, NULL),
(372, 'Nuapada', 19, NULL, NULL),
(373, 'Puri', 19, NULL, NULL),
(374, 'Rayagada', 19, NULL, NULL),
(375, 'Sambalpur', 19, NULL, NULL),
(376, 'Sonepur', 19, NULL, NULL),
(377, 'Subarnapur', 19, NULL, NULL),
(378, 'Jagatsinghpur', 19, NULL, NULL),
(379, 'Cuttack', 19, NULL, NULL),
(380, 'Khurda', 19, NULL, NULL),
(381, 'Amritsar', 20, NULL, NULL),
(382, 'Barnala', 20, NULL, NULL),
(383, 'Bathinda', 20, NULL, NULL),
(384, 'Faridkot', 20, NULL, NULL),
(385, 'Fatehgarh Sahib', 20, NULL, NULL),
(386, 'Ferozepur', 20, NULL, NULL),
(387, 'Gurdaspur', 20, NULL, NULL),
(388, 'Hoshiarpur', 20, NULL, NULL),
(389, 'Jalandhar', 20, NULL, NULL),
(390, 'Kapurthala', 20, NULL, NULL),
(391, 'Ludhiana', 20, NULL, NULL),
(392, 'Mansa', 20, NULL, NULL),
(393, 'Muktsar', 20, NULL, NULL),
(394, 'Patiala', 20, NULL, NULL),
(395, 'Rupnagar', 20, NULL, NULL),
(396, 'Sahibzada Ajit Singh Nagar', 20, NULL, NULL),
(397, 'Sangrur', 20, NULL, NULL),
(398, 'Tarn Taran', 20, NULL, NULL),
(399, 'Ajmer', 21, NULL, NULL),
(400, 'Alwar', 21, NULL, NULL),
(401, 'Banswara', 21, NULL, NULL),
(402, 'Baran', 21, NULL, NULL),
(403, 'Barmer', 21, NULL, NULL),
(404, 'Bikaner', 21, NULL, NULL),
(405, 'Bundi', 21, NULL, NULL),
(406, 'Churu', 21, NULL, NULL),
(407, 'Dausa', 21, NULL, NULL),
(408, 'Dholpur', 21, NULL, NULL),
(409, 'Dungarpur', 21, NULL, NULL),
(410, 'Hanumangarh', 21, NULL, NULL),
(411, 'Jaipur', 21, NULL, NULL),
(412, 'Jaisalmer', 21, NULL, NULL),
(413, 'Jalore', 21, NULL, NULL),
(414, 'Jhunjhunu', 21, NULL, NULL),
(415, 'Jodhpur', 21, NULL, NULL),
(416, 'Karauli', 21, NULL, NULL),
(417, 'Nagaur', 21, NULL, NULL),
(418, 'Pali', 21, NULL, NULL),
(419, 'Rajsamand', 21, NULL, NULL),
(420, 'Sawai Madhopur', 21, NULL, NULL),
(421, 'Sikar', 21, NULL, NULL),
(422, 'Tonk', 21, NULL, NULL),
(423, 'Udaipur', 21, NULL, NULL),
(424, 'East Sikkim', 22, NULL, NULL),
(425, 'North Sikkim', 22, NULL, NULL),
(426, 'South Sikkim', 22, NULL, NULL),
(427, 'West Sikkim', 22, NULL, NULL),
(428, 'Ariyalur', 23, NULL, NULL),
(429, 'Chengalpattu', 23, NULL, NULL),
(430, 'Chennai', 23, NULL, NULL),
(431, 'Coimbatore', 23, NULL, NULL),
(432, 'Cuddalore', 23, NULL, NULL),
(433, 'Dharmapuri', 23, NULL, NULL),
(434, 'Dindigul', 23, NULL, NULL),
(435, 'Erode', 23, NULL, NULL),
(436, 'Kanchipuram', 23, NULL, NULL),
(437, 'Kanyakumari', 23, NULL, NULL),
(438, 'Karur', 23, NULL, NULL),
(439, 'Krishnagiri', 23, NULL, NULL),
(440, 'Madurai', 23, NULL, NULL),
(441, 'Nagapattinam', 23, NULL, NULL),
(442, 'Namakkal', 23, NULL, NULL),
(443, 'Nilgiris', 23, NULL, NULL),
(444, 'Perambalur', 23, NULL, NULL),
(445, 'Pudukkottai', 23, NULL, NULL),
(446, 'Ramanathapuram', 23, NULL, NULL),
(447, 'Salem', 23, NULL, NULL),
(448, 'Sivagangai', 23, NULL, NULL),
(449, 'Thanjavur', 23, NULL, NULL),
(450, 'Theni', 23, NULL, NULL),
(451, 'Thoothukudi', 23, NULL, NULL),
(452, 'Tiruchirappalli', 23, NULL, NULL),
(453, 'Tirunelveli', 23, NULL, NULL),
(454, 'Vellore', 23, NULL, NULL),
(455, 'Villupuram', 23, NULL, NULL),
(456, 'Virudhunagar', 23, NULL, NULL),
(457, 'Adilabad', 24, NULL, NULL),
(458, 'Hyderabad', 24, NULL, NULL),
(459, 'Karimnagar', 24, NULL, NULL),
(460, 'Khammam', 24, NULL, NULL),
(461, 'Mahbubnagar', 24, NULL, NULL),
(462, 'Medak', 24, NULL, NULL),
(463, 'Nalgonda', 24, NULL, NULL),
(464, 'Nizamabad', 24, NULL, NULL),
(465, 'Rangareddy', 24, NULL, NULL),
(466, 'Warangal', 24, NULL, NULL),
(467, 'Dhalai', 25, NULL, NULL),
(468, 'Gomati', 25, NULL, NULL),
(469, 'North Tripura', 25, NULL, NULL),
(470, 'Sepahijala', 25, NULL, NULL),
(471, 'South Tripura', 25, NULL, NULL),
(472, 'Unakoti', 25, NULL, NULL),
(473, 'West Tripura', 25, NULL, NULL),
(474, 'Agra', 26, NULL, NULL),
(475, 'Aligarh', 26, NULL, NULL),
(476, 'Ambedkar Nagar', 26, NULL, NULL),
(477, 'Amethi', 26, NULL, NULL),
(478, 'Amroha', 26, NULL, NULL),
(479, 'Auraiya', 26, NULL, NULL),
(480, 'Ayodhya', 26, NULL, NULL),
(481, 'Azamgarh', 26, NULL, NULL),
(482, 'Badaun', 26, NULL, NULL),
(483, 'Baghpat', 26, NULL, NULL),
(484, 'Bahraich', 26, NULL, NULL),
(485, 'Ballia', 26, NULL, NULL),
(486, 'Banda', 26, NULL, NULL),
(487, 'Barabanki', 26, NULL, NULL),
(488, 'Bareilly', 26, NULL, NULL),
(489, 'Basti', 26, NULL, NULL),
(490, 'Bhadohi', 26, NULL, NULL),
(491, 'Bijnor', 26, NULL, NULL),
(492, 'Budaun', 26, NULL, NULL),
(493, 'Bulandshahr', 26, NULL, NULL),
(494, 'Chandauli', 26, NULL, NULL),
(495, 'Chitrakoot', 26, NULL, NULL),
(496, 'Deoria', 26, NULL, NULL),
(497, 'Etah', 26, NULL, NULL),
(498, 'Etawah', 26, NULL, NULL),
(499, 'Faizabad', 26, NULL, NULL),
(500, 'Farrukhabad', 26, NULL, NULL),
(501, 'Fatehpur', 26, NULL, NULL),
(502, 'Firozabad', 26, NULL, NULL),
(503, 'Gautam Buddha Nagar', 26, NULL, NULL),
(504, 'Ghaziabad', 26, NULL, NULL),
(505, 'Ghazipur', 26, NULL, NULL),
(506, 'Gonda', 26, NULL, NULL),
(507, 'Hamirpur', 26, NULL, NULL),
(508, 'Hapurm', 26, NULL, NULL),
(509, 'Hardoi', 26, NULL, NULL),
(510, 'Hathras', 26, NULL, NULL),
(511, 'Jalaun', 26, NULL, NULL),
(512, 'Jaunpur', 26, NULL, NULL),
(513, 'Jhansi', 26, NULL, NULL),
(514, 'Kannauj', 26, NULL, NULL),
(515, 'Kanpur Dehat', 26, NULL, NULL),
(516, 'Kanpur Nagar', 26, NULL, NULL),
(517, 'Kushinagar', 26, NULL, NULL),
(518, 'Lalitpur', 26, NULL, NULL),
(519, 'Lucknow', 26, NULL, NULL),
(520, 'Maharajganj', 26, NULL, NULL),
(521, 'Mahoba', 26, NULL, NULL),
(522, 'Mainpuri', 26, NULL, NULL),
(523, 'Mathura', 26, NULL, NULL),
(524, 'Mau', 26, NULL, NULL),
(525, 'Mirzapur', 26, NULL, NULL),
(526, 'Moradabad', 26, NULL, NULL),
(527, 'Muzaffarnagar', 26, NULL, NULL),
(528, 'Panchsheel Nagar', 26, NULL, NULL),
(529, 'Pilibhit', 26, NULL, NULL),
(530, 'Pratapgarh', 26, NULL, NULL),
(531, 'Rae Bareli', 26, NULL, NULL),
(532, 'Rampur', 26, NULL, NULL),
(533, 'Saharanpur', 26, NULL, NULL),
(534, 'Sambhal', 26, NULL, NULL),
(535, 'Sant Ravidas Nagar', 26, NULL, NULL),
(536, 'Shahjahanpur', 26, NULL, NULL),
(537, 'Shamli', 26, NULL, NULL),
(538, 'Siddharth Nagar', 26, NULL, NULL),
(539, 'Sitapur', 26, NULL, NULL),
(540, 'Sonbhadra', 26, NULL, NULL),
(541, 'Sultanpur', 26, NULL, NULL),
(542, 'Unnao', 26, NULL, NULL),
(543, 'Varanasi', 26, NULL, NULL),
(544, 'Almora', 27, NULL, NULL),
(545, 'Bageshwar', 27, NULL, NULL),
(546, 'Champawat', 27, NULL, NULL),
(547, 'Dehradun', 27, NULL, NULL),
(548, 'Haridwar', 27, NULL, NULL),
(549, 'Nainital', 27, NULL, NULL),
(550, 'Pauri Garhwal', 27, NULL, NULL),
(551, 'Pithoragarh', 27, NULL, NULL),
(552, 'Rudraprayag', 27, NULL, NULL),
(553, 'Tehri Garhwal', 27, NULL, NULL),
(554, 'Udham Singh Nagar', 27, NULL, NULL),
(555, 'Uttarkashi', 27, NULL, NULL),
(556, 'Alipurduar', 28, NULL, NULL),
(557, 'Bankura', 28, NULL, NULL),
(558, 'Birbhum', 28, NULL, NULL),
(559, 'Burdwan', 28, NULL, NULL),
(560, 'Cooch Behar', 28, NULL, NULL),
(561, 'Dakshin Dinajpur', 28, NULL, NULL),
(562, 'Darjeeling', 28, NULL, NULL),
(563, 'Hooghly', 28, NULL, NULL),
(564, 'Howrah', 28, NULL, NULL),
(565, 'Jalpaiguri', 28, NULL, NULL),
(566, 'Jhargram', 28, NULL, NULL),
(567, 'Malda', 28, NULL, NULL),
(568, 'Murshidabad', 28, NULL, NULL),
(569, 'Nadia', 28, NULL, NULL),
(570, 'North 24 Parganas', 28, NULL, NULL),
(571, 'Paschim Bardhaman', 28, NULL, NULL),
(572, 'Paschim Medinipur', 28, NULL, NULL),
(573, 'Purba Bardhaman', 28, NULL, NULL),
(574, 'Purba Medinipur', 28, NULL, NULL),
(575, 'South 24 Parganas', 28, NULL, NULL),
(576, 'Uttar Dinajpur', 28, NULL, NULL),
(577, 'Kolkata', 28, NULL, NULL),
(578, 'Delhi', 29, NULL, NULL),
(579, 'Karaikal', 30, NULL, NULL),
(580, 'Mahe', 30, NULL, NULL),
(581, 'Puducherry', 30, NULL, NULL),
(582, 'Yanam', 30, NULL, NULL),
(583, 'Anantnag', 31, NULL, NULL),
(584, 'Bandipora', 31, NULL, NULL),
(585, 'Doda', 31, NULL, NULL),
(586, 'Ganderbal', 31, NULL, NULL),
(587, 'Jammu', 31, NULL, NULL),
(588, 'Kathua', 31, NULL, NULL),
(589, 'Kishtwar', 31, NULL, NULL),
(590, 'Poonch', 31, NULL, NULL),
(591, 'Rajouri', 31, NULL, NULL),
(592, 'Reasi', 31, NULL, NULL),
(593, 'Samba', 31, NULL, NULL),
(594, 'Srinagar', 31, NULL, NULL),
(595, 'Udhampur', 31, NULL, NULL),
(596, 'Kargil', 32, NULL, NULL),
(597, 'Leh', 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_11_100623_create_categories_table', 1),
(6, '2025_04_11_103111_create_products_table', 1),
(7, '2025_06_01_015424_create_carts_table', 1),
(8, '2025_06_01_015614_create_orders_table', 1),
(9, '2025_06_01_015752_create_order_items_table', 1),
(12, '2025_06_11_063832_create_abouts_table', 2),
(13, '2025_06_11_064004_create_privacy_policys_table', 2),
(14, '2025_06_11_121050_create_banners_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policys`
--

CREATE TABLE `privacy_policys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policys`
--

INSERT INTO `privacy_policys` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>This privacy policy applies only to Le Pensions Stays &amp; Enterprises Pvt Ltd and not to the websites of other companies, individuals, or organizations whose website links we may provide.</p>\r\n\r\n<h3><strong>Purpose of Collection of your Information</strong></h3>\r\n\r\n<p>The information collected through our website is for the safety of our guests and to understand who we are accommodating at our properties for the safety of everyone involved. In addition, website user and guest data are collected for statistical analysis purposes.</p>\r\n\r\n<p>We also collect our guests&rsquo; nationality, date of birth, gender, for statistical analysis purposes. When you visit our websites, we may automatically log your IP address (the unique address which identifies your computer on the internet). We use IP addresses to help us manage our websites and to collect broad demographic information for analytics use.</p>\r\n\r\n<p>For reservations, we send guests confirmation emails and will, therefore, require your email address. We operate an opt-in email policy &ndash; you will be asked to give us consent if you would like to receive newsletters via email.</p>\r\n\r\n<p>Exceptions may occur in the case of us needing to contact previous guests in relation to post or lost property.</p>\r\n\r\n<h3><strong>Reservation Data</strong></h3>\r\n\r\n<p>We require the following information to confirm your booking reservation with us:</p>\r\n\r\n<ul>\r\n	<li>Your name</li>\r\n	<li>Telephone or mobile number &ndash; in case of an emergency</li>\r\n	<li>Gender</li>\r\n	<li>Nationality</li>\r\n	<li>Date of Birth</li>\r\n	<li>Identification data i.e. Passport, Driving License details</li>\r\n	<li>Credit card details, including the three-digit code that appears on the back of your credit card</li>\r\n	<li>Date of arrival and departure</li>\r\n	<li>Email address</li>\r\n</ul>\r\n\r\n<p>Upon arrival, we will require the same information from your fellow travelers. In the case of Indian customers, a govt address proof is mandatory and in the case of travelers from abroad, a passport with a valid Indian Visa is mandatory. Please ensure they are all aware of this to ensure a quick and efficient check-in.</p>\r\n\r\n<h3><strong>Credit Card Data</strong></h3>\r\n\r\n<p>In order to guarantee reservations via our website or through phone (not restricted to these two), you will be required to make an advance payment which may or may not be equivalent to the full reservation price. This payment can be done using a debit/credit card, online wallets, or net banking. For the same, we have partnered with a large payment solutions provider &ldquo;Razorpay&rdquo;.</p>\r\n\r\n<p>Incred Stays &amp; Enterprise Pvt Ltd indemnifies itself against all data use on and reservations made via third-party websites/agents. Please refer to their relevant privacy policy and terms and conditions.</p>\r\n\r\n<h3><strong>Guest Personal Data</strong></h3>\r\n\r\n<p>We respect our guest&rsquo;s privacy and will not sell or disclose guests&rsquo; personal information to any other person, business, or third party unless in the case of an emergency and/or it is seen as part of our duty of care.</p>\r\n\r\n<h3><strong>Keeping Our Data Upto Date</strong></h3>\r\n\r\n<p>As an accommodation and leisure provider, we have guests returning to our properties on a regular basis. It is your duty to inform us if any of your personal information which we hold about you needs to be updated. We may contact you at any time if you have booked accommodation with us and we suspect we hold false information about you.</p>\r\n\r\n<h3><strong>Changes to Our Privacy Policy</strong></h3>\r\n\r\n<p>We may change our Privacy Policy at any time. Continued use of our websites signifies that you agree to any such changes. Please be aware that the privacy policy is in English. For any support in a foreign language please contact us at&nbsp;<a href=\"javascript:void(0);\">sales@gmail.com</a>.</p>', NULL, '2025-06-11 01:25:35', '2025-06-11 01:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `description`, `image`, `price`, `discount_price`, `stock`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sakib', NULL, 1, '<p>dsfdsgsdfg dfgsdfg</p>', 'xSmXgBNN3PPM3qBrk2d3YaRoiYfvLhvBLCwYizuo.jpg', 100.00, 75.00, 2, 0, NULL, '2025-06-10 23:28:10', '2025-06-10 23:28:11'),
(2, 'Navy Blue Striped Polo T-Shirt', NULL, 1, '<p>sdfasdfdasf</p>', NULL, 100.00, 75.00, 2, 0, NULL, '2025-06-11 01:42:51', '2025-06-11 01:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', NULL, NULL),
(2, 'Arunachal Pradesh', NULL, NULL),
(3, 'Assam', NULL, NULL),
(4, 'Bihar', NULL, NULL),
(5, 'Chhattisgarh', NULL, NULL),
(6, 'Goa', NULL, NULL),
(7, 'Gujarat', NULL, NULL),
(8, 'Haryana', NULL, NULL),
(9, 'Himachal Pradesh', NULL, NULL),
(10, 'Jharkhand', NULL, NULL),
(11, 'Karnataka', NULL, NULL),
(12, 'Kerala', NULL, NULL),
(13, 'Madhya Pradesh', NULL, NULL),
(14, 'Maharashtra', NULL, NULL),
(15, 'Manipur', NULL, NULL),
(16, 'Meghalaya', NULL, NULL),
(17, 'Mizoram', NULL, NULL),
(18, 'Nagaland', NULL, NULL),
(19, 'Odisha', NULL, NULL),
(20, 'Punjab', NULL, NULL),
(21, 'Rajasthan', NULL, NULL),
(22, 'Sikkim', NULL, NULL),
(23, 'Tamil Nadu', NULL, NULL),
(24, 'Telangana', NULL, NULL),
(25, 'Tripura', NULL, NULL),
(26, 'Uttar Pradesh', NULL, NULL),
(27, 'Uttarakhand', NULL, NULL),
(28, 'West Bengal', NULL, NULL),
(29, 'Delhi', NULL, NULL),
(30, 'Puducherry', NULL, NULL),
(31, 'Jammu and Kashmir', NULL, NULL),
(32, 'Ladakh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `state_id` int(11) DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `pin_code` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `state_id`, `city_id`, `pin_code`, `address`, `email`, `user_type`, `mobile`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sakib', 'Ansari', 0, 0, NULL, NULL, 'sakib@gmail.com', 'admin', '9045269853', '$2y$12$h/BxkrINbNAXG9mqX4gOWOXlLCy.zEMPTLi5O6sXamlw9ENw0N6zG', NULL, '2025-06-10 05:57:54', '2025-06-10 05:57:54'),
(2, 'Sakib', 'Testing', 26, 480, '201206', 'testing', 'testing@gmail.com', 'user', '9045269853', '$2y$12$2HmOPU16Lpw4TOkGr0n1cOKCGvNpc2MKStTR4WCDUTxMDHfgTT7b6', NULL, '2025-06-11 03:27:47', '2025-06-11 03:27:47'),
(3, 'Sakib', 'Testing', 26, 480, '201206', 'testing', 'mr.sakib011@gmail.com', 'user', '9045269853', '$2y$12$gl18S/A1om8FixtOAzTziOqKU33ADNl6FCERQNnPm4VRQu.iLa0Xy', NULL, '2025-06-11 03:29:57', '2025-06-12 03:38:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policys`
--
ALTER TABLE `privacy_policys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privacy_policys_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policys`
--
ALTER TABLE `privacy_policys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
