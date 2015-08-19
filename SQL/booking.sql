-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015 年 8 朁E19 日 05:35
-- サーバのバージョン： 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `bookings`
--

INSERT INTO `bookings` (`id`, `equipment_id`, `user_id`, `start`, `end`, `is_deleted`, `created`, `modified`) VALUES
(1, 1, 1, '2015-08-19 05:27:00', '2015-08-19 08:27:00', 0, '2015-08-19 00:00:00', '2015-08-19 00:00:00'),
(2, 2, 1, '2015-08-20 10:29:00', '2015-08-20 11:29:00', 0, '2015-08-19 00:00:00', '2015-08-19 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `equipments`
--

CREATE TABLE IF NOT EXISTS `equipments` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `equipments`
--

INSERT INTO `equipments` (`id`, `name`, `is_deleted`, `created`, `modified`) VALUES
(1, '会議室１', 0, '2015-08-19 00:00:00', '2015-08-19 00:00:00'),
(2, '会議室２', 0, '2015-08-19 00:00:00', '2015-08-19 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `genders`
--

CREATE TABLE IF NOT EXISTS `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(6) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `genders`
--

INSERT INTO `genders` (`id`, `name`, `created`, `modified`) VALUES
(1, '女', '0000-00-00', '2015-08-19'),
(2, '男', '0000-00-00', '2015-08-19');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `family_name` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `postcode1` tinyint(3) NOT NULL,
  `postcode2` tinyint(4) NOT NULL,
  `prefecture` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `address` varchar(256) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `is_deleted`, `family_name`, `first_name`, `phone`, `postcode1`, `postcode2`, `prefecture`, `city`, `address`, `gender_id`, `birthday`, `created`, `modified`) VALUES
(1, 0, '七月', '太郎', '000-000-000', 12, 127, '東京都', '千代田区', 'いいだばし1-1-1', 2, '2010-08-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
