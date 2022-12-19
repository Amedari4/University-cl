-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2015 at 06:18 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `clearance_basics`
--

CREATE TABLE IF NOT EXISTS `clearance_basics` (
`incre` int(11) NOT NULL,
  `rights` varchar(100) NOT NULL,
  `developed` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtititle` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance_basics`
--

INSERT INTO `clearance_basics` (`incre`, `rights`, `developed`, `website`, `title`, `subtititle`) VALUES
(2, 'University of Eastern Africa, Baraton', 'Likibe and Nathan', 'http://www.ueab.ac.ke', 'UEAB Clearance System', 'graduating has never been this easy');

-- --------------------------------------------------------

--
-- Table structure for table `department_bookstore`
--

CREATE TABLE IF NOT EXISTS `department_bookstore` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_dos`
--

CREATE TABLE IF NOT EXISTS `department_dos` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_finance`
--

CREATE TABLE IF NOT EXISTS `department_finance` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_food`
--

CREATE TABLE IF NOT EXISTS `department_food` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(50) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_health`
--

CREATE TABLE IF NOT EXISTS `department_health` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(50) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_library`
--

CREATE TABLE IF NOT EXISTS `department_library` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_physicalplant`
--

CREATE TABLE IF NOT EXISTS `department_physicalplant` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_registrar`
--

CREATE TABLE IF NOT EXISTS `department_registrar` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_residence`
--

CREATE TABLE IF NOT EXISTS `department_residence` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_sports`
--

CREATE TABLE IF NOT EXISTS `department_sports` (
`incre` int(11) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `basket` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_bookstore`
--

CREATE TABLE IF NOT EXISTS `login_bookstore` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_bookstore`
--

INSERT INTO `login_bookstore` (`incre`, `username`, `password`) VALUES
(1, 'bookstore', 'bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `login_dos`
--

CREATE TABLE IF NOT EXISTS `login_dos` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_dos`
--

INSERT INTO `login_dos` (`id`, `username`, `password`) VALUES
(1, 'dos', 'dos');

-- --------------------------------------------------------

--
-- Table structure for table `login_finance`
--

CREATE TABLE IF NOT EXISTS `login_finance` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_finance`
--

INSERT INTO `login_finance` (`incre`, `username`, `password`) VALUES
(1, 'finance', 'finance');

-- --------------------------------------------------------

--
-- Table structure for table `login_food`
--

CREATE TABLE IF NOT EXISTS `login_food` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_food`
--

INSERT INTO `login_food` (`incre`, `username`, `password`) VALUES
(1, 'food', 'food');

-- --------------------------------------------------------

--
-- Table structure for table `login_health`
--

CREATE TABLE IF NOT EXISTS `login_health` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_health`
--

INSERT INTO `login_health` (`incre`, `username`, `password`) VALUES
(1, 'health', 'health');

-- --------------------------------------------------------

--
-- Table structure for table `login_library`
--

CREATE TABLE IF NOT EXISTS `login_library` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_library`
--

INSERT INTO `login_library` (`incre`, `username`, `password`) VALUES
(1, 'library', 'library');

-- --------------------------------------------------------

--
-- Table structure for table `login_physicalplant`
--

CREATE TABLE IF NOT EXISTS `login_physicalplant` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_physicalplant`
--

INSERT INTO `login_physicalplant` (`incre`, `username`, `password`) VALUES
(1, 'physicalplant', 'physicalplant');

-- --------------------------------------------------------

--
-- Table structure for table `login_registrar`
--

CREATE TABLE IF NOT EXISTS `login_registrar` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_registrar`
--

INSERT INTO `login_registrar` (`incre`, `username`, `password`) VALUES
(1, 'registrar', 'registrar');

-- --------------------------------------------------------

--
-- Table structure for table `login_residence`
--

CREATE TABLE IF NOT EXISTS `login_residence` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_residence`
--

INSERT INTO `login_residence` (`incre`, `username`, `password`) VALUES
(1, 'residence', 'residence');

-- --------------------------------------------------------

--
-- Table structure for table `login_sports`
--

CREATE TABLE IF NOT EXISTS `login_sports` (
`incre` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_sports`
--

INSERT INTO `login_sports` (`incre`, `username`, `password`) VALUES
(1, 'sports', 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
`incre` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `residence` varchar(50) NOT NULL,
  `major` varchar(100) NOT NULL,
  `idnumber` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `department` varchar(250) NOT NULL,
  `clearance_status` int(1) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clearance_basics`
--
ALTER TABLE `clearance_basics`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_bookstore`
--
ALTER TABLE `department_bookstore`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_dos`
--
ALTER TABLE `department_dos`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_finance`
--
ALTER TABLE `department_finance`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_food`
--
ALTER TABLE `department_food`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_health`
--
ALTER TABLE `department_health`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_library`
--
ALTER TABLE `department_library`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_physicalplant`
--
ALTER TABLE `department_physicalplant`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_registrar`
--
ALTER TABLE `department_registrar`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_residence`
--
ALTER TABLE `department_residence`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `department_sports`
--
ALTER TABLE `department_sports`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_bookstore`
--
ALTER TABLE `login_bookstore`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_dos`
--
ALTER TABLE `login_dos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_finance`
--
ALTER TABLE `login_finance`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_food`
--
ALTER TABLE `login_food`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_health`
--
ALTER TABLE `login_health`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_library`
--
ALTER TABLE `login_library`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_physicalplant`
--
ALTER TABLE `login_physicalplant`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_registrar`
--
ALTER TABLE `login_registrar`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_residence`
--
ALTER TABLE `login_residence`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `login_sports`
--
ALTER TABLE `login_sports`
 ADD PRIMARY KEY (`incre`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
 ADD PRIMARY KEY (`incre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clearance_basics`
--
ALTER TABLE `clearance_basics`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `department_bookstore`
--
ALTER TABLE `department_bookstore`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `department_dos`
--
ALTER TABLE `department_dos`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_finance`
--
ALTER TABLE `department_finance`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_food`
--
ALTER TABLE `department_food`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_health`
--
ALTER TABLE `department_health`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_library`
--
ALTER TABLE `department_library`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_physicalplant`
--
ALTER TABLE `department_physicalplant`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_registrar`
--
ALTER TABLE `department_registrar`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_residence`
--
ALTER TABLE `department_residence`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department_sports`
--
ALTER TABLE `department_sports`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_bookstore`
--
ALTER TABLE `login_bookstore`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_dos`
--
ALTER TABLE `login_dos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_finance`
--
ALTER TABLE `login_finance`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_food`
--
ALTER TABLE `login_food`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_health`
--
ALTER TABLE `login_health`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_library`
--
ALTER TABLE `login_library`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_physicalplant`
--
ALTER TABLE `login_physicalplant`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_registrar`
--
ALTER TABLE `login_registrar`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_residence`
--
ALTER TABLE `login_residence`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_sports`
--
ALTER TABLE `login_sports`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
MODIFY `incre` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
