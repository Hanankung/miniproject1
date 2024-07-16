-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entrepreneur`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `id_card` varchar(13) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `sales_category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `lastname`, `id_card`, `birth_date`, `sex`, `status`, `address`, `phone_number`, `email`, `shopname`, `sales_category`, `created_at`, `updated_at`) VALUES
(2, 'Hanan', 'Sareh', '1959500018540', '06092546', 'femal', 'sengle', '176/4 ตำบลตะโละหะลอ อำเภอรามัน', '0613129351', 'hanan@gmail.com', 'Hanankung', 'Food', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Phuwin', 'Tang', '1959500018670', '21092546', 'male', 'sengle', '176/4 ตำบลตะโละหะลอ อำเภอรามัน', '0613123351', 'anan@gmail.com', 'kung', 'Food', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
