-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2017 at 02:22 AM
-- Server version: 5.5.48-MariaDB-wsrep
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_m140366ca`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('mayank', 'mayank');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `f_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `Institute` varchar(50) NOT NULL,
  `sex` char(5) NOT NULL,
  `design` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `int_area` varchar(60) NOT NULL,
  `food_pref` varchar(11) NOT NULL,
  `program` varchar(50) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `name`, `Institute`, `sex`, `design`, `phone`, `email`, `int_area`, `food_pref`, `program`) VALUES
(2, 'nitesh', 'National Institute Of Techonology Calicut', 'Male', 'Adhoc', '7736156707', 'nk71083@gmail.com', 'compiler design', 'Vegetarian', 'Btech'),
(7, 'Mayank', 'National Institute Of Techonology Trichy', 'Femal', 'Assitant Professor', '7736156707', 'mayank.mca@yahoo.com', 'Distributed Computing', 'Non-Vegetar', 'MTECH'),
(8, 'iockc', 'National Institute Of Techonology Goa', 'Male', 'Associate Professor', '9999897954', 'mayank.mca@yahoo.com', 'graph theory', 'Non-Vegetar', 'MTECH'),
(9, 'tanvi', 'Other', 'Femal', 'Assitant Professor', '9999897954', 'mayank.mca@yahoo.com', 'computerm vision', 'Non-Vegetar', 'MTECH');

-- --------------------------------------------------------

--
-- Table structure for table `mayank`
--

CREATE TABLE IF NOT EXISTS `mayank` (
  `roll` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mayank`
--

INSERT INTO `mayank` (`roll`) VALUES
(100);

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE IF NOT EXISTS `organizer` (
  `org_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `stu_id` int(5) NOT NULL AUTO_INCREMENT,
  `stu_name` char(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `sem` varchar(2) NOT NULL,
  `program` varchar(50) NOT NULL,
  `institute` text NOT NULL,
  `acm_faculty` varchar(11) NOT NULL,
  `food_pref` varchar(11) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `email`, `phone`, `sem`, `program`, `institute`, `acm_faculty`, `food_pref`) VALUES
(1, 'saur1234', 'nk71083@gmail.com', '9988776655', '3', 'Phd', 'National Institute Of Techonology Calicut', '0', '0'),
(2, 'mayank', 'nk71083@gmail.com', '9988776655', '3', 'MTECH', 'National Institute Of Techonology Calicut', '0', '0'),
(4, 'MAYANK', 'mayank.mca@yaho.com', '9988776655', '3', 'master', 'IIT', '0', '0'),
(8, 'Mayank', 'nksingh0201@gmail.com', '9999897954', '6', 'MTECH', 'National Institute Of Techonology Bhopal', 'Ravneet', 'Non-Vegetar'),
(9, 'Mayank kumar', 'nksingh0201@gmail.com', '9999897954', '6', 'MCA', 'National Institute Of Techonology Trichy', 'Ravneet', 'Vegetarian'),
(10, 'sarvesh', 'sarves@gmail.com', '9999999999', '6', 'MCA', 'National Institute Of Techonology Calicut', 'mayank', 'Non-Vegetar');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE IF NOT EXISTS `submission` (
  `name` varchar(30) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`name`, `sex`, `designation`, `contact`, `email`, `paper`) VALUES
('Nitesh', 'Male', 'Assitant Professor', 7736156707, 'nksingh0201@gmail.com', 'real analysis'),
('Nitesh', 'Male', 'Assitant Professor', 7736156707, 'nksingh0201@gmail.com', 'real analysis'),
('Mayank', 'Femal', 'other1', 7736156707, 'mayank.mca@yahoo.com', 'nit.txt'),
('Nitesh', 'Femal', 'Professor', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('Nitesh', 'Femal', 'Professor', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('Mayank', 'Male', 'Assitant Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('KUMAR', 'Male', 'other', 9999897954, 'nksingh0201@gmail.com', 'real'),
('KUMAR', 'Male', 'mca', 9999897954, 'nksingh0201@gmail.com', 'real'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('KUMAR', 'Femal', 'PHD', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('Mayank kumar', 'Male', 'Teacher', 9999897954, 'mayank.mca@yahoo.com', 'Network'),
('Mayank kumar', 'Male', 'Teacher', 9999897954, 'mayank.mca@yahoo.com', 'Network'),
('aniket', 'Male', 'Assitant Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('aniket', 'Male', 'Assitant Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('fj', 'Male', 'Assitant Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('saf', 'Male', 'Assitant Professor', 9999897954, 'mayank.mca@yahoo.com', 'nit.txt'),
('fj', 'Male', 'Associate Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('fj', 'Male', 'Associate Professor', 9999897954, 'mayank.mca@yahoo.com', 'real'),
('KUMAR', 'Male', 'Associate Professor', 7736156707, 'mayankk235@gmail.com', 'nit.txt'),
('KUMAR', 'Male', 'Associate Professor', 7736156707, 'mayankk235@gmail.com', 'nit.txt'),
('Mayank', 'Male', 'Assitant Professor', 9999897954, 'nksingh0201@gmail.com', 'real'),
('Mayank', 'Male', 'Associate Professor', 9999897954, 'nksingh0201@gmail.com', 'nit.txt'),
('Mayank', 'Male', 'Associate Professor', 9999897954, 'nksingh0201@gmail.com', 'nit.txt'),
('Nitesh', 'Male', 'Associate Professor', 9999897954, 'nksingh0201@gmail.com', 'nit.txt'),
('Nitesh', 'Male', 'Assitant Professor', 7736156707, 'nksingh0201@gmail.com', 'real'),
('hemaksi', 'Femal', 'Associate Professor', 9999897954, 'mayank.mca@yahoo.com', 'netwok');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
