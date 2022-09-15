-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 01:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`aid`, `aname`) VALUES
(1, 'Salman Khan'),
(2, 'Rajnikant'),
(3, 'Aishwarya Rai Bachchan'),
(4, 'Rashmika Mandanna'),
(5, 'Johnny Depp');

--
-- Dumping data for table `actors_phoneno`
--

INSERT INTO `actors_phoneno` (`aid`, `phoneno`) VALUES
(1, '8965372836'),
(1, '9637854275'),
(2, '8975372537'),
(3, '9637234235'),
(4, '7892434275'),
(4, '9637354546'),
(5, '9633453235'),
(5, '9637345244');

--
-- Dumping data for table `acts_in`
--

INSERT INTO `acts_in` (`aid`, `mid`, `a_role`) VALUES
(1, 62, 'Thor'),
(2, 65, 'Governor'),
(3, 61, 'Shivgami'),
(4, 63, 'Srivali'),
(5, 65, 'Pedanna');

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`cid`, `ticketid`) VALUES
(101, 71),
(102, 72),
(103, 73),
(104, 74),
(105, 75);

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `email`, `mid`) VALUES
(101, 'Sreyansh Jain', 'sreyansh@gmail.com', NULL),
(102, 'Rahul Maurya', 'rahul@gmail.com', NULL),
(103, 'Subhasish', 'subha@gmail.com', NULL),
(104, 'Mrutyunjaya Hantal', 'mrutyu@gmail.com', NULL),
(105, 'Sushant Kirsani', 'sushant@gmail.com', NULL);

--
-- Dumping data for table `cutomer_phoneno`
--

INSERT INTO `cutomer_phoneno` (`cid`, `phoneno`) VALUES
(101, '8976548976'),
(102, '8976543289'),
(102, '8976543678'),
(103, '8976543897'),
(103, '9876543245'),
(104, '9876545678'),
(104, '9876567843'),
(105, '8976543896');

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`did`, `dname`) VALUES
(10, 'S. S. Rajamouli'),
(11, 'Christopher Nolan'),
(12, 'Quentin Tarantino'),
(13, 'Rajkumar Hirani'),
(14, 'Zoya Akhtar');

--
-- Dumping data for table `directors_phoneno`
--

INSERT INTO `directors_phoneno` (`did`, `phoneno`) VALUES
(10, '9867543258'),
(10, '9876543218'),
(11, '6834535218'),
(12, '9876456418'),
(13, '9873443218'),
(14, '9235575218');

--
-- Dumping data for table `directs`
--

INSERT INTO `directs` (`mid`, `did`, `directed_year`) VALUES
(61, 10, '2015'),
(62, 12, '2022'),
(63, 14, '2021'),
(64, 13, '2022'),
(65, 10, '2021');

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mid`, `mname`, `pid`, `theatreid`) VALUES
(61, 'Bahubali', 21, 51),
(62, 'Thor Love and Thundre', 22, 53),
(63, 'Puspa', 25, 55),
(64, 'Brahmastra', 23, 51),
(65, 'RRR', 24, 55);

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`mid`, `genre`) VALUES
(61, 'Action'),
(61, 'Thriller'),
(62, 'Action'),
(62, 'Fantasy'),
(63, 'Action'),
(63, 'Thriller'),
(64, 'Fantasy'),
(64, 'Love');

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`refid`, `payment_type`, `payment_status`, `amount`, `payment_date`, `cid`) VALUES
(451, 'UPI', 'success', 500, '2022-09-10', 101),
(452, 'Credit Card', 'Success', 1000, '2022-09-12', 102),
(453, 'Net Banking', 'Pending', 750, '2022-09-16', 103),
(454, 'UPI', 'Success', 250, '2022-09-13', 104),
(455, 'Offline Payment', 'Success', 800, '2022-09-15', 105);

--
-- Dumping data for table `production_company`
--

INSERT INTO `production_company` (`pid`, `pname`, `headquarter`, `company_owner`) VALUES
(21, 'Yash Raj Films', 'Mumbai', 'ABCD'),
(22, 'Cloud Nine Movies', 'New York', 'XYZ'),
(23, 'Paramount Pictures', 'London', 'PRQS'),
(24, 'Tips Industries', 'Tokyo', 'ASDF'),
(25, 'Warner Bros Pictures', 'New York', 'TYBP');

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`theatreid`, `seatno`, `seat_availability`, `seat_type`) VALUES
(51, 45, 'Available', 'Balcony'),
(53, 1, 'Available', 'Balconi'),
(53, 2, 'Available', 'Galleries'),
(54, 5, 'Not Available', 'Balconies'),
(54, 10, 'Available', 'Galleries');

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatreid`, `theatre_name`, `theatre_location`) VALUES
(51, 'Radha Theatre', 'Chennai'),
(52, 'Regal Cinema', 'Malkangiri'),
(53, 'Apsara Theatre', 'Calicut'),
(54, 'Crown', 'Chennai'),
(55, 'Movieland', 'Bangalore');

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketid`, `tdate`, `ttime`, `theatreid`, `mid`) VALUES
(71, '2022-09-16', '21:21:19', 53, 61),
(72, '2022-09-17', '16:21:19', 55, 62),
(73, '2022-09-18', '21:00:00', 52, 64),
(74, '2022-09-17', '15:00:00', 51, 63),
(75, '2022-09-20', '20:00:00', 55, 65);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
