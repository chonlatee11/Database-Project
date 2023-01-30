-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 27, 2023 at 07:13 AM
-- Server version: 10.9.3-MariaDB-1:10.9.3+maria~ubu2204
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymariaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text DEFAULT NULL,
  `lName` text DEFAULT NULL,
  `modifydate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`adminID`, `Email`, `passWord`, `fName`, `lName`, `modifydate`) VALUES
(1, 'admin', '$2b$10$8E6YRLLDoN7k5HV7JGXMVetIS/XGRleesYCDFYhgWHt74OZks/nXC', 'admin', NULL, '1/26/2023'),
(14, 'admin2', '$2b$10$slNl/wYEWIo/eAk.gGNwAeDpklCBij4qBH4w.OSXyAfwqtOtatque', 'admin2', 'admin2', '1/27/2023');

-- --------------------------------------------------------

--
-- Table structure for table `Disease`
--

CREATE TABLE `Disease` (
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text CHARACTER SET utf8mb3 NOT NULL,
  `InfoDisease` text CHARACTER SET utf8mb3 NOT NULL,
  `ProtectInfo` text CHARACTER SET utf8mb3 NOT NULL,
  `ImageName` text NOT NULL,
  `DiseaseNameEng` text NOT NULL,
  `Modifydate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Disease`
--

INSERT INTO `Disease` (`DiseaseID`, `DiseaseName`, `InfoDisease`, `ProtectInfo`, `ImageName`, `DiseaseNameEng`, `Modifydate`) VALUES
(1, 'โรคใบด่าง', 'ลักษณะอาการของโรค อ้อยที่เป็นโรคจะมีปริมาณคลอโรฟิลล์ในใบลดลงทำให้ใบอ้อยด่างเป็นรอยขีดสั้น ๆ สีเขียวอ่อนสลับกับสีเขียวเข้มทั่วทั้งใบ เมื่อส่องดูใบกับแสงแดด จะเห็นรอยด่างชัดเจน อาการต่างๆ ปรากฏบนใบอ่อนเห็นชัดเจนกว่าที่ใบแก่ ในพันธุ์ที่อ่อนแอต่อโรคอาจปรากฏรอยขีดด่างบนลำอ้อยด้วย การเจริญลดลง ลำอ้อยเล็กลีบลง', 'คัดเลือกอ้อยที่สมบูรณ์ไม่เป็นโรคสำหรับใช้เป็นท่อนพันธุ์ หลีกเลี่ยงการปลูกอ้อยพันธุ์ที่อ่อนแอต่อโรคเป็นพื้นที่กว้างหลีกเลี่ยงการปลูกพืชที่อาจเป็นพืชอาศัยหรือพืชอาศัยสลับของเชื้อโรคหรือเป็นพืชอาหารของเพลี้ยอ่อน เช่น ข้าวโพดหวาน เพราะอาจมีการถ่ายทอดโรคสลับกับอ้อย', 'IMG (11).jpg', 'StreakMosaic', NULL),
(2, 'โรคใบจุดเหลือง', 'ลักษณะอาการโรค เกิดจุดเหลืองเล็ก ๆ ขนาดเท่าปลายเข็ม กระจาย ไปทั่วบนใบอ้อย ต่อมาจุดแผ่นเหลืองขยายขนาด รูปร่างแผลไม่แน่นอน แผลอาจเปลี่ยนเป็นสีแดง หรือน้ำตาลแดง เมื่อแผลแก่เห็นกลุ่มของก้านชูสปอร์และสปอร์ของเชื้อราสาเหตุลักษณะคล้ายฝุ่นผงสีเทาใน บริเวณกลางจุดแผล แผลอาจเกิดเดี่ยว ๆ หรือขยายจนขอบแผลติดกัน เป็นปื้นปกคลุมผิวใบอ้อย ในระยะต้นของการระบาดจำ นวนจุดแผลจะ หนาแน่นในใบล่างมากกว่าใบด้านบน แต่ในระยะที่โรคระบาดรุนแรง หรือพันธุ์อ้อยมีความอ่อนแอต่อโรค แผลจุดเหลืองจะปรากฏหนาแน่น บนใบทุกใบของลำอ้อย จนทำให้อ้อยมีใบเหลือง กอแห้งโทรม ไร่อ้อย ที่พบว่ามีการระบาดของโรคใบจุดเหลืองจะมองเห็นเป็นสีน้ำตาลทั้งไร่ ส่วนขอบแผลด้านหลังใบมักมีสปอร์ของเชื้อเห็นเป็นผงสีดำ ๆ อยู่เต็ม ในอ้อยแก่จะแตกหน่อบริเวณยอดอยู่เรื่อย ๆ ตาข้างอาจจะงอก', 'ควรบำรุงอ้อยให้มีการเจริญเติบโตดีจะลดความเสียหายอันเกิด จากโรคได้การใส่ปุ๋ยเดี่ยวอย่างไนโตรเจน โดยขาดฟอสฟอรัสและ โพแทสเซียมจะทำให้อ้อยมีความอ่อนแอต่อโรคใบจุดเหลือง', 'IMG (10).jpg', 'YellowLeaf', NULL),
(3, 'โรคราสนิม', 'ลักษณะอาการโรค เชื้อสาเหตุเริ่มเข้าทำลายใบอ่อน เห็นเป็นจุดเล็ก ๆ สีแดง ต่อมาจุดแผลจะพัฒนาขึ้นจนเห็นได้ชัดเจนเมื่อใบอ้อยเจริญเป็นใบแก่ แผลขยายยาวออก ขนาดแผลกว้าง 1-3 มิลลิเมตร ยาว 2-10 มิลลิเมตร เปลี่ยนเป็นสีน้ำตาลแดง แผลนูนขึ้นโดยเฉพาะด้านหลังใบโดยเชื้อราจะมีการสร้างสปอร์ในส่วนแผลนูนดังกล่าวที่บริเวณใต้ใบ เมื่อแผลแตกออกมีลกัษณะแผลขรุขระ มีผงสปอร์สีน้ำตาลแดงลักษณะคล้ายสีสนิมจำนวนมาก พบมีแผลหนาแน่นบนใบล่างมากกว่าใบบนของลำ แผลเกิดกระจายทั่วไป ในพันธุ์อ้อยที่อ่อนแอต่อโรคแผลเกิดติดต่อกันจนอาจมองไม่เห็นผิวใบ ทำ ให้อ้อยสูญเสียพื้นที่การสังเคราะห์แสง โดยที่ใบอ้อยที่เป็นโรคจะแห้งกว่าก่อนที่ใบจะแก่ แผลงอ้อยแห้งโทรม การเจริญของอ้อยไม่สมบูรณ์แต่หากเป็นโรคไม่รุนแรงอ้อยจะยังสามารถเจริญเติบโตต่อไปได้โดยที่ผลผลิตไม่ลดลงมาก', 'เนื่องจากสปอร์ของเชื้อราสาเหตุโรคปลิวแพร่กระจายไปตามลมจึงควรหลีกเลี่ยงการปลูกพันธุ์อ้อยที่อ่อนแอต่อโรคเป็นพื้นที่กว้าง เพื่อไม่ให้โรคมีการระบาดรุนแรง เมื่อพบส่วนของอ้อยที่เป็นโรค ควรมีการเก็บออกจากแปลงอ้อยเผาทำลายทิ้งรวมทั้งกำจัดวัชพืชอันอาจเป็นพืชอาศัยสลับของเชื้อสาเหตุโรค', 'IMG (46).jpg', 'RustMold', NULL),
(4, 'โรคเส้นกลางใบแดง', 'ลักษณะอาการของโรค เส้นกลางใบเป็นแผลสีแดง กลางแผลอาจกลายเป็นสีเทามีจุดสีดำ', 'เตรียมดินให้มีการระบายน้ำดีปรับดินให้มีความเป็นกลางด้วย\r\nปูนขาว และไถพลิกตากดิน ตัดอ้อยแปลงที่เป็นโรคเข้าหีบทันทีเมื่อเข้าสู่ฤดูการหีบอ้อย และไม่ควรนำอ้อยจากแปลงที่เป็นโรคไปเป็นท่อนพันธุ์ต่อไป และหากพบว่า ในไร่อ้อยมีกออ้อยที่ตายมากกว่า 20% ให้รื้อแปลงและปลูกใหม่ด้วย พันธุ์อ้อยที่ต้านทาน', 'IMG_20220923_115923_033.jpg', 'RedLine', NULL),
(5, 'โรคแส้ดำ', 'ลักษณะอาการของโรค อ้อยที่เป็นโรคจะแคระแกร็น แตกกอคล้ายตะไคร้\r\nใบแคบและเล็ก ลำผอมเรียวข้อสั้นเตี้ย ส่วนยอดสุดของหน่อหรือลำอ้อยเป็นโรค หรือยอดสุดของหน่ออ้อยที่งอกจากตาข้างของลำเป็นโรค มีลักษณะคล้ายแส้ยาวสีดำ ซึ่งเกิดจากการที่เชื้อราสร้างสปอร์สีดำจำนวนมาก รวมกันแน่นอยู่ภายในเนื้อเยื่อผิวของใบยอดสุดที่ม้วนอยู่ระยะแรกจะเห็นเยื่อบางๆ สีขาวหุ้มแส้ดำเอาไว้จนเมื่อสปอร์มีจำนวนมากจะดันเยื่อที่หุ้มอยู่ให้หลุดออก เห็นผงสปอร์สีดำจำนวนมากปกคลุมส่วนของใบยอดที่ม้วนแน่นจนมีลักษณะเป็นก้านแข็งยาว แส้ดำที่ปรากฏอาจตั้งตรง หรือม้วนเป็นวง กออ้อยที่เป็นโรครุนแรงจะแคระแกร็น แตกกอมาก ลักษณะเป็นพุ่มเหมือนกอหญ้า ใบเล็กแคบ อ้อยไม่ย่างปล้องถ้าเป็นรุนแรงมาก อ้อยอาจแห้งตายทั้งกอได้กอที่บางลำในกอเจริญเป็นลำ ลำอ้อยจะผอมลีบกว่าลำอ้อยปกติอาการปรากฏรุนแรงในอ้อยตอมากกว่าอ้อยปลูก\r\n', 'ไถแปลงอ้อยตอที่เป็นโรครุนแรงเพื่อป้องกันไม่ให้เป็นแหล่งของเชื้อแพร่ระบาดต่อไปในอ้อยปลูก ปลูกอ้อยด้วยท่อนพันธุ์อ้อนที่สมบูรณ์ไม่เป็นโรค เนื่องจากโรคแส้ดำสามารถถ่ายทอดผ่านทางท่อนพันธุ์ได้', 'img (18).jpg', 'BlackWhip', NULL),
(6, 'โรคใบจุดวงแหวน', 'ลักษณะอาการโรค เริ่มแรกเป็นจุดสีเขียวชุ่มน้ำ ต่อมาเปลี่ยนเป็นสี เขียวเข้ม ขอบสีน้ำตาล หรือจุดสีน้ำตาลเล็ก ๆ ตรงกลางมีสีขาว ลักษณะ คล้ายรูปไข่ต่อมาแผลเปลี่ยนเป็นสีน้ำตาลแดง และมีสีเหลือง ล้อมรอบ (halo) เมื่อแผลขยายใหญ่ขึ้น ภายในแผลก็จะแห้งสีคล้ายสีฟางข้าว และขอบแผลเป็นสีน้ำตาล ถึงน้ำตาลเข้ม เมื่อเกิดแผลจำนวนมากติดต่อ กันใบจะไหม้เป็นบริเวณกว้าง แต่ยังมีขอบล้อมรอบแต่ละแผลอยู่เช่น เดิม ภายในแผลพบ fruiting bodiesของเชื้อเห็นเป็นจุดสีดำเล็ก ๆใบ ที่เป็นโรคก็จะแห้งตายและร่วงหล่น ส่วนมากจะแห้งตั้งแต่ปลายใบลง มา ขนาดของแผลอาจจะแตกต่างกันมากขึ้นอยู่กับพันธุ์ว่าทนทานต่อ โรคมากน้อยเพียงใด อ้อยบางพันธุ์ที่มีใบสีเขียวมาก สีของแผลจะเป็น สีน้ำตาลแดงซึ่งต่างกันเล็กน้อยกับพันธุ์ที่มีใบสีเขียวธรรมดา', 'กำจัดใบที่เป็นโรคออกและเผาทำลาย ปลูกพืชหมุนเวียนทุก ๆ 2 ปี โดยใช้ ข้าว ข้าวโพด ถั่ว หรือผักต่าง ๆ', 'IMG_20220923_120511_003 - Copy.jpg', 'RingLeaf', NULL),
(7, 'โรคใบขีดสีน้ำตาล', 'ลักษณะอาการโรค อาการเริ่มต้นจะปรากฏบนใบอ่อน โดยเป็นจุดช้ำ ๆ เล็ก ๆ มีสีแดงตรงกลางหลังจากนั้นแผลจะขยายยาวขึ้นขนานกับเส้นใบและมีสีน้ำตาลปนแดงล้อมรอบด้วยรอยแผลสีเหลือง ความยาวแผลไม่แน่นอน มีตั้งแต่ 2-50 มิลลิเมตร กว้าง 2-4 มิลลิเมตร ถ้าอ้อยเป็นโรครุนแรงมาก แผลจะติดต่อกันทำให้ใบอ้อยแห้งตายได้เร็วขึ้น ในอ้อยพันธุ์ที่อ่อนแอต่อโรคจะทำให้เกิดอาการยอดเน่าได้เช่นกัน', 'เติมปุ๋ยโปแตสเซียมและฟอสฟอรัส ช่วยทำให้โรคนี้ลดน้อยลง', 'IMG_20220923_120053_001 - Copy - Copy (2).jpg', 'LeafBurn', NULL),
(8, 'โรคใบจุดสีดำ', 'รออัพเดท', 'รออัพเดท', 'IMG (12).jpg', 'BlackDot', NULL),
(21, 'catloveloveawdawdawdaaa', 'catlovewdawdawaaaa', 'catloveawdawdawaaa', 'photo-1615789591457-74a63395c990.jpg', 'catloveawdawdawdaa', '1/27/2023');

-- --------------------------------------------------------

--
-- Table structure for table `DiseaseReport`
--

CREATE TABLE `DiseaseReport` (
  `ReportID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserFname` text NOT NULL,
  `UserLname` text NOT NULL,
  `Latitude` text NOT NULL,
  `Longitude` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Detail` text DEFAULT NULL,
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text NOT NULL,
  `DiseaseImage` text NOT NULL,
  `ResaultPredict` text NOT NULL,
  `DateReport` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DiseaseReport`
--

INSERT INTO `DiseaseReport` (`ReportID`, `UserID`, `UserFname`, `UserLname`, `Latitude`, `Longitude`, `PhoneNumber`, `Detail`, `DiseaseID`, `DiseaseName`, `DiseaseImage`, `ResaultPredict`, `DateReport`) VALUES
(1, 14, 'Chonlatee', 'Khamlue', '13.602700', '100.693623', '1234567890', '', 6, 'โรคใบจุดวงแหวน', '1673794185000', '0.19853685796260834', '0000-00-00'),
(5, 17, 'awd', 'awd', '13.600906', '100.698237', 'awd', '', 6, 'โรคใบจุดวงแหวน', '1674106633000', '0.20202893018722534', '19 มกราคม 2566'),
(6, 17, 'awd', 'awd', '13.604066', '100.690147', 'awd', '', 6, 'โรคใบจุดวงแหวน', '1674125754000', '0.2052215039730072', '19 มกราคม 2566'),
(7, 17, 'awd', 'awd', '13.602293', '100.691713', 'awd', '', 6, 'โรคใบจุดวงแหวน', '1674126716000', '0.20202893018722534', '19 มกราคม 2566'),
(8, 17, 'awd', 'awd', '13.5985419', '100.6873476', 'awd', '', 6, 'โรคใบจุดวงแหวน', '1674126770000', '0.20202893018722534', '19 มกราคม 2566'),
(9, 14, 'awd', 'awd', 'wad', 'awd', 'awd', 'awd', 21, 'awd', 'awd', 'awd', 'awd');

-- --------------------------------------------------------

--
-- Table structure for table `HistoryDiseaseModify`
--

CREATE TABLE `HistoryDiseaseModify` (
  `ReportID` int(11) NOT NULL,
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text NOT NULL,
  `AdminID` int(11) NOT NULL,
  `AdminEmail` text NOT NULL,
  `Detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`Detail`)),
  `ModifyDate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Researcher`
