-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 07:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumni_firstname` varchar(255) NOT NULL,
  `alumni_lastname` varchar(255) NOT NULL,
  `alumni_email` varchar(256) NOT NULL,
  `alumni_password` varchar(255) NOT NULL,
  `alumni_company` varchar(255) NOT NULL,
  `alumni_ctc` int(11) NOT NULL,
  `alumni_designation` varchar(255) NOT NULL,
  `alumni_address` varchar(255) NOT NULL,
  `alumni_qualification` varchar(255) NOT NULL,
  `alumni_cpi` varchar(255) NOT NULL,
  `alumni_stream` varchar(255) NOT NULL,
  `alumni_dob` varchar(255) NOT NULL,
  `alumni_mob` varchar(255) NOT NULL,
  `alumni_passingyear` varchar(255) NOT NULL,
  `alumni_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_firstname`, `alumni_lastname`, `alumni_email`, `alumni_password`, `alumni_company`, `alumni_ctc`, `alumni_designation`, `alumni_address`, `alumni_qualification`, `alumni_cpi`, `alumni_stream`, `alumni_dob`, `alumni_mob`, `alumni_passingyear`, `alumni_active`) VALUES
('batman', 'pandey', 'batman@gmail.com', 'ZTZmZjFjNjU0OWJiNDQ2YjhhMzdjMjcxMzA2MmUwY2U=', 'Oracle', 3900000, 'dasdasd', 'sdadasdasdasd', 'B.tech', '9.4', 'CSE', '1999-01-20', '1234567890', '2023-11-23', 1),
('Donald ', 'Trump', 'donald@yahoo.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'TI', 45000000, 'Senior developer', 'San francisco, LA.', 'PhD', '9.78', 'CSE', '1997-12-12', '9874561230', '2018-12-06', 1),
('Barack', 'Obama', 'obama@hotmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'Apple', 400000000, 'President', 'Washington DC.\r\nUSA', 'PhD', '9.78', 'CSE', '1996-12-01', '9898989898', '2014-12-06', 1),
('batman', 'pandey', 'prince@gmail.com', 'YjdlNWFlZDJkNzcwNThhMmFkMzIxMDdlMDhlZGEzMDU=', 'Oracle', 3900000, 'SDE', 'sdadasdasdasd', 'B.tech', '9.2', 'CSE', '1999-01-20', '1234567890', '2025-06-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(25, 1, 2, 1, 2),
(35, 4, 3, 8, 2),
(36, 5, 3, 7, 2),
(37, 7, 4, 9, 2),
(38, 8, 5, 10, 2),
(39, 7, 4, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(2, 'Amit', 'Co-ordinator', 'India', 'Madhya Pradesh', 'Indore', '7987487551', 'www.scsplacementcelll.com', 'amit@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'Student', '627635c95a472.jpg', '2022-05-05 08:43:22', 1),
(3, 'Rajendra Bedi', 'TCS', 'India', 'Chhattisgarh', 'Raipur', '9876543210', 'www.tcs.com', 'rjbedi@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'VP', '643c53d036194.jpg', '2023-04-16 20:00:16', 1),
(4, 'Aditya Jain', 'Apple', 'India', 'Chhattisgarh', 'Raipur', '9876543210', 'www.apple.com', 'adityajain12@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'Senior hiring Cordinator', '', '2023-04-18 15:01:16', 1),
(5, 'Ali khan', 'Microsoft', 'India', 'Chhattisgarh', 'Raipur', '9826572525', 'microsoft.com', 'ali23@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'Hiring Manager', '', '2023-04-18 16:50:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` int(250) NOT NULL,
  `minimummarks` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `minimummarks`, `experience`, `qualification`, `createdat`) VALUES
