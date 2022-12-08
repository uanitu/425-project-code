-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 03:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmcsmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountoffice`
--

CREATE TABLE `accountoffice` (
  `AccountNumber` int(11) NOT NULL,
  `BillingAmont` float NOT NULL,
  `CreditHoursTaken` tinyint(4) NOT NULL,
  `StudentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registaroffice`
--

CREATE TABLE `registaroffice` (
  `unique_id` int(11) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `currentgpa` float NOT NULL,
  `overallgpa` float NOT NULL,
  `Currentcredithours` int(11) NOT NULL,
  `academicstatus` varchar(25) NOT NULL,
  `StudentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `ApplicationID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ApplicationStatus` int(11) NOT NULL,
  `AwardedAmount` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `NumberofVotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountoffice`
--
ALTER TABLE `accountoffice`
  ADD PRIMARY KEY (`AccountNumber`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `registaroffice`
--
ALTER TABLE `registaroffice`
  ADD PRIMARY KEY (`unique_id`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountoffice`
--
ALTER TABLE `accountoffice`
  MODIFY `AccountNumber` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registaroffice`
--
ALTER TABLE `registaroffice`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountoffice`
--
ALTER TABLE `accountoffice`
  ADD CONSTRAINT `accountoffice_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `registaroffice`
--
ALTER TABLE `registaroffice`
  ADD CONSTRAINT `registaroffice_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
