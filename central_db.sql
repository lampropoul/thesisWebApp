-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: localhost
-- Χρόνος δημιουργίας: 14 Αυγ 2013 στις 11:16:04
-- Έκδοση διακομιστή: 5.5.24-log
-- Έκδοση PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση: `central_db`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `address`
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
-- Άδειασμα δεδομένων του πίνακα `address`
--

INSERT INTO `address` (`user_id`, `nomos`, `dimos`, `city`, `address`, `tk`, `perioxi`, `xwra`) VALUES
(5, 'qwerty', 'qwerty', 'qwerty', 'qwerty', 12345, 'qwerty', 'qwerty');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bathmides`
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
-- Άδειασμα δεδομένων του πίνακα `bathmides`
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
-- Δομή πίνακα για τον πίνακα `change_list`
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
-- Δομή πίνακα για τον πίνακα `computer_staff`
--

CREATE TABLE IF NOT EXISTS `computer_staff` (
  `user_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `declared_duties`
--

CREATE TABLE IF NOT EXISTS `declared_duties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `duty_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `duty_type` (`duty_type`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `declared_duties`
--

INSERT INTO `declared_duties` (`id`, `user_id`, `duty_type`) VALUES
(1, 5, 'Βάρδια'),
(2, 5, 'Εφημερία');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `declared_locations`
--

CREATE TABLE IF NOT EXISTS `declared_locations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `declared_locations`
--

INSERT INTO `declared_locations` (`id`, `user_id`, `location`) VALUES
(1, 5, 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_name` (`department_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Άδειασμα δεδομένων του πίνακα `departments`
--

INSERT INTO `departments` (`id`, `department_name`) VALUES
(3, 'Ακτινολογικό Τμήμα'),
(1, 'Καρδιολογικό Τμήμα'),
(2, 'Παθολογικό Τμήμα'),
(4, 'Τμήμα Διαχείρισης Προσωπικού');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `doctor_users`
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
-- Άδειασμα δεδομένων του πίνακα `doctor_users`
--

INSERT INTO `doctor_users` (`user_id`, `thesi`, `team_id`, `bathmida`, `eidikotita`) VALUES
(5, 'thesi', 1, 'ΕΠΙΜΕΛΗΤΗΣ Γ (ΕΙΔΙΚΕΥΟΜΕΝΟΣ)', 'ΧΕΙΡΟΥΡΓΙΚΗ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `duties`
--

CREATE TABLE IF NOT EXISTS `duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duty_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `duty_name` (`duty_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Άδειασμα δεδομένων του πίνακα `duties`
--

INSERT INTO `duties` (`id`, `duty_name`) VALUES
(1, 'Βάρδια'),
(2, 'Εφημερία'),
(3, 'Καθημερινά Ιατρεία');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `eidikotites`
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
-- Άδειασμα δεδομένων του πίνακα `eidikotites`
--

INSERT INTO `eidikotites` (`id`, `team_id`, `name`) VALUES
(1, 1, 'ΠΑΘΟΛΟΓΙΚΗ'),
(2, 1, 'ΧΕΙΡΟΥΡΓΙΚΗ'),
(3, 2, 'ΠΑΘΟΛΟΓΙΚΗ'),
(4, 2, 'ΧΕΙΡΟΥΡΓΙΚΗ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_name` (`location_name`),
  KEY `location_name_2` (`location_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Άδειασμα δεδομένων του πίνακα `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `login_account`
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
-- Δομή πίνακα για τον πίνακα `notify_user`
--

CREATE TABLE IF NOT EXISTS `notify_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL COMMENT 'id tou programmatos',
  `isSecretary` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `program_id` (`program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Άδειασμα δεδομένων του πίνακα `notify_user`
--

INSERT INTO `notify_user` (`id`, `user_id`, `program_id`, `isSecretary`) VALUES
(1, 5, 5, 1),
(2, 4, 7, 1),
(3, 5, 4, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `nurse_user`
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
-- Δομή πίνακα για τον πίνακα `phone_numbers`
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
-- Άδειασμα δεδομένων του πίνακα `phone_numbers`
--

INSERT INTO `phone_numbers` (`user_id`, `telephone`, `mobile`, `fax`) VALUES
(5, '2108520369', '2108520369', '2108520369');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `progname`
--

CREATE TABLE IF NOT EXISTS `progname` (
  `progname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `progname`
--

INSERT INTO `progname` (`progname`) VALUES
('qwerty');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `program`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Άδειασμα δεδομένων του πίνακα `program`
--

INSERT INTO `program` (`program_id`, `date`, `duty_type`, `duty_start_time`, `duty_end_time`, `location`, `user_id`, `program_name`) VALUES
(4, '2013-08-21', 'Βάρδια', '09:00:00', '17:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'vardia 12/08'),
(5, '2013-08-11', 'Εφημερία', '00:00:00', '01:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'Εφημερία 11/08'),
(6, '2013-08-28', 'Βάρδια', '05:00:00', '11:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 5, 'qwerty'),
(7, '2013-08-28', 'Εφημερία', '05:00:00', '11:00:00', 'Γενικό Νοσοκομείο Αθηνών - Πολυκλινική', 4, 'qwerty');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `stat_activity`
--

CREATE TABLE IF NOT EXISTS `stat_activity` (
  `num_of_queries` int(10) NOT NULL,
  `last_happened_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num_of_queries`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Here a can check if a query is executed indeed!';

--
-- Άδειασμα δεδομένων του πίνακα `stat_activity`
--

INSERT INTO `stat_activity` (`num_of_queries`, `last_happened_on`) VALUES
(1978, '2013-08-01 20:46:37');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`user_id`, `user_team`, `name_user`, `surname_user`, `username`, `password`, `email`, `amka`, `status`, `department`) VALUES
(1, 1, 'Spirydon', 'Iatropoulos', 'siatrop', 's.iatrop.0', 'siatrop@gmail.com', '12041969017', 'active', 'Καρδιολογικό Τμήμα'),
(2, 2, 'Vasileios', 'Lampropoulos', 'lampropoul', '12', 'lampropoul@live.com', '12048901859', 'active', 'Παθολογικό Τμήμα'),
(4, 2, 'Vasileios', 'Papadopoulos', 'vpapadopou', '123', 'vapapadopou@gmail.com', '67342200876', 'active', 'Τμήμα Διαχείρισης Προσωπικού'),
(5, 1, 'qwerty', 'qwerty', 'qwerty', 'qwerty', 'qwerty@qwerty.gr', '12345678900', 'active', 'Ακτινολογικό Τμήμα');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user_id`
--

CREATE TABLE IF NOT EXISTS `user_id` (
  `user_id` int(11) NOT NULL,
  `step` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user_team`
--

CREATE TABLE IF NOT EXISTS `user_team` (
  `team_name` varchar(50) NOT NULL,
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Άδειασμα δεδομένων του πίνακα `user_team`
--

INSERT INTO `user_team` (`team_name`, `team_id`) VALUES
('ΙΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ', 1),
('ΝΟΣΗΛΕΥΤΙΚΟ ΠΡΟΣΩΠΙΚΟ', 2),
('ΔΙΟΙΚΗΤΙΚΟ ΠΡΟΣΩΠΙΚΟ', 3);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `bathmides`
--
ALTER TABLE `bathmides`
  ADD CONSTRAINT `bathmides_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `change_list`
--
ALTER TABLE `change_list`
  ADD CONSTRAINT `change_list_ibfk_2` FOREIGN KEY (`id`) REFERENCES `program` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `change_list_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `computer_staff`
--
ALTER TABLE `computer_staff`
  ADD CONSTRAINT `computer_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `declared_duties`
--
ALTER TABLE `declared_duties`
  ADD CONSTRAINT `declared_duties_ibfk_1` FOREIGN KEY (`id`) REFERENCES `duties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_duties_ibfk_2` FOREIGN KEY (`duty_type`) REFERENCES `duties` (`duty_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_duties_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `declared_locations`
--
ALTER TABLE `declared_locations`
  ADD CONSTRAINT `declared_locations_ibfk_2` FOREIGN KEY (`id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_locations_ibfk_3` FOREIGN KEY (`location`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `declared_locations_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `doctor_users`
--
ALTER TABLE `doctor_users`
  ADD CONSTRAINT `doctor_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_3` FOREIGN KEY (`eidikotita`) REFERENCES `eidikotites` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_users_ibfk_4` FOREIGN KEY (`bathmida`) REFERENCES `bathmides` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `eidikotites`
--
ALTER TABLE `eidikotites`
  ADD CONSTRAINT `eidikotites_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `notify_user`
--
ALTER TABLE `notify_user`
  ADD CONSTRAINT `notify_user_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notify_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `nurse_user`
--
ALTER TABLE `nurse_user`
  ADD CONSTRAINT `nurse_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_3` FOREIGN KEY (`bathmida`) REFERENCES `bathmides` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nurse_user_ibfk_4` FOREIGN KEY (`eidikotita`) REFERENCES `eidikotites` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD CONSTRAINT `phone_numbers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`location`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_5` FOREIGN KEY (`duty_type`) REFERENCES `duties` (`duty_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_team`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`department`) REFERENCES `departments` (`department_name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
