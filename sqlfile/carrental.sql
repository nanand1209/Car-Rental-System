-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 05:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-11-09 09:44:54'),
(2, 'Dev', 'f925916e2754e5e03f75dd58a5733251', '2021-10-20 06:52:38'),
(3, 'Deepak', 'f925916e2754e5e03f75dd58a5733251', '2021-11-01 06:52:38'),
(4, 'Admin2', 'f925916e2754e5e03f75dd58a5733251', '2021-10-18 06:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'test@gmail.com', 4, '02/11/2021', '04/11/2022', 'j', 1, '2021-11-04 18:15:36'),
(5, 'Ajay@gmail.com', 5, '02/11/2021', '04/11/2022', 'dknin neienen', 1, '2021-11-09 09:54:33'),
(6, 'anurag@gmail.com', 2, '14-11-2021', '31-11-2021', 'To travel with friends', 1, '2021-11-14 15:04:19'),
(7, 'rahul@gmail.com', 3, '01-01-2022', '07-01-2022', 'For new year', 1, '2021-11-14 15:06:22'),
(8, 'aditya@gmail.com', 4, '14-02-2022', '14-02-2022', 'For friend', 0, '2021-11-14 15:09:19'),
(9, 'rohit@gmail.com', 1, '01-12-2021', '20-12-2021', 'looking to explore something', 0, '2021-11-14 15:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Marutiu', '2017-06-19 06:22:13', NULL),
(8, 'cc', '2021-11-14 17:32:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Bikaner																								', 'webhostingamigo@gmail.com', '8239552324');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Rohit', 'Rohit@gmail.com', '8239552324', 'I forgot my purse in the car. Please return it on the address that is given on my profile.', '2021-11-09 09:55:49', NULL),
(3, 'rahul kumar', 'rahul@gmail.com', '7897485216', 'Hello, This car got stopped in a midway ,need urgent help.', '2021-11-14 15:30:43', NULL),
(4, 'ajay', 'ajay@gmail.com', '9852476125', 'Just giving a suggestion: BMW need maintenance.', '2021-11-14 15:32:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br></strong><br></font></p><ul class=\"gurs\" style=\"margin-bottom: 20px; padding-left: 43px; font-size: 15px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><div class=\"width100 fl margB20\" style=\"margin: 0px 0px 20px; padding: 0px; float: left; width: 1134px; font-size: 13px;\"><p class=\"sub-heading\" style=\"margin-bottom: 14px; padding: 0px 0px 0px 20px; font-size: 16px;\">TRAVEL DOCUMENTS</p><ul class=\"gurs\" style=\"margin-bottom: 20px; padding-left: 43px; font-size: 15px;\"><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">It shall be the sole responsibility of the User to ensure they are in possession of valid travel documents such as identity proof, passport, visa (including transit visa) etc. to undertake the travel. User agrees that in case of inability to travel for not carrying valid travel documents, ibibo shall in no way be held liable.</li><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">User understands that the information (if any) provided by ibibo regarding the travel documents is only advisory in nature and can’t be considered conclusive. The User shall ensure checking the requirements of travel with the respective airlines of the respective jurisdictions the User may transit through or choose to visit.</li></ul></div><div class=\"width100 fl margB20\" style=\"margin: 0px 0px 20px; padding: 0px; float: left; width: 1134px; font-size: 13px;\"><p class=\"sub-heading\" style=\"margin-bottom: 14px; padding: 0px 0px 0px 20px; font-size: 16px;\"><span style=\"color: rgb(102, 102, 102);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>REFUND</p><ul class=\"gurs\" style=\"margin-bottom: 20px; padding-left: 43px; font-size: 15px;\"><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">Refunds will be processed as per the airline fare rules and cancellation policy. Such refunds shall be subject to ibibo receiving the same from the airlines. However, the convenience fee paid to ibibo paid at the time of booking is a non-refundable fee.</li><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">All cancellations made directly with the airline need to be intimated to ibibo, in order to initiate the process of refund. The processing time for refunds may vary depending on the mode of payment, bank etc. The refund shall be processed after deducting the ibibo service fee which is independent of the convenience fee as mentioned above.</li><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">The refund will be credited to the same account from which the payment was made. For example, if the User used a credit card, ibibo will make an appropriate charge reversal to the same credit card; like-wise if the User used a debit card, ibibo will credit the money to the same debit card.</li><li style=\"margin-bottom: 5px; color: rgb(102, 102, 102); font-size: 16px; line-height: 24px; list-style-type: disc;\">In the event of cancellation and refund of partially utilized tickets, upfront discount and promo code discount availed at the time of booking would be deducted from the refund amount.</li></ul></div></ul>\r\n										'),
(2, 'Privacy Policy', 'privacy', '																														<ul class=\"gurs\" style=\"margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\"><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; line-height: 20px; list-style-type: disc;\"><strong style=\"margin: 0px; padding: 0px;\">While making a booking:</strong></li></ul><span style=\"font-family: Roboto; font-size: 13px; color: rgb(51, 51, 51);\">While making a booking, we may use Personal Information including, payment details which include cardholder name, credit/debit card number (in encrypted form) with expiration date, banking details, wallet details etc. as shared and allowed to be stored by you. We may also use the information of travelers list as available in or linked with your account. This information is presented to the User at the time of making a booking to enable you to complete your bookings expeditiously.</span><br><ul class=\"gurs\" style=\"margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\"><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; line-height: 20px; list-style-type: disc;\"><strong style=\"margin: 0px; padding: 0px;\">We may also use your Personal Information for several reasons including but not limited to:</strong><ol class=\"gurs1\" style=\"margin-right: 0px; margin-left: 20px; padding: 0px; list-style: none; font-size: 15px;\"><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">confirm your reservations with respective service providers;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">keep you informed of the transaction status;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">send booking confirmations either via sms or Whatsapp or any other messaging service;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">send any updates or changes to your booking(s);</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">allow our customer service to contact you, if necessary;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">customize the content of our website, mobile site and mobile app;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">request for reviews of products or services or any other improvements;</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">send verification message(s) or email(s);</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">Validate/authenticate your account and to prevent any misuse or abuse.</li><li style=\"margin-top: 10px; margin-bottom: 10px; font-size: 13px; line-height: 20px; list-style-type: upper-latin;\">contact you on your birthday/anniversary to offer a special gift or offer.</li><li></li></ol></li></ul><ul class=\"gurs\" style=\"margin-left: 30px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\"></ul>\r\n										\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																														<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Car Rental System is an online web application developed to tend to the needs of customers who are looking to rent a car for their personal needs.</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">We have ensured that customers have the best online experience where they can surf through a wide variety of vehicles available in the given time period and choose the best option for themselves.</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The aim of our application is to give drivers an alternative to renting a car from a company like Turo, Hertz, while letting owners monetize their vehicle when they’re not using it.</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">You can choose precisely the kind of car you want to drive; you don’t need to settle for someone else’s definition of a full-size car.&nbsp;</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Once you find what you’re looking for, and assuming it’s available on the dates you need it,you can apply to rent that particular car for a specific period of time.</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Submitted By:</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sumit Katiyar(IIT2019110)</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Anurag Bandopadhyay(IIT2019126)</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Rahul Kumar (IIT2019109)</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aditya Singh Machhaiya (IIT2019111)</span></blockquote><blockquote style=\"text-align: justify; margin-bottom: 0px; margin-left: 40px; border: none; padding: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nandini Gupta (IIT2019149)</span></blockquote></blockquote>\r\n										'),
(11, 'FAQs', 'faqs', '																																																												<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; font-family: Gentona; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51);\"><span class=\"aboutUsTeamDetailsHeading\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; color: rgb(100, 100, 100);\">Q: Do I need to register on your site to book car?</b></span></div><div style=\"margin: 0px; padding: 0px; font-family: Gentona; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">A: Yes. You cannot use our service fully without registering on site. You need to provide your details at the time of booking.</span></div><div style=\"margin: 0px; padding: 0px; font-family: Gentona; border: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span class=\"aboutUsTeamDetailsHeading\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; color: rgb(100, 100, 100);\">Q: What if the car doesn\'t show up?</b></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">A: In case the vehicle you booked doesn\'t show up, we will offer you a full refund immediately.</div><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span class=\"aboutUsTeamDetailsHeading\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; color: rgb(100, 100, 100);\">Q: What if the car shows up late?</b></span></div><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">A: We try our best to ensure our partners reach our customers on time. But in case of delays, do call us and we will help you out by either providing an alternate vehicle or giving you a full refund.</span></div></div></span></div></blockquote>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'Ajay@gmail.com', '2021-11-09 09:53:02'),
(5, 'rohit@gmail.com', '2021-11-14 15:22:12'),
(6, 'rahul@gmail.com', '2021-11-14 15:24:34'),
(7, 'nikhil@gmail.com', '2021-11-14 15:53:17'),
(8, 'anuj@gmail.com', '2021-11-14 15:53:32'),
(9, 'aditya@gmail.com', '2021-11-14 15:53:56'),
(10, 'anurag@gmail.com', '2021-11-14 15:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(5, 'rohit@gmail.com', 'Very good features in car', '2021-11-10 16:43:02', 0),
(6, 'rohit@gmail.com', 'good car', '2021-11-10 16:50:55', NULL),
(7, 'rohit@gmail.com', 'Nice', '2021-11-10 16:51:27', 1),
(8, 'rahul@gmail.com', 'Nice car,enjoyed whole journey', '2021-11-14 15:24:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Shubham', 'Shubham@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '9876543210', '01-01-2000', 'House No.101 , Gandhi Nagar', 'Gujarat', 'India', '2017-06-17 19:59:27', '2021-11-14 14:46:32'),
(2, 'Anuj', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', '31-12-1999', 'House No.-10 , Meerut', 'Uttar Pradesh', 'India', '2017-06-17 20:00:49', '2021-11-14 14:48:36'),
(3, 'Murli', 'Murli@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '09999857868', '03/02/1990', 'Kolkata', 'Kolkata', 'West Bengal', '2017-06-17 20:01:43', '2021-11-14 14:52:16'),
(4, 'Ajay', 'Ajay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '9999857868', '08-07-1995', 'Bikaner', 'Bikaner', 'India', '2017-06-17 20:03:36', '2021-11-14 14:53:04'),
(5, 'Rohit', 'Rohit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8899889988', '07-03-2003', 'Durgapur', 'Jaipur', 'India', '2021-11-09 09:39:28', '2021-11-14 14:51:08'),
(6, 'Rahul Kumar', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '9123467802', '22-09-2000', 'Bikaner', 'Bikaner', 'Bikaner', '2021-11-14 14:54:33', '2021-11-14 14:57:35'),
(7, 'Aditya Singh Machhiaya', 'aditya@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '9235468101', '01-01-1947', 'Indore', 'Indore', 'India', '2021-11-14 14:59:09', '2021-11-14 15:00:08'),
(8, 'Anurag', 'anurag@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '9584876321', '01-01-2000', 'Mumbai', 'Mumbai', 'India', '2021-11-14 15:01:24', '2021-11-14 15:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'ytb rvtr', 2, 'vtretrvet', 345345, 'Petrol', 3453, 7, 'knowledge_base_bg.jpg', '20170523_145633.jpg', 'phpgurukul-1.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(2, 'Test Demoy', 2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilisis eros. Sed erat. In in velit quis arcu ornare laoreet. Curabitur adipiscing luctus massa. Integer ut purus ac augue commodo commodo. Nunc nec mi eu justo tempor consectetuer. Etiam vitae nisl. In dignissim lacus ut ante. Cras elit lectus, bibendum a, adipiscing vitae, commodo et, dui. Ut tincidunt tortor. Donec nonummy, enim in lacinia pulvinar, velit tellus scelerisque augue, ac posuere libero urna eget neque. Cras ipsum. Vestibulum pretium, lectus nec venenatis volutpat, purus lectus ultrices risus, a condimentum risus mi et quam. Pellentesque auctor fringilla neque. Duis eu massa ut lorem iaculis vestibulum. Maecenas facilisis elit sed justo. Quisque volutpat malesuada velit. ', 859, 'CNG', 2015, 4, 'car_755x430.png', 'looking-used-car.png', 'banner-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'Lorem ipsum', 4, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 563, 'CNG', 2012, 5, 'featured-img-3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2017-06-20 18:40:11'),
(4, 'Lorem ipsum', 1, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(5, 'ytb rvtr', 5, 'vtretrvet', 345345, 'Petrol', 3453, 7, 'car_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-06-21 16:56:43'),
(6, 'c1', 2, 'h', 12, 'Petrol', 2020, 4, 'about_us_img1.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-14 17:40:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
