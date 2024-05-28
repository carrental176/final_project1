-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 مايو 2024 الساعة 22:09
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car rental office`
--

-- --------------------------------------------------------

--
-- بنية الجدول `booking`
--

CREATE TABLE `booking` (
  `name_car` varchar(50) NOT NULL,
  `pdate` date NOT NULL,
  `rdate` date NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Phone` int(50) NOT NULL,
  `credit_card` varchar(20) NOT NULL,
  `credit_card_date` int(5) NOT NULL,
  `cvv` int(3) NOT NULL,
  `crdiet_name` varchar(40) NOT NULL,
  `id_booking` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `booking`
--

INSERT INTO `booking` (`name_car`, `pdate`, `rdate`, `Username`, `Phone`, `credit_card`, `credit_card_date`, `cvv`, `crdiet_name`, `id_booking`) VALUES
('mr c300', '2024-05-28', '2024-05-30', 'bily12', 1234567899, '4531251612626262', 12, 444, 'ali mohammed', 66);

-- --------------------------------------------------------

--
-- بنية الجدول `cars`
--

CREATE TABLE `cars` (
  `car_name` varchar(50) NOT NULL,
  `car_color` varchar(50) NOT NULL,
  `car_plate` varchar(50) NOT NULL,
  `car_model` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cars`
--

INSERT INTO `cars` (`car_name`, `car_color`, `car_plate`, `car_model`) VALUES
('camry', 'red', 'ps1', 2024),
('mazda 6', 'blue', 'ps2', 2021),
('bmw m3', 'gray', 'ps3', 2023),
('land cruser', 'white', 'ps4', 2023),
('mr c300', 'black', 'ps5', 2023),
('bmw m5', 'gray', 'ps6', 2023);

-- --------------------------------------------------------

--
-- بنية الجدول `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `ID-customer` int(15) NOT NULL,
  `ID` int(10) NOT NULL,
  `liicense` varchar(20) NOT NULL,
  `lease_noun` varchar(20) NOT NULL,
  `plate` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `dateb` date NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `customer`
--

INSERT INTO `customer` (`Username`, `phone_number`, `ID-customer`, `ID`, `liicense`, `lease_noun`, `plate`, `password`, `dateb`, `datee`) VALUES
('spider_0', 0, 0, 72, '', '', '', 'AAss5477$', '0000-00-00', '0000-00-00'),
('ali12', 0, 0, 73, '', '', '', 'aass11', '0000-00-00', '0000-00-00'),
('m20', 0, 0, 74, '', '', '', 'm201', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- بنية الجدول `enployees`
--

CREATE TABLE `enployees` (
  `name_emp` varchar(20) NOT NULL,
  `Salary` int(30) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `enployees`
--

INSERT INTO `enployees` (`name_emp`, `Salary`, `Username`, `password`, `ID`) VALUES
('Mohammed', 15000, 'Moha', 'Moha12', 1),
('ALI', 20000, 'Ali', 'Ali12', 2),
('ABDULRAHMAN', 15000, 'abdulrahman', 'abdulrahman12', 3),
('AMMAR', 15000, 'ammar', 'ammar12', 4);

-- --------------------------------------------------------

--
-- بنية الجدول `mgr`
--

CREATE TABLE `mgr` (
  `Username` varchar(20) NOT NULL,
  `JOB_NUMBER` varchar(20) NOT NULL,
  `Salary` int(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `mgr`
--

INSERT INTO `mgr` (`Username`, `JOB_NUMBER`, `Salary`, `password`, `ID`) VALUES
('admin', '1', 50000, 'admin', 0),
('ali', '9', 50000, 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enployees`
--
ALTER TABLE `enployees`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mgr`
--
ALTER TABLE `mgr`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `enployees`
--
ALTER TABLE `enployees`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
