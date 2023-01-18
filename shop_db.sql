-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:51 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(7, 'Blue Orchid', '\"Blue Orchid\" perfume is a floral scent with notes of blue orchid, lily, and violet. The blue orchid is a rare and exotic flower that is known for its deep, rich blue color. The floral notes of lily and violet add a fresh and sweet aroma to the perfume, creating a harmonious and elegant balance. The fragrance is often considered sophisticated and perfect for those who enjoy floral and elegant scents.', 220, 'lanvin.jpg'),
(8, 'Moon Dust', 'A \"Moon Dust\" perfume is a woody and earthy scent with notes of cedarwood, pine, and moss. The fragrance evokes the feeling of being deep in a dense, enchanted forest, with hints of mossy earth and the crisp, clean scent of pine needles.', 200, 'moondust.jpg'),
(9, 'Daisy', 'A \"Daisy\" perfume is a floral scent with notes of daisy, lily of the valley, and white rose. The daisy, known for its sweet and fresh aroma, is the main note of the perfume and provides a light and cheerful feel to the scent. The lily of the valley and white rose add a delicate and feminine touch to the fragrance. ', 250, 'daisy.jpg'),
(10, 'Eau Fraiche', 'The perfume is a classic floral scent with notes of jasmine, rose, and ylang-ylang. The jasmine and rose provide a floral heart to the fragrance, while the ylang-ylang adds a touch of exoticism.', 300, 'chanel.jpg'),
(11, 'Eau Tendre', 'The perfume is a classic, timeless fragrance that has been a favorite of women for over a century. With its unique blend of floral and woody notes, this perfume is perfect for any occasion. The top notes of ylang-ylang and neroli give it a fresh and invigorating start, while the heart notes of jasmine and rose add a touch of femininity.', 300, 'chanel2.jpg'),
(12, 'Eau Vive', 'Eau Vive is a modern and bold fragrance that exudes confidence and sensuality. With top notes of bergamot and mandarin, a heart of jasmine and rose, and a base of vanilla and amber, it is a seductive and alluring scent that is perfect for a night out on the town. ', 300, 'chanel3.jpg'),
(13, 'Brahmi Rose', '\"Brahmi Rose\" is a luxurious and captivating perfume that combines the earthy, grounding notes of brahmi with the sweet and floral aroma of rose. The blend creates a harmonious and uplifting scent that is perfect for both men and women.', 200, 'brahmi-rose.jpg'),
(14, 'Surreal Paradise', 'A perfume which has a unique and exotic scent, evoking the feeling of being in a dreamlike, idyllic tropical paradise. It also has a hint of freshness from sea breeze and a touch of warmth from the sun. Overall, it is a scent that transport you to a secluded, luxurious and unforgettable place.', 250, 'paradise.jpg'),
(15, 'Coconut', 'Coconut pefume has a sweet, tropical aroma that is reminiscent of freshly cracked coconut. It has notes of coconut milk, coconut water, coconut cream, and have a hint of vanilla, which adds a creamy sweetness to the overall scent.', 220, 'coconut.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(16, 'garima', 'sthagarima111@gmail.com', 'e63f56d891426b54ad592f0f5537b17a', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
