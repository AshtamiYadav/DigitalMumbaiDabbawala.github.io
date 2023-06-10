-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 05:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dabbawala`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `created_on`, `updated_on`) VALUES
(1, 'Virar', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(2, 'Nalasopra', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(3, 'Vasai Road', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(4, 'Naigaon', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(5, 'Bhayander', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(6, 'Mira Road', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(7, 'Dahisar', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(8, 'Borivali', '2023-03-19 16:05:08', '2023-03-19 16:05:08'),
(9, 'borivali dabbawala', '2023-04-10 20:15:46', '2023-04-10 20:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `location` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '1=user,2=hotel,3=dabbawala,4=admin',
  `dabba_food` varchar(255) DEFAULT NULL,
  `dabba_price` int(11) DEFAULT NULL,
  `food_image` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `mobile_number`, `address1`, `address2`, `location`, `pincode`, `user_type`, `dabba_food`, `dabba_price`, `food_image`, `created_on`, `updated_on`, `last_login`) VALUES
(21, 'seema', 'seema@gmail.com', '123456', 7894561470, 'dvigru', 'bdchikerhjnrjme', 4, 401102, 1, NULL, NULL, '', '2023-04-25 19:32:06', NULL, NULL),
(22, 'Misal Hotel', 'misal@gmail.com', '123456', 4578961230, 'hdbckuhbf', 'bdjkfl', 3, 140102, 2, 'Pav bhaji', 300, 'dabb.jpg', '2023-04-25 19:35:29', NULL, NULL),
(23, 'Mumbai Dabbawala ', 'Dabbawala@gmail.com', '456789', 7045044309, 'gala no.102', 'Borivali(East)', 8, 451203, 3, NULL, NULL, '', '2023-04-25 16:13:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `days` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `delivery_address1` varchar(100) NOT NULL,
  `delivery_address2` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1 = hotel food, 2 = home food',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `hotel_id`, `days`, `price`, `total_amount`, `delivery_address1`, `delivery_address2`, `location_id`, `type`, `created_on`, `updated_on`) VALUES
(30, 21, NULL, 45, 35, 1575, '201/A, Sheetal Arcade, Indralok phase-3', 'yguihioj', 4, 2, '2023-04-25 19:38:15', NULL),
(31, 21, 22, 45, 300, 13500, 'dfkjhviodhfil', 'fdhviouroi', 7, 1, '2023-04-25 19:41:40', NULL),
(32, 21, NULL, 89, 35, 3115, '201/A, Sheetal Arcade, Indralok phase-3', 'indralok', 3, 2, '2023-04-25 19:42:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
