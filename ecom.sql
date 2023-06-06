-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 09:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `fb_user_id` varchar(255) NOT NULL,
  `google_user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `taste` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `fb_user_id`, `google_user_id`, `name`, `description`, `taste`, `size`, `quantity`, `price`, `image`, `total`, `created_at`) VALUES
(127, '9', '', '', '108259021039358304602', 'Crispy Burger', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'select taste', 'select size', '5', '30', 'o1.jpg', 150, '2022-11-23 16:27:47'),
(128, '17', '', '', '108259021039358304602', 'Fries', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'select taste', 'select size', '8', '25', 'pngtree-vector-fries-png-image_1015844-removebg-preview.png', 200, '2022-11-23 16:27:52'),
(130, '16', '45', '', '', 'Sandwich', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'normal', 'small', '2', '49', 'download__9_-removebg-preview.png', 0, '2023-05-10 10:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `navbar_status` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_at`) VALUES
(1, 'Pizza', 'pizza-details', 'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.', 'Pizza taste, Pizza type,', 'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.', 'Pizza taste, Pizza type,', 0, 0, '2022-09-16 05:21:48'),
(7, 'Sandwich', 'sandwich-details', 'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', 'Sandwich-taste, sandwich Sargodha, ', 'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', 'Sandwich-taste, sandwich Sargodha, ', 0, 0, '2022-09-16 05:24:22'),
(8, 'Burger', 'burger', 'A hamburger, or simply burger, is a food consisting of fillings usually a patty of ground meat, typically beef placed inside a sliced bun or bread roll.', 'Burger Sargodha, Burger in Pakistan, ', 'A hamburger, or simply burger, is a food consisting of fillings usually a patty of ground meat, typically beef placed inside a sliced bun or bread roll.', 'Burger Sargodha, Burger in Pakistan, ok', 0, 0, '2022-09-16 05:26:24'),
(14, 'Fries', 'Fries', 'Fries', 'Fries', 'Fries', 'Fries', 0, 0, '2022-10-24 12:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivered` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`, `created_at`, `delivered`) VALUES
(1, '41', '6T6367889C4296514', 100.00, 'USD', 'Completed', '2022-10-24 12:24:00', 1),
(2, '41', '26R611168J738844R', 30.00, 'USD', 'Completed', '2023-03-14 06:45:41', 0),
(3, '42', '7H299746NW867024S', 49.00, 'USD', 'Completed', '2022-10-19 08:22:01', 0),
(4, '42', '8FB2396941396032H', 98.00, 'USD', 'Completed', '2022-10-19 08:17:24', 1),
(5, '42', '72B44823EA5638923', 49.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(6, '42', '06X13407M2691362S', 49.00, 'USD', 'Completed', '2022-10-19 09:56:39', 1),
(7, '41', '66074534UV6156720', 30.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(8, '43', '88E73734F55979219', 49.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(9, '44', '2LP16948U2824322G', 148.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(10, '46', '14317350SD630583H', 30.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(11, '61', '7C845770JV737214C', 30.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(12, '100', '4J7221559V9911741', 30.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(13, '100', '3L774217FF616983D', 60.00, 'USD', 'Completed', '2022-10-18 12:53:22', NULL),
(14, '114', '06N2905440477583T', 49.00, 'USD', 'Completed', '2022-10-20 10:37:26', NULL),
(15, '120', '6EC62095P4997103B', 30.00, 'USD', 'Completed', '2022-10-24 13:01:10', NULL),
(16, '125', '042894458X9570102', 270.00, 'USD', 'Completed', '2022-11-23 16:22:39', NULL),
(17, '133', '5T6886312D368623F', 158.00, 'USD', 'Completed', '2023-05-27 21:13:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `price`, `description`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `created_at`) VALUES
(9, 8, 'Crispy Burger', 'fajita-burger', '30', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'o1.jpg', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Fajita, Burger, 12', 0, '2022-10-03 06:53:41'),
(15, 8, 'Pizza', 'pizza', '99', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'download__7_-removebg-preview.png', 'pizzas', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'pizzaas', 0, '2022-10-24 17:41:04'),
(16, 7, 'Sandwich', 'sandvich', '49', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'download__9_-removebg-preview.png', 'Sandwich', 'Sandwich', 'Sandwich', 1, '2022-10-24 17:42:33'),
(17, 14, 'Fries', 'Fries', '25', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'pngtree-vector-fries-png-image_1015844-removebg-preview.png', 'Fries', 'Fries', 'Fries', 1, '2022-10-24 17:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `stripe_id` int(11) NOT NULL,
  `payment_gross` varchar(255) NOT NULL,
  `item_number` varchar(255) NOT NULL,
  `stripeToken` varchar(255) NOT NULL,
  `stripeTokenType` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`stripe_id`, `payment_gross`, `item_number`, `stripeToken`, `stripeTokenType`, `payment_status`, `delivered`, `created_at`) VALUES
(2, '49', '115', 'tok_1LwOMcIhPAni9VP189cgePjR', 'card', 'Completed', 0, '2023-05-28 11:02:15'),
(3, '49', '115', 'tok_1LwOPVIhPAni9VP1gR1m5V9J', 'card', 'Completed', 1, '2022-10-24 12:24:49'),
(4, '30', '117', 'tok_1LwOTIIhPAni9VP16RuWRdoD', 'card', 'Completed', NULL, '2022-10-24 11:05:34'),
(5, '49', '118', 'tok_1LwOXwIhPAni9VP13GLnk8wg', 'card', 'Completed', NULL, '2022-10-24 11:10:22'),
(6, '30', '119', 'tok_1LwOaKIhPAni9VP1Wg5YOD6c', 'card', 'Completed', NULL, '2022-10-24 11:12:51'),
(7, '49', '108', 'tok_1LwPA7IhPAni9VP1coGDzsYR', 'card', 'Completed', NULL, '2022-10-24 11:49:49'),
(8, '49', '12', 'tok_1LwPH2IhPAni9VP111gWRsHM', 'card', 'Completed', NULL, '2022-10-24 11:56:58'),
(9, '30', '9', 'tok_1LwPIOIhPAni9VP1B9cv8X7B', 'card', 'Completed', NULL, '2022-10-24 11:58:23'),
(10, '5000', '15', 'tok_1LwQNeIhPAni9VP1Bka5KGgD', 'card', 'Completed', 0, '2022-10-24 18:50:24'),
(11, '79', '16', 'tok_1MlRZ4IhPAni9VP1AOKlYfA7', 'card', 'Completed', NULL, '2023-03-14 06:42:33'),
(12, '50', '17', 'tok_1NCURyIhPAni9VP1NBuplUuI', 'card', 'Completed', NULL, '2023-05-27 21:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fb_user_id` varchar(255) NOT NULL,
  `google_user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fb_user_id`, `google_user_id`, `username`, `email`, `password`, `status`, `role_as`, `created_at`) VALUES
(44, '', '', 'Ali_Admin', 'admin@gmail.com', 'admin', 1, 1, '2022-10-24 17:32:00'),
(45, '', '', 'user', 'user@gmail.com', 'user', 1, 0, '2022-10-24 17:32:38'),
(46, '182810160977184', '', 'A Hassan', 'alihassan.lancer@gmail.com', '', 0, 0, '2022-10-24 18:05:25'),
(47, '', '108259021039358304602', 'Ali', 'alihassan.lancer@gmail.com', '', 0, 0, '2022-10-24 18:06:40'),
(48, '', '', 'adminnew', 'adminnew@gmail.com', '1234', 1, 1, '2023-03-14 06:58:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`stripe_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `stripe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
