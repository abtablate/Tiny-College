-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 06:37 AM
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
-- Database: `tinycollege`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `BLDG_CODE` int(11) NOT NULL,
  `BLDG_NAME` varchar(255) DEFAULT NULL,
  `BLDG_LOCATION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`BLDG_CODE`, `BLDG_NAME`, `BLDG_LOCATION`) VALUES
(1, 'Science Center', 'North Campus'),
(2, 'Math Building', 'East Campus'),
(3, 'Engineering Hall', 'South Campus'),
(4, 'Arts Pavilion', 'West Campus'),
(5, 'Medical Complex', 'Central Campus');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_CODE` int(11) NOT NULL,
  `CLASS_SECTION` varchar(255) DEFAULT NULL,
  `CLASS_TIME` time DEFAULT NULL,
  `CRS_CODE` int(11) DEFAULT NULL,
  `PROF_NUM` int(11) DEFAULT NULL,
  `ROOM_CODE` int(11) DEFAULT NULL,
  `SEMESTER_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_CODE`, `CLASS_SECTION`, `CLASS_TIME`, `CRS_CODE`, `PROF_NUM`, `ROOM_CODE`, `SEMESTER_CODE`) VALUES
(801, 'A', '08:00:00', 401, 101, 701, 501),
(802, 'B', '09:00:00', 402, 102, 702, 502),
(803, 'C', '10:00:00', 403, 103, 703, 503),
(804, 'D', '11:00:00', 404, 104, 704, 504),
(805, 'E', '12:00:00', 405, 105, 705, 505);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CRS_CODE` int(11) NOT NULL,
  `CRS_TITLE` varchar(255) DEFAULT NULL,
  `CRS_DESCRIPTION` varchar(255) DEFAULT NULL,
  `CRS_CREDIT` int(11) DEFAULT NULL,
  `DEPT_CODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CRS_CODE`, `CRS_TITLE`, `CRS_DESCRIPTION`, `CRS_CREDIT`, `DEPT_CODE`) VALUES
(401, 'CC111', 'Introduction to Programming', 3, 201),
(402, 'CAL1', 'Calculus I', 3, 202),
(403, 'GENBIO', 'General Biology', 3, 203),
(404, 'MODPHY', 'Modern Physics', 3, 204),
(405, 'HIST', 'World History', 2, 205);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_CODE` int(11) NOT NULL,
  `DEPT_NAME` varchar(255) DEFAULT NULL,
  `SCHOOL_CODE` int(11) DEFAULT NULL,
  `PROF_NUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_CODE`, `DEPT_NAME`, `SCHOOL_CODE`, `PROF_NUM`) VALUES
(201, 'CCST', 301, 101),
(202, 'CBA', 302, 102),
(203, 'CAS', 303, 103),
(204, 'CHK', 304, 104),
(205, 'CTED', 305, 105);

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `ENROLL_CODE` int(11) NOT NULL,
  `ENROLL_DATE` date DEFAULT NULL,
  `ENROLL_GRADE` int(11) DEFAULT NULL,
  `CLASS_CODE` int(11) DEFAULT NULL,
  `STU_NUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`ENROLL_CODE`, `ENROLL_DATE`, `ENROLL_GRADE`, `CLASS_CODE`, `STU_NUM`) VALUES
(901, '2025-01-01', 90, 801, 601),
(902, '2026-01-01', 91, 802, 602),
(903, '2027-01-01', 92, 803, 603),
(904, '2028-01-01', 93, 804, 604),
(905, '2029-01-01', 94, 805, 605);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `PROF_NUM` int(11) NOT NULL,
  `PROF_SPECIALTY` varchar(255) DEFAULT NULL,
  `PROF_RANK` int(11) DEFAULT NULL,
  `PROF_LNAME` varchar(255) DEFAULT NULL,
  `PROF_FNAME` varchar(255) DEFAULT NULL,
  `PROF_INITIAL` varchar(255) DEFAULT NULL,
  `PROF_EMAIL` varchar(255) DEFAULT NULL,
  `DEPT_CODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`PROF_NUM`, `PROF_SPECIALTY`, `PROF_RANK`, `PROF_LNAME`, `PROF_FNAME`, `PROF_INITIAL`, `PROF_EMAIL`, `DEPT_CODE`) VALUES