--

CREATE TABLE `Researcher` (
  `researcherID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `Modifydate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Researcher`
--

INSERT INTO `Researcher` (`researcherID`, `Email`, `passWord`, `fName`, `lName`, `phoneNumber`, `Modifydate`) VALUES
(6, 'chon', '$2b$10$lEkTAKg1zo9qVdiEWeGpVe6yYC0JX456yV.3jH7iKpmt1SSCEcPl2', 'research1', 'research1', '0000000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(12) NOT NULL,
  `Password` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Address` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `UserName`, `Password`, `fName`, `lName`, `PhoneNumber`, `Address`, `latitude`, `longitude`) VALUES
(1, 'chonlatee11', '1234', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '', ''),
(2, 'chonlatee22', '1234', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '', ''),
(4, 'chonlatee33', '1234', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '', ''),
(5, 'chonlatee44', '12345678', 'chonlatee', 'khamlue', '0892204840', 'blablabla', '', ''),
(7, 'chonlatee445', '12345678', 'chonlatee', 'khamlue', '0892204840', 'blablabla', '', ''),
(8, 'awdawd', '1234', 'awd', 'awd', 'awd', 'awd', '', ''),
(9, 'chonlatee33', '1234', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '', ''),
(10, 'Rfffgfgvv', 'qwer', 'Qesz', 'Dddf', 'Dfxd', 'Dfgcc', '13.598524', '100.6873402'),
(11, 'Chonlatee11', '1234567', 'Chon', 'Chon', '0123456789', 'Chvc', '13.5985319', '100.6873463'),
(12, 'chonbcrypt', '$2b$10$44rY3u5oUg2.MQ5OezjwQOQWkDu2TiWyvuU.A3zEyx3y4Rp8ybZsK', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '13.0111', '100.23223'),
(14, 'abcd', '$2b$10$NsSKAg2ls/oLRhsbui5ZTOXRvlqDkvWs7olPcf3cs/4M1gXKI0EA6', 'Chonlatee', 'Khamlue', '1234567890', 'blablabla', '13.0111', '100.23223'),
(16, 'qwer', '$2b$10$b.ibHmgp.V9FCbh5af7LMu3yzV2T.7iZR8kGb0QSOluUwhvSFCXiC', 'aaa', 'awd', 'awd', 'awdawd', '37.4220936', '-122.083922'),
(17, 'chon123', '$2b$10$ZQaDbsQ6156WnwdDfn.s3eTJxSeTpskHWHyrtCgtRf4PsaJ8P67R2', 'awd', 'awd', 'awd', 'awd', '13.5985419', '100.6873476');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `Disease`
--
ALTER TABLE `Disease`
  ADD PRIMARY KEY (`DiseaseID`);

--
-- Indexes for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `DiseaseReport` (`DiseaseID`),
  ADD KEY `UserReport` (`UserID`);

--
-- Indexes for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  ADD PRIMARY KEY (`ReportID`);

--
-- Indexes for table `Researcher`
--
ALTER TABLE `Researcher`
  ADD PRIMARY KEY (`researcherID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Disease`
--
ALTER TABLE `Disease`
  MODIFY `DiseaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Researcher`
--
ALTER TABLE `Researcher`
  MODIFY `researcherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD CONSTRAINT `DiseaseReport` FOREIGN KEY (`DiseaseID`) REFERENCES `Disease` (`DiseaseID`),
  ADD CONSTRAINT `UserReport` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
