-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 04:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 2, 'hello\n', '2020-06-30 14:58:00', 0),
(2, 2, 1, 'my man', '2020-06-30 14:58:21', 2),
(3, 2, 1, 'want some cookies?', '2020-06-30 14:59:16', 2),
(4, 1, 2, 'sure why not', '2020-06-30 14:59:33', 0),
(5, 2, 1, 'test test test', '2020-07-01 13:21:33', 2),
(6, 2, 1, '😃😃😃😃😃', '2020-08-06 15:46:12', 0),
(7, 0, 1, 'yo\n', '2020-08-09 06:44:11', 1),
(8, 0, 1, 'yo', '2020-08-09 06:54:48', 1),
(9, 0, 1, 'yo\n', '2020-08-09 06:55:55', 1),
(10, 0, 1, 'what sup boy?😌\n', '2020-08-09 07:03:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'johnsmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'peterParker', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(4, 'jyp', '$2y$10$ITtU0kQZ7Fnbsi4/.MVQfedsjoMdQRj/W4QQaTcqY6iqh7HpqXwOq');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-06-26 14:03:34', 'no'),
(2, 1, '2020-06-26 14:08:11', 'no'),
(3, 1, '2020-06-26 15:01:13', 'no'),
(4, 1, '2020-06-30 09:35:57', 'no'),
(5, 2, '2020-06-30 14:58:03', 'no'),
(6, 1, '2020-06-30 09:43:40', 'no'),
(7, 1, '2020-06-30 09:54:26', 'no'),
(8, 1, '2020-06-30 09:57:42', 'no'),
(9, 1, '2020-06-30 14:59:15', 'no'),
(10, 2, '2020-06-30 14:59:41', 'no'),
(11, 1, '2020-07-01 13:21:32', 'no'),
(12, 2, '2020-07-01 13:28:37', 'no'),
(13, 1, '2020-07-01 13:29:17', 'no'),
(14, 1, '2020-07-04 14:42:38', 'no'),
(15, 1, '2020-08-02 15:35:06', 'no'),
(16, 2, '2020-08-02 15:35:42', 'no'),
(17, 1, '2020-08-06 15:46:15', 'no'),
(18, 2, '2020-08-06 16:27:35', 'no'),
(19, 1, '2020-08-09 07:03:15', 'no'),
(20, 2, '2020-08-09 07:04:54', 'no'),
(21, 1, '2020-08-09 13:30:00', 'no'),
(22, 2, '2020-08-09 13:55:27', 'no'),
(23, 4, '2020-08-09 13:58:29', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
