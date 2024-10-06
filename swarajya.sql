-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 09:56 AM
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
-- Database: `swarajya`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author_name`, `description`, `price`, `image`) VALUES
(1, 'b gcdhg', 'ghdth', 'cghry', 'chty', ''),
(2, 'vb', 'ghdth', 'fget', 'chty', 'http://localhost/shivaji%20maharaj/upload/wp8581310.webp'),
(3, 'c   ', 'vbc', 'cvcggn', 'cvcn', 'http://localhost/shivaji%20maharaj/upload/wp5589972.jpg'),
(4, 'dv', 'ghdth', 'fget', 'ftyte', 'http://localhost/shivaji%20maharaj/upload/wp5589972.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email_address`, `message`) VALUES
(1, 'sheetal', 'shital25@gmail.com', 'hello..!'),
(2, 'kiran', 'kiran25@gmail.com', 'hey/////');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `description`, `address`, `time`, `date`, `image`) VALUES
(1, 'fwg', 'sgrg', 'ege', 'dge', 'dgt', ''),
(2, 'sfrvrs', 'ergf', 'dfge', 'dgrt', 'dty', ''),
(3, 'f f', 'svs', 'svfsv', 'sfvf', 'svfvfs', ''),
(4, 'bffb', 'bgf', 'rhryh', 'dge', 'dty', 'http://localhost/shivaji%20maharaj/upload/wp5589972.jpg'),
(5, 'fwg', 'hrh', 'dhh', 'dgrt', 'dgt', 'http://localhost/shivaji%20maharaj/upload/wp8581310.webp');

-- --------------------------------------------------------

--
-- Table structure for table `event_reg`
--

CREATE TABLE `event_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `phone_no.` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_reg`
--

INSERT INTO `event_reg` (`id`, `name`, `email_address`, `phone_no.`, `comment`) VALUES
(1, 'sheetal', 'shital123@gmail.com', '9322687458', 'hii'),
(2, 'kiran', 'kiran123@gmail.com', '9587463255', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `fort`
--

CREATE TABLE `fort` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fort`
--

INSERT INTO `fort` (`id`, `title`, `description`, `address`, `link`, `image`) VALUES
(1, 'yhyr', 'hrh', 'rhryh', 'rhyrh', ''),
(2, 'dcsvs', 'svdsge', 'xfgte', 'fbdghd', 'http://localhost/shivaji%20maharaj/upload/2940863.webp'),
(3, ' n bn', 'fget', 'ege', 'rhyrh', 'http://localhost/shivaji%20maharaj/upload/wp8581310.webp');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `description`, `date_of_birth`, `image`) VALUES
(1, 'hdhdh', 'hfghd', ''),
(2, 'uyghb', 'jgnj', ''),
(3, 'gjcg', 'ddrr', ''),
(4, 'zxdff', 'fggxx', 'http://localhost/shivaji%20maharaj/upload/2492165.jpg'),
(5, 'm n', 'nmvm', 'http://localhost/shivaji%20maharaj/upload/2940863.webp'),
(6, 'cbb ', 'bhv', 'http://localhost/shivaji%20maharaj/upload/2940863.webp');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`) VALUES
(1, 'http://localhost/shivaji%20maharaj/upload/2940863.webp'),
(2, 'http://localhost/shivaji%20maharaj/upload/'),
(3, 'http://localhost/shivaji%20maharaj/upload/wp8581310.webp');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `password`, `name`) VALUES
(1, 'kirankadam', 'kiran@123', 'kiran'),
(2, 'shital', 'shital@123', 'shital');

-- --------------------------------------------------------

--
-- Table structure for table `statue`
--

CREATE TABLE `statue` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statue`
--

INSERT INTO `statue` (`id`, `title`, `description`, `price`, `image`) VALUES
(1, 'effde', 'frge', 'sre', ''),
(2, 'cbb ', 'fget', 'ftyte', 'http://localhost/shivaji%20maharaj/upload/wp5589972.jpg'),
(3, 'cc', 'fget', 'ftyte', 'http://localhost/shivaji%20maharaj/upload/th (1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_no.` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email_address`, `password`, `mobile_no.`) VALUES
(1, 'sheetal', 'sheetal@gamail.com', '935545', '932554283'),
(2, 'kiran', 'kiran25@gmail.com', 'kiran25', '9354782156');

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE `war` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `war`
--

INSERT INTO `war` (`id`, `title`, `description`, `address`, `date`, `image`) VALUES
(1, 'ddd', 'adad', '', 'dadad', ''),
(2, 'bdb', 'bdh', 'dhh', 'fhdh', ''),
(3, 'hmfc', 'chh', 'mfjh', 'bdggdh', 'http://localhost/shivaji%20maharaj/upload/2940877.jpg'),
(4, 'bvjbj', 'fget', 'rhryh', 'dgt', 'http://localhost/shivaji%20maharaj/upload/2940877.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_reg`
--
ALTER TABLE `event_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fort`
--
ALTER TABLE `fort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statue`
--
ALTER TABLE `statue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_reg`
--
ALTER TABLE `event_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fort`
--
ALTER TABLE `fort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statue`
--
ALTER TABLE `statue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `war`
--
ALTER TABLE `war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
