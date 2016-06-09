-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2016 at 06:36 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitegrub`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(13) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `password` char(32) NOT NULL,
  `residence_add` varchar(150) NOT NULL,
  `delivery_loc` varchar(100) DEFAULT NULL,
  `acc_act_email` enum('0','1') NOT NULL DEFAULT '0',
  `act_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `name`, `email`, `phoneno`, `password`, `residence_add`, `delivery_loc`, `acc_act_email`, `act_code`) VALUES
(1, 'BGC0000000001', 'Anshul Vyas', 'anshul.vyas380@gmail.com', '8349523639', '753b22ef17267db14535c2e701ad8b5d', 'ABV-IIITM ,Gwalior', 'Hazira,Gadhaipura,Gwalior', '1', '47d5a7cdcd734a03b01fcb8a7497e8c0'),
(2, 'BGC0000000002', 'Kanishk', 'kanishk71@gmail.com', '7691969509', 'f119b2f1eca2849', 'ABV-IIITM ,Gwalior', NULL, '0', 'a4198b36b3dbd99b49e4cb729d269674'),
(3, 'BGC0000000003', 'Aman Jain', 'amanjain7898@gmail.com', '8855223366', '9452de5b7123cd3', 'ABV-IIITM ,Gwalior', NULL, '0', '89776c19240a06dec62ad077fb1d7604'),
(4, 'BGC0000000004', 'Anshul Vyas', 'ansh.vyas747@gmail.com', '9407002735', '3019338bdf62f6aeb87923d6728377ca', 'ABV-IIITM ,Gwalior', 'Hazira,Gadhaipura,Gwalior', '1', '66f7c77f9ba292617e3cf1ece92232e7');

-- --------------------------------------------------------

--
-- Table structure for table `desserts`
--

