-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 11:46 AM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL,
  `author_id` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `title`, `content`, `author_id`, `created_at`, `updated_at`) VALUES
(27, 'My blog', 'welcome to my blog', 31, '2025-05-06 09:24:24', '2025-05-06 09:24:24'),
(28, 'ss', 'ss', 32, '2025-05-06 09:24:51', '2025-05-06 09:24:51'),
(29, 'q', 'q', 33, '2025-05-06 09:37:24', '2025-05-06 09:37:24'),
(30, 'two', 'wqw', 34, '2025-05-06 09:38:31', '2025-05-06 09:38:31'),
(31, 'ad', 'ad', 34, '2025-05-06 09:38:37', '2025-05-06 09:38:37'),
(32, 'vas', 'dad', 34, '2025-05-06 09:38:42', '2025-05-06 09:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(31, 'sampol', 'sampol', 'sample', '$2y$10$p0oIPpkST3NnMwe.O9I/juFjXZDCK56top7mlQx5sQhen.mBypuB.', '2025-05-06 09:23:33', '2025-05-06 09:23:33'),
(32, 'ss', 'ss', 'ss', '$2y$10$d8.MIsRZIUxsBljXy44TkuJlsxlzURICUUBCbREC8D1uOgjonRNBu', '2025-05-06 09:24:47', '2025-05-06 09:24:47'),
(33, 'q', 'q', 'q', '$2y$10$c6Xs.xldsZslqnPpBG8WXuTttXz/p2.QkZF7eIaNcp60cgb1db72a', '2025-05-06 09:37:20', '2025-05-06 09:37:20'),
(34, 'sash', 'mont', 'sasha', '$2y$10$Ip7lMBnDK2uHZ43ETh/hjOVXFP3JaESwseOJ9FavhIJuM/mxsiFY2', '2025-05-06 09:38:17', '2025-05-06 09:38:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `post_user` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_user` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
