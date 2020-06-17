-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 12:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btec`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `user_id`, `privilege_id`, `status`) VALUES
(4, 4, 2, 1),
(5, 4, 4, 1),
(6, 4, 1, 1),
(7, 4, 3, 1),
(8, 1, 2, 1),
(9, 1, 4, 1),
(10, 1, 1, 1),
(11, 1, 3, 1),
(12, 18, 2, 1),
(13, 18, 1, 1),
(14, 18, 4, 1),
(15, 18, 3, 1),
(37, 4, 5, 1),
(38, 4, 6, 1),
(39, 4, 7, 1),
(40, 4, 8, 1),
(63, 31, 2, 1),
(64, 31, 4, 1),
(65, 31, 1, 1),
(66, 31, 3, 1),
(67, 31, 7, 1),
(68, 31, 8, 1),
(69, 31, 5, 1),
(70, 31, 6, 1),
(71, 3, 2, 1),
(72, 3, 1, 1),
(73, 3, 7, 1),
(74, 3, 5, 1),
(75, 3, 6, 1),
(76, 4, 9, 1),
(77, 4, 10, 1),
(78, 32, 2, 1),
(79, 32, 4, 1),
(80, 32, 1, 1),
(81, 32, 3, 1),
(82, 32, 7, 1),
(83, 32, 8, 1),
(84, 32, 5, 1),
(85, 32, 6, 1),
(86, 32, 9, 1),
(87, 32, 10, 1),
(88, 3, 4, 1),
(89, 3, 3, 1),
(90, 3, 8, 1),
(91, 3, 10, 1),
(92, 4, 11, 1),
(93, 33, 1, 1),
(94, 33, 2, 1),
(95, 33, 3, 1),
(96, 33, 4, 1),
(97, 33, 5, 1),
(98, 33, 6, 1),
(99, 33, 7, 0),
(100, 33, 8, 0),
(101, 33, 9, 1),
(102, 33, 10, 1),
(103, 33, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(7) UNSIGNED ZEROFILL NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `ssn` int(9) UNSIGNED ZEROFILL NOT NULL,
  `street` varchar(75) DEFAULT NULL,
  `ctv` varchar(75) DEFAULT NULL,
  `district` varchar(75) DEFAULT NULL,
  `country` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `home_phone` int(7) DEFAULT NULL,
  `mobile_phone` int(7) DEFAULT NULL,
  `ec_name` varchar(30) DEFAULT NULL,
  `ec_number` int(7) DEFAULT NULL,
  `ec_relation` varchar(75) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(75) DEFAULT NULL,
  `ref_name1` varchar(75) DEFAULT NULL,
  `ref_address1` varchar(75) DEFAULT NULL,
  `ref_city1` varchar(75) DEFAULT NULL,
  `ref_phone1` int(7) DEFAULT NULL,
  `ref_name2` varchar(75) DEFAULT NULL,
  `ref_address2` varchar(75) DEFAULT NULL,
  `ref_city2` varchar(75) DEFAULT NULL,
  `ref_phone2` int(7) DEFAULT NULL,
  `ref_name3` varchar(75) DEFAULT NULL,
  `ref_address3` varchar(75) DEFAULT NULL,
  `ref_city3` varchar(75) DEFAULT NULL,
  `ref_phone3` int(7) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_img_id` int(11) DEFAULT NULL,
  `is_client` int(1) NOT NULL,
  `ed_degree` varchar(150) NOT NULL,
  `ed_name` varchar(150) NOT NULL,
  `employed_at` varchar(150) DEFAULT NULL,
  `em_position` varchar(150) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `is_enrolled` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000001, 'Buckley', 'Aaron', 'E', 000107204, '4 Ebony St.', 'Belize City', 'Belize', 'Belize', 'kayaeternity@yahoo.com', 2272316, 6014314, NULL, 6228104, 'Aunt', 'M', '1975-04-14', 'Single', 'Sarita Staine', NULL, 'Belize City', 6275342, 'Marc McNeil', 'Granda Hills', 'Los Angele, CA', NULL, 'Adrain Gibson', NULL, 'Belize City', 6002969, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000002, 'Arnold', 'Melissa', NULL, 000000000, '#5 Casuarina st', NULL, NULL, NULL, NULL, NULL, 6248477, NULL, 6247628, 'Sisterss', 'F', '1992-10-21', 'Single', 'Dr. Lorna Mckay', 'Antelope St', 'Belize City', NULL, 'Ms. Gina Middleton', 'Antelope St.', 'Belize City', NULL, 'Ms. Gentle', 'Antelope St.', 'Belize City', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000003, 'Gutierrez', 'Elsie', 'D', 000047665, '#8 Hicatee Street', 'Belize City', 'Belize', 'Belize', 'Elisegutierrez67@yahoo.com', NULL, 6679597, 'Robert Gutierrez', 6622086, 'Son', 'F', '1968-01-12', 'Widowed', 'Mrs. Sharlane Hemsley', 'Belize City', 'Belize', 6672371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000004, 'King', 'Chanelle', 'Tisha', 000000000, '4 Kelly Street', 'Belize City', 'Belize ', 'Belize', 'Kingchanelle@yahoo.com', 2230168, 6322153, 'Joan King', 6001808, 'Mother', 'F', '1995-01-04', 'Single', 'Orville Melendez', NULL, 'Belize', NULL, 'Gilbert Banner', NULL, 'Belize', NULL, 'Melissa Arnold', '3 Goal Lane', 'Belize', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000005, 'Nunez', 'Briana', NULL, 000000000, '315 Flores Street', '8 MILES', 'Belize', 'Belize City', 'brittneynunez1996@gmail.com', NULL, 6001118, NULL, 6232475, NULL, 'F', '1996-01-18', 'Single', 'Jolene Middleton', 'Ontario', 'Cayo District', 6057864, 'Agnis Menzies', 'Belama area', 'Belize rural', 6331779, 'Deborah Martin', NULL, 'Belize City', 6007794, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000006, 'Perefils', 'Sendy-Love', NULL, 000468867, '8030 Mahogany Franklin', 'Belize City', 'Belize', 'Belize', 'Sendylove19@gmail.com', NULL, 6667841, 'Perefils Jn. Claude', 6643690, 'Father', 'F', '1995-03-14', 'Single', 'Rose Mortis', '132 cetsite', 'Belice City', 6006449, 'Ms. Jaclyn Swasey', 'corner morning glory&partridge St.', 'Belize City', 6010508, 'Malaak Middleton', NULL, NULL, 6613814, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000007, 'Ramos', 'Addington', 'G', 000000000, '24 Gabourel l.', 'Belize City', NULL, 'C.A', NULL, 6275419, 6645784, 'Gilda', 6275419, 'Mom', 'M', '1973-08-06', 'Single', 'Zetimia Jones', NULL, NULL, NULL, 'Dean Tillet', 'ITTVET', 'Belize', NULL, 'Dion Hall', 'youth of future', 'Belmopan', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000008, 'Samuels', 'Briyana', 'Shahida', 000194295, '19 Farwest Street', 'Belize', NULL, 'Belize', 'farahbabygirl2002@yahoo.com', 2070164, 6640764, 'Bernadette Samuels', 6522715, 'Mother', 'F', '1997-09-22', 'Single', 'Vienie Robinson', '8847 Barbados Street', 'Belmopan', 6006002, 'Vanesa Austin', 'Prince Street', 'Belize', 6236090, 'Rheonna Rivero', 'Hattiville Newsite', 'Belize', 6303317, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000009, 'Swift', 'Samantha', 'J', 000181704, '60 King Street', 'Belize', 'Belize', 'Belize', 'samswift76@gmail.com', NULL, 6022887, 'Sarita Gillett', 6056597, 'Mother', 'F', '1976-12-25', 'Single', 'Sarita Staine', '7 Mahogany street', 'Belize', 6275342, 'Martha Jonch', '5621 Lizarraga Ave', 'Belize', 6297961, 'Jacqueline Coleman-Banks', '5 Cairo Street', NULL, 6508953, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000010, 'Tillett', 'Raquel', NULL, 000177512, '50 Euphrates Ave', 'Belize', 'Belize', 'Belize', 'babyrasco3@yahoo.com', 2274009, 6074758, NULL, 6242080, 'Mom', 'F', '1976-10-30', 'Single', 'Landice Smith', 'Los Lagos', 'Ladyville', 6228203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000011, 'Welch', 'Tyra', 'T', 000360779, '9888 Jane Usher', 'Belize', 'Belize', 'Belize', 'tyraw8t@yahoo.com', 2030612, 6203049, 'Sonia Lino', 6606583, 'Mother', 'F', '1994-09-03', 'Single', 'Esther Diego', '9887 Jane usher', 'Belize City', 6200819, 'Shawn Swift', '1271 jane Usher', 'Belize City', NULL, 'James Gadoul', '9872 Jane Usher', 'Belize', 6204141, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000012, 'Moses', 'Dylana', 'E', 000382168, '40 Magazine Road', 'Belize', 'Belize', 'Belize', 'dylanamoses@gmail.com', 2273001, 6345493, 'Julie Moses', 6004453, 'Mother', 'F', '1990-12-31', 'Single', 'Denise Gillett', NULL, 'Burrell Boom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000013, 'Richards', 'Marcelli', 'V', 000378523, '#58 Sunset Park', 'Belize', 'Belize', 'Belize', 'tappa tappa69@gmail.com', NULL, 6338198, NULL, 6013871, 'Parents', 'F', '1980-12-02', 'Single', 'Martha richards', '#58 Sunset Park', 'Belize Cuty', 6013871, 'Zenon Forman', '36 Lawrence Ave', 'Belize City', 6327098, 'Badir Yamanel', 'New town Barracks', 'Belize City', 6105227, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000014, 'Thompson', 'Joseph', 'Wellington', 000194618, '6959 lavender Street', 'Belize City', 'Belize', 'Belize', 'joseph_t_2@hotmail.com', NULL, 6014428, 'Yvonne Thompson', 6211602, 'Mother', 'M', '1994-02-14', 'Single', 'Canng Carballo', NULL, 'Belize City', 6078183, 'Brenda Hyde', NULL, 'Lord\'s Bank', 6315609, 'Vern White', NULL, 'Belize City', 6285622, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000015, 'Torres', 'Symone', 'Taylor', 000000000, '9864 J.R Street', 'Belize', 'Belize', 'Belize', 'symonetorres@yahoo.com', NULL, 6309093, NULL, 6326237, NULL, 'F', '1991-03-04', 'Single', 'Mr. Frazer', NULL, 'Cayo', 6639388, 'Mr. Eugene Broaster', NULL, 'Belize City', 6283302, 'Mr Leon Khan Haripal', NULL, 'Belize City', 6304553, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000016, 'Usher', 'Anisita', 'A', 000384899, '4 Wagner Lane', 'Belize', 'Belize', 'Belize', 'aniusher@yahoo.com', NULL, 6020389, 'Haidi Usher', 6216573, 'Sister', 'F', '1988-08-15', 'Single', 'Aldo Vadas', '4 C.A Blvd.', 'Belize', 63332358, 'AB Tec', 'St Thomas St.', 'Belize', NULL, 'Sapphira Felix', 'South St', 'Belize City', 6249904, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000017, 'Wade', 'Leslie', 'Alisha', 000000000, '#7254 Kraal road', 'Belize', 'Belize', 'Belize', 'alisha_wade92@yahoo.com', NULL, 6618047, 'Leticia', 6513068, 'Mother', 'F', '1992-02-14', 'Common-Law', 'Fred lambey', 'Rose Street', 'Independence Village', 6500493, 'Irvin pitts', '#7257 Kraal road', 'Belize', 6029999, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000018, 'Williams', 'Edwin', NULL, 000359292, '6699 Police St', 'Belize City', 'Belize', 'Belize', 'Edwayne_Williams@', 2024936, 6325084, NULL, 6284239, NULL, 'M', '1992-03-02', 'Single', 'Olinia Tasher', 'San Pedro', 'San Pedro', 6215317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000019, 'Williams', 'Marissa', 'M', 000481049, '#7 Joe Lewis Road, ', 'Ladyville Village', 'Belize', 'Belize', 'williamsmaurissa@yahoo.com', NULL, 6640739, NULL, 6659317, 'Mother/Father', 'F', '1997-09-12', 'Single', 'Shermane Diaz', '#7 Joe Lewis Road', 'Ladyville village', 6659317, 'Michele Bernard', '168 Mitchell Estate', 'Ladyville village', 6348364, 'Jerome Williams', NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000020, 'Staine', 'Angelita', NULL, 000000000, '4 Ebony', 'Belize', 'Belize', 'Belize', 'astaine23@gmail.com', 2074967, 6228104, NULL, 6275342, NULL, 'F', '1990-01-03', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000021, 'Williams', 'Paul', NULL, 000292013, NULL, 'Belize', 'Belize', 'Belize', 'pmw_C@yahoo.com', NULL, 6276984, 'Elvira', 6305528, 'Mother', 'M', '1995-11-14', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000022, 'Palacio', 'Mary', 'T', 000000000, '#2 colnet weight& Fairweather', 'Belize City', 'Belize', 'Belize', NULL, 2075405, 6325911, 'Martha Mortis', 6256198, NULL, 'F', '1993-03-24', 'Common-Law', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000023, 'Almendarez', 'Elias', 'Jesus', 000476594, '271 Bauhinia', 'Belize', 'Belize', 'Belize', 'eliasalmendarez_93@live.com', NULL, 6211924, 'Esmeralda Almendarez', 6040990, 'Mother/Son', 'M', '1993-08-28', 'Single', 'Ms. Nora Arana', 'Landiver Campus, Princess Margaret Drive', 'Belize', 6077044, 'Mr. Joseph Kemp', NULL, 'Belize', 6208620, 'Ms. Fidelia Cuellar', 'Holy redeemer Primary School', 'Belize', 2245389, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000024, 'Armstrong', 'Randolph', 'E', 000381535, '16 miles George price highway', 'Belize', 'Belize', 'Belize', 'randolpharmstrong@yahoo.com', NULL, 6216375, 'Therese Tescum', 2056027, 'Mother', 'M', '1994-10-10', 'Single', 'James Sanker', 'Hattieville', 'Belize', 6621262, 'Mark Sommerville', 'Hattieville Village', 'Belize', 6688860, 'Mark Arnold', 'Hattieville', 'Belize', 6028991, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000025, 'Arthurs', 'Kara', 'Raquel', 000364694, '19 Orange Street', 'Belize City', 'Belize', 'Belize', 'karaarthurs@hotmail.com', NULL, 6256755, 'Princess Humes', 6044958, 'Mother', 'F', '1989-01-06', 'Single', 'Vcky Heredia', 'Vista Del Mar', 'Belize City', 6000785, 'Joseph Nunez', 'Dolphin Street', 'Belize', 6250754, 'Olga Hernandez', 'George Street', 'Belize City', 6351724, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000026, 'Austin', 'Latifah', NULL, 000000000, '35 Marage Road', 'Ladyville', 'Belize ', 'Belize', 'slongsworth27@gmail.com', NULL, 6662498, NULL, 6006647, 'Friends', 'F', '1992-05-19', 'Single', 'Mr. Ashton Ovado', 'mile 26 Philip Goldson Highway', 'Belize', 6204499, 'Mrs. Paula Cattouse', 'mile 14 1/2 Philip Goldson Highway', 'Belize', 2252266, 'Mrs.Cordelia Belezair', '35 Manag Road Ladyville', 'Belize', 239674, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000027, ' Baizar', 'Taryn', 'F', 004671300, '1160 Coney Drive', 'Belize', 'Belize', 'Belize', 'tarynbaizar@yahoo.com', 2234564, 6212027, 'Phyllis Baizar', 6226532, 'Mother', 'F', '1990-03-02', 'Single', 'Stacy Sutherland', NULL, 'Belize City', 6370307, 'Genelle Bradley', '1666 Saint Jude', 'Belize City', 6223700, 'Elswith Ariola', '19 Belama Phase 1', 'Belize City', 6210233, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000028, 'Buckley', 'Akeem', 'M', 000460962, '17Mosel St', 'Belize', 'Belize', 'Belize', 'ak24ford@gmail.com', NULL, 6678889, 'Francine Buckley', 6643428, 'Mother', 'M', '1988-12-30', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000029, 'Casimiro', 'Bethany', NULL, 000358481, '83 Carnation St', 'Lords Bank Ladyville', 'Belize', 'Belize', NULL, NULL, 6628919, 'sharon Sanchez', 6254518, 'Mother', 'F', '1993-06-03', 'Single', 'Richard Staine', 'Hattieville', 'Belize City', 6209494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000030, 'Clother', 'Shaneil', NULL, 000000000, '6 Jane Usher Blvd', 'Belize', 'Belze', 'Belize', 'sclother@yahoo.com', NULL, 6298210, NULL, 6219497, 'Mother&Father', 'F', '1996-09-24', 'Single', 'Darlene Austine', '12 Ben Bow Street', 'Belize', 6053264, 'Cleopatra Whyte', '67 King St', 'Belize', 6213208, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000031, 'Dawson', 'Karol', 'Jennifer', 000511786, '4368 fabers Road', 'Belize City', 'Belize', 'Belize', 'misskaroldawson@gmail.com', NULL, 6050957, 'Mrs Henry', 6235812, NULL, 'F', '1995-07-19', 'Single', 'Matias Ara', '64 Vernon Street', 'Cayo', 6240795, 'Pauline Robateu', '13 Fabers road', 'Belize City', 6337252, 'Patrich Christion', NULL, 'Belize City', 6606005, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000032, 'Diaz', 'Paul', NULL, 000176689, 'Apt.#8 Faber\'s Road', 'Belize', 'Belize', 'Belize', 'pauldiaz888@yahoo.com', 6236716, 6051573, 'Tiffany Diaz', 6236716, 'Mother', 'M', '1994-04-22', 'Single', 'Jeremy McCulloch', 'Double Head Cabbage', 'Belize', NULL, 'Phyllis Baizar', '1160 Coney Dive', 'Belize', 6216532, 'Sharon August', NULL, 'Belize City', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000033, 'Dixon', 'Courtney', NULL, 000000000, '3519 Baracat & Gillot', 'Belize', 'Belize', 'Belize', 'ashydixon@gmail.com', NULL, 6309887, 'Nery Gladden', 2034713, 'Grandmother', 'F', '1995-06-07', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000034, 'Dominguez', 'Hugo', NULL, 000277089, 'Sto. Maria St.', 'Halls Layout', 'Corozal', 'Belize', 'hugo6ran@hotmail.com', NULL, 6321980, 'Norma Dominguez', 6520039, 'Mother', 'M', '1985-06-12', 'Single', 'Joanna Magana', NULL, 'Corozal Town', 6076242, 'Lupe Villanueva', NULL, 'San Pedro town', 6026578, 'Noemi Vasquez', NULL, 'Corozal Town', 6601398, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000035, 'Dyer', 'Arkel', NULL, 000000000, 'Gwendolyn Bainton St.', 'Hattieville', 'Belize', 'Belize', 'arkeldyer@yahoo.com', NULL, 6332355, NULL, 6006026, 'Father/Common-law', 'F', '1994-09-24', 'Common-Law', 'Mrs.Alom Hall', NULL, 'Belize', 6053501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000036, 'Flowers', 'Carolyn', NULL, 000086186, NULL, NULL, NULL, NULL, 'cargirl302003@yahoo.com', 2429255, 6325656, NULL, 6070543, 'Husband', 'F', '1973-02-16', 'Married', 'Angela Robateu', 'Fabers Rd.', 'Belize City', 6352079, 'Sheila Robateu', 'Hattieville', 'Belize', 6074306, 'Michelle Smith', 'Fabers Rd.', 'Belize City', 6022896, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000037, 'Garcia', 'Jereen', 'E', 000360114, NULL, NULL, NULL, NULL, 'jereengarcia@gmail.com', 6279050, 6342410, 'Agnes Palacio', 6279050, 'Mother', 'F', '1992-10-04', 'Single', 'Jamy daniels', 'Port area Belize', 'Belize City', 6342413, 'Dana garcia', 'Vernon St.', 'Belize City', 6025315, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000038, 'Guillen', 'Clara', 'Ofelia', 000000000, '261 Sir Sandy hunter StreetBelize', 'Belize', 'Belize', 'Belize', 'clarita.ofelia.guillen@gmail.com', NULL, 6240882, 'Beverly Guillen', 6294158, 'Sister', 'F', '1992-07-01', 'Single', 'Lloyd Enriquez', 'University of Belize/Hum Ave,Bmp', 'belize', 6320581, 'Luzanne Gutierrez', '32 Jose maria Street', 'Punta Gorda', 6305810, 'Henry Locario', '22 Hopeville', 'Punta Gorda', 6343401, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000039, 'Haulze', 'Lindsay', NULL, 000000000, NULL, NULL, NULL, NULL, 'lindsaykpc@gmail.com', 2244713, 6226661, NULL, NULL, NULL, 'M', NULL, 'Single', 'Bill Armstrong', 'Coney Drive', 'Belize', 6211691, 'Winter Haulze', 'Victoria Street', 'Belize', NULL, 'Sared', NULL, 'Belize', 6007051, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000040, 'Henry', 'Shanieka', NULL, 000000000, '14 Baracat', 'Belize', 'Belize', 'Belize', NULL, NULL, 6234639, NULL, 6234639, 'Mother', 'F', '1996-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000041, 'Hernandez', 'Philip', 'M', 000367001, '678 Southcreek', 'Belize City', 'belize', 'Belize', 'phillc087@hotmail.com', NULL, NULL, 'Mara Hernandez', 6691096, 'Sister', 'M', '1987-08-05', 'Single', 'Anna Buddan', 'Burrel Boom', 'Boom Burrel', NULL, 'Jason Mejia', 'Belize City', NULL, NULL, 'Jineva Zetina', 'San Pedro', NULL, 6042293, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000042, 'Logan', 'Julia', 'Stephanie', 000000000, '18 Benbow Street', 'Belize', 'Belize', 'Belize', 'julialogan@yahoo.com', 2078264, 6210046, 'Darlene Austin', 6058264, NULL, 'F', '1994-12-28', 'Single', 'Julia', '18 Benbow Street', 'Belize', 6210046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000043, 'Longsworth', 'Anfernee', 'D', 000369264, '7620 Rio Bravo Crescent', 'Belize', 'Belize', 'Belize', 'dalongsworth@gmail.com', NULL, 6290717, 'Desiree Torres', 6635728, 'Mother', 'M', '1995-11-28', 'Single', 'Kevin Torres', '25 Bahamas Avenue', 'Belmopan', 6231757, 'Nadine Williams', 'Belama', NULL, NULL, 'Grace Torres', '7046 Racoon Street', 'Belize City', 6283315, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000044, 'Loredo', 'Sharday', 'Isieni', 000000000, NULL, 'Belize', 'Belize', 'Belize', 'loredosharday@gmail.com', 7222381, 6217998, 'Sharon Nunez', 6240573, 'Mother', 'F', '1994-04-18', 'Sngle', 'Angela Lino', 'Rosewood Street', 'Punta Gorda Town', 6057342, 'Karen Nunez', 'New City area', 'Punta Gorda Town', 6015016, 'Darius Avila', '#14 King street', 'Punta Gorda', 6240104, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000045, 'Loria', 'Einar', 'Giovanni', 000000000, '19 Princess Margaret Drive', 'Belize', 'Belize', 'Belize', 'einarloria@gmail.com', 2233047, 6267229, 'Tereisha Loria', 2233047, 'Mother', 'M', '1974-07-21', 'Single', 'Gustavo Matus', '1268 Sundial Avenue', 'Belize City', 6101909, 'Cesar Olivarez', 'Caesar Ridge Road', 'Belize City', 2274949, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000046, 'Gillett', 'Jacqueline', 'Denise', 000181258, '17.5 Bainsville', 'Hattieville', 'Belize', 'Belize', 'gillettjacqueline2014@hotmail.com', NULL, 6318677, 'Pamela Dyer', 6343356, 'Aunt', 'F', '1978-11-22', 'Married', 'Pamela Dyer', 'Bainsville', 'Hattieville 17.5', 6343356, 'Mr Augustus', 'Belize', 'Belize City', 6004900, 'Michelle Bainton', '17 mile George Price Boul.', 'Hattieville', 6235580, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000047, 'Gordon', 'Karen', 'Arcela', 000363653, '26 LordsBank Rd', 'Ladyville', 'Belize', 'Belize D', NULL, 2052843, 62002576, 'Egbert Gordon', 6231762, 'Father', 'F', '1982-12-30', 'Single', 'Mrs Beverly Brown', 'Teacher Itvet', NULL, NULL, 'Mrs Ardeth Rudon', 'Ladyville tech principal', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000048, 'Hamilton', 'Terilee', 'Kadisha', 000195489, '14 T Street', 'Belize', 'Belize', 'Belize', 'terry_lee1992@live.com', NULL, 6225191, 'Marcella Parks', 6301843, 'Mother', 'F', '1992-11-22', 'Single', 'Sharon Fraser', 'Button Wood Bay', 'Belize City', 6100071, 'Doreen Lamb', 'Lords Bank', 'Belize', 6024485, 'Lloyd Roches', 'Corozal', 'Corozal Town', 6019127, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000049, 'Jones', 'Eric', 'Norman', 000189000, NULL, NULL, NULL, NULL, NULL, NULL, 6280546, 'Karen Jones', 6240953, 'Mother', 'M', '1983-04-04', 'Married', 'Hallet King', 'Caye Caulker', NULL, 6512711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000050, 'Jones', 'Stephanie', 'Geraldine', 000365967, NULL, NULL, NULL, NULL, NULL, NULL, 6686034, 'Yvonne Belisle', 6516288, 'Mother', 'F', '1988-01-27', 'Married', 'Hallet King', NULL, 'Caye Caulker', 6512711, 'Shawna Myers', 'Freedom Street', 'Belize City', 6510265, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000051, 'Landero', 'William', 'A', 000457346, '18 Nargusta St', 'Belize', 'Belize', 'Belize', 'Belize', 6375061, 6269366, 'Geraldine.S', 6375061, 'Common-Law', 'M', '1995-05-03', 'Common-Law', 'Jamy Garcia', 'Zaiden St', 'Santa Elena Cayo', 6002533, 'Marlon Matus', 'C.A Boulevard', 'Belize City', 6249673, 'Stephanie Miranda', 'Bradley St.', 'Cayo', 6299354, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000052, 'Mccoon', 'Ryan', 'Evan', 000000000, 'Newsite', NULL, 'Belize', 'Belize', 'evanmccoon_22@hotmail.com', NULL, 6344181, 'Melver Coleman', 6304554, 'Mother', 'M', '1985-07-09', 'Single', 'Ivan Mccoon', 'Independence village', NULL, 6697466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000053, 'Mendez', 'Shanice', NULL, 000358191, '5403 a.street Kingspark', 'Belize City', 'Belize', 'Belize', 'm.shanice@hotmail.com', NULL, 6072069, 'Brendalee Hamilton', 6616634, 'Mother', 'F', '1993-03-23', 'Single', 'Phyllis Hamilton', 'Mahogany Street', 'Belize City', 6052199, 'Mr. Gilroy Banner', 'Nazarene High School', 'Belize City', 6074692, 'Ms.Brenda Serano', 'Labour Dept.', 'Belize City', 6247468, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000054, 'Myles', 'Steve', NULL, 000000000, 'Courtney Crescent', 'Belize', 'Belize', 'Belize', NULL, NULL, NULL, 'Kadeem Bradley', 6684449, NULL, 'M', '1991-01-13', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000055, 'Parchre', 'Nyrere', NULL, 000000000, '#7 F street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6338052, 'Nyrere', 6338052, NULL, NULL, '1995-03-14', 'Single', 'Mr.Uchesbv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000056, 'Pavon', 'Kemisha', 'Shakira', 000187302, '23 Ceasar Ridge Rd', 'Belize', 'Belize', 'Belize', 'pavonkemisha@yahoo.com', 2070742, NULL, NULL, 6013371, 'Mother', 'F', '1996-03-27', 'Single', 'Kemeria Peters', '34 Ceaser idge Road', 'Belize', 6356916, 'Ann McKenzie', '771 Hibiscus Street', 'Belize', 6047959, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000057, 'Mai', 'Niketa', 'F', 000191511, '7351 Carnation ST.Martins', 'Belize', 'Belize', 'Belize', NULL, NULL, 6204366, 'Gabriel', 6308708, 'Husband', 'F', '1990-10-12', 'Married', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000058, 'Reyes', 'Ramie', 'Nicole', 000381040, '4411 Zacaranda Street', 'Belize City', 'Belize', 'Belize', NULL, 2429700, 6608556, 'Mae Marin', NULL, 'Mother', 'F', '1993-02-08', 'Single', 'Harrison Craford', NULL, 'Belize City', 6272620, 'Karen Daniels', 'Lord\'s Bank', 'Hattieville', 6020416, 'Orville Melendrez', NULL, 'Hattieville', 6020416, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000059, 'Sanchez', 'Kira', NULL, 000000000, '3212 Mopan Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6221210, 'Beverly Sanchez', 6221210, 'Mother', 'F', NULL, 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000060, 'Santiago', 'Mavis', 'Kristy', 000000000, '157 Sunset Park', 'Belize', 'Belize', 'Belize', 'mavissantiag24@yahoo.com', NULL, 6000445, NULL, NULL, NULL, 'F', '1995-12-24', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000061, ' Sutherland', 'Shanice', 'A', 000186913, '6468 Periwickle St.', 'Belize ', 'Belize', 'Belize', 'shawty_girl_shan@hotmail.com', NULL, 6264916, NULL, 6051216, 'Parents', 'F', '1993-07-13', 'Single', 'Mrs.Marcia Everett', '6475 Periwinkle St.', 'Belize', 2234850, 'Mr. Ervin Marine', '6467 Periwinkle St.', 'Belize', 2233225, 'Ms. Teckla Marine', '4411 Zacaranda St.', 'Belize', 6241922, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000062, 'Taibo', 'Chellsea', 'M', 000000001, '13 Miles Northern HWY', 'Ladyville', 'Belize', 'Belize', 'ltiabo@msn.com', NULL, 6252530, 'Karla Tiabo', 6252530, 'Parent', 'F', '1997-10-16', 'Single', 'Sharon Turton', 'Lords Bank Hollywood', 'Ladyville', 6217281, 'Desselyn Requena', '13 Miles Northern HWY', 'Ladyville', 6050909, 'Shevon Graham', '7498 Timmy Dyer Av Fabers Road', 'Belize', 6075083, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000063, 'Thurton', 'Chelsea', 'Charese', 002001881, '18 Iguana street ', 'Belize', 'Belize', 'Belize', 'thurtonchelsea@yahoo.com', 2078791, 6229853, 'Mendith Coleman', 6274482, '   Mother', 'F', '1995-06-27', 'Single', 'Derrick Thompson', '22 Iguana street', 'Belize', 6075932, 'Sappphirar Felix', 'George Street', 'Belize ', 6020389, 'Sheree Walton', '3 zerocode street', 'Belize ', 6223672, '2016-01-01 00:00:00', 1, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000064, 'Thurton', 'Rita', 'Louise', 000000000, '3719 Central American Blvd', 'Belize', 'Belize', 'Belize', 'thurtonrita@yahoo.com', NULL, 6211191, NULL, 6276843, 'Father&Aunt', 'F', '1995-10-29', 'Single', 'Ms. Arnold', NULL, 'Belize City', 6298744, 'Mrs. Bradley', 'E.P.Y.H.S', 'Belize City', 6299411, 'Ms Lexy Garcia', 'Nopcan', 'Belize City', 6333392, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000065, 'Valiencio', 'Haneefa', 'K', 000190123, '65 Race course St', 'Belize', 'Belize', 'Belize', 'haneefavalencio@hotmail.com', NULL, 6240053, 'Caroline Tasher', 6227281, 'Mother', 'F', '1993-08-17', 'Single', 'Bernard Neal', '61 King St', 'Belize', 6238966, 'Rashawn Baptist', 'Mahogany', 'Belize', 6643171, 'Karen Massiah', '47 Racecourse st', 'Belize', 6003185, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000066, 'Vansen', 'Amelia', NULL, 000000000, '28 Fairweather street', 'Belize', 'Belize', 'Belize', 'amelia17@live.com', 2275740, 6600316, 'Teakell Flowers', 6050666, 'Mother', 'F', '1993-08-23', 'Single', 'Shevonn Welch', '159 kut avenue', 'Belize', 6372905, 'Abbigail Hoare', '10 Hibiscus Lane', 'Belize', 6050390, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000067, 'Vernon', 'Ariel', 'Ashlyn', 000357578, '5594Lizarraga Ave', 'Belize', 'Belize', 'Belize', 'ashlyn-15@hotmail.com', NULL, 6025663, 'Audrey Brown', 6072082, 'Mother', 'F', '1991-11-24', 'Single', 'Court Bradley', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000068, 'Young', 'Kera', 'Keeri', 000000000, '10 West Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6330182, 'Joyce Clother', 6077189, 'Sister', 'F', '1996-08-20', 'Common-Law', 'Sharlene', '1 Dunn Street', 'Belize', 6354646, 'Trina Wright', '276 Los Lagos', 'Belize', 6337774, 'Rona Flowers', '49 yorke street', 'Belize', 6229185, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000069, 'Alvarenga', 'Reina', NULL, 000421239, '#Amapola St.', 'Belmopan', 'Cayo', 'Country', 'reinaalvarenga_1992@yahoo.com', NULL, 6346748, 'Michael Sanchez', 6615115, 'Brother', 'F', '1992-11-18', 'Single', 'Jose O. Franco', 'Mariposa St. Los Flores', 'Belmopan', 6504617, 'Michael Sanchez', 'Amapola St.', 'Los Flores', 6615115, 'Cecil Dunn', 'Oreole St', 'Belmopan', 6281175, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000070, 'Augustine', 'Jamira', 'C', 000200199, '17 Eduardo Juan St', 'Santa Elena', NULL, NULL, 'jamiraa_87@yahoo.com', NULL, 6616441, 'Fausta Augustine', 6009084, 'Parents', 'F', '1987-10-08', 'Common-Law', 'Sherry Gibbs', 'San Ignacio', NULL, 8243226, 'Lydia Loskot', 'San Ignacio', NULL, 8243226, 'Thisbe Usher', NULL, 'Belmopan', 6070369, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000071, 'Bernardez', 'Drucilla', 'Petrona', 000000000, '#21 GarbuttCreek St.', 'Belize', 'Belize', 'Belize', 'dbernardez_36@outlook.com', NULL, 6683097, 'Anna Bernandez', 6041132, 'Mother', 'F', '1997-01-29', 'sinlge', 'Brucilla salam', 'Belmopan city', 'Belmopan City', 6358390, 'Rosario Miz', 'Benque viejo Town', 'Cayo', 6343998, 'Mr. Eliseo', 'San Ignacio  ', 'Cayo', 67118130, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000072, 'Boteo', 'Norma', NULL, 000198979, '6 Venezuela', 'Belmopan', 'Cayo', 'Belize', 'norma.boteo@yahoo.com', NULL, 6637152, 'Vitalina Boteo', 6664994, 'Mother', 'F', '1996-01-06', 'Single', 'Carlos Cocom', 'Chile Street', 'Belmopan', 6500166, 'Oscar Barrera', 'Guatemala', 'Belmopan', 6029924, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000073, 'Banner', 'Kaylene', 'Brenda', 000420201, NULL, NULL, NULL, NULL, 'kathlene_wallace@yahoo.com', NULL, 6207022, 'Myrtle Banner', 6234259, 'Grandmother', 'F', '1996-10-30', 'Single', 'Karina Waight', 'Camalote Village', NULL, 6014127, 'Benita Quetzal', 'Oriole Street', 'Belmopan', 6300538, 'Iris Trapp', 'Camalote', NULL, 6015843, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000074, 'Brown', 'Aumry', 'Austin', 000000000, 'Another World Avenue', 'Roaring Creek', 'Cayo', 'Belize', 'aumrybrown@yahoo.com', NULL, 6695164, 'Eldwin Brown', 6606095, 'Brother', 'M', '1997-12-06', 'Single', 'Dorlo Young', 'Another World area', 'Roaring creek', 6340339, 'Kent Fuller', NULL, 'Camalote', 6685359, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000075, 'Burgess', 'Dave', 'Irvin', 000239355, '#9 Macal', 'Belmopan', 'Cayo', 'Belize', 'kimayadeangelie@gmail.com', NULL, 6079401, 'Kimbolean Burgess', 6260458, 'Wife', 'M', '1985-03-03', 'Married', 'Keisha Spaine', 'Sarstoon St. Bmp', 'Belmopan', NULL, 'Paul  Morgan', 'Altun Ha St', 'Omp City', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000076, 'Cal', 'Florentino', 'Dinnes', 000422485, '16 Garza Avenue', 'Belmopan', 'Cayo', 'Belize', 'dinnescal@yahoo.com', NULL, 6513901, 'Rebeca Canchan', 6003805, 'Mother', 'M', '1995-03-18', 'Single', 'Annel Hernandez', '16 Gorza Avenue', 'Belmopan', 6237140, 'Desiree Avila', 'San Ignacio', 'San Ignacio', NULL, 'Andrea Villas', 'libertad', 'Belmopan', 6328482, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000077, 'Castellanos', 'Rafael', 'Vidal', 000000000, 'Sunshine', 'Belmopan', 'Cayo', 'Belize', 'rafaelroberts39@gmail.com', NULL, 6262354, NULL, 6663854, NULL, 'M', '1996-07-28', 'Single', 'Nana Mensuh', 'Punta Gorda', 'Punta Gorda', 6024451, 'Gordel Gordon', 'Independence', 'N/A', 6002000, 'Michaelynn Young', 'Independence', 'N/A', 6212743, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000078, 'Coc', 'Elaido', NULL, 000184317, '#7 Tzuul Street', 'Belmopan', 'Cayo', 'Belize', NULL, NULL, 6611927, 'Maria Rash', 6277517, 'Mother', 'F', '1979-11-03', 'Common-Law', 'Ms. Elaria Mendoza', '#19 Sibun St', 'Belmopan', NULL, 'Mr. Errol Gentle', 'C.E.O.M.O.W.', 'Powerlane Bmp', NULL, 'Dr. Roy Young', 'Manatee Drive', 'Belama', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000079, 'Crawford', 'Brandon', 'Uli', 000000000, NULL, NULL, NULL, NULL, 'brands_8800@yahoo.com', NULL, 6332813, 'Ilda Crawford', 6536192, NULL, 'M', '1998-01-17', 'Single', 'Bay', 'Civic Center', 'Belmopan', 8221545, 'Shirlette Neal', NULL, NULL, NULL, 'Dr. Gerardo Flowers', NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000080, 'Cruz', 'Christie', 'Elizabeth', 000201464, 'Cotton Tree Ulg', NULL, NULL, 'Belize', 'Chrissybonell@gmail.com', NULL, 6308190, 'Denfield Bonell', 6075749, NULL, 'F', '1985-12-10', 'common-Law', 'Bernadette Sentro', 'Cotton Tree', 'Cayo', 6601763, 'Sherleen Bonell', 'Blackman Eddy', 'Cayo', 6053388, 'Grace Avila', 'Belmopan', 'Cayo', 6333003, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000081, 'Dennison', 'karima', 'Nicole', 000178944, '25 Oriole Ave', 'Belmopan', 'Cayo', 'Belize', 'karma_nic@hotmail.com', NULL, 6360253, 'Keron Morey', 6279165, 'Spouse', 'F', '1987-09-08', 'Common-Law', 'Cynthie Cauild', '2 Baracot St', 'Belize', 6249245, 'Yolanda Vasquez', NULL, 'Belize', 6301547, 'Evere Millian', NULL, 'Belize City', 6100153, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000082, 'Diaz', 'Celeste', 'Cecelia', 000000000, 'cooperation avenue roaring creek', NULL, NULL, 'Belize', 'celested_18@yahoo.com', NULL, 6663956, 'Cesar Diaz', 6691520, 'Father', 'F', '1994-04-14', 'Single', 'Lindo Padilla', 'Mountain view', 'Belmopan', 6360048, 'Cesar Diaz', 'Roaring Creek', NULL, 6691520, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000083, 'Escalante', 'Lilia', NULL, 000199424, '9 Manzanilla St.', 'Belmopan', 'Cayo', 'Belize', 'escalante_lilia@yahoo.com', NULL, 6010226, 'Ana Escalante', 6252603, 'Mother', 'F', '1993-02-12', 'Single', 'Reina Alvarenga', 'Amapola St.Las flores', 'Belmopan', 6346748, 'Veronica Escalante', 'Manzanilla St.Las Flores', 'Belmopan', 6336921, 'Eynar melgar', 'Manzanilla St. Las Flores', 'Belmopan', 6652275, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000084, 'Fuller', 'Kieran', 'Keene', 000000000, 'Camalote Village', NULL, NULL, 'Belize', 'kierfuller@gmail.com', 8022469, 6262517, 'Kent Fuller', 6685359, 'Father', 'M', '1995-11-11', 'Single', 'Kent Fuller', 'Camalote Village', 'Cayo District', 6685359, 'Derla Young', 'Roaring creek', 'Cayo', 6340339, 'Kathia Castaneda', '76 Orange Street Bmp', 'Cayo', 8222534, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000085, 'Guiterez', 'Mato', NULL, 000000000, 'Road Creek', 'Belmopan', 'Cayo', 'Belize', 'mateoguiterez@gmail.com', NULL, 6277948, NULL, 6314887, NULL, 'M', '1996-09-12', 'Live with a girl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000086, 'Gutierrez', 'Meagan', 'D', 000429429, '15 Staine St. Mountain View', 'Belmopan', 'Cayo', 'Belize', NULL, 6011513, 6273304, NULL, 6310706, NULL, 'F', '1992-07-16', 'Single', 'Molly Guzman', 'Camalote', NULL, 6029727, 'Janine Middleton', 'Camalote', NULL, 6310706, 'Richard Reid', '9Baboon', 'Belmopan', 8221073, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000087, 'King', 'John', 'Fitzgerald', 000472634, '#4 Pickstock', 'Belize', 'Belize', 'Belize', 'kingjohnfitzgerald@yahoo.com', NULL, 6659583, 'Britney Mcdonald', 6218340, 'Common-Law', 'M', '1993-11-13', 'Common-Law', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000088, 'Mendoza', 'Teffany', 'Tiffara', 000507325, 'Mendoza St.', NULL, 'Belize', 'Belize', 'Stephanimendoza83@yahoo.com', NULL, 6619796, 'Ralph Sr', 6619796, 'Father', 'F', '1994-05-12', 'Single', 'Ralph Sr', 'Esperanza Village', NULL, 6619796, 'Sandra Gibson', 'Esperanza', NULL, 6519020, 'Sharena Mendoza', 'Belize', NULL, 6606186, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000089, 'Menendez', 'Leydi', NULL, 002044440, '38 St.Mthews Village', NULL, NULL, 'Belize', NULL, NULL, 6023134, 'Eva Rodriguez', 6663954, 'Mother', 'F', '1995-09-20', 'Single', 'Ms. Suemi Barrientos', 'St.Martin', 'Belmopan', 6265554, 'Pearla Cucul', 'Las Flores', 'Belmopan', 6312116, 'Tanya Coc', 'St. Martin', 'Belmopan', 6653242, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000090, 'Ramos', 'Abigail', 'Annick', 000000000, '19pineapple Street', 'Belmopan', 'Cayo', 'Belize', 'abigailramos649@yahoo.com', 8022450, 6604542, 'Luke Rmos', 6046354, 'Father', 'F', '1997-10-14', 'Single', 'Luke Ramos', 'Lapineapple', 'Belmopan', 6046354, 'Sharon Palacio', 'Mamiapple', 'Belmopan', 6354796, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000091, 'Sacasa', 'Rahyme', 'Dayton', 000000000, '7 brown street', 'Belmopan', 'Cayo', 'Belize', 'rahymesacasa1@gmail.com', 2076146, 6207959, NULL, 6265604, NULL, 'M', '1995-10-11', 'Single', 'Claudia Groutsche', 'Lamour Street', 'Belmopan', 6253988, 'Ryan Zuniga', 'Las Flores', 'Belmopan', 6265604, 'Christine Alivar', 'Las Flores', 'Belmopan', 6004972, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000092, 'Sacul', 'Concepciona', NULL, 000420178, '#8 Belen', 'Belmopan', 'Cayo', 'Belize', 'cocepcionasacul@yahoo.com', NULL, NULL, NULL, 6693144, NULL, 'F', '1982-11-11', 'Married', 'Francisco Cho jr', '8 Belon St.', 'Belmopan', 6693144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000093, 'Sho', 'Lucin', 'Julie', 000000000, '16Garza Avenue ', 'Belmopan', 'Cayo', 'Belize', 'jul.sho96@gmail.com', NULL, 6370114, NULL, 6003805, 'Parent', 'F', '1996-10-19', 'Single', 'Anel Hernandez', '16 Garza Avenue', 'Belmopan', 6237140, 'Rebeca Canchan', '16 Garza Avenue', 'Belmopan', 6003805, 'Ms. Norka Campos', 'Cardinal Avenue', 'Belmopan', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000094, 'Sho', 'Rafael', NULL, 000000000, '3 St. Thomas Street', 'Belmopan', 'Cayo', 'Belize', 'pofoz_101@hotmail.com', NULL, 6373398, 'Hilario Sho', 6053881, 'Father', 'M', '1993-11-19', 'Single', 'Linsford Emmanuel', '4 sinsonte Avenue', 'Belmopan', NULL, 'Marleni Natalia Gewis', 'St. Mary Street', 'Belmopan', 6006140, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000095, 'Tiul', 'Sandra', 'Patricia', 000198299, '#5 Lamux St ', 'Belmopan', 'Cayo', 'Belize', 'tiulsandra@yahoo.com', NULL, 6228561, 'Aura Tiul', 6619323, 'Sister', 'F', '1991-10-28', 'Single', 'Adelita Belle', 'Black man Eddy', 'Cayo', 6073718, 'Anthony Middleton', 'Belmopan', 'Belmopan', 6071889, 'Elizabeth', 'Belmopan', 'Cayo District', 6374770, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000096, 'Young', 'Jarius', 'Julius', 000000000, 'Another World Area', 'Belmopan', 'Cayo', 'Belize', 'jariusjyoung234@yahoo.com', 8020091, 6340339, NULL, 8222804, NULL, 'M', '1996-10-08', 'Single', 'Scott Stirm', 'Roaring creek', NULL, 8222804, 'Jason Twist', 'Roaring creek', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000097, 'Garnett', 'Jevaughn ', 'Adrian', 000000000, 'Tul street extension', 'Belmopan', 'Cayo', 'Belize', 'adriengarnett@yahoo.com', NULL, NULL, 'Sherett', 6353653, 'Mother', 'M', '1995-02-15', 'Single', 'Bay', 'Central Sight', 'Belmopan', 8221545, 'Brandon Crawford', 'Matura Maya Mopan', 'Belmopan', 6332813, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000098, 'Gonzalez', 'Giomeli', 'Melvany', 000000000, '#45 Mark San Martin', 'Belmopan', 'Cayo', 'Belize', 'giomeliquiroz@gmail.com', NULL, 6007755, NULL, 6628170, NULL, 'F', '1995-08-26', 'Single', 'Racio Quiroz', '#45 St. Mark', 'Belmopan', 6628170, 'Erwin Middleton', 'Camalote', NULL, 6255903, 'Marleni', '#45 St. Mark', 'Belmopan', 6006140, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000099, 'Bainton', 'Nancy', 'Miriam', 000481167, '28 Montaray Blv', 'Ladyville', 'Belize', 'Belize', 'nancybainton11@gmail.com', NULL, 6074790, NULL, 6286571, 'Step Dad', 'F', '1993-11-27', 'Single', 'Janine Henry', NULL, 'Ladyville', NULL, 'Collin Smith', NULL, 'Ladyville', NULL, 'Brendalin Stain', NULL, 'Hattieville', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000100, 'Fuentez', 'Joleen', 'Hermany', 000000000, NULL, 'Belize', 'Belize', 'Belize', 'joleen Fuentez34@gmail.com', 2070634, 6275986, 'Tania Fuentez', 6275986, 'Mother', 'F', '1997-11-04', 'Single', 'Mrs. Jennifer Reyes', '12 Nargusta Street', 'Belize City', 6074445, 'Jewel Chambers', '14 Nargusta Street', 'Belize City', 6079101, 'Mr. Hillie Bennett', NULL, 'Belize City', 6517323, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000101, 'Paul', 'Kendanne', 'Marie', 000000000, '9B Jasmine Street', 'Belze', 'Belize', 'Belize', 'kendanne1999@gmail.com', NULL, 6243137, 'Danan Castillo', 6629196, 'Mother', 'F', '1999-01-20', 'Single', 'Ms. Michelle', '11B Iguana Street', NULL, 6609691, 'Kayla Paul', '916116 Pen road ', 'Belize City', 6310920, 'Amanda', NULL, 'Belize City', 6205268, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000102, 'Gillett', 'Shanon', 'Shantai', 000378729, '76 Plues Street', 'Belize', 'Belize', 'Belize', 'shantayg22@gmail.com', NULL, 6272159, 'Kent Gillett', 6638557, 'Father', 'F', '1992-06-24', 'Single', 'Orville Melendrez', 'Hattieville', 'Belize', 6020416, 'Ellis Arnold', NULL, 'Belize City', 6100303, 'Alisha Chan', 'Buttonwood Bay', 'Belize City', 6029846, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000103, 'Neal', 'Shelmadine ', 'Olivia', 000380334, '6386 Heart Street', 'Belize', 'Belize', 'Belize', 'shelmadineneal26@gmail.com', 2025046, 6351504, 'Constance Gentle', 2025046, 'Mother', 'F', '1989-06-30', 'Single', 'Ms. Janett Sabed', '90 Tribuce Street', 'Belize', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000104, 'Davis', 'Shana', 'Delone', 000203554, NULL, 'Roaring Creek Village', 'Cayo', 'Belize', 'shawnnadavis23@gmail.com', NULL, 6309520, 'Thomas Chun', 6286080, 'Spouse', 'F', '1990-04-28', 'Common-Law', 'Jerome Chun', 'Roaring Creek Village', NULL, 6025016, 'Carnen Williams', NULL, 'Belmopan', 6104419, 'Gem Turner', 'Belmopan', NULL, 6356995, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000105, 'Abraham', 'Aaliyah', 'A', 000383008, '25 T street, Port Loyola', 'Belize', 'Belize', 'Belize', 'aaliyahabraham@icloud.com', NULL, 6325138, 'Fanah Williams', 6376409, 'Mother', 'F', '1994-12-28', 'Single', 'Mercilina Carballo', NULL, 'Belize', 6343535, 'Imena Hulse', NULL, 'Belize City', 2233055, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000106, 'Aguilar', 'Nazera', NULL, 000000000, '49 KellyStreet', 'Belize', 'Belize', 'Belize', 'nazy_huny06@yahoo.com', 2035340, 6238829, 'Jesus Aguilar', 6345471, 'Father', 'F', '1991-10-24', 'Common-Law', 'Sheyla Flowers', 'F Street', 'Belize', 6216890, 'Chrystal Reyes', 'Lsdyville', 'Belize', 6323454, 'Juvenitino Cowo', '49 Kelly Street', 'Belize', 6201101, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000107, 'Aguilar', 'Neidie', 'Hannah', 000000000, '59 Kelly Street', 'Belize', 'Belize', 'Belize', 'dadysgirl-94@hotmail.com', 2035340, 6235023, 'Clementina', 6633895, 'Mother', 'F', '1994-04-20', 'Common-Law', 'Adela Chiac', 'Castle', 'Belize City', 6240084, 'Wendy Daniels', '114 zacaranda', 'Belize City', 6353699, 'Alex William', '49 Noorse Friendly cres', 'Belize City', 6051666, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000108, 'Aldana', 'Kimberly', 'Vicky', 000000000, 'Crane Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6354257, 'Estella Arzu', 6302327, 'Mother', 'F', '1995-09-17', 'Single', 'Victor Aldena', NULL, 'Orange Walk', 6673353, 'Carlos Neal', NULL, 'Caye Caulker', 6071981, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000109, 'Ashley', 'Tiedra', 'Carolyn/Shilel', 000360992, '14 Berkeley', 'Belize', 'Belize', 'Belize', 'teidralino@gmail.com', 2070610, 6255846, 'Yanique Morgan', 6278230, 'Sister', 'F', '1995-03-09', 'Single', 'Fayne Niscasio', '7244 Reggea', 'Belize', 6296366, 'Carolyn Ashley', '53 Farwest', 'Punta Gorda', 6266258, 'Yanique Morgan', '104 Euphrates Ave', 'Belize', 6278230, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000110, 'August', 'Ian', 'A', 000085752, '10 Caracol St', 'Belmopan', 'Cayo', 'Belize', 'iaugust@yahoo.com', 8223570, 6004667, 'Peter August', 6010286, 'Father', 'M', '1973-07-04', 'Married', 'Robert Allen', NULL, 'Belmopan', 6105716, 'Bem Mason', NULL, 'Placencia', 6016732, 'Emilio Zabameh', NULL, 'Stann Creek', 6103074, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000111, 'Ayala', 'Carla', 'Carolina', 000000000, '329 Freedom Street', 'Belize', 'Belize', 'Belize', 'Belize', NULL, 6293437, 'Sylvia De-Bride', 6276933, 'Mother-In-Law', 'F', '1990-06-10', 'Common-Law', 'Faith Babb', 'Calle Al Mar', 'Belize City', 6007043, 'Joan Matus', 'St. Thomas St', 'Belize', 6010467, 'Josephine Saki', 'Pound yard', 'Belize', 6682101, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000112, 'Balderamos', 'Mychan', 'I', 000199149, '19/21 Turnee Ave.', 'Belmopan', 'Cayo', 'Belize', 'm.balderamos@gmail.com', 8223523, 6371098, 'Orpha', 6314950, 'Mother', 'M', '1988-12-19', 'Single', 'David A. Jenkins', 'No. 1 Orchid Garden St.', 'Belmopan', 8222990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000113, 'Bennett', 'Sherisse', 'L', 000190967, '19Dolphin Street', 'Belize', 'Belize', 'Belize', 'sherissebennett@gmail.com', NULL, 6074128, 'Gary Bennett', 6101954, 'Father', 'F', '1994-05-16', 'Single', 'Imeria Hulse', 'Charcello Ave.', 'Belize', 2233055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000114, 'Bernard', 'Monica', 'Keziah', 000000000, '9110 Mahogany Street', 'Belize', 'Belize', 'Belize', 'monpie1997@yahoo.com', NULL, 6204124, 'Stephanie Bernard', 6204124, 'Mother', 'F', '1997-02-09', 'Single', 'Laurel Garbutt', 'Jane Usher Blvd.', 'Belize City', 6334418, 'Mayson Ahymidiyah', NULL, 'Belize City', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000115, 'Chan', 'Adir', 'Amin', 000000000, '26 Royal Palm Street', 'Belize', 'Belize', 'Belize', 'adir.91@live.com', NULL, 6513645, 'Lourdes', 6071249, 'Mother', 'M', '1991-08-19', 'Single', 'Miveya Ku', 'San Pedro Town', 'San Pedro Town', 2264726, 'Julie Alcoster', 'San Pedro', 'San Pedro', 2264726, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000116, 'Flores', 'Leunie', 'Shirlette', 000490776, '7299Mckenzie Lane', 'Belize City', 'Belize', 'Belize', 'leonieflores27@yahoo.com', NULL, 6337194, 'Ishmael Lambey', 6361397, 'Sister', 'F', '1993-11-09', 'Single', 'Ishmael Lambey', '2nd Newsite', NULL, 6361397, 'Florencia Cayetano', '633-0689', 'Ecumenica Drive', 6330689, 'Shanna Taylor', '1st New site', NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000117, 'Garcia', 'Hermisha', 'Shirlyn', 000000000, '7299 Mckenzie Lane', 'Belize', 'Belize', 'Belize', 'garciahermisha@yahoo.com', NULL, 6338928, 'Jean Noralez', 6757601, 'Guardian', 'F', '1995-07-26', 'Single', 'Ms. Florence Cayetano', 'Eccumenical Drive Cayetano', 'Dangriga Town', 6330689, 'Mrs. Terri Longford', 'Foreshore Area', 'Dangriga Town', 6042701, 'Shanna Taylor', 'New site Area', 'Dangrirga Town', 6042701, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000118, 'Garnett ', 'Darin', 'M', 000038096, NULL, NULL, NULL, NULL, 'darin_garnett@yahoo.com', NULL, 6029087, NULL, 6159600, 'Spouse', 'M', '1989-04-17', 'Common-Law', 'Ervin Perez', 'Coney Drive', 'Belize', 6107386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000119, 'Reynolds', 'Edmond', 'Glen', 000115239, 'Mosul Street', 'Belize', 'Belize', 'Belize', 'edmondreynolds18@gmail.com', NULL, 6643428, 'Francine Buckley', 6018066, 'Mother', 'M', '1994-08-10', 'Single', 'Keith Swift', NULL, 'BELIZE', 0, 'Joyclen Young', NULL, 'Belize City', NULL, 'Irah Smith', NULL, 'Belize City', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000120, 'Martinez', 'Rosemarie', 'R', 000000000, 'Vernon Street', 'Belize City', 'Belize', 'Belize', 'rosemariehenkis@gmail.com', NULL, 6255521, 'Francis Henkis', 6218685, 'Husband', 'F', '1981-11-11', 'Married', 'Annis Gordon', NULL, 'Dangriga', NULL, 'Stanley Swift', NULL, 'Ladyville', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000121, 'Mes', 'Daria', NULL, 000257379, 'Maya Mopan', 'Belmopan', 'Cayo', 'Belize', 'dbormes@gmail.com', NULL, 6268536, NULL, 6260826, 'Husband', 'F', '1980-12-25', 'Married', 'Glen Enriquez', 'Punta Gorda ', NULL, NULL, 'John Nunez', 'Punta Gorda Town', NULL, NULL, 'Ethlyn', NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000122, 'Morgan', 'Yanique', 'S', 000368993, '104 Euphrates Ave', 'Belize', 'Belize', 'Belize', 'morganyanique@gmail.com', 6338044, 6278230, 'Kenny Morgan', 6002557, 'Father', 'F', '1992-10-21', 'Single', 'Erolyn Sebastian', 'Cayman Street', 'Belmopan', 6310567, 'Khristal Jones', 'Burrel Boom', NULL, 6271347, 'Shawnda King', '9 Baltimore Road', NULL, 6306698, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000123, 'Neal', 'Amyra', 'I', 000205262, '6 Eve St.', 'Belize', 'Belize', 'Belize', 'amyraneal21@yahoo.com', NULL, NULL, 'Florence Neal', 6345797, 'Mother', 'F', '1993-05-24', 'Married', 'Ms. Mayde Rodriguez', 'Belize City', 'Belize City', 6351071, 'Ms. Pamela Lino', 'Belmopan City', 'Belmopan City', 6210450, 'Ms. Lynette Aguilar', 'Santa Elena', 'San Ignacio', 8242424, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000124, 'Nicholas', 'Simiona', 'M', 000193959, '23 1/2 mls.Old Nothern Highway', NULL, NULL, 'Belize', 'simiona.ozaeta@gmail.com', NULL, 6027696, 'Nicolas Ozaeta', 6666765, 'Common-Law', 'F', '1982-12-15', 'Common-Law', 'Lavern Lord', 'Sandhill Village', NULL, 6010681, 'Leila Westby', 'Infotel', 'Belize City', 6049988, 'Gale Malic', 'Sandhill Village', NULL, 6003379, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000125, 'Salam', 'Brian', 'S', 000190040, '7555Fabers Road', 'Belize', 'Belize', 'Belize', 'salambrian35@hotmail.com', NULL, 6021367, 'Joshua Salam', 6511771, NULL, 'M', '1994-10-15', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000126, 'Santos', 'Shandy', 'Xichel', 000379365, '33 Cemetry', 'Belize', 'Belize', 'Belize', 'xichelsantos21@gmail.com', NULL, NULL, NULL, 6223281, 'Mother', NULL, '1993-05-27', 'Single', 'Monica Williams', '33 Cemetery Lane', NULL, 6333780, 'Roy Grant', NULL, NULL, 6014015, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000127, 'Smith', 'Ayannah', 'N', 000421462, NULL, NULL, NULL, NULL, NULL, NULL, 6027796, 'Kirk Hall', 6268318, 'Common-Law', 'F', '1987-11-13', 'Common-Law', 'Steve Myles', NULL, 'Belize City', 6076980, 'Joan Harris', NULL, 'Belize City', 6055968, 'Rhonda Crichron', NULL, 'Ladyville', 6022066, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000128, 'Taylor ', 'Pamela', 'Denise', 000116812, '#9116 Rootsville', 'Belize', 'Belize', 'Belize', 'pamela.taylor74@yahoo.com', NULL, 6018514, NULL, NULL, NULL, 'F', '1974-07-20', 'Single', 'Mr. Alpuche', 'American Airlines', 'Ladyville', 2254145, 'Mr. M.Gongora', 'Belize Brewing', 'Belize', 2277031, 'Ms. Constantino', 'G.O.B', 'Belize', 6056671, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000129, 'Augustine', 'Rosalind', 'Sherina', 000371211, '119 Police Street', 'Belize', 'Belize', 'Belize', 'augustinerose1989@gmail.com', NULL, 6669349, 'Angelina Garcia', 6532714, 'Mother', 'F', '1989-10-26', 'Single', 'Thomas Nunez', 'Dangriga', 'Stann Creek', 555220452, 'Joseph Aleman', 'Belmopan', 'Cayo', 6310030, 'Raymond Williams', 'Belize', 'Belize', 6023702, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000130, 'Barrow', 'Gaston', 'Alfred', 000000000, '4498 Consuelo Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6288345, 'Ms. Pollard', 6373175, 'Mother', 'M', '1999-01-03', 'Single', 'Albert Pollard', '4496 Consuelo St', 'Belize', 6655587, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000131, 'Bol', 'Cordel', 'Amir', 000371690, '1549 Grace Avenue', 'Belize', 'Belize', 'Belize', 'cordelamirbol@gmail.com', NULL, 6654215, 'Alfonzo Bol', 6201039, 'Father', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000132, 'Bowman', 'Christine', 'A', 000189453, '#94 Ebony Street', 'Belize', 'Belize', 'Belize', 'alexistzul@yahoo.com', NULL, 6315369, 'Kariq Tzul', 6333464, 'Spouse', 'F', '1988-10-27', 'Common-Law', 'Robin Harris', '#1 Dean Street', 'Belize', 6325800, 'Tracy Panton', 'Regent Street', 'Belize City', 0, 'Cadene Ottley', '#9 Fairweather', 'Belize', 6352591, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000133, 'Cayetano', 'Felona', NULL, 000485106, '6619 Police Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6017219, NULL, NULL, NULL, 'F', '1996-08-10', 'Common-Law', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000134, 'Cayetano', 'Indira', 'Lashawn', 000377556, '3946 Flamboyant Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6256618, 'Cheryl Sutherland', 6333134, 'Mother', 'F', '1996-04-19', 'Single', 'Patricia Wade', 'Flamboyant Street', 'Belize', 2024391, 'Dana Bowman', '48 Flamboyant Street', 'Belize ', 6374391, 'Frank Lorenzo', 'Neal Penroad', 'Belize City', 6210184, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000135, 'Cherrington', 'Mauricio', 'Antonio', 000000000, NULL, 'Belize', 'Belize', 'Belize', NULL, NULL, 6604897, 'Stephan', 6325722, NULL, 'M', '1998-02-19', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000136, 'Garbutt', 'Jenise', 'Neonie', 000000000, NULL, NULL, NULL, NULL, 'karenbap@44gmail.com', NULL, NULL, NULL, 6044198, NULL, NULL, '2018-07-03', 'Single', 'Allan Garbutt', NULL, 'Belize', 6044198, 'Sheldon Cutkelvin', NULL, 'Caye Caulker', 6310189, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000137, 'Geban', 'Rodwell', NULL, 000000000, '95th Jude Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6073493, NULL, NULL, NULL, NULL, '1998-08-18', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000138, 'Gladden', 'Kareem', 'Steven', 000000000, '6 Hundo Street', 'Belize', 'Belize', 'Belize', 'kgladden@gmail.com', NULL, 6291926, 'Jacqueline', 6303778, 'Mother', 'M', '1988-09-18', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000139, 'Ifield', 'Moesha', 'A', 000473650, '163 West Street', 'Belize', 'Belize', 'Belize', 'moeshaifield101@gmail.com', NULL, 6253277, 'Gilroy Arnold', 6253277, 'Spouse', 'F', '1997-01-14', 'Common-Law', 'Brent Hamilton', NULL, NULL, 6008301, 'Gilroy Arnold', NULL, NULL, 6253277, 'Fiona Willoughby', NULL, NULL, 6237313, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000140, 'Gilharry', 'Janelle', 'Vanessa', 000000000, '48 Amara Avenue', 'Belize', 'Belize', 'Belize', 'gordonjanelle@GMAIL.COM', 2030046, 6001914, 'Deborah Castillo', 2030046, 'Mother', 'F', '1987-01-07', 'Married', 'Deborah Castillo', '5692 Campus avenue', 'Belize', 2030046, 'Robert Gilharry', '48 Amara Avenue', 'Belize', 6526073, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000141, 'Guerra', 'Shakira', NULL, 000371408, '24 Boots Crescent ', 'Belize', 'Belize', 'Belize', 'shakirakiraguerra@gmail.com', 2275038, 6040004, 'Baldemar Guerra', 6151149, 'Father', 'F', '1996-06-24', 'Single', 'Delvorine Ferrell', NULL, 'Belize', 6243710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000142, 'Herrera', 'Roshana', 'Cordelia', 000371210, '119 Police Street', 'Belize', 'Belize', 'Belize', 'roshanaherrera@yahoo.com', NULL, 6041108, NULL, 6695389, NULL, 'F', '1994-12-21', 'Single', 'Corina Augustine', '1946 Police Street', 'Belize', 6695385, 'Samuel Chang', '34 Campus Avenue', 'Belize', 6283759, 'Sherdia Benguche', '67 Ordonez Avenue', 'Belize', 6209882, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000143, 'Lambey', 'Denelly', NULL, 000320718, '5 Chips Alley', 'Orangewalk', 'Orangewalk', 'Belize', 'denellylambey@gmail.com', 3022624, 6344127, 'Letecia Lambey', 6018769, 'Mother', 'F', '1997-05-21', 'Single', 'Desralee Logan', 'Lords Bank', 'Belize Rural', 6342765, 'Lawrence Mortis', 'Lords Bank', 'Belize Rural', 6241598, 'Denise Logan', 'Ladyville', 'Belize rural', 6308969, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000144, 'Lorenzo', 'Whitney', 'Aurora', 000471501, '8692 Curl Thompson', 'Belize', 'Belize', 'Belize', 'whitz543@gmail.com', NULL, 6360673, 'Eldon Simpson JR.', 6234128, 'Common-Law', 'F', '1993-03-01', 'Common-Law', 'Dianne Finnegan', 'Mahogany Street', 'Belize', NULL, 'Rachel Mejia', 'Benque Viejo', 'Cayo', 6333063, 'Fay Dyer', 'Hattieville', 'Belize', 6053456, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000145, 'Maskall', 'Linton', NULL, 000190141, '21 1/2 Western Highway', 'Belize', 'Belize', 'Belize', NULL, NULL, NULL, 'Frances Leslie', NULL, 'Grandmother', NULL, '1998-11-29', 'Single', 'Leonard Davis', '21 1/2 ml Western Highway', 'Belize', NULL, 'Marlene Murillo', '21 1/2 Western Highway', 'Belize', NULL, 'Maureen Lewis', '21 1/2ml Western Highway', 'Belize', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000146, 'Mcculloch', 'Courtney', 'Janet', 000481195, 'Ladyville', 'Los Lagos', 'Belize', 'Belize', 'mcc.courts52@gmail.com', 2453773, 6018024, 'Natalie Young', 6280658, 'Sister', 'F', '1996-02-04', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000147, 'Medina', 'Kendra', 'Natalie', 000380252, '3056 North Creek Rd.', 'Belize', 'Belize', 'Belize', NULL, NULL, 6305373, NULL, 6330629, 'Sister', 'F', '1982-03-05', 'Common-Law', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000148, 'Meggs', 'Tiffara', 'N', 000000000, NULL, 'Belize', 'Belize', 'Belize', NULL, NULL, 6201640, NULL, 6610269, 'Mother/Brother', 'F', '1992-06-26', 'Single', 'Ms. Gladys Peredez', 'Belmopan', NULL, NULL, 'Ms. Vivica Murray', 'Belize', NULL, NULL, 'Ms.Telma Francis', NULL, 'Belize', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000149, 'Mitchell', 'Ebony', 'Monique', 000000000, '4 Haynes Street', 'Belize', 'Belize', 'Belize', NULL, 2070416, 6228239, 'Diana Moore', 6338529, 'Mother', 'F', '1989-08-19', 'Common-Law', 'Jason Wade', '14 Weight Street', 'Belize', 6228239, 'Debbie Peyrefitte', 'Belama', 'Belize City', 6103549, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000150, 'Myles', 'Tyrique', 'Kevin', 000000000, NULL, NULL, NULL, NULL, 'tyrequemyles.tm@gmail.com', 6215502, 6231768, 'Theresita Flowers', 6215502, 'Grandmother', 'M', NULL, 'Single', 'Tracy Lewis', 'Fabers Road', 'Belize', 6687139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000151, 'Roches', 'Looney', 'Eliane', 000379170, '6619 Police Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6605846, 'Austin Smith', 6605846, 'Spouse', 'F', '1994-07-27', 'Common-Law', 'Barbara Guzman', '6635 Police St.', 'Belize', NULL, 'Michael Palacio', 'Electric Avenue', 'Belize', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000152, 'Roches', 'Marilyn', 'Ambrosia', 000379174, '6619 Police Street', 'Belize', 'Belize', 'Beize', NULL, NULL, 6603460, NULL, 6245066, NULL, 'F', '1991-04-30', 'Common-Law', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000153, 'Tench', 'Chervin', 'Calvin', 000000000, '39946 Flamboyant Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6333134, 'Cherry Sutherland', 6333134, 'Mother', 'M', '2000-12-04', 'Single', 'Tracy Lewis', '491 Fabers Road', 'Belize', 6687139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000154, 'Tench', 'Julin', 'Deneka', 000386720, '#1 Youth For The Future Drive', 'Belize', 'Belize', 'Belize', 'julintench@gmail.com', NULL, 6306100, 'Lorna Tench', 6221577, 'Mother', 'F', '1989-09-06', 'Single', 'Ryan Timmons', '4388 Fabers Road', 'Belize', 6054821, 'Shane Williams', 'West Landivar', 'Belize', 6295375, 'Alfonso Noble', '8 Miles Western Highway', 'Belize', 61027970, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000155, 'Tescum', 'Ausanita', 'Zakeya', 000378972, '4150 Black Orchid', 'Belize', 'Belize', 'Belize', 'santiatescum@gmail.com', 6306474, 6364272, 'Yvette Yard', 6278183, 'Mother', 'F', '1997-05-22', 'Single', 'Lrnnox Jones', '#6 Tibuse Street', 'Belize', 6055101, 'Edward Martinez', '31 Cove Street', 'Belize', 6208164, 'Russell Godfrey', '24 B-6th Street', 'Belize', 6004733, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000156, 'Horne', 'Sharen', 'Tiffany', 000389825, '6579 Dorris Brooks', 'Belize', 'Belize', 'Belize', NULL, NULL, 6014297, NULL, 6243710, 'Aunt', 'F', '1992-07-06', 'Single', 'Ursela Pandy', 'Marage Road', 'Ladyville', 6249002, 'Thera Hyde', 'Gentle Lane', 'Belize', 6708377, 'Baldemar Guerra', 'Boots Crescent', 'Belize', 6151149, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000157, 'Williams', 'Roschel', 'Marie', 000267349, 'Karrl Road', 'Belize', 'Belize', 'Belize', NULL, 6361573, NULL, 'Roschel', 6361573, NULL, 'F', '1982-11-16', 'Single', 'Anis Billary', '21 Karrl Road', NULL, 6319260, 'Dana Young', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000158, 'Young', 'Kendra', 'Marie', 000468150, '1 Allen Pitts', 'Belize', 'Belize', 'Belize', NULL, NULL, 6026145, 'Glenda Young', 6606475, 'Mother', 'F', '1991-08-27', 'Married', 'Kissy Mariano', 'Nurse Wife', 'Belize', 6220038, 'Marva Garcia', '1 Allen Pitts', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000159, 'Young', 'Raquel', 'Marie', 000397159, '12 B Waight Street', 'Beize', 'Belize', 'Belize', NULL, NULL, 6020003, 'Nelson Dillett', 6604641, 'Common-Law', 'F', '1991-06-23', 'Common-Law', 'Ms. Bowen', 'St. Michael\'s College', 'Belize', NULL, 'Ms. Rivas ', 'St. Michael\'s College', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000160, 'Young', 'Oretha', 'R', 000462951, '103 Newroad', 'Belize', 'Belize', 'Belize', NULL, NULL, 6215714, 'Adria', 6017117, 'Friend', 'F', '1986-09-06', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000161, 'Thompsom', 'Angela', 'T', 000191908, '35 Faber\'s Road', 'Belize', 'Belize', 'Belize', 'ang.thompson', NULL, 6003417, 'Vittalyn Thompson', 6230759, 'Sister', 'F', '1983-08-25', 'Single', 'Lynette Collins', 'Tribuce Street', 'Belize', 2024390, 'Godswell', NULL, 'Belize', 6296967, 'Jeniffer Cadle', 'Faber\'s Road', 'Belize', 6054481, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000162, 'Gentle', 'Leigh-Andra', 'Ashley', 000382470, '18 Wilfred Peters St.', 'Belize', 'Belize', 'Belize', 'ashiigentle@gmail.com', 2232511, 6005194, NULL, 6102676, 'Parents', 'F', '1994-02-01', 'Single', 'Kimberly Chan', '#123 Cemetery Road', 'Belize', 6346442, 'Ashton Zuniga', 'Belize Telemedia Ltd', 'Belize', 6102248, 'Antonliana Budna', 'St. John Vianney', 'Belize', 6501826, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000163, 'Gentle', 'Aisha', 'Tamika', 000371625, '3313 Central American Blvd', 'Belize', 'Belize', 'Belize', NULL, 2076241, 6021030, NULL, 6296029, 'Parents', 'F', '1989-12-19', 'Single', 'Clovis Harris', '161 Belama', 'Belize', 6001206, 'Clifton Major', 'Racoon St', 'Belize', 6244720, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000164, 'Ferrin ', 'Shannon', 'Shinnel', 000398040, '6453 Mahogany Street', 'Belize', 'Belize', 'Belize', 'shannonferrin13@hotmail.com', 6531873, 6018639, 'Anna Shabazz', 6531873, 'Mother', 'F', '1995-01-13', 'Single', 'Roger Lewis', '11A Cleghorn Street', 'Belize', 6618109, 'Rose Estrada', 'Fabers Road', 'Belize City, Belize', 6287835, 'Karen Gordon', '26 Lords Bank Rd', 'Ladyville', 6508281, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000165, 'Garcia', 'Shamika', 'T', 000000000, '#56 George Street', 'Belize', 'Belize', 'Belize', 'shamygarcia@yahoo.com', NULL, 6018233, NULL, 6018233, 'Sisters', 'F', '1993-07-14', 'Single', 'Lily Bowman', '1 Gabourel Lane', 'Belize', 2273319, 'Mr. Brice Awayo', '9 3/4 miles Philip Goldson Highway', 'Ladyville Village, Belize City', 2253499, 'Mrs. Diane Westby', '9 3/4 miles Philip Goldson Highway', 'Ladyville', 2253499, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000166, 'Dixon', 'Janessa', NULL, 000000000, '3212 Mopan Street', NULL, NULL, NULL, NULL, NULL, 6223451, NULL, 6651533, 'Sister/Mom', 'F', '1995-04-15', 'Single', 'Ms. Flowers', NULL, NULL, 6024000, 'Mr. Paul Noralez', 'Antelope Street', NULL, NULL, 'Mr. Canto', 'Antelope Street', NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000167, 'Alarcon', 'Chelsia', 'J', 000379982, '3108 Benbow st', 'Belize', 'Belize', 'Belize', 'alarconchelsia@yahoo.com', NULL, 6232841, 'Shirleen Gordon', 6643003, 'Mother', 'F', '1991-02-12', 'Single', 'Shakira Robateu', 'Sanker Street', 'Belize', 6310199, 'Nyria Gordon', 'Neal Pen Road', 'Belize', 6044562, 'Christopher Fernandez', 'Belama Phase 3', 'Belize', 6271510, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000168, 'August', 'Laura', 'Audi', 000364882, 'Race Track Area', 'Burrel Boom', 'Belize', 'Belize', NULL, NULL, 6205913, 'Cheryl August', 6006880, 'Mother', 'F', '1990-07-29', 'Single', 'Darris Dawson', 'Burrel Boom', NULL, 6251728, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000169, 'Humes', 'Neomi', 'J', 000182661, '#4 Waight Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6045009, NULL, 6682270, 'Mother', 'F', '1978-03-25', 'Common-Law', 'Trecia Collins', NULL, 'Belize', NULL, 'Daniel Smith', 'Lords Bank', 'Belize', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000170, 'August', 'Maura', 'Yudi', 000365559, 'Arnold Avenue', 'Burrell Boom', 'Belize', 'Belize', 'maurayaugust@gmail.com', NULL, 6343816, 'Cheryl August', 6006880, 'Mother', 'F', '1989-07-24', 'Single', 'Jeffrey Budd', '130 Vernon Street', 'Belize', 6691831, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000171, 'Avila', 'Jaada', 'Louise', 000000000, '#28 Forth Street', 'Belize', 'Belize', 'Belize', 'avila', NULL, 6017428, 'Juliet Ramirez', 6317542, 'Mother', 'F', '1997-02-02', 'Single', 'Joan Tillett', 'Yarborough Str', 'Belize', 2270333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000172, 'Baptist', 'Kevin', 'Dave', 000377543, '61 Sylvester Stadum', 'Belize', 'Belize', 'Belize', NULL, NULL, 6600712, 'Ava Mcnab', 6269802, 'Mother', 'M', '1990-08-26', 'Single', 'Ava Mcnab', '61 Sylvester', 'Burrell Boom', 6269802, 'Dave Baptist', '61 Sylvester Stadum', 'Burrel Boom', 6221071, 'Lara August', 'Race Track Area', 'Burrel Boom', 6205913, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000173, 'Barcelona', 'Seradio', 'L', 000514737, '#5 Gill Street', 'Belize', 'Belize', 'Belize', 'seradiobarcelona@yahoo.com', 2070008, 6276336, NULL, NULL, NULL, 'M', NULL, 'Single', 'Mike Lord', NULL, NULL, NULL, 'Marlon Cayetano', NULL, NULL, NULL, 'Marsha Patnett', NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000174, 'Bennett', 'Lynthia', 'Lauren', 000364412, '289 Windmill Area', 'Hattieville', 'Belize', 'Belize', 'lynthiabennett@yahoo.com', 2256084, 6215744, NULL, 6055652, 'Mother', 'F', '1987-08-08', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000175, 'Bradley', 'Kadeem', 'Evic', 000000000, '14 Sittee Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6684449, NULL, 6285173, NULL, NULL, '1995-01-24', 'Single', 'Mrs. Roches', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000176, 'Casey', 'Vanelly', 'Michaela', 000000000, '323 Quical St', 'Belize', 'Belize', 'Belize', 'vanellycasey@gmail.com', NULL, 6277324, 'Solia Matthews', 6691330, 'Mother', 'F', '1996-11-08', 'Single', 'Mr.Mason Wade', NULL, NULL, NULL, 'Ms. Vanessa Roland', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000177, 'Cassanova', 'Carly', 'Carla', 000000000, '47 B west street', 'Belize', 'Belize', 'Belize', 'carlycassanova@yahoo.com', 6511015, NULL, 'Radiance Ramos', 6515041, 'Mother', 'F', '1993-07-18', 'Single', 'Ms. Karen Mossiah', '47 Race course Street', 'Belize', 6003185, 'Kadisha Lewis', '49 C west street', 'Belize', 6205287, 'Eldridge Castillo', 'Hattieville', 'Belize', 6370020, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000178, 'Crawford', 'Meshak', 'Aaron', 000471787, '26 Camal Street', 'Belize', 'Belize', 'Belize', 'aaroncrawford854@yahoo.com', NULL, NULL, 'Brendalyn Staine', NULL, 'Guardian', 'M', '1996-09-19', 'Single', 'Brendalyn Staine', '26 Camal Street', 'Belize', NULL, 'Hadan Garbutt', 'Hattieville', NULL, NULL, 'Dwayne Staine', '26 Camal Street', 'Belize', NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000179, 'Courtney', 'Ainsworth', NULL, 000000000, '49 Yorke Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6318658, 'Rhona', 6318658, 'Mother', 'M', '1996-10-18', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000180, 'Fergueson', 'Rolanda', NULL, 000393967, '3212 Mopan Street', 'Belize', 'Belize', 'Belize', NULL, NULL, 6223451, 'Sherrie Sanchez', 6658551, 'Mother', 'F', '1994-01-02', 'Single', 'Junedale Walker', 'Cassarina Street', 'Belize City', 6675725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000181, 'Arnold', 'Michelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6518163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000182, 'Neal', 'Macroy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6323128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000183, 'Crawford', 'Aaron', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6698621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000184, 'Dawson', 'Rasha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6053718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000185, 'Taibo', 'Chelsea', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6252530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000186, 'Dias', 'Paul', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6267387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000187, 'Paalacio', 'Mary', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6256198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000188, 'Westby', 'Angeli', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6313752, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000189, 'Gladden', 'Jason', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6276834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000190, 'Ortiz', 'Marbin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6311083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000191, 'Bernard', 'Kadeesh', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6651033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000192, 'Ico', 'Edwardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6333116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000193, 'Robateu', 'Leeworth', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000194, 'Alvarado', 'Karissa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6602912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000195, 'Nunez', 'Harold', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6256855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000196, 'Mariano', 'Agnes', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6008100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000197, 'Bull', 'Cito', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6523537, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000198, 'Herrera', 'Nancy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6289811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000199, 'Swaso', 'Reselea', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6059678, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000200, 'Zuniga', 'Genny', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6026506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000201, 'Sabal', 'Arjay', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6236947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000202, 'Lopez', 'Jasha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6274628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000203, 'Nunez', 'Julia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6286255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000204, 'Nunez', 'Antolina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000205, 'Casimiro', 'Kaneir', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6272243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000206, 'Caliz', 'Kareemah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6235715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000207, 'Garcia', 'Tizariya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6635209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000208, 'Noralez', 'Audrey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6058175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000209, 'Williams', 'Joeline', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 5020051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000210, 'Arana', 'Denise', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6290359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000211, 'Requena', 'Jennifer', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6674309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000212, 'Castillo', 'Jevonna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6370340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000213, 'Cayetano', 'Josephine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6514717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000214, 'Villafranco', 'Karerm', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6662903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000215, 'Ogaldez', 'Kenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6648614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000216, 'Martinez', 'Rachel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6079703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000217, 'Velasquez', 'Xiomara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6683041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000218, 'Bermudez', 'Beverly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6253841, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000219, 'Smart', 'Dionne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6660907, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000220, 'Ruiz', 'Gloria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000221, 'Bailey', 'Raheem', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6274711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000222, 'Perera', 'Kenishaw', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6235774, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000223, 'Juarez', 'Samuel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6354162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000224, 'Allen', 'Eston', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6216017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000225, 'Sutherland', 'Dennis', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6301083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000226, 'Moody', 'Gaywin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6312343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000227, 'Centeno', 'Isani', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000228, 'Brown', 'Errol', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6672426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000229, 'Mcdonald', 'Amey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000230, 'Smith', 'Kevaughn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6243809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000231, 'Dougal', 'Tayeef', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6288183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000232, 'Rhaburn', 'Austin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6530287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000233, 'Herrera', 'Dehvyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6625877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000234, 'Jenkins', 'Rachel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6343203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000235, 'Smart', 'Jasmine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6516667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000236, 'Bennette', 'Raven', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6632344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000237, 'Sabal', 'Faith', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6016064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000238, 'Pennill', 'Norman', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6641209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000239, 'Walter', 'Letecia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6658436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000240, 'Vargas', 'Shamika', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6678736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000241, 'Robinson', 'Sherece', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6076110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000242, 'Duce', 'Resilla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6320985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000243, 'Pinto', 'Denisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6316696, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000244, 'Pinto', 'Dayna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6218215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000245, 'Thomas', 'Geraldine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000246, 'Trotman', 'Leeton', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000247, 'Henry', 'Hydeia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000248, 'Cho', 'Alejandra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6266680, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000249, 'Obando', 'Alice', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000250, 'Flores', 'Sharla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6252880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000251, 'Thomas', 'Janeen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6342918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000252, 'Montejo', 'Karl', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6373898, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000253, 'Rodriguez', 'Raheem', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000254, 'Guerrero', 'Katty', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6670342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000255, 'Ulloa', 'Yaneli', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6233787, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000256, 'Gentle', 'Shanoy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6043606, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000257, 'Cunil', 'Ricky', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6044048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000258, 'Ford', 'Justin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6212082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000259, 'Ramirez', 'Hector', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6245786, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000260, 'Lopez', 'Allen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6532277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000261, 'Westby', 'Jevon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000262, 'Herrera', 'Shereen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000263, 'Laura', 'Marcella', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6282003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000264, 'Chimilio', 'Randeen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000265, 'Diaz', 'Ellis', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6235233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000266, 'Teul', 'Rueveira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6283278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000267, 'Hercules', 'Jomar', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6016670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000268, 'Shal', 'Amanda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000269, 'Shal', 'Marvin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6648970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000270, 'Louriano', 'Moesha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6375341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000271, 'Pollard', 'Rita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6005062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000272, 'William', 'Shaunna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6606103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000273, 'Welch', 'Erica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6239050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000274, 'Bradley', 'Tanya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6012034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000275, 'Bernard', 'Stephanie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6204124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000276, 'Ford', 'Marcy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6017442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000277, 'Middleton', 'Trude-Ann', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6610488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000278, 'Smith', 'Janet', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6212284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000279, 'Garcia', 'Ursula', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6315571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000280, 'Garnett', 'Shantia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6224575, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000281, 'Alvarez', 'Jaidie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000282, 'Ayala', 'Angelica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6515887, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000283, 'Blake', 'Marlena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000284, 'Rodriguez', 'Aguila', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6154700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000285, 'Baptist', 'Lorraine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000286, 'Villanueva', 'Delia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6694162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000287, 'Velasquez', 'Shannon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000288, 'Reyes', 'Johanna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6540892, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000289, 'Monroy', 'Shereen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6624659, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000290, 'Guerrero', 'Wilson', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000291, 'Ku ', 'Amanda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6616737, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000292, 'Talbot', 'Kirk', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6077952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000293, 'Benitez', 'Luis', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6248916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000294, 'Lizama', 'Roselia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000295, 'Choco', 'Rachel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6285689, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000296, 'Sanchez', 'Flor', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000297, 'Pau', 'Ana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000298, 'Sampson', 'Glenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6234613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000299, 'Garcia', 'Tanya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6346184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000300, 'Lambey', 'Carolee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6348949, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000301, 'Suchite', 'Itza', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 5232020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000302, 'Parham', 'Norma', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000303, 'Lizama', 'Angelina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6327336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000304, 'Pacham', 'Angelica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6632118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000305, 'Castillo', 'Carolyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000306, 'Guerrero', 'Marcia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000307, 'Fernandez', 'Leonie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6633458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000308, 'Sebastian', 'Shalinie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6379253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000309, 'Chinchilla', 'Vivian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6226468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000310, 'Tut', 'Valencia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6268017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000311, 'Ramos', 'Gabriel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000312, 'Escobar', 'Esly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000313, 'Chinchilla', 'Desiderio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 5033222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000314, 'Coleman', 'Randeen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000315, 'Cal', 'Olivia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6615044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000316, 'Bah', 'Victoriano', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6635758, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000317, 'Flowers', 'Delecia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6271712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000318, 'Teul', 'Arnoldo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6252317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000319, 'Chinchilla', 'Rojelio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000320, 'Green', 'Steven', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000321, 'Card', 'Roxanne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6690824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000322, 'Escobar', 'Jacqueline', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6290712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000323, 'Escobar', 'Elida', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000324, 'Artega', 'Adriana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6513265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000325, 'Alberto', 'Kelsey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000326, 'Aspinal', 'Kara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6343117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000327, 'Avila', 'Tanya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6369685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000328, 'Arnold', 'Janet', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6687741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000329, 'Leslie', 'Sheree', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6012149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000330, 'Gonzalez', 'Josephina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6324807, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000331, 'Jones', 'Pauline', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6362860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000332, 'Teyul', 'Eider', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6658854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000333, 'Simon', 'Jacqueline', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6003363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000334, 'Novelo', 'Loleta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6048803, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000335, 'Baptist', 'Lauren', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6678554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000336, 'Gillett', 'Shawna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6337342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000337, 'Middleton', 'Lynette', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6534782, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000338, 'Diego', 'Annette', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6009237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000339, 'Cruz', 'Indira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6208265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000340, 'Novelo', 'Loleta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6012868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000341, 'Castillo', 'Sarah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6293063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000342, 'Robinson', 'Carl', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6308757, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000343, 'Jones', 'Tyra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6306130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000344, 'Wilthshire', 'Janellie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6680805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000345, 'Singh', 'Jermaine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6018630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000346, 'Jones', 'Toryeh', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6306130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000347, 'Oshon', 'Camryn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6005890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000348, 'Leslie', 'Kishane', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6305563, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000349, 'Torres', 'Shamar', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6020459, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000350, 'Carr', 'Georgia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6014268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000351, 'Palacio', 'Gregory', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 2225193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000352, 'Reneau', 'Jayneen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6058524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000353, 'Rowley', 'Monica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6284914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000354, 'Cruz', 'Shanalee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6681052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000355, 'Vasquez', 'Paula', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6057921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000356, 'Hill', 'Michael', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6617711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000357, 'Novelo', 'Luz', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6009357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000358, 'Alonzo', 'Seidy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6636077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000359, 'Flowers', 'Keshia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6089978, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000360, 'Meggs', 'Tiffara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6610269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000361, 'Ramsey', 'Tiffany', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6332297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000362, 'Black', 'Marielli', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6158514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000363, 'Aguilar', 'Keila', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6379508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000364, 'Fuentes', 'Arianne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000365, 'Velasquez', 'Rixy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6379795, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000366, 'Chinchilla', 'Rjay', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6286770, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000367, 'Valerio', 'Gilda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6686285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000368, 'Chiac', 'Virginia', '669-886', 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000369, 'Casimiro', 'Daisy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6264127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000370, 'Chiac', 'Francelia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6611913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000371, 'Fairweather', 'Preyah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6221964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000372, 'Fernandez', 'Keandra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6610446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000373, 'Olivia', 'Techina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6652493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000374, 'Forman', 'Indica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6503309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000375, 'Cabral', 'Dalia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6510290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000376, 'Sutherland', 'Kenomi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6298467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000377, 'Cayetano', 'Natalie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6674039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000378, 'Shal', 'Fidelia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6621354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000379, 'Shal', 'Regenia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6655757, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000380, 'Cab', 'Yolanda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6203051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000381, 'Martinez', 'Reina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6696311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000382, 'Cohuoj', 'Edwardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6643716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000383, 'Sub', 'Ernesto', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6606320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000384, 'Ical', 'Chaverio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6638032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000385, 'Ical', 'Diego', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6519122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000386, 'Jackson', 'Rose', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6010904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000387, 'Alford', 'Simeon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6618447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000388, 'Young', 'Chrisbert', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6637098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000389, 'Shal', 'Theodoro', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6379835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000390, 'Garcia', 'Ramon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000391, 'Salam', 'Matthew', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6505336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000392, 'Gordon', 'Sidfred', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6203447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000393, 'Hernandez', 'Edwin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6518195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000394, 'Guerrera', 'Ernesto', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6526551, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000395, 'Cacho', 'Elfreda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6607163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000396, 'Panting', 'Carlissle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6356535, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000397, 'Shal', 'Elesario', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6627855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000398, 'Choc', 'Fiberto', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6356410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000399, 'Rubio', 'Juan', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6058479, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000400, 'Cal', 'Ortencio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6227641, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000401, 'Ariola', 'Shakira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6667923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000402, 'Pop', 'Thomas', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6370662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000403, 'Chan', 'Ana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6625928, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000404, 'Barrientos', 'Irma', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6504299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000405, 'Ical', 'Felisphonia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6520837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000406, 'Edwards', 'Yvonne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6285786, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000407, 'Lambey', 'Carolee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6082833, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000408, 'Cruz', 'Amanda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6024891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000409, 'Say', 'Lesbia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6501022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000410, 'Cornejo', 'Mirza', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6358378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000411, 'Sho', 'Olegria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6619009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000412, 'Oh', 'Cristina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6695300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000413, 'Montalvo', 'Kelly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6614901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000414, 'Palma', 'Andres', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000415, 'Wagner', 'Denfield', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000416, 'Alvarez', 'Clifford', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6647020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000417, 'Talbot', 'Kirk', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6077952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000418, 'Gomez', 'Cyril', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6365132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000419, 'Acal', 'Leonardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6513918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000420, 'Xol', 'Alfredo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000421, 'Makin', 'Adolfo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6231868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000422, 'Linarez', 'David', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6365132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000423, 'Reynolds', 'Renesha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6347935, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000424, 'Usher', 'Naomi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6619244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000425, 'Middleton', 'David', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6052419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000426, 'Dzib', 'Johnny', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6373153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000427, 'Balam', 'Nicasio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000428, 'Avella', 'Julia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6058886, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000429, 'Medwood', 'Shamira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000430, 'Casasola', 'Kenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6324837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000431, 'Velasquez', 'Jessenia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6647390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000432, 'Guzman', 'Justin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6647296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000433, 'Cain', 'Armon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6352904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000434, 'Mckoy', 'Bernadine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6670470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000435, 'Westby', 'Camaree', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6545024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000436, 'Andrews', 'Christiann', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6026921, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000437, 'Bishop', 'Kimberly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6689745, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000438, 'Bradley', 'Fenton', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6024300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000439, 'Young', 'Tyra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6357763, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000440, 'Castillo', 'Ellie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6341169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000441, 'Belgrove', 'Dayessia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6232468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000442, 'Gibson', 'Abigail', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6269943, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000443, 'Gladden', 'Jane', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6672913, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000444, 'Valerio', 'Shaqueem', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6024986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000445, 'Robateu', 'Tracy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6075737, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000446, 'Perez', 'Elda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6377480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000447, 'Young', 'Jessica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6051870, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000448, 'Chen', 'Lizama', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6219744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000449, 'Lashley', 'Deidre', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6297986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000450, 'Barry', 'Zoe', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6269757, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000451, 'Joseph', 'Renisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6501028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000452, 'Smith', 'Lavern', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6318654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000453, 'Moody', 'Christina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6311327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000454, 'Tzib', 'Keyren', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6663545, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000455, 'Gonzalez', 'Janine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6008334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000456, 'Coc', 'Syria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6201647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000457, 'Zetina', 'Celesti', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6045992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000458, 'Novelo', 'Loleta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6012868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000459, 'Yarde', 'Rashida', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6252008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000460, 'Young', 'Jenna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6240498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000461, 'Middleton', 'Trude Ann', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6610488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000462, 'Pandy', 'Timara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6271201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000463, 'Castillo', 'Donovan', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6329639, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000464, 'Wallace', 'Lizabeth', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6332153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000465, 'Baldarez', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6300082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000466, 'Quetzal', 'Joana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6241178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000467, 'Alarcon', 'Ashley', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6233920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000468, 'Nicholson', 'Denise', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6200693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000469, 'Chen', 'Galvina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6608071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000470, 'Garnett', 'Shantey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6607984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000471, 'Franco', 'Rubiceli', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6618973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000472, 'Young', 'Shaleni', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6208973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000473, 'Santos', 'Mayeni', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6080813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000474, 'Tasher', 'Shermick', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6326448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000475, 'Lopez', 'Helen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6353739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000476, 'Mariano', 'Cecilia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6233927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000477, 'Castillo', 'Ruth', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6306803, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000478, 'Diaz', 'Tyra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6239207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000479, 'Williams', 'Shayanta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6617441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000480, 'Centeno', 'Frances', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6690596, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000481, 'Neal', 'Shanice', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6366329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000482, 'Williams', 'Elaine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6506744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000483, 'Meggs', 'Tiffain', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6654865, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000484, 'Heron', 'Marleny', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6074506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000485, 'Baldwin', 'Rasheda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000486, 'Novelo', 'Elizardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6218742, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000487, 'Kelvin', 'Leonardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6016486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000488, 'Baldwin', 'Shelene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6334297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000489, 'West', 'Deidra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6240438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000490, 'Smith', 'Olga', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000491, 'Young ', 'Hortense', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000492, 'Young ', 'Tarah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 608, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000493, 'Fernandez ', 'Nicholi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000494, 'Robateau', 'Susanne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000495, 'Flowers', 'Sherhena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000496, 'Davis', 'Kieshia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000497, 'Rodriguez', 'Nadine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000498, 'Santos', 'Selena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 632, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000499, 'Nunez ', 'Kenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000500, 'Bishop', 'Kimberly ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000501, 'Andrews', 'Christianne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000502, 'Thompson', 'Gilroy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000503, 'Martinez', 'Sheena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000504, 'Avaloy', 'Andrea', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000505, 'Reina', 'Elena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000506, 'Pandy', 'Shanalee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000507, 'Sanchez', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000508, 'Ramos ', 'Brianni', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000509, 'Audinett', 'Shamira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000510, 'Baptist', 'Deidra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000511, 'Brakeman', 'Michelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000512, 'Pandy', 'Genalee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000513, 'Haulzes', 'Jermane', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000514, 'Smith', 'Lavern ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6675508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000515, 'Augustine', 'Brenda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000516, 'Andrewin', 'SherieAnn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000517, 'Stephenson', 'Cheri', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 668, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000518, 'Trapp', 'Cicily', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000519, 'Martinez', 'Golda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000520, 'Belgrave', 'Dennis', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000521, 'Baldwin', 'Shelene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000522, 'Ortiz', 'Sherilyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000523, 'Revers', 'Valerie ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000524, 'Tillett', 'Olivia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000525, 'Canul', 'Maritta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000526, 'Pandy', 'Timara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000527, 'Waight ', 'America', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6020388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000528, 'Danladi ', 'Celina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6201414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000529, 'ruano ', 'Cinthya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6690977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000530, 'Ack', 'Darlene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6312238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000531, 'Kelly', 'Katrina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6304615, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000532, 'Pascascio ', 'Lovinie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6330788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000533, 'NEMBHARD ', 'SAHIL', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6008516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000534, 'Gongora', 'Tenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6301540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000535, 'Acosta ', 'Tiffanie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6618391, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000536, 'Balam ', 'Grisela', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6618378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000537, 'Perez ', 'Maria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6045401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000538, 'Anderson ', 'Matthew', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6330989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000539, 'Figueroa ', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6277940, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000540, 'Nicholson ', 'Raisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6022438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000541, 'Munoz ', 'christian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6340616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000542, 'Tasher ', 'Garry', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6511337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000543, 'Richards ', 'Sharifa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6056258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000544, 'WADHWA ', 'SIMRAN', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6265009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000545, 'sho ', 'susana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6257614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000546, 'Matthew ', 'Mfon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6321091, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000547, 'Pitts ', 'Amica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000548, 'locke ', 'Brandon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6215036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000549, 'Cocom ', 'Camille', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6002780, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000550, 'flores ', 'carlita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6374314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000551, 'Torres ', 'Carolina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6051053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000552, 'Mcfadzean ', 'D\'Andra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6236155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000553, 'gilhary ', 'kristy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6614441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000554, 'chiac ', 'leonardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6355296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000555, 'Blanco ', 'Leticia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6297565, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000556, 'Morris ', 'Lexi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6299788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000557, 'leslie', 'shaneka', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6335879, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000558, 'Simon ', 'Stacy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6600282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000559, 'Jacobs', 'Kenya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6220747, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000560, 'Joseph', 'Anna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6287764, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000561, 'Mossiah', 'Ruseannie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6273941, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000562, 'Lucas', 'Janine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6208047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000563, 'Hamilton', 'Faith', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6541557, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000564, 'Robateau', 'Tracy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6075737, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000565, 'Gordon', 'Desiree', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6016173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000566, 'Reid', 'Ziondia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6255771, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000567, 'Bol', 'Sarita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6675428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000568, 'Smith', 'Sheonie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6689966, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000569, 'Castillo', 'Siomara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6077724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000570, 'Chi', 'Anna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6078115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000571, 'Teul', 'Maria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6205137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000572, 'Flowers', 'Kayla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6373161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000573, 'Middleton', 'Janice', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6324143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000574, 'Lashley', 'Deidre', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000575, 'Garcia', 'Anselma', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000576, 'Cadle', 'Charline', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 605, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000577, 'Harris', 'Kimera', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000578, 'Mejivar', 'Zoila', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000579, 'Figueroa', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000580, 'Clare', 'Tanisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 631, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000581, 'Ugarte', 'Vilma', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000582, 'Sho', 'Michelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000583, 'Guzman', 'Justin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6684274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000584, 'Herbert', 'Mariah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000585, 'Teck', 'Gariesha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 651, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000586, 'Pelayo', 'Shaniya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000587, 'Shanira', 'Perez', 'test', 000123001, '56 Quilter Avenue', 'Ladyville', 'Corozal', 'Belize', 'linito1231@gmail.com', 1231234, 631, 'Adelita Correa', 6238201, 'Mother', 'F', '1999-12-16', 'Married', 'lyno', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2016-01-01 00:00:00', 1, 0, 'Bachelors in Education', 'University of Belize', 'Baptist High School', 'Programmer', 'DCORREA', '2020-05-01 11:00:23', NULL),
