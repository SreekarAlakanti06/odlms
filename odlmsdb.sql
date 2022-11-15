-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2022 at 08:31 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odlmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test1', 'admin', 8979555557, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

DROP TABLE IF EXISTS `tblappointment`;
CREATE TABLE IF NOT EXISTS `tblappointment` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` int(10) NOT NULL,
  `AppointmentNumber` varchar(50) DEFAULT NULL,
  `PatientName` varchar(120) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `AppointmentDate` varchar(200) DEFAULT NULL,
  `AppointmentTime` varchar(80) DEFAULT NULL,
  `Prescription` varchar(200) DEFAULT NULL,
  `PostDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(50) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Report` varchar(200) DEFAULT NULL,
  `ReportUploadedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`),
  KEY `AppointmentNumber` (`AppointmentNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `UserID`, `AppointmentNumber`, `PatientName`, `Gender`, `DOB`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Prescription`, `PostDate`, `Status`, `AssignTo`, `Remark`, `UpdationDate`, `Report`, `ReportUploadedDate`) VALUES
(12, 1, '474409393', 'Sri Harsha', 'Male', '2022-10-10', 4049706543, 'harsha@gmail.com', '2022-11-10', '20:00', NULL, '2022-11-10 06:50:39', 'Report Uploaded', 'lab1124', 'Report', '2022-11-10 06:50:39', 'ae23e9e8f51242f6fe3b868362f2e9031668097087.pdf', '2022-11-10 16:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE IF NOT EXISTS `tblemployee` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(120) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext,
  `Password` varchar(120) DEFAULT NULL,
  `JoiningDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `EmpID` (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `EmpID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'lab1124', 'Sri Harsha', 4567891234, 'harsha@vdlms.com', '660 Peachtree St, Atlanta, 30323', 'f925916e2754e5e03f75dd58a5733251', '2022-11-10 15:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbllabtest`
--

DROP TABLE IF EXISTS `tbllabtest`;
CREATE TABLE IF NOT EXISTS `tbllabtest` (
  `ID` int(10) NOT NULL,
  `TestTitle` varchar(200) DEFAULT NULL,
  `TestDescription` mediumtext,
  `TestInterpretation` mediumtext,
  `Price` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllabtest`
--

INSERT INTO `tbllabtest` (`ID`, `TestTitle`, `TestDescription`, `TestInterpretation`, `Price`) VALUES
(1, 'HbA1c', 'Glycosylated Hemoglobin Test measures the percentage of glycosylated hemoglobin in blood which reflects the average blood glucose over a period of past two to three months (8 - 12 weeks).', 'Interpreting HbA1c results\r\nInterpretations.\r\n\r\nNormal: Below 5.7% (39 mmol/mol approx.)\r\n\r\nPrediabetic: 5.7% - 6.4% (39 to 46 mmol/mol approx.)\r\n\r\nDiabetic: Above 6.5% (above 48 mmol/mol approx.)\r\n\r\nLess than 5.7% Glycated Hemoglobin indicates normal levels of blood sugar. Increased risk of developing Diabetes is found in Prediabetic patients with blood sugar level between 5.7% and 6.4%. Patients with a HbA1c level greater than 6.5% are usually diagnosed with Diabetes.', '500'),
(2, 'TSH', 'Thyroid Stimulating Hormone (TSH) test measures the amount of TSH in your blood which helps to find out if the thyroid gland is working normally or not. Low TSH levels indicate hyperthyroidism and high TSH levels indicate hypothyroidism.', 'Interpreting TSH results\r\nInterpretations\r\n\r\nThe TSH normal range may vary from lab to lab. \r\nThe TSH normal range for different age groups is given below:\r\n\r\nPremature Infants (28-36 Weeks)\r\n\r\n\r\n 1st Week of Life\r\n\r\n0.20-27.90 mIU/L\r\n\r\nTerm Infants (>37 Weeks)\r\n\r\n\r\n Serum or Cord Blood\r\n\r\n1.00-39.00 mIU/L\r\n\r\n 1-2 Days\r\n\r\n3.20-34.60 mIU/L\r\n\r\n 3-4 Days\r\n\r\n0.70-15.40 mIU/L\r\n\r\n 5 Days-4 Weeks\r\n\r\n1.70-9.10 mIU/L\r\n\r\n 1-11 Months\r\n\r\n0.80-8.20 mIU/L\r\n\r\n 1-19 Years\r\n\r\n0.50-4.30 mIU/L\r\n\r\n ≥20 Years\r\n\r\n0.40-4.50 mIU/L\r\n\r\nPregnancy\r\n\r\n\r\n First Trimester\r\n\r\n0.26-2.66 mIU/L\r\n\r\n Second Trimester\r\n\r\n0.55-2.73 mIU/L\r\n\r\n Third Trimester\r\n\r\n0.43-2.91 mIU/L\r\n\r\n\r\nIf your TSH level is increased, it usually indicates that you have hypothyroidism. Hashimoto’s thyroiditis is the most common cause of primary hypothyroidism. \r\nIf your TSH level is decreased, it usually indicates hyperthyroidism. Graves\' disease, multinodular goiter, toxic nodule are some of the common causes of hyperthyroidism. ', '200'),
(3, 'KFT', 'Kidneys play an important role in the removal of waste products and maintenance of water and electrolyte balance in the body. Kidney Function Test (KFT) includes a group of blood tests to determine how well the kidneys are working.\r\nTests Included\r\nBUN/Creatinine Ratio\r\nUric Acid\r\nCreatinine\r\nUrea/ Blood Urea Nitrogen', 'Interpreting KFT results\r\nInterpretations\r\nNormal levels:\r\n\r\n·         Urea:\r\n\r\n2.5-7.8 mmol/L\r\n\r\n ·        BUN:\r\n\r\n7 to 20 mg/dL\r\n\r\n\r\n·         Uric Acid:\r\n\r\nAdult Female: 2.4 to 6.0 mg/dL\r\n\r\nAdult Male: 3.4 to 7.0 mg/dL\r\n\r\nChildren: 3 to 4 mg/dL\r\n\r\n\r\n·         Creatinine:\r\n\r\nAdult males: 0.6 to 1.2 mg/dL\r\n\r\nAdult females: 0.5 to 1.1 mg/dL\r\n\r\n\r\n·         BUN/Creatinine Ratio:\r\n\r\n          12:1 to 20:1\r\n\r\n\r\nIncreased levels of each of these parameters can indicate a number of conditions and not necessarily health disorders. For example, increased creatinine levels can occur due to heavy exercise, consumption of cooked meat, or taking protein supplements apart from kidney diseases. Thus, these parameters are also considered while interpreting the tests. Further tests are performed to confirm any health disorders.', '500'),
(4, 'Dengue Antigen NS1, IgG & IgM', 'The Dengue Antigen NS1, IgG & IgM test is done in case there is high fever within 2 weeks of travel to an area where dengue outbreak is occurring or dengue fever is endemic.', 'Interpreting Dengue Antigen NS1, IgG & IgM results\r\n\r\nInterpretations\r\nResult in index\r\n\r\nRemarks\r\n\r\nNegative (<0.9)\r\n\r\nNo detectable dengue NS1 antigen. The result does not rule out dengue infection. An additional sample should be tested for IgG & IgM serology in 7-14 days.\r\n\r\n \r\n\r\nEquivocal (0.9-1.1)\r\n\r\nRepeat sample after 1 week\r\n\r\n \r\n\r\nPositive (>1.1)\r\n\r\nPresence of detectable dengue NS1 antigen. Dengue IgG & IgM serology assays should be performed on follow up samples after 5-7 days of onset of fever, to confirm dengue infection.\r\n\r\n \r\n\r\nNote: Recommended to do NS1 Antigen by ELISA in the first 5 days of fever. After 7-10 days of continuous fever, the recommended test is Dengue fever antibodies IgG & IgM by ELISA.', '500'),
(5, 'Urine R/M Measure', 'Urine Routine and Microscopy test involve the three-part evaluation of the urine sample.\r\n\r\n1. Gross Examination - It involves the visual examination of the urine sample for color and appearance.\r\n\r\n2. Chemical Examination - It is done by urine dip-stick method which involves the use of reagent test strips. These test strips are dipped into the urine sample and the colors that develop are matched with the control for analysis. It is done to examine the urine sample for glucose, protein, pH, specific gravity, blood, nitrites, ketones, leukocyte esterase, bilirubin, and urobilinogen.\r\n\r\n3. Microscopic Examination - It involves the examination of the urine sample under the microscope for casts, crystals, cells, bacteria, and yeast. \r\nTests Included\r\nRBCs Urine\r\nColour\r\nEpithelial Cell\r\nUrobilinogen\r\nLeucocytes\r\nKetone\r\nProtein Urine\r\nPus Cell\r\nCrystals\r\n', 'NA', '110'),
(6, 'Lipid Profile', 'The Lipid Profile Test typically measures the levels of total cholesterol, HDL cholesterol, LDL cholesterol, and triglycerides. Other results that may be reported include VLDL cholesterol, non-HDL cholesterol, and total cholesterol to HDL cholesterol ratio.\r\nTests Included\r\nTriglycerides\r\nCholesterol - Total\r\nCholesterol - HDL\r\nVery Low Density Lipoprotein\r\nCholesterol - LDL', 'Interpreting Lipid Profile results\r\n\r\nInterpretations\r\nHigher than optimum levels of total cholesterol, LDL cholesterol, non-HDL cholesterol, and fasting triglycerides indicate an increased risk of plaque formation in the blood vessels (atherosclerosis) and cardiovascular diseases, heart attack, or stroke.\r\n\r\nHDL cholesterol reduces the risk factors of development of cardiovascular diseases. In absence of other factors, higher the HDL levels in blood, lower is the chance of developing cardiovascular diseases.', '300'),
(8, 'Full body check up', 'This is a sample text for testing.', 'This is a sample text for testing. This is a sample text for testing.This is a sample text for testing.This is a sample text for testing.', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrequest`
--

DROP TABLE IF EXISTS `tbltestrequest`;
CREATE TABLE IF NOT EXISTS `tbltestrequest` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` varchar(100) DEFAULT NULL,
  `TestID` int(10) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

DROP TABLE IF EXISTS `tbltracking`;
CREATE TABLE IF NOT EXISTS `tbltracking` (
  `ID` int(10) NOT NULL,
  `AppointmentNumeber` varchar(50) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `OrderCanclledByUser` int(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Sri Harsha', 4049706543, 'harsha@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-10 06:47:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