CREATE TABLE `desserts` (
  `id` int(10) NOT NULL,
  `dessert_id` varchar(14) NOT NULL,
  `seller_id` varchar(13) NOT NULL,
  `dessert_name` varchar(20) NOT NULL,
  `dessert_image` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dessert_kind` varchar(4) NOT NULL,
  `cost` double NOT NULL,
  `avail_flag` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desserts`
--

INSERT INTO `desserts` (`id`, `dessert_id`, `seller_id`, `dessert_name`, `dessert_image`, `quantity`, `dessert_kind`, `cost`, `avail_flag`) VALUES
(1, 'BGDs01', 'BGS0000000002', 'DESSERT-1', 'img/gallery/gallery22.jpg', 10, 'DS01', 125, 'Y'),
(2, 'BGDs02', 'BGS0000000002', 'DESSERT-2', 'img/gallery/gallery23.jpg', 10, 'DS01', 125, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `dessertsmt`
--

CREATE TABLE `dessertsmt` (
  `dessert_code` varchar(4) NOT NULL,
  `dessert_ing` varchar(100) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(10) NOT NULL,
  `drink_id` varchar(14) NOT NULL,
  `seller_id` varchar(13) NOT NULL,
  `drink_name` varchar(20) NOT NULL,
  `drink_image` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `drink_kind` varchar(4) NOT NULL,
  `cost` double NOT NULL,
  `avail_flag` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `drink_id`, `seller_id`, `drink_name`, `drink_image`, `quantity`, `drink_kind`, `cost`, `avail_flag`) VALUES
(1, 'BGDr01', 'BGS0000000004', 'DRINK-01', 'img/gallery/gallery20.jpg', 5, 'DR01', 120, 'Y'),
(2, 'BGDr02', 'BGS0000000004', 'DRINK-02', 'img/gallery/gallery22.jpg', 5, 'DR01', 120, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `drinksmt`
--

CREATE TABLE `drinksmt` (
  `drink_code` varchar(4) NOT NULL,
  `drink_ing` varchar(100) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(10) NOT NULL,
  `meal_id` varchar(14) NOT NULL,
  `seller_id` varchar(13) NOT NULL,
  `meal_name` varchar(20) NOT NULL,
  `meal_image` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `meal_kind` varchar(4) NOT NULL,
  `cost` double NOT NULL,
  `avail_flag` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `meal_id`, `seller_id`, `meal_name`, `meal_image`, `quantity`, `meal_kind`, `cost`, `avail_flag`) VALUES
(1, 'BGMe01', 'BGS0000000003', 'MEAL-1', 'https://static.pexels.com/photos/5317/food-salad-restaurant-person.jpg', 2, 'MK01', 125, 'Y'),
(2, 'BGMe02', 'BGS0000000002', 'MEAL-2', 'https://static.pexels.com/photos/5938/food-salad-healthy-lunch.jpg', 5, 'MK03', 125, 'Y'),
(3, 'BGMe03', 'BGS0000000001', 'MEAL-3', 'https://static.pexels.com/photos/62097/pexels-photo-62097.jpeg', 2, 'MK02', 150, 'Y'),
(4, 'BGMe04', 'BGS0000000001', 'MEAL-4', 'https://static.pexels.com/photos/2232/vegetables-italian-pizza-restaurant.jpg', 4, 'MK03', 150, 'Y'),
(5, 'BGMe05', 'BGS0000000004', 'MEAL-5', 'https://static.pexels.com/photos/5249/bread-food-restaurant-people.jpg', 3, 'MK03', 120, 'Y'),
(6, 'BGMe06', 'BGS0000000002', 'MEAL-6', 'https://static.pexels.com/photos/5249/bread-food-restaurant-people.jpg', 2, 'MK05', 120, 'Y'),
(7, 'BGMe07', 'BGS0000000002', 'MEAL-7', 'https://static.pexels.com/photos/2232/vegetables-italian-pizza-restaurant.jpg', 4, 'MK05', 120, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mealsmt`
--

CREATE TABLE `mealsmt` (
  `meal_code` varchar(4) NOT NULL,
  `meal_ing` varchar(100) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `order_id` varchar(18) NOT NULL,
  `food_id` varchar(255) NOT NULL,
  `customer_id` varchar(13) NOT NULL,
  `billing_name` varchar(50) NOT NULL,
  `billing_contact_no` varchar(11) NOT NULL,
  `delivery_slot` time NOT NULL,
  `shipping_add` text NOT NULL,
  `amount` double NOT NULL,
  `payment_mode` enum('COD','DEBITCARD','NETBANKING','CREDITCARD') NOT NULL,
  `trans_complete` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `food_id`, `customer_id`, `billing_name`, `billing_contact_no`, `delivery_slot`, `shipping_add`, `amount`, `payment_mode`, `trans_complete`) VALUES
(11, 'BGOD-11', 'BGMe03,BGMe06', 'BGC0000000001', 'aa', '9407002735', '00:00:00', 'aaa474015', 390, 'COD', 'N'),
(12, 'BGOD-12', 'BGMe03,BGMe06', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 390, 'COD', 'N'),
(13, 'BGOD-13', 'BGMe03,BGMe06', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'BH_!ABV-IIITM ,Gwalior474015', 390, 'COD', 'N'),
(14, 'BGOD-14', 'BGMe03,BGMe06', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 390, 'COD', 'N'),
(15, 'BGOD-15', 'BGMe03,BGMe06', 'BGC0000000001', 'Kanuaggrawal', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 390, 'COD', 'N'),
(16, 'BGOD-16', 'BGMe02', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 125, 'COD', 'N'),
(17, 'BGOD-17', 'BGMe02', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 125, 'COD', 'N'),
(18, 'BGOD-18', 'BGMe07', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 120, 'COD', 'N'),
(19, 'BGOD-19', 'BGMe06', 'BGC0000000001', 'AnshulVyas', '9407002735', '00:00:00', 'Bh-1ABV-IIITM ,Gwalior474015', 120, 'COD', 'N'),
(20, 'BGOD-20', 'BGMe04,BGMe07', 'BGC0000000004', 'fhhf', '9407002735', '00:00:00', 'fhfhfhfhhfh474015', 270, 'COD', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(10) NOT NULL,
  `seller_id` varchar(13) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `seller_add` varchar(150) NOT NULL,
  `seller_loc` varchar(100) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `acc_act_email` enum('0','1') NOT NULL DEFAULT '0',
  `act_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `seller_id`, `name`, `email`, `phoneno`, `password`, `seller_add`, `seller_loc`, `latitude`, `longitude`, `acc_act_email`, `act_code`) VALUES
(1, 'BGS0000000001', 'Ramesh', 'null', '9407002735', '6fc42c4388ed6f0c5a91257f096fef3c', 'Hazira', 'Dindayal Mall, MLB Road, Phulbhag Chowraha, Opposite Gurudwara, Gwalior, Madhya Pradesh 474009', 26.2414213, 78.18423029999997, '0', 'null'),
(2, 'BGS0000000002', 'Raghu', 'raghuram@gmail.com', '8349523639', '6e911c463ccb3e3b8f4e73308bc41ef7', 'Gole Ka Mandir', 'morar,gwalior,gwalior', 26.2414213, 78.18423029999997, '0', '6e911c463ccb3e3b8f4e73308bc41ef7'),
(3, 'BGS0000000003', 'ansh', 'ansh.vyas747@gmail.com', '9424597149', '5df5f370903ced50b725e146d8927f6d', 'Hazira', 'laskar,Gwalior', 26.2095999, 78.16637659999992, '1', 'a0d393645533b37bad98938127d88136'),
(4, 'BGS0000000004', 'Anshul Vyas', 'shreya.iitm@gmail.com', '8827875927', '4a3232c59ecda21ac71bebe3b329bf36', 'ABV-IIITM ,Gwalior', 'Hazira,gwalior', 26.2504375, 78.17346859999998, '0', '2d0b722cfbe869f3fa9d3fcaad70cdbf');

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--

CREATE TABLE `snacks` (
  `id` int(10) NOT NULL,
  `snack_id` varchar(14) NOT NULL,
  `seller_id` varchar(13) NOT NULL,
  `snack_name` varchar(20) NOT NULL,
  `snack_image` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `snack_kind` varchar(4) NOT NULL,
  `cost` double NOT NULL,
  `avail_flag` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snacks`
--

INSERT INTO `snacks` (`id`, `snack_id`, `seller_id`, `snack_name`, `snack_image`, `quantity`, `snack_kind`, `cost`, `avail_flag`) VALUES
(1, 'BGSn01', 'BGS0000000003', 'SNACK-1', 'img/gallery/gallery23.jpg', 5, 'SK01', 120, 'Y'),
(2, 'BGSn02', 'BGS0000000003', 'SNACK-2', 'img/gallery/gallery21.jpg', 5, 'SK01', 120, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `snacksmt`
--

CREATE TABLE `snacksmt` (
  `snack_code` varchar(4) NOT NULL,
  `snack_ing` varchar(100) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `id` (`id`,`email`,`phoneno`);

--
-- Indexes for table `desserts`
--
ALTER TABLE `desserts`
  ADD PRIMARY KEY (`dessert_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `dessertsmt`
--
ALTER TABLE `dessertsmt`
  ADD PRIMARY KEY (`dessert_code`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`drink_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `drinksmt`
--
ALTER TABLE `drinksmt`
  ADD PRIMARY KEY (`drink_code`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `mealsmt`
--
ALTER TABLE `mealsmt`
  ADD PRIMARY KEY (`meal_code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`,`food_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`,`phoneno`);

--
-- Indexes for table `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`snack_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `snacksmt`
--
ALTER TABLE `snacksmt`
  ADD PRIMARY KEY (`snack_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `desserts`
--
ALTER TABLE `desserts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `snacks`
--
ALTER TABLE `snacks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `desserts`
--
ALTER TABLE `desserts`
  ADD CONSTRAINT `dessert_idfk` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);

--
-- Constraints for table `drinks`
--
ALTER TABLE `drinks`
  ADD CONSTRAINT `drink_idfk` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_idfk` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);

--
-- Constraints for table `snacks`
--
ALTER TABLE `snacks`
  ADD CONSTRAINT `snacks_idfk` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
