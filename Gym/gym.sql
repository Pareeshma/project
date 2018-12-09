create database gym;
use gym;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `time stamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`adminid`, `username`, `password`, `time stamp`) VALUES
(1, 'admin', 'admin', '2015-09-19 08:22:09'),
(2, 'kamal', 'kamal', '2015-09-19 08:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equip`
--

CREATE TABLE IF NOT EXISTS `tbl_equip` (
  `equipid` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `vendor` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equip`
--

INSERT INTO `tbl_equip` (`equipid`, `name`, `vendor`, `amount`, `phone`, `address`, `date`) VALUES
(12, 'sadas', 'asdasd', 3434, '324234', 'asrwer', '2015-11-25'),
(13, 'walking machine', 'abc', 1234, '12312321', 'dsfdsfsd', '2015-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userreg`
--

CREATE TABLE IF NOT EXISTS `tbl_userreg` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `age` int(200) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `phone` int(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `service` varchar(200) DEFAULT NULL,
  `timestap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` int(200) DEFAULT NULL,
  `plan` int(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userreg`
--

INSERT INTO `tbl_userreg` (`userid`, `firstname`, `lastname`, `age`, `sex`, `phone`, `address`, `service`, `timestap`, `amount`, `plan`, `status`) VALUES
(3, 'soniya', 'shrestha', 26, 'female', 123456, 'kupondole', 'sauna', '2015-11-20 02:02:00', 2500, 180, 'Active');

--
-- Table structure for table `tbl_userreg`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `name` varchar(200) DEFAULT NULL,
  `phone` int(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userreg`
--

INSERT INTO `tbl_userreg` (`name`,`phone`, `address`, `company`) VALUES
('madhuri',963258741,'Tumakuru','M R Productions    ');

-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tbl_equip`
--
ALTER TABLE `tbl_equip`
  ADD PRIMARY KEY (`equipid`);

--
-- Indexes for table `tbl_userreg`
--
ALTER TABLE `tbl_userreg`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_equip`
--
ALTER TABLE `tbl_equip`
  MODIFY `equipid` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_userreg`
--
ALTER TABLE `tbl_userreg`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
