-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 02:59 AM
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
  `permalink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads_id`, `subject`, `image`, `permalink`) VALUES
(4, 'Marketing Ads', 'ads/AS5YtrHmTgd0QURgALkMaocbb3wXTe9FkbRPw15O.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(5, 'Marketing Ads', 'ads/jI5nqHmUBYuXr3yODh0XdJ5u4KANvUEw30XYumhj.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(6, 'Marketing Ads', 'ads/Bsqm6cOtGNOAcmANcPbes7bX0838byNkFvlCM0OD.jpeg', 'http://www.gmf-aeroasia.co.id/services/');

-- --------------------------------------------------------

--
-- Table structure for table `birthday_card`
--

CREATE TABLE `birthday_card` (
  `birthday_card_id` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `permalink` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthday_card`
--

INSERT INTO `birthday_card` (`birthday_card_id`, `subject`, `image`, `permalink`) VALUES
(1, 'Birthday in Desember', 'birthdaycard/HbsMwC6kNNE0rtyMHuKPwSSqJyTmie0njhNhDR6r.jpeg', 'http://gmf-aeroasia.co.id/birthday/desember'),
(2, 'Birthday in November', 'birthdaycard/GbRQXV5gTCb3womhENY17lQYM2cMlcCgizT3wXpI.jpeg', 'http://gmf-aeroasia.co.id/birthday/november');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `image` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `company_role` varchar(100) DEFAULT NULL,
  `business_model` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `est_date` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `customer_type` varchar(100) DEFAULT NULL,
  `shareholder` varchar(50) DEFAULT NULL,
  `alliance` varchar(50) DEFAULT NULL,
  `MRO` varchar(50) DEFAULT NULL,
  `fleet_size` int(50) DEFAULT NULL,
  `destination` int(50) DEFAULT NULL,
  `customer_since` int(50) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`image`, `name`, `region`, `country`, `company_role`, `business_model`, `status`, `est_date`, `type`, `customer_type`, `shareholder`, `alliance`, `MRO`, `fleet_size`, `destination`, `customer_since`, `company_id`) VALUES
('company/o8D6GM15uzUY1gVUhlu3GM0RSnXgerAIrQMXWzwh.jpeg', 'Lion', NULL, NULL, NULL, NULL, 'Active', 1982, 'FSC', NULL, 'Hanjin Group', NULL, NULL, 0, 0, 0, 1),
('company/UnbmR7wJ3CZnn49afsM38UffHfM009ivp8tB5mcN.png', 'Citilink', 'Domestic', 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 5),
('company/oaEbOTlb6XesD5Qddyu2WuBhMcrybTuNTJJOik1i.png', 'Korean Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 6),
('company/E9tM6l49EYO3vww9lEvTzHwIqOjRFXiP5uj14tCo.jpeg', 'Nam Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 7),
('company/achqeSXWqGav4dHZmvFvdE6pZmsNybkApldhMmeQ.png', 'Garuda Indonesia', 'Domestic', 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 8);

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
(4, 5, 4),
(6, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `closed` date DEFAULT NULL,
  `sender` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complaint` varchar(2000) NOT NULL,
  `file` varchar(1000) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Open',
  `user_customer_id` int(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `date`, `closed`, `sender`, `service`, `subject`, `complaint`, `file`, `status`, `user_customer_id`, `company_id`) VALUES
(7, '2019-12-12', '2019-12-22', 'Juan', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', 'None', 'Receive', 14, 1),
(8, '2019-11-11', NULL, 'Felix', 'Base Maintenance', 'Complaint Base Maintenance', 'Complaint body', NULL, 'Open', 18, 8);

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
(6, 12, 1);

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
  `rating` int(10) NOT NULL,
  `aspect_to_improve` varchar(1000) NOT NULL,
  `remark` varchar(1000) NOT NULL,
  `user_customer_id` int(100) NOT NULL,
  `company_id` int(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `service_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_project`
--

INSERT INTO `feedback_project` (`feedback_project_id`, `date`, `sender`, `rating`, `aspect_to_improve`, `remark`, `user_customer_id`, `company_id`, `project_id`, `service_id`) VALUES
(7, '2019-11-09', 'manasye', 5, 'Cooperative,Comunication', 'blablabla', 13, 1, 4, 5),
(8, '2019-11-09', 'manasye', 3, 'Cooperative,Comunication', 'blablabla', 13, 1, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `gmf_cp`
--

CREATE TABLE `gmf_cp` (
  `gmf_cp_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gmf_cp`
--

INSERT INTO `gmf_cp` (`gmf_cp_id`, `name`, `position`, `phone`, `email`) VALUES
(7, 'Dseni', 'Staff Engineering', '08127382919', 'ysf@gmail.com'),
(8, 'Dewi', 'Staff Marketing', '081273829182', 'deni@gmail.com'),
(9, 'Pol', 'Staff Marketing', '081273829182', 'pol@gmail.com'),
(10, 'Pola', 'Staff Marketing', '081273829182', 'pola@gmail.com'),
(12, 'Adit', 'Staff Marketing', '081273829182', 'adit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `permalink` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `subject`, `image`, `permalink`) VALUES
(1, 'Newsletter Marketing', 'newsletter/vyeF4DY6IJ3VlFOvCwl5TtIzjLUlEq7T5WhK370H.jpeg', 'http://www.gmf-aeroasia.co.id'),
(2, 'Newsletter Marketing', 'newsletter/M1ImtRw5S7hrXo1Z0irrdLkKPJSrF2sLFJznCErW.jpeg', 'http://www.gmf-aeroasia.co.id');

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
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `name`, `start`, `finish`, `status`, `quantity`, `project_type`, `rating`, `A/C_Reg`, `location`, `type`, `company_id`) VALUES
(2, 'KA Project 1', '2019-12-12', '2020-01-01', 'On Going', 1, 'Base Maintenance', 'Not Rated', 'Project 1', 'GAH3', '6', 5),
(3, 'KA Project 2', '2019-12-12', '2020-01-01', 'On Going', 1, 'Base Maintenance', 'Not Rated', 'Project 2', 'GAH3', '5', 5),
(4, 'LA Project 1', '2019-12-12', '2020-01-01', 'On Going', 1, 'Line Maintenance', 'Not Rated', 'Project 1', 'GAH3', '3', 1),
(5, 'KA Project 1', '2019-12-12', '2020-01-01', 'Closed', 1, 'Base Maintenance', '5', 'Project 1', 'GAH3', '6', 1),
(6, 'LA Project 1', '2019-12-12', '2020-01-01', 'On Going', 1, 'Line Maintenance', 'Not Rated', 'Project 1', 'GAH3', '2', 1);

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
  `permalink` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion_card`
--

INSERT INTO `religion_card` (`religion_card_id`, `subject`, `image`, `religion`, `date`, `permalink`) VALUES
(1, 'Christmas', 'religioncard/xgQceZe4nlnre72y2o0wSRATks7mDCHe9rt6kx88.jpeg', 'Kristen', '2019-12-25', 'www.gmf-aeroasia.co.id/religioncard/christmas'),
(2, 'Eid Mubarak', 'religioncard/1jL45pbjznafkQNrhx2dW2T4SkkPhmzlOiUxEfdq.jpeg', 'Islam', '2020-05-23', 'www.gmf-aeroasia.co.id/religioncard/eid'),
(3, 'Nyepi', 'religioncard/Jd89RtvxPyFKCCC6eAO5xKaowILwRMTxitI1B1L8.webp', 'Hindu', '2020-03-25', 'www.gmf-aeroasia.co.id/religioncard/nyepi');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `large_image` varchar(1000) NOT NULL,
  `small_image1` varchar(1000) NOT NULL,
  `small_image2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `name`, `detail`, `large_image`, `small_image1`, `small_image2`) VALUES
(5, 'Engineering Service', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'serviceimage/VR3xSUx80R95obah0NQlcMvwmqIClpZKcOXsRVQJ.jpeg', 'service image/YM6pakogcIRwb9xXL467Q6Ufhi8HacJCTCbFiikt.jpeg', 'service image/mczcOP7KzpH2Rfgicxh8NWZJ3HvOzDpyxpHumP4b.jpeg'),
(6, 'Material & Logistic Service', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'serviceimage/jAubfWXM1x2vnYhgkCHBgffoOCKLOG21JTYL8WBn.jpeg', 'service image/NASjch3wCi1F5b9wEsqSkJhk3fpoOu90xAXrEzU0.jpeg', 'service image/VVnlO1qYC6A8ey9r7SoBynsaogu2e8tGJbnYtKMc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `pass_raw` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `pass_raw`, `role`, `status`) VALUES
(10, 'mans', '$2y$10$O6hmFVKdYOYtEmjE2MZTIer7FTLrVHfJBwJM.6fu4P5byBUIB3EDe', '1234', 'Customer', 'Active'),
(13, 'felix', '$2y$10$KumYeGrMQkZed9R1tF/5COLK7wVZGWKrLdDsezFqreGs6jDqXWiGW', '12121', 'Customer', 'Inactive'),
(14, 'jfp', '$2y$10$WKweNWLRo6E1ytRKoRJY3.zVemR98U08L6UHpzV50BNtDtFED3XDW', '1212', 'Admin', 'Active'),
(15, 'juanf', '$2y$10$NdLvh8VWl9e8dkHcle7F/ucoIzGfoIhIE35jqUBrk7L6kSfDMSODK', '1212', 'Customer', 'Active'),
(19, 'vius', '$2y$10$R5.lRzeXDqiAa/Nj17ys.ONDcF.UWJVpDe6Q6SWk4VDEBgJTo9m1m', '1212', 'Guest', 'Active'),
(20, 'juanf', '$2y$10$5PyJ7ZBfqTD31gQpv.KFJOJe3GT5iODiWi6hfkhXxirm6h.I3k7B.', '1212', 'Customer', 'Active'),
(21, 'jfptrg', '$2y$10$OmPFN9yQP5ziKZcEKqJNP.IcrCFzYJs3tLGTkHZFVkTSrMWThM.VC', '1212', 'Customer', 'Active'),
(22, 'fetrg', '$2y$10$.cRQCYSdkXflqcugej0S/OAw/5ET8F9sVPN1n.Bvk8iOGU.8EKGNm', '1212', 'Customer', 'Active'),
(23, 'ferry', '$2y$10$RJ36Ug.C.F6lGezgkHD6fu3UGPstdyjwas7xv0etxg58qF6cUvMSO', '1212', 'Customer', 'Active'),
(24, 'ferry', '$2y$10$f8mx0KGN8TOi3Auas4biT.bN7CAVaT21kVYlZqkTBPEJGgzfllAXa', '1212', 'Customer', 'Active'),
(25, 'ferry', '$2y$10$n.7RmSHb5XWif.h0JB/mYeHfCyHIuovnkA6XCcvbYIimcM0sgqB2O', '1212', 'Customer', 'Active'),
(26, 'ferry', '$2y$10$IMsm/EMKCrqe9P/POy6hS.E3Cl/49PxwdhO5qTSokJFpr1RUGiQce', '1212', 'Customer', 'Active'),
(27, 'ferry', '$2y$10$VkKbqYzkNNPkJYYWbqGlE.px/FfPsToFO14X.puCpXY.yrnQ35MvG', '1212', 'Customer', 'Active'),
(28, 'ferr', '$2y$10$Hye4xEFlYvhKpWu4CzEI9.uTndpybMCn7nN9iwnybZ12Re93uvtO2', '1212', 'Customer', 'Active');

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
(13, 'manasye', 'GM', 'Islam', '1998-12-12', 'mans@gmail.com', 'Key Person', 1, 10),
(14, 'Juan Felix', 'GM', 'Kristen', '1998-12-12', 'jfpt@gmail.com', 'Key Person', 1, 13),
(15, 'Juan', 'GM', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Key Person', 1, 15),
(17, 'Juan', 'GM', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Key Person', 8, 21),
(18, 'Felix', 'Engineer', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Tech', 8, 22),
(19, 'Ferry', 'Engineer', 'Islam', '1998-12-12', 'ferry@gmail.com', 'Tech', 8, 23),
(21, 'Ferry', 'Engineer', 'Islam', '1998-12-12', 'ferry@gmail.com', 'Tech', 8, 28);

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
  ADD KEY `customer_ibfk_1` (`user_customer_id`);

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
  ADD KEY `idx_user` (`user_customer_id`),
  ADD KEY `idx_company` (`company_id`),
  ADD KEY `idx_service` (`service_id`);

--
-- Indexes for table `gmf_cp`
--
ALTER TABLE `gmf_cp`
  ADD PRIMARY KEY (`gmf_cp_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

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
  MODIFY `ads_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `birthday_card`
--
ALTER TABLE `birthday_card`
  MODIFY `birthday_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_ads`
--
ALTER TABLE `company_ads`
  MODIFY `company_ads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cp_company`
--
ALTER TABLE `cp_company`
  MODIFY `cp_company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  MODIFY `feedback_nonproject_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback_project`
--
ALTER TABLE `feedback_project`
  MODIFY `feedback_project_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gmf_cp`
--
ALTER TABLE `gmf_cp`
  MODIFY `gmf_cp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `religion_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `user_admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_customer`
--
ALTER TABLE `user_customer`
  MODIFY `user_customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  ADD CONSTRAINT `company_ads_ibfk_1` FOREIGN KEY (`ads_id`) REFERENCES `ads` (`ads_id`),
  ADD CONSTRAINT `company_ads_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_customer_id`) REFERENCES `user_customer` (`user_customer_id`);

--
-- Constraints for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_customer_id`) REFERENCES `user_customer` (`user_customer_id`);

--
-- Constraints for table `feedback_project`
--
ALTER TABLE `feedback_project`
  ADD CONSTRAINT `idx_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `idx_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`),
  ADD CONSTRAINT `idx_user` FOREIGN KEY (`user_customer_id`) REFERENCES `user_customer` (`user_customer_id`);

--
-- Constraints for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD CONSTRAINT `user_id_idx` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_customer`
--
ALTER TABLE `user_customer`
  ADD CONSTRAINT `user_customer_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `user_customer_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_guest`
--
ALTER TABLE `user_guest`
  ADD CONSTRAINT `user_guest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
