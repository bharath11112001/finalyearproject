-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2024 at 04:12 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fyp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fyp_admin`
--

CREATE TABLE `fyp_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_admin`
--

INSERT INTO `fyp_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_batch`
--

CREATE TABLE `fyp_batch` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_batch`
--

INSERT INTO `fyp_batch` (`id`, `reg_no`, `name`, `tl`) VALUES
(1, '1034', 'Varun', '1023');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_digital_signature`
--

CREATE TABLE `fyp_digital_signature` (
  `id` int(50) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `signature_link` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_digital_signature`
--

INSERT INTO `fyp_digital_signature` (`id`, `dept`, `staff_id`, `signature_link`) VALUES
(1, 'MSc', 'ST0000', 'Osintseva_signature.png'),
(2, 'MSc', 'ST123', 'Josh_Hutcherson_signature.png'),
(3, 'MSc', 'ST167', 'vendor-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_review`
--

CREATE TABLE `fyp_review` (
  `id` int(50) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `review_date` date NOT NULL,
  `review_time` time NOT NULL,
  `requirement` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_review`
--

INSERT INTO `fyp_review` (`id`, `staff_id`, `dept`, `review_date`, `review_time`, `requirement`, `name`, `link`) VALUES
(1, 'ST167', 'MSc', '2024-02-04', '12:55:00', ' ds', '', ''),
(2, 'ST0000', 'Msc', '2024-04-12', '22:30:00', ' ppt', 'Mauanja', '1209');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_review_report`
--

CREATE TABLE `fyp_review_report` (
  `id` int(30) NOT NULL,
  `review_id` int(30) NOT NULL,
  `date` date NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `upload_file` varchar(100) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_review_report`
--

INSERT INTO `fyp_review_report` (`id`, `review_id`, `date`, `staff_id`, `dept`, `upload_file`, `reg_no`) VALUES
(1, 1, '2024-01-05', 'ST167', 'MSc', 'ARTIFICIAL_INTELLIGENCE-MACHINE_LEARNING_AND_DEEP_LEARNING.pptx, BLOCK_CHAIN.pptx', '1023'),
(2, 1, '2024-02-04', 'MSc', 'ST167', 'Kalirajan08-01-2024.docx', '1009'),
(3, 2, '2024-04-12', 'ST0000', 'Msc', 'People_Counter__Infilect_Report.docx', '1009');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_review_result`
--

CREATE TABLE `fyp_review_result` (
  `id` int(30) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `titlee` varchar(100) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `marks` float NOT NULL,
  `remark` varchar(100) NOT NULL,
  `staff_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_review_result`
--

INSERT INTO `fyp_review_result` (`id`, `reg_no`, `titlee`, `dept`, `marks`, `remark`, `staff_id`) VALUES
(1, '1023', 'Animal Intrusion Detection Model based on Temporal Convolutional Network for Smart Farming', 'MSc', 9.1, 'Good', 'ST167');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_staff`
--

CREATE TABLE `fyp_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `staff_type` varchar(20) NOT NULL,
  `date_join` date NOT NULL,
  `dept` varchar(20) NOT NULL,
  `captcha` varchar(11) NOT NULL,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `uname` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_staff`
--

INSERT INTO `fyp_staff` (`id`, `name`, `mobile`, `email`, `location`, `staff_id`, `password`, `staff_type`, `date_join`, `dept`, `captcha`) VALUES
(4, 'jhxjkxx', 5654243132, 'fgdf@gmail.com', '4231eqw', 'ST0000', '1233445566', 'staff', '0000-00-00', 'MSc', 'unbachar'),
(2, 'Sathya', 9089786756, 'Kao@gmail.com', '45,OOty', 'HOD14', '111111', 'hod', '0000-00-00', 'MSc', 'unbachar'),
(3, 'Raja', 9098745789, 'Raj@gmail.com', '34,madurai', 'ST167', '110000', 'staff', '0000-00-00', 'MSc', 'unbachar');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_staff_allocation`
--

CREATE TABLE `fyp_staff_allocation` (
  `id` int(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_staff_allocation`
--

INSERT INTO `fyp_staff_allocation` (`id`, `dept`, `staff_id`, `reg_no`, `name`, `sname`) VALUES
(1, 'MSc', 'ST0000', '1009', 'sankar', ''),
(2, 'MSc', 'ST0000', '1023', 'Pupa', ''),
(3, 'MSc', 'ST167', '1010', 'Pooja', '');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_student`
--

CREATE TABLE `fyp_student` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `batch_year` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date_join` date NOT NULL,
  `captcha` varchar(11) NOT NULL,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `regno` (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_student`
--

INSERT INTO `fyp_student` (`id`, `name`, `reg_no`, `gender`, `dob`, `mobile`, `email`, `address`, `dept`, `semester`, `batch_year`, `password`, `date_join`, `captcha`) VALUES
(5, 'sankar', '1009', 'Male', '2023-12-02', 7878678909, 'ko@gmail.com', '67,karur', 'MSc', 0, '2021-2023', '121212', '0000-00-00', 'dultne'),
(7, 'Pupa', '1023', 'Male', '2017-02-01', 8987675645, 'Pas@gmail.com', '34,Yercud', 'MSc', 0, '2021-2023', '123321', '0000-00-00', 'dultne'),
(6, 'Pooja', '1010', 'Female', '2008-05-01', 9089123456, 'po23@gmail.com', '56,Tuty', 'MSc', 0, '2021-2023', '123123', '0000-00-00', 'dultne'),
(8, 'Varun', '1034', 'Male', '2023-12-09', 9012343245, 'var@gmail.com', '45,Assam', 'MSc', 0, '2021-2023', '909090', '0000-00-00', 'dultne');

-- --------------------------------------------------------

--
-- Table structure for table `fyp_title`
--

CREATE TABLE `fyp_title` (
  `id` int(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `doc_path` varchar(200) NOT NULL,
  `titlee` varchar(100) NOT NULL,
  `digital_signature_link` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fyp_title`
--

INSERT INTO `fyp_title` (`id`, `dept`, `staff_id`, `name`, `reg_no`, `doc_path`, `titlee`, `digital_signature_link`) VALUES
(1, 'MSc', 'ST167', 'Pupa', '1023', 'Animal_Intrusion_-_Abstract.docx', 'Animal Intrusion Detection Model based on Temporal Convolutional Network for Smart Farming', 'modified_document_193511.pdf'),
(2, 'MSc', 'ST167', 'Pupa', '1023', 'AgroEquip_-_Abstract_1.docx', 'Revolutionizing Agriculture with On-Demand Equipment Rental Services for Precision Farming', ''),
(3, 'MSc', 'ST167', 'Pooja', '1010', 'Artificial_Vision_-_Abstract.docx', 'Bionic Eye Model to Provide Vision or Restore Sight for Blindness using Vision Transformer', 'modified_document_164326.pdf'),
(4, 'MSc', 'ST123', 'Varun', '1034', 'BlockBank_-_Abstract.docx', 'BlockBank: Digital Currency Based Banking System using Blockchain Technology', 'modified_document_150900.pdf'),
(6, 'MSc', 'ST167', 'sankar', '1009', 'CloudCargo_-_Abstract.docx', 'Cloud-based Cargo Management and Live Location Tracking', 'modified_document_225029.pdf'),
(7, 'MSc', 'ST167', 'sankar', '1009', 'Criminal_Identification_-_Abstract.docx', 'DeepFace: Deep Learning Model based Criminal Identifications System for Law Enforcement Department', ''),
(8, 'MSc', 'ST0000', 'sankar', '1009', 'CoC_-_Abstract.docx', 'Judicial Evidence Integrity and Security System for Proof of Fair Judgement', ''),
(9, 'MSc', 'ST0000', 'sankar', '1009', 'Crime_Hotspot_-_Abstract.docx', 'Safety Locator: Crime Rate and Hot Spot Prediction System for Woman using Multimodal Deep Learning', '');
