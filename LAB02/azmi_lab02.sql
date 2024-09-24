-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2024 at 11:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azmi lab02`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_info`
--

CREATE TABLE `course_info` (
  `Course_id` varchar(10) NOT NULL,
  `Course_name` varchar(50) DEFAULT NULL,
  `Semester` varchar(20) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_info`
--

INSERT INTO `course_info` (`Course_id`, `Course_name`, `Semester`, `Year`) VALUES
('CSE-103', 'Programming', 'Fall', '2022'),
('CSE-246', 'Algorithm', 'Fall', '2021'),
('CSE-302', 'Database', 'Spring', '2023'),
('CSE-405', 'Networking', 'Summer', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Stu_id` int(11) NOT NULL,
  `Stu_name` varchar(50) DEFAULT NULL,
  `Stu_address` varchar(100) DEFAULT NULL,
  `Course_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Stu_id`, `Stu_name`, `Stu_address`, `Course_id`) VALUES
(401, 'Asif', 'Dhaka', 'CSE-246'),
(402, 'Rupa', 'Dhaka', 'CSE-246'),
(403, 'Bobi', 'Rajshahi', 'CSE-405'),
(404, 'Ovi', 'Barisal', 'CSE-103'),
(405, 'Riya', 'Dhaka', 'CSE-405'),
(406, 'Ana', 'Sylhet', 'CSE-103'),
(407, 'Robi', 'Khulna', 'CSE-302'),
(408, 'Nazrul', 'Khulna', 'CSE-302');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `ename` varchar(50) DEFAULT NULL,
  `Cname` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`ename`, `Cname`, `salary`) VALUES
('Rahim', 'Samsung', 20000),
('Sabbir', 'GP', 30000),
('Mitu', 'Robi', 15000),
('Toma', 'Ericson', 35000),
('Jabber', 'Samsung', 60000),
('Babu', 'Robi', 25000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_info`
--
ALTER TABLE `course_info`
  ADD PRIMARY KEY (`Course_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
