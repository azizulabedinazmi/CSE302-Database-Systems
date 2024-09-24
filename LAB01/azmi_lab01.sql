-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 09:10 PM
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
-- Database: `azmi lab01`
--

--
-- Dumping data for table `course_info`
--

INSERT INTO `course_info` (`Course_id`, `Course_name`, `semester`, `year`) VALUES
('CSE-302', 'Database', 'Fall', 2016),
('ETE-465', 'Database', 'Spring', 2016),
('CSE-302', 'Database', 'Spring', 2015),
('ICE-245', 'Algorithm', 'fall', 2015);

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Stu_id`, `Stu_name`, `Stu_address`, `Course_id`) VALUES
(401, 'Amir', 'Dhaka', 'CSE-103'),
(402, 'Ana', 'Sylhet', 'CSE-302'),
(403, 'Bobi', 'Rajshahi', 'CSE-302'),
(404, 'Rupa', 'Dhaka', 'ICE-305'),
(405, 'Asif', 'Dhaka', 'ICE-305'),
(407, 'Robi', 'Khulna', 'ICE-245'),
(408, 'Nazmul', 'Khulna', 'ETE-465'),
(409, 'Ovi', 'Barisal', 'CSE-302');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
