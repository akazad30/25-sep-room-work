-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2016 at 09:15 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `multipleimage`
--

-- --------------------------------------------------------

--
-- Table structure for table `upload_data`
--

CREATE TABLE IF NOT EXISTS `upload_data` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `USER_CODE` int(4) unsigned zerofill NOT NULL,
  `FILE_NAME` varchar(200) NOT NULL,
  `FILE_SIZE` varchar(200) NOT NULL,
  `FILE_TYPE` varchar(200) NOT NULL,
  `Image` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `upload_data`
--

INSERT INTO `upload_data` (`ID`, `USER_CODE`, `FILE_NAME`, `FILE_SIZE`, `FILE_TYPE`, `Image`) VALUES
(4, 0000, '014040178_10208406802781627_3417180884949017445_n.jpg', '116022', 'image/jpeg', ''),
(5, 0000, '114079714_331481477188179_5224252353533402598_n.jpg', '198398', 'image/jpeg', ''),
(6, 0000, '2azad.jpg', '22387', 'image/jpeg', ''),
(7, 0000, '014040178_10208406802781627_3417180884949017445_n.jpg', '116022', 'image/jpeg', ''),
(8, 0000, '114079714_331481477188179_5224252353533402598_n.jpg', '198398', 'image/jpeg', ''),
(9, 0000, '2azad.jpg', '22387', 'image/jpeg', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
