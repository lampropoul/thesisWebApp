-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 03, 2013 at 09:09 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `central_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `user_id` int(11) NOT NULL,
  `nomos` varchar(50) NOT NULL,
  `dimos` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tk` int(15) NOT NULL,
  `perioxi` varchar(50) NOT NULL,
  `xwra` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`user_id`, `nomos`, `dimos`, `city`, `address`, `tk`, `perioxi`, `xwra`) VALUES
(5, 'qwerty', 'qwerty', 'qwerty', 'qwerty', 12345, 'qwerty', 'qwerty'),
(6, 'DontKnow', 'DontKnow', 'DontKnow', 'DontKnow', 13579, 'DontKnow', 'DontKnow');

-- --------------------------------------------------------

--
-- Table structure for table `bathmides`
--

CREATE TABLE IF NOT EXISTS `bathmides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `name_2` (`name`),
  KEY `team_id` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bathmides`
--

INSERT INTO `bathmides` (`id`, `team_id`, `name`) VALUES
(1, 1, 'ΕΠΙΜΕΛΗΤΗΣ Β'),
(2, 1, 'ΕΠΙΜΕΛΗΤΗΣ A'),
(3, 1, 'ΕΠΙΜΕΛΗΤΗΣ Γ (ΕΙΔΙΚΕΥΟΜΕΝΟΣ)'),
(4, 3, 'ΓΡΑΜΜΑΤΕΑΣ'),
(5, 3, 'ΝΟΜΙΚΟΣ ΕΚΠΡΟΣΩΠΟΣ'),
(6, 3, 'ΥΠΟΔΙΕΥΘΥΝΤΗΣ'),
(7, 2, 'ΠΡΟΙΣΤΑΜΕΝΟΣ'),
(8, 2, 'ΒΟΗΘΟΣ ΧΕΙΡΟΥΡΓΟΥ');

-- --------------------------------------------------------

--
-- Table structure for table `change_list`
--

CREATE TABLE IF NOT EXISTS `change_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `request_start_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `computer_staff`
--

