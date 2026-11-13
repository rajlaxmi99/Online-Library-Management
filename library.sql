-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 02:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'Mr.', 'Abdul', 'Hamid', '123456', 'mr.hamid@gmail.com', '12345678', 'p.jpg'),
(2, 'Nobonita', 'Das', 'Nobonita', '111111', 'nobonita@gmail.com', '012345678', '4881.jpg'),
(3, 'Mr.', 'X', 'X', '222222', 'samiarahman@gmail.com', '133446557', 'p.jpg'),
(4, 'Rajlaxmi', 'Bhujbal', 'raj', '123', 'rajlaxmibhujbal99@gmail.com', '1234567890', ''),
(5, 'sanskruti', 'bhujbal', 'sanskruti', '123', 'sans123@gmail.com', '123456789', 'p.png'),
(6, 'pranav', 'Bhujbal', 'prani', '123', 'pranavgunjal99@gmail.com', '01234567890', 'profilepic.png'),
(7, 'Tanvi', 'Shinde', 'tanuu', '123', 'tanuu@gmail.com', '1234567890', 'p.jpg'),
(8, 'arjun', 'sharma', 'arjun', '1234', 'arjun@gmail.com', '9635824751', 'p.jpg'),
(9, 'omraj', 'bhujbal', 'omiii', '123456', 'rajlaxmi@gmail.com', '371151847', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(5, 'Promi', 'hello!'),
(28, 'prani', 'I am prani'),
(29, 'prani', 'my self admin'),
(30, 'Admin', 'I am Sanskruti'),
(31, 'Admin', 'I am Sanskruti'),
(32, 'Admin', 'my self hamid'),
(33, 'Admin', 'my self tanvi'),
(34, 'tanvi', 'my self tanvi shinde'),
(35, 'Admin', ''),
(36, 'Admin', ''),
(37, 'Admin', ''),
(38, 'Admin', ''),
(39, 'Admin', ''),
(40, 'Admin', ''),
(41, 'Admin', ''),
(42, 'Admin', ''),
(43, 'Admin', ''),
(44, 'Admin', ''),
(45, 'Admin', ''),
(46, 'Admin', ''),
(47, 'Admin', ''),
(48, 'Admin', ''),
(49, 'Admin', ''),
(50, 'omiii', ''),
(51, 'omiii', ''),
(52, 'omiii', '');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) VALUES
('Promi', 1, '2019-05-21', 31, 3.1, 'not paid'),
('Afifa', 1, '2019-05-21', 1, 0.1, 'not paid'),
('sanskruti', 3, '2023-04-22', 2614, 261.4, 'not paid'),
('sanskruti', 3, '2023-04-22', 2614, 261.4, 'not paid'),
('sanskruti', 3, '2023-04-22', 2614, 261.4, 'not paid'),
('sanskruti', 3, '2023-04-22', 2614, 261.4, 'not paid'),
('sanskruti', 3, '2023-04-22', 2614, 261.4, 'not paid'),
('sanskruti', 3, '2023-04-23', 13, 1.3, 'not paid'),
('promi', 3, '2023-04-23', 1438, 143.8, 'not paid'),
('tanvi', 2, '2023-04-26', 10, 1, 'not paid'),
('arjun', 2, '2023-12-14', 0, 0, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('Promi', 3, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-04-22', '2019-05-16'),
('Promi', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-03-20', '2019-04-20'),
('Promi', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-01-30', '2019-02-28'),
('Afifa', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-04-20', '2019-05-20'),
('Afifa', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-02-20', '2019-02-10'),
('Afifa', 1, '', '', ''),
('sanskruti', 3, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2023-04-01', '2023-04-10'),
('sanskruti', 3, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2023-04-01', '2023-04-10'),
('sanskruti', 3, '', '', ''),
('tanvi', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2023-04-01', '2023-04-16'),
('raj', 2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('Afia', 'Abida', 'Promi', '111111', 1, 'afia1@gmail.com', '000000000', '7996_3d_modeling_5.jpg'),
('sanzida', 'mou', 'Mim', '555555', 324, 'mim@gmail.com', '53454', 'p.jpg'),
('Mr.', 'Rahman', 'Rahman', '212324', 1510016, 'samiarahman@gmail.com', '123456', 'p.jpg'),
('Sumaiya', 'Shimu', 'Shimu1', '987654', 1510052, 'shimu1@gmail.com', '1739000000', 'p.jpg'),
('Suchana', 'Pramanik', 'Suchana', '121212', 1510047, 'suchana@gmail.com', '1739000000', 'p.jpg'),
('Afifa ', 'Ashraf', 'Afifa', '121212', 1510047, 'afifa@gmail.com', '1739000001', 'p.jpg'),
('sanskruti', 'bhujbal', 'sanskruti', '123', 5616, 'sans123@gmail.com', '123456789', 'p.jpg'),
('Tanvi', 'Shinde', 'tanvi', '123', 5616, 'tanuu@gmail.com', '01234567890', 'p.jpg'),
('raj', 'bhujbal', 'raj', '1234', 5821, 'raj@gmail.com', '963852741', 'p.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
