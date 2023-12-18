-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 05:40 PM
-- Server version: 5.5.10
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pays`
--

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `Code_Commune` int(11) NOT NULL,
  `Nom_Commune` text,
  `Population_2010` int(11) DEFAULT NULL,
  `Population_1999` int(11) DEFAULT NULL,
  `Surface` double DEFAULT NULL,
  `Department` int(11) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  PRIMARY KEY (`Code_Commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`Code_Commune`, `Nom_Commune`, `Population_2010`, `Population_1999`, `Surface`, `Department`, `Latitude`, `Longitude`) VALUES
(1, 'Commune1', 12000, 11500, 10.5, 91, 48.807, 2.237),
(2, 'Commune2', 8500, 8000, 5.4, 92, 48.798, 2.302),
(3, 'Commune3', 15000, 14000, 15.3, 93, 48.856, 2.345),
(101, 'Commune A', 20000, 19000, 12.3, 91, 48.807, 2.237),
(102, 'Commune B', 15000, 14500, 9.1, 92, 48.798, 2.302),
(103, 'Commune C', 10000, 9500, 7.5, 93, 48.856, 2.345),
(104, 'Petitville', 500, NULL, 5.2, 91, 48.9, 2.4),
(105, 'Grandville', 120000, NULL, 30.5, 92, 48.95, 2.45),
(106, 'Créteil', 90000, NULL, 11.5, 93, 48.79, 2.45),
(107, 'Southville', 20000, NULL, 10, 95, 48.6, 2.48),
(108, 'WestEnd', 30000, NULL, 15, 96, 48.7, 2.49),
(109, 'Bonifacio', 8000, NULL, 8, 97, 41.387, 9.159),
(94450, 'DeleteMe', 10000, NULL, 10, 94, 48.8, 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `departements`
--

CREATE TABLE IF NOT EXISTS `departements` (
  `Num_Departement` int(11) NOT NULL,
  `Nom_Departement` text,
  PRIMARY KEY (`Num_Departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departements`
--

INSERT INTO `departements` (`Num_Departement`, `Nom_Departement`) VALUES
(91, 'Essonne'),
(92, 'Hauts-de-Seine'),
(93, 'Seine-Saint-Denis');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `Code_Region` int(11) NOT NULL,
  `Nom_Region` text,
  PRIMARY KEY (`Code_Region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`Code_Region`, `Nom_Region`) VALUES
(1, 'Île-de-France'),
(2, 'Normandie'),
(3, 'Bretagne');
