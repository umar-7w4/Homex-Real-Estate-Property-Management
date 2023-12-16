-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 11:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developers`
--
CREATE DATABASE IF NOT EXISTS `developers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `developers`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Our Company', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p style="text-align: justify;" class=\"text_all_p_tag_css\">I am Umar Mohammad, and during my first semester of graduate school in Computer Science, I put together this Real Estate Management System for my Web Programming class. It is a web app that helps manage property stuff, and I built it using PHP and MySQL to make sure it is solid. Keep in mind, though, this is not the finished product. There are still a bunch of cool features I need to add, and some parts you see now are just temporary placeholders.</p>\r\n<p style="text-align: justify;" class=\"text_all_p_tag_css\">This web-based application designed to streamline the process of managing real estate properties. At its core, the system is engineered using PHP and MySQL, a combination chosen for its reliability and ability to handle complex data operations efficiently. PHP, known for its server-side scripting capabilities, forms the backbone of the applications logic, while MySQL serves as the database platform, ensuring robust data storage and retrieval. The system’s user-friendly interface is crafted with HTML, CSS, and JavaScript, providing an intuitive and responsive user experience that adapts to various devices and screen sizes.</p>\r\n<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p style="text-align: justify;" class=\"text_all_p_tag_css\">Functionally, the application caters to two main user groups – administrators and clients – with different permission levels to secure and streamline operations. Administrators have comprehensive control over the system, managing property listings, user accounts, and other critical data. On the other hand, clients can effortlessly search for properties, thanks to the application advanced search functionality, which allows filtering by location and other criteria. The inclusion of a loan calculator tool further enhances the application, aiding clients in financial planning and decision-making. The application’s frontend, developed with a focus on usability, features interactive elements and animations using CSS and JavaScript, making navigation and tasks execution both smooth and engaging.</p>\r\n<p style="text-align: justify;" class=\"text_all_p_tag_css\">The development of this Real Estate Management System was meticulously planned and executed, reflecting Umar Mohammads deep understanding of web development principles and his commitment to creating functional and user-centric software solutions. The project, currently in a developmental stage, includes placeholders for future features and enhancements. This approach allows for iterative development and continuous integration of new functionalities based on user feedback and evolving real estate management needs. Future developments will focus on expanding the feature set, enhancing security measures, and refining the user interface for an even more seamless experience.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'condos-pool.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(2, 'disha', 'disha@gmail.com', 'disha', '1999-02-02', '9689689698'),
(6, 'final', 'final@gmail.com', 'final', '2020-04-29', '7979656578'),
(7, 'test', 'test@gmail.com', 'test', '2020-04-29', '8997979765'),
(8, 'check', 'check@gmail.com', 'check', '2020-04-29', '8979785688'),
(9, 'admin', 'admin@gmail.com', 'admin', '1999-12-06', '9878786545');
-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'Chicago', 3),
(10, 'Atlanta', 2),
(11, 'San Jose', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'demo', 'demo@gmail.com', '9765989689', 'demo', 'demo'),
(4, 'test', 'test@gmail.com', '7976976979', 'test', 'test'),
(5, 'final', 'final@gmail.com', '7697967967', 'final', 'final'),
(6, 'disha', 'disha@gmail.com', '7898797696', 'demo', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(2, 15, 'Homex made my life easy. It helped me with the search for my first ever investment i.e. 1BHK apartment in Mira Road. Thanks to the team for providing relevant tools like EMI calculator and smart search.\r\n', 1, '2020-04-03'),
(3, 18, 'I am young professional, Homex search helped me in shortlisting property in Navi newyork. I learned what kind of property will cost me how much and what are the types of amenities I will be getting?', 1, '2020-04-03'),
(4, 21, 'I was looking for a flat in Andheri and Homex website helped me get one smoothly. I could choose not just the property but also check what others had to say about the area. The site is simple and user friendly.\r\n', 1, '2020-04-03'),
(5, 23, 'The constant touch through other true calls really surprised me.They sent their officer to get the photographs of my shop & promptly posted all the pics which helped me in getting the tenant fast. Hats off to Homex.\r\n', 1, '2020-04-03'),
(6, 24, 'I moved to newyork from Delhi early this year and I looked online for a suitable apartment for rent in areas near my workplace in Andheri. Thanks Homex for giving me so many options with Travel Time search.\r\n', 0, '2020-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`) VALUES
(11, 'Azalea Park Abode', '<p>final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final</p>\r\n<p>final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final&nbsp;</p>\r\n<p>final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final final&nbsp;</p>', 'office', '2 BHK', 'sale', 1, 2, 3, 4, 5, '3rd Floor', 4321, 897898, '600 Ponce De Leon Ave NE, Atlanta, GA 30308', 'valsad', 'atlanta', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 15, 'sold out', '', '', '', '', '2020-04-03 00:28:14'),
(13, 'Magnolia Mews', 'suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj ', 'bunglow', '2 BHK', 'sale', 3, 2, 2, 1, 1, '4th Floor', 321, 987898, '188 14th Street NE, Atlanta, GA 30361 ', 'navsari', 'atlanta', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 16, 'available', '', '', '', '', '2020-04-03 00:28:14'),
(14, 'Willow Wind Homestead', '<p>suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj suraj&nbsp;</p>', 'flat', '3 BHK', 'rent', 3, 2, 2, 1, 1, '2nd Floor', 3241, 9878987, '2120 Peachtree Road NW, Atlanta, GA 30309', 'valsad', 'atlanta', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 15, 'available', '', '', '', '', '2020-04-03 00:40:48'),
(15, 'Riverbend Retreat', '<p>New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test New Test&nbsp;</p>', 'appartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 1500, 1556000, '1090 West Paces Ferry Road NW, Atlanta, GA 30327', 'vapi', 'atlanta', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 15, 'available', '', '', '', '', '2020-04-03 14:45:49'),
(17, 'Oak Haven Residence', '<p>disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha disha&nbsp;</p>', 'flat', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 1500, 1550000, '1574 Piedmont Avenue NE, Atlanta, GA 30324', 'bhilad', 'atlanta', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 21, 'available', '', '', '', '', '2020-04-03 17:47:40'),
(18, 'Highland Terrace', '<p>new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea new idea&nbsp;</p>', 'flat', '2 BHK', 'sale', 3, 3, 2, 1, 2, '1st Floor', 343, 34243423, '3450 Northside Parkway NW, Chicago, GA 30327', 'cxbvc', 'chicago', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 21, 'available', '', '', '', '', '2020-04-03 17:54:06'),
(19, 'Crestwood Manor', '<p>testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing&nbsp;</p>', 'flat', '2 BHK', 'sale', 2, 2, 1, 1, 1, '3rd Floor', 1250, 1500000, '263 Joseph E Lowery Blvd NW, Atlanta, GA 30314', 'valsad', 'atlanta', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '11.jpg', '22.jpg', '33.jpg', '44.jpg', '55.jpg', 15, 'available', 'house-floor-plan.png', '', '', '', '2020-04-03 20:12:38'),
(20, 'The Brookwood Villa', '<p>Magicbricks is an online platform where real estate trade is taking place in a much faster and newer manner. We not just help you with finding the ideal real estate, but also ensure that your buying journey is as smooth as it can be. We understand that while buying or renting a property, there are a lot of factors to be taken into consideration, like the locality, preferred area, budget, amenities, and a lot more. Magicbricks is the destination where you will end up finding the best suitable property available across India. Whether you are looking for a rented property or planning to build your dream abode, you can find anything and everything in real estate at our portal. We offer residential and commercial property listings for both sale and rent across the country. If you wish to make property investment in top cities, we present detailed information of various properties on sale, upcoming projects by renowned builders, budget residential apartments, commercial spaces, shops, etc. across cities like Bangalore, Pune, newyork, New Delhi, Chennai, Hyderabad, Kolkata, Noida, Gurgaon and many more. A wide variety of listing that is advertised here gives you an excellent overview of all property available in the area you are considering. Whether you are hunting for residential property, agricultural property, your next business set up, or an office space, Magicbricks aims at providing you the largest number of listing options in your preferred area to choose from.</p>', 'office', '1,2 BHK', 'rent', 99, 88, 77, 66, 55, '5th Floor', 1111, 9999500, '820 Ralph McGill Boulevard NE, Newyork, GA 30306', 'virar', 'newyork', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>3 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>8 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 15, 'available', 'floor.jpg', 'basement.jpg', 'ground.jpg', '12 Floor', '2020-04-03 20:30:34'),
(22, 'Maple Grove Estate', '<p>Magicbricks is an online platform where real estate trade is taking place in a much faster and newer manner. We not just help you with finding the ideal real estate, but also ensure that your buying journey is as smooth as it can be. We understand that while buying or renting a property, there are a lot of factors to be taken into consideration, like the locality, preferred area, budget, amenities, and a lot more. Magicbricks is the destination where you will end up finding the best suitable property available across India. Whether you are looking for a rented property or planning to build your dream abode, you can find anything and everything in real estate at our portal. We offer residential and commercial property listings for both sale and rent across the country. If you wish to make property investment in top cities, we present detailed information of various properties on sale, upcoming projects by renowned builders, budget residential apartments, commercial spaces, shops, etc. across cities like Bangalore, Pune, newyork, New Delhi, Chennai, Hyderabad, Kolkata, Noida, Gurgaon and many more. A wide variety of listing that is advertised here gives you an excellent overview of all property available in the area you are considering. Whether you are hunting for residential property, agricultural property, your next business set up, or an office space, Magicbricks aims at providing you the largest number of listing options in your preferred area to choose from.</p>', 'bunglow', '3 BHK', 'sale', 3, 2, 1, 1, 1, '2nd Floor', 1950, 4550467, '450 Highland Avenue NE, Dallas, GA 30312', 'bhilad', 'dallas', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 16, 'sold out', 'floor1.png', 'basement1.jpg', 'ground1.jpg', '2 Floor', '2020-04-04 01:38:36');


-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'California'),
(3, 'Newyork'),
(4, 'Texas'),
(7, 'Florida'),
(9, 'Virginia'),
(10, 'North Carolina'),
(15, 'Georgia');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(14, 'admin', 'admin@gmail.com', '9876543210', 'admin', 'user', '3.jpg'),
(15, 'umar', 'mohammadumar7w4@gmail.com', '8374873610', 'umar', 'agent', '2.jpg'),
(16, 'demo', 'demo@gmail.com', '7976976979', 'demo', 'user', '1.jpg'),
(21, 'disha', 'disha@gmail.com', '7976956956', 'disha', 'agent', '2.jpg'),
(22, 'disha', 'disha1@gmail.com', '8997897869', 'disha', 'agent', '1.jpg'),
(23, 'testing', 'testing@gmail.com', '9869596597', 'testing', 'builder', '1.jpg'),
(24, 'some', 'some@gmail.com', '9689698697', 'some', 'builder', '3.jpg'),
(25, 'test', 'test12@gmail.com', '9798678969', 'test', 'builder', 'avatar-3.jpg');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