CREATE TABLE IF NOT EXISTS `computer_staff` (
  `user_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `declared_duties`
--

CREATE TABLE IF NOT EXISTS `declared_duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `duty_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `duty_type` (`duty_type`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `declared_duties`
--

INSERT INTO `declared_duties` (`id`, `user_id`, `duty_type`) VALUES
(1, 5, 'Βάρδια'),
(2, 5, 'Εφημερία'),
(3, 6, 'Βάρδια'),
(4, 6, 'Εφημερία'),
(5, 6, 'Καθημερινά Ιατρεία');

-- --------------------------------------------------------

--
-- Table structure for table `declared_locations`
--

CREATE TABLE IF NOT EXISTS `declared_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `declared_locations`
--

INSERT INTO `declared_locations` (`id`, `user_id`, `location`) VALUES
(1, 5, 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική'),
(2, 6, 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_name` (`department_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`) VALUES
(3, 'Ακτινολογικό Τμήμα'),
(1, 'Καρδιολογικό Τμήμα'),
(2, 'Παθολογικό Τμήμα'),
(4, 'Τμήμα Διαχείρισης Προσωπικού');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_users`
--

CREATE TABLE IF NOT EXISTS `doctor_users` (
  `user_id` int(11) NOT NULL,
  `thesi` varchar(50) NOT NULL,
  `team_id` int(11) NOT NULL,
  `bathmida` varchar(100) NOT NULL,
  `eidikotita` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `team_id` (`team_id`),
  KEY `bathmida` (`bathmida`),
  KEY `eidikotita` (`eidikotita`),
  KEY `team_id_2` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_users`
--

INSERT INTO `doctor_users` (`user_id`, `thesi`, `team_id`, `bathmida`, `eidikotita`) VALUES
(5, 'thesi', 1, 'ΕΠΙΜΕΛΗΤΗΣ Γ (ΕΙΔΙΚΕΥΟΜΕΝΟΣ)', 'ΧΕΙΡΟΥΡΓΙΚΗ'),
(6, 'thesi', 1, 'ΕΠΙΜΕΛΗΤΗΣ Γ (ΕΙΔΙΚΕΥΟΜΕΝΟΣ)', 'ΠΑΘΟΛΟΓΙΚΗ');

-- --------------------------------------------------------

--
-- Table structure for table `duties`
--

CREATE TABLE IF NOT EXISTS `duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duty_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `duty_name` (`duty_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `duties`
--

INSERT INTO `duties` (`id`, `duty_name`) VALUES
(1, 'Βάρδια'),
(2, 'Εφημερία'),
(3, 'Καθημερινά Ιατρεία');

-- --------------------------------------------------------

--
-- Table structure for table `eidikotites`
--

CREATE TABLE IF NOT EXISTS `eidikotites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `team_id` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `eidikotites`
--

INSERT INTO `eidikotites` (`id`, `team_id`, `name`) VALUES
(1, 1, 'ΠΑΘΟΛΟΓΙΚΗ'),
(2, 1, 'ΧΕΙΡΟΥΡΓΙΚΗ'),
(3, 2, 'ΠΑΘΟΛΟΓΙΚΗ'),
(4, 2, 'ΧΕΙΡΟΥΡΓΙΚΗ');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_name` (`location_name`),
  KEY `location_name_2` (`location_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική');

-- --------------------------------------------------------

--
-- Table structure for table `login_account`
--

CREATE TABLE IF NOT EXISTS `login_account` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notify_user`
--

CREATE TABLE IF NOT EXISTS `notify_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL COMMENT 'id tou programmatos',
  `isSecretary` tinyint(1) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `program_id` (`program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `nurse_user`
--

CREATE TABLE IF NOT EXISTS `nurse_user` (
  `user_id` int(11) NOT NULL,
  `thesi` varchar(50) NOT NULL,
  `team_id` int(11) NOT NULL,
  `bathmida` varchar(50) NOT NULL,
  `eidikotita` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `team_id` (`team_id`),
  KEY `bathmida` (`bathmida`),
  KEY `eidikotita` (`eidikotita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_numbers`
--

CREATE TABLE IF NOT EXISTS `phone_numbers` (
  `user_id` int(11) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_numbers`
--

INSERT INTO `phone_numbers` (`user_id`, `telephone`, `mobile`, `fax`) VALUES
(5, '2108520369', '2108520369', '2108520369'),
(6, '7894561230', '7894561230', '7894561230');

-- --------------------------------------------------------

--
-- Table structure for table `progname`
--

CREATE TABLE IF NOT EXISTS `progname` (
  `progname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `progname`
--

INSERT INTO `progname` (`progname`) VALUES
('efimeria');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `duty_type` varchar(50) NOT NULL,
  `duty_start_time` time NOT NULL,
  `duty_end_time` time NOT NULL,
  `location` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `program_name` varchar(50) NOT NULL,
  PRIMARY KEY (`program_id`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`),
  KEY `duty_type` (`duty_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `date`, `duty_type`, `duty_start_time`, `duty_end_time`, `location`, `user_id`, `program_name`) VALUES
(4, '2013-08-21', 'Βάρδια', '09:00:00', '17:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'vardia 12/08'),
(5, '2013-08-11', 'Εφημερία', '00:00:00', '01:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'Εφημερία 11/08'),
(6, '2013-09-02', 'Βάρδια', '13:00:00', '21:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'qwerty'),
(8, '2013-08-23', 'Βάρδια', '06:00:00', '14:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'Efimeria 23/08'),
(9, '2013-08-24', 'Εφημερία', '00:00:00', '08:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'Efimeria 23/08'),
(10, '2013-08-29', 'Εφημερία', '15:00:00', '23:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'efimeria 29/08'),
(11, '2013-08-28', 'Βάρδια', '05:00:00', '11:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'Bardia 02/09'),
(12, '2013-09-19', 'Καθημερινά Ιατρεία', '22:10:00', '06:10:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'Ka8imerina Dim Kostas'),
(13, '2013-09-25', 'Καθημερινά Ιατρεία', '10:00:00', '18:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'Ka8imerina Dim Kostas'),
(14, '2013-09-04', 'Καθημερινά Ιατρεία', '23:21:33', '07:21:33', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'Ka8imerina Dim Kostas'),
(17, '2013-09-13', 'Εφημερία', '00:00:00', '01:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 6, 'efimeria'),
(18, '2013-09-11', 'Εφημερία', '00:00:00', '01:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'efimeria');

-- --------------------------------------------------------

--
-- Table structure for table `stat_activity`
--

CREATE TABLE IF NOT EXISTS `stat_activity` (
  `num_of_queries` int(10) NOT NULL,
  `last_happened_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num_of_queries`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Here a can check if a query is executed indeed!';

--
-- Dumping data for table `stat_activity`
--

INSERT INTO `stat_activity` (`num_of_queries`, `last_happened_on`) VALUES
(2882, '2013-09-03 21:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_team` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `surname_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amka` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL COMMENT 'onoma',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_id` (`user_id`),
  KEY `department` (`department`),
  KEY `user_team` (`user_team`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_team`, `name_user`, `surname_user`, `username`, `password`, `email`, `amka`, `status`, `department`) VALUES
(5, 1, 'Vasileios', 'Lampropoulos', 'qwerty', 'qw', 'qwerty@qwerty.gr', '12345678900', 'active', 'Ακτινολογικό Τμήμα'),
(6, 1, 'Kostas', 'Dimitrakopoulos', 'q', 'q', 'q@q.gr', '15478963200', 'active', 'Παθολογικό Τμήμα');

-- --------------------------------------------------------

--
-- Table structure for table `user_id`
--

CREATE TABLE IF NOT EXISTS `user_id` (
  `user_id` int(11) NOT NULL,
  `step` int(2) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_team`
--

CREATE TABLE IF NOT EXISTS `user_team` (
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_team`
--

INSERT INTO `user_team` (`team_name`, `team_id`) VALUES
('ΙΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ', 1),
('ΝΟΣΗΛΕΥΤΙΚΟ ΠΡΟΣΩΠΙΚΟ', 2),
('ΔΙΟΙΚΗΤΙΚΟ ΠΡΟΣΩΠΙΚΟ', 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bathmides`
--
ALTER TABLE `bathmides`
  ADD CONSTRAINT `bathmides_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `change_list`
--
ALTER TABLE `change_list`
  ADD CONSTRAINT `change_list_ibfk_2` FOREIGN KEY (`id`) REFERENCES `program` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `change_list_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `computer_staff`
--
ALTER TABLE `computer_staff`
  ADD CONSTRAINT `computer_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `declared_duties`
--
ALTER TABLE `declared_duties`
  ADD CONSTRAINT `declared_duties_ibfk_2` FOREIGN KEY (`duty_type`) REFERENCES `duties` (`duty_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_duties_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `declared_locations`
--
ALTER TABLE `declared_locations`
  ADD CONSTRAINT `declared_locations_ibfk_3` FOREIGN KEY (`location`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_locations_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_users`
--
ALTER TABLE `doctor_users`
  ADD CONSTRAINT `doctor_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_3` FOREIGN KEY (`eidikotita`) REFERENCES `eidikotites` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_4` FOREIGN KEY (`bathmida`) REFERENCES `bathmides` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eidikotites`
--
ALTER TABLE `eidikotites`
  ADD CONSTRAINT `eidikotites_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notify_user`
--
ALTER TABLE `notify_user`
  ADD CONSTRAINT `notify_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notify_user_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nurse_user`
--
ALTER TABLE `nurse_user`
  ADD CONSTRAINT `nurse_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_3` FOREIGN KEY (`bathmida`) REFERENCES `bathmides` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_4` FOREIGN KEY (`eidikotita`) REFERENCES `eidikotites` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD CONSTRAINT `phone_numbers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`location`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_5` FOREIGN KEY (`duty_type`) REFERENCES `duties` (`duty_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_team`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`department`) REFERENCES `departments` (`department_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_id`
--
ALTER TABLE `user_id`
  ADD CONSTRAINT `user_id_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