(101, 'Computer Science', 1, 'Smith', 'John', 'A', ' john.smith@uni.edu', 201),
(102, 'Mathematics', 2, 'Carter', 'Emily', 'B', 'emily.carter@uni.edu', 202),
(103, 'Biology', 3, 'Patel', 'Raj', 'C', ' raj.patel@uni.edu', 203),
(104, 'Physics', 4, 'Wong', 'Lisa', 'D', ' lisa.wong@uni.edu', 204),
(105, 'History', 5, 'Lee', 'Michael', 'E', 'michael.lee@uni.edu', 205);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_CODE` int(11) NOT NULL,
  `ROOM_TYPE` varchar(255) DEFAULT NULL,
  `BLDG_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_CODE`, `ROOM_TYPE`, `BLDG_CODE`) VALUES
(701, 'Lecture Hall', 1),
(702, 'Lab', 2),
(703, 'Seminar Room', 3),
(704, 'Auditorium', 4),
(705, 'Conference Room', 5);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SCHOOL_CODE` int(11) NOT NULL,
  `SCHOOL_NAME` varchar(255) DEFAULT NULL,
  `PROF_NUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`SCHOOL_CODE`, `SCHOOL_NAME`, `PROF_NUM`) VALUES
(301, 'School of Science', 101),
(302, ' School of Arts', 102),
(303, 'School of Engineering', 103),
(304, 'School of Business', 104),
(305, ' School of Medicine', 105);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEMESTER_CODE` int(11) NOT NULL,
  `SEMESTER_YEAR` int(11) DEFAULT NULL,
  `SEMESTER_TERM` int(11) DEFAULT NULL,
  `SEMESTER_START_DATE` date DEFAULT NULL,
  `SEMESTER_END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEMESTER_CODE`, `SEMESTER_YEAR`, `SEMESTER_TERM`, `SEMESTER_START_DATE`, `SEMESTER_END_DATE`) VALUES
(501, 2025, 2, '2025-01-01', '2026-01-01'),
(502, 2027, 2, '2027-01-01', '2028-01-01'),
(503, 2029, 2, '2029-01-01', '2030-01-01'),
(504, 2031, 2, '2031-01-01', '2032-01-01'),
(505, 2033, 2, '2033-01-01', '2034-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STU_NUM` int(11) NOT NULL,
  `STU_LNAME` varchar(255) DEFAULT NULL,
  `STU_FNAME` varchar(255) DEFAULT NULL,
  `STU_INITIAL` varchar(255) DEFAULT NULL,
  `STU_EMAIL` varchar(255) DEFAULT NULL,
  `DEPT_CODE` int(11) DEFAULT NULL,
  `PROF_NUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STU_NUM`, `STU_LNAME`, `STU_FNAME`, `STU_INITIAL`, `STU_EMAIL`, `DEPT_CODE`, `PROF_NUM`) VALUES
(601, 'Johnson', 'Alice', 'F', ' alice.j@uni.edu', 201, 101),
(602, 'Williams', 'Bob', 'G', 'bob.w@uni.edu', 202, 102),
(603, 'Kim', 'Charlie', 'H', 'charlie.k@uni.edu', 203, 103),
(604, 'Garcia', 'David', 'I', ' david.g@uni.edu', 204, 104),
(605, 'Lopez', 'Emma', 'J', ' emma.l@uni.edu\r\n', 205, 105);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`BLDG_CODE`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_CODE`),
  ADD KEY `CRS_CODE` (`CRS_CODE`),
  ADD KEY `PROF_NUM` (`PROF_NUM`),
  ADD KEY `ROOM_CODE` (`ROOM_CODE`),
  ADD KEY `SEMESTER_CODE` (`SEMESTER_CODE`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CRS_CODE`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_CODE`),
  ADD KEY `SCHOOL_CODE` (`SCHOOL_CODE`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`ENROLL_CODE`),
  ADD KEY `CLASS_CODE` (`CLASS_CODE`),
  ADD KEY `STU_NUM` (`STU_NUM`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`PROF_NUM`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_CODE`),
  ADD KEY `BLDG_CODE` (`BLDG_CODE`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`SCHOOL_CODE`),
  ADD KEY `PROF_NUM` (`PROF_NUM`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEMESTER_CODE`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STU_NUM`),
  ADD KEY `DEPT_CODE` (`DEPT_CODE`),
  ADD KEY `PROF_NUM` (`PROF_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`CRS_CODE`) REFERENCES `course` (`CRS_CODE`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`PROF_NUM`) REFERENCES `professor` (`PROF_NUM`),
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`ROOM_CODE`) REFERENCES `room` (`ROOM_CODE`),
  ADD CONSTRAINT `class_ibfk_4` FOREIGN KEY (`SEMESTER_CODE`) REFERENCES `semester` (`SEMESTER_CODE`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`SCHOOL_CODE`) REFERENCES `school` (`SCHOOL_CODE`);

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`CLASS_CODE`) REFERENCES `class` (`CLASS_CODE`),
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`STU_NUM`) REFERENCES `student` (`STU_NUM`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`BLDG_CODE`) REFERENCES `building` (`BLDG_CODE`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`PROF_NUM`) REFERENCES `professor` (`PROF_NUM`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `department` (`DEPT_CODE`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`PROF_NUM`) REFERENCES `professor` (`PROF_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
