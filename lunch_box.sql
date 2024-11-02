-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 04:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunch_box`
--

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `encpsw` varchar(50) NOT NULL,
  `randomId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `role_type`, `username`, `password`, `encpsw`, `randomId`) VALUES
(1, 'P', 'prasad@gmail.com', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '64cdef9352'),
(2, 'P', 'srinu@gmail.com', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '64ce260b18');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `contact_1` varchar(12) NOT NULL,
  `contact_2` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `randomId` varchar(20) NOT NULL,
  `parent_id` varchar(20) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `role_type`, `name`, `username`, `contact_1`, `contact_2`, `address`, `pincode`, `city`, `randomId`, `parent_id`, `del_status`) VALUES
(1, 'P', 'Prasad', 'prasad@gmail.com', '9654123656', '9654123656', 'Kakinada', '533002', 'Kakinada', '64cdef9352f03', 'PID19419', 1),
(2, 'P', 'Srinu', 'srinu@gmail.com', '5465468468', '5454654654', 'VSP', '530027', 'Visakhapatnam', '64ce260b18e2a', 'PID35972', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_information`
--

CREATE TABLE `school_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `studying` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `randomId` varchar(15) NOT NULL,
  `Pid` varchar(20) NOT NULL,
  `child_Id` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `T_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_information`
--

INSERT INTO `school_information` (`id`, `school_name`, `studying`, `section`, `address`, `time`, `randomId`, `Pid`, `child_Id`, `status`, `T_status`) VALUES
(1, 'DAV', '1', 'A', 'Kakinada', '', '64cdf4d856822', 'PID19419', '1', 0, 0),
(3, 'Ravindra', '1', 'A', 'Kakinada', '9', '64cdfa388f309', 'PID19419', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_title` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `email` varchar(55) NOT NULL,
  `contact_1` varchar(50) NOT NULL,
  `contact_2` varchar(50) NOT NULL,
  `fb_url` varchar(250) NOT NULL,
  `twitter_url` varchar(250) NOT NULL,
  `wht_url` varchar(250) NOT NULL,
  `you_url` varchar(250) NOT NULL,
  `insta_url` varchar(250) NOT NULL,
  `randomId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `site_title`, `image`, `email`, `contact_1`, `contact_2`, `fb_url`, `twitter_url`, `wht_url`, `you_url`, `insta_url`, `randomId`) VALUES
(1, 'Spondias123', 'assets/images/64d3771060327imagephoto_6176918585700627786_y.jpg', 'spondia123@gmail.com', '2355768125', '5467945762', 'https://www.youtube.com/watch?v=xM0hdfKIYEE&list=PL-h5aNeRKouEaGrQj6EXaqZsagEphQboI&index=8', 'https://www.youtube.com/watch?v=xM0hdfKIYEE&list=PL-h5aNeRKouEaGrQj6EXaqZsagEphQboI&index=8', 'https://www.youtube.com/watch?v=xM0hdfKIYEE&list=PL-h5aNeRKouEaGrQj6EXaqZsagEphQboI&index=8', 'https://www.youtube.com/watch?v=xM0hdfKIYEE&list=PL-h5aNeRKouEaGrQj6EXaqZsagEphQboI&index=8', 'https://www.youtube.com/watch?v=xM0hdfKIYEE&list=PL-h5aNeRKouEaGrQj6EXaqZsagEphQboI&index=8', '64d374ed23795');

-- --------------------------------------------------------

--
-- Table structure for table `studentform`
--

CREATE TABLE `studentform` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relation` varchar(100) NOT NULL,
  `cand_name` varchar(250) NOT NULL,
  `school_name` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `father_name` varchar(250) NOT NULL,
  `mother_name` varchar(250) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `alter_no` varchar(50) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address` varchar(250) NOT NULL,
  `randomId` varchar(20) NOT NULL,
  `Pid` varchar(20) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentform`
--

INSERT INTO `studentform` (`id`, `relation`, `cand_name`, `school_name`, `gender`, `dob`, `age`, `father_name`, `mother_name`, `contact_no`, `alter_no`, `email`, `address`, `randomId`, `Pid`, `del_status`) VALUES
(1, 'Father', 'Saman', 'DAV', 'Male', '2018-12-13', '5', 'Prasad', 'Pravallika', '6578465784', '4579874579', 'saman@gmail.com', 'Kakinada', '64cdf4d856822', 'PID19419', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_data`
--

CREATE TABLE `transfer_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `new_school` varchar(250) NOT NULL,
  `sch_add` varchar(250) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(55) NOT NULL,
  `time` varchar(100) NOT NULL,
  `randomId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_data`
--

INSERT INTO `transfer_data` (`id`, `new_school`, `sch_add`, `class`, `section`, `time`, `randomId`) VALUES
(1, 'fsdghfgkljhl', 'shjkl;', 'gyty', 'hfitui', 'jgkk', '64cb85d618356');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `school_information`
--
ALTER TABLE `school_information`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `studentform`
--
ALTER TABLE `studentform`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `transfer_data`
--
ALTER TABLE `transfer_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_information`
--
ALTER TABLE `school_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siteinfo`
--
ALTER TABLE `siteinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentform`
--
ALTER TABLE `studentform`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer_data`
--
ALTER TABLE `transfer_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
