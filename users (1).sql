-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 12:03 AM
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
-- Database: `web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `gender`, `file_name`) VALUES
(2, 'Besan', 'Besan@gmail.com', '$2y$10$80cEdvtTi8MG6re3Xfnf6eEnJYrH/1u0A7yPXE4nTyZzOxQttWjXu', 'female', '9999.PNG'),
(3, 'muna', 'muna@gmail.com', '$2y$10$32H4AoB4bIj2lMhH/Q4PCeDIYLQJDt6x/zjr51gl7yJTM8gK/dH7q', 'female', '‏‏لقطة الشاشة (34).png'),
(4, 'Huda', 'Huda@gmail.com', '$2y$10$VeaRtto8sbITIT3NcjadxOmL3ZiWQz5V3PPbp0NeQVtcZ17L6W3Te', 'female', '‏‏لقطة الشاشة (34).png'),
(5, 'Aysha', 'Aysha123@gmail.com', '$2y$10$5PR7NJrg0HGSw6x7CgXyj.kXSvaHQwvSuq4yMxVEZElSOdBa1dWH6', 'female', '9999.PNG'),
(6, 'Ali', 'ali@gmail.com', '$2y$10$jg5Kt2wxd.Lh8bNkYV8LBOiBg5MoPzBq6s8Gdtma4iEAJlhfrWkU.', 'male', '‏‏لقطة الشاشة (36).png'),
(7, 'Ahmed', 'Ahmed@gmail.com', '$2y$10$EaekLH29F1oZNUM.4P97dO3RUpop9yu7o4OCceCT6X0/qImBvo0ui', 'male', '‏‏لقطة الشاشة (37).png'),
(8, 'heba', 'hebaa2510@gmail.com', '$2y$10$mIlmG6l83k8N2pLACUi0Neo/z6zv7GIzPi9xGVR9b2yV47mhxpdSG', 'female', '‏‏لقطة الشاشة (32).png'),
(9, 'Raghad', 'ra@gmail.com', '$2y$10$8J0OH6YV.HUJXKpEO6ILveVmEGXOq0KMod2kZUMHNEDZT51VTkE3C', 'female', '9999.PNG'),
(10, 'Diaa', 'diaa@gmail.com', '$2y$10$k/b2CqIXWuac7EEUmJWLr.ugEIjCx6AkW.E7dsRTdpbcabySg6ddG', 'male', '9999.PNG'),
(11, 'Ayman', 'Ayman@gmail.com', '$2y$10$zr4dmP2RZI2wpNbgxl2iUOpJpnUwOluaW5L2wDhPrRS1CMQmPji2m', 'male', '‏‏لقطة الشاشة (34).png'),
(12, 'Ayman', 'Ayman@gmail.com', '$2y$10$.d4JstcJp4yYefmDaJ/9OOA8.eWxLmM8oSpM9YTYA2LHBVYWlFX8u', 'male', '9999.PNG'),
(13, 'Ayman', 'Ayman@gmail.com', '$2y$10$60uy9WNNQSgl4JsiX5951.MUoMcxCp9OAAT36a3B1Vg2nkLoJ7SK6', 'female', '9999.PNG'),
(14, 'ola', 'ola@gmail.com', '$2y$10$v6MWe7.heesfxM2q31Vl6e2PZeuxQNSo0kW0Vs1arK4EI215hmLgi', 'female', '9999.PNG'),
(15, 'Besan', 'Besan@gmail.com', '$2y$10$7W8WC7hP0c7ytHHNImz1.OEvCJ1KV0CJ.9QQXU3UAA15AojE7bb52', 'female', '9999.PNG'),
(16, '\'; select * from users', 'aya@gmail.com', '$2y$10$MPil0bYVLtgbGAtPLfzC.OINPvoXfFfEB77lBUC7E3tclvkxmHw7i', 'female', '‏‏لقطة الشاشة (34).png'),
(17, '\'; select * from users', 'select*fromusers@gmail.com', '$2y$10$VXCT7zV14H.8lBNd3PO6Yuevp.tm0en8CANn.vFc1OkXLV20B2Vqq', 'female', '9999.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
