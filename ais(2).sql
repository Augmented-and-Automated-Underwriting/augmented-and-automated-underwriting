-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2022 at 06:15 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
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
-- Database: `ais`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment_ans`
--

CREATE TABLE `assessment_ans` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `planid` text,
  `ouruser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `qtn` text,
  `answer` text,
  `weight` text,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assessment_ans`
--

INSERT INTO `assessment_ans` (`autoid`, `autodate`, `planid`, `ouruser`, `qtn`, `answer`, `weight`, `status`) VALUES
(1, '2022-09-04 14:57:18', 'pln1089', 'cls211125065506', '1', 'Yes', '', 1),
(2, '2022-09-04 14:57:19', 'pln1089', 'cls211125065506', '2', 'This is the next big thing', '6', 1),
(5, '2022-09-07 16:15:36', 'pln1089', 'cls286', '1', 'Yes', NULL, 1),
(6, '2022-09-07 16:15:36', 'pln1089', 'cls286', '2', 'hi man make this happen', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assessment_qtns`
--

CREATE TABLE `assessment_qtns` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plan` text,
  `item_name` text,
  `ins_qtn` text,
  `qtn_type` text,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assessment_qtns`
--

INSERT INTO `assessment_qtns` (`autoid`, `autodate`, `plan`, `item_name`, `ins_qtn`, `qtn_type`, `status`) VALUES
(1, '2022-09-03 14:36:06', 'pln1089', 'Occupation', 'Are you self employed or you are an employee', '1', 1),
(2, '2022-09-03 14:36:06', 'pln1089', 'Financial Situation', 'Have you ever run bankrupt, any failure to pay or ever listed by any financial instution due to failed payments', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_policies`
--

CREATE TABLE `client_policies` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `planid` text,
  `plan_type` text,
  `age` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `gender` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `marital_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `clientid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `total_amount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `date_approved` text,
  `approver` text,
  `total_weight` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` int NOT NULL DEFAULT '0',
  `reqid` text,
  `emp_status` text,
  `pac` text,
  `prem` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `client_policies`
--

INSERT INTO `client_policies` (`autoid`, `autodate`, `planid`, `plan_type`, `age`, `gender`, `marital_status`, `clientid`, `total_amount`, `date_approved`, `approver`, `total_weight`, `status`, `reqid`, `emp_status`, `pac`, `prem`) VALUES
(1, '2022-09-04 14:57:18', 'pln1089', 'pol1079', '25', 'Male', 'married', 'cls211125065506', '900000', '2022-09-05', 'tech4', '9', 1, 'cls211125065506220904025630', 'employee', 'pk1093', 'tm1045'),
(3, '2022-09-07 16:15:36', 'pln1089', 'pol1079', '45', 'Male', 'single', 'cls286', '450000', '2022-09-07', 'tech4', '15', 1, 'cls286220907041443', 'employee', 'pk1090', 'tm1045');

-- --------------------------------------------------------

--
-- Table structure for table `deletedusers`
--

CREATE TABLE `deletedusers` (
  `autoid` int NOT NULL,
  `role` text,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` text,
  `lastname` text,
  `gender` text,
  `phonenumber` text,
  `phonenumber2` text,
  `email` text,
  `username` text,
  `password` text,
  `fulltitle` text,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` text,
  `branch` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `rolenumber` text,
  `title` text,
  `about` text,
  `hint` text,
  `color` text,
  `listings` int DEFAULT NULL,
  `birthday` text,
  `fontt` text,
  `powers` int DEFAULT NULL,
  `cr` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_plans`
--

CREATE TABLE `insurance_plans` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `planid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `plan_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `plan_dets` text,
  `tenure` text,
  `typez` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `interest` int NOT NULL DEFAULT '0',
  `premium_term` text,
  `premium_amount` int DEFAULT '0',
  `age_group` text,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itempricing`
--

CREATE TABLE `itempricing` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plan_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `planid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `price1` int DEFAULT NULL,
  `price2` int DEFAULT NULL,
  `price3` int DEFAULT NULL,
  `package` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ouruser` text,
  `prem_term` text,
  `priceid` text,
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itempricing`
--

INSERT INTO `itempricing` (`autoid`, `autodate`, `plan_type`, `planid`, `price1`, `price2`, `price3`, `package`, `ouruser`, `prem_term`, `priceid`, `status`) VALUES
(1, '2021-12-01 01:59:12', 'pol1082', 'pln10106', 70000, NULL, NULL, 'pk1090', 'tech4', 'tm1045', 'px211201015912', 1),
(2, '2021-12-01 01:59:37', 'pol1082', 'pln10107', 80000, NULL, NULL, 'pk1093', 'tech4', 'tm1046', 'px211201015937', 1),
(3, '2021-12-01 01:59:55', 'pol1082', 'pln10107', 200000, NULL, NULL, 'pk1094', 'tech4', 'tm1045', 'px211201015955', 1),
(4, '2021-12-01 02:00:24', 'pol1079', 'pln1089', 30000, NULL, NULL, 'pk1090', 'tech4', 'tm1045', 'px211201020024', 1),
(5, '2021-12-01 02:00:40', 'pol1079', 'pln1089', 100000, NULL, NULL, 'pk1093', 'tech4', 'tm1047', 'px211201020040', 1),
(6, '2021-12-01 02:01:00', 'pol1084', 'pln10116', 150000, NULL, NULL, 'pk10120', 'tech4', 'tm1045', 'px211201020100', 1),
(7, '2021-12-01 02:01:18', 'pol1081', 'pln10103', 20000, NULL, NULL, 'pk1090', 'tech4', 'tm1045', 'px211201020118', 1);

-- --------------------------------------------------------

--
-- Table structure for table `keyfields`
--

CREATE TABLE `keyfields` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rolenumber` text,
  `password` text,
  `pswdexpiry` text,
  `status` int NOT NULL DEFAULT '0',
  `username` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyfields`
--

INSERT INTO `keyfields` (`autoid`, `autodate`, `rolenumber`, `password`, `pswdexpiry`, `status`, `username`) VALUES
(41, '2019-11-10 11:27:26', 'tech4', 'dkazibwe', '2030-01-01', 1, 'dkazibwe'),
(174, '2021-11-24 07:59:33', 'agt4', 'nasser', '2030-02-22', 1, 'nasser'),
(183, '2022-09-07 14:40:24', 'cls286', 'dk', '2023-09-07', 1, 'dk'),
(184, '2022-09-07 16:09:37', 'agt283', '0787773414', '2022-10-07', 1, 'apeter');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner` text,
  `ouruser` text,
  `expected_loan` text,
  `loan_percentage` int DEFAULT NULL,
  `installments` int DEFAULT NULL,
  `total_loan` text,
  `emi_loan` text,
  `amount_paid` bigint DEFAULT '0',
  `amount_remain` text,
  `current_inst` int NOT NULL DEFAULT '0',
  `remain_inst` int DEFAULT NULL,
  `next_date` date DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `loanid` text,
  `approver` text,
  `apprdate` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `autoid` int NOT NULL,
  `role` text NOT NULL,
  `item` text NOT NULL,
  `color` text NOT NULL,
  `link` text NOT NULL,
  `img` text NOT NULL,
  `title` text NOT NULL,
  `type` text NOT NULL,
  `itemorder` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`autoid`, `role`, `item`, `color`, `link`, `img`, `title`, `type`, `itemorder`) VALUES
(3, 'tech,ltech,hd', 'Sytem Settings', 'yellow', 'multi_inputs.php', 'cogs', '', '', 1),
(7, 'tech,ltech,hd,agt', 'Dashboard', 'yellow', 'index.php', 'home', '', '', 0),
(15, 'tech,ltech,nn,mr,lt,ad,xc', 'Agents', 'yellow', 'agents.php', 'users', '', '', 1),
(16, 'tech,ltech,ad,hd,agt', 'Clients', 'yellow', 'clients.php', 'users', '', '', 2),
(17, 'tech,ltech,hd,agt,ad', 'Payments', 'yellow', 'loan', 'edit', '', '', 20),
(18, 'tech,ltech,ad,hd,agt', 'Pending Approval', 'white', 'pending_approval.php\r\n', 'edit', '', 'loan', 4),
(19, 'tech,ltech,ad,agt', 'Approved', 'white', 'approved_payments.php\r\n', 'check-circle', '', 'loan', 5),
(20, 'tech,ltech,nn,mr,lt,ad,xc', 'Defaulters', 'white', 'view_loans.php\r\n', 'eye', '', 'mo', 6),
(21, 'tech,ltech,nn,mr,lt,ad,xc', 'Advances', 'white', 'loan_status.php\r\n', 'calendar', '', 'mo', 7),
(22, 'tech,ltech,nn,mr,lt,ad,xc', 'Clients Requests', 'yellow', 'client_requests.php', 'envelope', '', '', 5),
(23, 'tech,ltech,hd', 'Plan Prices', 'yellow', 'plan_prices.php', 'shopping-cart', '', '', 1),
(24, '', 'Reports', 'yellow', 'more_menu.php', 'briefcase', '', '', 19),
(25, 'tech,ltech,hd', 'Daily Payments', 'white', 'daily_payments.php\r\n', 'edit', '', 'mo', 4),
(26, 'tech,ltech,hd', 'Weekly Payments', 'white', 'weekly_payments.php\r\n', 'edit', '', 'mo', 4),
(27, 'tech,ltech,hd', 'Monthly Payments', 'white', 'monthly_payments.php\r\n', 'edit', '', 'mo', 4),
(28, 'cls', 'Home', 'yellow', 'client_main.php', 'home', '', '', 0),
(29, 'cls', 'Nominees', 'yellow', 'client_nominees.php', 'users', '', '', 1),
(30, 'cls', 'Payments', 'yellow', 'client_payments.php', 'briefcase', '', '', 1),
(31, 'cls', 'Policies', 'yellow', 'client_plans.php', 'laptop', '', '', 0),
(32, 'cls', 'Insurance Tips', 'yellow', 'client_tips.php', 'edit', '', '', 2),
(33, 'cls', 'Notifications', 'yellow', 'client_nots.php', 'bell', '', '', 2),
(34, 'tech,ltech,ad,agt,hd', 'New Payment', 'white', 'new_payment.php\r\n', 'edit', '', 'loan', 3),
(35, 'tech,ltech,hd', 'Assessment Settings', 'yellow', 'risk_assessment.php', 'cogs', '', '', 1),
(36, 'tech,ltech,hd,ad', 'Security', 'yellow', 'sec', 'edit', '', '', 20),
(37, 'tech,ltech,ad,hd,agt', 'Activity Logs', 'white', 'hardlog.php\r\n', 'edit', '', 'sec', 4),
(38, 'tech,ltech,ad,hd,agt', 'Manage Accounts', 'white', 'systemlock.php\r\n', 'eye', '', 'sec', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clientid` text,
  `fullname` text,
  `nin` text,
  `phone` text,
  `rel` text,
  `prior` text,
  `status` int NOT NULL DEFAULT '1',
  `ouruser` text,
  `nomid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`autoid`, `autodate`, `clientid`, `fullname`, `nin`, `phone`, `rel`, `prior`, `status`, `ouruser`, `nomid`) VALUES
(4, '2021-12-01 02:23:47', 'cls211125065506', 'Mwebe Yosam', 'CM89272828929', '07625276171', 'xsp1065', 'pr1075', 1, 'cls211125065506', 'nm104'),
(5, '2021-12-01 02:23:47', 'cls211125065506', 'Sali Grace', 'Cm98727272211', '07862526171', 'xsp1067', 'pr1076', 1, 'cls211125065506', 'nm105'),
(6, '2021-12-17 02:04:04', 'cls211217020309', 'koko super', 'CM9738229291', '07082929222', 'xsp1065', 'pr1075', 1, 'agt4', 'nm106');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clientid` text,
  `reqid` text,
  `about` text,
  `ouruser` text,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`autoid`, `autodate`, `clientid`, `reqid`, `about`, `ouruser`, `status`) VALUES