(1, 2, 'Accenture', 'Accenture plc is an Ireland-based multinational professional services company that specializes in information technology (IT) services and consulting. A Fortune Global 500 company, it reported revenues of $50.53 billion in 2021. Accenture\'s current clients include 91 of the Fortune Global 100 and more than three-quarters of the Fortune Global 500.\r\n\r\nJulie Sweet has served as CEO of Accenture since 1 September 2019.\r\n\r\nIt has been incorporated in Dublin, Ireland, since 2009.', 650000, '65', 'Software Engineer', 'MCA', '2022-05-05 09:16:08'),
(3, 2, 'Quantiphi', 'Cognizant is an American multinational information technology services and consulting company. It is headquartered in Teaneck, New Jersey, United States. Cognizant is part of the NASDAQ-100 and trades under CTSH. It was founded as an in-house technology unit of Dun & Bradstreet in 1994,[5] and started serving external clients in 1996.[5]\r\n\r\nAfter a series of corporate re-organizations there was an initial public offering in 1998.[6]\r\n\r\nCognizant had a period of fast growth during the 2000s and became a Fortune 500 company in 2011; as of 2021, it is ranked 185.[7]', 450000, '50', 'Software Engineer', 'MCA', '2022-05-07 11:57:52'),
(4, 3, 'TCS', 'TCS is an Indian multinational information technology services and consulting company. It is headquartered in Banglore, Karnataka, India. \r\n\r\nAfter a series of corporate re-organizations there was an initial public offering in 1998.[6]\r\n\r\nTCS had a period of fast growth during the 2000s and became a Fortune 500 company in 2011; as of 2021, it is ranked 102.[7]', 450000, '50', 'Software Engineer', 'MCA', '2020-05-07 11:57:52'),
(5, 3, 'TCS', 'TCS is an Indian multinational information technology services and consulting company. It is headquartered in Banglore, Karnataka, India. \r\n\r\nAfter a series of corporate re-organizations there was an initial public offering in 1998.[6]\r\n\r\nTCS had a period of fast growth during the 2000s and became a Fortune 500 company in 2011; as of 2021, it is ranked 102.[7]', 450000, '50', 'Software Engineer', 'MCA', '2021-05-09 11:57:52'),
(6, 3, 'TCS', 'TCS is an Indian multinational information technology services and consulting company. It is headquartered in Banglore, Karnataka, India. \r\n\r\nAfter a series of corporate re-organizations there was an initial public offering in 1998.[6]\r\n\r\nTCS had a period of fast growth during the 2000s and became a Fortune 500 company in 2011; as of 2021, it is ranked 102.[7]', 450000, '50', 'Software Engineer', 'MCA', '2022-05-09 11:57:52'),
(7, 4, 'Apple', '<p>Job listing for senior game developer at Apple.</p>', 4500000, '75', 'Game developer', 'B.tech', '2023-04-18 15:44:12'),
(8, 5, 'Microsoft', '<p>Junior developer</p>', 450000, '50', 'Junion developer', 'B.tech', '2023-04-18 16:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 2,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `hsc` int(200) NOT NULL,
  `ssc` int(11) NOT NULL,
  `ug` int(11) NOT NULL,
  `pg` int(11) NOT NULL,
  `CTC` int(250) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`, `hsc`, `ssc`, `ug`, `pg`, `CTC`) VALUES
(1, 'Narendra', 'Kumar', 'narendra@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, ANNAPURNA COLONY\r\nKODARIYA', 'MHOW', 'Madhya Pradesh', '7987487551', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Web Development', 80, 80, 65, 65, 0),
(2, 'Rajendra', 'Kumar', 'rajendra@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, ANNAPURNA COLONY\r\nKODARIYA', 'MHOW', 'Madhya Pradesh', '7987487551', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Web Development', 80, 80, 65, 65, 0),
(3, 'Ramesh', 'Kumar', 'ramesh@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, ANNAPURNA COLONY\r\nKODARIYA', 'MHOW', 'Madhya Pradesh', '7987487551', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Machine Learning', 85, 80, 70, 70, 0),
(4, 'Ali', 'Kumar', 'ali123@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, ANNAPURNA COLONY\r\nKODARIYA', 'MHOW', 'Madhya Pradesh', '7987487551', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Machine Learning', 85, 80, 70, 70, 0),
(5, 'Sam', 'Finn', 'sammy123@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, ANNAPURNA COLONY\r\nKODARIYA', 'MHOW', 'Goa', '7987487554', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Machine Learning', 87, 82, 74, 74, 0),
(6, 'Prakhar', 'Iyer', 'prakh0909@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '32, Choubey Colony', 'MHOW', 'Delhi', '9999487554', 'MCA', '', '', '', '', '', '627b82a7732d4.', '0e52568ac719e70f13c79b8c18020d67', 1, 'Student', 'Machine Learning', 87, 82, 74, 74, 0),
(7, 'Dhruv', 'Agrawal', 'dhruv_2101cs26@iitp.ac.in', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '17,Doongaji colony, G.E.Road,', 'Raipur', 'Chhattisgarh', '9826572525', 'MCA', 'Computer science', '2021-06-07', '1998-12-12', '24', '', '643cde2ef142b.', 'c852ce9c53593505b2d1c44adab1904d', 1, 'Pop', 'Full Stack Developer', 90, 90, 90, 90, 3900000),
(8, 'Mohar', 'Agrawal', 'reallimited@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '17,Doongaji colony, G.E.Road,', 'Raipur', 'Chhattisgarh', '9425507045', 'MCA', 'Computer science', '2020-12-12', '1997-12-12', '25', 'Student', '643cddf567bb9.', 'e05383bf8b2dabf61de9c82fcf71311e', 1, 'pop', 'Web dev', 0, 90, 90, 90, 4100000),
(9, 'HImanshu', 'Gawri', 'himanshu@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '17,Doongaji colony, G.E.Road,', 'Raipur', 'Chhattisgarh', '9876543210', 'B.tech', 'Computer science', '2020-12-06', '1998-12-12', '24', 'Junion developer', NULL, '0da0983947644f1c9c25b621ea46aa87', 1, 'Student ', 'Game developement', 100, 100, 100, 0, 0),
(10, 'Dhruv', 'Agrawal', 'try@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '17,Doongaji colony, G.E.Road,', 'Raipur', 'Chhattisgarh', '9826572525', 'B.tech', 'Computer science', '2020-12-06', '1998-12-12', '24', 'Student', NULL, '5ef04dfdbab0f02a22ff21af79014302', 1, 'Student', 'Cyber Security', 90, 90, 90, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumni_email`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