(0000588, 'Jason', 'Saquil', 'test', 002002222, '56 Quilter Avenue', 'Ladyville ', 'Cayo', 'Belize', '7son7of7god@gmail.com', 1231234, 6221231, 'Abelino Correa', 6238201, '    Father', 'M', '1999-12-16', 'Common-Law', 'lyno', '56 quilter avenue', 'Belize', 6784234, '', '', '', 0, '', '', '', 0, '2016-01-01 00:00:00', 1, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000589, 'Omar', 'Rodriguez', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000590, 'Christina', 'Escalante', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000591, 'Cab', 'Elton J.', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000592, 'Wade', 'Dehvon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000593, 'Williams', 'Raheim', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000594, 'Martinez', 'Adana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000595, 'August', 'Jennis', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000596, 'Pinkard', 'Kimberly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000597, 'Muhammed Ali', 'Miekah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000598, 'Ayala', 'Tania', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000599, 'Bol', 'Cristina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000600, 'Gongora', 'Britney', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000601, 'Martinez', 'Sally', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000602, 'Henderson', 'Radiance', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000603, 'Richards', 'Shanice', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000604, 'Henry ', 'D\'Artagnana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6321018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000605, 'Aziza', 'Leonardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6016891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000606, 'Chub', 'Ethan ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6642729, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000607, 'Smith', 'Crea', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6325393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000608, 'Sho', 'Christopher ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000609, 'Westby', 'Abigail', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000610, 'Paredes', 'Shannen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000611, 'Michael', 'Joshua', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000612, 'Baldarez', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000613, 'Flowers', 'Shaneen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000614, 'Staine', 'Janelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000615, 'Rodriguez', 'Jayanna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000616, 'Gladden', 'Karen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000617, 'Tyrell', 'Shevell', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000618, 'Barrow', 'Keron', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000619, 'Young', 'Roshanda ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000620, 'Guzman', 'Dale', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000621, 'Garcia', 'Iris', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000622, 'DeCosta', 'Allison ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000623, 'Higinio', 'Latiffa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000624, 'Belisle', 'Jeremy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000625, 'Palacio', 'Daelene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000626, 'Joseph', 'Dawn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000627, 'Nunez', 'Carla ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000628, 'Pope', 'Hertha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000629, 'Casimiro ', 'Collin ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000630, 'Arthurs', 'Kimberly ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000631, 'Kerr', 'Elsa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000632, 'Arzu', 'Oslyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000633, 'Segura ', 'Amy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000634, 'Garnette', 'Joshua ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000635, 'Ical', 'Anna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6238890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000636, 'Velasquez', 'Beverly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6339903, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000637, 'Palma', 'Jessica ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6347883, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000638, 'Young', 'Gilbert', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6204378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000639, 'Awe ', 'Melhelm', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000640, 'Neal', 'Keyannee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6002528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000641, 'Caceres', 'Uriel ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6057104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000642, 'Coc-Canto', 'Veronica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6712003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000643, 'Coc', 'Angelita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6531265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000644, 'Velasquez', 'Aisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6260378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000645, 'Humes', 'Alton', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 2073334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000646, 'Ruiz', 'Alya', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6204015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000647, 'Coye', 'Arlina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6244966, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000648, 'Rodriguez ', 'Arseny ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6256375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000649, 'Moody', 'Brianna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6316127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000650, 'Pimentel', 'Evelyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6263108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000651, 'Dawson', 'Joyce', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 8043433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000652, 'Flores', 'Katrina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6297858, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000653, 'Hernandez', 'Maria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6335539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000654, 'Cu', 'Michel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6650946, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000655, 'Zaiden ', 'Neri', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000656, 'Mejia ', 'Paulette ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000657, 'Xis', 'Perlita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6325741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000658, 'Cruz', 'Rudy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6374687, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000659, 'Temple', 'Rudy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6243128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000660, 'Tzib', 'Sammy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6511947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000661, 'Gongora ', 'Shalene ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000662, 'Martinez ', 'Shanice ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000663, ' Mejia', 'Simon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6331328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000664, 'Mesh', 'Sulizy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6665390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000665, 'Requena', 'Tamara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6244269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000666, 'Bacab', 'Tammy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6600261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000667, 'Larios', 'Wendy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6669417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000668, 'Caceres', 'Giselle ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000669, 'Geban', 'Naseem', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6333467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000670, 'Castillo', 'Carla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6533447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000671, 'Tzib', 'Jacob', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6668107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000672, 'Chavarria ', 'Aidian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6081788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000673, 'Sosa', 'Amy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6277526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000674, 'Ruano ', 'Cinthya ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000675, 'Castellanos ', 'Delsy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000676, 'Gonzalez ', 'Dalia ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000677, 'Chi ', 'Delita ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000678, 'Edwards', 'Diandra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6530218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000679, 'Grinage', 'Elra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6612912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000680, 'Nolberto', 'Emerlyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6355516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000681, 'Tzib', 'Erika', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6675523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000682, 'Pinelo', 'Ingris', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6653943, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000683, 'Hernandez ', 'Jaklin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000684, 'Recinos ', 'Karla ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000685, 'Craig ', 'Makel ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000686, 'Aldana', 'Kenrick', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6634105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000687, 'Can', 'Miguel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6056747, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000688, 'Martinez', 'Mirelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6227238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000689, 'Gomez', 'Noreen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6014378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000690, 'Duce', 'Resilla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6359624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000691, 'Elijio', 'Samara', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6333467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000692, 'Sanchez', 'Sandra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6235599, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000693, 'Hernandez', 'Stephanie ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000694, 'Ical ', 'Trisha ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000695, 'Raymundo', 'Sharolee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6377299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000696, 'Salam ', 'Jessica ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000697, 'Cunil ', 'Yvette ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000698, 'Vanegas ', 'Amilsa ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000699, 'Santos', 'Rosalily', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6317929, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000700, 'N unez ', 'Alice ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000701, 'Ash ', 'Neftali ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000702, 'Gamez', 'Berta ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000703, 'Tejeda ', 'Marilyn ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000704, 'Flores', 'Kimberly ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000705, 'Harris ', 'Melvy ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000706, 'Montalvan ', 'Muren ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000707, 'Garcia ', 'Daria ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000708, 'Rodriguez ', 'Agnes ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000709, 'Bennett ', 'Denise', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6081788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000710, 'Cu', 'Kendra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6080049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000711, 'Thompson', 'Bryannie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6509353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000712, 'Humes', 'Shanel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6310178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000713, 'Smith ', 'Marvelita ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000714, 'Zetina ', 'Shane ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000715, 'Pinelo ', 'Merian ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000716, 'Velasquez', 'Rick', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000717, 'Smauels', 'Jonathan', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000718, 'Novelo', 'Jermaine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000719, 'Olivera', 'Nicki', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000720, 'Engleton', 'Shemar', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000721, 'Caliz', 'Ajah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000722, 'Williams', 'Melissa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000723, 'Arthurs', 'Rosangela', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000724, 'August', 'Alehia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000725, 'Usher', 'Anthony', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000726, 'Foster', 'Azania', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000727, 'Roches', 'Brittany', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000728, 'Thompson', 'Edmond', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000729, 'Gentle', 'Keonee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000730, 'Hernandez', 'Claudia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000731, 'Tun', 'Marie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000732, 'Gabourel', 'Patrick', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000733, 'Broaster', 'Alex', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000734, 'Diaz', 'Elena', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000735, 'Roches', 'Nisani', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000736, 'Aranda', 'Sheminique', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000737, 'Rodriguez', 'Douglas', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000738, 'Williams', 'Daisy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000739, 'Petillo', 'Aaliyah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000740, 'Kerr', 'Sharina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000741, 'Popper', 'Kevin ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000742, 'Halliday', 'Marcellie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000743, 'Stephenson', 'Haldane', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000744, 'Enriquez', 'Tracey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000745, 'Rivero', ' Lupita Marielie ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000746, 'Cassanova', 'Abdul ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000747, 'Rodriguez', 'Alejandro', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000748, 'Benavides', 'Amber', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000749, 'Rodriguez', 'Ana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000750, 'Zelaya', 'Arlen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000751, 'Meggs', 'Arlon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000752, 'Batun', 'Aurelio', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000753, 'Lizama', 'Benigno', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000754, 'Rowland', 'Brian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000755, 'Roberts', 'Calbert', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000756, 'Manzanero', 'Carlos', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000757, 'Abrego', 'Carmen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000758, 'Ramos', 'Christian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000759, 'Zelaya', 'Christian', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000760, 'Ramclam', 'Christina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000761, 'Nunez', 'Darlene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000762, 'Dawson', 'Deborey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000763, 'Paiz', 'Eduardo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000764, 'Henkis', 'Eleseo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000765, 'Martinez', 'Elvin ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000766, 'Avilez', 'Eris', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000767, 'Hernandez', 'Eris', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000768, 'Novelo', 'Ernaldo', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000769, 'Givarra', 'Felicia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000770, 'Vasquez', 'Glendy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000771, 'Gomez', 'Hortense', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000772, 'Duran', 'Indeira', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000773, 'Jucub', 'India', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000774, 'Perez', 'Ingrid', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000775, 'Romero', 'Ivan', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000776, 'Melendez', 'James', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000777, 'Carrillo', 'Jessica', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000778, 'Oba', 'Jesus', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000779, 'Pena', 'John', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000780, 'Tamay', 'Jordan', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000781, 'Harculas', 'Jorge', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000782, 'Pate', 'Joseph', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000783, 'Rowland', 'Jovannie ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000784, 'Morales', 'Julia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000785, 'Ramirez', 'Justin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000786, 'Casanova', 'Justin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000787, 'Requena', 'Karina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000788, 'Harris', 'Katty', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000789, 'Humes', 'Kenroy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000790, 'Acuna', 'Leidy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000791, 'Acosta', 'Leslie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000792, 'Choc', 'Marcelino', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000793, 'Martinez', 'Maria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000794, 'Choco', 'Matusaleme', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000795, 'Meggs', 'Melinda ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000796, 'Campos', 'Misael', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000797, 'Rodas', 'Nalleli', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000798, 'Novelo', 'Nelicia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000799, 'Cain', 'Nikita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000800, 'Mai', 'Randy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000801, 'Vasquez', 'Roxana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000802, 'Chan', 'Sabdi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000803, 'Rodriguez', 'Samuel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000804, 'Thompson', 'Shamir', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000805, 'Gongora', 'Thomas', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000806, 'Waight', 'Travis ', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000807, 'Dominguez', 'Yester', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000808, 'Heredia', 'Yvonne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000809, 'Humes', 'Zenie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000810, 'Myers', 'Nisa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000811, 'Rodriguez', 'Karen', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6251643, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000812, 'Pratt', 'Crisilda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6215151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000813, 'Hernandez', 'Georgiana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6008427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000814, 'Hijinio', 'Dawn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6053121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000815, 'McKay', 'Timera', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6258013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000816, 'August', 'Arilee', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000817, 'Leslie', 'Taishey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6320458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000818, 'Pollard', 'Tynna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6641508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000819, 'Haylock', 'Natasha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6364582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000820, 'Neal', 'Shevonne', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6377521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000821, 'Fuentes', 'Layla', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6505188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000822, 'Smith', 'Kellie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6513823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000823, 'Orellana', 'Yenny', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6292186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000824, 'Smith', 'Shenell', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6296437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000825, 'Longsworth', 'Francisca', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6251186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000826, 'Zuleta', 'Rosita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6005598, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000827, 'Cadle', 'Tanisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6378309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000828, 'Mozier', 'Tricia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6632318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `ssn`, `street`, `ctv`, `district`, `country`, `email`, `home_phone`, `mobile_phone`, `ec_name`, `ec_number`, `ec_relation`, `gender`, `dob`, `marital_status`, `ref_name1`, `ref_address1`, `ref_city1`, `ref_phone1`, `ref_name2`, `ref_address2`, `ref_city2`, `ref_phone2`, `ref_name3`, `ref_address3`, `ref_city3`, `ref_phone3`, `created_on`, `profile_img_id`, `is_client`, `ed_degree`, `ed_name`, `employed_at`, `em_position`, `updated_by`, `updated_on`, `is_enrolled`) VALUES
(0000829, 'Magdaleno', 'Melene', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6238184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000830, 'Alvarez', 'Virginie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6349920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000831, 'Daniels', 'Sharima', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6655669, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000832, 'Vasquez', 'Sharlean', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6698595, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000833, 'Ruiz', 'Dalia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 2078164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000834, 'Seguro', 'Sherilyn', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6374177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000835, 'Maskall', 'Jasmin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6233690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000836, 'Loredo', 'Alfanette', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6341721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000837, 'Nolberto', 'Shakeria', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6327876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000838, 'Bainton', 'Shantae', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6268371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000839, 'Gill', 'Clintania', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6256999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000840, 'Budna', 'Jenna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6282083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000841, 'Blease', 'Sitnah', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6215240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000842, 'Martinez', 'Ashanty', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6226636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000843, 'Nu\'Man', 'Khalid', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6022035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000844, 'Smith', 'Mandy', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6360811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000845, 'Jorgenson', 'Shakera', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6203544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000846, 'Williams', 'Shayanta', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6055126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000847, 'Coy', 'Miguel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6046610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000848, 'Warrior', 'Deon', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6224702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000849, 'Henriquez', 'Carlos', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6631499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000850, 'Jenkins', 'Melissa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6047897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000851, 'Stephenson', 'Cheri', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6014628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000852, 'Lambey', 'Sini', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6645655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000853, 'Lind', 'China', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6690173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000854, 'Lashley', 'Deidre', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6297986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000855, 'Sho', 'Christopher', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6690311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000856, 'Nolberto', 'Shannel', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6260472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000857, 'Roches', 'Loony', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6010416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000858, 'Flores', 'Edwina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6295659, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000859, 'Sealey', 'Pamela', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6666211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000860, 'Daly', 'Ivana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6078531, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000861, 'Dawson', 'Audrey', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6310623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000862, 'Faber', 'Crystal', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6085311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000863, 'Ozaeta', 'Lilly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6511808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000864, 'Osorio', 'Ana', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6330348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000865, 'Hernandez', 'Andrea', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6084003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000866, 'Cawich', 'Andreina', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6600198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000867, 'Franciso', 'Annette', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6232267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000868, 'Flores', 'Christine', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000869, 'Salas', 'Clayri', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000870, 'Perez', 'Denise', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6375655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000871, 'Tillett', 'Dianelly', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6619107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000872, 'Cuellar', 'Dori', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6531026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000873, 'Tzul', 'Elvia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000874, 'Carillo', 'Ginelle', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6612952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000875, 'Perez', 'Lisa', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6327484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000876, 'Rochez', 'Neima', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000877, 'Garcia', 'Rosita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000878, 'Blades', 'Sandie', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000879, 'Martinez', 'Shanny', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6354092, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000880, 'Catzim', 'Teresita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6611661, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000881, 'Romero', 'Yolanda', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6243116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000882, 'Bennett', 'Michell', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000883, 'Louriano', 'Kenisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000884, 'Rose', 'Kevin', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000885, 'Blades', 'Desiree', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000886, 'Vaccaro', 'Felicia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000887, 'Valentine', 'Francelia', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6206533, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000888, 'Lucas', 'Tisandi', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6341893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000889, 'Williams', 'Sandra', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6338163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000890, 'Stuart', 'Trevauna', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6370412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000891, 'Figueroa', 'Nicole', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6147116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000892, 'Lopez', 'Ruth', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6085088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000893, 'Navarro Gabb', 'Rita', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6682355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000894, 'Petillo', 'Camisha', NULL, 000000000, NULL, NULL, NULL, NULL, NULL, NULL, 6300369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL),
(0000895, 'testaaaa', 'test', 'Lino', 002001001, '56 Quilter Avenue', 'Ladyville', 'Belize', 'Belize', 'danielsoncorrea@gmail.com', 1231234, 6687434, 'Abelino Correa', NULL, 'Father', 'F', '1999-12-16', 'Married', 'linito', '56 quilter avenue', 'Belize', 678, '', '', '', 0, '', '', '', 0, '2016-01-01 00:00:00', 11, 1, '', '', NULL, NULL, NULL, NULL, NULL),
(0000896, 'testing', 'test', 'linito', 002001002, '56 Quilter Avenue', 'Ladyville', 'Orange Walk', 'Belize', 'wow@gmail.com', 1231234, 6687434, 'Abelino Correa', 6238201, '           Father', 'M', '1999-12-16', 'Single', 'linito', '56 quilter avenue', 'Belize', 678, '', '', '', 0, '', '', '', 0, '2020-02-19 13:24:34', 30, 1, '', '', NULL, NULL, NULL, NULL, NULL),
(0000903, 'correa', 'Danielson', 'Linito', 002000777, '56 Quilter Avenue', 'Ladyville', 'Belize', 'Belize', 'danielsoncorrea@gmail.com', 1231234, 6687434, 'Adelita Correa', 6238201, 'Mother', 'M', '1999-12-16', 'Common-Law', 'lyno', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2020-02-26 14:21:41', 1, 1, 'Associates Degree', 'University of Belize', 'Beltraide', 'Programmer', 'DCORREA', '2020-04-29 11:31:42', NULL),
(0000904, 'correa', 'Danillie', 'linita', 002000776, '56 Quilter Avenue', 'Ladyville', 'Cayo', 'Belize', 'danielsoncorrea@gmail.com', 1231235, 6687435, 'Abelino Correa', 6238201, 'Brother', 'F', '1999-12-16', 'Married', 'linito', '56 quilter avenue', 'Belize', 6784356, '', '', '', 0, '', '', '', 0, '2020-02-26 14:26:49', 13, 1, '', '', NULL, NULL, NULL, NULL, NULL),
(0000905, 'woggy', 'pudge', 'dutch', 002001111, '56 Quilter Avenue', 'Ladyville', 'Cayo', 'Belize', 'testing@gmail.com', 1231234, 6687434, 'Abelino Correa', 6238201, 'Father', 'M', '1999-12-16', 'Married', 'lyno', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2020-02-28 05:37:03', 1, 1, '', '', NULL, NULL, NULL, NULL, NULL),
(0000906, 'testaaaa', 'Danielson', 'Linito', 002001452, '56 Quilter Avenue', 'Ladyville', 'Belize', 'Belize', '7son7of7god@gmail.cm', 1231234, 6687434, 'Abelino Correa', 6238201, 'Father', 'M', '1999-12-16', 'Single', 'linito', '56 quilter avenue', 'Belize', 6784343, 'lino', 'some st', 'some city', 6684545, '', '', '', 0, '2020-02-28 05:57:28', 84, 1, 'Associates Degree', 'University of Belize', 'Beltraide', 'Programmer', 'DCORREA', '2020-06-10 15:18:03', NULL),
(0000907, 'Chi', 'Eliezer', 'Linito', 123456781, '44 Quilter Avenue', 'Santa Elena', 'Cayo', 'Belize', 'Eliezer@gmail.com', NULL, 6661234, 'Linito', 6687434, 'Cousin', 'M', '1999-12-16', 'Married', 'daniels', '56 quilter avenue', 'Belize', 1234567, '', '', '', 0, '', '', '', 0, '2020-03-13 12:25:40', 1, 1, 'Bachelors in Education', 'University of Belize', 'Baptist High School', NULL, NULL, NULL, NULL),
(0000920, 'correa', 'Danielson', 'Linito', 000777777, '56 Quilter Avenue', 'Ladyville', 'Corozal', 'Belize', '7son7of7god@gmail.com', 1231234, 6687434, 'Adelita Correa', 6238201, 'Mother', 'M', '1999-12-12', 'Single', 'linito', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2020-04-27 04:39:44', 85, 1, 'Bachelors in Education', 'University of Belize', 'Baptist High School', 'Teacher', 'DCORREA', '2020-04-27 11:02:11', NULL),
(0000922, 'correa', 'Danielson', 'Linito', 000343443, '56 Quilter Avenue', 'Santa Elena', 'Corozal', 'Belize', '7son7of7god@gmail.com', 1231234, 6687434, 'Adelita Correa', 6238201, 'Father', 'M', '1999-12-12', 'Single', 'linito', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2020-04-27 05:54:52', 1, 1, 'Bachelors in Education', 'University of Belize', 'Baptist High School', 'Teacher', NULL, NULL, NULL),
(0000923, 'woggy', 'Danielson', 'Lino', 000123124, '56 Quilter Avenue', 'Ladyville', 'Stann Creek', 'Belize', 'test@gmail.com', 1231234, 6687434, 'Abelino Correa', 6238201, 'Mother', 'M', '1999-12-12', 'Single', 'linito', '56 quilter avenue', 'Belize', 6784343, '', '', '', 0, '', '', '', 0, '2020-04-27 07:48:45', 1, 1, 'Associates Degree', 'University of Belize', 'Baptist High School', 'Teacher', 'DCORREA', '2020-06-16 16:50:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `barbering`
--

CREATE TABLE `barbering` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Introduction to Barbering',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barbering`
--

INSERT INTO `barbering` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(14, 0000587, 'Introduction to Barbering', 'Completed', 99.0, 2017, NULL, NULL, NULL, NULL, '0.0', 100.0, 100.0, 'She loved the course.', '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(15, 0000588, 'Introduction to Barbering', 'Completed', 98.9, 2017, NULL, NULL, NULL, NULL, '0.0', 91.0, 90.0, '', '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(16, 0000589, 'Introduction to Barbering', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', 85.0, 85.0, NULL, '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(17, 0000590, 'Introduction to Barbering', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', 80.0, 80.0, NULL, '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(18, 0000591, 'Introduction to Barbering', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', 75.0, 75.0, NULL, '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(19, 0000592, 'Introduction to Barbering', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', 65.0, 65.0, NULL, '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(20, 0000593, 'Introduction to Barbering', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', 50.0, 50.0, NULL, '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(22, 0000896, 'Introduction to Barbering', 'Enrolled', 70.0, 2020, 'test,', 'test,', NULL, NULL, NULL, 0.0, 10.0, 'He did much better this year.', '0000-00-00', '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(23, 0000905, 'Introduction to Barbering', 'Completed', 100.0, 2020, NULL, NULL, NULL, NULL, '0.0', 70.0, 70.0, 'blah blah blah!', NULL, '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(24, 0000906, 'Introduction to Barbering', 'Completed', 70.0, 2020, 'quiz1,100', 'quiz2,100', 'quiz3,100', NULL, '0.0', 99.0, 100.0, '', NULL, '2020-03-05 10:20:43', '', NULL, NULL, NULL, 0),
(25, 0000903, 'Introduction to Barbering', 'Rejected', 69.0, 2020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-29 11:30:09', 'DCORREA', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bartending`
--

CREATE TABLE `bartending` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Bartending',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bartending`
--

INSERT INTO `bartending` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000354, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 1),
(2, 0000355, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 1),
(3, 0000356, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 1),
(4, 0000357, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(5, 0000358, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(6, 0000359, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(7, 0000360, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(8, 0000361, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(9, 0000362, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(10, 0000363, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(11, 0000024, 'Bartending', 'Completed', 0.0, 2017, 'quiz1,100', 'quiz2,100', NULL, NULL, NULL, NULL, 100.0, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(12, 0000085, 'Bartending', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(13, 0000128, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(14, 0000143, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(15, 0000146, 'Bartending', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(16, 0000237, 'Bartending', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(17, 0000326, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(18, 0000423, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(19, 0000424, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(20, 0000425, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(21, 0000426, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(22, 0000427, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(23, 0000428, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(24, 0000429, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(25, 0000430, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(26, 0000431, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(27, 0000432, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(28, 0000433, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(29, 0000434, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(30, 0000435, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(31, 0000436, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(32, 0000437, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(33, 0000438, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(34, 0000439, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(35, 0000440, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(36, 0000441, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(37, 0000442, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(38, 0000443, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(39, 0000444, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(40, 0000445, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(41, 0000446, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(42, 0000447, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(43, 0000448, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(44, 0000449, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(45, 0000450, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(46, 0000451, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(47, 0000452, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(48, 0000453, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(49, 0000454, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(50, 0000455, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(51, 0000456, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(52, 0000457, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(53, 0000458, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(54, 0000459, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(55, 0000460, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(56, 0000461, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(57, 0000462, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(58, 0000463, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(59, 0000464, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(60, 0000465, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(61, 0000466, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(62, 0000467, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(63, 0000468, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(64, 0000469, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(65, 0000470, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(66, 0000471, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(67, 0000472, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(68, 0000473, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(69, 0000474, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(70, 0000475, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(71, 0000476, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(72, 0000477, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(73, 0000478, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(74, 0000479, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(75, 0000480, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(76, 0000481, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(77, 0000482, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(78, 0000483, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(79, 0000484, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(80, 0000485, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(81, 0000486, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(82, 0000487, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(83, 0000488, 'Bartending', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(84, 0000311, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(85, 0000312, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(86, 0000313, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(87, 0000314, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(88, 0000315, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(89, 0000316, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(90, 0000317, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(91, 0000318, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(92, 0000319, 'Bartending', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(93, 0000320, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(94, 0000321, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(95, 0000322, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(96, 0000323, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(97, 0000324, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(98, 0000325, 'Bartending', 'Participated', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(99, 0000389, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(100, 0000390, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(101, 0000391, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(102, 0000392, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(103, 0000393, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(104, 0000394, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(105, 0000395, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(106, 0000396, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(107, 0000397, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(108, 0000398, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(109, 0000399, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(110, 0000400, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(111, 0000401, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(112, 0000402, 'Bartending', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:44:47', '', NULL, NULL, NULL, 0),
(127, 0000923, 'Bartending', 'Enrolled', 70.0, 2020, 'quiz1,', 'quiz2,', 'test,', NULL, NULL, NULL, 0.0, '', NULL, '2020-04-27 07:48:45', 'DCORREA', '2020-06-16 16:49:01', 'DCORREA', NULL, 0),
(130, 0000906, 'Bartending', 'Completed', 70.0, 2020, 'quiz1,', 'quiz2,', 'test,', NULL, NULL, NULL, 0.0, '<ul><li style=\"text-align: left;\"><span style=\"background-color: rgb(255, 255, 0);\"><i>Did</i></span>&nbsp;<span style=\"font-weight: bolder;\">not</span>&nbsp;<u>study</u>&nbsp;<strike>for</strike>&nbsp;<sup style=\"font-size: 12px;\">his</sup>&nbsp;<sub style=\"font-size: 12px;\">final</sub>&nbsp;<span style=\"font-size: 24px;\">quiz</span></li><li style=\"text-align: left;\"><span style=\"font-size: 24px;\">&lt;script&gt;alert(\'\'XXS\'\');&lt;/script&gt;</span></li><li style=\"text-align: left;\"><span style=\"font-size: 24px;\"><br></span></li></ul>', '2020-06-10', '2020-04-28 06:36:20', 'DCORREA', '2020-06-10 11:47:04', 'DCORREA', NULL, 0),
(132, 0000903, 'Bartending', 'Completed', 70.0, 2020, 'quiz1,80', 'quiz2,80', NULL, NULL, NULL, NULL, 80.0, '<p>He did a good job. Was rather quite most of the time tho .</p>', '2020-04-29', '2020-04-29 11:27:03', 'DCORREA', '2020-04-29 11:28:26', 'DCORREA', 'Danielson_Correa_1591369257.pdf', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `basicreport`
-- (See below for the actual view)
--
CREATE TABLE `basicreport` (
`Name` varchar(61)
,`Gender` varchar(1)
,`SSN` int(9) unsigned zerofill
,`Email` varchar(75)
,`Phone Number` int(7)
,`Final Average` float(4,1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `basicreport2`
-- (See below for the actual view)
--
CREATE TABLE `basicreport2` (
`Name` varchar(61)
,`Gender` varchar(1)
,`SSN` int(9) unsigned zerofill
,`Email` varchar(75)
,`Phone Number` int(7)
,`Ref. Name #1` varchar(75)
,`Ref. Address #1` varchar(75)
,`Ref. City #1` varchar(75)
,`Ref. Phone #1` int(7)
,`Ref. Name #2` varchar(75)
,`Ref. Address #2` varchar(75)
,`Ref. City #2` varchar(75)
,`Ref. Phone #2` int(7)
,`Ref. Name #3` varchar(75)
,`Ref. Address #3` varchar(75)
,`Ref. City #3` varchar(75)
,`Ref. Phone #3` int(7)
,`Educational Institution` varchar(150)
,`Education Level` varchar(150)
,`Employer` varchar(150)
,`Job Title` varchar(150)
,`Enrolled In` int(4)
,`Final Average` float(4,1)
);

-- --------------------------------------------------------

--
-- Table structure for table `bpo`
--

CREATE TABLE `bpo` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Business Process Outsourcing',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bpo`
--

INSERT INTO `bpo` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000001, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(2, 0000002, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(3, 0000003, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(4, 0000004, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(5, 0000005, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(6, 0000006, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(7, 0000008, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(8, 0000009, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(9, 0000010, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(10, 0000011, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(11, 0000012, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(12, 0000013, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(13, 0000014, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(14, 0000015, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(15, 0000016, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(16, 0000017, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(17, 0000018, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(18, 0000019, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(19, 0000020, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(20, 0000021, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(21, 0000022, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(22, 0000023, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(23, 0000024, 'Business Process Outsourcing', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(24, 0000025, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(25, 0000026, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(26, 0000027, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(27, 0000028, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(28, 0000029, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(29, 0000030, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(30, 0000031, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(31, 0000032, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(32, 0000033, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(33, 0000034, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(34, 0000035, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(35, 0000036, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(36, 0000037, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(37, 0000038, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(38, 0000039, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(39, 0000040, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(40, 0000041, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(41, 0000042, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(42, 0000043, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(43, 0000044, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(44, 0000045, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(45, 0000046, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(46, 0000047, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(47, 0000048, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(48, 0000049, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(49, 0000050, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(50, 0000051, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(51, 0000052, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(52, 0000053, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(53, 0000054, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(54, 0000055, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(55, 0000056, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(56, 0000058, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(57, 0000059, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(58, 0000060, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(59, 0000061, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(60, 0000063, 'Business Process Outsourcing', 'Enrolled', 10.0, 2015, 'test1,', 'test2,', 'tes3,', NULL, NULL, NULL, NULL, '', '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(61, 0000064, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(62, 0000065, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(63, 0000067, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(64, 0000068, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(65, 0000069, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(66, 0000070, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(67, 0000071, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(68, 0000072, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(69, 0000073, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(70, 0000074, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(71, 0000075, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(72, 0000076, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(73, 0000077, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(74, 0000078, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(75, 0000079, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(76, 0000080, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(77, 0000081, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(78, 0000082, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(79, 0000084, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(80, 0000085, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(81, 0000086, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(82, 0000087, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(83, 0000088, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(84, 0000089, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(85, 0000090, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(86, 0000091, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(87, 0000092, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(88, 0000093, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(89, 0000094, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(90, 0000095, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(91, 0000096, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(92, 0000097, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(93, 0000098, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(94, 0000129, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(95, 0000131, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(96, 0000138, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(97, 0000139, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(98, 0000141, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(99, 0000142, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(100, 0000143, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(101, 0000144, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(102, 0000146, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(103, 0000148, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(104, 0000151, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(105, 0000152, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(106, 0000157, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(107, 0000158, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(108, 0000159, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(109, 0000162, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(110, 0000163, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(111, 0000164, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(112, 0000165, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(113, 0000166, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(114, 0000167, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(115, 0000168, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(116, 0000169, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(117, 0000170, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(118, 0000171, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(119, 0000172, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(120, 0000173, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(121, 0000174, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(122, 0000175, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(123, 0000176, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(124, 0000177, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(125, 0000179, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(126, 0000180, 'Business Process Outsourcing', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(127, 0000181, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(128, 0000182, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(129, 0000183, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(130, 0000184, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(131, 0000185, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(132, 0000186, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(133, 0000187, 'Business Process Outsourcing', NULL, 0.0, 2014, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(134, 0000188, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(135, 0000189, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(136, 0000190, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(137, 0000191, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(138, 0000192, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(139, 0000193, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(140, 0000194, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(141, 0000195, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(142, 0000196, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(143, 0000197, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(144, 0000198, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(145, 0000199, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(146, 0000200, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(147, 0000201, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(148, 0000202, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(149, 0000203, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(150, 0000204, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(151, 0000205, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(152, 0000206, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(153, 0000207, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(154, 0000208, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(155, 0000209, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(156, 0000210, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(157, 0000211, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(158, 0000212, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(159, 0000213, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(160, 0000214, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(161, 0000215, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(162, 0000216, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(163, 0000217, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(164, 0000218, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(165, 0000219, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(166, 0000220, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(167, 0000221, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(168, 0000222, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(169, 0000223, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(170, 0000224, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(171, 0000225, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(172, 0000226, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(173, 0000227, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(174, 0000228, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(175, 0000229, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(176, 0000230, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(177, 0000231, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(178, 0000232, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(179, 0000233, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(180, 0000234, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(181, 0000235, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(182, 0000236, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(183, 0000237, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(184, 0000238, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(185, 0000239, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(186, 0000240, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(187, 0000241, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(188, 0000242, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(189, 0000243, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(190, 0000244, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(191, 0000245, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(192, 0000246, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(193, 0000247, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(194, 0000248, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(195, 0000249, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(196, 0000250, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(197, 0000251, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(198, 0000252, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(199, 0000253, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(200, 0000254, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(201, 0000255, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(202, 0000256, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(203, 0000257, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(204, 0000258, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(205, 0000259, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(206, 0000260, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(207, 0000261, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(208, 0000262, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(209, 0000326, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(210, 0000342, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(211, 0000343, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(212, 0000344, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(213, 0000345, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(214, 0000346, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(215, 0000347, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(216, 0000348, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(217, 0000349, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(218, 0000350, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(219, 0000351, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(220, 0000352, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(221, 0000353, 'Business Process Outsourcing', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(222, 0000486, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(223, 0000609, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(224, 0000610, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(225, 0000611, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(226, 0000612, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(227, 0000613, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(228, 0000614, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(229, 0000615, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(230, 0000616, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(231, 0000617, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(232, 0000618, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(233, 0000619, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(234, 0000620, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(235, 0000621, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(236, 0000622, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(237, 0000623, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(238, 0000624, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(239, 0000625, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(240, 0000626, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(241, 0000627, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(242, 0000628, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(243, 0000629, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(244, 0000630, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(245, 0000631, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(246, 0000632, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(247, 0000716, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(248, 0000717, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(249, 0000718, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(250, 0000719, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(251, 0000720, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(252, 0000721, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(253, 0000722, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(254, 0000723, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(255, 0000724, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(256, 0000725, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(257, 0000726, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(258, 0000727, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(259, 0000728, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(260, 0000729, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(261, 0000730, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(262, 0000731, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(263, 0000732, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(264, 0000733, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(265, 0000734, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(266, 0000735, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(267, 0000736, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(268, 0000737, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(269, 0000738, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(270, 0000739, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(271, 0000740, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(272, 0000741, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(273, 0000742, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(274, 0000743, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(275, 0000744, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(276, 0000149, 'Business Process Outsourcing', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(277, 0000545, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(278, 0000546, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(279, 0000547, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(280, 0000548, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(281, 0000549, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(282, 0000550, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(283, 0000551, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(284, 0000552, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(285, 0000553, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(286, 0000554, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0);
INSERT INTO `bpo` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(287, 0000555, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(288, 0000556, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(289, 0000557, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(290, 0000558, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(292, 0000536, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(293, 0000537, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(294, 0000538, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(295, 0000539, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(296, 0000540, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(297, 0000541, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(298, 0000542, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(299, 0000543, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(300, 0000544, 'Business Process Outsourcing', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(307, 0000063, 'Business Process Outsourcing', 'Enrolled', 10.0, 2015, 'test1,', 'test2,', 'tes3,', NULL, NULL, NULL, NULL, '', NULL, '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(311, 0000588, 'Business Process Outsourcing', 'Completed', 10.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, '', NULL, '2020-03-05 10:45:53', '', NULL, NULL, NULL, 0),
(312, 0000903, 'Business Process Outsourcing', 'Participated', 80.0, 2020, 'test1,70', 'test2,50', 'tes3,98', NULL, NULL, NULL, 72.7, '<p>He did show up to class frequently</p>', '2020-04-29', '2020-04-29 11:31:42', 'DCORREA', '2020-04-29 11:34:15', 'DCORREA', NULL, 0),
(313, 0000906, 'Business Process Outsourcing', 'Enrolled', 70.0, 2020, 'test1,', 'test2,', 'tes3,', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-29 15:42:27', 'DCORREA', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `child_care`
--

CREATE TABLE `child_care` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Child Care Training',
  `status` enum('Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child_care`
--

INSERT INTO `child_care` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000887, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(2, 0000888, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(3, 0000889, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(4, 0000890, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(5, 0000891, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(6, 0000892, 'Child Care Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(7, 0000893, 'Child Care Training', 'Participated', 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(8, 0000894, 'Child Care Training', 'Completed', 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:17', '', NULL, NULL, NULL, 0),
(10, 0000907, 'Child Care Training', 'Enrolled', 70.0, 2020, 'PC,', NULL, NULL, NULL, NULL, NULL, 2.0, '<p><span style=\"background-color: rgb(255, 255, 0);\">&lt;br&gt;</span></p><p><span style=\"background-color: rgb(255, 255, 0);\">&lt;strong&gt;testing&lt;/strong&gt;</span></p><p><br></p>', NULL, '2020-03-13 12:25:40', '', NULL, NULL, NULL, 0),
(11, 0000587, 'Child Care Training', 'Enrolled', 70.0, 2020, 'PC,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-01 11:00:23', 'DCORREA', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(7) NOT NULL,
  `client_id` int(7) NOT NULL,
  `program_id` int(10) NOT NULL,
  `program_name` varchar(150) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `comment` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `client_id`, `program_id`, `program_name`, `created_on`, `created_by`, `updated_on`, `comment`, `status`) VALUES
(2, 903, 132, 'bartending', '2020-06-01 09:11:29', '31', NULL, 'THis is another test', 1),
(28, 903, 132, 'bartending', '2020-06-02 14:27:32', '4', '2020-06-02 14:49:02', 'input test (edited) again &lt;/', 1),
(29, 906, 313, 'bpo', '2020-06-10 09:49:37', '4', NULL, 'test', 0),
(30, 906, 313, 'bpo', '2020-06-15 06:02:34', '4', NULL, 'Currently seeking employment ', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `completionnumbersbyyear`
-- (See below for the actual view)
--
CREATE TABLE `completionnumbersbyyear` (
`program` varchar(255)
,`status` varchar(12)
,`year` int(11)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `computer_basics`
--

CREATE TABLE `computer_basics` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Computer''s For Everyday Use',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `computer_basics`
--

INSERT INTO `computer_basics` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000882, 'Computer\'s For Everyday Use', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0),
(2, 0000883, 'Computer\'s For Everyday Use', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0),
(3, 0000884, 'Computer\'s For Everyday Use', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0),
(4, 0000885, 'Computer\'s For Everyday Use', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0),
(5, 0000886, 'Computer\'s For Everyday Use', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0),
(8, 0000904, 'Computer\'s For Everyday Use', 'Enrolled', 70.0, 2020, 'Quiz1,', 'Quiz2,', 'Q3,', NULL, NULL, NULL, 0.0, '<span style=\"background-color: rgb(255, 255, 0);\">Nice<sup>!</sup></span>', NULL, '2020-03-05 10:46:29', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employablecountbyyear`
-- (See below for the actual view)
--
CREATE TABLE `employablecountbyyear` (
`program` varchar(255)
,`Employable` int(11)
,`year` int(11)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `color` varchar(10) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `created_by`, `updated_by`, `title`, `description`, `color`, `startDate`, `endDate`, `status`) VALUES
(45, 4, 4, 'test', 'test', '#ff8000', '2020-06-11 00:00:00', '2020-06-12 00:00:00', 1),
(46, 4, NULL, 'testing color', 'red', '#ff0000', '2020-06-11 00:00:00', '2020-06-12 00:00:00', 1),
(47, 4, 4, 'testing time', 'browny update', '#0091ff', '2020-06-04 00:00:00', '2020-06-05 00:00:00', 1),
(48, 4, 4, 'testing red', 'red', '#ff0000', '2020-06-18 00:00:00', '2020-06-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_labels`
--

CREATE TABLE `event_labels` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `color` varchar(10) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(30) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_labels`
--

INSERT INTO `event_labels` (`id`, `label`, `color`, `created_on`, `created_by`, `updated_on`, `updated_by`, `status`) VALUES
(30, 'was blue now black', '#000000', '2020-06-10 10:21:30', 'DCORREA', '2020-06-11 11:11:38', 'DCORREA', 0),
(31, 'red', '#ff0000', '2020-06-10 10:21:30', 'DCORREA', '2020-06-11 11:11:38', 'DCORREA', 0),
(32, 'purple', '#9000ad', '2020-06-10 10:21:30', 'DCORREA', '2020-06-11 11:11:38', 'DCORREA', 0),
(35, 'Absent Staff Member', '#ff0000', '2020-06-11 14:46:15', 'DCORREA', '2020-06-16 15:41:49', 'DCORREA', 1),
(36, 'Training ', '#0091ff', '2020-06-11 14:48:37', 'DCORREA', NULL, NULL, 0),
(37, 'Training ', '#0091ff', '2020-06-11 14:48:55', 'DCORREA', '2020-06-16 15:41:49', 'DCORREA', 1),
(38, 'Meeting', '#b300ad', '2020-06-11 14:51:21', 'DCORREA', NULL, NULL, 0),
(39, 'Meeting', '#b300ad', '2020-06-11 14:51:45', 'DCORREA', NULL, NULL, 0),
(40, 'Meeting', '#b300ad', '2020-06-11 14:53:14', 'DCORREA', '2020-06-16 15:41:49', 'DCORREA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_planning`
--

CREATE TABLE `event_planning` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Event Planning',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_planning`
--

INSERT INTO `event_planning` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000574, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(2, 0000575, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(3, 0000576, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(4, 0000577, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(5, 0000578, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(6, 0000579, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(7, 0000580, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(8, 0000581, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(9, 0000582, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(10, 0000583, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(11, 0000584, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(12, 0000585, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0),
(13, 0000586, 'Event Planning', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:46:41', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `front_desk`
--

CREATE TABLE `front_desk` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Front Desk Training',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `front_desk`
--

INSERT INTO `front_desk` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000099, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(2, 0000100, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(3, 0000101, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(4, 0000102, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(5, 0000103, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(6, 0000104, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(7, 0000105, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(8, 0000106, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(9, 0000107, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(10, 0000108, 'Front Desk Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(11, 0000109, 'Front Desk Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(12, 0000110, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(13, 0000111, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(14, 0000112, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(15, 0000113, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(16, 0000114, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(17, 0000115, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(18, 0000116, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(19, 0000117, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(20, 0000118, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(21, 0000119, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(22, 0000120, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(23, 0000121, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(24, 0000122, 'Front Desk Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(25, 0000123, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(26, 0000124, 'Front Desk Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(27, 0000126, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(28, 0000127, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(29, 0000161, 'Front Desk Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(30, 0000263, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(31, 0000264, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(32, 0000285, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(33, 0000286, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(34, 0000287, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(35, 0000288, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(36, 0000289, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(37, 0000290, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(38, 0000291, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(39, 0000292, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(40, 0000293, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(41, 0000294, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(42, 0000295, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(43, 0000296, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(44, 0000297, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(45, 0000298, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(46, 0000299, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(47, 0000300, 'Front Desk Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(73, 0000633, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(74, 0000634, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(75, 0000635, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(76, 0000636, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(77, 0000637, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(78, 0000638, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(79, 0000639, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(80, 0000640, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(81, 0000641, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(82, 0000642, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(83, 0000643, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(84, 0000644, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(85, 0000645, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(86, 0000646, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(87, 0000647, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(88, 0000648, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(89, 0000649, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(90, 0000650, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(91, 0000651, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(92, 0000652, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(93, 0000653, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(94, 0000654, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(95, 0000655, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(96, 0000656, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(97, 0000657, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(98, 0000658, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(99, 0000659, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(100, 0000660, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(101, 0000661, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(102, 0000662, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(103, 0000663, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(104, 0000664, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(105, 0000665, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(106, 0000666, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(107, 0000667, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(157, 0000085, 'Front Desk Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(158, 0000128, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(227, 0000428, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(228, 0000429, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(229, 0000430, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(230, 0000431, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(231, 0000432, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(232, 0000433, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(233, 0000434, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(234, 0000435, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(235, 0000436, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(236, 0000437, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(237, 0000438, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(238, 0000439, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(239, 0000440, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(240, 0000441, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(241, 0000442, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(242, 0000443, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(243, 0000444, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(244, 0000445, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(245, 0000446, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(246, 0000447, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(247, 0000448, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(248, 0000449, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(249, 0000450, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(250, 0000451, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(251, 0000452, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(252, 0000453, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(253, 0000454, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(254, 0000455, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(255, 0000456, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(256, 0000457, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(257, 0000458, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(258, 0000459, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(259, 0000460, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(260, 0000461, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(261, 0000462, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(262, 0000463, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(263, 0000464, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(264, 0000465, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(265, 0000466, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(266, 0000467, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(267, 0000468, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(268, 0000469, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(269, 0000470, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(270, 0000706, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(271, 0000707, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(272, 0000708, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(273, 0000709, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0),
(274, 0000710, 'Front Desk Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:08', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_health`
--

CREATE TABLE `home_health` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Home Health Training',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_health`
--

INSERT INTO `home_health` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000272, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(2, 0000273, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(3, 0000274, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(4, 0000275, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(5, 0000276, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(6, 0000277, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(7, 0000278, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(8, 0000279, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(9, 0000280, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(10, 0000281, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(11, 0000282, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(12, 0000283, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(13, 0000284, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(14, 0000327, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(15, 0000328, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(16, 0000329, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(17, 0000330, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(18, 0000331, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(19, 0000332, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(20, 0000333, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(21, 0000334, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(22, 0000335, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(23, 0000336, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(24, 0000337, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(25, 0000338, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(26, 0000339, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(27, 0000340, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(28, 0000341, 'Home Health Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(29, 0000485, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(30, 0000489, 'Home Health Training', NULL, 0.0, 20, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(31, 0000490, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(32, 0000491, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(33, 0000492, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(34, 0000493, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(35, 0000494, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(36, 0000495, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(37, 0000496, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(38, 0000497, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(39, 0000498, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(40, 0000499, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(41, 0000500, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(42, 0000501, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(43, 0000502, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(44, 0000503, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(45, 0000504, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(46, 0000505, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(47, 0000506, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(48, 0000507, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(49, 0000508, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(50, 0000509, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(51, 0000510, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(52, 0000511, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(53, 0000512, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(54, 0000513, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(55, 0000514, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(56, 0000515, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(57, 0000516, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(58, 0000517, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(59, 0000518, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(60, 0000519, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(61, 0000520, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(62, 0000521, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(63, 0000522, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(64, 0000523, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(65, 0000524, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(66, 0000525, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(67, 0000526, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(68, 0000527, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(69, 0000528, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(70, 0000529, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(71, 0000530, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(72, 0000531, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(73, 0000532, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(74, 0000533, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(75, 0000534, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(76, 0000535, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(77, 0000559, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(78, 0000560, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(79, 0000561, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(80, 0000562, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(81, 0000563, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(82, 0000564, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(83, 0000565, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(84, 0000566, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(85, 0000567, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(86, 0000568, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(87, 0000569, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(88, 0000570, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(89, 0000571, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(90, 0000572, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(91, 0000573, 'Home Health Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(92, 0000071, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(93, 0000120, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0),
(94, 0000149, 'Home Health Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:22', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house_keeping`
--

CREATE TABLE `house_keeping` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'House Keeping',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_keeping`
--

INSERT INTO `house_keeping` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(258, 0000403, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(259, 0000404, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(260, 0000405, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(261, 0000406, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(262, 0000407, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(263, 0000408, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(264, 0000409, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(265, 0000410, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(266, 0000411, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(267, 0000412, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(268, 0000413, 'House Keeping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(269, 0000471, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(270, 0000472, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(271, 0000473, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(272, 0000474, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(273, 0000475, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(274, 0000476, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(275, 0000477, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(276, 0000478, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(277, 0000479, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(278, 0000480, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(279, 0000481, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(280, 0000482, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(281, 0000698, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(282, 0000699, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(283, 0000700, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(284, 0000701, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(285, 0000702, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(286, 0000703, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(287, 0000704, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(288, 0000705, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(289, 0000711, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(290, 0000712, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(291, 0000713, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(292, 0000714, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(293, 0000715, 'House Keeping', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(294, 0000822, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(295, 0000823, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(296, 0000824, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(297, 0000825, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(298, 0000826, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(299, 0000827, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(300, 0000828, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(301, 0000829, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(302, 0000830, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(303, 0000831, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(304, 0000832, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(305, 0000833, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0),
(306, 0000834, 'House Keeping', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:35', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `landscaping`
--

CREATE TABLE `landscaping` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Landscaping',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landscaping`
--

INSERT INTO `landscaping` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(19, 0000382, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(20, 0000383, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(21, 0000384, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(22, 0000385, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(23, 0000386, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(24, 0000387, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0),
(25, 0000388, 'Landscaping', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:47:44', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `life_guard`
--

CREATE TABLE `life_guard` (
  `id` int(11) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Life Guard Training',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `life_guard`
--

INSERT INTO `life_guard` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000604, 'Life Guard Training', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(2, 0000605, 'Life Guard Training', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(3, 0000606, 'Life Guard Training', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(4, 0000607, 'Life Guard Training', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(5, 0000608, 'Life Guard Training', 'Completed', 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(8, 0000414, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(9, 0000415, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(10, 0000416, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(11, 0000417, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(12, 0000418, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(13, 0000419, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(14, 0000420, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(15, 0000421, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0),
(16, 0000422, 'Life Guard Training', 'Completed', 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, NULL, '2020-03-05 10:47:58', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `listofcompletedclientsinintrotobarbering`
-- (See below for the actual view)
--
CREATE TABLE `listofcompletedclientsinintrotobarbering` (
`Program` varchar(255)
,`Name` varchar(61)
,`Gender` varchar(1)
,`Email` varchar(75)
,`Phone Number` int(7)
,`Enrolled In` int(4)
,`Graduated On` date
,`Assesment1` varchar(150)
,`Assesment2` varchar(150)
,`Assesment3` varchar(150)
,`Assesment4` varchar(150)
,`Assesment5` varchar(150)
,`Final Average` float(4,1)
);

-- --------------------------------------------------------

--
-- Table structure for table `nail_tech`
--

CREATE TABLE `nail_tech` (
  `id` int(11) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Nail Tech',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nail_tech`
--

INSERT INTO `nail_tech` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000594, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(2, 0000595, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(3, 0000596, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(4, 0000597, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(5, 0000598, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(6, 0000599, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(7, 0000600, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(8, 0000601, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(9, 0000602, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(10, 0000603, 'Nail Tech', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:08', '', NULL, NULL, NULL, 0),
(11, 0000906, 'Nail Tech', 'Rejected', 69.0, 2020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-28 06:37:42', 'DCORREA', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `participationnumbersbyyear`
-- (See below for the actual view)
--
CREATE TABLE `participationnumbersbyyear` (
`program` varchar(255)
,`status` varchar(12)
,`year` int(11)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` int(1) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `status`, `created_on`) VALUES
(1, 'Add Client', 1, '2020-02-12 21:44:56'),
(2, 'View Client', 1, '2020-02-12 21:44:56'),
(3, 'Add User', 1, '2020-02-12 21:44:56'),
(4, 'View User', 1, '2020-02-12 21:44:56'),
(5, 'Enrolled List', 1, '2020-03-03 21:26:18'),
(6, 'Edit Grade', 1, '2020-03-03 21:28:27'),
(7, 'Edit Client', 1, '2020-03-06 19:36:55'),
(8, 'Edit User', 1, '2020-03-06 19:36:55'),
(9, 'Program Setup', 1, '2020-03-19 17:58:29'),
(10, 'Create Reports', 1, '2020-04-23 19:47:31'),
(11, 'Manage Client', 1, '2020-06-01 20:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `profile_img`
--

CREATE TABLE `profile_img` (
  `id` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_img`
--

INSERT INTO `profile_img` (`id`, `path`, `status`, `uploaded_on`) VALUES
(1, 'upload/default_profile_img.png', 1, '2020-02-19 08:15:14'),
(10, 'upload/Danielson_Correa_1582127743.png', 0, '2020-02-19 09:55:43'),
(11, 'upload/test_testaaaa_1582143678.png', 1, '2020-02-19 14:21:18'),
(12, 'upload/Danielson_Correa_1582146055.jpg', 0, '2020-02-19 15:00:55'),
(13, 'upload/Danillie_correa_1582748809.png', 1, '2020-02-26 14:26:49'),
(14, 'upload/Linito_correa_1582832989.png', 1, '2020-02-27 13:49:49'),
(22, 'upload/test_testing_1582889267.png', 1, '2020-02-28 05:27:47'),
(23, 'upload/test_testing_1582889448.png', 1, '2020-02-28 05:30:48'),
(24, 'upload/Danielson_testaaaa_1582891048.png', 1, '2020-02-28 05:57:28'),
(25, 'upload/Linito_testaaaa_1582891937.png', 1, '2020-02-28 06:12:17'),
(26, 'upload/Danielson_Correa_1582893576.png', 0, '2020-02-28 06:39:36'),
(27, 'upload/Perez_Shanira_1582903902.png', 1, '2020-02-28 09:31:42'),
(28, 'upload/Perez_Shanira_1582904078.png', 1, '2020-02-28 09:34:38'),
(29, 'upload/Danielson_Correa_1582906652.png', 0, '2020-02-28 10:17:32'),
(30, 'upload/test_testing_1583946374.png', 1, '2020-03-11 11:06:14'),
(31, 'upload/Danielson_Correa_1583948604.jpg', 0, '2020-03-11 11:43:24'),
(32, 'upload/Danielson_Correa_1583948789.png', 0, '2020-03-11 11:46:29'),
(33, 'upload/Danielson_testaaaa_1585986220.jpg', 0, '2020-04-04 01:43:40'),
(34, 'upload/Danielson_testaaaa_1585987500.jpg', 0, '2020-04-04 02:05:00'),
(35, 'upload/Danielson_testaaaa_1585997385.jpg', 0, '2020-04-04 04:49:45'),
(36, 'upload/Danielson_testaaaa_1585997455.jpg', 0, '2020-04-04 04:50:55'),
(37, 'upload/Danielson_testaaaa_1585997882.jpg', 0, '2020-04-04 04:58:02'),
(38, 'upload/Danielson_testaaaa_1585997948.png', 0, '2020-04-04 04:59:08'),
(39, 'upload/Danielson_testaaaa_1586001116.jpg', 0, '2020-04-04 05:51:56'),
(40, 'upload/Danielson_testaaaa_1586002489.jpg', 0, '2020-04-04 06:14:49'),
(41, 'upload/Danielson_testaaaa_1586003143.jpg', 0, '2020-04-04 06:25:43'),
(42, 'upload/Danielson_testaaaa_1586003205.jpg', 0, '2020-04-04 06:26:45'),
(43, 'upload/Danielson_testaaaa_1586033220.jpg', 0, '2020-04-04 14:47:00'),
(44, 'upload/Danielson_testaaaa_1586033262.png', 0, '2020-04-04 14:47:42'),
(45, 'upload/Danielson_testaaaa_1586033376.jpg', 0, '2020-04-04 14:49:36'),
(46, 'upload/Danielson_testaaaa_1586035623.jpg', 0, '2020-04-04 15:27:03'),
(47, 'upload/Danielson_testaaaa_1586035649.jpg', 0, '2020-04-04 15:27:29'),
(48, 'upload/Danielson_Correa_1586121527.jpg', 0, '2020-04-05 15:18:48'),
(49, 'upload/Danielson_Correa_1586121565.png', 0, '2020-04-05 15:19:25'),
(50, 'upload/Danielson_Correa_1586121619.jpg', 1, '2020-04-05 15:20:19'),
(51, 'upload/Danielson_Correa_1586132319.jpg', 0, '2020-04-05 18:18:39'),
(52, 'upload/Danielson_Correa_1586133284.png', 0, '2020-04-05 18:34:44'),
(53, 'upload/Danielson_Correa_1586133689.jpg', 0, '2020-04-05 18:41:29'),
(54, 'upload/Danielson_Correa_1586133996.jpg', 0, '2020-04-05 18:46:37'),
(55, 'upload/Danielson_Correa_1586134069.jpg', 0, '2020-04-05 18:47:49'),
(56, 'upload/Danielson_Correa_1586138893.jpg', 0, '2020-04-05 20:08:13'),
(57, 'upload/Danielson_Correa_1586140158.jpg', 0, '2020-04-05 20:29:18'),
(58, 'upload/Danielson_Correa_1586140621.jpg', 0, '2020-04-05 20:37:01'),
(59, 'upload/Danielson_Correa_1586141766.png', 0, '2020-04-05 20:56:06'),
(60, 'upload/Danielson_Correa_1586141958.jpg', 0, '2020-04-05 20:59:18'),
(61, 'upload/Danielson_Correa_1586142003.jpg', 0, '2020-04-05 21:00:03'),
(62, 'upload/Danielson_Correa_1586143303.jpg', 0, '2020-04-05 21:21:43'),
(63, 'upload/Danielson_Correa_1586143498.jpg', 0, '2020-04-05 21:24:58'),
(64, 'upload/Danielson_Correa_1586143770.jpg', 0, '2020-04-05 21:29:30'),
(65, 'upload/Danielson_Correa_1586144162.jpg', 0, '2020-04-05 21:36:02'),
(66, 'upload/Danielson_Correa_1586144179.jpg', 0, '2020-04-05 21:36:19'),
(67, 'upload/Danielson_Correa_1586144405.png', 0, '2020-04-05 21:40:05'),
(68, 'upload/Danielson_Correa_1586144421.jpg', 0, '2020-04-05 21:40:21'),
(69, 'upload/Danielson_Correa_1586144548.png', 0, '2020-04-05 21:42:28'),
(70, 'upload/Danielson_Correa_1586144602.jpg', 0, '2020-04-05 21:43:22'),
(71, 'upload/Danielson_Correa_1586144782.jpg', 0, '2020-04-05 21:46:22'),
(72, 'upload/Danielson_Correa_1587752133.jpg', 0, '2020-04-24 12:15:34'),
(73, 'upload/Danielson_Correa_1587837474.png', 0, '2020-04-25 11:57:54'),
(74, 'upload/Danielson_Correa_1587838146.jpg', 0, '2020-04-25 12:09:06'),
(75, 'upload/Danielson_Correa_1587839643.png', 0, '2020-04-25 12:34:03'),
(76, 'upload/Danielson_Correa_1587839679.jpg', 0, '2020-04-25 12:34:39'),
(77, 'upload/DanielsonCorrea_1587840206.png', 0, '2020-04-25 12:43:26'),
(78, 'upload/testperson_1587840789.png', 0, '2020-04-25 12:53:09'),
(79, 'upload/testperson_1587840796.jpg', 0, '2020-04-25 12:53:16'),
(80, 'upload/DanielsonCorrea_1587841693.jpg', 1, '2020-04-25 13:08:13'),
(81, 'upload/testperson_1587841703.jpg', 0, '2020-04-25 13:08:23'),
(82, 'upload/testperson_1587841767.png', 0, '2020-04-25 13:09:27'),
(83, 'upload/testperson_1587922057.png', 1, '2020-04-26 11:27:37'),
(84, 'upload/Danielson_testaaaa_1588006056.png', 1, '2020-04-27 10:47:36'),
(85, 'upload/Danielson_correa_1588006931.jpg', 1, '2020-04-27 11:02:11'),
(86, 'upload/Danielsoncorrea_1591650258.jpg', 0, '2020-06-08 15:04:19'),
(87, 'upload/Danielsoncorrea_1591650348.jpg', 0, '2020-06-08 15:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `view_name` varchar(150) DEFAULT NULL,
  `display_name` varchar(150) DEFAULT NULL,
  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `view_name`, `display_name`, `created_on`, `created_by`, `status`) VALUES
(1, 'completionnumbersbyyear', 'Number of Completion by Year', '2020-04-28 11:59:52', 'INTERN', 1),
(2, 'participationnumbersbyyear', 'Numbers of Participation by Year', '2020-04-28 15:26:47', 'INTERN', 1),
(3, 'basicreport', 'Basic Report ', '2020-04-29 08:15:39', 'DCORREA', 1),
(4, 'basicreport2', 'basic report 2', '2020-04-29 12:20:05', 'DCORREA', 1),
(5, 'listofcompletedclientsinintrotobarbering', 'List of Completed clients In Intro to Barbering', '2020-05-01 11:15:03', 'DCORREA', 1),
(6, 'employableCountByYear', 'Employable Count By Year', '2020-06-10 14:54:02', 'INTERN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expiring_date` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `email`, `token`, `expiring_date`, `status`) VALUES
(49, '7s7o7g@gmail.com', 'bb50304dd87a5578628937d683ac3a4a', 1592331687, 1),
(50, '7s7o7g@gmail.com', '84780fe2b3c352ab4819368e3a2f6afd', 1592331839, 1),
(51, '7s7o7g@gmail.com', '3f4046fd804f63daf0df7a363f8a5525', 1592332104, 1),
(52, '7s7o7g@gmail.com', 'a982c0bd6a606739199a586f51e4b693', 1592336664, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specialized_trainings`
--

CREATE TABLE `specialized_trainings` (
  `id` int(11) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `date_offered` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialized_trainings`
--

INSERT INTO `specialized_trainings` (`id`, `client_id`, `tag`, `organization`, `date_offered`) VALUES
(1, 0000745, 'MBV', 'Mahogany Bay Village Resort', 2017),
(2, 0000746, 'MBV', 'Mahogany Bay Village Resort', 2017),
(3, 0000747, 'MBV', 'Mahogany Bay Village Resort', 2017),
(4, 0000748, 'MBV', 'Mahogany Bay Village Resort', 2017),
(5, 0000749, 'MBV', 'Mahogany Bay Village Resort', 2017),
(6, 0000750, 'MBV', 'Mahogany Bay Village Resort', 2017),
(7, 0000751, 'MBV', 'Mahogany Bay Village Resort', 2017),
(8, 0000752, 'MBV', 'Mahogany Bay Village Resort', 2017),
(9, 0000753, 'MBV', 'Mahogany Bay Village Resort', 2017),
(10, 0000754, 'MBV', 'Mahogany Bay Village Resort', 2017),
(11, 0000755, 'MBV', 'Mahogany Bay Village Resort', 2017),
(12, 0000756, 'MBV', 'Mahogany Bay Village Resort', 2017),
(13, 0000757, 'MBV', 'Mahogany Bay Village Resort', 2017),
(14, 0000758, 'MBV', 'Mahogany Bay Village Resort', 2017),
(15, 0000759, 'MBV', 'Mahogany Bay Village Resort', 2017),
(16, 0000760, 'MBV', 'Mahogany Bay Village Resort', 2017),
(17, 0000761, 'MBV', 'Mahogany Bay Village Resort', 2017),
(18, 0000762, 'MBV', 'Mahogany Bay Village Resort', 2017),
(19, 0000763, 'MBV', 'Mahogany Bay Village Resort', 2017),
(20, 0000764, 'MBV', 'Mahogany Bay Village Resort', 2017),
(21, 0000765, 'MBV', 'Mahogany Bay Village Resort', 2017),
(22, 0000766, 'MBV', 'Mahogany Bay Village Resort', 2017),
(23, 0000767, 'MBV', 'Mahogany Bay Village Resort', 2017),
(24, 0000768, 'MBV', 'Mahogany Bay Village Resort', 2017),
(25, 0000769, 'MBV', 'Mahogany Bay Village Resort', 2017),
(26, 0000770, 'MBV', 'Mahogany Bay Village Resort', 2017),
(27, 0000771, 'MBV', 'Mahogany Bay Village Resort', 2017),
(28, 0000772, 'MBV', 'Mahogany Bay Village Resort', 2017),
(29, 0000773, 'MBV', 'Mahogany Bay Village Resort', 2017),
(30, 0000774, 'MBV', 'Mahogany Bay Village Resort', 2017),
(31, 0000775, 'MBV', 'Mahogany Bay Village Resort', 2017),
(32, 0000776, 'MBV', 'Mahogany Bay Village Resort', 2017),
(33, 0000777, 'MBV', 'Mahogany Bay Village Resort', 2017),
(34, 0000778, 'MBV', 'Mahogany Bay Village Resort', 2017),
(35, 0000779, 'MBV', 'Mahogany Bay Village Resort', 2017),
(36, 0000780, 'MBV', 'Mahogany Bay Village Resort', 2017),
(37, 0000781, 'MBV', 'Mahogany Bay Village Resort', 2017),
(38, 0000782, 'MBV', 'Mahogany Bay Village Resort', 2017),
(39, 0000783, 'MBV', 'Mahogany Bay Village Resort', 2017),
(40, 0000784, 'MBV', 'Mahogany Bay Village Resort', 2017),
(41, 0000785, 'MBV', 'Mahogany Bay Village Resort', 2017),
(42, 0000786, 'MBV', 'Mahogany Bay Village Resort', 2017),
(43, 0000787, 'MBV', 'Mahogany Bay Village Resort', 2017),
(44, 0000788, 'MBV', 'Mahogany Bay Village Resort', 2017),
(45, 0000789, 'MBV', 'Mahogany Bay Village Resort', 2017),
(46, 0000790, 'MBV', 'Mahogany Bay Village Resort', 2017),
(47, 0000791, 'MBV', 'Mahogany Bay Village Resort', 2017),
(48, 0000792, 'MBV', 'Mahogany Bay Village Resort', 2017),
(49, 0000793, 'MBV', 'Mahogany Bay Village Resort', 2017),
(50, 0000795, 'MBV', 'Mahogany Bay Village Resort', 2017),
(51, 0000796, 'MBV', 'Mahogany Bay Village Resort', 2017),
(52, 0000797, 'MBV', 'Mahogany Bay Village Resort', 2017),
(53, 0000798, 'MBV', 'Mahogany Bay Village Resort', 2017),
(54, 0000799, 'MBV', 'Mahogany Bay Village Resort', 2017),
(55, 0000800, 'MBV', 'Mahogany Bay Village Resort', 2017),
(56, 0000801, 'MBV', 'Mahogany Bay Village Resort', 2017),
(57, 0000802, 'MBV', 'Mahogany Bay Village Resort', 2017),
(58, 0000803, 'MBV', 'Mahogany Bay Village Resort', 2017),
(59, 0000804, 'MBV', 'Mahogany Bay Village Resort', 2017),
(60, 0000805, 'MBV', 'Mahogany Bay Village Resort', 2017),
(61, 0000806, 'MBV', 'Mahogany Bay Village Resort', 2017),
(62, 0000807, 'MBV', 'Mahogany Bay Village Resort', 2017),
(63, 0000808, 'MBV', 'Mahogany Bay Village Resort', 2017),
(64, 0000809, 'MBV', 'Mahogany Bay Village Resort', 2017);

-- --------------------------------------------------------

--
-- Stand-in structure for view `testing`
-- (See below for the actual view)
--
CREATE TABLE `testing` (
`program` varchar(255)
,`status` varchar(12)
,`year` int(11)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_img_id` int(11) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `username`, `password`, `created_by`, `created_on`, `profile_img_id`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'Ulrick', 'Gaynair', 'ulrick_gaynair@hotmail.com', '1234567', 'admin', 'd41e98d1eafa6d6011d3a70f1a5b92f0', '', '2019-03-22 11:16:09', 1, NULL, NULL, 0),
(2, 'test', 'person', 'green@gmail.com', '', 'testperson', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '', '2019-03-22 11:19:44', 83, 'DCORREA', '2020-04-26 17:27:37', 1),
(3, 'Shadae', 'Humes', 'intern@belizeinvest.org.bz', '6584534', '', '97084517109e89053481617a482792fe7590ee62783e69ed2e540cde68d568a4', '', '2019-12-02 11:32:03', 1, 'DCORREA', '2020-04-29 17:54:44', 1),
(4, 'Danielson', 'Correa', '7son7of7god@gmail.com', '1234567', '', 'e57007236e63ebe48029c2da400698d4', '', '2020-02-12 11:34:41', 80, 'DCORREA', '2020-06-08 20:28:49', 1),
(18, 'Linito', 'correa', 'linito@gmail.com', '1234567', 'Pudge', '6780e5361b503b2d9c51fa4423954ea7', '', '2020-02-27 13:21:54', 14, NULL, NULL, 1),
(31, 'Danielson', 'chi', 'danielsoncorrea@gmail.com', '6584534', 'pudge', 'c2e33b88f10a38c726d1965638cbf23d', 'DCORREA', '2020-03-12 16:53:28', 1, 'DCORREA', '2020-03-13 16:18:25', 1),
(32, 'Danielson', 'testaaaa', 'green.test@gmail.com', '6584534', '', 'd41e98d1eafa6d6011d3a70f1a5b92f0', 'DCORREA', '2020-04-29 01:12:02', 1, NULL, NULL, 1),
(33, 'Danielson', 'correa ', 'wo00000w@gmail.com', '6584534', '', 'd41e98d1eafa6d6011d3a70f1a5b92f0', 'DCORREA', '2020-06-08 15:03:19', 1, 'DCORREA', '2020-06-08 21:06:00', 1),
(39, 'SOG', 'correa', '7s7o7g@gmail.com', '6584534', '', '3189d0c413e5241d0b28c54911972dec', 'DCORREA', '2020-06-16 13:14:24', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wait_staff`
--

CREATE TABLE `wait_staff` (
  `id` int(6) NOT NULL,
  `client_id` int(7) UNSIGNED ZEROFILL DEFAULT NULL,
  `programme` varchar(255) NOT NULL DEFAULT 'Wait Staff Training',
  `status` enum('Accepted','Rejected','Enrolled','Completed','Dropped','Participated') DEFAULT NULL,
  `pre_test_avg` float(4,1) NOT NULL,
  `enrolled_in` int(4) DEFAULT NULL,
  `Assesment1` varchar(150) DEFAULT NULL,
  `Assesment2` varchar(150) DEFAULT NULL,
  `Assesment3` varchar(150) DEFAULT NULL,
  `Assesment4` varchar(150) DEFAULT NULL,
  `Assesment5` varchar(150) DEFAULT NULL,
  `final_Assesment` float(4,1) DEFAULT NULL,
  `final_grade` float(4,1) DEFAULT NULL,
  `notes` text,
  `graduated_on` date DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(150) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `is_employable` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wait_staff`
--

INSERT INTO `wait_staff` (`id`, `client_id`, `programme`, `status`, `pre_test_avg`, `enrolled_in`, `Assesment1`, `Assesment2`, `Assesment3`, `Assesment4`, `Assesment5`, `final_Assesment`, `final_grade`, `notes`, `graduated_on`, `created_on`, `created_by`, `updated_on`, `updated_by`, `certificate`, `is_employable`) VALUES
(1, 0000149, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(2, 0000265, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(3, 0000266, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(4, 0000267, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(5, 0000268, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(6, 0000269, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(7, 0000270, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(8, 0000271, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(22, 0000107, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(23, 0000108, 'Wait Staff Training', NULL, 0.0, NULL, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(24, 0000127, 'Wait Staff Training', NULL, 0.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(41, 0000301, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(42, 0000302, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(43, 0000303, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(44, 0000304, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(45, 0000305, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(46, 0000306, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(47, 0000307, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(48, 0000308, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(49, 0000309, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(50, 0000310, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(76, 0000364, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(77, 0000365, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(78, 0000366, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(79, 0000367, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(80, 0000368, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(81, 0000369, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(82, 0000370, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(83, 0000371, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(84, 0000372, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(85, 0000373, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(86, 0000374, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(87, 0000375, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(88, 0000376, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(89, 0000377, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(90, 0000378, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(91, 0000379, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(92, 0000380, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(93, 0000381, 'Wait Staff Training', NULL, 0.0, 2016, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(170, 0000668, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(171, 0000669, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(172, 0000670, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(173, 0000671, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(174, 0000672, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(175, 0000673, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(176, 0000674, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(177, 0000675, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(178, 0000676, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(179, 0000677, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(180, 0000678, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(181, 0000679, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(182, 0000680, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(183, 0000681, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(184, 0000682, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(185, 0000683, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(186, 0000684, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(187, 0000685, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(188, 0000686, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(189, 0000687, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(190, 0000688, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(191, 0000689, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(192, 0000690, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(193, 0000691, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(194, 0000692, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(195, 0000693, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(196, 0000694, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(197, 0000695, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(198, 0000696, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(199, 0000697, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(200, 0000810, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(201, 0000811, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(202, 0000812, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(203, 0000813, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(204, 0000814, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(205, 0000815, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(206, 0000816, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(207, 0000817, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(208, 0000818, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(209, 0000819, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(210, 0000820, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(211, 0000821, 'Wait Staff Training', NULL, 0.0, 2017, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(212, 0000835, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(213, 0000836, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(214, 0000837, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(215, 0000838, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(216, 0000839, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(217, 0000840, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(218, 0000841, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(219, 0000842, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(220, 0000843, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(221, 0000844, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(222, 0000845, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(223, 0000846, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(224, 0000847, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(225, 0000848, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(226, 0000849, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(227, 0000850, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(228, 0000851, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(229, 0000852, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(230, 0000853, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(231, 0000854, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(232, 0000855, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(233, 0000856, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(234, 0000857, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(235, 0000858, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(236, 0000859, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(237, 0000860, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(238, 0000861, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(239, 0000862, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(240, 0000863, 'Wait Staff Training', NULL, 0.0, 2018, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, NULL, '0000-00-00', '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0),
(246, 0000063, 'Wait Staff Training', 'Enrolled', 10.0, 2015, NULL, NULL, NULL, NULL, '0.0', NULL, NULL, '', NULL, '2020-03-05 10:48:22', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure for view `basicreport`
--
DROP TABLE IF EXISTS `basicreport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicreport`  AS  select concat(`a`.`first_name`,' ',`a`.`last_name`) AS `Name`,`a`.`gender` AS `Gender`,`a`.`ssn` AS `SSN`,`a`.`email` AS `Email`,`a`.`mobile_phone` AS `Phone Number`,`p`.`final_grade` AS `Final Average` from (`applicants` `a` join `barbering` `p`) where ((`a`.`id` = `p`.`client_id`) and (`p`.`status` = 'Completed')) ;

-- --------------------------------------------------------

--
-- Structure for view `basicreport2`
--
DROP TABLE IF EXISTS `basicreport2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicreport2`  AS  select concat(`a`.`first_name`,' ',`a`.`last_name`) AS `Name`,`a`.`gender` AS `Gender`,`a`.`ssn` AS `SSN`,`a`.`email` AS `Email`,`a`.`mobile_phone` AS `Phone Number`,`a`.`ref_name1` AS `Ref. Name #1`,`a`.`ref_address1` AS `Ref. Address #1`,`a`.`ref_city1` AS `Ref. City #1`,`a`.`ref_phone1` AS `Ref. Phone #1`,`a`.`ref_name2` AS `Ref. Name #2`,`a`.`ref_address2` AS `Ref. Address #2`,`a`.`ref_city2` AS `Ref. City #2`,`a`.`ref_phone2` AS `Ref. Phone #2`,`a`.`ref_name3` AS `Ref. Name #3`,`a`.`ref_address3` AS `Ref. Address #3`,`a`.`ref_city3` AS `Ref. City #3`,`a`.`ref_phone3` AS `Ref. Phone #3`,`a`.`ed_name` AS `Educational Institution`,`a`.`ed_degree` AS `Education Level`,`a`.`employed_at` AS `Employer`,`a`.`em_position` AS `Job Title`,`p`.`enrolled_in` AS `Enrolled In`,`p`.`final_grade` AS `Final Average` from (`applicants` `a` join `bpo` `p`) where ((`a`.`id` = `p`.`client_id`) and (`p`.`status` = 'Completed')) ;

-- --------------------------------------------------------

--
-- Structure for view `completionnumbersbyyear`
--
DROP TABLE IF EXISTS `completionnumbersbyyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `completionnumbersbyyear`  AS  select `barbering`.`programme` AS `program`,`barbering`.`status` AS `status`,`barbering`.`enrolled_in` AS `year`,count(`barbering`.`enrolled_in`) AS `count` from `barbering` where (`barbering`.`status` = 'completed') group by `barbering`.`enrolled_in` union all select `bartending`.`programme` AS `program`,`bartending`.`status` AS `status`,`bartending`.`enrolled_in` AS `year`,count(`bartending`.`enrolled_in`) AS `count` from `bartending` where (`bartending`.`status` = 'completed') group by `bartending`.`enrolled_in` union all select `bpo`.`programme` AS `program`,`bpo`.`status` AS `status`,`bpo`.`enrolled_in` AS `year`,count(`bpo`.`enrolled_in`) AS `count` from `bpo` where (`bpo`.`status` = 'completed') group by `bpo`.`enrolled_in` union all select `child_care`.`programme` AS `program`,`child_care`.`status` AS `status`,`child_care`.`enrolled_in` AS `year`,count(`child_care`.`enrolled_in`) AS `count` from `child_care` where (`child_care`.`status` = 'completed') group by `child_care`.`enrolled_in` union all select `computer_basics`.`programme` AS `program`,`computer_basics`.`status` AS `status`,`computer_basics`.`enrolled_in` AS `year`,count(`computer_basics`.`enrolled_in`) AS `count` from `computer_basics` where (`computer_basics`.`status` = 'completed') group by `computer_basics`.`enrolled_in` union all select `event_planning`.`programme` AS `program`,`event_planning`.`status` AS `status`,`event_planning`.`enrolled_in` AS `year`,count(`event_planning`.`enrolled_in`) AS `count` from `event_planning` where (`event_planning`.`status` = 'completed') group by `event_planning`.`enrolled_in` union all select `front_desk`.`programme` AS `program`,`front_desk`.`status` AS `status`,`front_desk`.`enrolled_in` AS `year`,count(`front_desk`.`enrolled_in`) AS `count` from `front_desk` where (`front_desk`.`status` = 'completed') group by `front_desk`.`enrolled_in` union all select `home_health`.`programme` AS `program`,`home_health`.`status` AS `status`,`home_health`.`enrolled_in` AS `year`,count(`home_health`.`enrolled_in`) AS `count` from `home_health` where (`home_health`.`status` = 'completed') group by `home_health`.`enrolled_in` union all select `house_keeping`.`programme` AS `program`,`house_keeping`.`status` AS `status`,`house_keeping`.`enrolled_in` AS `year`,count(`house_keeping`.`enrolled_in`) AS `count` from `house_keeping` where (`house_keeping`.`status` = 'completed') group by `house_keeping`.`enrolled_in` union all select `landscaping`.`programme` AS `program`,`landscaping`.`status` AS `status`,`landscaping`.`enrolled_in` AS `year`,count(`landscaping`.`enrolled_in`) AS `count` from `landscaping` where (`landscaping`.`status` = 'completed') group by `landscaping`.`enrolled_in` union all select `life_guard`.`programme` AS `program`,`life_guard`.`status` AS `status`,`life_guard`.`enrolled_in` AS `year`,count(`life_guard`.`enrolled_in`) AS `count` from `life_guard` where (`life_guard`.`status` = 'completed') group by `life_guard`.`enrolled_in` union all select `nail_tech`.`programme` AS `program`,`nail_tech`.`status` AS `status`,`nail_tech`.`enrolled_in` AS `year`,count(`nail_tech`.`enrolled_in`) AS `count` from `nail_tech` where (`nail_tech`.`status` = 'completed') group by `nail_tech`.`enrolled_in` union all select `wait_staff`.`programme` AS `program`,`wait_staff`.`status` AS `status`,`wait_staff`.`enrolled_in` AS `year`,count(`wait_staff`.`enrolled_in`) AS `count` from `wait_staff` where (`wait_staff`.`status` = 'completed') group by `wait_staff`.`enrolled_in` order by `count` desc ;

-- --------------------------------------------------------

--
-- Structure for view `employablecountbyyear`
--
DROP TABLE IF EXISTS `employablecountbyyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employablecountbyyear`  AS  select `barbering`.`programme` AS `program`,`barbering`.`is_employable` AS `Employable`,`barbering`.`enrolled_in` AS `year`,count(`barbering`.`enrolled_in`) AS `count` from `barbering` where (`barbering`.`is_employable` = 1) group by `barbering`.`enrolled_in` union all select `bartending`.`programme` AS `program`,`bartending`.`is_employable` AS `Employable`,`bartending`.`enrolled_in` AS `year`,count(`bartending`.`enrolled_in`) AS `count` from `bartending` where (`bartending`.`is_employable` = 1) group by `bartending`.`enrolled_in` union all select `bpo`.`programme` AS `program`,`bpo`.`is_employable` AS `Employable`,`bpo`.`enrolled_in` AS `year`,count(`bpo`.`enrolled_in`) AS `count` from `bpo` where (`bpo`.`is_employable` = 1) group by `bpo`.`enrolled_in` union all select `child_care`.`programme` AS `program`,`child_care`.`is_employable` AS `Employable`,`child_care`.`enrolled_in` AS `year`,count(`child_care`.`enrolled_in`) AS `count` from `child_care` where (`child_care`.`is_employable` = 1) group by `child_care`.`enrolled_in` union all select `computer_basics`.`programme` AS `program`,`computer_basics`.`is_employable` AS `Employable`,`computer_basics`.`enrolled_in` AS `year`,count(`computer_basics`.`enrolled_in`) AS `count` from `computer_basics` where (`computer_basics`.`is_employable` = 1) group by `computer_basics`.`enrolled_in` union all select `event_planning`.`programme` AS `program`,`event_planning`.`is_employable` AS `Employable`,`event_planning`.`enrolled_in` AS `year`,count(`event_planning`.`enrolled_in`) AS `count` from `event_planning` where (`event_planning`.`is_employable` = 1) group by `event_planning`.`enrolled_in` union all select `front_desk`.`programme` AS `program`,`front_desk`.`is_employable` AS `Employable`,`front_desk`.`enrolled_in` AS `year`,count(`front_desk`.`enrolled_in`) AS `count` from `front_desk` where (`front_desk`.`is_employable` = 1) group by `front_desk`.`enrolled_in` union all select `home_health`.`programme` AS `program`,`home_health`.`is_employable` AS `Employable`,`home_health`.`enrolled_in` AS `year`,count(`home_health`.`enrolled_in`) AS `count` from `home_health` where (`home_health`.`is_employable` = 1) group by `home_health`.`enrolled_in` union all select `house_keeping`.`programme` AS `program`,`house_keeping`.`is_employable` AS `Empoyable`,`house_keeping`.`enrolled_in` AS `year`,count(`house_keeping`.`enrolled_in`) AS `count` from `house_keeping` where (`house_keeping`.`is_employable` = 1) group by `house_keeping`.`enrolled_in` union all select `landscaping`.`programme` AS `program`,`landscaping`.`is_employable` AS `Employable`,`landscaping`.`enrolled_in` AS `year`,count(`landscaping`.`enrolled_in`) AS `count` from `landscaping` where (`landscaping`.`is_employable` = 1) group by `landscaping`.`enrolled_in` union all select `life_guard`.`programme` AS `program`,`life_guard`.`is_employable` AS `Employable`,`life_guard`.`enrolled_in` AS `year`,count(`life_guard`.`enrolled_in`) AS `count` from `life_guard` where (`life_guard`.`is_employable` = 1) group by `life_guard`.`enrolled_in` union all select `nail_tech`.`programme` AS `program`,`nail_tech`.`is_employable` AS `Employable`,`nail_tech`.`enrolled_in` AS `year`,count(`nail_tech`.`enrolled_in`) AS `count` from `nail_tech` where (`nail_tech`.`is_employable` = 1) group by `nail_tech`.`enrolled_in` union all select `wait_staff`.`programme` AS `program`,`wait_staff`.`is_employable` AS `Employable`,`wait_staff`.`enrolled_in` AS `year`,count(`wait_staff`.`enrolled_in`) AS `count` from `wait_staff` where (`wait_staff`.`is_employable` = 1) group by `wait_staff`.`enrolled_in` order by `count` desc ;

-- --------------------------------------------------------

--
-- Structure for view `listofcompletedclientsinintrotobarbering`
--
DROP TABLE IF EXISTS `listofcompletedclientsinintrotobarbering`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listofcompletedclientsinintrotobarbering`  AS  select `p`.`programme` AS `Program`,concat(`a`.`first_name`,' ',`a`.`last_name`) AS `Name`,`a`.`gender` AS `Gender`,`a`.`email` AS `Email`,`a`.`mobile_phone` AS `Phone Number`,`p`.`enrolled_in` AS `Enrolled In`,`p`.`graduated_on` AS `Graduated On`,`p`.`Assesment1` AS `Assesment1`,`p`.`Assesment2` AS `Assesment2`,`p`.`Assesment3` AS `Assesment3`,`p`.`Assesment4` AS `Assesment4`,`p`.`Assesment5` AS `Assesment5`,`p`.`final_grade` AS `Final Average` from (`applicants` `a` join `barbering` `p`) where ((`a`.`id` = `p`.`client_id`) and (`p`.`status` = 'Completed')) ;

-- --------------------------------------------------------

--
-- Structure for view `participationnumbersbyyear`
--
DROP TABLE IF EXISTS `participationnumbersbyyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `participationnumbersbyyear`  AS  select `barbering`.`programme` AS `program`,`barbering`.`status` AS `status`,`barbering`.`enrolled_in` AS `year`,count(`barbering`.`enrolled_in`) AS `count` from `barbering` where (`barbering`.`status` = 'Participated') group by `barbering`.`enrolled_in` union all select `bartending`.`programme` AS `program`,`bartending`.`status` AS `status`,`bartending`.`enrolled_in` AS `year`,count(`bartending`.`enrolled_in`) AS `count` from `bartending` where (`bartending`.`status` = 'Participated') group by `bartending`.`enrolled_in` union all select `bpo`.`programme` AS `program`,`bpo`.`status` AS `status`,`bpo`.`enrolled_in` AS `year`,count(`bpo`.`enrolled_in`) AS `count` from `bpo` where (`bpo`.`status` = 'Participated') group by `bpo`.`enrolled_in` union all select `child_care`.`programme` AS `program`,`child_care`.`status` AS `status`,`child_care`.`enrolled_in` AS `year`,count(`child_care`.`enrolled_in`) AS `count` from `child_care` where (`child_care`.`status` = 'Participated') group by `child_care`.`enrolled_in` union all select `computer_basics`.`programme` AS `program`,`computer_basics`.`status` AS `status`,`computer_basics`.`enrolled_in` AS `year`,count(`computer_basics`.`enrolled_in`) AS `count` from `computer_basics` where (`computer_basics`.`status` = 'Participated') group by `computer_basics`.`enrolled_in` union all select `event_planning`.`programme` AS `program`,`event_planning`.`status` AS `status`,`event_planning`.`enrolled_in` AS `year`,count(`event_planning`.`enrolled_in`) AS `count` from `event_planning` where (`event_planning`.`status` = 'Participated') group by `event_planning`.`enrolled_in` union all select `front_desk`.`programme` AS `program`,`front_desk`.`status` AS `status`,`front_desk`.`enrolled_in` AS `year`,count(`front_desk`.`enrolled_in`) AS `count` from `front_desk` where (`front_desk`.`status` = 'Participated') group by `front_desk`.`enrolled_in` union all select `home_health`.`programme` AS `program`,`home_health`.`status` AS `status`,`home_health`.`enrolled_in` AS `year`,count(`home_health`.`enrolled_in`) AS `count` from `home_health` where (`home_health`.`status` = 'Participated') group by `home_health`.`enrolled_in` union all select `house_keeping`.`programme` AS `program`,`house_keeping`.`status` AS `status`,`house_keeping`.`enrolled_in` AS `year`,count(`house_keeping`.`enrolled_in`) AS `count` from `house_keeping` where (`house_keeping`.`status` = 'Participated') group by `house_keeping`.`enrolled_in` union all select `landscaping`.`programme` AS `program`,`landscaping`.`status` AS `status`,`landscaping`.`enrolled_in` AS `year`,count(`landscaping`.`enrolled_in`) AS `count` from `landscaping` where (`landscaping`.`status` = 'Participated') group by `landscaping`.`enrolled_in` union all select `life_guard`.`programme` AS `program`,`life_guard`.`status` AS `status`,`life_guard`.`enrolled_in` AS `year`,count(`life_guard`.`enrolled_in`) AS `count` from `life_guard` where (`life_guard`.`status` = 'Participated') group by `life_guard`.`enrolled_in` union all select `nail_tech`.`programme` AS `program`,`nail_tech`.`status` AS `status`,`nail_tech`.`enrolled_in` AS `year`,count(`nail_tech`.`enrolled_in`) AS `count` from `nail_tech` where (`nail_tech`.`status` = 'Participated') group by `nail_tech`.`enrolled_in` union all select `wait_staff`.`programme` AS `program`,`wait_staff`.`status` AS `status`,`wait_staff`.`enrolled_in` AS `year`,count(`wait_staff`.`enrolled_in`) AS `count` from `wait_staff` where (`wait_staff`.`status` = 'Participated') group by `wait_staff`.`enrolled_in` order by `count` desc ;

-- --------------------------------------------------------

--
-- Structure for view `testing`
--
DROP TABLE IF EXISTS `testing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `testing`  AS  select `barbering`.`programme` AS `program`,`barbering`.`status` AS `status`,`barbering`.`enrolled_in` AS `year`,count(`barbering`.`enrolled_in`) AS `count` from `barbering` where (`barbering`.`status` = 'completed') group by `barbering`.`enrolled_in` union all select `bartending`.`programme` AS `program`,`bartending`.`status` AS `status`,`bartending`.`enrolled_in` AS `year`,count(`bartending`.`enrolled_in`) AS `count` from `bartending` where (`bartending`.`status` = 'completed') group by `bartending`.`enrolled_in` union all select `bpo`.`programme` AS `program`,`bpo`.`status` AS `status`,`bpo`.`enrolled_in` AS `year`,count(`bpo`.`enrolled_in`) AS `count` from `bpo` where (`bpo`.`status` = 'completed') group by `bpo`.`enrolled_in` union all select `child_care`.`programme` AS `program`,`child_care`.`status` AS `status`,`child_care`.`enrolled_in` AS `year`,count(`child_care`.`enrolled_in`) AS `count` from `child_care` where (`child_care`.`status` = 'completed') group by `child_care`.`enrolled_in` union all select `computer_basics`.`programme` AS `program`,`computer_basics`.`status` AS `status`,`computer_basics`.`enrolled_in` AS `year`,count(`computer_basics`.`enrolled_in`) AS `count` from `computer_basics` where (`computer_basics`.`status` = 'completed') group by `computer_basics`.`enrolled_in` union all select `event_planning`.`programme` AS `program`,`event_planning`.`status` AS `status`,`event_planning`.`enrolled_in` AS `year`,count(`event_planning`.`enrolled_in`) AS `count` from `event_planning` where (`event_planning`.`status` = 'completed') group by `event_planning`.`enrolled_in` union all select `front_desk`.`programme` AS `program`,`front_desk`.`status` AS `status`,`front_desk`.`enrolled_in` AS `year`,count(`front_desk`.`enrolled_in`) AS `count` from `front_desk` where (`front_desk`.`status` = 'completed') group by `front_desk`.`enrolled_in` union all select `home_health`.`programme` AS `program`,`home_health`.`status` AS `status`,`home_health`.`enrolled_in` AS `year`,count(`home_health`.`enrolled_in`) AS `count` from `home_health` where (`home_health`.`status` = 'completed') group by `home_health`.`enrolled_in` union all select `house_keeping`.`programme` AS `program`,`house_keeping`.`status` AS `status`,`house_keeping`.`enrolled_in` AS `year`,count(`house_keeping`.`enrolled_in`) AS `count` from `house_keeping` where (`house_keeping`.`status` = 'completed') group by `house_keeping`.`enrolled_in` union all select `landscaping`.`programme` AS `program`,`landscaping`.`status` AS `status`,`landscaping`.`enrolled_in` AS `year`,count(`landscaping`.`enrolled_in`) AS `count` from `landscaping` where (`landscaping`.`status` = 'completed') group by `landscaping`.`enrolled_in` union all select `life_guard`.`programme` AS `program`,`life_guard`.`status` AS `status`,`life_guard`.`enrolled_in` AS `year`,count(`life_guard`.`enrolled_in`) AS `count` from `life_guard` where (`life_guard`.`status` = 'completed') group by `life_guard`.`enrolled_in` union all select `nail_tech`.`programme` AS `program`,`nail_tech`.`status` AS `status`,`nail_tech`.`enrolled_in` AS `year`,count(`nail_tech`.`enrolled_in`) AS `count` from `nail_tech` where (`nail_tech`.`status` = 'completed') group by `nail_tech`.`enrolled_in` union all select `wait_staff`.`programme` AS `program`,`wait_staff`.`status` AS `status`,`wait_staff`.`enrolled_in` AS `year`,count(`wait_staff`.`enrolled_in`) AS `count` from `wait_staff` where (`wait_staff`.`status` = 'completed') group by `wait_staff`.`enrolled_in` order by `count` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_img_id` (`profile_img_id`);

--
-- Indexes for table `barbering`
--
ALTER TABLE `barbering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `bartending`
--
ALTER TABLE `bartending`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `bpo`
--
ALTER TABLE `bpo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `child_care`
--
ALTER TABLE `child_care`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer_basics`
--
ALTER TABLE `computer_basics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `event_labels`
--
ALTER TABLE `event_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_planning`
--
ALTER TABLE `event_planning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `front_desk`
--
ALTER TABLE `front_desk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `home_health`
--
ALTER TABLE `home_health`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `house_keeping`
--
ALTER TABLE `house_keeping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `landscaping`
--
ALTER TABLE `landscaping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `life_guard`
--
ALTER TABLE `life_guard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `nail_tech`
--
ALTER TABLE `nail_tech`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_img`
--
ALTER TABLE `profile_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialized_trainings`
--
ALTER TABLE `specialized_trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_img_id` (`profile_img_id`);

--
-- Indexes for table `wait_staff`
--
ALTER TABLE `wait_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;

--
-- AUTO_INCREMENT for table `barbering`
--
ALTER TABLE `barbering`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bartending`
--
ALTER TABLE `bartending`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `bpo`
--
ALTER TABLE `bpo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `child_care`
--
ALTER TABLE `child_care`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `computer_basics`
--
ALTER TABLE `computer_basics`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `event_labels`
--
ALTER TABLE `event_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `event_planning`
--
ALTER TABLE `event_planning`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `front_desk`
--
ALTER TABLE `front_desk`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `home_health`
--
ALTER TABLE `home_health`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `house_keeping`
--
ALTER TABLE `house_keeping`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `landscaping`
--
ALTER TABLE `landscaping`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `life_guard`
--
ALTER TABLE `life_guard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nail_tech`
--
ALTER TABLE `nail_tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profile_img`
--
ALTER TABLE `profile_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `specialized_trainings`
--
ALTER TABLE `specialized_trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wait_staff`
--
ALTER TABLE `wait_staff`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `action_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`);

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`profile_img_id`) REFERENCES `profile_img` (`id`);

--
-- Constraints for table `barbering`
--
ALTER TABLE `barbering`
  ADD CONSTRAINT `barbering_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `bartending`
--
ALTER TABLE `bartending`
  ADD CONSTRAINT `bartending_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `bpo`
--
ALTER TABLE `bpo`
  ADD CONSTRAINT `bpo_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `child_care`
--
ALTER TABLE `child_care`
  ADD CONSTRAINT `child_care_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `computer_basics`
--
ALTER TABLE `computer_basics`
  ADD CONSTRAINT `computer_basics_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `event_planning`
--
ALTER TABLE `event_planning`
  ADD CONSTRAINT `event_planning_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `front_desk`
--
ALTER TABLE `front_desk`
  ADD CONSTRAINT `front_desk_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `home_health`
--
ALTER TABLE `home_health`
  ADD CONSTRAINT `home_health_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `house_keeping`
--
ALTER TABLE `house_keeping`
  ADD CONSTRAINT `house_keeping_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `landscaping`
--
ALTER TABLE `landscaping`
  ADD CONSTRAINT `landscaping_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `life_guard`
--
ALTER TABLE `life_guard`
  ADD CONSTRAINT `life_guard_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `nail_tech`
--
ALTER TABLE `nail_tech`
  ADD CONSTRAINT `nail_tech_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `specialized_trainings`
--
ALTER TABLE `specialized_trainings`
  ADD CONSTRAINT `specialized_trainings_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`profile_img_id`) REFERENCES `profile_img` (`id`);

--
-- Constraints for table `wait_staff`
--
ALTER TABLE `wait_staff`
  ADD CONSTRAINT `wait_staff_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `applicants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