(1, '2021-12-01 04:46:34', 'cls211125065506', 'rq211201020629', 'Thanks for joining automated insurance please contact agent on your allocated branch to take u through payment plans', 'tech4', 1),
(2, '2021-12-01 05:15:11', 'cls211125065506', 'rq211201020659', 'We welcome you to automated insurance call on all our service lines for payment plans and assistance', 'tech4', 1),
(3, '2021-12-01 05:34:45', 'cls211125065506', 'rq211201020717', 'Wrong nin number and phone number rectifiy them and try again', 'tech4', 1),
(4, '2022-09-05 16:42:19', 'cls211125065506', 'cls211125065506220904025630', 'Your request for aLife Insurance insurance policy with a 700000 Monthly has been approved', 'tech4', 1),
(5, '2022-09-05 16:42:20', 'cls211125065506', 'cls211125065506220904025630', 'Your request for aLife Insurance insurance policy with a 700000 Monthly has been approved', 'tech4', 1),
(6, '2022-09-05 16:46:16', 'cls211125065506', 'cls211125065506220904025630', 'Your request for aLife Insurance insurance policy of 900000 Monthly has been approved', 'tech4', 1),
(7, '2022-09-05 16:46:16', 'cls211125065506', 'cls211125065506220904025630', 'Your request for aLife Insurance insurance policy of 900000 Monthly has been approved', 'tech4', 1),
(8, '2022-09-07 15:04:50', 'cls286', NULL, 'hi', 'tech4', 1),
(9, '2022-09-07 16:19:53', 'cls286', 'cls286220907041443', 'We nolonger take in requests on this package', 'tech4', 1),
(10, '2022-09-07 16:23:05', 'cls286', 'cls286220907041443', 'Your request for a Life Insurance insurance policy of 450000 Monthly has been approved', 'tech4', 1),
(11, '2022-09-07 16:23:05', 'cls286', 'cls286220907041443', 'Your request for a Life Insurance insurance policy of 450000 Monthly has been approved', 'tech4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clientid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `reqid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `expected_amount` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `amount_paid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `balance` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `payed_on` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `next_pay` text,
  `ouruser` text,
  `typez` text,
  `status` int NOT NULL DEFAULT '0',
  `payid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`autoid`, `autodate`, `clientid`, `reqid`, `expected_amount`, `amount_paid`, `balance`, `payed_on`, `next_pay`, `ouruser`, `typez`, `status`, `payid`) VALUES
(1, '2021-12-16 22:37:47', 'cls211125065506', 'rq211201020717', '80000', '65000', '15000', '2021-12-16', '2022-03-16', 'tech4', 'ad', 0, 'pmt211216103747'),
(2, '2021-12-17 01:32:04', 'cls211125065506', 'rq211201020659', '20000', '20000', '0', '2021-12-17', '2022-02-25', 'tech4', 'ad', 0, 'pmt211217013204'),
(3, '2021-12-17 02:08:00', 'cls211125065506', 'rq211201020659', '20000', '15000', '5000', '2021-12-17', '2022-01-17', 'agt4', 'agt', 0, 'pmt211217020800'),
(4, '2022-09-05 16:51:59', 'cls211125065506', 'cls211125065506220904025630', '900000', '700000', '200000', '2022-09-05', '2022-09-15', 'tech4', 'ad', 0, 'pmt220905045159');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ouruser` text,
  `owner` text,
  `amount` text,
  `methodid` text,
  `datepaid` text,
  `approver` text,
  `status` int NOT NULL DEFAULT '0',
  `savingid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`autoid`, `autodate`, `ouruser`, `owner`, `amount`, `methodid`, `datepaid`, `approver`, `status`, `savingid`) VALUES
(1, '2020-09-25 07:46:14', 'tech4', 'mr4', '300000', 'pm200924064008', '2020-09-25', NULL, 0, 'sv200925064614');

-- --------------------------------------------------------

--
-- Table structure for table `scrap`
--

CREATE TABLE `scrap` (
  `autoid` int NOT NULL,
  `autodate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item` text,
  `item2` text NOT NULL,
  `item3` text,
  `item4` text,
  `item5` text,
  `item6` text,
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `scrap`
--

INSERT INTO `scrap` (`autoid`, `autodate`, `item`, `item2`, `item3`, `item4`, `item5`, `item6`, `type`) VALUES
(1, '2018-12-16 09:30:15', 'uploads/', '0', NULL, NULL, NULL, NULL, 'pathtoshire'),
(2, '2018-12-16 09:30:15', '1200000', '0', NULL, NULL, NULL, NULL, 'timeout'),
(3, '2018-12-16 09:30:15', 'A-I-S', '0', NULL, NULL, NULL, NULL, 'title'),
(38, '2021-11-23 09:17:50', 'Agent', 'agt', NULL, NULL, NULL, NULL, 'role'),
(39, '2021-11-23 09:24:00', 'Client', 'cls', NULL, NULL, NULL, NULL, 'role'),
(40, '2021-11-23 09:24:16', 'Technical', 'tech', NULL, NULL, NULL, NULL, 'role'),
(41, '2021-11-23 09:24:35', 'System Admin', 'hd', NULL, NULL, NULL, NULL, 'role'),
(45, '2021-11-23 10:02:48', 'tm1045', 'Monthly', '1', NULL, NULL, NULL, 'prem_term'),
(46, '2021-11-23 10:02:55', 'tm1046', 'Quartery', '4', NULL, NULL, NULL, 'prem_term'),
(47, '2021-11-23 10:03:02', 'tm1047', 'Annually', '12', NULL, NULL, NULL, 'prem_term'),
(48, '2021-11-23 10:17:53', 'loc211123051753', 'Kampala', NULL, NULL, NULL, NULL, 'loc'),
(49, '2021-11-23 10:18:02', 'loc211123051802', 'Nakawa', NULL, NULL, NULL, NULL, 'loc'),
(50, '2021-11-23 10:18:07', 'loc211123051807', 'Kawempe', NULL, NULL, NULL, NULL, 'loc'),
(51, '2021-11-23 10:18:14', 'loc211123051814', 'Nansana', NULL, NULL, NULL, NULL, 'loc'),
(52, '2021-11-23 10:31:08', 'brc1052', 'Mapeera House', 'loc211123051753', NULL, NULL, NULL, 'branch'),
(53, '2021-11-23 10:31:23', 'brc1053', 'kawempe kutaano', 'loc211123051807', NULL, NULL, NULL, 'branch'),
(54, '2021-11-23 10:31:58', 'brc1054', 'Yesu Amala', 'loc211123051814', NULL, NULL, NULL, 'branch'),
(65, '2021-11-23 10:52:48', 'xsp1065', 'Brother', NULL, NULL, NULL, NULL, 'nom_rels'),
(66, '2021-11-23 10:52:53', 'xsp1066', 'Daughter', NULL, NULL, NULL, NULL, 'nom_rels'),
(67, '2021-11-23 10:52:58', 'xsp1067', 'Son', NULL, NULL, NULL, NULL, 'nom_rels'),
(68, '2021-11-23 10:53:02', 'xsp1068', 'Wife', NULL, NULL, NULL, NULL, 'nom_rels'),
(69, '2021-11-23 10:53:07', 'xsp1069', 'Husband', NULL, NULL, NULL, NULL, 'nom_rels'),
(75, '2021-11-23 10:58:37', 'pr1075', '1st', NULL, NULL, NULL, NULL, 'priors'),
(76, '2021-11-23 10:59:24', 'pr1076', '2nd', NULL, NULL, NULL, NULL, 'priors'),
(77, '2021-11-23 10:59:31', 'pr1077', '3rd', NULL, NULL, NULL, NULL, 'priors'),
(78, '2021-11-23 10:59:38', 'pr1078', '4th', NULL, NULL, NULL, NULL, 'priors'),
(80, '2021-11-23 12:09:19', 'pol1079', 'Life Insurance', '<p>Life Insurance refers to a policy or cover whereby the policyholder can ensure financial freedom for his/her family members after death. Suppose you are the sole earning member in your family, supporting your spouse and children.</p>', 'life', '<p>Life Insurance refers to a policy or cover whereby the policyholder can ensure financial freedom for his/her family members after death. Suppose you are the sole earning member in your family, supporting your spouse and children.</p>\r\n<p>In such an event, your death would financially devastate the whole family. Life insurance policies ensure that such a thing does not happen by providing financial assistance to your family in the event of your passing.</p>\r\n<p><strong>Benefits of Life Insurance</strong><br />If you possess a life insurance plan, you can enjoy the following advantages from the policy.</p>\r\n<p>Tax Benefits&nbsp;-&nbsp;If you pay life insurance premiums, you are eligible for tax benefits in India, under Section 80(C) and 10(10D) of the Income Tax Act. Thus, you can save a substantial sum of money as taxes by opting for a life insurance plan.<br />Encourages Saving Habit&nbsp;-&nbsp;Since you need to pay policy premiums, buying such an insurance policy promotes the habit of saving money.<br />Secures Family&rsquo;s Financial Future&nbsp;-&nbsp;The policy ensures your family&rsquo;s financial independence is maintained even after your demise.<br />Helps Plan Your Retirement&nbsp;-&nbsp;Certain life insurance policies also act as investment options. For instance, pension plans offer a lump-sum payout as soon as you retire, helping you to fund your retirement.</p>', NULL, 'policy'),
(81, '2021-11-23 12:11:01', 'pol1081', 'Motor Insurance', '<p>Motor insurance refers to policies that offer financial assistance in the event of accidents involving your car or bike. Motor insurance can be availed for three categories of motorised vehicles, including:</p>\r\n', 'motor', '<p>Motor insurance refers to policies that offer financial assistance in the event of accidents involving your car or bike. Motor insurance can be availed for three categories of motorised vehicles, including:</p>\r\n<p>Car Insurance - Personally owned four-wheeler vehicles are covered under such a policy.<br />Two-wheeler Insurance - Personally owned two-wheeler vehicles, including bikes and scooters, are covered under these plans.<br />Commercial Vehicle Insurance - If you own a vehicle that is used commercially, you need to avail insurance for the same. These policies ensure that your business automobiles stay in the best of shapes, reducing losses significantly.</p>\r\n<p><strong>Benefits of Motor Insurance Policies</strong><br />Cars and bikes are increasingly more expensive with each passing day. At such a time, staying without proper insurance can lead to severe monetary losses for the owner. Listed below are some advantages of purchasing such a plan.</p>\r\n<p>Prevents Legal Hassle&nbsp;-&nbsp;Helps you avoid any traffic fines and other legalities that you would otherwise need to bear.<br />Meets All Third-Party Liability&nbsp;- If you injure a person or damage someone&rsquo;s property during a vehicular accident, the insurance policy helps you meet the monetary losses, effectively.<br />Financial Assistance to Repair Your own Vehicle&nbsp;-&nbsp;After accidents, you need to spend considerable sums on repairing your own vehicle. Insurance plans limit such out of pocket expenses, allowing you to undertake repairs immediately.<br />Theft/loss cover&nbsp;- If your vehicle is stolen, your insurance policy will help you reclaim a portion of the car/bike&rsquo;s on-road price. You can expect similar assistance if your vehicle is damaged beyond repair due to accidents.<br />Additionally, individuals who own a commercial car/two-wheeler can also avail tax benefits if they pay premiums for that vehicle.</p>', NULL, 'policy'),
(82, '2021-11-23 12:13:06', 'pol1082', 'Health Insurance', '<p>Health insurance refers to a type of general insurance, which provides financial assistance to policyholders when they are admitted to hospitals for treatment. Additionally, some plans also cover the cost of treatment undertaken at home, prior to a hospitalisation or after discharge from the same.</p>', 'health', '<p>Health insurance refers to a type of general insurance, which provides financial assistance to policyholders when they are admitted to hospitals for treatment. Additionally, some plans also cover the cost of treatment undertaken at home, prior to a hospitalisation or after discharge from the same.</p>\r\n<p>With the rising medical inflation in India, buying health insurance has become a necessity. However, before proceeding with your purchase, consider the various types of health insurance plans available in Uganda.</p>\r\n<p>Benefits of Health Insurance<br />After assessing the various kinds of health insurance available, you must be wondering why availing such a plan is essential for you and your loved ones. Look at the reasons listed below to understand why.</p>\r\n<p>Medical Cover&nbsp;-&nbsp;The primary benefit of such insurance is that it offers financial coverage against medical expenditure.<br />Cashless Claim&nbsp;- If you seek treatment at one of the hospitals that have tie-ups with your insurance provider, you can avail cashless claim benefit. This feature ensures that all medical bills are directly settled between your insurer and hospital.<br />Tax Benefits&nbsp;- Those who pay health insurance premiums can enjoy income tax benefits. </p>', NULL, 'policy'),
(83, '2021-11-23 12:15:02', 'pol1083', 'Travel Insurance', '<p>When talking about the different types of insurance policies, one must not forget to learn more about travel insurance plans. Such policies ensure the financial safety of a traveller during a trip. Therefore, when compared to other insurance policies, travel insurance is a short-term cover.</p>', 'travel', '<p>When talking about the different types of insurance policies, one must not forget to learn more about travel insurance plans. Such policies ensure the financial safety of a traveller during a trip. Therefore, when compared to other insurance policies, travel insurance is a short-term cover.</p>\r\n<p>Depending on the provider you choose, travel insurance may offer financial aid at various times, such as during loss of baggage, trip cancellation and much more</p>\r\n<p><strong>Benefits of Travel Insurance</strong><br />The following aspects are covered under travel insurance plans:</p>\r\n<p>Cover Flight Delay - Flight delays or cancellations can lead to significant losses for the passenger. If you buy travel insurance, you can claim such financial losses from the insurer.<br />Baggage Loss/Delay - Travel insurance lets you claim monetary assistance if there is a delay or you happen to lose your luggage during the trip. With this amount, you can purchase some of the necessary items.<br />Reclaim Lost Travel Documents - Visa and passport are essential documents during an international trip. Opting for international travel insurance ensures that you have the necessary financial backing to reapply for interim or replacement documents as and when necessary.<br />Trip Cancellation Cover - A sudden death in the family or a medical emergency may play spoilsport with your travel arrangements. Thankfully, international travel insurance plans support trip cancellations in such events. You can claim financial assistance to pay penalties and cancellation charges for flights, hotels, etc.<br />Make sure that you choose an insurer carefully, especially a company that is reliable and available 24x7 to assist you.</p>', NULL, 'policy'),
(84, '2021-11-23 12:17:19', 'pol1084', 'Property Insurance', '<p>Any building or immovable structure can be insured through property insurance plans. This can be either your residence or commercial space. If any damage befalls such a property, you can claim financial assistance from the insurance provider. Keep in mind that such a plan also financially safeguards the content inside the property.</p>\r\n', 'prop', '<p>Any building or immovable structure can be insured through property insurance plans. This can be either your residence or commercial space. If any damage befalls such a property, you can claim financial assistance from the insurance provider. Keep in mind that such a plan also financially safeguards the content inside the property.</p>\r\n<p><strong>Benefits of Property Insurance</strong><br />If you still think that property cover is not one of the types of insurance plans you need to avail, take a look at some of the advantages from the same.</p>\r\n<p>Protection against Fires - While the insurance policy cannot prevent fires, it can prevent financial liabilities from such an event.<br />Burglaries - If your property exists in an area prone to theft and burglaries, such a policy is vital to ensure financial security.<br />Floods - In certain parts of India, floods are common. These floods can ravage your property leading to substantial losses. Property insurance also protects against such events.<br />Natural Calamities - The plan also offers financial aid against damage arising from earthquakes, storms and more.<br />Rebuilding or renovation of a property is immensely expensive. Thus, property insurance policies are the best option to ensure long-term financial health.</p>', NULL, 'policy'),
(85, '2021-11-23 12:19:27', 'pol1085', 'Mobile Insurance', '<p>Owing to the rising price of mobile phones and their several applications today, it has become imperative to insure the device. Mobile insurance allows you to reclaim money that you spend on repairing your phone in the event of accidental damage.</p>\r\n', 'mobile', '<p>Owing to the rising price of mobile phones and their several applications today, it has become imperative to insure the device. Mobile insurance allows you to reclaim money that you spend on repairing your phone in the event of accidental damage.</p>\r\n<p>Further, you can also claim the same in case of phone theft, making it easier to replace the handset with a new phone.</p>\r\n<p><strong>Benefits of Mobile Insurance</strong><br />Mobile insurance policies are extremely beneficial, especially for those who own a premium smartphone.</p>\r\n<p>Comprehensive protection for new devices - The value of phones tend to decline with time. Thus, when the handset is new, phone insurance can help safeguard its significant value.<br />Coverage against Damage to Screen - If you accidentally damage the smartphone screen, which is one of the most important parts of such devices, your insurance plan will pay for the repair expenses.<br />Theft or Robbery of Smartphone - Nothing is worse than buying your dream smartphone and losing it due to theft or burglary. Well, phone insurance will help you afford a replacement handset if such an unfortunate thing happens.<br />Some insurers may not allow you to buy insurance for the smartphone after a month or two passes from the purchase of the handset.</p>', NULL, 'policy'),
(86, '2021-11-23 12:20:23', 'pol1086', 'Cycle Insurance', '<p>Bicycles are valuable properties in Uganda as some people rely on these vehicles for their daily commute. A cycle insurance policy ensures that you have access to necessary funds should your bicycle undergo accidental damage or theft. It saves your out of pocket expenses, while also ensuring immediate repairs to the vehicle.</p>\r\n', 'cycle', '<p>Bicycles are valuable properties in Uganda as some people rely on these vehicles for their daily commute. A cycle insurance policy ensures that you have access to necessary funds should your bicycle undergo accidental damage or theft. It saves your out of pocket expenses, while also ensuring immediate repairs to the vehicle.</p>\r\n<p><strong>Benefits of Cycle Insurance</strong><br />The advantages of availing such an insurance policy are:</p>\r\n<p>Worldwide Coverage - Depending on the insurance provider, cycle insurance policies provide financial assistance regardless of where your bicycle undergoes damage. Even if you meet with a cycling accident in a different country, such a plan will offer aid.<br />Protection against Fires and Riots - If your bicycle sustains damage due to accidental fires and/or rioting, insurance policies will provide the necessary financial assistance to repair or undo the damage.<br />Accidental Death Benefit - If you pass away due to bicycle accidents, the insurance policy for the cycle would offer a lump-sum payout to your surviving family members.<br />Regardless of your cycle&rsquo;s price, opting for insurance can reduce your financial liabilities significantly.</p>', NULL, 'policy'),
(87, '2021-11-23 12:22:29', 'pol1087', ' Bite-Size Insurance', '<p>Bite-sized insurance policies refer to sachet insurance plans that minimise your financial liability for a very limited tenure, generally up to a year.</p>\r\n<p>These insurance plans allow you to protect your finances against specific damage or threats.&nbsp;</p>\r\n', 'bite', '<p>Bite-sized insurance policies refer to sachet insurance plans that minimise your financial liability for a very limited tenure, generally up to a year.</p>\r\n<p>These insurance plans allow you to protect your finances against specific damage or threats.&nbsp;</p>\r\n<p>For instance, particular bite-sized insurance may offer accidental cover of ugx 10,000 for a year.&nbsp;You can choose this policy when you think you might be particularly susceptible to accidental injuries.</p>\r\n<p>Another example is insurance cover for specific diseases. For instance, if your area is prone to water-borne diseases, such as cholera, you can pick a policy that covers cholera treatment and all associated costs for a 1-year period.&nbsp;</p>\r\n<p>Benefits of Bite-sized Insurance<br />The primary benefit of bite-size insurance policies is that it allows you to avail financial protection at very limited prices.</p>\r\n<p>The premiums are so low that it hardly makes any impact on your overall monthly expenditures. In comparison, the sum insured is significant.&nbsp;</p>', NULL, 'policy'),
(88, '2021-11-23 12:29:00', 'gds1088', '<p><strong>Things to Check when buying an Insurance Policy Online</strong><br /><strong>Service benefits</strong>&nbsp;- You should look at Service Benefits like 24*7 Customer Support, Convenient Pick-up &amp; Drop for your vehicle and a Wide Network of Cashless Garages.</p>\r\n<p><strong>Choose the right Sum Insured&nbsp;</strong>- The Right sum insured helps in ensuring that you are completely covered in case of an emergency</p>\r\n<p><strong>Speed of claims of the insurer</strong>&nbsp;- Claims is the reason you buy an insurance. So check how long your insurance company takes to settle claims.</p>\r\n<p><strong>Best value</strong>&nbsp;- If you are satisfied with the service and the Sum Insured, check the premium and the discount you are getting.</p>', NULL, NULL, NULL, NULL, 'guide'),
(89, '2021-11-23 13:15:56', 'pln1089', 'Term Plan', 'pol1079', 'The death benefit from a term plan is only available for a specified period, for instance, 40 years from the date of policy purchase. ', NULL, NULL, 'plan'),
(91, '2021-11-23 13:23:02', 'pk1090', 'Self', '1', NULL, NULL, NULL, 'pac'),
(92, '2021-11-23 13:23:46', 'pk1092', 'Two', '2', NULL, NULL, NULL, 'pac'),
(93, '2021-11-23 13:24:00', 'pk1093', 'Mini Family', '4', NULL, NULL, NULL, 'pac'),
(94, '2021-11-23 13:24:19', 'pk1094', 'Extended Family', '7', NULL, NULL, NULL, 'pac'),
(95, '2021-11-23 13:24:32', 'pk1095', 'Children Pack', '3', NULL, NULL, NULL, 'pac'),
(96, '2021-11-23 13:26:54', 'tm1096', 'Half Year', '6', NULL, NULL, NULL, 'prem_term'),
(97, '2021-11-24 10:36:56', 'pln1097', 'Endowment Plan', 'pol1079', 'Endowment plans are life insurance policies where a portion of your premiums go toward the death benefit, while the remaining is invested by the insurance provider. Maturity benefits, death benefit and periodic bonuses are some types of assistance from endowment policies. ', NULL, NULL, 'plan'),
(98, '2021-11-24 10:37:48', 'pln1098', 'Unit Linked Insurance Plans or ULIPs ', 'pol1079', 'Similar to endowment plans, a part of your insurance premiums go toward mutual fund investments, while the remaining goes toward the death benefit. ', NULL, NULL, 'plan'),
(99, '2021-11-24 10:38:25', 'pln1099', 'Whole Life Insurance ', 'pol1079', 'As the name suggests, such policies offer life cover for the whole life of an individual, instead of a specified term. Some insurers may restrict the whole life insurance tenure to 100 years. ', NULL, NULL, 'plan'),
(100, '2021-11-24 10:38:56', 'pln10100', 'Child’s Plan', 'pol1079', 'Investment cum insurance policy, which provides financial aid for your children throughout their lives. The death benefit is available as a lump-sum payment after the death of parents. ', NULL, NULL, 'plan'),
(101, '2021-11-24 10:39:26', 'pln10101', 'Money-Back', 'pol1079', 'Such policies pay a certain percentage of the plan’s sum assured after regular intervals. This is known as survival benefit. ', NULL, NULL, 'plan'),
(102, '2021-11-24 10:41:26', 'pln10102', 'Retirement Plan', 'pol1079', 'Also known as pension plans, these policies are a fusion of investment and insurance. A portion of the premiums goes toward creating a retirement corpus for the policyholder. This is available as a lump-sum or monthly payment after the policyholder retires. ', NULL, NULL, 'plan'),
(103, '2021-11-24 10:43:11', 'pln10103', 'Third-Party Liability', 'pol1081', 'This is the most basic type of motor insurance cover in Uganda. It is the minimum mandatory requirement for all motorised vehicle owners, as per the Motor Vehicles Act of 1988. Due to the limited financial assistance, premiums for such policies also tend to be low. These insurance plans only pay the financial liability to the third-party affected in the said mishap, ensuring that you do not face legal hassle due to the accident. They, however, do not offer any financial assistance to repair the policyholder’s vehicle after accidents', NULL, NULL, 'plan'),
(104, '2021-11-24 10:43:57', 'pln10104', 'Comprehensive Cover ', 'pol1081', 'Compared to the third-party liability option, comprehensive insurance plans offer better protection and security. Apart from covering third party liabilities, these plans also cover the expenses incurred for repairing the damages to the policyholder’s own vehicle due to an accident. Additionally, comprehensive plans also offer a payout in case your vehicle sustains damage due to fire, man-made and natural calamities, riots and others such instances. Lastly, you can recover your bike’s cost if it gets stolen, when you have a comprehensive cover in place. One can also opt for several add-ons with their comprehensive motor insurance policy that can make it better-rounded. Some of these add-ons include zero depreciation cover, engine and gear-box protection cover, consumable cover, breakdown assistance, etc. ', NULL, NULL, 'plan'),
(105, '2021-11-24 10:44:51', 'pln10105', 'Own Damage Cover', 'pol1081', 'This is a specialised form of motor insurance, which insurance companies offer to consumers. Further, you are eligible to avail such a plan only if you purchased the two-wheeler or car after September 2018. The vehicle must be brand new and not a second-hand one. You should also remember that you can avail this standalone own damage cover only if you already have a third party liability motor insurance policy in place. With own damage cover, you basically receive the same benefits as a comprehensive policy without the third-party liability portion of the policy. ', NULL, NULL, 'plan'),
(106, '2021-11-24 10:46:16', 'pln10106', 'Individual Health Insurance ', 'pol1082', 'These are healthcare plans that offer medical cover to just one policyholder. ', NULL, NULL, 'plan'),
(107, '2021-11-24 10:46:54', 'pln10107', 'Family Floater Insurance ', 'pol1082', 'These policies allow you to avail health insurance for your entire family without needing to buy separate plans for each member. Generally, husband, wife and two of their children are allowed health cover under one such family floater policy. ', NULL, NULL, 'plan'),
(108, '2021-11-24 10:47:45', 'pln10108', 'Critical Illness Cover', 'pol1082', 'These are specialised health plans that provide extensive financial assistance when the policyholder is diagnosed with specific, chronic illnesses. These plans provide a lump-sum payout after such a diagnosis, unlike typical health insurance policies. ', NULL, NULL, 'plan'),
(109, '2021-11-24 10:48:32', 'pln10109', 'Senior Citizen Health Insurance', 'pol1082', 'As the name suggests, these policies specifically cater to individuals aged 60 years and beyond. ', NULL, NULL, 'plan'),
(110, '2021-11-24 10:51:23', 'pln10110', 'Group Health Insurance ', 'pol1082', 'Such policies are generally offered to employees of an organisation or company. They are designed in such a way that older beneficiaries can be removed, and fresh beneficiaries can be added, as per the company’s employee retention capability. ', NULL, NULL, 'plan'),
(111, '2021-11-24 10:52:07', 'pln10111', 'Maternity Health Insurance ', 'pol1082', '    • These policies cover medical expenses during pre-natal, post-natal and delivery stages. It covers both the mother as well as her newborn. \r\n    • Personal Accident Insurance - These medical insurance policies only cover financial liability from injuries, disability or death arising due to accidents. ', NULL, NULL, 'plan'),
(112, '2021-11-24 10:52:56', 'pln10112', 'Preventive Healthcare Plan ', 'pol1082', 'Such policies cover the cost of treatment concerned with preventing a severe disease or condition. ', NULL, NULL, 'plan'),
(113, '2021-11-24 10:54:49', 'pln10113', 'Domestic Travel Insurance', 'pol1083', 'This is the kind of travel insurance policy that safeguards your finances during travels within India. However, if you plan to step outside the country for a vacation, such a policy would not offer any aid. ', NULL, NULL, 'plan'),
(114, '2021-11-24 10:55:25', 'pln10114', 'International Travel Insurance ', 'pol1083', 'If you are stepping out of the country, ensure you pick an international travel insurance plan. It allows you to cover the unforeseen expenses that can arise during your trip like medical emergencies, baggage loss, loss of passport, etc. ', NULL, NULL, 'plan'),
(115, '2021-11-24 10:59:15', 'pln10115', 'Home Holiday Insurance', 'pol1083', 'When you are travelling with family, your home remains unguarded and unprotected. Chances of burglary are always significant, which may lead to significant losses. Thankfully, with home holiday insurance plans, which are often included within travel policies, you are financially protected from such events as well.', NULL, NULL, 'plan'),
(116, '2021-11-24 11:01:41', 'pln10116', 'Home Insurance', 'pol1084', 'With such a policy, you remain free from all financial liabilities that may arise from damage to your home or contents inside due to fires, burglaries, storms, earthquakes, explosions and other events. ', NULL, NULL, 'plan'),
(117, '2021-11-24 11:04:26', 'pln10117', 'Shop Insurance ', 'pol1084', 'If you own a shop, which acts as a source of income for you, it is integral to protect yourself from financial liability arising from the same. Whether the liability occurs due to natural calamities or due to accidents, with these plans, you can immediately undertake repairs to the shop. ', NULL, NULL, 'plan'),
(118, '2021-11-24 11:05:40', 'pln10118', 'Office Insurance', 'pol1084', 'Another type of property insurance policy, office insurance ensures that the office building and all the equipment inside are significantly protected in the event of unforeseen events. Generally, office spaces include expensive equipment, such as computers, servers and much more. Thus, availing these plans is essential. ', NULL, NULL, 'plan'),
(119, '2021-11-24 11:06:31', 'pln10119', 'Building Insurance', 'pol1084', 'If you own a complete building, opting for home insurance may not be sufficient. Instead, you can purchase building insurance to cover the entire premises. ', NULL, NULL, 'plan'),
(120, '2021-11-24 12:30:39', 'pk10120', 'Piece', '1', NULL, NULL, NULL, 'pac'),
(121, '2021-12-15 17:16:07', 'loc211215121607', 'Bwaise', NULL, NULL, NULL, NULL, 'loc'),
(122, '2021-12-15 17:18:21', 'brc10122', 'Bindeeba', 'loc211215121607', NULL, NULL, NULL, 'branch');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `autoid` int NOT NULL,
  `autodate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ouruser` text,
  `owner` text,
  `methodid` text,
  `amount` text,
  `datepaid` text,
  `approver` text,
  `status` int NOT NULL DEFAULT '0',
  `share_id` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`autoid`, `autodate`, `ouruser`, `owner`, `methodid`, `amount`, `datepaid`, `approver`, `status`, `share_id`) VALUES
(1, '2020-09-25 07:21:43', 'tech4', 'mr275', 'pm200924064003', '100000', '2020-09-25', NULL, 0, 'sh200925062143');

-- --------------------------------------------------------

--
-- Table structure for table `useractivity`
--

CREATE TABLE `useractivity` (
  `autoid` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activity` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `userid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `deviceid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `browser` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `previouspage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `currentpage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `stage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `leadid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `orgid` text CHARACTER SET latin1 COLLATE latin1_swedish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useractivity`
--

INSERT INTO `useractivity` (`autoid`, `date`, `activity`, `userid`, `deviceid`, `browser`, `previouspage`, `currentpage`, `stage`, `leadid`, `orgid`) VALUES
(1, '2022-09-07 19:36:14', 'On page', 'cls211125065506', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_nominees.php', '/DBOt/ais/pages/client_plans.php', NULL, NULL, NULL),
(2, '2022-09-07 19:36:20', 'On page', 'cls211125065506', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_plans.php', '/DBOt/ais/pages/client_nominees.php', NULL, NULL, NULL),
(3, '2022-09-07 19:36:23', 'On page', 'cls211125065506', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_nominees.php', '/DBOt/ais/pages/client_payments.php', NULL, NULL, NULL),
(4, '2022-09-07 19:36:31', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(5, '2022-09-07 19:36:39', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/', '/DBOt/ais/pages/hardlog.php', NULL, NULL, NULL),
(6, '2022-09-07 19:38:53', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/hardlog.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(7, '2022-09-07 19:40:20', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(8, '2022-09-07 19:41:28', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(9, '2022-09-07 19:42:07', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(10, '2022-09-07 19:47:43', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(11, '2022-09-07 19:48:31', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(12, '2022-09-07 19:50:03', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(13, '2022-09-07 19:50:45', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(14, '2022-09-07 19:52:19', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(15, '2022-09-07 19:53:27', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(16, '2022-09-07 19:54:18', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(17, '2022-09-07 19:54:27', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(18, '2022-09-07 19:54:31', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(19, '2022-09-07 19:54:35', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(20, '2022-09-07 19:55:15', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(21, '2022-09-07 19:55:22', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(22, '2022-09-07 19:55:34', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(23, '2022-09-07 20:04:42', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(24, '2022-09-07 20:04:50', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(25, '2022-09-07 20:09:23', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(26, '2022-09-07 20:09:29', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(27, '2022-09-07 20:09:36', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(28, '2022-09-07 20:09:40', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(29, '2022-09-07 20:09:51', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(30, '2022-09-07 20:10:01', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(31, '2022-09-07 20:10:03', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(32, '2022-09-07 20:13:38', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(33, '2022-09-07 20:13:40', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/index.php', '/DBOt/ais/pages/multi_inputs.php', NULL, NULL, NULL),
(34, '2022-09-07 20:13:41', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/multi_inputs.php', '/DBOt/ais/pages/agents.php', NULL, NULL, NULL),
(35, '2022-09-07 20:13:44', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/agents.php', '/DBOt/ais/pages/agents.php', NULL, NULL, NULL),
(36, '2022-09-07 20:13:45', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/agents.php', '/DBOt/ais/pages/plan_prices.php', NULL, NULL, NULL),
(37, '2022-09-07 20:13:53', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/plan_prices.php', '/DBOt/ais/pages/risk_assessment.php', NULL, NULL, NULL),
(38, '2022-09-07 20:13:56', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/risk_assessment.php', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(39, '2022-09-07 20:14:43', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(40, '2022-09-07 20:15:56', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(41, '2022-09-07 20:15:58', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(42, '2022-09-07 20:17:50', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(43, '2022-09-07 20:18:05', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(44, '2022-09-07 20:18:43', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(45, '2022-09-07 20:19:27', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(46, '2022-09-07 20:19:53', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_requests.php', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(47, '2022-09-07 20:22:27', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(48, '2022-09-07 20:22:29', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_requests.php', '/DBOt/ais/pages/make_assessment.php', NULL, NULL, NULL),
(49, '2022-09-07 20:22:59', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', '', '/DBOt/ais/pages/make_assessment.php', NULL, NULL, NULL),
(50, '2022-09-07 20:23:08', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/make_assessment.php?asin=cls286&mem=pln1089', '/DBOt/ais/pages/client_requests.php', NULL, NULL, NULL),
(51, '2022-09-07 20:23:21', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_requests.php', '/DBOt/ais/pages/systemlock.php', NULL, NULL, NULL),
(52, '2022-09-07 20:23:23', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/systemlock.php', '/DBOt/ais/pages/hardlog.php', NULL, NULL, NULL),
(53, '2022-09-07 20:23:28', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/hardlog.php', '/DBOt/ais/pages/risk_assessment.php', NULL, NULL, NULL),
(54, '2022-09-07 20:25:09', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(55, '2022-09-07 20:25:15', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/', '/DBOt/ais/pages/client_plans.php', NULL, NULL, NULL),
(56, '2022-09-07 20:25:23', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_plans.php', '/DBOt/ais/pages/client_nominees.php', NULL, NULL, NULL),
(57, '2022-09-07 20:25:27', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_nominees.php', '/DBOt/ais/pages/client_payments.php', NULL, NULL, NULL),
(58, '2022-09-07 20:25:31', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/client_payments.php', '/DBOt/ais/pages/client_tips.php', NULL, NULL, NULL),
(59, '2022-09-07 21:33:57', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(60, '2022-09-07 21:39:00', 'On page', 'tech4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/', '/DBOt/ais/pages/multi_inputs.php', NULL, NULL, NULL),
(61, '2022-09-07 21:55:49', 'On page', 'agt4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(62, '2022-09-07 21:55:52', 'On page', 'agt4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/', '/DBOt/ais/pages/index.php', NULL, NULL, NULL),
(63, '2022-09-07 21:55:57', 'On page', 'agt4', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/pages/index.php', '/DBOt/ais/pages/clients.php', NULL, NULL, NULL),
(64, '2022-09-07 22:03:35', 'On page', 'cls286', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0', 'http://localhost/DBOt/ais/index.php', '/DBOt/ais/pages/index.php', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `autoid` int NOT NULL,
  `role` text,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` text,
  `lastname` text,
  `phonenumber` text,
  `ouruser` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `email` text,
  `username` text,
  `fulltitle` text,
  `status` text,
  `rolenumber` text,
  `img` text,
  `nin_number` text,
  `dbirth` text,
  `branch` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `marital` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `address` text,
  `gender` text,
  `fsize` text,
  `occupation` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`autoid`, `role`, `datecreated`, `firstname`, `lastname`, `phonenumber`, `ouruser`, `email`, `username`, `fulltitle`, `status`, `rolenumber`, `img`, `nin_number`, `dbirth`, `branch`, `marital`, `address`, `gender`, `fsize`, `occupation`) VALUES
