-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 12:30 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `catproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `candi_tbl`
--

CREATE TABLE IF NOT EXISTS `candi_tbl` (
`cid` int(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `cemail` varchar(50) NOT NULL,
  `cmob` varchar(15) NOT NULL,
  `caddress` varchar(100) NOT NULL,
  `qualifications` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `shortlisted_for` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `candi_tbl`
--

INSERT INTO `candi_tbl` (`cid`, `cname`, `cemail`, `cmob`, `caddress`, `qualifications`, `status`, `shortlisted_for`) VALUES
(41, 'Kunal Borse', 'k@gmail.com', '77894561', 'Shirpur , India', 'B-Tech', 'Shortlisted', 0),
(42, 'Vedant Shimpi', 'v@gmail.com', '7894512365', 'Shirpur , India', 'MBBS', 'Shortlisted', 0),
(43, 'Mangesh Bide', 'm@gmail.com', '2420420420', 'Shirpur , India', 'B-Tech', 'Shortlisted', 0),
(44, 'Gauresh', 'gs@gmail.com', '8600180045', 'Nashik', 'B-Tech', 'pending', 0),
(45, 'Mayur Kumbhar', 'm@gmail.com', '7894512356', 'Shirpur , India', 'B-Tech', 'Shortlisted', 8);

-- --------------------------------------------------------

--
-- Table structure for table `hiringtbl`
--

CREATE TABLE IF NOT EXISTS `hiringtbl` (
  `hiid` int(100) NOT NULL,
  `hame` varchar(100) NOT NULL,
  `hmob` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpass` varchar(100) NOT NULL,
  `hdesignation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hiringtbl`
--

INSERT INTO `hiringtbl` (`hiid`, `hame`, `hmob`, `hemail`, `hpass`, `hdesignation`) VALUES
(0, 'Tejas Shimpi', '07248964476', 'shimpit45@gmail.com', '7774912', 'Hiring Manager');

-- --------------------------------------------------------

--
-- Table structure for table `hiring_tbl`
--

CREATE TABLE IF NOT EXISTS `hiring_tbl` (
`hid` int(100) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hmob` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpass` varchar(100) NOT NULL,
  `hdesignation` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `hiring_tbl`
--

INSERT INTO `hiring_tbl` (`hid`, `hname`, `hmob`, `hemail`, `hpass`, `hdesignation`) VALUES
(3, 'Tejas Shimpi', '07248964476', 'shimpit45@gmail.com', '7774912', 'Hiring Manager'),
(6, 'Aakash Bafna', '2420420420', 'aakash@gmail.com', '123456', 'HR specialist'),
(9, 'Kaustubh Borse', '7894512365', 'k@gmail.com', '12345', 'Hiring Executive');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tbl`
--

CREATE TABLE IF NOT EXISTS `jobs_tbl` (
`jid` int(100) NOT NULL,
  `jtitle` varchar(100) NOT NULL,
  `jdescr` varchar(100) NOT NULL,
  `jquality` varchar(100) NOT NULL,
  `jsalary` varchar(100) NOT NULL,
  `jexperience` varchar(100) NOT NULL,
  `jlocation` varchar(100) NOT NULL,
  `OCEAN` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jobs_tbl`
--

INSERT INTO `jobs_tbl` (`jid`, `jtitle`, `jdescr`, `jquality`, `jsalary`, `jexperience`, `jlocation`, `OCEAN`) VALUES
(8, 'SDE-1', 'working with python flask ', 'Logically Strong and Skilled Developer', '5000000/annum', 'Fresher', 'pune, india', 'Extraversion'),
(9, 'SDE-2', 'working with python flask ', 'Logically Strong and Skilled Developer', '5000000/annum', 'Fresher', 'pune, india', 'Agreeableness'),
(10, 'SENIOR DEVELOPER', 'working with python flask ', 'Logically Strong and Skilled Developer', '5000000/annum', 'Fresher', 'pune, india', 'Conscientiousness'),
(11, 'JUNIOR DEVELOPER', 'working with python flask ', 'Logically Strong and Skilled Developer', '5000000/annum', 'Fresher', 'pune, india', 'Neuroticism'),
(12, 'TECH LEAD', 'working with python flask ', 'Logically Strong and Skilled Developer', '5000000/annum', 'Fresher', 'pune, india', 'Openness');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
`qid` int(11) NOT NULL,
  `questions` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candi_tbl`
--
ALTER TABLE `candi_tbl`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `hiring_tbl`
--
ALTER TABLE `hiring_tbl`
 ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `jobs_tbl`
--
ALTER TABLE `jobs_tbl`
 ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
 ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candi_tbl`
--
ALTER TABLE `candi_tbl`
MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `hiring_tbl`
--
ALTER TABLE `hiring_tbl`
MODIFY `hid` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jobs_tbl`
--
ALTER TABLE `jobs_tbl`
MODIFY `jid` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
