-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2017 at 08:02 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misskeen_gizi`
--

-- --------------------------------------------------------

--
-- Table structure for table `gizi`
--

CREATE TABLE `gizi` (
  `id` int(11) NOT NULL,
  `calory_amount` bigint(20) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gizi`
--

INSERT INTO `gizi` (`id`, `calory_amount`, `ingredient_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 100, 1, '2017-05-24 18:30:40', '2017-05-24 18:30:40', NULL),
(2, 200, 2, '2017-05-24 18:30:47', '2017-05-24 18:30:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) NOT NULL,
  `name` varchar(254) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bawang Putih', '2017-05-06 11:30:41', '2017-05-06 11:30:41', NULL),
(2, 'Daging Ayam', '2017-05-06 11:30:51', '2017-05-06 11:30:51', NULL),
(3, 'Pete', '2017-05-06 11:30:59', '2017-05-06 11:30:59', NULL),
(4, 'Bawang Merah', '2017-05-06 11:31:09', '2017-05-06 11:31:09', NULL),
(5, 'Garam', '2017-05-06 11:31:37', '2017-05-06 11:31:37', NULL),
(6, 'Merica', '2017-05-06 11:33:48', '2017-05-06 11:33:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gizi`
--
ALTER TABLE `gizi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gizi`
--
ALTER TABLE `gizi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
