-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2019 at 12:24 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 5.6.40-8+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beepbeepbeep`
--

-- --------------------------------------------------------

--
-- Table structure for table `destination_details`
--

CREATE TABLE `destination_details` (
  `dd_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `rm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination_details`
--

INSERT INTO `destination_details` (`dd_id`, `d_id`, `rm_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 1),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `destination_master`
--

CREATE TABLE `destination_master` (
  `d_id` int(11) NOT NULL,
  `d_from` varchar(255) NOT NULL,
  `d_to` varchar(255) NOT NULL,
  `d_status` int(11) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination_master`
--

INSERT INTO `destination_master` (`d_id`, `d_from`, `d_to`, `d_status`) VALUES
(1, 'point 1', 'point 3', 1),
(2, 'point 1', 'point 4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jeep`
--

CREATE TABLE `jeep` (
  `jeep_id` int(11) NOT NULL,
  `jeep_number` varchar(5) NOT NULL,
  `jeep_plateno` varchar(10) NOT NULL,
  `jeep_from` varchar(255) NOT NULL,
  `jeep_to` varchar(255) NOT NULL,
  `jeep_status` int(11) NOT NULL DEFAULT '1' COMMENT '1= active, 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jeep`
--

INSERT INTO `jeep` (`jeep_id`, `jeep_number`, `jeep_plateno`, `jeep_from`, `jeep_to`, `jeep_status`) VALUES
(1, '1', 'abc123', 'point 1', 'point 2', 1),
(2, '2', 'abc124', 'point 2', 'point 3', 1),
(3, '3', 'abc125', 'point 3', 'point 4', 1),
(4, '4', 'abc125', 'point 4', 'point 5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_details`
--

CREATE TABLE `route_details` (
  `rd_id` int(11) NOT NULL,
  `rm_id` int(11) NOT NULL,
  `jeep_id` int(11) NOT NULL,
  `rd_status` int(11) NOT NULL DEFAULT '1' COMMENT '1= active, 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_details`
--

INSERT INTO `route_details` (`rd_id`, `rm_id`, `jeep_id`, `rd_status`) VALUES
(8, 1, 1, 1),
(9, 1, 2, 1),
(10, 2, 2, 1),
(11, 3, 1, 1),
(12, 3, 2, 1),
(13, 3, 3, 1),
(14, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE `route_master` (
  `rm_id` int(11) NOT NULL,
  `rm_title` varchar(255) NOT NULL,
  `rm_description` varchar(255) NOT NULL,
  `rm_from` varchar(255) NOT NULL,
  `rm_to` varchar(255) NOT NULL,
  `rm_status` int(11) NOT NULL DEFAULT '1' COMMENT '1= active, 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_master`
--

INSERT INTO `route_master` (`rm_id`, `rm_title`, `rm_description`, `rm_from`, `rm_to`, `rm_status`) VALUES
(1, 'first route', '', 'point 1', 'point 3', 1),
(2, 'second route', '', 'point 2', 'point 3', 1),
(3, 'third route', '', 'point 3', 'point 4', 1),
(6, 'forth route', '', 'point 4', 'point 5', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destination_details`
--
ALTER TABLE `destination_details`
  ADD PRIMARY KEY (`dd_id`);

--
-- Indexes for table `destination_master`
--
ALTER TABLE `destination_master`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `jeep`
--
ALTER TABLE `jeep`
  ADD PRIMARY KEY (`jeep_id`);

--
-- Indexes for table `route_details`
--
ALTER TABLE `route_details`
  ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`rm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destination_details`
--
ALTER TABLE `destination_details`
  MODIFY `dd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `destination_master`
--
ALTER TABLE `destination_master`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jeep`
--
ALTER TABLE `jeep`
  MODIFY `jeep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `route_details`
--
ALTER TABLE `route_details`
  MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `route_master`
--
ALTER TABLE `route_master`
  MODIFY `rm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
