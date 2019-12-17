-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 02:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads_id` int(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads_id`, `subject`, `image`, `permalink`, `created_at`, `updated_at`) VALUES
(16, 'Marketing Ads', 'ads/Xo8xgcyizKzv3RHx4W94FyqXxQfliaxZDvI8iAFc.jpeg', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-13 04:11:13', '2019-11-13 04:11:13'),
(17, 'Engineer Ads', 'ads/YSnSlaJHZaHPDvCYdyyu5AtJXTiZ82FBGorLzOox.jpeg', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-13 04:11:32', '2019-11-13 04:11:32'),
(18, 'Engineer Ads', 'ads/KElK0OpSUGq1hyNuKZa1hVmPZQ3Ey0tlAYQrvYcl.jpeg', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-16 05:12:16', '2019-11-16 05:12:16'),
(19, 'Engineer Ads', 'ads/0zXPIlvMXFf9jLjXp8Tf9birQ7cbcLKc0Jn9wBQ3.jpeg', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-16 05:12:46', '2019-11-16 05:12:46'),
(20, 'Engineer Ads', 'ads/7kHDrAedatmqRECYp3xBFEdnqtjYARnWYVT8W6GL.jpeg', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-16 05:13:00', '2019-11-16 05:13:00'),
(21, 'Marketing Ads', 'ads/hdob44CESZW1SGSPfiL8hbNho6C1KvFdS84V0Lvr.rtf', 'http://www.gmf-aeroasia.co.id/services/', '2019-11-17 23:21:30', '2019-11-17 23:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `birthday_card`
--

CREATE TABLE `birthday_card` (
  `birthday_card_id` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `permalink` varchar(1000) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthday_card`
--

INSERT INTO `birthday_card` (`birthday_card_id`, `subject`, `image`, `permalink`, `created_at`, `updated_at`) VALUES
(5, 'Birthday in Desember', 'birthdaycard/LlK7MK2i8UO2nvHUZ4I5NHD3PlUKtN1FELHeJtfh.jpeg', 'http://gmf-aeroasia.co.id/birthday/desember', '2019-11-13 04:12:36.000000', '2019-12-01 02:09:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `image` varchar(1000) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `company_role` varchar(100) DEFAULT NULL,
  `business_model` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Active',
  `est_date` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `customer_type` varchar(100) DEFAULT NULL,
  `shareholder` varchar(50) DEFAULT NULL,
  `alliance` varchar(50) DEFAULT NULL,
  `MRO` varchar(50) DEFAULT NULL,
  `fleet_size` int(50) DEFAULT NULL,
  `destination` int(50) DEFAULT NULL,
  `customer_since` int(50) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`image`, `name`, `region`, `country`, `company_role`, `business_model`, `status`, `est_date`, `type`, `customer_type`, `shareholder`, `alliance`, `MRO`, `fleet_size`, `destination`, `customer_since`, `company_id`, `created_at`, `updated_at`) VALUES
('company/o8D6GM15uzUY1gVUhlu3GM0RSnXgerAIrQMXWzwh.jpeg', 'Lion', NULL, NULL, NULL, NULL, 'Active', 1982, 'FSC', NULL, 'Hanjin Group', NULL, NULL, 0, 0, 0, 1, NULL, NULL),
('company/oaEbOTlb6XesD5Qddyu2WuBhMcrybTuNTJJOik1i.png', 'Korean Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 6, NULL, NULL),
('company/E9tM6l49EYO3vww9lEvTzHwIqOjRFXiP5uj14tCo.jpeg', 'Nam Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 7, NULL, NULL),
('company/hgV0hrPti2S1kjhyweXlNFzmrbBk7um1P5eZk5eb.jpeg', 'Garuda Indonesia', 'Domestic', 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_ads`
--

CREATE TABLE `company_ads` (
  `company_ads_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_ads`
--

INSERT INTO `company_ads` (`company_ads_id`, `company_id`, `ads_id`) VALUES
(9, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `closed` date DEFAULT NULL,
  `sender` varchar(100) NOT NULL,
  `service` varchar(1000) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complaint` varchar(2000) NOT NULL,
  `file` varchar(1000) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Open',
  `user_id` int(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `date`, `closed`, `sender`, `service`, `subject`, `complaint`, `file`, `status`, `user_id`, `company_id`) VALUES
(10, '2019-11-13', NULL, 'Felix', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', 'complaint/cDrziHgordoBHahU4yVrXglzB0C7YrosG0XBrwbn.pdf', 'Open', 22, 8),
(11, '2019-11-13', NULL, 'manasye', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', 'complaint/uMWCUYEOkWn89DHG9zFvwiwZeiL95s4KmGdltDU8.pdf', 'Open', 10, 1),
(12, '2019-11-16', NULL, 'manasye', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', 'complaint/yBHSiTVLtxsAYydhjAoGMWqZY3eSYdCHp8Dzlyt8.pdf', 'Open', 10, 1),
(13, '2019-05-11', NULL, 'manasye', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', 'complaint/Pq7DGTMv22DfqF6WCtdaDUGCJffljscmOpzJmtKU.pdf', 'Open', 10, 1),
(14, '2019-05-11', NULL, 'manasye', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', '', 'Open', 10, 1),
(15, '2019-05-11', NULL, 'manasye', 'Base Maintenance', 'asd', 'asdasd', '', 'Open', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_company`
--

CREATE TABLE `cp_company` (
  `cp_company_id` int(100) NOT NULL,
  `gmf_cp_id` int(100) NOT NULL,
  `company_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cp_company`
--

INSERT INTO `cp_company` (`cp_company_id`, `gmf_cp_id`, `company_id`) VALUES
(1, 6, 8),
(2, 7, 8),
(3, 8, 1),
(4, 9, 1),
(5, 10, 1),
(6, 12, 1),
(7, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_nonproject`
--

CREATE TABLE `feedback_nonproject` (
  `feedback_nonproject_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `rating` varchar(100) NOT NULL,
  `subject` varchar(5000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `sender` varchar(1000) NOT NULL,
  `user_customer_id` int(100) NOT NULL,
  `company_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_nonproject`
--

INSERT INTO `feedback_nonproject` (`feedback_nonproject_id`, `date`, `rating`, `subject`, `description`, `sender`, `user_customer_id`, `company_id`) VALUES
(5, '2019-11-09', '5', 'Feedback Nonproject 1', 'Feedback Nonproject 1 description', 'manasye', 13, 1),
(6, '2019-11-09', '4', 'Feedback Nonproject 2', 'Feedback Nonproject 2 description', 'Juan Felix', 14, 1),
(7, '2019-11-09', '3', 'Feedback Nonproject 3', 'Feedback Nonproject 3 description', 'Juan', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_project`
--

CREATE TABLE `feedback_project` (
  `feedback_project_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `sender` varchar(1000) NOT NULL,
  `rating` float DEFAULT NULL,
  `aspect_to_improve` varchar(1000) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `user_id` int(100) NOT NULL,
  `company_id` int(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `service_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_project`
--

INSERT INTO `feedback_project` (`feedback_project_id`, `date`, `sender`, `rating`, `aspect_to_improve`, `remark`, `user_id`, `company_id`, `project_id`, `service_id`) VALUES
(20, '2019-12-17', 'manasye', 2.5, 'Product Quality', NULL, 10, 1, 4, 8),
(21, '2019-12-17', 'manasye', 1.5, 'Quality Assurance Team', NULL, 10, 1, 4, 18),
(22, '2019-12-17', 'manasye', 2.5, 'Product Quality', NULL, 10, 1, 4, 8),
(23, '2019-12-17', 'manasye', 1.5, 'Quality Assurance Team', NULL, 10, 1, 4, 18),
(24, '2019-12-17', 'manasye', 2.5, 'Product Quality', NULL, 10, 1, 6, 8),
(25, '2019-12-17', 'manasye', 1.5, 'Quality Assurance Team', NULL, 10, 1, 6, 18),
(26, '2019-12-17', 'manasye', 2, 'Product Quality', NULL, 10, 1, 6, 8),
(27, '2019-12-17', 'manasye', 4, 'Quality Assurance Team', NULL, 10, 1, 6, 18),
(28, '2019-12-17', 'manasye', 0.5, 'Product Quality', NULL, 10, 1, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_maint`
--

CREATE TABLE `fleet_maint` (
  `fleet_maint_id` int(255) NOT NULL,
  `product` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `maint_provider` varchar(1000) DEFAULT NULL,
  `suitable` varchar(100) DEFAULT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleet_maint`
--

INSERT INTO `fleet_maint` (`fleet_maint_id`, `product`, `type`, `quantity`, `maint_provider`, `suitable`, `company_id`) VALUES
(1, 'Airframe', 'B747-9', 17, NULL, NULL, 1),
(2, 'Airframe', 'B747-823', 20, NULL, 'future', 1),
(3, 'Airframe', 'B72-20', 2, NULL, 'current', 1),
(4, 'Engine', 'B72-20', 2, NULL, 'current', 1),
(5, 'Apu', 'B72-20', 2, NULL, 'current', 1),
(6, 'Component', 'B72-20', 2, NULL, 'current', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gmf_cp`
--

CREATE TABLE `gmf_cp` (
  `gmf_cp_id` int(100) NOT NULL,
  `image` varchar(1000) NOT NULL DEFAULT 'user/default.png',
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gmf_cp`
--

INSERT INTO `gmf_cp` (`gmf_cp_id`, `image`, `name`, `position`, `phone`, `email`) VALUES
(7, 'user/default.png', 'Dseni', 'Staff Engineering', '08127382919', 'ysf@gmail.com'),
(8, 'user/default.png', 'Dewi', 'Staff Marketing', '081273829182', 'deni@gmail.com'),
(9, 'user/default.png', 'Pol', 'Staff Marketing', '081273829182', 'pol@gmail.com'),
(10, 'user/default.png', 'Pola', 'Staff Marketing', '081273829182', 'pola@gmail.com'),
(12, 'user/default.png', 'Adit', 'Staff Marketing', '081273829182', 'adit@gmail.com'),
(13, 'user/1gFg8YRuuDSYhDdayVnQjZyq6mHhOgxAUX0swPMf.jpeg', 'Edak', 'Staff Marketing', '081273829182', 'adit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(255) NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'text',
  `sender` varchar(1000) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `receiver` varchar(1000) DEFAULT NULL,
  `rcv_user_id` int(255) DEFAULT NULL,
  `already_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message`, `type`, `sender`, `user_id`, `receiver`, `rcv_user_id`, `already_read`, `created_at`, `updated_at`) VALUES
(1, 'asdasdasdada', 'text', 'admin', 14, 'manasye', 10, 1, '2019-11-21 17:00:00', NULL),
(2, 'asas', 'text', 'manasye', 10, 'admin', NULL, 1, '2019-11-20 17:00:00', NULL),
(3, 'asas', 'text', 'manasye', 10, 'admin', NULL, 1, '2019-11-22 17:00:00', NULL),
(4, '\"adkoqwkdqodkwqodkasldkqwlkdq\"', 'text', 'manasye', 10, 'admin', NULL, 1, '2019-11-26 04:08:53', NULL),
(5, '\"adkoqwkdqodkwqodkasldkqwlkdq\"', 'text', 'admin', 14, 'manasye', 10, 1, '2019-11-26 04:11:22', NULL),
(6, '\"adkoqwkdqodkwqodkasldkqwlkdq\"', 'text', 'Juan Felix', 13, 'admin', NULL, 1, '2019-12-03 22:40:39', NULL),
(7, '\"adkoqwkdqodkwqodkasldkqwlkdq\"', 'text', 'Juan', 15, 'admin', NULL, 1, '2019-12-04 21:10:15', NULL),
(8, 'yaya', 'text', 'admin', 14, 'Juan', 15, 1, '2019-12-04 21:10:47', NULL),
(9, '\"adkoqwkdqodkwqodkasldkqwlkdq\"', 'text', 'Ferry', 29, 'admin', NULL, 0, '2019-12-04 21:22:17', NULL),
(12, 'yaya', 'text', 'admin', 14, 'Juan', 15, 1, '2019-12-11 03:55:08', NULL),
(13, 'hai', 'text', 'admin', 14, 'Juan', 15, 1, '2019-12-11 03:56:19', NULL),
(14, 'hai', 'text', 'admin', 14, 'Juan', 15, 1, '2019-12-11 04:07:35', NULL),
(15, 'hai', 'text', 'admin', 14, 'Juan', 15, 1, '2019-12-11 04:15:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `permalink` varchar(1000) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `subject`, `image`, `permalink`, `created_at`, `updated_at`) VALUES
(5, 'Newsletter Marketing', 'newsletter/CaqymiV66ncxkntXbgPsKgEOEArAx9WOYR1RK2yW.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-13 05:42:50.000000', '2019-11-13 05:42:50.000000'),
(6, 'Newsletter Marketing', 'newsletter/2aGHOpfLU9ccs8QtZHfzhxyDPIYf5Ok3lgqB3Cix.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-13 05:43:00.000000', '2019-11-13 05:43:00.000000'),
(7, 'Newsletter Marketing', 'newsletter/OwBt9IjLXY7gIoQgVxslGMwDhXt5rG4B1RLOOrdT.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:23:44.000000', '2019-11-16 05:23:44.000000'),
(8, 'Newsletter Marketing', 'newsletter/kYLhDgapxYxO3UfQm2OSJ4ORt2PHtdSuCJPWpz85.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:24:22.000000', '2019-11-16 05:24:22.000000'),
(9, 'Newsletter Marketing', 'newsletter/zxCCCISTGtqcWM18nnNZ1bOftswKgAuk1ft2qEcD.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:24:47.000000', '2019-11-16 05:24:47.000000'),
(10, 'Newsletter Marketing', 'newsletter/C2kSlU9YaWIHE9swJc3theN5j8GDLsYJBRDUd5Et.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:28:26.000000', '2019-11-16 05:28:26.000000'),
(11, 'Newsletter Marketing', 'newsletter/C9oAFF5M0GRmeizNrCikG9fcOGFhoZRDqyp6JNHP.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:31:29.000000', '2019-11-16 05:31:29.000000'),
(12, 'Newsletter Marketing', 'newsletter/KXPyhl6tYk1HcyhWT5yGD3B6C1CM41pfC3bCZdhC.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:33:36.000000', '2019-11-16 05:33:36.000000'),
(13, 'Newsletter Marketing', 'newsletter/tNtKyPiH7YSTvMCDkraKMP4KNTkrLfLsC42TAzAQ.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:35:43.000000', '2019-11-16 05:35:43.000000'),
(14, 'Newsletter Marketing', 'newsletter/CXMwbw7Q1l7l0x0A7g1xP2kJIAsSycGlcQ0KjhGq.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:35:43.000000', '2019-11-16 05:35:43.000000'),
(15, 'Newsletter Marketing', 'newsletter/UbJ0Cvd8lZTQ2EZ8NqWyl3PoUCD0AZjzq61Zi6A3.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:35:43.000000', '2019-11-16 05:35:43.000000'),
(16, 'Newsletter Marketing', 'newsletter/IdweoKaJzN9jXtLY1dcoqx3Z2hnfzRuhyh67XgiJ.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:36:33.000000', '2019-11-16 05:36:33.000000'),
(17, 'Newsletter Marketing', 'newsletter/1Z20tsqk93wQjw7CFDHpQQu2mQj8njpDAuvdjdf0.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:36:59.000000', '2019-11-16 05:36:59.000000'),
(18, 'Newsletter Marketing', 'newsletter/GPWGYJXgZdQQqZheWOKUGn3uW8NwBkwYaBFMfAxe.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:39:05.000000', '2019-11-16 05:39:05.000000'),
(19, 'Newsletter Marketing', 'newsletter/E7o3nhvtXsKXqjfIcJxlXpWTIzSY9Anpw3X7eGsN.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:41:35.000000', '2019-11-16 05:41:35.000000'),
(20, 'Newsletter Marketing', 'newsletter/JqMTWOXzgaI7QoWUkRPfAxHkKn222WaPEeKwuqNu.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:44:11.000000', '2019-11-16 05:44:11.000000'),
(21, 'Newsletter Marketing', 'newsletter/mB7jczrIay6JP6dDrEBXgQmDQfsZSxyRNoXKzTHJ.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:46:34.000000', '2019-11-16 05:46:34.000000'),
(22, 'Newsletter Marketing', 'newsletter/MrY8PbJlKjtprSIOdiKLIEIIxAfzVo13Db1gRMbP.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:56:48.000000', '2019-11-16 05:56:48.000000'),
(23, 'Newsletter Marketing', 'newsletter/Qxcb7mSiTHXHTmoRUzLVxdxV7yv7p2VoNb6v2cEh.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 05:57:31.000000', '2019-11-16 05:57:31.000000'),
(24, 'Newsletter Marketing', 'newsletter/Y9kt5NrfYU44GbizbTZnA72g4TNapVl11RGxD5UB.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 06:00:53.000000', '2019-11-16 06:00:53.000000'),
(25, 'Newsletter Marketing', 'newsletter/49Y29fPcVTuo75iJ9H1D7LX4uTIr4ZjHPwUnBljC.jpeg', 'http://www.gmf-aeroasia.co.id', '2019-11-16 06:01:17.000000', '2019-11-16 06:01:17.000000'),
(26, 'Newsletter Marketing', '', 'http://www.gmf-aeroasia.co.id', '2019-11-17 23:42:48.000000', '2019-11-17 23:42:48.000000'),
(27, 'Newsletter Marketing', '', 'http://www.gmf-aeroasia.co.id', '2019-11-17 23:46:36.000000', '2019-11-17 23:46:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start` date NOT NULL,
  `finish` date NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'On Going',
  `quantity` int(50) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `rating` varchar(50) NOT NULL DEFAULT 'Not Rated',
  `A/C_Reg` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `jobcard_status` varchar(1000) DEFAULT NULL,
  `mdr_status` varchar(1000) DEFAULT NULL,
  `mrm_status` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `name`, `start`, `finish`, `status`, `quantity`, `project_type`, `rating`, `A/C_Reg`, `location`, `type`, `company_id`, `jobcard_status`, `mdr_status`, `mrm_status`) VALUES
(4, 'LA Project 1', '2019-12-12', '2020-01-01', 'On Going', 1, 'Line Maintenance', '2', 'Project 1', 'GAH3', '3', 1, NULL, NULL, NULL),
(5, 'KA Project 1', '2019-12-12', '2020-01-01', 'Closed', 1, 'Base Maintenance', '5', 'Project 1', 'GAH3', '6', 1, NULL, NULL, NULL),
(6, 'LA Project 1', '2019-12-12', '2020-01-01', 'On Going', 1, 'Line Maintenance', '2', 'Project 1', 'GAH3', '2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_service`
--

CREATE TABLE `project_service` (
  `project_service_id` int(100) NOT NULL,
  `project_id` int(100) NOT NULL,
  `service_id` int(100) NOT NULL,
  `rating` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `religion_card`
--

CREATE TABLE `religion_card` (
  `religion_card_id` int(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `permalink` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion_card`
--

INSERT INTO `religion_card` (`religion_card_id`, `subject`, `image`, `religion`, `date`, `permalink`, `created_at`, `updated_at`) VALUES
(5, 'Christmas', 'religioncard/4e40DGMrAcCHptg7DCvHHEeSHSJaMsNlUX3Sz2Tw.jpeg', 'Kristen', '2019-12-01', 'www.gmf-aeroasia.co.id/religioncard/christmas', '2019-11-13 06:32:37', '2019-11-13 06:35:36'),
(6, 'Nyepi', 'religioncard/rRD1e1y8S3Pdhh2AHOdKutXgjQoXahGmGwaCLH96.webp', 'Hindu', '2019-11-30', 'www.gmf-aeroasia.co.id/religioncard/nyepi', '2019-11-13 06:33:44', '2019-11-13 06:35:40'),
(7, 'Eid Mubarak Holiday Card', 'religioncard/19OrE946ST73UqcKodV2LZaZpw0XbBalvHVyeVzN.jpeg', 'Islam', '2019-11-29', 'www.gmf-aeroasia.co.id/religioncard/eid', '2019-11-13 06:34:19', '2019-11-13 06:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `reply_complaint`
--

CREATE TABLE `reply_complaint` (
  `reply_complaint_id` int(100) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `sender_role` enum('Customer','Admin','','') NOT NULL,
  `user_id` int(100) NOT NULL,
  `complaint_id` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_complaint`
--

INSERT INTO `reply_complaint` (`reply_complaint_id`, `description`, `sender_role`, `user_id`, `complaint_id`, `created_at`, `updated_at`) VALUES
(3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium', 'Customer', 13, 10, '2019-11-12 17:00:00', '2019-11-12 17:00:00'),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium', 'Admin', 14, 10, '2019-11-13 17:00:00', '2019-11-13 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `permalink` varchar(1000) NOT NULL DEFAULT 'http://www.gmf-aeroasia.co.id/service',
  `large_image` varchar(1000) NOT NULL,
  `small_image1` varchar(1000) NOT NULL,
  `small_image2` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `name`, `detail`, `permalink`, `large_image`, `small_image1`, `small_image2`, `created_at`, `updated_at`) VALUES
(8, 'Outstation Line Maintenance', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/Y5wu0ceb3IYk9S0ByMbkjVbWPN4Vp3RasaoD7XQq.jpeg', 'serviceimage/R3izwGE5DmajROqlegmzrbdoE3LHFOZeuRJUR2VP.jpeg', 'serviceimage/nRIKSl62JT8nWvU3IhYBQvbRJXDYLtCstJ8BD2LA.jpeg', '2019-12-16 17:23:32', '2019-12-16 17:23:32'),
(9, 'Logistic & Material Service', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/h2agtBkNuecwlCs0XvgSGwW0j5gxghx4i03WTCkm.jpeg', 'serviceimage/0b3jDSIRKZ0BiPsPaW1p41WZMzEdptIcaGEZzTgN.jpeg', 'serviceimage/fRF8fnKVVY1R9H2D04oO9W2Y1TC64SvQA5wWHJkQ.jpeg', '2019-12-16 17:23:48', '2019-12-16 17:23:48'),
(10, 'Learning / Training', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/fbUeogqdBfrRisBfxsI8UumIAstzF5nnUbGLRE0l.jpeg', 'serviceimage/8I4GgQdoL3UbFlD28STgzau7QM2EOmDnoK9qwvfS.jpeg', 'serviceimage/u3tJnQ4yjBuwdzLWQwIGvLcHM0MavAeysssAIqGO.jpeg', '2019-12-16 17:24:05', '2019-12-16 17:24:05'),
(11, 'Engineering Services', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/uqDHFBNz6q1Jk5tGW4UM2ZZ3S9IYbiAAV6OuESCL.jpeg', 'serviceimage/0KMYDcaRzI7wrRldFIti0iMkPbN7ztID0HXRMRh2.jpeg', 'serviceimage/fCMJeqIXucmvnXcbyVMIceTUHbIzhBaQyH4ZMwas.jpeg', '2019-12-16 17:24:19', '2019-12-16 17:24:19'),
(12, 'Power Service (IGTE)', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/VSIbFXQoksYKgIg5r3TDMDYypwkBKPovUcNtvCqf.jpeg', 'serviceimage/eLcDldgeagkxZACDGeljPHqgJgenfwrWGYVw2Ifl.jpeg', 'serviceimage/XKT7dVhbLuJxtRwR8qalEKhpAifqOkhmjHSXAaFf.jpeg', '2019-12-16 17:24:31', '2019-12-16 17:24:31'),
(13, 'Component Services', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/hBgJcgCbcM62hnBofJW6mRnc7flIkEbEK4RCYSK2.jpeg', 'serviceimage/2nAWBx8VPE1CER3Ma7PFV4XvltOBUs8ZGNvNFmT5.jpeg', 'serviceimage/xf2ncuf8rOcZORYsK2d6l91LGmRN4Q09zKSUOlKe.jpeg', '2019-12-16 17:24:52', '2019-12-16 17:24:52'),
(14, 'Line Maintenance', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/7FISNvfBZLFl8dGZPdAP6EoG2KNJ9LXj1MyuazWj.jpeg', 'serviceimage/SaT4XP0ecWorKVQyXvIuUZdSnnePJRBIo2xnrXNH.jpeg', 'serviceimage/wrRnBxKjmETzyHY6WGA8goQ7OTSFEhch8jkAOOCR.jpeg', '2019-12-16 17:25:04', '2019-12-16 17:25:04'),
(15, 'Engine Services', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/RO6VBwkHL1legmAHMHocFMmRUC98is0NwzL0SvLG.jpeg', 'serviceimage/iKEzVIfDrGMr8qUrdBR2SYS3hSyWw1iMs1m4BP46.jpeg', 'serviceimage/uDMWlbB2y0lrXSBFqFhtOQVSHD1hHutyfIYevpic.jpeg', '2019-12-16 17:25:11', '2019-12-16 17:25:11'),
(16, 'Ground Support', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/TaNYzDsPPRjwmfLEtCllRe8Lwut4WENvy2ulYa5U.jpeg', 'serviceimage/T1X9j0zpEq1AFTsHyMcR4Xh850vgxx35LoiBQ8jM.jpeg', 'serviceimage/cdoJU7JGZ1ec4pLTshj4yL1Tb26Z2WV75CwEvANz.jpeg', '2019-12-16 17:25:17', '2019-12-16 17:25:17'),
(17, 'Facility / IT / Other Services', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/dXqQUZJPy0BGDZYCtXzVs3iT1OkUBk0DFaYs2mYh.jpeg', 'serviceimage/ievZ1Vqck3iXvHv1A1dYiAIG61GT1ynVOF392hLm.jpeg', 'serviceimage/FcQBE8hb59O58JbnIa5Vlwn9iaworisGnpB68EWd.jpeg', '2019-12-16 17:25:31', '2019-12-16 17:25:31'),
(18, 'Base Maintenance', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/gNJWXbxBnzb9Qrdu2w2wJsA1EQTnGCW0rEvaLt8e.jpeg', 'serviceimage/NebZJltF4nCR72sANLQm3Gm2RrYxBgulrCR4kRDs.jpeg', 'serviceimage/y6V2Q3utVUYNLGUEmni6UwIhJ52pB6jXFKLeOITC.jpeg', '2019-12-16 17:32:44', '2019-12-16 17:32:44'),
(19, 'Cabin Maintenance', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'http://www.gmf-aeroasia.co.id/service', 'serviceimage/emYrI1dscPfJLK7I3p6J6E6MPcG6QVD66YsKz8Sy.jpeg', 'serviceimage/OAz5KCkxJL0M30FulkMAwkgU7Xx0iV0DwElIHAez.jpeg', 'serviceimage/4Q31j40hXllQ4VUTxpLY2aHJtCKUxuAC2LrrTMIj.jpeg', '2019-12-17 06:20:26', '2019-12-17 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `image` varchar(1000) NOT NULL DEFAULT 'user/default.png',
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `pass_raw` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `image`, `username`, `password`, `pass_raw`, `role`, `status`) VALUES
(10, 'user/Br1XNv8nzJt6hlk0Iq6fBpVWXLMIRg6uSSwuibxV.jpeg', 'mans', '$2y$10$O6hmFVKdYOYtEmjE2MZTIer7FTLrVHfJBwJM.6fu4P5byBUIB3EDe', '$2y$10$O6hmFVKdYOYtEmjE2MZTIer7FTLrVHfJBwJM.6fu4P5byBUIB3EDe', 'Customer', 'Active'),
(13, 'user/default.png', 'felix', '$2y$10$VG18oVVKuE5wv9zGHU.uGeZ5KUyRalce4rivYQlg18OtoYsYLB6a2', '12121', 'Customer', 'Inactive'),
(14, 'user/default.png', 'jfp', '$2y$10$WKweNWLRo6E1ytRKoRJY3.zVemR98U08L6UHpzV50BNtDtFED3XDW', '1212', 'Admin', 'Active'),
(15, 'user/default.png', 'juanf', '$2y$10$NdLvh8VWl9e8dkHcle7F/ucoIzGfoIhIE35jqUBrk7L6kSfDMSODK', '1212', 'Customer', 'Active'),
(19, 'user/default.png', 'vius', '$2y$10$R5.lRzeXDqiAa/Nj17ys.ONDcF.UWJVpDe6Q6SWk4VDEBgJTo9m1m', '1212', 'Guest', 'Active'),
(22, 'user/default.png', 'fetrg', '$2y$10$.cRQCYSdkXflqcugej0S/OAw/5ET8F9sVPN1n.Bvk8iOGU.8EKGNm', '1212', 'Customer', 'Active'),
(28, 'user/default.png', 'ferr', '$2y$10$Hye4xEFlYvhKpWu4CzEI9.uTndpybMCn7nN9iwnybZ12Re93uvtO2', '1212', 'Customer', 'Active'),
(29, 'user/default.png', 'feryy', '$2y$10$nAGWM0EPUWGscF9rptHtC.QdnrwLxowtT0O6IVhCGFy4Iy0GuDE7i', '1212', 'Customer', 'Active'),
(34, 'user/kGs9hRDj3gF5yBVj9MCGN6UFpI3vCSLlgwVyZtYp.jpeg', 'feryyyy', '$2y$10$LClVHOlg.PNw6s4rjS.M8Ovs4SJhtGEyPY7MET1Q9fBNHvAxSPSmy', '12121', 'Customer', 'Active'),
(37, 'user/default.png', 'ronald12', '$2y$10$CvEtKckufnT3yjW3f2NOt.WXHgqjTksBcudbh4LAgoXWwjkuvWt72', '1212', 'Customer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `user_admin_id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `position` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`user_admin_id`, `name`, `position`, `division`, `user_id`) VALUES
(1, 'Juan', 'GM', 'Marketing', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_birthday_card`
--

CREATE TABLE `user_birthday_card` (
  `user_birthday_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `birthday_card_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_customer`
--

CREATE TABLE `user_customer` (
  `user_customer_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `customer_role` varchar(100) NOT NULL,
  `company_id` int(50) NOT NULL,
  `user_id` int(100) NOT NULL DEFAULT -999
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_customer`
--

INSERT INTO `user_customer` (`user_customer_id`, `name`, `position`, `religion`, `birthday`, `email`, `customer_role`, `company_id`, `user_id`) VALUES
(13, 'manasye', 'GM', 'Islam', '1998-12-01', 'mans@gmail.com', 'Key Person', 1, 10),
(14, 'Juan Felix', 'GM', 'Kristen', '1998-12-12', 'jfpt@gmail.com', 'Key Person', 1, 13),
(15, 'Juan', 'GM', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Key Person', 1, 15),
(18, 'Felix', 'Engineer', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Tech', 8, 22),
(21, 'Ferry', 'Engineer', 'Islam', '1998-12-12', 'ferry@gmail.com', 'Tech', 8, 28),
(22, 'Ferry', 'Engineer', 'Islam', '1998-05-12', 'ferry@gmail.com', 'Tech', 8, 29),
(23, 'Ferry', 'Engineer', 'Kristen', '1998-12-12', 'ferry@gmail.com', 'Tech', 8, 34),
(26, 'Ronald12', 'Engineer', 'Islam', '1998-05-12', 'ron12@gmail.com', 'Tech', 8, 37);

-- --------------------------------------------------------

--
-- Table structure for table `user_guest`
--

CREATE TABLE `user_guest` (
  `user_guest_id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `position` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_guest`
--

INSERT INTO `user_guest` (`user_guest_id`, `name`, `position`, `division`, `user_id`) VALUES
(1, 'Vius', 'GM', 'TO', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `birthday_card`
--
ALTER TABLE `birthday_card`
  ADD PRIMARY KEY (`birthday_card_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `company_ads`
--
ALTER TABLE `company_ads`
  ADD PRIMARY KEY (`company_ads_id`),
  ADD KEY `idx_ads` (`ads_id`),
  ADD KEY `idx_company` (`company_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `idx_company` (`company_id`),
  ADD KEY `complaint_ibfk_2` (`user_id`);

--
-- Indexes for table `cp_company`
--
ALTER TABLE `cp_company`
  ADD PRIMARY KEY (`cp_company_id`);

--
-- Indexes for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  ADD PRIMARY KEY (`feedback_nonproject_id`),
  ADD KEY `user_id` (`user_customer_id`);

--
-- Indexes for table `feedback_project`
--
ALTER TABLE `feedback_project`
  ADD PRIMARY KEY (`feedback_project_id`),
  ADD KEY `idx_company` (`company_id`),
  ADD KEY `idx_service` (`service_id`),
  ADD KEY `idx_user_feedback` (`user_id`);

--
-- Indexes for table `fleet_maint`
--
ALTER TABLE `fleet_maint`
  ADD PRIMARY KEY (`fleet_maint_id`);

--
-- Indexes for table `gmf_cp`
--
ALTER TABLE `gmf_cp`
  ADD PRIMARY KEY (`gmf_cp_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id_message` (`user_id`),
  ADD KEY `rcvr_id_message` (`rcv_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `company_id_project` (`company_id`);

--
-- Indexes for table `project_service`
--
ALTER TABLE `project_service`
  ADD PRIMARY KEY (`project_service_id`);

--
-- Indexes for table `religion_card`
--
ALTER TABLE `religion_card`
  ADD PRIMARY KEY (`religion_card_id`);

--
-- Indexes for table `reply_complaint`
--
ALTER TABLE `reply_complaint`
  ADD PRIMARY KEY (`reply_complaint_id`),
  ADD KEY `complaint_id_idx` (`complaint_id`),
  ADD KEY `sender_id_idx` (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`user_admin_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `user_birthday_card`
--
ALTER TABLE `user_birthday_card`
  ADD PRIMARY KEY (`user_birthday_id`),
  ADD KEY `birth_id_bu` (`birthday_card_id`),
  ADD KEY `user_id_bu` (`user_id`);

--
-- Indexes for table `user_customer`
--
ALTER TABLE `user_customer`
  ADD PRIMARY KEY (`user_customer_id`),
  ADD UNIQUE KEY `idx_user` (`user_id`) USING BTREE,
  ADD KEY `idx_company` (`company_id`);

--
-- Indexes for table `user_guest`
--
ALTER TABLE `user_guest`
  ADD PRIMARY KEY (`user_guest_id`),
  ADD KEY `idx_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ads_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `birthday_card`
--
ALTER TABLE `birthday_card`
  MODIFY `birthday_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_ads`
--
ALTER TABLE `company_ads`
  MODIFY `company_ads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cp_company`
--
ALTER TABLE `cp_company`
  MODIFY `cp_company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  MODIFY `feedback_nonproject_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback_project`
--
ALTER TABLE `feedback_project`
  MODIFY `feedback_project_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `fleet_maint`
--
ALTER TABLE `fleet_maint`
  MODIFY `fleet_maint_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gmf_cp`
--
ALTER TABLE `gmf_cp`
  MODIFY `gmf_cp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_service`
--
ALTER TABLE `project_service`
  MODIFY `project_service_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religion_card`
--
ALTER TABLE `religion_card`
  MODIFY `religion_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reply_complaint`
--
ALTER TABLE `reply_complaint`
  MODIFY `reply_complaint_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `user_admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_birthday_card`
--
ALTER TABLE `user_birthday_card`
  MODIFY `user_birthday_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_customer`
--
ALTER TABLE `user_customer`
  MODIFY `user_customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_guest`
--
ALTER TABLE `user_guest`
  MODIFY `user_guest_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_ads`
--
ALTER TABLE `company_ads`
  ADD CONSTRAINT `company_ads_ibfk_1` FOREIGN KEY (`ads_id`) REFERENCES `ads` (`ads_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_ads_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_customer_id`) REFERENCES `user_customer` (`user_customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_project`
--
ALTER TABLE `feedback_project`
  ADD CONSTRAINT `idx_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `idx_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `idx_user_feedback` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `rcvr_id_message` FOREIGN KEY (`rcv_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_message` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `company_id_project` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE;

--
-- Constraints for table `reply_complaint`
--
ALTER TABLE `reply_complaint`
  ADD CONSTRAINT `complaint_id_idx` FOREIGN KEY (`complaint_id`) REFERENCES `complaint` (`complaint_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sender_id_idx` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD CONSTRAINT `user_id_idx` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_birthday_card`
--
ALTER TABLE `user_birthday_card`
  ADD CONSTRAINT `birth_id_bu` FOREIGN KEY (`birthday_card_id`) REFERENCES `birthday_card` (`birthday_card_id`),
  ADD CONSTRAINT `user_id_bu` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_customer`
--
ALTER TABLE `user_customer`
  ADD CONSTRAINT `user_customer_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_customer_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_guest`
--
ALTER TABLE `user_guest`
  ADD CONSTRAINT `user_guest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
