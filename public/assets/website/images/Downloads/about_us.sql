-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2025 at 12:38 AM
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
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `properties_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `happy_guests` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `happy_guests_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `happy_guests_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hosting_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hosting_experience_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hosting_experience_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `short_description`, `image`, `properties`, `properties_icon`, `properties_count`, `happy_guests`, `happy_guests_icon`, `happy_guests_count`, `hosting_experience`, `hosting_experience_icon`, `hosting_experience_count`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Our Story', '<p>Based in Pune, we are a husband and wife team, fueled by our shared passion for immersive travel experiences. The spark ignited on a certain occasion when we thought to ourselves of how travel should be more than just a change of location, but a change of perspective altogether!</p>', 'aboutus/images/aboutus_image_1747996454_about-banner.jpg', 'Properties', 'aboutus/icons/properties_icon_1747996454_component-2-1-1.png', '50+', 'Happy Guests', 'aboutus/icons/happy_guests_icon_1748084539_happy-guests-icon-1747652209-component-3-1.png', '10+', 'Hosting Experience', 'aboutus/icons/hosting_experience_icon_1747996454_component-4-1-1.png', '8+ years', '<p>So to begin with, we curated a list of the &#39;best homestays to live&rsquo; in and around the places we had explored, tailored to our preferences and started recommending them within our inner circle through a WhatsApp group. The genuine joy, warmth and positivity with which our suggestions were received, motivated us to turn our passion into a purposeful venture.</p>\r\n\r\n<p>And thus, in 2023 staycationer.in was launched, a dedicated online platform which, keeping in mind the purpose of one&rsquo;s travel, strives to provide a hassle free, most relaxing and one of a kind of an experience of curated stays.</p>\r\n\r\n<p>With a commitment to redefining the way we experience stays, we invite you to join us on this empathetic journey. Staycationer for us is not just a business but a testament to the empathy, care and attention to detail that we both wish to bring to the world of hospitality.</p>', '2025-05-19 01:03:55', '2025-05-24 09:02:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
