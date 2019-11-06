-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 09:46 AM
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
(4, 'Marketing Ads', 'ads/7HNP8kF6OQVYRnSb7hCgno9KS8rbFSUJixPzCBzj.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(5, 'Marketing Ads', 'ads/sOAE9CFZoRMUX2KLflvqbdFu2iNrULZZY9g9ddxi.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(6, 'Marketing Ads', 'ads/UlEba4cHSBF1srGYJw7uilE7didewui2vA83zcVb.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(7, 'Marketing Ads', 'ads/rlyhb0I3vtAbj5K4LTF7MYDCzfHIUADEJff2RGBD.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(8, 'Marketing Ads', 'ads/GwhPVhcNrSpW4VeSPw1LseFM3GZtDVnyFmFV94l3.jpeg', 'http://www.gmf-aeroasia.co.id/services/'),
(9, 'Marketing Ads', 'ads/b3XPU0reEzi9zAeycxnRYFzYjotFp13vt58UmUib.jpeg', 'http://www.gmf-aeroasia.co.id/services/');

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
(1, 'Birthday in Desember', 'birthday card/nfXBrv5NjbFn2rd8r8vrAKogj8lelcZDYXPdixx8.jpeg', 'http://gmf-aeroasia.co.id/birthday/desember'),
(2, 'Birthday in November', 'birthday card/7NvZDjSL57jbbKloChomjzTDwQWdpawXj941y1OP.jpeg', 'http://gmf-aeroasia.co.id/birthday/november');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
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

INSERT INTO `company` (`name`, `region`, `country`, `company_role`, `business_model`, `status`, `est_date`, `type`, `customer_type`, `shareholder`, `alliance`, `MRO`, `fleet_size`, `destination`, `customer_since`, `company_id`) VALUES
('Lion', NULL, NULL, NULL, NULL, 'Active', 1982, 'FSC', NULL, 'Hanjin Group', NULL, NULL, 0, 0, 0, 1),
('Korean Airli', 'Domestic', 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 5),
('Korean Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 6),
('Korean Airlines', NULL, 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 7),
('Garuda', 'Domestic', 'Indonesia', 'Passanger', 'Operator', 'Active', 1962, 'FSC', 'Existing Customer(Retail)', 'Hanjin Group', 'SkyTeam', 'Jin Air(LCC)', 174, 150, 2018, 8);

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
(6, 5, 5),
(8, 5, 9);

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
(5, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_nonproject`
--

CREATE TABLE `feedback_nonproject` (
  `feedback_nonproject_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `rating` varchar(100) NOT NULL,
  `subject` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_project`
--

CREATE TABLE `feedback_project` (
  `feedback_project_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `sender` varchar(1000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `project_type` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `aspect_to_improve` varchar(1000) NOT NULL,
  `remark` varchar(1000) NOT NULL,
  `user_customer_id` int(100) NOT NULL,
  `company_id` int(100) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_project`
--

INSERT INTO `feedback_project` (`feedback_project_id`, `date`, `sender`, `location`, `project_type`, `rating`, `aspect_to_improve`, `remark`, `user_customer_id`, `company_id`, `project_id`) VALUES
(1, '2019-11-11', 'Juan', 'GAH3', 'Base Maintenance', 4, 'Communication', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 14, 1, 0);

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
(7, 'Deni', 'Staff Marketing', '081273829182', 'deni@gmail.com'),
(8, 'Dewi', 'Staff Marketing', '081273829182', 'deni@gmail.com'),
(9, 'Pol', 'Staff Marketing', '081273829182', 'pol@gmail.com'),
(10, 'Pola', 'Staff Marketing', '081273829182', 'pola@gmail.com');

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
(1, 'Newsletter Marketing', 'newsletter/KItUMoSnwLcWbScxU3gdOYfh7l9wlU8CkIVRpHUg.jpeg', 'http://www.gmf-aeroasia.co.id');

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
(5, 'KA Project 1', '2019-12-12', '2020-01-01', 'Closed', 1, 'Base Maintenance', '5', 'Project 1', 'GAH3', '6', 1);

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
(1, 'Christmas', 'religion card/D466WWlZUJHLh3NPIigFbvlIDWojw1BvL5VuY8Ck.jpeg', 'Kristen', '2019-12-25', 'www.gmf-aeroasia.co.id/religioncard/christmas'),
(2, 'Eid Mubarak', 'religion card/F4DYJYvo40Mn5l4UJXudgp2zP8DCLoT7hwPM47pZ.jpeg', 'Kristen', '2020-05-23', 'www.gmf-aeroasia.co.id/religioncard/christmas'),
(3, 'Nyepi', 'religion card/RQBubO3NHGhDV8m7YJBk9vghUbOObLfeZquANCH1.jpeg', 'Hindu', '2020-03-25', 'www.gmf-aeroasia.co.id/religioncard/nyepi');

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
(5, 'Engineering Service', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'service image/7FK0FTMQNQgzUdte8kIo798C9m2LIjctLK72pXXI.jpeg', 'service image/11pjXkhqsv9JaAjlfbt5aUOrZEra0sHqGpx6gdIZ.jpeg', 'service image/6VZ2Fg7SP9UjFEL3YDQntithR9SEURiE0ynVgwaD.jpeg'),
(6, 'Material & Logistic Service', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusl nunc', 'service image/AAPofHUnZIMSDkp4zv2kVN9OQZNe6mSbQrjfbRRv.jpeg', 'service image/CkaqCsqDBUQ1LJWMA8Tlay9ZSMIYLqT3fV0LOzRH.jpeg', 'service image/HiYHUXChyDWCsUFGbmaBKPvVQsIPJ6v5o0qxdIe1.jpeg');

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
(13, 'felix', '$2y$10$6RTVQrY4O9eht8DOS1yoJuhIGlqyaczDnHoCCCPTF6KCnM5H3IU7K', '12121', 'Customer', 'Inactive'),
(14, 'jfp', '$2y$10$WKweNWLRo6E1ytRKoRJY3.zVemR98U08L6UHpzV50BNtDtFED3XDW', '1212', 'Admin', 'Active'),
(15, 'juanf', '$2y$10$NdLvh8VWl9e8dkHcle7F/ucoIzGfoIhIE35jqUBrk7L6kSfDMSODK', '1212', 'Customer', 'Active'),
(19, 'vius', '$2y$10$R5.lRzeXDqiAa/Nj17ys.ONDcF.UWJVpDe6Q6SWk4VDEBgJTo9m1m', '1212', 'Guest', 'Active'),
(20, 'juanf', '$2y$10$5PyJ7ZBfqTD31gQpv.KFJOJe3GT5iODiWi6hfkhXxirm6h.I3k7B.', '1212', 'Customer', 'Active'),
(21, 'jfptrg', '$2y$10$OmPFN9yQP5ziKZcEKqJNP.IcrCFzYJs3tLGTkHZFVkTSrMWThM.VC', '1212', 'Customer', 'Active'),
(22, 'fetrg', '$2y$10$.cRQCYSdkXflqcugej0S/OAw/5ET8F9sVPN1n.Bvk8iOGU.8EKGNm', '1212', 'Customer', 'Active');

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
  `user_customer_id` int(20) NOT NULL,
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
(18, 'Felix', 'Engineer', 'Islam', '1998-12-12', 'juanf@gmail.com', 'Tech', 8, 22);

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
  ADD PRIMARY KEY (`feedback_nonproject_id`);

--
-- Indexes for table `feedback_project`
--
ALTER TABLE `feedback_project`
  ADD PRIMARY KEY (`feedback_project_id`),
  ADD KEY `idx_user` (`user_customer_id`),
  ADD KEY `idx_company` (`company_id`);

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
  MODIFY `ads_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `birthday_card`
--
ALTER TABLE `birthday_card`
  MODIFY `birthday_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `cp_company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_nonproject`
--
ALTER TABLE `feedback_nonproject`
  MODIFY `feedback_nonproject_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_project`
--
ALTER TABLE `feedback_project`
  MODIFY `feedback_project_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gmf_cp`
--
ALTER TABLE `gmf_cp`
  MODIFY `gmf_cp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `religion_card`
--
ALTER TABLE `religion_card`
  MODIFY `religion_card_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `user_admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_customer`
--
ALTER TABLE `user_customer`
  MODIFY `user_customer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- Constraints for table `feedback_project`
--
ALTER TABLE `feedback_project`
  ADD CONSTRAINT `idx_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
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
