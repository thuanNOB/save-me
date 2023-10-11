-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2023 at 06:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `catalog` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `catalog`, `create_date`) VALUES
(1, 'Laptop A', 'Laptop', '2023-10-10'),
(2, 'Laptop B', 'Laptop', '2023-10-10'),
(3, 'Laptop C', 'Laptop', '2023-10-10'),
(4, 'Laptop D', 'Laptop', '2023-10-10'),
(5, 'Laptop E', 'Laptop', '2023-10-10'),
(6, 'Laptop F', 'Laptop', '2023-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `products_image`
--

DROP TABLE IF EXISTS `products_image`;
CREATE TABLE IF NOT EXISTS `products_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `create_date` date NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products_image`
--

INSERT INTO `products_image` (`id`, `products_id`, `create_date`, `url`) VALUES
(1, 1, '2023-10-10', 'https://images-na.ssl-images-amazon.com/images/I/812NShN3MpL._SL1500_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_price`
--

DROP TABLE IF EXISTS `products_price`;
CREATE TABLE IF NOT EXISTS `products_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int NOT NULL,
  `customer_group` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products_price`
--

INSERT INTO `products_price` (`id`, `products_id`, `customer_group`, `price`, `update_date`) VALUES
(1, 1, 'VIP', '18,700000', '2023-10-10'),
(2, 1, 'Guest', '20,000,000', '2023-10-10'),
(3, 1, 'VIP', '7,500,000', '1900-01-03'),
(4, 2, 'Guest', '8,100,000', '1900-01-10'),
(5, 2, 'VIP', '13,000,000', '2023-10-09'),
(6, 3, 'Guest', '10,000,000', '2023-10-09'),
(7, 3, 'VIP', '9,100,000', '1900-01-09'),
(8, 4, 'Guest', '9,900,000', '0000-00-00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