(3, 'tech', '2016-11-13 17:53:08', 'Nasser', 'Dombo', '0703301150', '', 'dkazibwe@kinglinepress.com', 'dkazibwe', 'Technical', 'active', 'tech4', 'tech4.jpg', '', '', NULL, NULL, '', NULL, NULL, NULL),
(288, 'agt', '2022-09-07 20:09:36', 'Aturinda', 'Peter', '0787773414', NULL, 'aturindapeter@gmail.com', 'apeter', 'Agent', NULL, 'agt283', NULL, NULL, NULL, 'brc1054', NULL, '', '', NULL, NULL),
(277, 'agt', '2021-11-24 12:59:33', 'Dombo', 'Nasser', '0780958321', NULL, 'dombo@gmail.com', 'dnasser', 'Agent', NULL, 'agt4', NULL, NULL, NULL, 'brc1052', NULL, NULL, NULL, NULL, NULL),
(287, 'cls', '2022-09-07 18:40:24', 'kazibwe', 'Davis', '0780959221', 'tech4', 'kazibwedavis@gmail.com', 'dkazibwe', 'Client', '2', 'cls286', NULL, 'CXccehejej', '2022-09-07', 'brc10122', 'M', 'kansanga', 'Female', NULL, 'Ompumbani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment_ans`
--
ALTER TABLE `assessment_ans`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `assessment_qtns`
--
ALTER TABLE `assessment_qtns`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `client_policies`
--
ALTER TABLE `client_policies`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `deletedusers`
--
ALTER TABLE `deletedusers`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `insurance_plans`
--
ALTER TABLE `insurance_plans`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `itempricing`
--
ALTER TABLE `itempricing`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `keyfields`
--
ALTER TABLE `keyfields`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `scrap`
--
ALTER TABLE `scrap`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `useractivity`
--
ALTER TABLE `useractivity`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`autoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment_ans`
--
ALTER TABLE `assessment_ans`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assessment_qtns`
--
ALTER TABLE `assessment_qtns`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_policies`
--
ALTER TABLE `client_policies`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deletedusers`
--
ALTER TABLE `deletedusers`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_plans`
--
ALTER TABLE `insurance_plans`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itempricing`
--
ALTER TABLE `itempricing`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keyfields`
--
ALTER TABLE `keyfields`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scrap`
--
ALTER TABLE `scrap`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useractivity`
--
ALTER TABLE `useractivity`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `autoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
