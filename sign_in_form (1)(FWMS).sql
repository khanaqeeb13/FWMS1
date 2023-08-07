-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 05:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sign_in_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `srno` int(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `user` varchar(120) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `cnf_password` varchar(20) NOT NULL,
  `num` varchar(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `select1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`srno`, `email`, `user`, `name`, `password`, `cnf_password`, `num`, `date`, `select1`) VALUES
(1, 'hojabhai@gmail.com', 'cdsc', 'dwe', 'vdfsgfd', 'dfgfdgdf', '0', '0000-00-00 00:00:00', '0'),
(2, 'khanaqeeb13@gmail.com', 'lkhjkljhxkljhas', 'Aqeeb Khan', 'ffefvewrtA1@', 'ffefvewrtA1@', '1231231230', '2021-12-24 20:40:52', 'restaurant'),
(3, 'khanaqeeb13@gmail.com', 'abc123', 'Aqeeb Khan', '1234567', 'grdtgewfA1@', '1231231230', '2021-12-24 20:47:34', 'NGO'),
(4, 'khanaqeeb13@gmail.com', 'abc123', 'Aqeeb Khan', '1234', 'abcA123@', '1231231230', '2021-12-24 21:02:47', 'restaurant'),
(5, 'khanaqeeb13@gmail.com', 'weddy', 'Aqeeb Khan', 'vdsv', 'vd sv', '1231231230', '2021-12-27 21:45:20', 'Wedding'),
(6, 'khanaqeeb13@gmail.com', 'ngo1', 'Aqeeb Khan', '3020100', '302010', '8899123201', '2021-12-27 21:48:32', 'NGO'),
(7, 'khanaqeeb13@gmail.com', 'abc1232', 'Aqeeb Khan', 'edfewfewrA2!', 'edfewfewrA2!', '1231231230', '2021-12-28 19:16:13', 'Wedding'),
(1244, 'abc123@gmail.com', 'cdsc', '', '', '', '0', '2022-01-24 21:06:59', ''),
(1245, 'abc123@gmail.com', 'cdsc', '', '', '', '0', '2022-01-24 21:08:44', ''),
(1246, 'rtwreqw@gmail.com', 'cdsc', 'fdfdsr', 'e', 'e', '0', '2022-01-24 21:12:17', 'eee'),
(1250, 'None', 'cdsc', 'Aqeeb Khan', 'gfsdAQ!2', 'gfsdAQ!2', '0', '2022-01-24 21:22:23', 'NGO'),
(1252, 'None', 'cdsc', 'Aqeeb Khan', 'sadA!@2', 'sadA!@2', '0', '2022-01-24 21:26:37', 'restaurant'),
(1254, 'None', 'cdsc', 'Aqeeb Khan', 'fdsfA!@!1', 'fdsfA!@!1', '0', '2022-01-24 21:30:56', 'restaurant'),
(1256, 'None', 'cdsc', 'Aqeeb Khan', 'fsedA!1', 'fsedA!1', '0', '2022-01-24 21:47:32', 'NGO'),
(1258, 'None', 'cdsc', 'Aqeeb Khan', 'fsedA!1', 'fsedA!1', '0', '2022-01-24 21:51:31', 'Wedding'),
(1260, 'None', 'cdsc', 'Aqeeb Khan', '1234', 'fsedA!1', '0', '2022-01-24 21:53:45', 'Wedding'),
(1262, 'None', 'cdsc', 'Aqeeb Khan', 'fsedA!1', 'fsedA!1', '0', '2022-01-24 21:57:40', 'Wedding'),
(1264, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-24 22:05:22', ''),
(1278, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'sdadA!@1', '0', '2022-01-26 20:18:16', 'NGO'),
(1279, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'sdadA!@1', '0', '2022-01-26 20:19:00', 'Wedding'),
(1280, 'khanaqeeb13@gmail.com', 'cdsc', 'sdfsad', '302010', '302010', '0', '2022-01-26 20:20:02', 'restaurant'),
(1281, 'rahiedmi@gmail.com', 'cdsc', 'Aqeeb Khan', '10', '10', '0', '2022-01-26 20:20:45', 'Wedding'),
(1282, 'rahiedmi@gmail.com', 'asz', '122', '10', '10', '0', '2022-01-26 20:21:31', 'NGO'),
(1283, 'sayedshagufta3898@gmail.com', 'cdsc', 'Aqeeb Khan', '302010', '302010', '0', '2022-01-26 20:22:22', 'Wedding'),
(1284, 'sayedshagufta3898@gmail.com', 'cdsc', 'Aqeeb Khan', '10', '10', '0', '2022-01-26 20:22:44', 'Wedding'),
(1285, 'sayedshagufta3898@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'sdadA!@1', '0', '2022-01-26 20:23:34', 'NGO'),
(1286, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '10', '10', '0', '2022-01-26 20:24:15', 'Wedding'),
(1287, 'khanaqeeb13@gmail.com', 'cdsc', 'sdfsad', '302010', '302010', '0', '2022-01-26 20:24:37', 'restaurant'),
(1290, 'saadansar00@gmail.com', 'cdsc', 'Aqeeb Mohammed Ismail Khan', '10', '10', '0', '2022-01-26 20:26:24', 'Wedding'),
(1291, 'saadansar00@gmail.com', 'cdsc', 'abc', '1234', 'sdadA!@1', '0', '2022-01-26 20:26:55', 'Wedding'),
(1292, 'saadansar00@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'ssaaAQ!1', '0', '2022-01-26 20:44:57', 'restaurant'),
(1294, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'saassA!@!1', '0', '2022-01-26 20:48:35', 'NGO'),
(1295, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', 'saassA!@!1', 'saassA!@!1', '0', '2022-01-26 20:48:58', 'restaurant'),
(1296, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'saawqAA!2', '0', '2022-01-26 20:53:14', 'Wedding'),
(1297, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', 'saawqAA!2', 'saawqAA!2', '0', '2022-01-26 21:02:57', 'Wedding'),
(1298, 'sayedshagufta3888@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'saawqAA!2', '0', '2022-01-26 21:04:02', 'restaurant'),
(1299, 'sayedshagufta3888@gmail.com', 'cdsc', 'Aqeeb Khan', 'saawqAA!2', 'saawqAA!2', '0', '2022-01-26 21:04:21', 'NGO'),
(1300, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'saawqAA!2', '0', '2022-01-26 21:04:53', 'Wedding'),
(1301, 'rahiedmi@gmail.com', 'cdsc', 'abc', '1234', 'saawqAA!2', '0', '2022-01-26 21:05:23', 'Wedding'),
(1302, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', '', '0', '2022-01-28 15:43:21', 'restaurant'),
(1303, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', '', '0', '2022-01-28 15:44:18', 'NGO'),
(1304, 'saadansar00@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', '', '0', '2022-01-28 15:53:55', 'Wedding'),
(1305, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', '', '0', '2022-01-28 16:09:18', 'Wedding'),
(1306, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', '', '0', '2022-01-28 16:09:33', 'NGO'),
(1307, 'sayedshaugfta98@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:10:28', 'Wedding'),
(1308, 'sayedshaugfta98@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:10:43', 'NGO'),
(1309, 'sayedshaugfta98@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:11:27', 'restaurant'),
(1310, 'sayedshaugfta98@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 16:13:22', 'Wedding'),
(1311, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 16:14:24', 'NGO'),
(1312, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 16:16:07', 'NGO'),
(1313, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 16:17:12', 'NGO'),
(1314, '', 'cdsc', '', '', '', '0', '2022-01-28 16:19:46', 'NGO'),
(1315, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:28:57', 'NGO'),
(1316, 'saadansar00@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:36:35', 'NGO'),
(1317, 'saadansar00@gmail.com', 'cdsc', 'sdfsad', '', '', '0', '2022-01-28 16:36:54', 'Wedding'),
(1318, 'khanaqeeb13@gmail.com', 'cdsc', '122', '', '', '0', '2022-01-28 16:39:39', 'Wedding'),
(1319, 'rahiedmi@gmail.com', 'cdsc', '122', '', '', '0', '2022-01-28 16:39:59', 'Wedding'),
(1320, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 16:40:16', 'Wedding'),
(1321, '230', 'cdsc', '', '', '', '0', '2022-01-28 16:46:47', 'Wedding'),
(1322, '230', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:47:14', 'Wedding'),
(1323, '230', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:50:03', 'Wedding'),
(1324, '230', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:50:07', 'Wedding'),
(1325, '230', 'cdsc', '', '', '', '0', '2022-01-28 16:50:25', 'Wedding'),
(1326, '232', 'cdsc', '', '', '', '0', '2022-01-28 16:53:24', 'Wedding'),
(1327, '232', 'cdsc', '', '', '', '0', '2022-01-28 16:53:38', 'Wedding'),
(1328, '234', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:58:10', 'Wedding'),
(1329, '234', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 16:58:23', 'Wedding'),
(1330, '236', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 17:01:03', 'Wedding'),
(1331, '236', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 17:01:15', 'Wedding'),
(1332, '238', 'cdsc', '', '', '', '0', '2022-01-28 17:02:23', 'Wedding'),
(1333, '239', 'cdsc', '', '', '', '0', '2022-01-28 17:03:00', 'Wedding'),
(1334, '239', 'cdsc', '', '', '', '0', '2022-01-28 17:03:10', 'Wedding'),
(1335, '241', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 19:20:38', 'Wedding'),
(1336, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 19:21:18', 'Wedding'),
(1337, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-01-28 19:21:34', 'Wedding'),
(1338, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:21:57', 'restaurant'),
(1339, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:22:12', 'NGO'),
(1340, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:26:35', 'Wedding'),
(1341, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:26:49', 'NGO'),
(1342, 'saadansar00@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:29:29', 'restaurant'),
(1343, 'saadansar00@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:29:41', 'Wedding'),
(1344, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:31:25', 'Wedding'),
(1345, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:32:17', 'restaurant'),
(1346, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:32:29', 'restaurant'),
(1347, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:34:10', 'restaurant'),
(1348, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:34:22', 'restaurant'),
(1349, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:34:30', 'Wedding'),
(1350, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:34:56', 'Wedding'),
(1351, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:35:31', 'NGO'),
(1352, 'saadansar00@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:36:01', 'restaurant'),
(1353, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:38:58', 'Wedding'),
(1354, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:39:11', 'Wedding'),
(1355, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:39:32', 'Wedding'),
(1356, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:39:43', 'restaurant'),
(1357, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:40:17', 'restaurant'),
(1358, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 19:41:57', 'Wedding'),
(1359, '0', 'cdsc', '', '', '', '0', '2022-01-28 19:54:33', 'restaurant'),
(1360, '0', 'cdsc', '', '', '', '0', '2022-01-28 19:54:48', 'restaurant'),
(1361, '0', 'cdsc', '', '', '', '0', '2022-01-28 19:55:57', 'Wedding'),
(1362, '0', 'cdsc', '', '', '', '0', '2022-01-28 20:00:52', 'Wedding'),
(1363, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:05:32', 'Wedding'),
(1364, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:05:49', 'Wedding'),
(1365, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:06:31', 'restaurant'),
(1366, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:09:54', 'restaurant'),
(1367, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:10:04', 'Wedding'),
(1368, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:11:52', 'NGO'),
(1369, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:12:08', 'NGO'),
(1370, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:14:25', 'NGO'),
(1371, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:14:28', 'NGO'),
(1372, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:18:51', 'restaurant'),
(1373, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:19:25', 'restaurant'),
(1374, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:20:11', 'restaurant'),
(1375, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:20:49', 'restaurant'),
(1376, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:21:11', 'restaurant'),
(1377, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:21:21', 'restaurant'),
(1378, 'saadansar00@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:22:16', 'Wedding'),
(1379, 'saadansar00@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:22:41', 'NGO'),
(1380, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:26:42', 'Wedding'),
(1381, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:27:10', 'NGO'),
(1384, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:44:09', 'Wedding'),
(1385, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 20:44:24', 'Wedding'),
(1386, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 21:03:13', 'restaurant'),
(1387, 'rahiedmi@gmail.com', 'cdsc', 'name', 'password', 'cnf_pass', '0', '2022-01-28 21:09:18', 'select'),
(1388, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 21:09:23', 'Wedding'),
(1389, 'khanaqeeb13@gmail.com', 'cdsc', 'name', 'password', 'cnf_pass', '0', '2022-01-28 21:09:34', 'select'),
(1390, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-28 21:09:37', 'NGO'),
(1391, 'khanaqeeb13@gmail.com', 'cdsc', 'name', 'password', 'cnf_pass', '0', '2022-01-29 17:01:01', 'select'),
(1392, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:01:05', 'restaurant'),
(1393, 'rahiedmi@gmail.com', 'cdsc', 'name', 'password', 'cnf_pass', '0', '2022-01-29 17:01:15', 'select'),
(1394, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:01:18', 'NGO'),
(1395, 'rahiedmi@gmail.com', 'cdsc', 'name', 'password', 'cnf_pass', '0', '2022-01-29 17:01:40', 'select'),
(1396, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:01:43', 'restaurant'),
(1397, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:03:00', 'Wedding'),
(1398, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:03:12', 'NGO'),
(1399, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 17:16:47', 'restaurant'),
(1400, '<generator object MySQLCursor._execute_iter at 0x00000212981B33E0>', 'cdsc', '', '', '', '0', '2022-01-29 18:39:43', 'Wedding'),
(1401, '<generator object MySQLCursor._execute_iter at 0x00000212981B33E0>', 'cdsc', '', '', '', '0', '2022-01-29 18:41:55', 'Wedding'),
(1402, '<generator object MySQLCursor._execute_iter at 0x00000212981B33E0>', 'cdsc', '', '', '', '0', '2022-01-29 18:46:21', 'Wedding'),
(1403, '<generator object MySQLCursor._execute_iter at 0x00000212981B33E0>', 'cdsc', '', '', '', '0', '2022-01-29 18:46:43', 'Wedding'),
(1404, 'SELECT email FROM email ORDER BY srno DESC LIMIT 1;', 'cdsc', '', '', '', '0', '2022-01-29 22:27:19', 'restaurant'),
(1405, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:28:57', 'restaurant'),
(1406, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:29:19', 'restaurant'),
(1407, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:29:30', 'Wedding'),
(1408, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:29:50', 'NGO'),
(1409, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:31:50', 'Wedding'),
(1410, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:32:03', 'restaurant'),
(1411, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-01-29 22:32:29', 'NGO'),
(1412, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-31 19:38:47', 'Wedding'),
(1413, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-01-31 19:39:12', 'NGO'),
(1414, 'rahiedmi@gmail.com', 'cdsc', 'Aqeeb Khan', 'Soures@123', 'Soures@123', '0', '2022-01-31 20:39:02', 'Sources'),
(1415, 'rahiedmi@gmail.com', 'sss', 'abc', 'sss@123S', 'sss@123S', '0', '2022-01-31 20:44:59', 'Sources'),
(1416, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:38:36', 'Sources'),
(1417, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:38:50', 'NGO'),
(1418, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:40:07', 'NGO'),
(1419, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:41:11', 'NGO'),
(1420, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:41:37', 'NGO'),
(1421, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:41:59', 'NGO'),
(1422, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:42:27', 'NGO'),
(1423, '<Email (transient 2469170410304)>', 'cdsc', '', '', '', '0', '2022-02-01 17:49:00', 'NGO'),
(1424, '<Email (transient 2563593762032)>', 'cdsc', '', '', '', '0', '2022-02-01 17:49:59', 'NGO'),
(1425, '<Email (transient 2563594782368)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:01', 'NGO'),
(1426, '<Email (transient 2563594782848)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:02', 'NGO'),
(1427, '<Email (transient 2563594796240)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:02', 'NGO'),
(1428, '<Email (transient 2563594795328)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:03', 'NGO'),
(1429, '<Email (transient 2563594794656)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:03', 'NGO'),
(1430, '<Email (transient 2563594793936)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:03', 'NGO'),
(1431, '<Email (transient 2563594792688)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:03', 'NGO'),
(1432, '<Email (transient 2563594795808)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:04', 'NGO'),
(1433, '<Email (transient 2563594788224)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:04', 'NGO'),
(1434, '<Email (transient 2563595355088)>', 'cdsc', '', '', '', '0', '2022-02-01 17:50:15', 'NGO'),
(1435, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:50:36', 'NGO'),
(1436, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:51:16', 'Sources'),
(1437, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 17:51:19', 'Sources'),
(1438, '(\'khanaqeeb13@gmail.com\',)', 'cdsc', '', '', '', '0', '2022-02-01 18:00:00', 'NGO'),
(1439, '(\'khanaqeeb13@gmail.com\',)', 'cdsc', '', '', '', '0', '2022-02-01 18:00:34', 'NGO'),
(1440, 'rahiedmi@gmail.com', 'cdsc', '', '', '', '0', '2022-02-01 20:14:08', 'NGO'),
(1441, 'None', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-02-02 15:25:01', 'restaurant'),
(1442, 'None', 'cdsc', 'Aqeeb Khan', '', '', '0', '2022-02-02 15:26:27', 'restaurant'),
(1443, 'navedpatel2000@gmail.com', 'cdsc', 'Aqeeb Khan', 'aqwsA1!s', 'aqwsA1!s', '0', '2022-02-02 16:43:09', 'Wedding'),
(1444, 'kadil4546@gmail.com', 'cdsc', 'Adil', 'dcsaA!@s1', 'dcsaA!@s1', '0', '2022-02-02 17:38:27', 'Wedding'),
(1445, 'kadil4546@gmail.com', 'cdsc', '122', '', '', '0', '2022-02-04 22:14:32', 'Sources'),
(1446, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-05 17:46:17', 'Sources'),
(1447, 'khanaqeeb13@gmail.com', 'cdsc', '', '', '', '0', '2022-02-05 17:46:30', 'Sources'),
(1448, 'rahiedmi@gmail.com', 'cdsc', 'Aqeeb Khan', 'grfeA!@1', 'grfeA!@1', '0', '2022-02-08 17:33:29', 'Sources'),
(1449, 'rahiedmi@gmail.com', 'cdsc', 'Adil', 'grfeA!@1', 'grfeA!@1', '0', '2022-02-08 17:34:21', 'Sources'),
(1450, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', 'grfeA!@1', 'grfeA!@1', '0', '2022-02-08 17:39:18', 'Sources'),
(1451, 'khanaqeeb13@gmail.com', 'cdsc', 'Aqeeb Khan', '1234', 'grfeA!@1', '0', '2022-02-08 17:39:38', 'Sources'),
(1452, 'khanaqeeb13@gmail.com', 'gfhtrgytryh', 'Aqeeb Khan', 'fsedA!@1', 'fsedA!@1', '123', '2022-02-08 19:33:08', 'Sources'),
(1453, 'rahiedmi@gmail.com', 'abc123', 'Aqeeb Khan', '1234', 'vdsAq!@2', '20', '2022-02-08 19:33:44', 'Sources'),
(1454, 'saadansar00@gmail.com', 'lkhjkljhxkljhas', 'Aqeeb Khan', 'vdsAq!@2', 'vdsAq!@2', '30', '2022-02-08 19:34:00', 'Sources'),
(1455, 'khanaqeeb13@gmail.com', 'abc123', 'Aqeeb Khan', '1234', 'vdsAq!@2', '80', '2022-02-08 19:34:24', 'Sources'),
(1456, 'khanaqeeb13@gmail.com', 'asd', 'Aqeeb Khan', 'zxcA123@', 'zxcA123@', '2147483647', '2022-02-08 20:00:54', 'Sources'),
(1458, 'khanaqeeb13@gmail.com', 'vfdgdf', 'Adil', 'zxcA!123', 'zxcA!123', '2147483647', '2022-02-08 20:03:54', 'NGO'),
(1459, 'khanaqeeb13@gmail.com', 'hrtfdg', 'Aqeeb Khan', 'zxcA!123', 'zxcA!123', '2147483647', '2022-02-08 20:05:51', 'Sources'),
(1460, 'khanaqeeb13@gmail.com', 'iuyhgf', '122', 'zxcA!123', 'zxcA!123', '2147483647', '2022-02-08 20:06:29', 'Sources'),
(1461, 'khanaqeeb13@gmail.com', 'bfgdf', 'Adil', 'zxcA!123', 'zxcA!123', '2147483647', '2022-02-08 20:07:02', 'Sources'),
(1462, 'khanaqeeb13@gmail.com', 'bfgbf', 'Aqeeb Khan', 'zxcA!123', 'zxcA!123', '2147483647', '2022-02-08 20:07:21', 'Sources'),
(1463, 'khanaqeeb13@gmail.com', 'gvbrfd', 'Aqeeb Khan', 'dsfAsd!@22', 'dsfAsd!@22', '2147483647', '2022-02-08 20:11:16', 'NGO'),
(1464, 'khanaqeeb13@gmail.com', 'vfsd', 'Aqeeb Khan', 'dsfAsd!@22', 'dsfAsd!@22', '2147483647', '2022-02-08 20:12:05', 'NGO'),
(1465, 'khanaqeeb13@gmail.com', 'jhuy', 'Adil', 'dsfAsd!@22', 'dsfAsd!@22', '2147483647', '2022-02-08 20:16:21', 'Sources'),
(1466, 'khanaqeeb13@gmail.com', 'htgr', 'sdfsad', 'dsfAsd!@22', 'dsfAsd!@22', '2147483647', '2022-02-08 20:19:31', 'Sources'),
(1468, 'khanaqeeb13@gmail.com', 'hgjg', 'Aqeeb Khan', 'dsfAsd!@22', 'dsfAsd!@22', '9920321719', '2022-02-08 20:29:03', 'NGO'),
(1469, 'khanaqeeb13@gmail.com', 'grere', 'Aqeeb Khan', 'ABCDEa!123', 'ABCDEa!123', '9136398834', '2022-02-09 17:36:19', 'Sources'),
(1472, 'khanaqeeb13@gmail.com', 'aaae', 'Aqeeb Khan', 'abdA@123', 'abdA@123', '9136398834', '2022-02-16 15:23:04', 'NGO'),
(1473, '(\'rahiedmi@gmail.com\',)', 'cdsc', 'Aqeeb Khan', '123', '123', '0', '2022-02-17 21:49:41', 'Sources'),
(1474, '(\'khanaqeeb13@gmail.com\',)', 'cdsc', 'Aqeeb Khan', '123', '123', '0', '2022-02-17 21:50:40', 'Sources'),
(1475, 'rahiedmi@gmail.com', 'rahied', 'rahied khan', 'Rahied@123', 'Rahied@123', '123', '2022-02-21 20:16:34', 'NGO'),
(1476, 'khanaqeeb13@gmail.com', 'user1', 'user1', 'User@123', 'User@123', '9136398834', '2022-03-07 22:41:04', 'Sources'),
(1477, 'khanaqeeb13@gmail.com', 'user2', 'Adil', 'User2@123', 'User2@123', '9136398834', '2022-03-10 21:48:41', 'Sources');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `srno` int(11) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`srno`, `Email`, `otp`, `date`) VALUES
(1, 'asas@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(2, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(3, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(4, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(5, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(6, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(7, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(8, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(9, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(10, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(11, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(12, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(13, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(14, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(15, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(16, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(17, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(18, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(19, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(20, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(21, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(22, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(23, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(24, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(25, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(26, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(27, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(28, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(29, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(30, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(31, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(32, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(33, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(34, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(35, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(36, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(37, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(38, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(39, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(40, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(41, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(42, '', '0', '0000-00-00 00:00:00.000000'),
(43, '', '0', '0000-00-00 00:00:00.000000'),
(44, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(45, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(46, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(47, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(48, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(49, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(50, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(51, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(52, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(53, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(54, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(55, 'khanaqeeb13@gmail.com', '0', '0000-00-00 00:00:00.000000'),
(56, 'rahiedmi@gmail.com', '598758', '0000-00-00 00:00:00.000000'),
(57, '', '214443', '0000-00-00 00:00:00.000000'),
(58, '', '799079', '0000-00-00 00:00:00.000000'),
(59, 'khanaqeeb13@gmail.com', '431041', '0000-00-00 00:00:00.000000'),
(60, 'khanaqeeb13@gmail.com', '350880', '0000-00-00 00:00:00.000000'),
(61, 'khanaqeeb13@gmail.com', '971649', '0000-00-00 00:00:00.000000'),
(62, 'khanaqeeb13@gmail.com', '587332', '0000-00-00 00:00:00.000000'),
(63, 'khanaqeeb13@gmail.com', '212140', '0000-00-00 00:00:00.000000'),
(64, 'khanaqeeb13@gmail.com', '841257', '0000-00-00 00:00:00.000000'),
(65, 'khanaqeeb13@gmail.com', '70520', '0000-00-00 00:00:00.000000'),
(66, 'khanaqeeb13@gmail.com', '913999', '0000-00-00 00:00:00.000000'),
(67, 'khanaqeeb13@gmail.com', '737177', '0000-00-00 00:00:00.000000'),
(68, 'khanaqeeb13@gmail.com', '892834', '0000-00-00 00:00:00.000000'),
(69, 'khanaqeeb13@gmail.com', '165101', '0000-00-00 00:00:00.000000'),
(70, 'khanaqeeb13@gmail.com', '137062', '0000-00-00 00:00:00.000000'),
(71, 'khanaqeeb13@gmail.com', '683492', '0000-00-00 00:00:00.000000'),
(72, 'khanaqeeb13@gmail.com', '465532', '0000-00-00 00:00:00.000000'),
(73, 'khanaqeeb13@gmail.com', '939423', '0000-00-00 00:00:00.000000'),
(74, 'khanaqeeb13@gmail.com', '932368', '0000-00-00 00:00:00.000000'),
(75, 'khanaqeeb13@gmail.com', '9235', '0000-00-00 00:00:00.000000'),
(76, 'khanaqeeb13@gmail.com', '800452', '0000-00-00 00:00:00.000000'),
(77, 'khanaqeeb13@gmail.com', '503466', '0000-00-00 00:00:00.000000'),
(78, 'khanaqeeb13@gmail.com', '63459', '0000-00-00 00:00:00.000000'),
(79, 'khanaqeeb13@gmail.com', '261062', '0000-00-00 00:00:00.000000'),
(80, 'khanaqeeb13@gmail.com', '669783', '0000-00-00 00:00:00.000000'),
(81, 'khanaqeeb13@gmail.com', '813515', '0000-00-00 00:00:00.000000'),
(82, 'khanaqeeb13@gmail.com', '365205', '0000-00-00 00:00:00.000000'),
(83, 'khanaqeeb13@gmail.com', '367860', '0000-00-00 00:00:00.000000'),
(84, 'khanaqeeb13@gmail.com', '958998', '0000-00-00 00:00:00.000000'),
(85, 'khanaqeeb13@gmail.com', '962967', '0000-00-00 00:00:00.000000'),
(86, 'khanaqeeb13@gmail.com', '591050', '0000-00-00 00:00:00.000000'),
(87, 'khanaqeeb13@gmail.com', '591050', '0000-00-00 00:00:00.000000'),
(88, 'khanaqeeb13@gmail.com', '441469', '0000-00-00 00:00:00.000000'),
(89, 'rahiedmi@gmail.com', '331793', '0000-00-00 00:00:00.000000'),
(90, 'khanaqeeb13@gmail.com', '745884', '0000-00-00 00:00:00.000000'),
(91, 'khanaqeeb13@gmail.com', '361988', '0000-00-00 00:00:00.000000'),
(92, 'khanaqeeb13@gmail.com', '422397', '0000-00-00 00:00:00.000000'),
(93, 'khanaqeeb13@gmail.com', '616808', '0000-00-00 00:00:00.000000'),
(94, 'khanaqeeb13@gmail.com', '441651', '0000-00-00 00:00:00.000000'),
(95, 'khanaqeeb13@gmail.com', '870026', '0000-00-00 00:00:00.000000'),
(96, 'khanaqeeb13@gmail.com', '987189', '0000-00-00 00:00:00.000000'),
(97, 'khanaqeeb13@gmail.com', '457441', '0000-00-00 00:00:00.000000'),
(98, 'khanaqeeb13@gmail.com', '416416', '0000-00-00 00:00:00.000000'),
(99, 'khanaqeeb13@gmail.com', '833820', '0000-00-00 00:00:00.000000'),
(100, 'khanaqeeb13@gmail.com', '833820', '0000-00-00 00:00:00.000000'),
(101, 'khanaqeeb13@gmail.com', '741116', '0000-00-00 00:00:00.000000'),
(102, 'khanaqeeb13@gmail.com', '689928', '0000-00-00 00:00:00.000000'),
(103, 'khanaqeeb13@gmail.com', '433392', '0000-00-00 00:00:00.000000'),
(104, 'khanaqeeb13@gmail.com', '248024', '0000-00-00 00:00:00.000000'),
(105, 'khanaqeeb13@gmail.com', '519879', '0000-00-00 00:00:00.000000'),
(106, 'khanaqeeb13@gmail.com', '875158', '0000-00-00 00:00:00.000000'),
(107, 'khanaqeeb13@gmail.com', '471939', '0000-00-00 00:00:00.000000'),
(108, 'khanaqeeb13@gmail.com', '471939', '0000-00-00 00:00:00.000000'),
(109, 'khanaqeeb13@gmail.com', '990019', '0000-00-00 00:00:00.000000'),
(110, 'khanaqeeb13@gmail.com', '973626', '0000-00-00 00:00:00.000000'),
(111, 'khanaqeeb13@gmail.com', '811009', '0000-00-00 00:00:00.000000'),
(112, 'khanaqeeb13@gmail.com', '151904', '0000-00-00 00:00:00.000000'),
(113, 'khanaqeeb13@gmail.com', '841305', '0000-00-00 00:00:00.000000'),
(114, 'khanaqeeb13@gmail.com', '137966', '0000-00-00 00:00:00.000000'),
(115, 'khanaqeeb13@gmail.com', '829551', '0000-00-00 00:00:00.000000'),
(116, 'khanaqeeb13@gmail.com', '637777', '0000-00-00 00:00:00.000000'),
(117, 'khanaqeeb13@gmail.com', '153020', '0000-00-00 00:00:00.000000'),
(118, 'khanaqeeb13@gmail.com', '844666', '0000-00-00 00:00:00.000000'),
(119, 'khanaqeeb13@gmail.com', '459492', '0000-00-00 00:00:00.000000'),
(120, 'khanaqeeb13@gmail.com', '374141', '0000-00-00 00:00:00.000000'),
(121, 'khanaqeeb13@gmail.com', '745601', '0000-00-00 00:00:00.000000'),
(122, 'khanaqeeb13@gmail.com', '981856', '0000-00-00 00:00:00.000000'),
(123, 'khanaqeeb13@gmail.com', '981856', '0000-00-00 00:00:00.000000'),
(124, 'khanaqeeb13@gmail.com', '981856', '0000-00-00 00:00:00.000000'),
(125, 'khanaqeeb13@gmail.com', '923336', '0000-00-00 00:00:00.000000'),
(126, 'khanaqeeb13@gmail.com', '923336', '0000-00-00 00:00:00.000000'),
(127, 'khanaqeeb13@gmail.com', '995220', '0000-00-00 00:00:00.000000'),
(128, 'khanaqeeb13@gmail.com', '995220', '0000-00-00 00:00:00.000000'),
(129, 'khanaqeeb13@gmail.com', '402163', '0000-00-00 00:00:00.000000'),
(130, 'khanaqeeb13@gmail.com', '354986', '0000-00-00 00:00:00.000000'),
(131, 'rahiedmi@gmail.com', '354986', '0000-00-00 00:00:00.000000'),
(132, 'sayedshaugfta3898@gmail.com', '354986', '0000-00-00 00:00:00.000000'),
(133, 'sayedshagufta3898@gmail.com', '354986', '0000-00-00 00:00:00.000000'),
(134, 'sayedshagufta3898@gmail.com', '466100', '0000-00-00 00:00:00.000000'),
(135, 'khanaqeeb13@gmail.com', '873142', '0000-00-00 00:00:00.000000'),
(136, 'khanaqeeb13@gmail.com', '873142', '0000-00-00 00:00:00.000000'),
(137, 'khanaqeeb13@gmail.com', '970802', '0000-00-00 00:00:00.000000'),
(138, 'khanaqeeb13@gmail.com', '816796', '0000-00-00 00:00:00.000000'),
(139, 'khanaqeeb13@gmail.com', '674617', '0000-00-00 00:00:00.000000'),
(140, 'khanaqeeb13@gmail.com', '895907', '0000-00-00 00:00:00.000000'),
(141, 'khanaqeeb13@gmail.com', '558484', '0000-00-00 00:00:00.000000'),
(142, 'khanaqeeb13@gmail.com', '909292', '0000-00-00 00:00:00.000000'),
(143, 'khanaqeeb13@gmail.com', '830707', '0000-00-00 00:00:00.000000'),
(144, 'khanaqeeb13@gmail.com', '498762', '0000-00-00 00:00:00.000000'),
(145, 'khanaqeeb13@gmail.com', '372711', '0000-00-00 00:00:00.000000'),
(146, 'khanaqeeb13@gmail.com', '327083', '0000-00-00 00:00:00.000000'),
(147, 'khanaqeeb13@gmail.com', '932219', '0000-00-00 00:00:00.000000'),
(148, '', '817280', '0000-00-00 00:00:00.000000'),
(149, 'khanaqeeb13@gmail.com', '817280', '0000-00-00 00:00:00.000000'),
(150, 'khanaqeeb13@gmail.com', '711474', '0000-00-00 00:00:00.000000'),
(151, 'khanaqeeb13@gmail.com', '185330', '0000-00-00 00:00:00.000000'),
(152, 'khanaqeeb13@gmail.com', '514780', '0000-00-00 00:00:00.000000'),
(153, 'khanaqeeb13@gmail.com', '450400', '0000-00-00 00:00:00.000000'),
(154, 'khanaqeeb13@gmail.com', '450400', '0000-00-00 00:00:00.000000'),
(155, 'khanaqeeb13@gmail.com', '327789', '0000-00-00 00:00:00.000000'),
(156, 'khanaqeeb13@gmail.com', '327789', '0000-00-00 00:00:00.000000'),
(157, 'khanaqeeb13@gmail.com', '327789', '0000-00-00 00:00:00.000000'),
(158, 'khanaqeeb13@gmail.com', '789878', '0000-00-00 00:00:00.000000'),
(159, 'khanaqeeb13@gmail.com', '789878', '0000-00-00 00:00:00.000000'),
(160, 'khanaqeeb13@gmail.com', '789878', '0000-00-00 00:00:00.000000'),
(161, 'khanaqeeb13@gmail.com', '789878', '0000-00-00 00:00:00.000000'),
(162, 'khanaqeeb13@gmail.com', '197732', '0000-00-00 00:00:00.000000'),
(163, 'khanaqeeb13@gmail.com', '197732', '0000-00-00 00:00:00.000000'),
(164, 'khanaqeeb13@gmail.com', '197732', '0000-00-00 00:00:00.000000'),
(165, 'abc123@gmail.com', '12321', '0000-00-00 00:00:00.000000'),
(166, 'rahiedmi@gmail.com', '757460', '0000-00-00 00:00:00.000000'),
(167, 'khanaqeeb13@gmail.com', '347420', '0000-00-00 00:00:00.000000'),
(168, 'khanaqeeb13@gmail.com', '278213', '0000-00-00 00:00:00.000000'),
(169, 'khanaqeeb13@gmail.com', '494362', '0000-00-00 00:00:00.000000'),
(170, 'khanaqeeb13@gmail.com', '479150', '0000-00-00 00:00:00.000000'),
(171, 'khanaqeeb13@gmail.com', '661733', '0000-00-00 00:00:00.000000'),
(176, 'khanaqeeb13@gmail.com', '101531', '0000-00-00 00:00:00.000000'),
(177, 'khanaqeeb13@gmail.com', '193775', '0000-00-00 00:00:00.000000'),
(178, 'khanaqeeb13@gmail.com', '301734', '0000-00-00 00:00:00.000000'),
(179, 'saadansar00@gmail.com', '942494', '0000-00-00 00:00:00.000000'),
(180, 'saadansar00@gmail.com', '942494', '0000-00-00 00:00:00.000000'),
(181, 'khanaqeeb13@gmail.com', '942494', '0000-00-00 00:00:00.000000'),
(182, 'khanaqeeb13@gmail.com', '545084', '0000-00-00 00:00:00.000000'),
(183, 'khanaqeeb13@gmail.com', '389342', '0000-00-00 00:00:00.000000'),
(184, 'khanaqeeb13@gmail.com', '389342', '0000-00-00 00:00:00.000000'),
(185, 'khanaqeeb13@gmail.com', '893543', '0000-00-00 00:00:00.000000'),
(186, 'rahiedmi@gmail.com', '400289', '0000-00-00 00:00:00.000000'),
(187, 'rahiedmi@gmail.com', '400289', '0000-00-00 00:00:00.000000'),
(188, 'rahiedmi@gmail.com', '397399', '0000-00-00 00:00:00.000000'),
(189, 'saadansar00@gmail.com', '397399', '0000-00-00 00:00:00.000000'),
(190, 'sayedshagufta3898@gmail.com', '613994', '0000-00-00 00:00:00.000000'),
(191, 'khanaqeeb13@gmail.com', '613994', '0000-00-00 00:00:00.000000'),
(192, 'khanaqeeb13@gmail.com', '613994', '0000-00-00 00:00:00.000000'),
(193, 'khanaqeeb13@gmail.com', '642420', '0000-00-00 00:00:00.000000'),
(194, 'rahiedmi@gmail.com', '642420', '0000-00-00 00:00:00.000000'),
(195, 'saadansar00@gmail.com', '756950', '0000-00-00 00:00:00.000000'),
(196, 'khanaqeeb13@gmail.com', '763549', '0000-00-00 00:00:00.000000'),
(197, 'sayedshagufta3898@gmail.com', '763549', '0000-00-00 00:00:00.000000'),
(198, 'khanaqeeb13@gmail.com', '353893', '0000-00-00 00:00:00.000000'),
(199, 'rahiedmi@gmail.com', '353893', '0000-00-00 00:00:00.000000'),
(200, 'saadansar00@gmail.com', '353893', '0000-00-00 00:00:00.000000'),
(201, 'sayedshaugfta98@gmail.com', '353893', '0000-00-00 00:00:00.000000'),
(202, 'sayedshagufta3888@gmail.com', '263066', '0000-00-00 00:00:00.000000'),
(203, 'khanaqeeb13@gmail.com', '263066', '0000-00-00 00:00:00.000000'),
(204, 'khanaqeeb13@gmail.com', '723991', '0000-00-00 00:00:00.000000'),
(205, 'rahiedmi@gmail.com', '507788', '0000-00-00 00:00:00.000000'),
(206, 'khanaqeeb13@gmail.com', '883099', '0000-00-00 00:00:00.000000'),
(207, 'rahiedmi@gmail.com', '883099', '0000-00-00 00:00:00.000000'),
(208, 'saadansar00@gmail.com', '484811', '0000-00-00 00:00:00.000000'),
(209, 'khanaqeeb13@gmail.com', '145366', '0000-00-00 00:00:00.000000'),
(210, 'sayedshagufta3898@gmail.com', '145366', '0000-00-00 00:00:00.000000'),
(211, 'sayedshaugfta98@gmail.com', '899747', '0000-00-00 00:00:00.000000'),
(212, 'khanaqeeb13@gmail.com', '899747', '0000-00-00 00:00:00.000000'),
(213, 'khanaqeeb13@gmail.com', '899747', '0000-00-00 00:00:00.000000'),
(214, 'khanaqeeb13@gmail.com', '899747', '0000-00-00 00:00:00.000000'),
(215, 'khanaqeeb13@gmail.com', '899747', '0000-00-00 00:00:00.000000'),
(216, 'khanaqeeb13@gmail.com', '802047', '0000-00-00 00:00:00.000000'),
(217, 'khanaqeeb13@gmail.com', '233818', '0000-00-00 00:00:00.000000'),
(218, 'khanaqeeb13@gmail.com', '233818', '0000-00-00 00:00:00.000000'),
(219, '', '136775', '0000-00-00 00:00:00.000000'),
(220, 'khanaqeeb13@gmail.com', '136775', '0000-00-00 00:00:00.000000'),
(221, 'khanaqeeb13@gmail.com', '770913', '0000-00-00 00:00:00.000000'),
(222, 'khanaqeeb13@gmail.com', '709242', '0000-00-00 00:00:00.000000'),
(223, 'khanaqeeb13@gmail.com', '709242', '0000-00-00 00:00:00.000000'),
(224, 'khanaqeeb13@gmail.com', '219674', '0000-00-00 00:00:00.000000'),
(225, 'khanaqeeb13@gmail.com', '679634', '0000-00-00 00:00:00.000000'),
(226, 'saadansar00@gmail.com', '146841', '0000-00-00 00:00:00.000000'),
(227, 'khanaqeeb13@gmail.com', '146841', '0000-00-00 00:00:00.000000'),
(228, 'khanaqeeb13@gmail.com', '772735', '0000-00-00 00:00:00.000000'),
(229, 'rahiedmi@gmail.com', '321209', '0000-00-00 00:00:00.000000'),
(230, 'khanaqeeb13@gmail.com', '321209', '0000-00-00 00:00:00.000000'),
(231, 'khanaqeeb13@gmail.com', '500554', '0000-00-00 00:00:00.000000'),
(232, 'khanaqeeb13@gmail.com', '726717', '0000-00-00 00:00:00.000000'),
(233, 'rahiedmi@gmail.com', '726717', '0000-00-00 00:00:00.000000'),
(234, 'khanaqeeb13@gmail.com', '867215', '0000-00-00 00:00:00.000000'),
(235, 'khanaqeeb13@gmail.com', '337743', '0000-00-00 00:00:00.000000'),
(236, 'khanaqeeb13@gmail.com', '407729', '0000-00-00 00:00:00.000000'),
(237, 'khanaqeeb13@gmail.com', '211099', '0000-00-00 00:00:00.000000'),
(238, 'khanaqeeb13@gmail.com', '538290', '0000-00-00 00:00:00.000000'),
(239, 'khanaqeeb13@gmail.com', '538290', '0000-00-00 00:00:00.000000'),
(240, 'khanaqeeb13@gmail.com', '148687', '0000-00-00 00:00:00.000000'),
(241, 'khanaqeeb13@gmail.com', '301670', '0000-00-00 00:00:00.000000'),
(242, 'khanaqeeb13@gmail.com', '343529', '0000-00-00 00:00:00.000000'),
(243, 'rahiedmi@gmail.com', '343529', '0000-00-00 00:00:00.000000'),
(244, 'rahiedmi@gmail.com', '400397', '0000-00-00 00:00:00.000000'),
(245, 'khanaqeeb13@gmail.com', '326022', '0000-00-00 00:00:00.000000'),
(246, 'khanaqeeb13@gmail.com', '831668', '0000-00-00 00:00:00.000000'),
(247, 'rahiedmi@gmail.com', '798763', '0000-00-00 00:00:00.000000'),
(248, 'saadansar00@gmail.com', '729565', '0000-00-00 00:00:00.000000'),
(249, 'khanaqeeb13@gmail.com', '586085', '0000-00-00 00:00:00.000000'),
(250, 'khanaqeeb13@gmail.com', '381530', '0000-00-00 00:00:00.000000'),
(251, 'rahiedmi@gmail.com', '381530', '0000-00-00 00:00:00.000000'),
(252, 'saadansar00@gmail.com', '225347', '0000-00-00 00:00:00.000000'),
(253, 'khanaqeeb13@gmail.com', '883331', '0000-00-00 00:00:00.000000'),
(254, 'khanaqeeb13@gmail.com', '148996', '0000-00-00 00:00:00.000000'),
(255, 'rahiedmi@gmail.com', '148996', '0000-00-00 00:00:00.000000'),
(256, 'khanaqeeb13@gmail.com', '539297', '0000-00-00 00:00:00.000000'),
(257, 'rahiedmi@gmail.com', '539297', '0000-00-00 00:00:00.000000'),
(258, 'saadansar00@gmail.com', '528741', '0000-00-00 00:00:00.000000'),
(259, 'khanaqeeb13@gmail.com', '225354', '0000-00-00 00:00:00.000000'),
(260, 'rahiedmi@gmail.com', '225354', '0000-00-00 00:00:00.000000'),
(261, 'khanaqeeb13@gmail.com', '600131', '0000-00-00 00:00:00.000000'),
(262, 'rahiedmi@gmail.com', '600131', '0000-00-00 00:00:00.000000'),
(263, 'khanaqeeb13@gmail.com', '310197', '0000-00-00 00:00:00.000000'),
(264, 'rahiedmi@gmail.com', '310197', '0000-00-00 00:00:00.000000'),
(265, 'khanaqeeb13@gmail.com', '724425', '0000-00-00 00:00:00.000000'),
(266, 'khanaqeeb13@gmail.com', '583423', '0000-00-00 00:00:00.000000'),
(267, 'khanaqeeb13@gmail.com', '431978', '0000-00-00 00:00:00.000000'),
(268, 'rahiedmi@gmail.com', '385038', '0000-00-00 00:00:00.000000'),
(269, 'rahiedmi@gmail.com', '385038', '0000-00-00 00:00:00.000000'),
(270, 'rahiedmi@gmail.com', '936222', '0000-00-00 00:00:00.000000'),
(271, 'khanaqeeb13@gmail.com', '936222', '0000-00-00 00:00:00.000000'),
(272, 'khanaqeeb13@gmail.com', '766277', '0000-00-00 00:00:00.000000'),
(273, 'rahiedmi@gmail.com', '766277', '0000-00-00 00:00:00.000000'),
(274, 'rahiedmi@gmail.com', '907865', '0000-00-00 00:00:00.000000'),
(275, 'khanaqeeb13@gmail.com', '229100', '0000-00-00 00:00:00.000000'),
(276, 'rahiedmi@gmail.com', '615002', '0000-00-00 00:00:00.000000'),
(277, 'saadansar00@gmail.com', '977229', '0000-00-00 00:00:00.000000'),
(278, 'khanaqeeb13@gmail.com', '977229', '0000-00-00 00:00:00.000000'),
(279, 'khanaqeeb13@gmail.com', '491791', '0000-00-00 00:00:00.000000'),
(280, 'rahiedmi@gmail.com', '491791', '0000-00-00 00:00:00.000000'),
(281, 'khanaqeeb13@gmail.com', '651288', '0000-00-00 00:00:00.000000'),
(282, 'khanaqeeb13@gmail.com', '791166', '0000-00-00 00:00:00.000000'),
(283, 'khanaqeeb13@gmail.com', '837824', '0000-00-00 00:00:00.000000'),
(284, 'rahiedmi@gmail.com', '837824', '0000-00-00 00:00:00.000000'),
(285, 'khanaqeeb13@gmail.com', '305842', '0000-00-00 00:00:00.000000'),
(286, 'khanaqeeb13@gmail.com', '417999', '0000-00-00 00:00:00.000000'),
(287, 'rahiedmi@gmail.com', '395332', '0000-00-00 00:00:00.000000'),
(288, 'khanaqeeb13@gmail.com', '610507', '0000-00-00 00:00:00.000000'),
(289, 'rahiedmi@gmail.com', '452141', '0000-00-00 00:00:00.000000'),
(290, 'rahiedmi@gmail.com', '452141', '0000-00-00 00:00:00.000000'),
(291, 'rahiedmi@gmail.com', '862935', '0000-00-00 00:00:00.000000'),
(292, 'khanaqeeb13@gmail.com', '862935', '0000-00-00 00:00:00.000000'),
(293, 'khanaqeeb13@gmail.com', '862935', '0000-00-00 00:00:00.000000'),
(294, 'khanaqeeb13@gmail.com', '297275', '0000-00-00 00:00:00.000000'),
(295, 'rahiedmi@gmail.com', '199460', '0000-00-00 00:00:00.000000'),
(296, 'khanaqeeb13@gmail.com', '533361', '0000-00-00 00:00:00.000000'),
(297, 'khanaqeeb13@gmail.com', '533361', '0000-00-00 00:00:00.000000'),
(298, 'khanaqeeb13@gmail.com', '983326', '0000-00-00 00:00:00.000000'),
(299, 'rahiedmi@gmail.com', '983326', '0000-00-00 00:00:00.000000'),
(300, 'khanaqeeb13@gmail.com', '575855', '0000-00-00 00:00:00.000000'),
(301, 'khanaqeeb13@gmail.com', '260217', '0000-00-00 00:00:00.000000'),
(302, 'khanaqeeb13@gmail.com', '351339', '0000-00-00 00:00:00.000000'),
(303, 'rahiedmi@gmail.com', '876466', '0000-00-00 00:00:00.000000'),
(304, 'khanaqeeb13@gmail.com', '239732', '0000-00-00 00:00:00.000000'),
(305, 'rahiedmi@gmail.com', '653037', '0000-00-00 00:00:00.000000'),
(306, 'khanaqeeb13@gmail.com', '370745', '0000-00-00 00:00:00.000000'),
(307, 'khanaqeeb13@gmail.com', '757838', '0000-00-00 00:00:00.000000'),
(308, 'khanaqeeb13@gmail.com', '954982', '0000-00-00 00:00:00.000000'),
(309, 'navedpatel2000@gmail.com', '289817', '0000-00-00 00:00:00.000000'),
(310, 'kadil4546@gmail.com', '916723', '0000-00-00 00:00:00.000000'),
(311, 'kadil4546@gmail.com', '916723', '0000-00-00 00:00:00.000000'),
(312, 'kadil4546@gmail.com', '474607', '0000-00-00 00:00:00.000000'),
(313, 'khanaqeeb13@gmail.com', '475192', '0000-00-00 00:00:00.000000'),
(314, 'khanaqeeb13@gmail.com', '270611', '0000-00-00 00:00:00.000000'),
(315, 'rahiedmi@gmail.com', '270611', '0000-00-00 00:00:00.000000'),
(316, 'khanaqeeb13@gmail.com', '612064', '0000-00-00 00:00:00.000000'),
(317, 'khanaqeeb13@gmail.com', '612064', '0000-00-00 00:00:00.000000'),
(318, 'khanaqeeb13@gmail.com', '575639', '0000-00-00 00:00:00.000000'),
(319, 'khanaqeeb13@gmail.com', '178981', '0000-00-00 00:00:00.000000'),
(320, 'rahiedmi@gmail.com', '363009', '0000-00-00 00:00:00.000000'),
(321, 'khanaqeeb13@gmail.com', '900709', '0000-00-00 00:00:00.000000'),
(322, 'khanaqeeb13@gmail.com', '383636', '0000-00-00 00:00:00.000000'),
(323, 'rahiedmi@gmail.com', '383636', '0000-00-00 00:00:00.000000'),
(324, 'khanaqeeb13@gmail.com', '850551', '0000-00-00 00:00:00.000000'),
(325, 'rahiedmi@gmail.com', '764959', '0000-00-00 00:00:00.000000'),
(326, 'saadansar00@gmail.com', '764959', '0000-00-00 00:00:00.000000'),
(327, 'khanaqeeb13@gmail.com', '764959', '0000-00-00 00:00:00.000000'),
(331, 'khanaqeeb13@gmail.com', '526132', '0000-00-00 00:00:00.000000'),
(332, 'khanaqeeb13@gmail.com', '961599', '0000-00-00 00:00:00.000000'),
(333, 'khanaqeeb13@gmail.com', '397712', '0000-00-00 00:00:00.000000'),
(334, 'khanaqeeb13@gmail.com', '893380', '0000-00-00 00:00:00.000000'),
(335, 'rahiedmi@gmail.com', '893380', '0000-00-00 00:00:00.000000'),
(336, 'khanaqeeb13@gmail.com', '191286', '0000-00-00 00:00:00.000000'),
(337, 'khanaqeeb13@gmail.com', '929734', '0000-00-00 00:00:00.000000'),
(338, '', '700876', '0000-00-00 00:00:00.000000'),
(339, '', '700876', '0000-00-00 00:00:00.000000'),
(340, '', '700876', '0000-00-00 00:00:00.000000'),
(341, '', '700876', '0000-00-00 00:00:00.000000'),
(342, '', '700876', '0000-00-00 00:00:00.000000'),
(343, '', '700876', '0000-00-00 00:00:00.000000'),
(344, 'khanaqeeb13@gmail.com', '809648', '0000-00-00 00:00:00.000000'),
(345, 'rahiedmi@gmail.com', '123130', '0000-00-00 00:00:00.000000'),
(346, 'khanaqeeb13@gmail.com', '794775', '0000-00-00 00:00:00.000000'),
(347, 'khanaqeeb13@gmail.com', '657109', '0000-00-00 00:00:00.000000'),
(348, 'khanaqeeb13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(349, 'khanaqeeb13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(350, 'khanaqeeb13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(351, 'khanaqeeb13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(352, 'khanaqeeb13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(353, 'a123@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(354, 'khanab13@gmail.com', '859410', '0000-00-00 00:00:00.000000'),
(355, 'khanab13@gmail.com', '306553', '0000-00-00 00:00:00.000000'),
(356, 'khanab13@gmail.com', '745882', '0000-00-00 00:00:00.000000'),
(357, 'khanab13@gmail.com', '267352', '0000-00-00 00:00:00.000000'),
(358, 'khanab13@gmail.com', '716888', '0000-00-00 00:00:00.000000'),
(359, 'abdeef@gmail.com', '716888', '0000-00-00 00:00:00.000000'),
(360, 'khanaqeeb13@gmail.com', '716888', '0000-00-00 00:00:00.000000'),
(361, 'khanaqeeb13@gmail.com', '941084', '0000-00-00 00:00:00.000000'),
(362, 'khanaqeeb13@gmail.com', '941084', '0000-00-00 00:00:00.000000'),
(363, 'khanaqeeb13@gmail.com', '941084', '0000-00-00 00:00:00.000000'),
(364, 'khanaqeeb13@gmail.com', '891627', '0000-00-00 00:00:00.000000'),
(365, 'khanaqeeb13@gmail.com', '662281', '0000-00-00 00:00:00.000000'),
(366, 'khanaqeeb13@gmail.com', '662281', '0000-00-00 00:00:00.000000'),
(367, 'khanaqeeb13@gmail.com', '792940', '0000-00-00 00:00:00.000000'),
(368, 'khanaqeeb13@gmail.com', '792940', '0000-00-00 00:00:00.000000'),
(369, 'khanaqeeb13@gmail.com', '371635', '0000-00-00 00:00:00.000000'),
(370, 'khanaqeeb13@gmail.com', '454604', '0000-00-00 00:00:00.000000'),
(371, 'khanaqeeb13@gmail.com', '185232', '0000-00-00 00:00:00.000000'),
(372, 'khanaqeeb13@gmail.com', '662619', '0000-00-00 00:00:00.000000'),
(373, 'abcdefghu@gmail.com', '554522', '0000-00-00 00:00:00.000000'),
(374, 'khanaqeeb13@gmail.com', '264468', '0000-00-00 00:00:00.000000'),
(375, 'khanaqeeb13@gmail.com', '763640', '0000-00-00 00:00:00.000000'),
(376, 'khanaqeeb13@gmail.com', '281043', '0000-00-00 00:00:00.000000'),
(377, 'khanaqeeb13@gmail.com', '974093', '0000-00-00 00:00:00.000000'),
(378, 'khanaqeeb13@gmail.com', '155318', '0000-00-00 00:00:00.000000'),
(379, 'khanaqeeb13@gmail.com', '143729', '0000-00-00 00:00:00.000000'),
(380, 'khanaqeeb13@gmail.com', '802567', '0000-00-00 00:00:00.000000'),
(381, 'khanaqeeb13@gmail.com', '980423', '0000-00-00 00:00:00.000000'),
(382, 'khanaqeeb13@gmail.com', '936182', '0000-00-00 00:00:00.000000'),
(383, 'khanaqeeb13@gmail.com', '800192', '0000-00-00 00:00:00.000000'),
(384, 'khanaqeeb13@gmail.com', '643591', '0000-00-00 00:00:00.000000'),
(385, 'khanaqeeb13@gmail.com', '231840', '0000-00-00 00:00:00.000000'),
(386, 'khanaqeeb13@gmail.com', '324986', '0000-00-00 00:00:00.000000'),
(387, 'khanaqeeb13@gmail.com', '105803', '0000-00-00 00:00:00.000000'),
(388, 'khanaqeeb13@gmail.com', '735833', '0000-00-00 00:00:00.000000'),
(389, 'khanaqeeb13@gmail.com', '911522', '0000-00-00 00:00:00.000000'),
(390, 'khanaqeeb13@gmail.com', '109085', '0000-00-00 00:00:00.000000'),
(391, 'khanaqeeb13@gmail.com', '411846', '0000-00-00 00:00:00.000000'),
(392, 'khanaqeeb13@gmail.com', '880859', '0000-00-00 00:00:00.000000'),
(393, 'khanaqeeb13@gmail.com', '880859', '0000-00-00 00:00:00.000000'),
(394, 'khanaqeeb13@gmail.com', '880859', '0000-00-00 00:00:00.000000'),
(395, 'khanaqeeb13@gmail.com', '604140', '2022-03-07 22:38:05.862454'),
(396, 'khanaqeeb13@gmail.com', '434620', '2022-03-10 21:14:22.082507'),
(397, 'khanaqeeb13@gmail.com', '623890', '2022-03-10 21:14:57.922620'),
(398, 'khanaqeeb13@gmail.com', '719573', '2022-03-10 21:16:11.820248'),
(399, 'khanaqeeb13@gmail.com', '631924', '2022-03-10 21:16:28.188603'),
(400, 'khanaqeeb13@gmail.com', '206297', '2022-03-10 21:17:05.555403'),
(401, 'khanaqeeb13@gmail.com', '535233', '2022-03-10 21:17:59.995387'),
(402, 'khanaqeeb13@gmail.com', '535233', '2022-03-10 21:18:12.565356'),
(403, 'khanaqeeb13@gmail.com', '943427', '2022-03-10 21:18:55.755210'),
(404, 'khanaqeeb13@gmail.com', '159266', '2022-03-10 21:20:30.064732'),
(405, 'khanaqeeb13@gmail.com', '155260', '2022-03-10 21:21:04.372348'),
(406, 'khanaqeeb13@gmail.com', '763412', '2022-03-10 21:22:57.505788'),
(407, 'khanaqeeb13@gmail.com', '468843', '2022-03-10 21:23:25.822642'),
(408, 'khanaqeeb13@gmail.com', '913633', '2022-03-10 21:23:55.575869'),
(409, 'khanaqeeb13@gmail.com', '149435', '2022-03-10 21:24:22.450529'),
(410, 'khanaqeeb13@gmail.com', '209127', '2022-03-10 21:28:12.027655'),
(411, 'khanaqeeb13@gmail.com', '765970', '2022-03-10 21:29:02.469657'),
(412, 'khanaqeeb13@gmail.com', '539863', '2022-03-10 21:30:01.142708'),
(413, 'khanaqeeb13@gmail.com', '140346', '2022-03-10 21:31:42.467020'),
(414, 'khanaqeeb13@gmail.com', '300583', '2022-03-10 21:32:24.570136'),
(415, 'khanaqeeb13@gmail.com', '899005', '2022-03-10 21:33:13.983363'),
(416, 'khanaqeeb13@gmail.com', '122614', '2022-03-10 21:34:05.473373'),
(417, 'khanaqeeb13@gmail.com', '867204', '2022-03-10 21:34:35.305084'),
(418, 'khanaqeeb13@gmail.com', '461568', '2022-03-10 21:35:21.714857'),
(419, 'khanaqeeb13@gmail.com', '992349', '2022-03-10 21:35:57.871560'),
(420, 'khanaqeeb13@gmail.com', '497791', '2022-03-10 21:37:25.713546'),
(421, 'khanaqeeb13@gmail.com', '100828', '2022-03-10 21:41:28.736558'),
(422, 'khanaqeeb13@gmail.com', '111159', '2022-03-10 21:42:27.786640'),
(423, 'khanaqeeb13@gmail.com', '758835', '2022-03-10 21:46:38.608230'),
(424, 'khanaqeeb13@gmail.com', '706571', '2022-03-19 20:05:10.283094'),
(425, 'khanaqeeb13@gmail.com', '454458', '2022-03-19 20:05:49.304961'),
(426, 'khanaqeeb13@gmail.com', '824341', '2022-03-19 20:06:27.971150'),
(427, 'khanaqeeb13@gmail.com', '555860', '2022-03-19 20:07:02.884997'),
(428, 'khanaqeeb13@gmail.com', '956485', '2022-03-19 20:07:27.760369');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `srno` int(11) NOT NULL,
  `resuser` varchar(120) NOT NULL,
  `ngouser` varchar(120) NOT NULL,
  `food` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`srno`, `resuser`, `ngouser`, `food`, `name`, `date`) VALUES
(53, 'sss', 'ngo1', 'foods le lo', 'hello', '2022-04-03 17:14:50'),
(54, 'sss', 'ngo1', 'Rice (5kg)\nDal ( 2ltr)\nRoti (10 pics)', 'Naved', '2022-04-09 14:09:45'),
(55, 'sss', 'ngo1', 'Rice (5kg)\nDal ( 2ltr)\nRoti (10 pics)', 'Naved', '2022-04-09 14:17:49'),
(56, 'sss', 'ngo1', 'fcew', 'Naved', '2022-04-09 15:50:45'),
(57, 'sss', 'ngo1', 'fcew', 'Naved', '2022-04-09 15:54:47'),
(61, 'sss', 'ngo1', 'fcew', 'Naved', '2022-04-09 16:14:54'),
(62, 'sss', 'ngo1', 'fcew', 'Naved', '2022-04-09 16:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `ngoprofile`
--

CREATE TABLE `ngoprofile` (
  `srno` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `pincode` int(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngoprofile`
--

INSERT INTO `ngoprofile` (`srno`, `user`, `name`, `number`, `pincode`, `address`, `city`, `state`, `date`) VALUES
(1, 'asz', 'Aqeeb Khan', '9898989898', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-03 18:33:38.259466'),
(2, 'def', 'Aqeeb Khan', '1020302010', 401107, '302 balaji bldg near laxmi park  naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-08 20:56:35.192465'),
(3, 'ed', 'Rahied Khan', '1020301020', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-12 22:04:58.329533'),
(4, 'asz', 'Saad', '1231231230', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-12 22:05:43.453542'),
(5, 'asz', 'rayyaan', '1030201030', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-12 22:06:17.454623'),
(6, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '0000-00-00 00:00:00.000000'),
(7, 'hello@gmail.com', 'rayyaan', '1231231230', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-19 18:45:44.983968'),
(8, 'rahied', 'rahied khan', '9920361719', 400001, 'dew', 'Thane', 'Maharasthra', '2022-02-24 20:35:56.000000'),
(14, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.173338'),
(15, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.180071'),
(16, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.180071'),
(17, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.180071'),
(18, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.180071'),
(19, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.183086'),
(20, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:19:24.183086'),
(21, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.717025'),
(22, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.722898'),
(23, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.722898'),
(24, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.722898'),
(25, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.723898'),
(26, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.725703'),
(27, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:20:24.725703'),
(28, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.881988'),
(29, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.888799'),
(30, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.889022'),
(31, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.889249'),
(32, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.889376'),
(33, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.891943'),
(34, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-25 21:21:13.892168'),
(50, 'hello@gmail.com', 'rayyaan', '1231231230', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-26 16:56:33.845498'),
(51, 'hii', 'motta', '1231231230', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-26 16:58:20.714486'),
(52, 'ngo1', 'Aqeeb Khan', '8899123201', 401107, '302 balaji bldg, naya nagar, mira road (E ) near laxmi park ', 'Thane', 'Maharasthra', '2022-02-26 21:01:48.188766');

-- --------------------------------------------------------

--
-- Table structure for table `phonedb`
--

CREATE TABLE `phonedb` (
  `Sr.No` int(11) NOT NULL,
  `MobileNo` varchar(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phonedb`
--

INSERT INTO `phonedb` (`Sr.No`, `MobileNo`, `date`) VALUES
(1, '1231231230', '2022-01-19 19:57:42'),
(2, '1212121212', '2022-01-19 19:57:42'),
(3, '1231231230', '2022-01-19 20:10:30'),
(4, '1231231230', '2022-01-19 20:11:09'),
(5, '1231231230', '2022-01-19 20:12:24'),
(6, '1231231230', '2022-01-19 20:14:03'),
(7, '1231231230', '2022-01-19 20:16:26'),
(8, '1231231230', '2022-01-19 20:16:49'),
(9, '1231231230', '2022-01-19 20:17:03'),
(10, '1231231230', '2022-01-19 20:17:11'),
(11, '1231231230', '2022-01-19 20:19:42'),
(12, '1231231230', '2022-01-19 20:20:04'),
(13, '1231231230', '2022-01-19 20:20:57'),
(14, '1231231230', '2022-01-19 20:21:14'),
(15, '1231231230', '2022-01-19 20:22:17'),
(16, '1231231230', '2022-01-19 20:22:36'),
(17, '1231231230', '2022-01-19 20:23:44'),
(18, '1231231230', '2022-01-19 20:23:46'),
(19, '1231231230', '2022-01-19 20:40:25'),
(20, '1231231230', '2022-01-19 20:41:25'),
(21, '1231231230', '2022-01-19 20:42:10'),
(22, '1231231230', '2022-01-19 20:43:09'),
(23, '1231231230', '2022-01-19 20:43:26'),
(24, '1231231230', '2022-01-19 20:43:45'),
(25, '1231231230', '2022-01-20 16:12:11'),
(26, '1231231230', '2022-01-20 16:13:36'),
(27, '1231231230', '2022-01-20 16:13:48'),
(28, '1231231230', '2022-01-20 16:14:02'),
(29, '1231231230', '2022-01-20 16:14:48'),
(30, '1231231230', '2022-01-20 16:23:31'),
(31, '1231231230', '2022-01-20 16:25:42'),
(32, '1231231230', '2022-01-20 16:25:58'),
(33, '1231231230', '2022-01-20 16:26:44'),
(34, '1231231230', '2022-01-20 16:26:57'),
(35, '1231231230', '2022-01-20 16:27:13'),
(36, '1231231230', '2022-01-20 16:31:28'),
(37, '1231231230', '2022-01-20 16:32:31'),
(38, '0', '2022-01-20 18:24:41'),
(39, '0', '2022-01-20 18:24:41'),
(40, '1231231230', '2022-01-20 18:43:50'),
(41, '1231231230', '2022-01-20 18:44:51'),
(42, '1231231230', '2022-01-20 18:45:12'),
(43, '1231231230', '2022-01-20 18:45:24'),
(44, '1231231230', '2022-01-20 18:45:37'),
(45, '1231231230', '2022-01-20 18:45:59'),
(46, '1231231230', '2022-01-20 18:46:13'),
(47, '1231231230', '2022-01-20 19:58:45'),
(48, '1231231230', '2022-01-20 19:58:56'),
(49, '1231231230', '2022-01-20 20:15:56'),
(50, '1231231230', '2022-01-20 20:16:28'),
(51, '2147483647', '2022-01-22 16:22:43'),
(52, '2147483647', '2022-01-22 16:25:44'),
(53, '2147483647', '2022-01-22 16:28:55'),
(54, '2147483647', '2022-01-22 16:29:40'),
(55, '2147483647', '2022-01-22 16:30:58'),
(56, '2147483647', '2022-01-22 16:32:15'),
(57, '2147483647', '2022-01-22 16:36:43'),
(58, '2147483647', '2022-01-22 16:39:28'),
(59, '2147483647', '2022-01-22 16:46:29'),
(60, '2147483647', '2022-01-22 16:50:12'),
(61, '2147483647', '2022-01-22 16:50:30'),
(62, '1231231230', '2022-01-22 16:50:53'),
(63, '2147483647', '2022-01-22 16:51:57'),
(64, '2147483647', '2022-01-22 16:52:29'),
(65, '9136398834', '2022-01-22 18:59:01'),
(66, '9136398834', '2022-01-22 18:59:23'),
(67, '9136398834', '2022-01-22 19:07:21'),
(68, '', '2022-01-22 19:19:51'),
(69, '9136398834', '2022-01-22 19:20:02'),
(70, '9136398834', '2022-01-22 19:26:49'),
(71, '9920321719', '2022-01-24 19:50:50'),
(72, '9136398834', '2022-01-24 21:17:44'),
(73, '9920321719', '2022-01-24 21:25:23'),
(74, '9920321719', '2022-01-24 21:30:09'),
(75, '9136398834', '2022-01-24 21:45:13'),
(76, '9136398834', '2022-01-24 21:47:16'),
(77, '1231231230', '2022-01-24 21:51:21'),
(78, '1231231230', '2022-01-24 21:53:10'),
(79, '1231231230', '2022-01-24 21:57:32'),
(80, '1231231230', '2022-01-24 22:00:37'),
(81, '1', '2022-01-25 19:23:29'),
(82, '9321603107', '2022-01-25 22:01:32'),
(83, '1231231230', '2022-01-26 19:59:51'),
(84, '1231231230', '2022-01-26 20:18:43'),
(85, '121231230', '2022-01-26 20:19:49'),
(86, '1231231230', '2022-01-26 20:20:37'),
(87, '1231231301', '2022-01-26 20:21:23'),
(88, '1', '2022-01-26 20:22:14'),
(89, '1', '2022-01-26 20:22:36'),
(90, '1', '2022-01-26 20:23:26'),
(91, '', '2022-01-26 20:24:08'),
(92, '', '2022-01-26 20:24:28'),
(93, '', '2022-01-26 20:25:30'),
(94, '', '2022-01-26 20:26:46'),
(95, '', '2022-01-26 20:44:39'),
(96, '', '2022-01-26 20:48:21'),
(97, '', '2022-01-26 20:48:50'),
(98, '', '2022-01-26 20:52:54'),
(99, '', '2022-01-26 21:02:49'),
(100, '', '2022-01-26 21:03:55'),
(101, '', '2022-01-26 21:04:13'),
(102, '', '2022-01-26 21:04:47'),
(103, '', '2022-01-26 21:05:14'),
(104, '', '2022-01-28 15:43:08'),
(105, '', '2022-01-28 15:44:13'),
(106, '', '2022-01-28 15:52:28'),
(107, '', '2022-01-28 16:09:13'),
(108, '', '2022-01-28 16:09:29'),
(109, '', '2022-01-28 16:10:19'),
(110, '', '2022-01-28 16:10:40'),
(111, '', '2022-01-28 16:11:24'),
(112, '', '2022-01-28 16:13:16'),
(113, '', '2022-01-28 16:14:21'),
(114, '', '2022-01-28 16:16:03'),
(115, '', '2022-01-28 16:17:08'),
(116, '', '2022-01-28 16:19:40'),
(117, '', '2022-01-28 16:28:54'),
(118, '', '2022-01-28 16:36:30'),
(119, '', '2022-01-28 16:36:50'),
(120, '', '2022-01-28 16:37:22'),
(121, '', '2022-01-28 16:39:55'),
(122, '', '2022-01-28 16:40:13'),
(123, '', '2022-01-28 16:47:11'),
(124, '', '2022-01-28 16:53:22'),
(125, '', '2022-01-28 16:53:36'),
(126, '', '2022-01-28 16:57:21'),
(127, '', '2022-01-28 16:57:54'),
(128, '', '2022-01-28 16:58:05'),
(129, '', '2022-01-28 16:58:19'),
(130, '', '2022-01-28 16:58:59'),
(131, '', '2022-01-28 17:00:59'),
(132, '', '2022-01-28 17:01:12'),
(133, '', '2022-01-28 17:02:21'),
(134, '', '2022-01-28 17:02:32'),
(135, '', '2022-01-28 17:02:56'),
(136, '', '2022-01-28 17:03:08'),
(137, '', '2022-01-28 19:20:35'),
(138, '', '2022-01-28 19:21:15'),
(139, '', '2022-01-28 19:21:30'),
(140, '', '2022-01-28 19:21:55'),
(141, '', '2022-01-28 19:22:10'),
(142, '', '2022-01-28 19:25:33'),
(143, '', '2022-01-28 19:25:58'),
(144, '', '2022-01-28 19:26:00'),
(145, '', '2022-01-28 19:26:26'),
(146, '', '2022-01-28 19:26:46'),
(147, '', '2022-01-28 19:29:02'),
(148, '', '2022-01-28 19:29:18'),
(149, '', '2022-01-28 19:29:38'),
(150, '', '2022-01-28 19:31:23'),
(151, '', '2022-01-28 19:31:37'),
(152, '0', '2022-01-28 19:31:49'),
(153, '0', '2022-01-28 19:32:09'),
(154, '', '2022-01-28 19:32:26'),
(155, '', '2022-01-28 19:32:54'),
(156, '', '2022-01-28 19:34:20'),
(157, '', '2022-01-28 19:34:28'),
(158, '', '2022-01-28 19:34:54'),
(159, '', '2022-01-28 19:35:04'),
(160, '', '2022-01-28 19:35:41'),
(161, '', '2022-01-28 19:38:56'),
(162, '', '2022-01-28 19:39:09'),
(163, '', '2022-01-28 19:39:30'),
(164, '', '2022-01-28 19:39:41'),
(165, '', '2022-01-28 19:40:15'),
(166, '', '2022-01-28 19:40:22'),
(167, '', '2022-01-28 19:42:10'),
(168, '', '2022-01-28 19:54:46'),
(169, '', '2022-01-28 19:55:12'),
(170, '', '2022-01-28 20:05:47'),
(171, '', '2022-01-28 20:06:28'),
(172, '', '2022-01-28 20:09:51'),
(173, '', '2022-01-28 20:10:02'),
(174, '', '2022-01-28 20:11:50'),
(175, '', '2022-01-28 20:12:06'),
(176, '', '2022-01-28 20:15:10'),
(177, '', '2022-01-28 20:19:23'),
(178, '', '2022-01-28 20:21:08'),
(179, '', '2022-01-28 20:21:59'),
(180, '', '2022-01-28 20:22:30'),
(181, '', '2022-01-28 20:26:31'),
(182, '', '2022-01-28 20:27:04'),
(183, '', '2022-01-28 20:32:48'),
(184, '', '2022-01-28 21:02:34'),
(185, '', '2022-01-28 21:09:20'),
(186, '', '2022-01-28 21:09:35'),
(187, '9136398834', '2022-02-01 21:31:34'),
(188, '9136398834', '2022-02-02 15:24:18'),
(189, '9082977715', '2022-02-02 16:42:15'),
(190, '9370938660', '2022-02-02 17:37:29'),
(191, '10', '2022-02-08 17:37:41'),
(192, '', '2022-02-08 17:39:30'),
(193, '123', '2022-02-08 19:31:45'),
(194, '20', '2022-02-08 19:33:25'),
(195, '30', '2022-02-08 19:33:54'),
(196, '80', '2022-02-08 19:34:17'),
(197, '9920321719', '2022-02-08 19:59:47'),
(198, '9920321719', '2022-02-08 20:15:26'),
(199, '3320321719', '2022-02-08 20:18:53'),
(200, '9920321719', '2022-02-08 20:19:10'),
(201, '9920321719', '2022-02-08 20:22:54'),
(202, '9920321719', '2022-02-08 20:28:36'),
(203, '9136398834', '2022-02-09 17:35:46'),
(204, '', '2022-02-10 19:15:48'),
(205, '9136398834', '2022-02-16 15:22:13'),
(206, '9136398834', '2022-02-17 21:50:33'),
(207, '9136398834', '2022-03-07 22:38:53'),
(208, '9136398834', '2022-03-10 21:47:02'),
(209, '9136398834', '2022-03-10 21:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `srno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `pincode` int(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`srno`, `name`, `number`, `pincode`, `address`, `city`, `state`, `date`) VALUES
(1, 'Aqeeb Khan', '9999999999', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', '0', '2022-02-01 20:43:05.387150'),
(2, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', '0', '2022-02-01 20:44:22.414315'),
(3, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', 'O', '2022-02-01 21:08:37.017545'),
(4, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', 'O', '2022-02-02 15:54:03.956713'),
(5, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', 'Maharasthra', '2022-02-02 15:55:11.812357'),
(6, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg , naya nagar, mira road (E ) laxmi park', 'Thane', 'Maharasthra', '2022-02-02 15:55:26.581831'),
(7, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-02 15:57:00.316690'),
(8, 'Aqeeb Khan', '1231233200', 401107, '302 balaji bldg, near laxmi park , naya nagar, mira road (E )', 'Thane', 'UP', '2022-02-02 15:57:39.706379'),
(9, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'Gujurat', '2022-02-02 15:59:12.682233'),
(10, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'UP', '2022-02-02 17:11:26.137470'),
(11, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'UP', '2022-02-02 17:12:58.723735'),
(12, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'Thane', 'UP', '2022-02-02 17:13:12.715710'),
(13, 'Aqeeb Khan', '1231231230', 401107, '302 balaji bldg laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-02 17:46:44.708144'),
(14, 'Rahied Khan', '2020202020', 401107, '302 balaji bldg near laxmi park , naya nagar, mira road (E )', 'MIra Road', 'Maharasthra', '2022-02-05 17:49:45.293897'),
(15, 'Aqeeb Khan', '1021012012', 401107, '302 balaji bldg,  near laxmi park naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-08 20:54:59.091740'),
(16, 'Aqeeb Khan', '2030103214', 401107, '302 balaji bldg,  near laxmi park http://127.0.0.1:5001/', 'Thane', 'Maharasthra', '2022-02-08 20:58:19.564094'),
(17, 'Aqeeb Khan', '1231231321', 401107, '302 balaji bldg laxmi park , naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-09 19:45:05.769602'),
(18, 'Aqeeb Khan', '1231231230', 400001, '302 balaji bldg,  near laxmi park naya nagar, mira road (E )', 'mumbai', 'Maharasthra', '2022-02-09 19:58:24.500136'),
(19, 'Aqeeb Khan', '8989898989', 401107, 'near, Yashfeen Enterprise, Shop No. 07, Gulistan Bldg No. 05, Gulistan Masjid Rd, Puja Nagar, Mira Road, Maharashtra 401107 3213112  304, B-29, Swaminarayan Rd, Sector 11, Shanti Nagar, Mira Road, Mira Bhayandar, Maharashtra 401107', 'Thane', 'Maharasthra', '2022-02-09 21:24:12.953235'),
(20, 'Aqeeb Khan', '9132415230', 401101, '302 balaji bldg, near laxmi park  naya nagar, mira road (E )', 'Thane', 'Maharasthra', '2022-02-11 15:55:59.467547');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `srno` int(11) NOT NULL,
  `Ngouser` varchar(20) NOT NULL,
  `Resuser` varchar(20) NOT NULL,
  `desbox` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`srno`, `Ngouser`, `Resuser`, `desbox`, `date`, `number`, `pincode`, `address`, `city`) VALUES
(170, 'ngo1', '', 'Rice', '0000-0', '10', '400001', 'Hello', 'Thane'),
(171, 'abc123', '', 'dal', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(172, '', '', 'dal', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(173, '', '', 'v fed', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(174, 'asz', '', 'seas', '2022-0', '3', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(175, 'asz', '', 'seas', '2022-0', '3', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(176, 'ngo1', '', 'vedsa', '2022-0', '10', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(177, 'ngo1', '', 'rice 100kg', '2022-0', '55', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(178, 'ngo1', '', 'rice 100kg', '2022-0', '55', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(179, 'ngo1', '', 'rice 100kg', '2022-0', '55', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(180, 'ngo1', '', 'Roti 5\r\nRice 5kg', '2022-0', '1231231301', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(181, 'ngo1', '', 'Roti 10\r\nDal 10\r\nRice 5', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(182, 'ngo1', '', 'Roti 10\r\nDal 10\r\nRice 10', '2022-0', '2312312310', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(183, 'ngo1', '', 'Roti 10\r\nDal 10\r\nRice 10', '2022-0', '2312312310', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(184, 'asz', 'ngo1', 'grfs\r\nrice', '2022-0', '1231231320', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(185, 'ngo1', 'sss', 'grs', '2022-0', '1231231230', '400001', 'grstedwr', 'etrt4et'),
(186, 'ngo1', 'sss', 'dcewq', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(187, '', 'sss', 'ced', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(188, 'ngo1', 'sss', 'fe', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(189, 'asz', 'ngo1', '', '2022-0', '', '', '', ''),
(190, 'asz', 'ngo1', '', '2022-0', '', '', '', ''),
(191, 'ngo1', 'asz', '', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(192, 'ngo1', 'abc123', '', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(193, 'hello@gmail.com', 'abc123', 'fewdce', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(194, 'hello@gmail.com', 'abc123', 'fewdce', '2022-0', '1', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(195, 'hello@gmail.com', 'ngo1', 'hbtr', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(196, 'ngo1', 'ngo1', 'gre', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(197, 'ngo1', 'sss', 'ced', '2022-0', '1003002002', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(198, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(199, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(200, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(201, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(202, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(203, 'ngo1', 'sss', 'few', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(204, 'hello@gmail.com', 'sss', 'xcsa', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(205, 'hello@gmail.com', 'sss', 'cdw', '2022-0', '1231234562', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(206, 'ed', 'sss', 'dw', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(207, 'asz', 'sss', 'cswa', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(208, 'ngo1', 'sss', 'jtgf', '2022-0', '1231231320', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(209, 'rahied', 'sss', 'frwe', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(210, 'rahied', 'sss', 'frwe', '2022-0', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(211, 'ngo1', 'sss', 'dwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\ndwqe djkwhqjke dhouwqe n iodwq  iodiuwqy d ioduywq rdh iywd edioyy dwq uiywe yd wqyh oy edwiiye diwye dw8q isde8wi \r\n', '2022-02-24 20:51:04', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(212, 'ngo1', 'abc123', 'fvedw', '2022-02-24 21:29:58.688179', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(213, 'ngo1', 'sss', 'jyrft', '2022-02-25 19:32:48.813386', '1231231320', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(214, 'ngo1', 'sss', 'gfews', '2022-02-25 19:40:00.209700', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(215, 'ngo1', 'asd', 'rdtfrthg', '2022-02-25 19:44:08.669030', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(216, 'rahied', 'sss', 'bvfdsr', '2022-02-25 20:44:34.136232', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(217, 'ngo1', 'sss', 'mhgfg', '2022-02-25 20:44:53.061816', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(218, 'asz', 'sss', 'higvbkb', '2022-02-25 21:01:21.659216', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(219, 'ngo1', 'sss', 'fed', '2022-03-10 13:46:42.869953', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(220, 'ngo1', 'sss', 'hello 1', '2022-03-10 21:04:25.293929', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'HEllo'),
(221, 'ngo1', 'User2', 'fgdsdfs dhgfdgf ghfhgfd', '2022-03-10 21:57:55.560874', '9876543210', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'try'),
(222, 'ngo1', 'sss', 'vrwef', '2022-03-11 20:23:10.096215', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'ho jaa'),
(223, 'ngo1', 'sss', 'vrwef', '2022-03-11 20:23:50.837669', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'ho jaa'),
(224, 'ngo1', 'sss', 'foods', '2022-03-31 14:09:52.466728', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(225, 'ngo1', 'sss', 'New Orders', '2022-03-31 20:27:19.230210', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(226, 'ngo1', 'sss', 'foods le lo', '2022-04-03 17:08:33.080277', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'hello'),
(227, 'ngo1', 'sss', 'Rice (5kg)\r\nDal ( 2ltr)\r\nRoti (10 pics)', '2022-04-09 14:07:46.320070', '9136398834', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(228, 'ngo1', 'sss', 'fcew', '2022-04-09 15:49:34.156928', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(229, 'ngo1', 'sss', 'fcew', '2022-04-09 15:59:15.634929', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(230, 'ngo1', 'sss', 'fcew', '2022-04-09 16:00:17.989182', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(231, 'ngo1', 'sss', 'fcew', '2022-04-09 16:01:18.740390', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(232, 'ngo1', 'sss', 'fcew', '2022-04-09 16:02:21.365277', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(233, 'ngo1', 'sss', 'fcew', '2022-04-09 16:03:51.611497', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Naved'),
(234, 'ngo1', 'sss', 'vew', '2022-04-09 16:05:46.253658', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(235, 'ngo1', 'sss', 'vew', '2022-04-09 16:06:39.546375', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(236, 'ngo1', 'sss', 'vew', '2022-04-09 16:06:50.523906', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(237, 'ngo1', 'sss', 'vew', '2022-04-09 16:07:09.867904', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane'),
(238, 'ngo1', 'sss', 'vew', '2022-04-09 16:07:44.730743', '1231231230', '401107', '302 balaji bldg, naya nagar, mira road (E )', 'Thane');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'apptite13', '$2b$12$MK.SY8nAsgoDy'),
(2, 'DSE20104156', '$2b$12$GZLTkSE7urmKn'),
(3, '1127677375', '$2b$12$X6nwt..qCMr.r'),
(4, 'aaaa', 'aaaa'),
(5, 'qqqq', '$2b$12$tOsfc3uHLyvjV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `ngoprofile`
--
ALTER TABLE `ngoprofile`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `phonedb`
--
ALTER TABLE `phonedb`
  ADD PRIMARY KEY (`Sr.No`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `srno` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1478;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ngoprofile`
--
ALTER TABLE `ngoprofile`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `phonedb`
--
ALTER TABLE `phonedb`
  MODIFY `Sr.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
