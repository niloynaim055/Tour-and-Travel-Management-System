-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 01:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectmeteor`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `busID` varchar(10) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `originArea` varchar(25) NOT NULL,
  `destinationArea` varchar(25) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `seats` int(5) NOT NULL,
  `windows` int(5) NOT NULL,
  `fare` varchar(6) NOT NULL,
  `seatsAvailable` int(5) NOT NULL,
  `noOfBookings` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busID`, `operator`, `type`, `origin`, `destination`, `originArea`, `destinationArea`, `departure`, `arrival`, `seats`, `windows`, `fare`, `seatsAvailable`, `noOfBookings`) VALUES
('ARP001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Itanagar', 'Guwahati', 'Itanagar', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('ARP002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Itanagar', 'Guwahati', 'Itanagar', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('ARP003', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Shillong', 'Itanagar', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('ARP004', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Shillong', 'Itanagar', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('ARP005', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Kohima', 'Itanagar', 'Kohima', '12:00', '10:00', 28, 10, '800', 21, 0),
('ARP006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Itanagar', 'Kohima', 'Itanagar', 'Kohima', '14:00', '13:00', 35, 2, '800', 4, 0),
('ARP007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Imphal', 'Itanagar', 'Imphal', '12:30', '8:00', 36, 3, '830', 9, 0),
('ARP008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Imphal', 'Itanagar', 'Imphal', '14:00', '10:00', 36, 3, '850', 16, 0),
('ARP009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Aizwal', 'Itanagar', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('ARP010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Itanagar', 'Aizwal', 'Itanagar', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('ARP011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Itanagar', 'Agartala', 'Itanagar', '', '19:00', '13:00', 36, 3, '750', 10, 0),
('ARP012', 'Deep Travels', 'Non AC Sleeper', 'Itanagar', 'Agartala', 'Itanagar', 'Agartala', '11:00', '6:00', 36, 3, '750', 10, 0),
('GUW001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Guwahati', 'Shillong', 'Khanapara', 'Dhanketi', '17:00', '20:00', 36, 3, '150', 13, 7),
('GUW002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Guwahati', 'Shillong', 'Khanapara', 'Police Bazar', '6:00', '9:00', 28, 7, '150', 14, 81),
('GUW003', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Itanagar', 'Khanapara', 'Itanagar', '20:00', '5:00', 32, 21, '500', 17, 0),
('GUW004', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Itanagar', 'ISBT', 'Itangar', '17:00', '3:00', 32, 21, '632', 6, 0),
('GUW005', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Imphal', 'Khanapara', 'Imphal', '16:00', '7:00', 28, 10, '800', 21, 0),
('GUW006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Guwahati', 'Imphal', 'Paltanbazar', 'Imphal', '14:00', '6:00', 35, 2, '800', 4, 0),
('GUW007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Kohima', 'Khanapara', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('GUW008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Kohima', 'Khanapara', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('GUW009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Aizwal', 'ISBT', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('GUW010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Guwahati', 'Aizwal', 'ISBT', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('GUW011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Guwahati', 'Agartala', 'ISBT', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('GUW012', 'Deep Travels', 'Non AC Sleeper', 'Guwahati', 'Agartala', 'ISBT', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('MIZO001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Aizwal', 'Guwahati', 'Aizwal', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('MIZO002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Aizwal', 'Guwahati', 'Aizwal', 'Paltanbazar', '6:00', '9:00', 28, 7, '150', 11, 0),
('MIZO003', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Shillong', 'Aizwal', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('MIZO004', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Shillong', 'Aizwal', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('MIZO005', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Itanagar', 'Aizwal', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('MIZO006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Aizwal', 'Itanagar', 'Aizwal', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('MIZO007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Kohima', 'Aizwal', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('MIZO008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Kohima', 'Aizwal', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('MIZO009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Imphal', 'Aizwal', 'Imphal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('MIZO010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Aizwal', 'Imphal', 'Aizwal', 'Imphal', '18:00', '14:00', 36, 3, '950', 16, 0),
('MIZO011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Aizwal', 'Agartala', 'Aizwal', 'Agartala', '19:00', '13:00', 36, 3, '450', 10, 0),
('MIZO012', 'Deep Travels', 'Non AC Sleeper', 'Aizwal', 'Agartala', 'Aizwal', 'Agartala', '11:00', '6:00', 36, 3, '450', 10, 0),
('MNP001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Imphal', 'Guwahati', 'Imphal', 'Khanapara', '17:00', '20:00', 36, 3, '150', 6, 0),
('MNP002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Imphal', 'Guwahati', 'Imphal', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('MNP003', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Shillong', 'Imphal', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('MNP004', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Shillong', 'Imphal', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('MNP005', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Itanagar', 'Imphal', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('MNP006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Imphal', 'Itanagar', 'Imphal', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('MNP007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Aizwal', 'Imphal', 'Aizwal', '12:30', '8:00', 36, 3, '830', 9, 0),
('MNP008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Aizwal', 'Imphal', 'Aizwal', '14:00', '00:00', 36, 3, '850', 16, 0),
('MNP009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Kohima', 'Imphal', 'Kohima', '16:00', '12:00', 36, 3, '1000', 16, 0),
('MNP010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Imphal', 'Kohima', 'Imphal', 'Kohima', '18:00', '14:00', 36, 3, '950', 16, 0),
('MNP011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Imphal', 'Agartala', 'Imphal', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('MNP012', 'Deep Travels', 'Non AC Sleeper', 'Imphal', 'Agartala', 'Imphal', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('NAGA001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Kohima', 'Guwahati', 'Kohima', 'ISBT', '17:00', '20:00', 36, 3, '150', 6, 0),
('NAGA002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Kohima', 'Guwahati', 'Kohima', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('NAGA003', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Shillong', 'Kohima', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('NAGA004', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Shillong', 'Kohima', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('NAGA005', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Itanagar', 'Kohima', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('NAGA006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Kohima', 'Itanagar', 'Kohima', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('NAGA007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Imphal', 'Kohima', 'Imphal', '12:30', '8:00', 36, 3, '830', 9, 0),
('NAGA008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Imphal', 'Kohima', 'Aizwal', '14:00', '00:00', 36, 3, '850', 16, 0),
('NAGA009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Aizwal', 'Kohima', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('NAGA010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Kohima', 'Aizwal', 'Kohima', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('NAGA011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Kohima', 'Agartala', 'Kohima', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('NAGA012', 'Deep Travels', 'Non AC Sleeper', 'Kohima', 'Agartala', 'Kohima', 'Agartala', '11:00', '6:00', 36, 3, '750', 9, 1),
('SHL001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Shillong', 'Guwahati', 'Police Bazar', 'Khanapara', '00:00', '3:00', 36, 3, '150', 6, 0),
('SHL002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Shillong', 'Guwahati', 'Police Bazar', 'Khanapara', '10:00', '12:00', 28, 7, '150', 11, 0),
('SHL003', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Itanagar', 'Police Bazar', 'Itanagar', '20:00', '10:00', 32, 21, '500', 17, 0),
('SHL004', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Itanagar', 'Police Bazar', 'Itangar', '17:00', '3:00', 32, 21, '632', 6, 0),
('SHL005', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Imphal', 'Police Bazar', 'Imphal', '16:00', '7:00', 28, 10, '800', 21, 0),
('SHL006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Shillong', 'Imphal', 'Police Bazar', 'Imphal', '14:00', '6:00', 35, 2, '800', 4, 0),
('SHL007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Kohima', 'Police Bazar', 'Kohima', '12:30', '8:00', 36, 3, '830', 9, 0),
('SHL008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Kohima', 'Police Bazar', 'Kohima', '14:00', '00:00', 36, 3, '850', 16, 0),
('SHL009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Aizwal', 'Police Bazar', 'Aizwal', '16:00', '12:00', 36, 3, '1000', 16, 0),
('SHL010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Shillong', 'Aizwal', 'Police Bazar', 'Aizwal', '18:00', '14:00', 36, 3, '950', 16, 0),
('SHL011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Shillong', 'Agartala', 'Police Bazar', 'Agartala', '19:00', '13:00', 36, 3, '750', 10, 0),
('SHL012', 'Deep Travels', 'Non AC Sleeper', 'Shillong', 'Agartala', 'Police Bazar', 'Kishanganj', '11:00', '6:00', 36, 3, '750', 10, 0),
('TRI001', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Agartala', 'Guwahati', 'Agartala', 'ISBT', '17:00', '20:00', 36, 3, '150', 6, 0),
('TRI002', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Seater', 'Agartala', 'Guwahati', 'Agartala', 'Khanapara', '6:00', '9:00', 28, 7, '150', 11, 0),
('TRI003', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Shillong', 'Agartala', 'Police Bazar', '20:00', '5:00', 32, 21, '500', 17, 0),
('TRI004', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Shillong', 'Agartala', 'Police Bazar', '17:00', '3:00', 32, 21, '632', 6, 0),
('TRI005', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Itanagar', 'Agartala', 'Itanagar', '16:00', '7:00', 28, 10, '800', 21, 0),
('TRI006', 'Royal Tour & Travels', 'Non AC Sleeper', 'Agartala', 'Itanagar', 'Agartala', 'Itanagar', '14:00', '6:00', 35, 2, '800', 4, 0),
('TRI007', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Imphal', 'Agartala', 'Imphal', '12:30', '8:00', 36, 3, '330', 9, 0),
('TRI008', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Imphal', 'Agartala', 'Imphal', '14:00', '00:00', 36, 3, '350', 16, 0),
('TRI009', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Aizwal', 'Agartala', 'Aizwal', '16:00', '12:00', 36, 3, '200', 16, 0),
('TRI010', 'Royal Tour & Travels', 'Non AC Sleeper', 'Agartala', 'Aizwal', 'Agartala', 'Aizwal', '18:00', '14:00', 36, 3, '250', 16, 0),
('TRI011', 'Jagannath Travels and Tours Pvt. Ltd', 'Non AC Sleeper', 'Agartala', 'Kohima', 'Agartala', 'Kohima', '19:00', '13:00', 36, 3, '650', 10, 0),
('TRI012', 'Deep Travels', 'Non AC Sleeper', 'Agartala', 'Kohima', 'Agartala', 'Kohima', '11:00', '6:00', 36, 3, '650', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `busbookings`
--

CREATE TABLE `busbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busbookings`
--

INSERT INTO `busbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`) VALUES
(1, 'joydeep', '31-03-2018', 'no', 'Guwahati', 'Shillong', 4),
(2, 'joydeep', '31-03-2018', 'no', 'Guwahati', 'Shillong', 1),
(3, 'joydeep', '31-03-2018', 'yes', 'Guwahati', 'Shillong', 6),
(4, 'joydeep', '31-03-2018', 'yes', 'Kohima', 'Agartala', 1),
(5, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(6, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(7, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(8, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(9, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(10, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(11, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(12, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(13, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(14, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(15, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(16, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(17, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(18, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(19, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(20, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(21, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(22, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(23, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(24, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(25, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(26, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(27, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(28, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(29, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(30, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(31, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(32, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(33, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(34, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(35, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Shillong', 2),
(36, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 1),
(37, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(38, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(39, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(40, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(41, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cabbookings`
--

CREATE TABLE `cabbookings` (
  `bookingID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `date` varchar(20) NOT NULL,
  `cancelled` varchar(10) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `carID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabbookings`
--

INSERT INTO `cabbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `carID`) VALUES
(1, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(2, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(3, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 2),
(4, 'joydeep', '12-11-2017', 'yes', 'Guwahati', 'Shillong', 2),
(5, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(6, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(7, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(8, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(9, 'joydeep', '12-11-2017', 'no', 'Guwahati', 'Shillong', 3),
(10, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'Shillong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cabdrivers`
--

CREATE TABLE `cabdrivers` (
  `carID` int(5) NOT NULL,
  `carType` varchar(30) NOT NULL,
  `carModel` varchar(30) NOT NULL,
  `carNo` varchar(20) NOT NULL,
  `driverName` varchar(50) NOT NULL,
  `driverPhone` varchar(20) NOT NULL,
  `driverRating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabdrivers`
--

INSERT INTO `cabdrivers` (`carID`, `carType`, `carModel`, `carNo`, `driverName`, `driverPhone`, `driverRating`) VALUES
(1, 'Sedan', 'Ciaz', 'AS 01 HC 1234', 'Rakesh Sharma', '+91 2569874587', '4.6'),
(2, 'SUV', 'Vitara Breeza', 'AS 01 BZ 1234', 'Rahul Verma', '+91 2569874587', '4.4'),
(3, 'Hatchback', 'Alto 800', 'AS 01 GC 1234', 'Arun Shah', '+91 2569874587', '4.1'),
(4, 'Sedan', 'Swift Dzire', 'AS 01 AZ 1258', 'Sample Sedan Driver 1', '5879584586', '4.2'),
(5, 'Sedan', 'Xcent', 'AS 01 AZ 1278', 'Sample Sedan Driver 2', '5879584586', '4.2');

-- --------------------------------------------------------

--
-- Table structure for table `cabs`
--

CREATE TABLE `cabs` (
  `id` int(5) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `time` int(10) NOT NULL,
  `originCode` varchar(10) NOT NULL,
  `destinationCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabs`
--

INSERT INTO `cabs` (`id`, `origin`, `destination`, `distance`, `time`, `originCode`, `destinationCode`) VALUES
(1, 'Guwahati', 'Shillong', 95.8, 125, 'GAU', 'SHL');

-- --------------------------------------------------------

--
-- Table structure for table `flightbookings`
--

CREATE TABLE `flightbookings` (
  `bookingID` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flightbookings`
--

INSERT INTO `flightbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`, `type`) VALUES
(2, 'apple', 'mango', 'orange', '', '', 0, ''),
(3, '', 'Friday 29th of September 2017 at 12:00:59 AM', '', '', '', 0, ''),
(4, '', 'Friday 29th of September 2017 at 12:01:21 AM', '', '', '', 0, ''),
(5, '', 'Friday 29th of September 2017 at 12:02:11 AM', 'no', '', '', 0, ''),
(6, '', 'Friday 29th of September 2017 at 12:03:37 AM', 'no', '', '', 0, ''),
(7, '', 'Friday 29th of September 2017 at 12:04:13 AM', 'no', '', '', 0, ''),
(8, '', 'Friday 29th of September 2017 at 12:05:59 AM', 'no', '', '', 0, ''),
(9, '', 'Friday 29th of September 2017 at 12:06:37 AM', 'no', '', '', 0, ''),
(10, '', 'Friday 29th of September 2017 at 12:08:51 AM', 'no', '', '', 0, ''),
(11, '', 'Friday 29th of September 2017 at 12:09:33 AM', 'no', '', '', 0, ''),
(12, '', 'Friday 29th of September 2017 at 12:10:00 AM', 'no', '', '', 0, ''),
(13, '', 'Friday 29th of September 2017 at 12:11:14 AM', 'no', '', '', 0, ''),
(14, '', 'Friday 29th of September 2017 at 05:29:44 PM', 'no', '', '', 0, ''),
(15, '', 'Friday 29th of September 2017 at 05:31:25 PM', 'no', '', '', 0, ''),
(16, '', 'Friday 29th of September 2017 at 05:33:05 PM', 'no', '', '', 0, ''),
(17, 'joydeepguwahati', 'Saturday 30th of September 2017 at 05:14:35 PM', 'no', '', '', 0, ''),
(18, 'joydeepguwahati', 'Saturday 30th of September 2017 at 05:44:14 PM', 'no', '', '', 0, ''),
(24, '', 'Saturday 30th of September 2017 at 08:17:33 PM', 'no', '', '', 0, ''),
(25, '', 'Saturday 30th of September 2017 at 10:07:15 PM', 'no', '', '', 0, ''),
(31, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 0, 'OneWayFlight'),
(32, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 0, 'OneWayFlight'),
(33, 'joydeep', '04-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(34, 'joydeep', '05-10-2017', 'yes', 'Kolkata', 'Guwahati', 4, 'OneWayFlight'),
(35, 'joydeep', '07-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(36, 'joydeep', '10-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(37, 'joydeep', '14-10-2017', 'yes', '', '', 0, 'hotel'),
(38, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(39, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(40, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(41, 'joydeep', '15-10-2017', 'yes', '', '', 0, 'hotel'),
(42, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(43, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(44, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(45, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(46, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(47, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(48, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(49, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(50, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(51, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(52, 'joydeep', '15-10-2017', 'yes', '', '', 0, ''),
(53, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(54, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(55, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(56, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(57, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(58, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(59, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(60, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(61, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(62, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(63, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(64, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(65, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(66, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(67, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(68, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(69, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(70, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(71, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(72, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(73, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(74, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(75, 'joydeep', '16-10-2017', 'yes', '', '', 0, ''),
(76, 'joydeep', '16-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(77, 'joydeep', '17-10-2017', 'yes', 'Guwahati', 'Kolkata', 3, 'ReturnTripFlight'),
(78, 'joydeep', '26-10-2017', 'yes', 'Guwahati', 'Kolkata', 4, 'ReturnTripFlight'),
(79, 'joydeep', '30-10-2017', 'no', 'Guwahati', 'Kolkata', 4, 'OneWayFlight'),
(80, 'joydeep', '02-11-2017', 'yes', 'Bhopal', 'Jaipur', 4, 'OneWayFlight'),
(81, 'joydeep', '03-11-2017', 'no', 'Guwahati', 'Bengaluru', 7, 'OneWayFlight'),
(82, 'joydeep', '05-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(83, 'joydeep', '05-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(84, 'joydeep', '05-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(85, 'joydeep', '06-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(86, 'joydeep', '07-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(87, 'joydeep', '07-11-2017', 'yes', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(88, 'joydeep', '07-11-2017', 'no', 'Guwahati', 'Pune', 3, 'ReturnTripFlight'),
(89, 'joydeep', '07-11-2017', 'yes', '', '', 0, ''),
(90, 'joydeep', '17-12-2017', 'no', 'Guwahati', 'Pune', 4, 'ReturnTripFlight'),
(91, 'joydeep', '18-12-2017', 'no', 'New Delhi', 'Hyderabad', 12, 'OneWayFlight'),
(92, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'New Delhi', 1, 'OneWayFlight'),
(93, 'joydeep', '18-12-2017', 'no', 'Kolkata', 'Bengaluru', 2, 'OneWayFlight'),
(94, 'joydeep', '18-12-2017', 'no', 'Guwahati', 'Pune', 2, 'ReturnTripFlight'),
(95, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(96, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(97, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(98, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(99, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(100, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(101, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(102, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(103, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(104, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(105, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(106, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(107, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(108, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(109, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(110, 'joydeep', '30-03-2018', 'no', '<br />\r\n<b>Notice</b>:  Undefined variable: origin', '<br />\r\n<b>Notice</b>:  Undefined variable: destin', 5, 'bus'),
(111, 'ripon181', '03-01-2023', 'yes', 'New Delhi', 'Kolkata', 1, 'ReturnTripFlight'),
(112, 'ripon181', '03-01-2023', 'yes', 'Dhaka', 'Cox', 1, 'OneWayFlight'),
(113, 'ripon181', '03-01-2023', 'yes', 'Dhaka', 'Cox', 1, 'OneWayFlight'),
(114, 'ripon181', '03-01-2023', 'yes', 'Dhaka', 'Cox', 1, 'OneWayFlight'),
(115, 'ripon181', '03-01-2023', 'yes', 'Dhaka', 'Cox', 1, 'OneWayFlight'),
(116, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Cox', 1, 'OneWayFlight'),
(117, 'ripon181', '03-01-2023', 'no', '', '', 0, ''),
(118, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Cox', 1, 'OneWayFlight');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_no` varchar(10) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `distance` int(10) NOT NULL,
  `fare` float NOT NULL,
  `class` varchar(10) NOT NULL,
  `seats_available` int(5) NOT NULL,
  `departs` varchar(10) NOT NULL,
  `arrives` varchar(10) NOT NULL,
  `operator` varchar(25) NOT NULL,
  `origin_code` varchar(10) NOT NULL,
  `destination_code` varchar(10) NOT NULL,
  `refundable` varchar(20) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_no`, `origin`, `destination`, `distance`, `fare`, `class`, `seats_available`, `departs`, `arrives`, `operator`, `origin_code`, `destination_code`, `refundable`, `noOfBookings`) VALUES
('', 'Dhaka', 'kuakata', 0, 5600, 'Business', 52, '18:14', '19:15', 'Biman Bangladesh Airlines', 'DHA', 'KUA', 'Non Refundable', 0),
('BBA001', 'Dhaka', 'Cox', 200, 5600, 'Business', 21, '06:41', '08:39', 'Biman Bangladesh Airlines', 'DHA', 'COX', 'Refundable', 4),
('BBA002', 'Dhaka', 'Cox', 200, 6500, 'Economy', 48, '16:52', '17:56', 'Biman Bangladesh Airlines', 'DHA', 'COX', 'Refundable', 2),
('BBA003', 'Dhaka', 'Rangamati', 300, 9800, 'Business', 5, '09:00', '10:02', 'Biman Bangladesh Airlines', 'DHA', 'RAN', 'Refundable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotelbookings`
--

CREATE TABLE `hotelbookings` (
  `bookingID` int(10) NOT NULL,
  `hotelName` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `cancelled` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotelbookings`
--

INSERT INTO `hotelbookings` (`bookingID`, `hotelName`, `date`, `username`, `cancelled`) VALUES
(3, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(4, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(5, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(6, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(7, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(8, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(9, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(10, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(11, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(12, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(13, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(14, 'Vivanta By Taj Dwarka', '17-10-2017', 'joydeep', 'yes'),
(15, 'Vivanta By Taj, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(16, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(17, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(18, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(19, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(20, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(21, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(22, 'Vivanta By Taj Dwarka, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(23, 'Vivanta By Taj, Locality, Guwahati', '17-10-2017', 'joydeep', 'yes'),
(24, 'Fortune Select JP Cosmos, Cunningham Crescent Road', '25-10-2017', 'holika', 'yes'),
(27, ', , ', '26-10-2017', 'joydeep', 'yes'),
(28, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(29, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(30, 'Vivanta By Taj, Khanapara, Guwahati', '30-10-2017', 'joydeep', 'yes'),
(31, 'Hotel Siroy Lily, Paltan Bazaar, Guwahati', '31-10-2017', 'joydeep', 'yes'),
(32, 'Hotel Royal Plaza, Connaught Place, New Delhi', '05-11-2017', 'joydeep', 'yes'),
(33, 'Hyatt Pune, Kalyani Nagar, Pune', '05-11-2017', 'joydeep', 'no'),
(34, 'Hotel Le Roi, Paharganj, New Delhi', '05-11-2017', 'joydeep', 'no'),
(35, 'Sun-N-Sand, Juhu, Mumbai', '05-11-2017', 'joydeep', 'no'),
(36, 'FabHotel Di Oriell, Koramangla, Bangalore', '05-11-2017', 'joydeep', 'no'),
(37, 'Regenta Orkos Kolkata, Topsia, Kolkata', '05-11-2017', 'joydeep', 'no'),
(38, 'Hotel Royal Plaza, Connaught Place, New Delhi', '06-11-2017', 'joydeep', 'no'),
(39, 'Hotel Niharika, AJC Bose Road, Kolkata', '07-11-2017', 'joydeep', 'no'),
(40, 'Gold Finch Hotel, Andheri (East), Mumbai', '07-11-2017', 'joydeep', 'no'),
(41, 'Hotel Crest Inn, Ballygunge, Kolkata', '07-11-2017', 'joydeep', 'no'),
(42, 'Holiday Inn, Mumbai International Airport, Mumbai', '18-12-2017', 'joydeep', 'no'),
(43, 'Urbanpod Hotel, Andheri (East), Mumbai', '18-12-2017', 'joydeep', 'no'),
(44, 'Ginger Gurgaon, Gurugram, New Delhi', '03-01-2023', 'ripon181', 'no'),
(45, 'Grand Park Hotel, Avenue Centre, 787 CDA Avenue, E', '03-01-2023', 'ripon181', 'no'),
(46, 'Marino Royal Hotel\r\n, House No. 25, Road No. 3, Se', '03-01-2023', 'ripon181', 'no'),
(47, 'Radisson blu Dhaka Water Garden, Airport Road, 120', '03-01-2023', 'ripon181', 'no'),
(48, 'Radisson blue Dhaka Water Garden, Airport Road, 12', '03-01-2023', 'ripon181', 'no'),
(49, ', , ', '17-01-2023', 'shamscsediu', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotelID` varchar(10) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `stars` int(5) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `hotelDesc` varchar(1000) NOT NULL,
  `checkIn` varchar(6) NOT NULL,
  `checkOut` varchar(6) NOT NULL,
  `price` int(10) NOT NULL,
  `roomsAvailable` int(5) NOT NULL,
  `wifi` varchar(5) NOT NULL,
  `swimmingPool` varchar(5) NOT NULL,
  `parking` varchar(5) NOT NULL,
  `restaurant` varchar(5) NOT NULL,
  `laundry` varchar(5) NOT NULL,
  `cafe` varchar(5) NOT NULL,
  `mainImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotelID`, `hotelName`, `city`, `locality`, `stars`, `rating`, `hotelDesc`, `checkIn`, `checkOut`, `price`, `roomsAvailable`, `wifi`, `swimmingPool`, `parking`, `restaurant`, `laundry`, `cafe`, `mainImage`) VALUES
('BAN001', 'Hotel Hill View\r\n', 'Bandarban', 'Bus Station Road, 4600 B?ndarban, Bangladesh', 3, '3', 'Set in B?ndarban, Hotel Hill View features 3-star accommodation with private balconies. Among the facilities of this property are a restaurant, room service and a 24-hour front desk, along with free WiFi. Free private parking is available and the hotel also offers bike hire for guests who want to explore the surrounding area.\r\n\r\nThe units at the hotel come with air conditioning, a seating area, a flat-screen TV with satellite channels, a safety deposit box and a private bathroom with a shower, free toiletries and slippers. All guest rooms feature a desk.\r\n\r\nHotel Hill View offers an American or Asian breakfast.\r\n\r\nThe nearest airport is Shah Amanat International Airport, 83 km from the accommodation.\r\n\r\nCouples particularly like the location — they rated it 8.7 for a two-person trip.\r\n\r\nHotel Hill View has been welcoming Booking.com guests since 5 Jun 2017.\r\n\r\nDistance in property description is calculated using © OpenStreetMap\r\n\r\n', '8.00', '12:00', 7500, 50, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Bandarban/h1.jpg'),
('CHI001', 'Hotel Saintmartin Ltd.', 'Chittagong', '25, Sheikh Mujib Road,, 4000 Chittagong, Banglades', 5, '4', 'Featuring a bar, Hotel Saintmartin Ltd. Is situated in Chittagong. Boasting a 24-hour front desk, this property also provides guests with a restaurant.\r\n\r\nGuests at the hotel can enjoy a buffet breakfast.\r\n\r\nThe nearest airport is Shah Amanat International, 10 km from Hotel Saintmartin Ltd., and the property offers a paid airport shuttle service.\r\n\r\nHotel Saintmartin Ltd. has been welcoming Booking.com guests since 25 Oct 2017.\r\n\r\nDistance in property description is calculated using © OpenStreetMap', '8.00', '12:00', 6000, 56, 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'images/hotels/cities/Chittagong/h1.jpg'),
('CHI002', 'Grand Park Hotel', 'Chittagong', 'Avenue Centre, 787 CDA Avenue, East Nasirabad, Chi', 3, '3', 'Grand Park Hotel is located in Chittagong. Among the facilities of this property are a restaurant, room service and a tour desk, along with free WiFi. The accommodation provides airport transfers, while a car rental service is also available.\r\n\r\nGuest rooms at the hotel are equipped with a seating area. Featuring a private bathroom with a shower and free toiletries, rooms at Grand Park Hotel also offer a city view. At the accommodation each room is equipped with air conditioning and a flat-screen TV.\r\n\r\nGrand Park Hotel offers a continental or vegetarian breakfast.', '8.00', '12:00', 5600, 45, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Chittagong/h2.jpg'),
('COX001', 'Hotel Sea Crown', 'Cox', 'Marin Drive, Kola Toli, New Beach, 4700 Cox\'s Baza', 3, '3', 'Situated on the beachfront and offering a 24-hour front desk, Hotel Sea Crown is located just 1.5 km from the famous Sugandha Beach. Free WiFi access is available.\r\n\r\nEach air-conditioned room here will provide you with a seating area and work desk. Featuring a shower, private bathroom comes with free toiletries.\r\n\r\nAt Hotel Sea Crown you will find a garden. Other facilities offered at the property include a shared lounge, a tour desk and luggage storage. The property offers free parking.\r\n\r\nThe property is located just 3 km from the scenic Laboni Beach and 4.1 km from Buddhist Temple and the popular Cox\'s Bazar. The Cox\'s Bazar Airport and Cox\'s Bazar Bus Station are located within 4.8 km.\r\n\r\nThe guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Room service is available for 24-hour.', '8.00', '12:00', 13000, 26, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/cox/h1.jpg'),
('COX002', 'Long Beach Hotel', 'Cox', '14 Kalatoli, Hotel-Motel Zone, 4700 Cox\'s Bazar, B', 4, '4', 'You\'re eligible for a Genius discount at Long Beach Hotel! To save at this property, all you have to do is sign in.\r\n\r\nOffering an indoor pool, a fitness centre and a spa and wellness centre, Long Beach Hotel is located 3.3 km from the Cox\'s Bazar Airport and Local Bus Station. Free wired internet is available in the rooms of the property.\r\n\r\nEach air-conditioned room here will provide you with a satellite TV, seating area and a balcony. There is also a minibar. Featuring a shower, private bathroom also comes with bathrobes and free toiletries.\r\n\r\nAt Long Beach Hotel you will find a 24-hour front desk, BBQ facilities and garden. Other facilities offered at the property include meeting facilities, a shared lounge and a ticket service. The property offers free parking.\r\n\r\nThe Barmiz Market Cox’s Bazar is 3 km, the Himchari National Park is 8 km and the Binani Beach is 24 km away.\r\n\r\nThe Cozy Restaurant serves International delights while the Bar Sunset Pool side BBQ serves refreshing bev', '8.00', '7.00', 20000, 20, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/cox/h2.jpg'),
('COX003', 'World beach resort\r\n', 'Cox', 'World beach resort, 708, 4700 Cox\'s Bazar, Banglad', 2, '2', 'You\'re eligible for a Genius discount at World beach resort! To save at this property, all you have to do is sign in.\r\n\r\nBoasting a garden, a shared lounge, and a restaurant, World beach resort features accommodation in Cox\'s Bazar with free WiFi and sea views. This apartment provides free private parking and a kids\' club.\r\n\r\nOffering direct access to a terrace with city views, the air-conditioned apartment consists of 2 bedrooms and a fully equipped kitchen. For added convenience, the property can provide towels and bed linen for an extra charge.\r\n\r\nAn Asian, vegetarian or halal breakfast is available each morning at the property.\r\n\r\nStaff speak Bengali, English, Hindi and Urdu at the 24-hour front desk.\r\n\r\nSpa and wellness facilities including a hot tub and a hot spring bath are at guests\' disposal during their stay at the apartment. A bicycle rental service and a private beach area are available at World beach resort.\r\n\r\nCox\'s Bazar Sea Beach is 500 m from the accommodation. The nea', '8.00', '11.00', 13000, 26, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/cox/h3.jpg'),
('DHA00', 'Radisson blue Dhaka Water Garden', 'Dhaka', 'Airport Road, 1206 Dhaka', 5, '5.0', 'Offering an outdoor pool and a spa and wellness centre, Radisson Blu Water Garden Hotel Dhaka offers free Wi-Fi access throughout the property.\r\n\r\nRooms here will provide you with air conditioning, a minibar and a TV with satellite channels. There is also an electric kettle. Featuring a shower, private bathrooms also come with a hairdryer and free toiletries. Extras include a safety deposit box and ironing facilities.\r\n\r\nAt Radisson Blu Water Garden Hotel Dhaka you will find a restaurant and a fitness centre. Other facilities offered include meeting facilities, a tour desk and luggage storage.\r\n\r\nThe Hazrat Sha Jalal International Airport is 5 km away. The property offers free parking. The property is also 15 km from the National Memorium.\r\n\r\n4 dining options are on offer including Water Garden Brasserie which is an all day diner, Sublime which serves local cuisine, Spice & Rice dishes out Mediterranean fare and Chit Chat which specialises in snacks and pastries. 2 bars are also presen', '14:00', '12:00', 20000, 20, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Dhaka/h1.jpg'),
('DHA002', 'The Raintree Dhaka - A Luxury collection Hotel', 'Dhaka', 'Plot # 49, Road # 27, Block # K Banani, Dhaka, Gul', 4, '4', 'Featuring a Rooftop Infinity swimming pool and fitness centre, The Raintree Dhaka - A Luxury collection Hotel is located in Dhaka, 300 m from AIUB. Guests can enjoy the on-site multi-cuisine restaurant.  Each room has a flat-screen TV with satellite channels. Certain rooms include a seating area to relax in after a busy day. You will find a kettle in the room. Rooms include a private bathroom equipped with a shower. Extras include bathrobes, slippers and free toiletries.  You will find a 24-hour front desk at the property. Free airport shuttle can be arranged.  Southeast University is 400 m from The Raintree Dhaka - A Luxury collection Hotel, while Embassy of Spain is 400 m away. Shah Jalal International Airport is 5 km from the property.', '11:00', '22:00', 12000, 10, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'images/hotels/cities/Dhaka/h2.jpg'),
('DhA003', 'Marino Royal Hotel\r\n', 'Dhaka', 'House No. 25, Road No. 3, Sector-3, Uttara, Uttara', 3, '3.0', 'Featuring free WiFi and a restaurant, Marino Royal Hotel offers accommodation in Dhaka, 1.1 km from Uttara University. The hotel has a fitness centre and free private parking is available on site. Complimentary one-way airport transfer is provided.\r\n\r\nEvery room at this hotel is air conditioned and is fitted with a flat-screen TV with satellite channels. Certain rooms feature a seating area for your convenience. You will find an electric kettle in the room. All rooms have a private bathroom. For your comfort, you will find slippers and free toiletries.\r\n\r\nCar hire is available at this hotel and the area is popular for golfing. Biman Bangladesh Airlines is 2.1 km from Marino Royal Hotel, while IUBAT is 3 km from the property. Shah Jalal International Airport is 2 km away.', '8.00', '7.00', 14000, 12, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Dhaka/h3.jpg'),
('DHA004', 'Six Seasons Hotel', 'Dhaka', 'House 19, Road 96 ,Gulshan 2, Gulshan, 1212 Dhaka,', 5, '5.0', 'You\'re eligible for a Genius discount at Six Seasons Hotel! To save at this property, all you have to do is sign in.\r\n\r\nOffering 3 dining options, Six Seasons Hotel is situated in the heart of Dhaka, just a minute walk from the serene Gulshan Lake. Free WiFi access is available.\r\n\r\nThe property is located 1.5 km from Jamuna Future Park and 2 km from Diplomatic Enclave. Hazrat Shahjalal International Airport is 7 km away. Kamalpur Railway Station is 15 km away and the local bus stand is 1 km away.\r\n\r\nEach elegant air-conditioned rooms here will provide you with a flat-screen cable TV and a minibar. There is also an electric kettle. Featuring a shower, private bathrooms also come with a hairdryer and free toiletries. Some rooms have a lake view.\r\n\r\nAt Six Seasons hotel, other facilities offered include meeting facilities, a tour desk and luggage storage. It also has a temperature controlled infinity pool.', '10.00', '11.00', 15000, 30, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Dhaka/h4.jpg'),
('DHA005', 'Best Western PLUS Maya - Luxury Collection Hotel', 'Dhaka', 'Nikunja-2 | Road 17-18 | Kabi Farooq Sharoni | Dha', 5, '4', 'Situated in Dhaka, 2.4 km from Dhaka Airport Railway Station, Best Western PLUS Maya - Luxury Collection Hotel features accommodation with an outdoor swimming pool, free private parking, a fitness centre and a shared lounge. Each accommodation at the 4-star hotel has city views, and guests can enjoy access to a terrace. The accommodation provides a 24-hour front desk, airport transfers, room service and free WiFi throughout the property.\r\n\r\nAll rooms are fitted with air conditioning, a flat-screen TV with satellite channels, a fridge, a kettle, a shower, free toiletries and a desk. At the hotel the rooms are fitted with bed linen and towels.\r\n\r\nA buffet, continental or Full English/Irish breakfast can be enjoyed at the property. At Best Western PLUS Maya - Luxury Collection Hotel you will find a restaurant serving American, Chinese and Indian cuisine. Vegetarian, dairy-free and halal options can also be requested.\r\n\r\nArmed Forces Medical College is 5.3 km from the accommodation, while ', '8.00', '7.00', 16000, 23, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Dhaka/h5.jpg'),
('DHA006', 'Lakeshore Hotel & Apartments', 'Dhaka', 'Road # 41, House # 46, Gulshan- 2, Gulshan, 1212 D', 4, '3', 'Offering an outdoor pool and a spa and wellness centre, Lakeshore Hotel & Apartments is located in Dhaka. Free WiFi access is available. The famous Gulshan Baridhara Lake is just 550 m away.\r\n\r\nEach room here will provide you with a flat screen TV, air conditioning and a minibar. Featuring a shower, private bathroom also comes with free toiletries and slippers. Extras include a seating area and satellite channels.\r\n\r\nAt Lakeshore Hotel & Apartments you will find a restaurant and a fitness centre. Other facilities offered at the property include meeting facilities, a tour desk and luggage storage. The property offers free parking.\r\n\r\nIt is 1 km from Baridhara Mosque and 2 km from Jamuna Future Park. The Kakoli Bus Station is 1 km away, Dhaka Cantonment Railway Station is 8 km and the Shah Jalal International Airport is 8 km away as well.\r\n\r\nDining options include Golden Goose Restaurant that serves regional, Asian and continental delights. Coffee, tea and light bites can be enjoyed at N', '8.00', '12:00', 12000, 12, 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'images/hotels/cities/Dhaka/h6.jpg'),
('KUA001', 'Hotel Khan Palace', 'Kuakata', 'Barisal - Patuakhali Road, 8652 Ku?k?ta, Banglades', 3, '3.0', 'ou\'re eligible for a Genius discount at Hotel Khan Palace! To save at this property, all you have to do is sign in.\r\n\r\nHotel Khan Palace in Ku?k?ta features 3-star accommodation with a terrace. With a garden, the 3-star hotel has air-conditioned rooms with free WiFi, each with a private bathroom. There is a restaurant serving Asian cuisine, and free private parking is available.\r\n\r\nAll units at the hotel are equipped with a seating area and a flat-screen TV with cable channels. The units include a desk.\r\n\r\nGuests at Hotel Khan Palace can enjoy a buffet breakfast.\r\n\r\nStaff at the accommodation are always available to provide guidance at the reception.\r\n\r\nThe nearest airport is Barisal Airport, 123 km from Hotel Khan Palace.\r\n\r\nCouples particularly like the location — they rated it 8.2 for a two-person trip.', '8.00', '12:00', 13500, 14, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'images/hotels/cities/Kuakata/h1.jpg'),
('KUA002', 'Hotel Sea Crown Inn', 'Kuakata', 'Sabirul Way East Side of Rakhain Mohila Market, Pa', 3, '3.0', 'Located in Ku?k?ta, Hotel Sea Crown Inn provides accommodation with free private parking.\r\n\r\nThe apartment offers a flat-screen TV and a private bathroom with free toiletries, slippers and shower.\r\n\r\nA à la carte breakfast is available daily at Hotel Sea Crown Inn. At the accommodation you will find a restaurant serving Indian, Mexican and local cuisine. Vegetarian, vegan and dairy-free options can also be requested.\r\n\r\nHotel Sea Crown Inn offers a terrace.\r\n\r\nThe nearest airport is Barisal Airport, 124 km from the apartment.\r\n\r\nHotel Sea Crown Inn has been welcoming Booking.com guests since 19 Aug 2022.\r\n\r\nDistance in property description is calculated using © OpenStreetMap', '10.00', '11.00', 15200, 11, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Kuakata/h2.jpg'),
('RAJ001', 'Royal Raj Hotel\r\n', 'Rajshahi', '26, 27 Gonokpara, Boalia, 6000 R?jsh?hi, Banglades', 5, '4', 'Royal Raj Hotel has a fitness centre, shared lounge, a terrace and restaurant in R?jsh?hi. This 4-star hotel offers a kids\' club and room service. There is free private parking and the property features paid airport shuttle service.\r\n\r\nBuffet and continental breakfast options are available each morning at the hotel.\r\n\r\nRoyal Raj Hotel offers 4-star accommodation with an indoor pool and spa centre.\r\n\r\nSpeaking Bengali, English, Hindi and Urdu at the reception, staff are ready to help around the clock.\r\n\r\nThe nearest airport is Shah Makhdum Airport, 8 km from the accommodation.\r\n\r\nRoyal Raj Hotel has been welcoming Booking.com guests since 6 Sept 2022.\r\n\r\nDistance in property description is calculated using © OpenStreetMap', '10.00', '8.00', 4500, 11, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Rajshahi/h1.jpg'),
('SUN001', 'Royal Sundarban Wild Resort\r\n', 'Sundorban', 'Jharkhali Forest Road Jharkhali, 743312 Sundorban', 3, '3', 'Set in Jharkhali, Royal Sundarban Wild Resort has a garden, terrace and free WiFi. There is a restaurant serving Indian cuisine, and free private parking is available.\r\n\r\nGuests at the resort can enjoy a vegetarian breakfast.\r\n\r\nStaff at Royal Sundarban Wild Resort are available to provide information at the 24-hour front desk.\r\n\r\nThe nearest airport is Netaji Subhash Chandra Bose International, 96 km from the accommodation, and the property offers a paid airport shuttle service.', '10.00', '12:00', 13000, 20, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Sundorban/h1.jpg'),
('SUN002', 'Hotel Sonar Bangla Sundarban\r\n', 'Sundorban', 'Village - Dulki PO/PS- Gosaba, 743370 Gos?ba,', 3, '3', 'Hotel Sonar Bangla Sundarban in Gos?ba features 4-star accommodation with a garden, a terrace and a restaurant. This 4-star hotel offers room service and a 24-hour front desk. Private parking can be arranged at an extra charge.\r\n\r\nGuest rooms in the hotel are fitted with a TV with satellite channels. Rooms are complete with a private bathroom equipped with free toiletries, while certain rooms at Hotel Sonar Bangla Sundarban also offer a balcony. The units include a wardrobe.\r\n\r\nA buffet breakfast is available daily at the accommodation.\r\n\r\nHotel Sonar Bangla Sundarban offers 4-star accommodation with a hot tub.', '8.00', '8.00', 5600, 26, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Sundorban/h2.jpg'),
('SUN003', 'Solitary Nook\r\n', 'Sundorban', 'Pakhirala, Gosaba, south 24 pgs Pakhirala, Gosaba,', 3, '3', 'All guest rooms come with air conditioning, a flat-screen TV with cable channels, a kettle, a shower, free toiletries and a wardrobe.\r\n\r\nBreakfast is available every morning, and includes à la carte, Full English/Irish and American options.\r\n\r\nThe hotel offers a children\'s playground. The area is popular for fishing and cycling, and bike hire is available at this 4-star hotel.\r\n\r\nThe nearest airport is Netaji Subhash Chandra Bose International Airport, 96 km from Solitary Nook.', '8.00', '11.00', 13000, 30, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Sundorban/h3.jpg'),
('SYL001', 'Hotel Noorjahan Grand\r\n', 'Sylhet', 'Waves 1, Ritz Tower Dargah Gate, 3100 Sylhet, Bang', 4, '4', 'You\'re eligible for a Genius discount at Hotel Noorjahan Grand! To save at this property, all you have to do is sign in.\r\n\r\nHotel Noorjahan Grand features a fitness centre, garden, a terrace and restaurant in Sylhet. This 4-star hotel offers an ATM and a concierge service. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi throughout the property.\r\n\r\nEvery room includes a TV, and certain units at the hotel have a city view.\r\n\r\nThe daily breakfast offers buffet, continental or Full English/Irish options.\r\n\r\nThe nearest airport is Osmani International Airport, 8 km from Hotel Noorjahan Grand.\r\n\r\nCouples particularly like the location — they rated it 9.1 for a two-person trip.\r\n\r\nHotel Noorjahan Grand has been welcoming Booking.com guests since 26 Apr 2017.\r\n\r\nDistance in property description is calculated using © OpenStreetMap', '8.00', '11.00', 8300, 26, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Sylhet/h1.jpg'),
('SYL002', 'Hotel Mira Garden\r\n', 'Sylhet', 'Mira Tower Mira Bazar, 3100 Sylhet, Bangladesh', 4, '4', 'You\'re eligible for a Genius discount at Hotel Mira Garden! To save at this property, all you have to do is sign in.\r\n\r\nHotel Mira Garden has a garden, shared lounge, a terrace and restaurant in Sylhet. This 4-star hotel offers an ATM and a concierge service. The accommodation features a 24-hour front desk, airport transfers, room service and free WiFi throughout the property.\r\n\r\nThe hotel will provide guests with air-conditioned rooms offering a desk, a kettle, a fridge, a minibar, a safety deposit box, a flat-screen TV and a private bathroom with a shower. Certain rooms are fitted with a kitchenette with a microwave. At Hotel Mira Garden rooms have bed linen and towels.\r\n\r\nThe daily breakfast offers buffet, Asian or vegetarian options.\r\n\r\nThe nearest airport is Osmani International Airport, 10 km from the accommodation.\r\n\r\nCouples particularly like the location — they rated it 8.4 for a two-person trip.\r\n\r\nHotel Mira Garden has been welcoming Booking.com guests since 23 Jan 2019.\r\n\r\n', '8.00', '11.00', 13000, 20, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'images/hotels/cities/Sylhet/h2.jpg'),
('SYL003', 'Bottomhill Palace Hotel\r\n', 'Sylhet', 'Waves 1-E, Dargah Gate Sylhet, 3100 Sylhet, Bangla', 4, '3', 'Bottomhill Palace Hotel has a garden, shared lounge, a terrace and restaurant in Sylhet. This 3-star hotel offers a shared kitchen and room service. The accommodation offers a 24-hour front desk, airport transfers, a kids\' club and free WiFi.\r\n\r\nA à la carte, continental or halal breakfast can be enjoyed at the property.\r\n\r\nThe hotel offers a children\'s playground. You can play darts at this 3-star hotel, and car hire is available.\r\n\r\nThe nearest airport is Osmani International Airport, 8 km from Bottomhill Palace Hotel.\r\n\r\nCouples particularly like the location — they rated it 8.9 for a two-person trip.', '8.00', '8.00', 6500, 45, 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'images/hotels/cities/Sylhet/h3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tour_booking`
--

CREATE TABLE `tour_booking` (
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_contact` varchar(255) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `number_of_travelers` int(11) DEFAULT NULL,
  `travelersJsonObj` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`travelersJsonObj`)),
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tour_packages`
--

CREATE TABLE `tour_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `inclusions` text DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `tour_itinerary` text DEFAULT NULL,
  `max_participants` int(11) DEFAULT NULL,
  `book_start` date DEFAULT NULL,
  `book_end` date DEFAULT NULL,
  `tour_start` datetime DEFAULT NULL,
  `departure` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_packages`
--

INSERT INTO `tour_packages` (`package_id`, `package_name`, `destination`, `description`, `inclusions`, `duration`, `status`, `price`, `images`, `type`, `tour_itinerary`, `max_participants`, `book_start`, `book_end`, `tour_start`, `departure`) VALUES
(1, 'Sea and Sun: Cox Bazar', 'Cox Bazar,Bangladesh', 'Experience the worlds largest sea beach with our Sea and Sun: Cox Bazar. Enjoy stunning views of the Bay of Bengal while relaxing on the white sandy beaches. Take a full day tour of Cox Bazar sea beach and local islands and explore the local culture. With comfortable accommodation, delicious meals, and professional guide and transportation included, our Sea and Sun: Cox Bazar is the perfect way to unwind and escape the hustle and bustle of everyday life.', 'Accomodation, meals, transportation, guide', 3, '1', '4000.00', 'coxs.jpg', 'Beach Vacation', '<p>\r\n  Day 1: Arrival at Cox Bazar, check-in at hotel, free time to explore the local\r\n  market\r\n</p>\r\n<p>Day 2: Full day tour of Cox Bazar sea beach and local islands \r\n</p>\r\n<p>Day 3: Check-out from hotel, departure from Cox Bazar</p>', 20, '2023-01-05', '2023-01-27', '2023-01-27 15:45:54', 'Kallyanpur,Dhaka'),
(2, 'Sajek Valley Tour', 'Sajek Valley, Bangladesh', 'Explore the beauty of Sajek Valley, the most beautiful tourist spot in Bangladesh. Enjoy the mesmerizing beauty of nature and the breathtaking views of the hills and valleys.', 'Accommodation, Transportation, Guide', 3, '1', '3000.00', 'sajez.jpg', 'Group Tour', '<p>Day 1: Pick up from Dhaka and drive to Sajek Valley.</p> <p>Day 2: Explore the beauty of Sajek Valley.</p> <p>Day 3: Drive back to Dhaka.</p>', 25, '2023-01-10', '2023-01-30', '2023-02-02 09:30:00', 'Gulshan,Dhaka, Bangladesh'),
(3, 'Maldives Tour', 'Maldives', 'Are you looking for a luxury vacation? Here You Can Learn More About Luxurious Maldives Tour Package From Bangladesh.The Maldives is the perfect place to visit. It’s an island nation in the Indian Ocean, made up of 26 coral atolls and 1,000 beautiful islands. You can explore white sand beaches, crystal clear waters, and lush tropical forests. There are plenty of activities to enjoy while you’re there too! From snorkeling with sharks to diving through shipwrecks or exploring ancient ruins – it’s all possible when you visit the Maldives!', 'Round-trip,accommodation, daily breakfast, airport transfers,guide', 5, '3', '30000.00', 'maldives.jpg', 'Beach Vacation', '<p>Day 1: Arrival at Male International Airport, check-in at hotel, free time to explore the local market</p> <p>Day 2: Full day tour of Male City sea beach and local islands</p> <p>Day 3: Visit to Hulhumale Island and explore its beautiful beaches</p> <p>Day 4: Boat ride to Maafushi Island and snorkeling in the crystal clear waters</p> <p>Day 5: Check-out from hotel, departure from Male International Airport.</p>', 20, '2023-01-01', '2023-01-15', '2023-01-17 00:00:00', 'Dhanmondi,Dhaka,Bangladesh'),
(5, 'Srimangal and Sylhet', 'Srimangal,Sylhet,Bangladesh', 'Explore the tea gardens of Srimangal and the natural beauty of Sylhet with our Srimangal and Sylhet package. Visit the tea factories and learn about the tea production process. Take a tour of the Lawachara National Park and see the diverse wildlife. Enjoy comfortable accommodation, delicious meals, and professional guide and transportation included. ', 'Accomodation, meals, transportation, guide', 3, '1', '2000.00', 'srimongol.jpg', 'Nature', '<p>\r\n Day 1: Arrival at Srimangal, check-in at hotel, free time to explore the local\r\n tea gardens\r\n</p>\r\n<p>Day 2: Full day tour of the tea factories and the Lawachara National Park\r\n</p>\r\n<p>Day 3: Check-out from hotel, departure from Srimangal, Arrival to Sylhet, Check-in, visit the local spots in Sylhet</p>\r\n<p> Day 4: Check-out from hotel, departure from Sylhet</p>', 20, '2023-01-05', '2023-01-27', '2023-01-27 15:45:54', 'Dhanmondi,Dhaka,Bangladesh'),
(6, 'Bandarban Adventure', 'Bandarban,Bangladesh', 'Experience the natural beauty of Bandarban with our Bandarban Adventure package. Take a tour of the scenic hills and valleys, visit the waterfalls, and explore the local culture. Enjoy a comfortable stay in a local resort, delicious meals, and professional guide and transportation included. ', 'Accomodation, meals, transportation, guide', 3, '1', '3100.00', 'bandorban.jpg', 'Nature', '<p>\r\n Day 1: Arrival at Bandarban, check-in at hotel, free time to explore the local\r\n market\r\n</p>\r\n<p>Day 2: Full day tour of the scenic hills, valleys and waterfalls \r\n</p>\r\n<p>Day 3: Check-out from hotel, departure from Bandarban</p>', 30, '2023-01-05', '2023-01-27', '2023-01-27 15:45:54', 'Kallyanpur,Dhaka'),
(7, 'Saint-Martin Island', 'Saint-Martin,Bangladesh', 'Explore the tropical paradise of Saint-Martin Island with our package. Enjoy the white sandy beaches, crystal clear waters and the colorful coral reefs. Take a tour of the local villages, and experience the local culture. Enjoy a comfortable stay in a local resort, delicious meals, and professional guide and transportation included.', 'Accomodation, meals, transportation, guide', 3, '1', '5500.00', 'saint.jpg', 'Beach', '<p>\r\n Day 1: Arrival at Saint-Martin Island, check-in at hotel, free time to explore the local\r\n market\r\n</p>\r\n<p>Day 2: Full day tour of the island, visit local villages and coral reefs\r\n</p>\r\n<p>Day 3: Check-out from hotel, departure from Saint-Martin Island</p>', 20, '2023-01-05', '2023-01-27', '2023-01-27 15:45:54', 'Dhanmondi,Dhaka,Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `trainbookings`
--

CREATE TABLE `trainbookings` (
  `bookingID` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(60) NOT NULL,
  `cancelled` varchar(20) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `passengers` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainbookings`
--

INSERT INTO `trainbookings` (`bookingID`, `username`, `date`, `cancelled`, `origin`, `destination`, `passengers`) VALUES
(1, 'joydeep', '05-04-2018', 'yes', 'Guwahati', 'Howrah', 4),
(2, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(3, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(4, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(5, 'joydeep', '05-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(6, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(7, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(8, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(9, 'joydeep', '06-04-2018', 'yes', 'Guwahati', 'Howrah', 4),
(10, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(11, 'joydeep', '06-04-2018', 'no', 'Guwahati', 'Howrah', 4),
(12, 'joydeep', '06-04-2018', 'yes', 'Guwahati', 'Howrah', 4),
(13, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Chittagong', 1),
(14, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Jessore', 1),
(15, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Jessore', 1),
(16, 'ripon181', '03-01-2023', 'no', 'Dhaka', 'Rajshahi', 1),
(17, 'shamscsediu', '04-01-2023', 'no', 'Dhaka', 'Rajshahi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainNo` int(10) NOT NULL,
  `region` varchar(10) NOT NULL,
  `returnTrainNo` int(10) NOT NULL,
  `trainName` varchar(100) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `originCode` varchar(20) NOT NULL,
  `destinationCode` varchar(20) NOT NULL,
  `originTime` varchar(20) NOT NULL,
  `destinationTime` varchar(20) NOT NULL,
  `originPlatform` varchar(10) NOT NULL,
  `destinationPlatform` varchar(10) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `classes` varchar(50) NOT NULL,
  `seats1AC` int(10) NOT NULL,
  `seats2AC` int(10) NOT NULL,
  `seats3AC` int(10) NOT NULL,
  `seatsSL` int(10) NOT NULL,
  `seatsChairCar` int(10) NOT NULL,
  `seatsChairCarAC` int(10) NOT NULL,
  `price1AC` varchar(20) NOT NULL,
  `price2AC` varchar(20) NOT NULL,
  `price3AC` varchar(20) NOT NULL,
  `priceSL` varchar(20) NOT NULL,
  `priceChairCar` varchar(20) NOT NULL,
  `priceChairCarAC` varchar(20) NOT NULL,
  `runsOn` varchar(50) NOT NULL,
  `noOfBookings` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainNo`, `region`, `returnTrainNo`, `trainName`, `origin`, `destination`, `originCode`, `destinationCode`, `originTime`, `destinationTime`, `originPlatform`, `destinationPlatform`, `duration`, `classes`, `seats1AC`, `seats2AC`, `seats3AC`, `seatsSL`, `seatsChairCar`, `seatsChairCarAC`, `price1AC`, `price2AC`, `price3AC`, `priceSL`, `priceChairCar`, `priceChairCarAC`, `runsOn`, `noOfBookings`) VALUES
(452414, 'BR', 123654, 'Jamuna Express', 'Dhaka', 'Chittagong', 'DHA', 'CHI', '18:15', '21:20', 'Dhaka', 'Chittagong', '3.20', '1AC,2AC,3AC,SL	', 19, 20, 20, 20, 20, 20, '300', '200', '250', '150', '120', '130', 'Mo,Tu,We,Th,Fr,Sa,Su	', 1),
(546985, 'BR', 21650, 'Brammaputra Express', 'Dhaka', 'Jessore', 'DHA', 'JES', '4.00', '8.00', 'Dhaka', 'Jessore', '4.00', '1AC,2AC,3AC,SL', 43, 12, 21, 52, 2, 12, '20', '800', '700', '650', '400', '200', 'Mo,Tu,We,Th,Fr,Sa,Su', 22),
(789654, 'BR', 2365412, 'Tista Express', 'Dhaka ', 'Rajshahi', 'DHA', 'RAJ', '10', '12', 'Dhaka', 'Rajshahi', '2', '1AC,2AC,3AC,SL', 16, 22, 21, 10, 12, 13, '500', '400', '300', '320', '150', '100', 'Mo,Tu,We,Th,Fr,Sa,Su	', 14),
(987456, 'BR', 21654, 'Parabat Express', 'Dhaka ', 'Sylhet', 'DHA', 'SYL', '7.00', '11.00', 'Dhaka', 'Sylhet', '3', '1AC,2AC,3AC,SL', 54, 65, 20, 10, 22, 14, '400', '300', '200', '250', '150', '100', 'Mo,Tu,We,Th,Fr,Sa,Su', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `EMail` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `AddressLine1` varchar(50) NOT NULL,
  `AddressLine2` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FullName`, `EMail`, `Phone`, `Username`, `Password`, `AddressLine1`, `AddressLine2`, `City`, `State`, `Date`) VALUES
(18, 'Rownok Ripon', 'sb.rownokripon@gmail.com', '01749475566', 'ripon181', '$2a$08$VlXWlvCQM93KPXU07l/RFu6xuFXmPTyct3i/3OpJ7VRYxxlIk6mu6', '300, Alishan Complex (Level-06), Elephant Road, Dh', 'Dhaka', 'Dhaka', 'Dhaka', 'Tuesday 3rd of January 2023 at 10:19:52 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`busID`);

--
-- Indexes for table `busbookings`
--
ALTER TABLE `busbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabbookings`
--
ALTER TABLE `cabbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `cabs`
--
ALTER TABLE `cabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightbookings`
--
ALTER TABLE `flightbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotelID`);

--
-- Indexes for table `tour_booking`
--
ALTER TABLE `tour_booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `tour_booking_ibfk_2` (`user_id`),
  ADD KEY `tour_booking_ibfk_1` (`package_id`);

--
-- Indexes for table `tour_packages`
--
ALTER TABLE `tour_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `trainbookings`
--
ALTER TABLE `trainbookings`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`trainNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busbookings`
--
ALTER TABLE `busbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cabbookings`
--
ALTER TABLE `cabbookings`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cabdrivers`
--
ALTER TABLE `cabdrivers`
  MODIFY `carID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cabs`
--
ALTER TABLE `cabs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flightbookings`
--
ALTER TABLE `flightbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  MODIFY `bookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tour_booking`
--
ALTER TABLE `tour_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tour_packages`
--
ALTER TABLE `tour_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainbookings`
--
ALTER TABLE `trainbookings`
  MODIFY `bookingID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tour_booking`
--
ALTER TABLE `tour_booking`
  ADD CONSTRAINT `tour_booking_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `tour_packages` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tour_booking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
