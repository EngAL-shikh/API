-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 09:36 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_news`
--

CREATE TABLE `cat_news` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat_news`
--

INSERT INTO `cat_news` (`cat_id`, `cat_title`) VALUES
(1, 'Political'),
(2, 'sport'),
(3, 'Odds and oddity');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `Art_title` text NOT NULL,
  `Art_subject` text NOT NULL,
  `Art_image` text NOT NULL,
  `Art_date` date NOT NULL,
  `sub_sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Art_title`, `Art_subject`, `Art_image`, `Art_date`, `sub_sub_cat_id`) VALUES
(14, 'yemen killed ', 'Think you call tell the truth from lies? Test your knowledge of fake news with this game, Factitious. Click and choose quick start to start playing.\r\nThink you call tell the truth from lies? Test your knowledge of fake news with this game, Factitious. Click and choose quick start to start playing.\r\nThink you call tell the truth from lies? Test your knowledge of fake news with this game, Factitious. Click and choose quick start to start playing.\r\nThink you call tell the truth from lies? Test your knowledge of fake news with this game, Factitious. Click and choose quick start to start playing.', 'image', '2020-12-09', 27),
(15, 'us killed people', 'This article in The New York Times challenges readers to identify which social media posts have been created by Russian operatives. The differences between real and fake posts are subtle. ', 'image2', '2020-12-09', 12),
(16, 'ronalndo', 'news2news2news2news2', 'image3', '2020-12-16', 32),
(17, 'that code', 'that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow the MIN to be negative, use the following code.', 'image', '2020-12-09', 14),
(18, 'following code.', 'that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow the MIN to be negative, use the ', 'image', '2020-12-17', 11),
(19, 'negative, use the ', 'that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow the MIN to be  that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow the MIN to be ', 'image', '2020-12-16', 30),
(20, 'the MIN to be ', 'that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow that code doesn\'t support negative values, it will throw a NumberFormatException. To fix that, and allow ', 'image', '2020-12-23', 31);

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat_news`
--

CREATE TABLE `sub_cat_news` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(40) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_cat_news`
--

INSERT INTO `sub_cat_news` (`sub_cat_id`, `sub_cat_title`, `cat_id`) VALUES
(1, 'Domestic policy', 1),
(2, 'Arabic policy', 1),
(3, 'Global politics', 1),
(4, 'football', 2),
(5, 'Basketball', 2),
(21, 'Public', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_cat_news`
--

CREATE TABLE `sub_sub_cat_news` (
  `sub_sub_cat_id` int(11) NOT NULL,
  `sub_sub_cat_title` varchar(40) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_sub_cat_news`
--

INSERT INTO `sub_sub_cat_news` (`sub_sub_cat_id`, `sub_sub_cat_title`, `sub_cat_id`) VALUES
(11, 'La Liga', 4),
(12, 'Premier League', 4),
(13, 'Bundesliga', 4),
(14, 'Major League', 5),
(15, 'European League', 5),
(27, '	\r\nArabic policy', 2),
(28, 'Domestic policy', 1),
(29, 'Global politics', 3),
(30, 'Domestic policy', 1),
(31, 'Global politics', 3),
(32, 'Public', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sub_cat_id` (`sub_sub_cat_id`);

--
-- Indexes for table `sub_cat_news`
--
ALTER TABLE `sub_cat_news`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `sub_sub_cat_news`
--
ALTER TABLE `sub_sub_cat_news`
  ADD PRIMARY KEY (`sub_sub_cat_id`),
  ADD KEY `sub_cat_id` (`sub_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_news`
--
ALTER TABLE `cat_news`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sub_cat_news`
--
ALTER TABLE `sub_cat_news`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_sub_cat_news`
--
ALTER TABLE `sub_sub_cat_news`
  MODIFY `sub_sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`sub_sub_cat_id`) REFERENCES `sub_sub_cat_news` (`sub_sub_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_cat_news`
--
ALTER TABLE `sub_cat_news`
  ADD CONSTRAINT `sub_cat_news_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `cat_news` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_sub_cat_news`
--
ALTER TABLE `sub_sub_cat_news`
  ADD CONSTRAINT `sub_sub_cat_news_ibfk_1` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_cat_news` (`sub_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
