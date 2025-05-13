-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 07:26 PM
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
-- Database: `register_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'jakraphong jantarupan', 'admin@gmail.com', '$2y$10$V6wnsAAQkCLD2aWGDooHYOb6laU9YJiwcg6VM74431XrZta2w9KV6', '2025-05-13 16:35:38'),
(2, 'user one', 'user1@gmail.com', '$2y$10$bR0iFiv.Lcji9n30/7uCn.byA48zOimfZwe83qD/XZ6QbJPG4KPmy', '2025-05-13 16:45:53'),
(3, 'user two', 'user2@gmail.com', '$2y$10$ziZYaLCmcz5bSc5GEIHdJuiRbzcRw6v9B28629TnF/GyZiqCgFSj2', '2025-05-13 16:47:27'),
(4, 'user three', 'user3@gmail.com', '$2y$10$ZYIt2TkZxiqchfAjf509M.0YX.iJ39B/uN7sy70a8tKZtVK4N9aSC', '2025-05-13 17:07:47'),
(5, 'user four', 'user4@gmail.com', '$2y$10$vzHH9JZJ7H5yrP8r9.ygE.KbBm7BbS9mE9L.l4SMBvBhKnuUQsMjK', '2025-05-13 17:18:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
