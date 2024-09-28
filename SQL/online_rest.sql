-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 01:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin1', '81dc9bdb52d04dc20036dbd8313ed055', 'admin1@gmail.com', '', '2024-09-28 03:09:35'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30'),
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'QMTZ2J', '2024-09-28 03:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 48, 'Pho', 'A fragrant noodle soup with beef or chicken, served with fresh herbs and lime', 6.00, '66f77650b0b7e.jpg'),
(20, 48, 'Bun Dau Mam Tom', 'A dish of rice noodles, fried tofu, and fermented shrimp paste, often served with fresh herbs', 7.00, '66f7768f13a4b.jpg'),
(21, 49, 'Pad Thai', 'Stir-fried rice noodles with shrimp, tofu, peanuts, and a tangy tamarind sauce', 5.00, '66f776af8deec.jpg'),
(22, 49, 'Tom Yum Goong', 'A hot and sour soup with shrimp, lemongrass, and lime leaves', 6.00, '66f776cb9f039.jpg'),
(23, 49, 'Green Curry', 'A spicy coconut milk curry with chicken, eggplant, and Thai basil', 7.00, '66f776dd06648.jpg'),
(24, 50, 'Sushi', 'Vinegared rice paired with raw fish, vegetables, or other ingredients', 5.00, '66f776f9157d2.jpg'),
(25, 50, 'Ramen', 'A noodle soup with a rich broth, often topped with pork, egg, and green onions', 6.00, '66f7773050a21.jpg'),
(26, 50, 'Tempura', 'Lightly battered and deep-fried seafood or vegetables', 7.00, '66f7775d3f532.jpg'),
(27, 51, 'Peking Duck', 'Crispy roasted duck served with pancakes, hoisin sauce, and scallions', 5.00, '66f777790f94e.jpg'),
(28, 51, 'Kung Pao Chicken', 'Stir-fried chicken with peanuts, vegetables, and chili peppers', 6.00, '66f7779e0679a.jpg'),
(29, 51, 'Dim Sum', 'A variety of small dishes, such as dumplings and buns, served with tea', 7.00, '66f777bcc80ff.jpg'),
(30, 53, 'Butter Chicken', 'A creamy tomato-based curry with tender pieces of chicken', 5.00, '66f7782d44f62.jpg'),
(31, 53, 'Biryani', 'A fragrant rice dish cooked with spices, meat, and sometimes vegetables', 6.00, '66f77850c6536.jpg'),
(32, 53, 'Samosa', 'A deep-fried pastry filled with spiced potatoes, peas, and sometimes meat', 7.00, '66f7787382fc1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 39, 'in process', 'sdfsdf', '2024-09-28 06:09:19'),
(72, 40, 'closed', 'fdfsdf', '2024-09-28 06:14:26'),
(73, 41, 'rejected', 'gsdf', '2024-09-28 06:14:46'),
(74, 42, 'in process', 'fsdfdf', '2024-09-28 06:15:07'),
(75, 43, 'closed', 'adsdas', '2024-09-28 06:48:10'),
(76, 46, 'in process', 'fsdfs', '2024-09-28 08:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Hanoi Delights', 'contact@hanoidelights.com', '+84 28 1234 5678', 'www.hanoidelights.com', '7am', '6pm', '24hr-x7', '123 Hai Ba Trung, Hoang Mai, Ha Noi, Vietnam', '66f774ab303d8.jpg', '2024-09-28 03:14:51'),
(49, 6, 'Siam Spice', 'info@siamspice.com', '+84 28 2345 6789', 'www.siamspice.com', '9am', '6pm', 'mon-sat', '234 Hai Ba Trung, Hoang Mai, Ha Noi, Vietnam\r\n', '66f774e02531f.jpg', '2024-09-28 03:15:44'),
(50, 7, 'Sakura Sushi', 'reservations@sakurasushi.com', '+84 28 3456 7890', 'www.sakurasushi.com', '8am', '7pm', '24hr-x7', '345 Hai Ba Trung, Hoang Mai, Ha Noi, Vietnam\r\n', '66f7752cc57e1.jpg', '2024-09-28 03:17:00'),
(51, 8, 'Dragon Wok', 'hello@dragonwok.com', '+84 28 4567 8901', 'www.dragonwok.com', '8am', '7pm', 'mon-sat', '456 Hai Ba Trung, Hoang Mai, Ha Noi, Vietnam\r\n', '66f7757f45f3f.jpg', '2024-09-28 03:18:23'),
(53, 9, 'Curry Palace', 'support@currypalace.com', '+84 28 5678 9012', 'www.currypalace.com', '7am', '7pm', 'mon-thu', '567 Hai Ba Trung, Hoang Mai, Ha Noi, Vietnam\r\n', '66f775ae99b27.jpg', '2024-09-28 03:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Vietnamese', '2024-09-28 03:12:35'),
(6, 'Thai', '2024-09-28 03:12:22'),
(7, 'Japanese', '2024-09-28 03:12:06'),
(8, 'Chinese', '2024-09-28 03:11:46'),
(9, 'Indian', '2024-09-28 03:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(34, 'huynguyen', 'Huy', 'Nguyen', 'huynguyen@gmail.com', '0988124679', '0baeaf02ddad792fa28a42034f3596a4', 'Nghiem Xuan Yem, Hoang Mai, Ha Noi, Viet Nam', 1, '2024-09-28 03:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'jklmno', 5, 17.99, 'closed', '2018-04-18 19:51:50'),
(38, 31, 'Red Robins Chick on a Stick', 2, 34.99, NULL, '2018-04-18 19:52:34'),
(39, 34, 'Banh Mi', 1, 5.00, 'in process', '2024-09-28 06:09:19'),
(40, 34, 'Pho', 1, 6.00, 'closed', '2024-09-28 06:14:26'),
(41, 34, 'Tom Yum Goong', 1, 6.00, 'rejected', '2024-09-28 06:14:46'),
(42, 34, 'Ramen', 1, 6.00, 'in process', '2024-09-28 06:15:07'),
(43, 34, 'Peking Duck', 1, 5.00, 'closed', '2024-09-28 06:48:10'),
(45, 35, 'Pho', 1, 6.00, NULL, '2024-09-28 06:46:39'),
(46, 34, 'Banh Mi', 1, 5.00, 'in process', '2024-09-28 08:10:24'),
(47, 34, 'Pad Thai', 1, 5.00, NULL, '2024-09-28 08:04:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
