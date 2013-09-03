-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 03, 2013 at 09:08 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hfpm_webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `luacm_assets`
--

CREATE TABLE IF NOT EXISTS `luacm_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `luacm_assets`
--

INSERT INTO `luacm_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 119, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 70, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 71, 72, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 73, 74, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 75, 76, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 77, 78, 1, 'com_login', 'com_login', '{}'),
(13, 1, 79, 80, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 81, 82, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 83, 84, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 85, 86, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 87, 88, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 89, 90, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 91, 94, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 95, 96, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 97, 98, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 99, 100, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 101, 102, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 103, 106, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 107, 110, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 111, 112, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 69, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 92, 93, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 108, 109, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 104, 105, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 113, 114, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 115, 116, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 117, 118, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 27, 19, 20, 3, 'com_content.article.1', 'Test PHP', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 21, 22, 3, 'com_content.article.2', 'Εγγραφή Χρήστη', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 23, 24, 3, 'com_content.article.3', 'Εισαγωγή Πληροφοριών Ιατρικού Προσωπικού', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 25, 26, 3, 'com_content.article.4', 'Εισαγωγή Πληροφοριών Νοσηλευτικού Προσωπικού', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 27, 27, 28, 3, 'com_content.article.5', 'Εισαγωγή Πληροφοριών Διοικητικού Προσωπικού', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 27, 29, 30, 3, 'com_content.article.6', 'Σφάλμα', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 27, 31, 32, 3, 'com_content.article.7', 'Εισαγωγή Πληροφοριών Τηλεφώνου', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 27, 33, 34, 3, 'com_content.article.8', 'Εισαγωγή Πληροφοριών Κατοικίας', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 27, 35, 36, 3, 'com_content.article.9', 'Επιτυχία', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 27, 37, 38, 3, 'com_content.article.10', 'Διαγραφή', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 27, 39, 40, 3, 'com_content.article.11', 'Λίστα Χρηστών', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 27, 41, 42, 3, 'com_content.article.12', 'Δημιουργία Προγράμματος', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 27, 43, 44, 3, 'com_content.article.13', 'Λίστα Προγραμμάτων', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 27, 45, 46, 3, 'com_content.article.14', 'Αιτήματα Χρηστών', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 27, 47, 48, 3, 'com_content.article.15', 'Επεξεργασία Χρήστη', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 27, 49, 50, 3, 'com_content.article.16', 'Διαγραφή Χρήστη', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 27, 51, 52, 3, 'com_content.article.17', 'Οριστική Διαγραφή Χρήστη', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 27, 53, 54, 3, 'com_content.article.18', 'Λεπτομέρειες Προγράμματος (Λίστα Καθηκόντων)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 27, 55, 56, 3, 'com_content.article.19', 'Διαγραφή Καθήκοντος', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 27, 57, 58, 3, 'com_content.article.20', 'Διαγραφή Προγράμματος', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 59, 60, 3, 'com_content.article.21', 'Αποδοχή Αιτήματος (Ανταλλαγή)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 61, 62, 3, 'com_content.article.22', 'Απόρριψη Αιτήματος', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 27, 63, 64, 3, 'com_content.article.23', 'Ανταλλαγή Καθηκόντων', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 27, 65, 66, 3, 'com_content.article.24', 'Οριστική Αποδοχή Αιτήματος (Ανταλλαγή)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 27, 67, 68, 3, 'com_content.article.25', 'Καλώς Ήρθατε', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_associations`
--

CREATE TABLE IF NOT EXISTS `luacm_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_banners`
--

CREATE TABLE IF NOT EXISTS `luacm_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_banner_clients`
--

CREATE TABLE IF NOT EXISTS `luacm_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `luacm_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_categories`
--

CREATE TABLE IF NOT EXISTS `luacm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `luacm_categories`
--

INSERT INTO `luacm_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_contact_details`
--

CREATE TABLE IF NOT EXISTS `luacm_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_content`
--

CREATE TABLE IF NOT EXISTS `luacm_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `luacm_content`
--

INSERT INTO `luacm_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Test PHP', 'test-php', '<?php\r\n	\r\n		function connect_db($name)\r\n{\r\ntry\r\n{\r\n@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n\r\nif (mysqli_connect_errno()) {\r\nprintf("Connect failed: %s\\n", mysqli_connect_error());\r\nexit();\r\n}\r\n\r\n$con->select_db($name);\r\n\r\nif (!$con->set_charset(''utf8''))\r\nprintf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n\r\n//echo $con;\r\n\r\nreturn $con;\r\n}\r\ncatch (Exception $e)\r\n{\r\nreturn -1;\r\n}\r\n    }\r\n	\r\n?>\r\n<html>\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n\r\n	function button_click()\r\n    {\r\n    	//alert(''Button clicked'');\r\n        document.getElementById(''div2'').innerHTML += "''<?php echo date(''d-m-Y H:i:s'');?>''";\r\n    }\r\n    \r\n</script>\r\n</head>\r\n\r\n<body>\r\n\r\n        \r\n	<input type="button" id="button" title="button"  value="button" onClick="javascript:button_click();"/>\r\n        <div id="div2"></div>\r\n\r\n</body>\r\n\r\n\r\n<?php\r\n		// connect to DB\r\n$con = connect_db(''central_db'');\r\n\r\n\r\n//var_dump($this->get(''status''));\r\n\r\n// define query\r\n$query_string = "SELECT * FROM users WHERE username = ''q''";\r\n//var_dump($query_string);\r\n// execute query\r\n$result = $con->query($query_string);\r\n//var_dump($result);\r\n\r\n// fetch results (one or none entry)\r\nwhile ($row = $result->fetch_array())\r\n{\r\n\r\n$id = intval($row[''user_id'']);\r\n\r\n$users[$id] = array(\r\n''id'' => $id,\r\n''user_team'' => intval($row[''user_team'']),\r\n''name_user'' => $row[''name_user''],\r\n''surname_user'' => $row[''surname_user''],\r\n''username'' => $row[''username''],\r\n''password'' => $row[''password''],\r\n''email'' => $row[''email''],\r\n''amka'' => $row[''amka''],\r\n''status'' => $row[''status''],\r\n''department'' => $row[''department'']\r\n\r\n);\r\n\r\n}\r\n\r\nvar_dump($users);\r\n\r\n?>', '', -2, 2, '2013-08-03 11:36:51', 385, '', '2013-08-05 09:41:51', 385, 0, '0000-00-00 00:00:00', '2013-08-03 11:36:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 21, 4, '', '', 2, 39, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Εγγραφή Χρήστη', 'user-registration', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	\r\n	\r\n	function validate_username(username)\r\n	{\r\n		if((username.value.length<6 || username.value.length>25)){\r\n			alert(''Το Όνομα Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων'');\r\n			username.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_username_space(username)\r\n	{\r\n		var reg = /^[A-Za-zΑ-Ωα-ω]/;\r\n		if(reg.test(username.value) == false){\r\n			alert(''Το ονομά σας θα πρέπει να αρχίζει με γράμμα'');\r\n			username.focus();\r\n		}\r\n		else return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_password(password)\r\n	{\r\n		if(password.value.length<6 || password.value.length>25){\r\n			alert(''Ο Κωδικός Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων'');\r\n			password.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_email(email) {\r\n		var reg = /^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$/;\r\n		if(reg.test(email.value) == false) {\r\n			alert(''Μη έγκυρη Διεύθυνση Ηλεκτρονικού Ταχυδρομείου'');\r\n			email.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function same(str1, str2)\r\n	{\r\n		if(str1.value != str2.value){\r\n			alert("Οι κωδικοί που εισάγατε δεν είναι όμοιοι");\r\n			str2.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	function validate_nameOrSurname(nameOrSurname)\r\n	{\r\n		if(nameOrSurname.value.length<1){\r\n			alert(''Δεν έχετε ορίσει όνομα ή επώνυμο'');\r\n			nameOrSurname.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_amka(amka)\r\n	{\r\n		if(amka.value.length!=11){\r\n			alert(''Ο ΑΜΚΑ θα πρέπει να είναι ακριβώς 11 αριθμοί'');\r\n			amka.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_register(username, password1, password2, email, name_user, surname_user, amka)\r\n	{\r\n		if(!(validate_username(username) && validate_username_space(username) && validate_password(password1) && validate_password(password2) && same(password1, password2) && validate_email(email) && validate_nameOrSurname(name_user) && validate_nameOrSurname(surname_user) && validate_amka(amka))) {\r\n			return false;\r\n		}\r\n		return true;	\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n				\r\n	<form action="" name="register" method="post" onSubmit="javascript:return validate_register(username, password1, password2, email, name_user, surname_user, amka);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label for="uname">Εισάγετε Όνομα χρήστη:</label></td>\r\n				<td><input name="username" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="pword1">Εισάγετε Κωδικό χρήστη:</label></td>          		\r\n				<td><input name="password1" id="pword1" type="password" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="pword2">Επαναλάβετε Κωδικό χρήστη: </label></td>          		\r\n				<td><input name="password2" id="pword2" type="password" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="eMail">Εισάγετε Email:</label></td>\r\n				<td><input name="email" id="e-mail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="uname">Εισάγετε Όνομα:</label></td>\r\n				<td><input name="name_user" id="name" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="pword1">Εισάγετε Επώνυμο:</label></td>          		\r\n				<td><input name="surname_user" id="surname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="pword2">Εισάγετε Ομάδα χρήστη: </label></td>          		\r\n				<td><!--<input name="user_team" id="pword2" type="text" size="20" maxlength="30"  autocomplete="off" />-->\r\n				<select name="team">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT team_name FROM user_team ORDER BY team_name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''team_name''].''" selected="selected">''.$row[''team_name''].''</option>'';\r\n						else echo ''<option value="''.$row[''team_name''].''">''.$row[''team_name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="eMail">Εισάγετε ΑΜΚΑ:</label></td>\r\n				<td><input name="amka" id="amka" type="text" size="20" maxlength="50"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label for="eMail">Εισάγετε Τμήμα:</label></td>\r\n				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->\r\n				<select name="department">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT department_name FROM departments ORDER BY department_name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''department_name''].''" selected="selected">''.$row[''department_name''].''</option>'';\r\n						else echo ''<option value="''.$row[''department_name''].''">''.$row[''department_name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Κατάσταση:</label></td>\r\n				<td><input name="status" id="status" type="text" size="20" maxlength="50"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Επιλέξτε Τύπους Καθηκόντων:</label></td>\r\n				<td>\r\n					<input type="checkbox" name="vardia" value="Βάρδια">Βάρδια<br>\r\n					<input type="checkbox" name="efimeria" value="Εφημερία">Εφημερία<br>\r\n					<input type="checkbox" name="kathimerina" value="Καθημερινά Ιατρεία">Καθημερινά Ιατρεία<br>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Καταχώριση Γενικών Πληροφοριών" style="font-size:1em" class="btn btn-success"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''username'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT username FROM users WHERE username=''".$_POST[''username'']."''";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			// den vre8ike kati opote kanw insert\r\n			if ($result->fetch_array() == NULL)\r\n			{\r\n				\r\n				$user_team_str = $_POST[''team''];\r\n				$name_user = $_POST[''name_user''];\r\n				$surname_user = $_POST[''surname_user''];\r\n				$username = $_POST[''username''];\r\n				$password = $_POST[''password1''];\r\n				$email = $_POST[''email''];\r\n				$amka = $_POST[''amka''];\r\n				$status = $_POST[''status''];\r\n				$department = $_POST[''department''];\r\n				\r\n				\r\n				$query_string = "SELECT team_id FROM user_team WHERE team_name=''".$user_team_str."''";\r\n				//var_dump($query_string);\r\n				// execute query\r\n				$result2 = $con->query($query_string);\r\n				$row2 = $result2->fetch_array();\r\n				$user_team_int = intval($row2[''team_id'']);\r\n				\r\n							\r\n				// define query\r\n				$query_string = "INSERT INTO users (user_team, name_user, surname_user, username, password, email, amka, status, department) VALUES (".$user_team_int.", ''".$name_user."'', ''".$surname_user."'', ''".$username."'', ''".$password."'', ''".$email."'', ''".$amka."'', ''".$status."'', ''".$department."'');";\r\n				//var_dump($query_string);\r\n				// execute query\r\n				$result3 = $con->query($query_string);\r\n				//var_dump($result);\r\n				\r\n				\r\n				$query_string = "SELECT user_id FROM users WHERE username=''".$username."''";\r\n				$result4 = $con->query($query_string);\r\n				$row4 = $result4->fetch_array();\r\n				\r\n				$query_string = "INSERT INTO user_id (user_id, step) VALUES (".intval($row4[''user_id'']).", 2)";\r\n				//var_dump($query_string);\r\n				// execute query\r\n				$result4 = $con->query($query_string);\r\n				\r\n				\r\n				// duty types\r\n				\r\n				if (isset($_POST[''efimeria'']))\r\n				{\r\n					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4[''user_id'']).", ''".$_POST[''efimeria'']."'')";\r\n					$con->query($query_string);\r\n				}\r\n				if (isset($_POST[''vardia'']))\r\n				{\r\n					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4[''user_id'']).", ''".$_POST[''vardia'']."'')";\r\n					$con->query($query_string);\r\n				}\r\n				if (isset($_POST[''kathimerina'']))\r\n				{\r\n					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4[''user_id'']).", ''".$_POST[''kathimerina'']."'')";\r\n					$con->query($query_string);\r\n				}\r\n				\r\n				\r\n				$con->close();\r\n				\r\n				//$dir = explode( "\\\\", getcwd() );\r\n				//echo ''Location: http://'' + $_SERVER[''SERVER_NAME''] + ''/'' + $dir[count($dir)-1] + ''/index.php/doctor-info'';\r\n				if ($user_team_str == ''ΙΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ'') header(''Location: index.php/doctor-info'');\r\n				else if ($user_team_str == ''ΝΟΣΗΛΕΥΤΙΚΟ ΠΡΟΣΩΠΙΚΟ'') header(''Location: http://'' + $_SERVER[''SERVER_NAME''] + ''/'' + $dir[count($dir)-1] + ''/index.php/nurse-info'');\r\n				else header(''Location: http://'' + $_SERVER[''SERVER_NAME''] + ''/'' + $dir[count($dir)-1] + ''/index.php/staff-info'');\r\n			}\r\n			else\r\n			{\r\n				header(''Location: http://'' + $_SERVER[''SERVER_NAME''] + ''/'' + $dir[count($dir)-1] + ''/index.php/error'');\r\n			}\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-05 09:48:56', 385, '', '2013-09-03 19:51:57', 385, 0, '0000-00-00 00:00:00', '2013-08-05 09:48:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 59, 23, '', '', 2, 197, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 38, 'Εισαγωγή Πληροφοριών Ιατρικού Προσωπικού', '2013-08-05-10-26-49', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	function validate_register(thesi)\r\n	{\r\n		if(thesi.value.length<1){\r\n			alert(''Δεν έχετε ορίσει θέση'');\r\n			thesi.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/doctor-info" name="register" method="post" onSubmit="javascript:return validate_register(thesi);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label>Εισάγετε Θέση:</label></td>\r\n				<td><input name="thesi" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Επιλέξτε Βαθμίδα: </label></td>          		\r\n				<td>\r\n				<select name="bathmida">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT name FROM bathmides WHERE team_id=1 ORDER BY name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''name''].''" selected="selected">''.$row[''name''].''</option>'';\r\n						else echo ''<option value="''.$row[''name''].''">''.$row[''name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Επιλέξτε Ειδικότητα:</label></td>\r\n				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->\r\n				<select name="eidikotita">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT name FROM eidikotites WHERE team_id=1 ORDER BY name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''name''].''" selected="selected">''.$row[''name''].''</option>'';\r\n						else echo ''<option value="''.$row[''name''].''">''.$row[''name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Καταχώριση Πληροφοριών Ιατρού" style="font-size:1em" class="btn btn-success"/></td>\r\n                <td></td>\r\n                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href=''index.php/cancel''" style="font-size:1em" class="btn btn-danger"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''thesi'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT * FROM user_id";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				\r\n				$thesi = $_POST[''thesi''];\r\n				$bathmida = $_POST[''bathmida''];\r\n				$eidikotita = $_POST[''eidikotita''];\r\n				\r\n							\r\n				// define query\r\n				$query_string = "INSERT INTO doctor_users VALUES (".intval($row[''user_id'']).", ''".$thesi."'', 1, ''".$bathmida."'', ''".$eidikotita."'');";\r\n				var_dump($query_string);\r\n				$con->query($query_string);\r\n				\r\n				$con->close();\r\n				\r\n				header(''Location: index.php/phone-info'');\r\n			}\r\n			\r\n			\r\n			if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-05 10:26:49', 385, '', '2013-08-22 17:30:07', 385, 0, '0000-00-00 00:00:00', '2013-08-05 10:26:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 36, 22, '', '', 2, 114, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'Εισαγωγή Πληροφοριών Νοσηλευτικού Προσωπικού', '2013-08-06-16-38-38', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	function validate_register(thesi)\r\n	{\r\n		if(thesi.value.length<1){\r\n			alert(''Δεν έχετε ορίσει θέση'');\r\n			thesi.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/nurse-info" name="register" method="post" onSubmit="javascript:return validate_register(thesi);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label>Εισάγετε Θέση:</label></td>\r\n				<td><input name="thesi" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Επιλέξτε Βαθμίδα: </label></td>          		\r\n				<td>\r\n				<select name="bathmida">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT name FROM bathmides WHERE team_id=2 ORDER BY name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''name''].''" selected="selected">''.$row[''name''].''</option>'';\r\n						else echo ''<option value="''.$row[''name''].''">''.$row[''name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Επιλέξτε Ειδικότητα:</label></td>\r\n				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->\r\n				<select name="eidikotita">\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					// define query\r\n					$query_string = "SELECT name FROM eidikotites WHERE team_id=2 ORDER BY name";\r\n					//var_dump($query_string);\r\n					// execute query\r\n					$result = $con->query($query_string);\r\n					//var_dump($result);\r\n					$con->close();\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value="''.$row[''name''].''" selected="selected">''.$row[''name''].''</option>'';\r\n						else echo ''<option value="''.$row[''name''].''">''.$row[''name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Καταχώριση Πληροφοριών Νοσηλευτή" style="font-size:1em" class="btn btn-success"/></td>\r\n                <td></td>\r\n                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href=''index.php/cancel''" style="font-size:1em" class="btn btn-danger"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''thesi'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT * FROM user_id";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				\r\n				$thesi = $_POST[''thesi''];\r\n				$bathmida = $_POST[''bathmida''];\r\n				$eidikotita = $_POST[''eidikotita''];\r\n				\r\n							\r\n				// define query\r\n				$query_string = "INSERT INTO nurse_user VALUES (".intval($row[''user_id'']).", ''".$thesi."'', 2, ''".$bathmida."'', ''".$eidikotita."'');";\r\n				\r\n				$con->query($query_string);\r\n				\r\n				$con->close();\r\n				\r\n				header(''Location: index.php/phone-info'');\r\n				\r\n				break;\r\n			}\r\n			\r\n			\r\n			if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-06 16:38:38', 385, '', '2013-08-10 12:03:43', 385, 0, '0000-00-00 00:00:00', '2013-08-06 16:38:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 21, '', '', 2, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 40, 'Εισαγωγή Πληροφοριών Διοικητικού Προσωπικού', '2013-08-06-16-39-10', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string = "SELECT * FROM user_id";\r\n		$result = $con->query($query_string);\r\n		\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{\r\n			\r\n			$query_string = "INSERT INTO computer_staff VALUES (".intval($row[''user_id'']).", 3);";\r\n			$con->query($query_string);\r\n			\r\n			$con->close();\r\n			\r\n			header(''Location: index.php/phone-info'');\r\n		}\r\n		\r\n		\r\n		if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n		\r\n\r\n?>', '', 1, 2, '2013-08-06 16:39:10', 385, '', '2013-08-08 16:37:09', 385, 0, '0000-00-00 00:00:00', '2013-08-06 16:39:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 20, '', '', 2, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 41, 'Σφάλμα', '2013-08-06-17-57-44', 'Ένα σφάλμα προέκυψε, προσπαθήστε ξανά.', '', 1, 2, '2013-08-06 17:57:44', 385, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-08-06 17:57:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 19, '', '', 2, 28, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 42, 'Εισαγωγή Πληροφοριών Τηλεφώνου', '2013-08-07-09-50-38', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n		\r\n	function isNumber(n) {\r\n	  return !isNaN(parseFloat(n)) && isFinite(n);\r\n	}\r\n\r\n\r\n	\r\n	function validate_stathero(stathero)\r\n	{\r\n		if(stathero.value.length != 10 || !isNumber(stathero.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			stathero.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_kinito(kinito)\r\n	{\r\n		if(kinito.value.length != 10 || !isNumber(kinito.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			kinito.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_fax(fax)\r\n	{\r\n		if(fax.value.length != 10 || !isNumber(fax.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			fax.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate(stathero, kinito, fax)\r\n    {\r\n		if(!( validate_stathero(stathero) && validate_kinito(kinito) && validate_fax(fax) )) {\r\n			return false;\r\n		}\r\n		return true;	\r\n    }\r\n	\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/phone-info" name="register" method="post" onSubmit="javascript:return validate(stathero, kinito, fax);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label>Εισάγετε Σταθερό:</label></td>\r\n				<td><input name="stathero" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Κινητό: </label></td>          		\r\n				<td><input name="kinito" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Φαξ:</label></td>\r\n				<td><input name="fax" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Καταχώριση Πληροφοριών Τηλεφώνου" style="font-size:1em" class="btn btn-success"/></td>\r\n                <td></td>\r\n                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href=''index.php/cancel''" style="font-size:1em" class="btn btn-danger"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''kinito'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT * FROM user_id";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				\r\n				$stathero = $_POST[''stathero''];\r\n				$kinito = $_POST[''kinito''];\r\n				$fax = $_POST[''fax''];\r\n				\r\n							\r\n				// define query\r\n				$query_string = "INSERT INTO phone_numbers VALUES (".intval($row[''user_id'']).", ''".$stathero."'', ''".$kinito."'', ''".$fax."'');";\r\n				\r\n				$con->query($query_string);\r\n				\r\n				$con->close();\r\n				\r\n				header(''Location: index.php/address-info'');\r\n				\r\n				break;\r\n			}\r\n			\r\n			\r\n			if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-07 09:50:38', 385, '', '2013-08-10 12:04:39', 385, 0, '0000-00-00 00:00:00', '2013-08-07 09:50:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 18, '', '', 2, 48, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 43, 'Εισαγωγή Πληροφοριών Κατοικίας', '2013-08-08-13-29-01', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n		\r\n	function isNumber(n) {\r\n	  return !isNaN(parseFloat(n)) && isFinite(n);\r\n	}\r\n\r\n\r\n	\r\n	function validate_nomos(nomos)\r\n	{\r\n		if(nomos.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			nomos.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_dimos(dimos)\r\n	{\r\n		if(dimos.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			dimos.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_city(city)\r\n	{\r\n		if(city.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			city.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_address(address)\r\n	{\r\n		if(address.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			address.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_tk(tk)\r\n	{\r\n		if(tk.value.length != 5 || !isNumber(tk.value)){\r\n			alert(''Ο ΤΚ πρέπει να έχει ακριβώς 5 αριθμούς'');\r\n			tk.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_perioxi(perioxi)\r\n	{\r\n		if(perioxi.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			perioxi.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_xwra(xwra)\r\n	{\r\n		if(xwra.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			xwra.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate(nomos, dimos, city, address, tk, perioxi, xwra)\r\n    {\r\n		if(!( validate_nomos(nomos) && validate_dimos(dimos) && validate_city(city) && validate_address(address) && validate_tk(tk) && validate_perioxi(perioxi) && validate_xwra(xwra) )) {\r\n			return false;\r\n		}\r\n		return true;	\r\n    }\r\n	\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/address-info" name="register" method="post" onSubmit="javascript:return validate(nomos, dimos, city, address, tk, perioxi, xwra);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label>Εισάγετε Νομό:</label></td>\r\n				<td><input name="nomos" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Δήμο:</label></td>\r\n				<td><input name="dimos" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Πόλη:</label></td>\r\n				<td><input name="city" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Διεύθυνση:</label></td>\r\n				<td><input name="address" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε ΤΚ:</label></td>\r\n				<td><input name="tk" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Περιοχή:</label></td>\r\n				<td><input name="perioxi" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Εισάγετε Χώρα:</label></td>\r\n				<td><input name="xwra" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Καταχώριση Πληροφοριών Κατοικίας και Τέλος" style="font-size:1em" class="btn btn-success"/></td>\r\n                <td></td>\r\n                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href=''index.php/cancel''" style="font-size:1em" class="btn btn-danger"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''xwra'']))\r\n		{\r\n\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT * FROM user_id";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				\r\n				$nomos = $_POST[''nomos''];\r\n				$dimos = $_POST[''dimos''];\r\n				$city = $_POST[''city''];\r\n				$address = $_POST[''address''];\r\n				$tk = intval($_POST[''tk'']);\r\n				$perioxi = $_POST[''perioxi''];\r\n				$xwra = $_POST[''xwra''];\r\n							\r\n				// define query\r\n				$query_string = "INSERT INTO address VALUES (".intval($row[''user_id'']).", ''".$nomos."'', ''".$dimos."'', ''".$city."'', ''".$address."'', ".$tk.", ''".$perioxi."'', ''".$xwra."'');";\r\n				$con->query($query_string);\r\n				\r\n				\r\n				$query_string = "TRUNCATE TABLE user_id";\r\n				$con->query($query_string);\r\n				\r\n				\r\n				$con->close();\r\n				\r\n				header(''Location: index.php/success'');\r\n				\r\n				break;\r\n			}\r\n			\r\n			\r\n			if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-08 13:29:01', 385, '', '2013-08-10 12:07:22', 385, 0, '0000-00-00 00:00:00', '2013-08-08 13:29:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 17, '', '', 2, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 44, 'Επιτυχία', '2013-08-08-16-25-02', '<h2>Η διαδικασία ολοκληρώθηκε με επιτυχία!</h2>', '', 1, 2, '2013-08-08 16:25:02', 385, '', '2013-08-08 16:25:13', 385, 0, '0000-00-00 00:00:00', '2013-08-08 16:25:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 16, '', '', 2, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 45, 'Διαγραφή', '2013-08-08-17-03-30', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string = "SELECT * FROM user_id";\r\n		$result = $con->query($query_string);\r\n		\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{\r\n			\r\n			$query_string = "DELETE FROM users WHERE user_id=".intval($row[''user_id'']);\r\n			$con->query($query_string);\r\n			\r\n			$con->close();\r\n			\r\n			header(''Location: index.php/home'');\r\n		}\r\n		\r\n		\r\n		if (!$result->num_rows) header(''Location: index.php/error'');\r\n			\r\n			\r\n		\r\n\r\n?>', '', 1, 2, '2013-08-08 17:03:30', 385, '', '2013-08-08 17:04:04', 385, 0, '0000-00-00 00:00:00', '2013-08-08 17:03:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 15, '', '', 2, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `luacm_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(11, 46, 'Λίστα Χρηστών', '2013-08-09-07-45-43', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n\r\nfunction edit()\r\n{\r\n	document.getElementById(''system-message'').innerHTML  = ''<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η τροποποίηση των στοιχείων ήταν επιτυχής</p></div></div>'';\r\n}\r\n\r\nfunction deleted()\r\n{\r\n	document.getElementById(''system-message'').innerHTML  = ''<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η διαγραφή ήταν επιτυχής</p></div></div>'';\r\n}\r\n\r\n</script>\r\n\r\n<style type="text/css">\r\n	\r\n	table, th, td\r\n	{\r\n		border: 1px solid black;\r\n	}\r\n	\r\n	th\r\n	{\r\n		background-color:#06F;\r\n		color:#FFF;\r\n	}\r\n</style>\r\n<?php\r\n	if (isset($_GET[''edit''])) echo ''<script> edit(); </script>'';\r\n	if (isset($_GET[''delete''])) echo ''<script> deleted(); </script>'';\r\n?>\r\n\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<table>\r\n		<tr>\r\n			<th><label>Επεξεργασία</label></th>\r\n			<th><label>Ομάδα</label></th>\r\n			<th><label>Όνομα</label></th>\r\n			<th><label>Επίθετο</label></th>\r\n			<th><label>Όνομα Χρήστη</label></th>\r\n			<th><label>ΑΜΚΑ</label></th>\r\n			<th><label>Τμήμα</label></th>\r\n			<th><label>Σταθερό</label></th>\r\n			<th><label>Κινητό</label></th>\r\n		</tr>\r\n	\r\n	<?php\r\n		\r\n		\r\n\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "SELECT u.user_id, ut.team_id, ut.team_name, u.name_user, u.surname_user, u.username, u.amka, u.department, pn.telephone, pn.mobile";\r\n		$query_string .= " FROM `users` AS u";\r\n		$query_string .= " INNER JOIN `phone_numbers` AS pn ON u.user_id=pn.user_id";\r\n		$query_string .= " INNER JOIN `address` AS a ON u.user_id=a.user_id";\r\n		$query_string .= " INNER JOIN `user_team` AS ut ON u.user_team = ut.team_id";\r\n		$users = $con->query($query_string);\r\n		\r\n		\r\n		while ($row = $users->fetch_array())\r\n		{\r\n			\r\n			echo "<tr>";\r\n			echo ''<td><br><input type="button" onclick="window.location.href=\\''index.php/edit-user?user_id=''.$row[''user_id''].''\\''" value="Επεξεργασία" class="btn btn-primary"/>'';\r\n			echo ''<br><input type="button" onclick="window.location.href=\\''index.php/delete-user?user_id=''.$row[''user_id''].''\\''" value=" Διαγραφή " class="btn btn-danger"/><br></td>'';\r\n			echo "<td>".$row[''team_name'']."</td>";\r\n			echo "<td>".$row[''name_user'']."</td>";\r\n			echo "<td>".$row[''surname_user'']."</td>";\r\n			echo "<td>".$row[''username'']."</td>";\r\n			echo "<td>".$row[''amka'']."</td>";\r\n			echo "<td>".$row[''department'']."</td>";\r\n			echo "<td>".$row[''telephone'']."</td>";\r\n			echo "<td>".$row[''mobile'']."</td>";\r\n			echo "</tr>";\r\n			\r\n		}\r\n		\r\n		$con->close();\r\n		\r\n	?>\r\n\r\n	</table>\r\n	\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 1, 2, '2013-08-09 07:45:43', 385, '', '2013-08-10 12:09:58', 385, 0, '0000-00-00 00:00:00', '2013-08-09 07:45:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 31, 14, '', '', 2, 112, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 47, 'Δημιουργία Προγράμματος', '2013-08-09-07-46-08', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n\r\n<link rel="stylesheet" type="text/css" href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap.css" />\r\n<link href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap-combined.min.css" rel="stylesheet" />\r\n<link rel="stylesheet" type="text/css" media="screen" href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap-datetimepicker.min.css" />\r\n\r\n\r\n\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script language="javascript" type="text/javascript" src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/jquery-1.8.3.min.js"></script>\r\n\r\n<script type="text/javascript">\r\n	\r\n	\r\n	var i=1;\r\n	\r\n	function new_duty()\r\n	{\r\n		\r\n		i++;\r\n		\r\n		var html = "<table><tr>";\r\n		html += "		<td><h3>Καθήκον " + i + "</h3></td>";\r\n		html += "	</tr>";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Ημερομηνία</label></td>";\r\n		html += "		<td><input name=\\"date" + i + "\\" id=\\"id_date" + i + "\\" type=\\"text\\" size=\\"20\\" maxlength=\\"30\\"  autocomplete=\\"on\\" /></td>";\r\n		html += "	</tr>";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Τύπος Καθήκοντος</label></td>";\r\n		html += "		<td>";\r\n		html += "		<select id=\\"id_type" + i + "\\" name=\\"type" + i + "\\">";\r\n		html += "		";\r\n		html += "		</select>";\r\n		html += "		</td>";\r\n		html += "	</tr>";\r\n		html += "	";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Ώρα Έναρξης</label></td>";\r\n		html += "		<td>";\r\n		html += "		<select id=\\"id_start_time" + i + "\\" name=\\"start_time" + i + "\\">";\r\n		html += "			<option value=\\"0\\" selected=\\"selected\\">00:00:00</option>";\r\n		html += "			<option value=\\"1\\">01:00:00</option>";\r\n		html += "			<option value=\\"2\\">02:00:00</option>";\r\n		html += "			<option value=\\"3\\">03:00:00</option>";\r\n		html += "			<option value=\\"4\\">04:00:00</option>";\r\n		html += "			<option value=\\"5\\">05:00:00</option>";\r\n		html += "			<option value=\\"6\\">06:00:00</option>";\r\n		html += "			<option value=\\"7\\">07:00:00</option>";\r\n		html += "			<option value=\\"8\\">08:00:00</option>";\r\n		html += "			<option value=\\"9\\">09:00:00</option>";\r\n		html += "			<option value=\\"10\\">10:00:00</option>";\r\n		html += "			<option value=\\"11\\">11:00:00</option>";\r\n		html += "			<option value=\\"12\\">12:00:00</option>";\r\n		html += "			<option value=\\"13\\">13:00:00</option>";\r\n		html += "			<option value=\\"14\\">14:00:00</option>";\r\n		html += "			<option value=\\"15\\">15:00:00</option>";\r\n		html += "			<option value=\\"16\\">16:00:00</option>";\r\n		html += "			<option value=\\"17\\">17:00:00</option>";\r\n		html += "			<option value=\\"18\\">18:00:00</option>";\r\n		html += "			<option value=\\"19\\">19:00:00</option>";\r\n		html += "			<option value=\\"20\\">20:00:00</option>";\r\n		html += "			<option value=\\"21\\">21:00:00</option>";\r\n		html += "			<option value=\\"22\\">22:00:00</option>";\r\n		html += "			<option value=\\"23\\">23:00:00</option>";\r\n		html += "		</select>";\r\n		html += "		</td>";\r\n		html += "	</tr>";\r\n		html += "	";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Ώρα Λήξης</label></td>";\r\n		html += "		<td>";\r\n		html += "		<select id=\\"id_end_time" + i + "\\" name=\\"end_time" + i + "\\">";\r\n		html += "			<option value=\\"1\\" selected=\\"selected\\">01:00:00</option>";\r\n		html += "			<option value=\\"2\\">02:00:00</option>";\r\n		html += "			<option value=\\"3\\">03:00:00</option>";\r\n		html += "			<option value=\\"4\\">04:00:00</option>";\r\n		html += "			<option value=\\"5\\">05:00:00</option>";\r\n		html += "			<option value=\\"6\\">06:00:00</option>";\r\n		html += "			<option value=\\"7\\">07:00:00</option>";\r\n		html += "			<option value=\\"8\\">08:00:00</option>";\r\n		html += "			<option value=\\"9\\">09:00:00</option>";\r\n		html += "			<option value=\\"10\\">10:00:00</option>";\r\n		html += "			<option value=\\"11\\">11:00:00</option>";\r\n		html += "			<option value=\\"12\\">12:00:00</option>";\r\n		html += "			<option value=\\"13\\">13:00:00</option>";\r\n		html += "			<option value=\\"14\\">14:00:00</option>";\r\n		html += "			<option value=\\"15\\">15:00:00</option>";\r\n		html += "			<option value=\\"16\\">16:00:00</option>";\r\n		html += "			<option value=\\"17\\">17:00:00</option>";\r\n		html += "			<option value=\\"18\\">18:00:00</option>";\r\n		html += "			<option value=\\"19\\">19:00:00</option>";\r\n		html += "			<option value=\\"20\\">20:00:00</option>";\r\n		html += "			<option value=\\"21\\">21:00:00</option>";\r\n		html += "			<option value=\\"22\\">22:00:00</option>";\r\n		html += "			<option value=\\"23\\">23:00:00</option>";\r\n		html += "			<option value=\\"0\\">00:00:00</option>";\r\n		html += "		</select>";\r\n		html += "		</td>";\r\n		html += "	</tr>";\r\n		html += "	";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Νοσοκομειακή Μονάδα</label></td>";\r\n		html += "		<td>";\r\n		html += "		<select id=\\"id_location" + i + "\\" name=\\"location" + i + "\\">";\r\n		html += "		";\r\n		html += "		</select>";\r\n		html += "		</td>";\r\n		html += "	</tr>";\r\n		html += "	";\r\n		html += "	<tr>";\r\n		html += "		<td><label>Χρήστης</label></td>";\r\n		html += "		<td>";\r\n		html += "		<select id=\\"id_user" + i + "\\" name=\\"user" + i + "\\">";\r\n		html += "		";\r\n		html += "		</select>";\r\n		html += "		</td>";\r\n		html += "	</tr></table>";\r\n			\r\n		document.getElementById(''duty''+i).innerHTML = html;\r\n		select_type_loc_user();\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function select_type_loc_user()\r\n	{\r\n		\r\n		var html = "<?php\r\n						\r\n						$con = connect_db(''central_db'');\r\n						\r\n						$query_string = "SELECT duty_name FROM duties ORDER BY duty_name";\r\n						$result = $con->query($query_string);\r\n						\r\n						$i=1;\r\n						while ($row = $result->fetch_array())\r\n						{\r\n							if($i==1) echo ''<option value=\\"''.$row[''duty_name''].''\\" selected=\\"selected\\">''.$row[''duty_name''].''</option>'';\r\n							else echo ''<option value=\\"''.$row[''duty_name''].''\\">''.$row[''duty_name''].''</option>'';\r\n							$i++;\r\n						}\r\n						\r\n					?>";\r\n		\r\n		document.getElementById(''id_type''+i).innerHTML = html;\r\n		\r\n		\r\n		html = "<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					$query_string = "SELECT location_name FROM locations ORDER BY location_name";\r\n					$result = $con->query($query_string);\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value=\\"''.$row[''location_name''].''\\" selected=\\"selected\\">''.$row[''location_name''].''</option>'';\r\n						else echo ''<option value=\\"''.$row[''location_name''].''\\">''.$row[''location_name''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>";\r\n		\r\n		document.getElementById(''id_location''+i).innerHTML = html;\r\n		\r\n		html = "<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					$query_string = "SELECT user_id, surname_user, name_user FROM users ORDER BY surname_user";\r\n					$result = $con->query($query_string);\r\n					\r\n					$i=1;\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						if($i==1) echo ''<option value=\\"''.$row[''user_id''].''\\" selected=\\"selected\\">''.$row[''surname_user''].'' ''.$row[''name_user''].''</option>'';\r\n						else echo ''<option value=\\"''.$row[''user_id''].''\\">''.$row[''surname_user''].'' ''.$row[''name_user''].''</option>'';\r\n						$i++;\r\n					}\r\n					\r\n				?>";\r\n		\r\n		document.getElementById(''id_user''+i).innerHTML = html;\r\n		\r\n	}\r\n	\r\n	\r\n	\r\n	function gt(str1, str2)\r\n	{\r\n		if(parseInt(str1.value) > parseInt(str2.value)){\r\n			alert("Η ώρα λήξης είναι πριν την ώρα έναρξης");\r\n			str2.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	function validate_progname(progname)\r\n	{\r\n		if(progname.value.length<1){\r\n			alert(''Δεν έχετε ορίσει όνομα προγράμματος'');\r\n			progname.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	function validate_date(date)\r\n	{\r\n		if(date.value.length<1){\r\n			alert(''Δεν έχετε ορίσει ημερομηνία'');\r\n			date.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n\r\n\r\n	function validate(progname, date, start_time, end_time)\r\n	{\r\n		if( !(validate_progname(progname) && validate_date(date) && gt(start_time, end_time) )) {\r\n			return false;\r\n		}\r\n		return true;	\r\n	}\r\n\r\n	\r\n	\r\n	function created()\r\n	{\r\n		document.getElementById(''system-message'').innerHTML  = ''<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Το πρόγραμμα δημιουργήθηκε επιτυχώς</p></div></div>'';\r\n	}\r\n\r\n\r\n	\r\n\r\n\r\n</script>\r\n\r\n<?php\r\n	if (isset($_GET[''created''])) echo ''<script> created(); </script>'';\r\n?>\r\n\r\n</head>\r\n\r\n\r\n<body onload="select_type_loc_user()">\r\n	\r\n				<!--<div id="datetimepicker1" class="input-append date" style="width:auto">\r\n                  <input type="text" id="delete_date_meteo"></input>\r\n                  <span class="add-on">\r\n                    <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>\r\n                  </span>\r\n                </div>                \r\n				<script type="text/javascript"\r\n                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/jquery.min.js">\r\n                </script> \r\n                <script type="text/javascript"\r\n                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/bootstrap.min.js">\r\n                </script>\r\n                <script type="text/javascript"\r\n                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/bootstrap-datetimepicker.min.js">\r\n                </script>\r\n                <script type="text/javascript">\r\n                  $(''#datetimepicker1'').datetimepicker({\r\n                    format: ''yyyy-MM-dd'',\r\n                    language: ''en-US'',\r\n                    pickTime: false\r\n                  });\r\n                </script>-->\r\n						\r\n	<form action="index.php/create-program" name="register" method="post" onSubmit="javascript:return validate(progname, date1, start_time1, end_time1);">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><label>Όνομα Προγράμματος</label></td>\r\n				<td><input name="progname" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>\r\n			</tr>\r\n			\r\n			<!-- DUTY 1 -->\r\n            \r\n			<tr>\r\n				<td><h3>Καθήκον 1</h3></td>\r\n			</tr>\r\n			<tr>\r\n				<td><label>Ημερομηνία</label></td>\r\n				<td><input name="date1" id="uname" type="text" size="20" maxlength="30"  autocomplete="on" /></td>\r\n                \r\n			</tr>\r\n			<tr>\r\n				<td><label>Τύπος Καθήκοντος</label></td>          		\r\n				<td>\r\n				<select id="id_type1" name="type1">\r\n				\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			\r\n			<tr>\r\n				<td><label>Ώρα Έναρξης</label></td>          		\r\n				<td>\r\n				<select name="start_time1">\r\n					<option value="0" selected="selected">00:00:00</option>\r\n					<option value="1">01:00:00</option>\r\n					<option value="2">02:00:00</option>\r\n					<option value="3">03:00:00</option>\r\n					<option value="4">04:00:00</option>\r\n					<option value="5">05:00:00</option>\r\n					<option value="6">06:00:00</option>\r\n					<option value="7">07:00:00</option>\r\n					<option value="8">08:00:00</option>\r\n					<option value="9">09:00:00</option>\r\n					<option value="10">10:00:00</option>\r\n					<option value="11">11:00:00</option>\r\n					<option value="12">12:00:00</option>\r\n					<option value="13">13:00:00</option>\r\n					<option value="14">14:00:00</option>\r\n					<option value="15">15:00:00</option>\r\n					<option value="16">16:00:00</option>\r\n					<option value="17">17:00:00</option>\r\n					<option value="18">18:00:00</option>\r\n					<option value="19">19:00:00</option>\r\n					<option value="20">20:00:00</option>\r\n					<option value="21">21:00:00</option>\r\n					<option value="22">22:00:00</option>\r\n					<option value="23">23:00:00</option>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			\r\n			<tr>\r\n				<td><label>Ώρα Λήξης</label></td>          		\r\n				<td>\r\n				<select name="end_time1">\r\n					<option value="1" selected="selected">01:00:00</option>\r\n					<option value="2">02:00:00</option>\r\n					<option value="3">03:00:00</option>\r\n					<option value="4">04:00:00</option>\r\n					<option value="5">05:00:00</option>\r\n					<option value="6">06:00:00</option>\r\n					<option value="7">07:00:00</option>\r\n					<option value="8">08:00:00</option>\r\n					<option value="9">09:00:00</option>\r\n					<option value="10">10:00:00</option>\r\n					<option value="11">11:00:00</option>\r\n					<option value="12">12:00:00</option>\r\n					<option value="13">13:00:00</option>\r\n					<option value="14">14:00:00</option>\r\n					<option value="15">15:00:00</option>\r\n					<option value="16">16:00:00</option>\r\n					<option value="17">17:00:00</option>\r\n					<option value="18">18:00:00</option>\r\n					<option value="19">19:00:00</option>\r\n					<option value="20">20:00:00</option>\r\n					<option value="21">21:00:00</option>\r\n					<option value="22">22:00:00</option>\r\n					<option value="23">23:00:00</option>\r\n					<option value="0">00:00:00</option>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			\r\n			<tr>\r\n				<td><label>Νοσοκομειακή Μονάδα</label></td>          		\r\n				<td>\r\n				<select id="id_location1" name="location1">\r\n				\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			\r\n			<tr>\r\n				<td><label>Χρήστης</label></td>          		\r\n				<td>\r\n				<select id="id_user1" name="user1">\r\n				\r\n				</select>\r\n				</td>\r\n			</tr>\r\n            \r\n		</table>\r\n			<!-- END OF DUTY 1 -->\r\n			\r\n			\r\n			<div id="duty2"></div>\r\n			<div id="duty3"></div>\r\n			<div id="duty4"></div>\r\n			<div id="duty5"></div>\r\n			<div id="duty6"></div>\r\n			<div id="duty7"></div>\r\n			<div id="duty8"></div>\r\n			<div id="duty9"></div>\r\n			<div id="duty10"></div>\r\n			\r\n		\r\n        <table>	\r\n			<tr>\r\n				<td><input type="submit" value="Δημιουργία Προγράμματος" style="font-size:1em" class="btn btn-success"/></td>\r\n				<td></td>\r\n				<td><input type="button" value="Προσθήκη Νέου Καθήκοντος" onclick="new_duty();" style="font-size:1em" class="btn"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n	\r\n</body>\r\n</html>\r\n\r\n\r\n<?php\r\n	\r\n	\r\n		if (isset($_POST[''progname'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n				\r\n			$i=1;\r\n			while( isset($_POST[''date''.$i]) )\r\n			{\r\n				$duty_type = $_POST[''type''.$i];\r\n				$location = $_POST[''location''.$i];\r\n				$user_id = $_POST[''user''.$i];\r\n				\r\n				\r\n				\r\n				$duty_ok = false;\r\n				$location_ok = false;\r\n				\r\n				$query_string = "SELECT * FROM declared_duties WHERE user_id=".$user_id." AND duty_type=''".$duty_type."''";\r\n				$result = $con->query($query_string);\r\n				\r\n				while ($row = $result->fetch_array())\r\n				{\r\n					$duty_ok = true;\r\n				}\r\n				\r\n				$query_string = "SELECT * FROM declared_locations WHERE user_id=".$user_id." AND location=''".$location."''";\r\n				$result = $con->query($query_string);\r\n				\r\n				while ($row = $result->fetch_array())\r\n				{\r\n					$location_ok = true;\r\n				}\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				if ($duty_ok && $location_ok)\r\n				{\r\n					\r\n					\r\n					$progname = $_POST[''progname''];\r\n					$date = $_POST[''date''.$i];\r\n					$start_time = $_POST[''start_time''.$i];\r\n					$end_time = $_POST[''end_time''.$i];\r\n					\r\n					\r\n					$query_string = "INSERT INTO program VALUES (NULL, ''".$date."'', ''".$duty_type."'', ''".$start_time.":00:00'', ''".$end_time.":00:00'', ''".$location."'', ".$user_id.", ''".$progname."'')";\r\n					$result = $con->query($query_string);\r\n					\r\n					// ******************** NOTIFY *********************** //\r\n			\r\n					$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$user_id.", LAST_INSERT_ID(), 1, ''New program on ".$date."'')";\r\n					$con->query($query_string);\r\n					\r\n					\r\n					header(''Location: ?created=1'');\r\n				}\r\n				else\r\n				{\r\n					header(''Location: index.php/error'');\r\n				}\r\n				\r\n				\r\n				\r\n				\r\n				\r\n				$i++;\r\n			\r\n			}// while\r\n			\r\n		}// if\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-09 07:46:08', 385, '', '2013-09-03 19:59:05', 385, 0, '0000-00-00 00:00:00', '2013-08-09 07:46:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 68, 13, '', '', 2, 185, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 48, 'Λίστα Προγραμμάτων', '2013-08-09-07-46-48', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/list-programs" name="register" method="post" onSubmit="javascript:return validate_register(thesi);">\r\n		<table border="0" >\r\n			\r\n			<tr>\r\n				<td><label>Επιλέξτε Πρόγραμμα:</label></td>\r\n				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->\r\n				<select name="progname">\r\n                	<!--<option value="0" selected="selected">---</option>-->\r\n				<?php\r\n					\r\n					$con = connect_db(''central_db'');\r\n					\r\n					$query_string = "SELECT DISTINCT program_name FROM program ORDER BY program_name";\r\n					$result = $con->query($query_string);\r\n					\r\n					$con->close();\r\n					\r\n					while ($row = $result->fetch_array())\r\n					{\r\n						echo ''<option value="''.$row[''program_name''].''">''.$row[''program_name''].''</option>'';\r\n					}\r\n					\r\n				?>\r\n				</select>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td><input type="submit" value="Προβολή Καθηκόντων" style="font-size:1em" class="btn btn-primary"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n	if (isset($_POST[''progname'']))\r\n	{\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "TRUNCATE TABLE progname";\r\n		$con->query($query_string);\r\n		\r\n		$query_string = "INSERT INTO progname VALUES (''".$_POST[''progname'']."'')";\r\n		$result = $con->query($query_string);\r\n		\r\n		header(''Location: index.php/list-duties'');\r\n		\r\n	}\r\n\r\n?>', '', 1, 2, '2013-08-09 07:46:48', 385, '', '2013-08-11 12:41:22', 385, 0, '0000-00-00 00:00:00', '2013-08-09 07:46:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 12, '', '', 2, 143, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 49, 'Αιτήματα Χρηστών', '2013-08-09-07-47-23', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	function confirm_delete(id)\r\n	{\r\n		if (confirm(''Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο αίτημα;''))\r\n		{\r\n			window.location.href=''index.php/reject-request?duty_id='' + id;\r\n		}\r\n	}\r\n	\r\n\r\n</script>\r\n\r\n<style type="text/css">\r\n	\r\n	.list table, th, td\r\n	{\r\n		border: 1px solid black;\r\n	}\r\n	\r\n	.list th\r\n	{\r\n		background-color:#06F;\r\n		color:#FFF;\r\n	}\r\n	\r\n</style>\r\n\r\n</head>\r\n\r\n\r\n<body>\r\n\r\n	<table class="list">\r\n		<tr>\r\n			<th><label>Όνομα</label></th>\r\n			<th><label>Επίθετο</label></th>\r\n			<th><label>Σταθερό</label></th>\r\n			<th><label>Κινητό</label></th>\r\n			<th><label>Τμήμα</label></th>\r\n			<th><label>Νοσοκομειακή Μονάδα</label></th>\r\n			<th><label>Τύπος</label></th>\r\n			<th><label>Ημερομηνία</label></th>\r\n			<th><label>Ώρα Έναρξης</label></th>\r\n			<th><label>Ώρα Λήξης</label></th>\r\n			<th><label>Αίτηση Αλλαγής Ημέρας</label></th>\r\n			<th><label>Αίτηση Αλλαγής Ώρας</label></th>\r\n			<th><label>Ενέργεια</label></th>\r\n		</tr>\r\n	\r\n	<?php\r\n		\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		\r\n		$query_string   = "SELECT u.name_user, u.surname_user, pn.telephone, pn.mobile, u.department, p.location, p.duty_type, p.date, p.duty_start_time, p.duty_end_time, cl.request_date, cl.request_start_time, cl.id FROM change_list AS cl";\r\n		$query_string  .= " INNER JOIN users AS u ON u.user_id=cl.user_id";\r\n		$query_string  .= " INNER JOIN phone_numbers AS pn ON pn.user_id=cl.user_id";\r\n		$query_string  .= " INNER JOIN program AS p ON p.program_id=cl.id";\r\n		$result = $con->query($query_string);\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{\r\n			\r\n			$request_start_time = ($row[''request_start_time'']==NULL)?''Οποιαδήποτε'':$row[''request_start_time''];\r\n			\r\n			echo "<tr>";\r\n			echo "	<td>".$row[''name_user'']."</td>";\r\n			echo "	<td>".$row[''surname_user'']."</td>";\r\n			echo "	<td>".$row[''telephone'']."</td>";\r\n			echo "	<td>".$row[''mobile'']."</td>";\r\n			echo "	<td>".$row[''department'']."</td>";\r\n			echo "	<td>".$row[''location'']."</td>";\r\n			echo "	<td>".$row[''duty_type'']."</td>";\r\n			echo "	<td>".$row[''date'']."</td>";\r\n			echo "	<td>".$row[''duty_start_time'']."</td>";\r\n			echo "	<td>".$row[''duty_end_time'']."</td>";\r\n			echo "	<td><b>".$row[''request_date'']."</b></td>";\r\n			echo "	<td><b>".$request_start_time."</b></td>";\r\n			echo ''	<td><input type="button" onclick="window.location.href=\\''index.php/accept-request?duty_id=''.$row[''id''].''\\''" value="Αποδοχή" class="btn btn-success"/><br>'';\r\n			echo ''		<input type="button" onclick="confirm_delete(''.$row[''id''].'');" value="Απόρριψη" class="btn btn-danger"/></td>'';\r\n			echo "</tr>";\r\n			\r\n		}\r\n		\r\n		\r\n		$con->close();\r\n		\r\n	?>\r\n    </table>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-09 07:47:23', 385, '', '2013-08-14 08:16:41', 385, 385, '2013-08-28 18:26:09', '2013-08-09 07:47:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 11, '', '', 2, 119, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `luacm_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(15, 50, 'Επεξεργασία Χρήστη', '2013-08-09-09-50-35', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	\r\n	\r\n	function validate_username(username)\r\n	{\r\n		if((username.value.length<6 || username.value.length>25)){\r\n			alert(''Το Όνομα Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων'');\r\n			username.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_username_space(username)\r\n	{\r\n		var reg = /^[A-Za-zΑ-Ωα-ω]/;\r\n		if(reg.test(username.value) == false){\r\n			alert(''Το ονομά σας θα πρέπει να αρχίζει με γράμμα'');\r\n			username.focus();\r\n		}\r\n		else return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_password(password)\r\n	{\r\n		if(password.value.length<6 || password.value.length>25){\r\n			alert(''Ο Κωδικός Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων'');\r\n			password.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_email(email) {\r\n		var reg = /^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$/;\r\n		if(reg.test(email.value) == false) {\r\n			alert(''Μη έγκυρη Διεύθυνση Ηλεκτρονικού Ταχυδρομείου'');\r\n			email.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function same(str1, str2)\r\n	{\r\n		if(str1.value != str2.value){\r\n			alert("Οι κωδικοί που εισάγατε δεν είναι όμοιοι");\r\n			str2.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	function validate_nameOrSurname(nameOrSurname)\r\n	{\r\n		if(nameOrSurname.value.length<1){\r\n			alert(''Δεν έχετε ορίσει όνομα ή επώνυμο'');\r\n			nameOrSurname.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_amka(amka)\r\n	{\r\n		if(amka.value.length!=11){\r\n			alert(''Ο ΑΜΚΑ θα πρέπει να είναι ακριβώς 11 αριθμοί'');\r\n			amka.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	\r\n	function isNumber(n) {\r\n	  return !isNaN(parseFloat(n)) && isFinite(n);\r\n	}\r\n\r\n\r\n	\r\n	function validate_stathero(stathero)\r\n	{\r\n		if(stathero.value.length != 10 || !isNumber(stathero.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			stathero.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_kinito(kinito)\r\n	{\r\n		if(kinito.value.length != 10 || !isNumber(kinito.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			kinito.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_fax(fax)\r\n	{\r\n		if(fax.value.length != 10 || !isNumber(fax.value)){\r\n			alert(''Παρακαλώ εισάγετε 10 αριθμούς'');\r\n			fax.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_nomos(nomos)\r\n	{\r\n		if(nomos.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			nomos.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_dimos(dimos)\r\n	{\r\n		if(dimos.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			dimos.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_city(city)\r\n	{\r\n		if(city.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			city.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_address(address)\r\n	{\r\n		if(address.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			address.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_tk(tk)\r\n	{\r\n		if(tk.value.length != 5 || !isNumber(tk.value)){\r\n			alert(''Ο ΤΚ πρέπει να έχει ακριβώς 5 αριθμούς'');\r\n			tk.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_perioxi(perioxi)\r\n	{\r\n		if(perioxi.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			perioxi.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n\r\n\r\n	\r\n	function validate_xwra(xwra)\r\n	{\r\n		if(xwra.value.length < 1){\r\n			alert(''Δεν έχετε ορίσει κάποιο πεδίο'');\r\n			xwra.focus();\r\n			return false;\r\n		}\r\n		return true;\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	function validate_all(username, password1, password2, email, name_user, surname_user, amka, stathero, kinito, fax, nomos, dimos, city, address, tk, perioxi, xwra)\r\n	{\r\n		if(!( validate_username(username) && validate_username_space(username) && validate_password(password1) && validate_password(password2) && same(password1, password2) && validate_email(email) && validate_nameOrSurname(name_user) && validate_nameOrSurname(surname_user) && validate_amka(amka) && validate_stathero(stathero) && validate_kinito(kinito) && validate_fax(fax) && validate_nomos(nomos) && validate_dimos(dimos) && validate_city(city) && validate_address(address) && validate_tk(tk) && validate_perioxi(perioxi) && validate_xwra(xwra) )) {\r\n			return false;\r\n		}\r\n		return true;	\r\n	}\r\n	\r\n	\r\n	\r\n	\r\n	\r\n</script>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n						\r\n	<form action="index.php/edit-user?user_id=<?php echo $_GET[''user_id''];?>" name="register" method="post" onSubmit="javascript:return validate_all(username, password1, password2, email, name_user, surname_user, amka, stathero, kinito, fax, nomos, dimos, city, address, tk, perioxi, xwra);">\r\n		<table border="0" >\r\n		\r\n			<tr>\r\n				<td><h3>Γενικές Πληροφορίες</h3></td>\r\n			</tr>\r\n		\r\n		<?php\r\n			\r\n			$team_id = 0;\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string = "SELECT * FROM users WHERE user_id=".$_GET[''user_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				\r\n				$team_id = intval($row[''user_team'']);\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Όνομα</label></td>'';\r\n				echo    ''<td><input name="name_user" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''name_user''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Επώνυμο</label></td>'';\r\n				echo    ''<td><input name="surname_user" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''surname_user''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Όνομα Χρήστη</label></td>'';\r\n				echo    ''<td><input name="username" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''username''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Κωδικός</label></td>'';\r\n				echo    ''<td><input name="password1" type="password" size="20" maxlength="30" autocomplete="off" value="''.$row[''password''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Κωδικός (πάλι)</label></td>'';\r\n				echo    ''<td><input name="password2" type="password" size="20" maxlength="30" autocomplete="off" value="''.$row[''password''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>E-mail</label></td>'';\r\n				echo    ''<td><input name="email" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''email''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>ΑΜΚΑ</label></td>'';\r\n				echo    ''<td><input name="amka" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''amka''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Τμήμα</label></td>'';\r\n				echo    ''<td><select name="department">'';\r\n				\r\n				$query_string = "SELECT department_name FROM departments ORDER BY department_name";\r\n				\r\n				$dept = $con->query($query_string);\r\n				\r\n				while ($dep = $dept->fetch_array())\r\n				{\r\n					if($row[''department'']==$dep[''department_name'']) echo ''<option value="''.$dep[''department_name''].''" selected="selected">''.$dep[''department_name''].''</option>'';\r\n					else echo ''<option value="''.$dep[''department_name''].''">''.$dep[''department_name''].''</option>'';\r\n				}\r\n				\r\n				echo 	''</select></td>'';\r\n				echo ''</tr>'';\r\n			}\r\n					\r\n			\r\n		\r\n			echo ''<tr>'';\r\n			echo ''   <td></td>'';\r\n			echo ''</tr>'';\r\n			\r\n			echo ''<tr>'';\r\n			echo ''   <td><h3>Πληροφορίες Τηλεφώνου</h3></td>'';\r\n			echo ''</tr>'';\r\n		\r\n		\r\n			\r\n			\r\n			$query_string = "SELECT * FROM phone_numbers WHERE user_id=".$_GET[''user_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Σταθερό</label></td>'';\r\n				echo    ''<td><input name="stathero" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''telephone''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Κινητό</label></td>'';\r\n				echo    ''<td><input name="kinito" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''mobile''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Φαξ</label></td>'';\r\n				echo    ''<td><input name="fax" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''fax''].''"/></td>'';\r\n				echo ''</tr>'';\r\n			}\r\n					\r\n			\r\n		\r\n			echo ''<tr>'';\r\n			echo ''   <td></td>'';\r\n			echo ''</tr>'';\r\n			\r\n			echo ''<tr>'';\r\n			echo ''   <td><h3>Πληροφορίες Κατοικίας</h3></td>'';\r\n			echo ''</tr>'';\r\n		\r\n		\r\n			\r\n			\r\n			$query_string = "SELECT * FROM address WHERE user_id=".$_GET[''user_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			while ($row = $result->fetch_array())\r\n			{\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Νομός</label></td>'';\r\n				echo    ''<td><input name="nomos" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''nomos''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Δήμος</label></td>'';\r\n				echo    ''<td><input name="dimos" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''dimos''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Πόλη</label></td>'';\r\n				echo    ''<td><input name="city" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''city''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Διεύθυνση</label></td>'';\r\n				echo    ''<td><input name="address" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''address''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>ΤΚ</label></td>'';\r\n				echo    ''<td><input name="tk" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''tk''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Περιοχή</label></td>'';\r\n				echo    ''<td><input name="perioxi" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''perioxi''].''"/></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				echo ''<tr>'';\r\n				echo    ''<td><label>Χώρα</label></td>'';\r\n				echo    ''<td><input name="xwra" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''xwra''].''"/></td>'';\r\n				echo ''</tr>'';\r\n			}\r\n					\r\n			\r\n		\r\n			echo ''<tr>'';\r\n			echo ''   <td></td>'';\r\n			echo ''</tr>'';\r\n					\r\n			\r\n			\r\n			if ($team_id == 1)\r\n			{\r\n				\r\n				echo ''<tr>'';\r\n				echo ''   <td><h3>Πληροφορίες Ιατρικού Προσωπικού</h3></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				\r\n				$query_string = "SELECT * FROM doctor_users WHERE user_id=".$_GET[''user_id''];\r\n				$result = $con->query($query_string);\r\n				\r\n				\r\n				while ($row = $result->fetch_array())\r\n				{\r\n					\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Θέση</label></td>'';\r\n					echo    ''<td><input name="thesi" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''thesi''].''"/></td>'';\r\n					echo ''</tr>'';\r\n					\r\n				\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Βαθμίδα</label></td>'';\r\n					echo    ''<td><select name="bathmida">'';\r\n					\r\n					$query_string = "SELECT name FROM bathmides WHERE team_id=1";\r\n					\r\n					$result = $con->query($query_string);\r\n					\r\n					while ($bat = $result->fetch_array())\r\n					{\r\n						if($row[''bathmida''] == $bat[''name'']) echo ''<option value="''.$bat[''name''].''" selected="selected">''.$bat[''name''].''</option>'';\r\n						else echo ''<option value="''.$bat[''name''].''">''.$bat[''name''].''</option>'';\r\n					}\r\n					\r\n					echo 	''</select></td>'';\r\n					echo ''</tr>'';\r\n					\r\n					\r\n				\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Ειδικότητα</label></td>'';\r\n					echo    ''<td><select name="eidikotita">'';\r\n					\r\n					$query_string = "SELECT name FROM eidikotites WHERE team_id=1";\r\n					\r\n					$result = $con->query($query_string);\r\n					\r\n					while ($eid = $result->fetch_array())\r\n					{\r\n						if($row[''eidikotita''] == $eid[''name'']) echo ''<option value="''.$eid[''name''].''" selected="selected">''.$eid[''name''].''</option>'';\r\n						else echo ''<option value="''.$eid[''name''].''">''.$eid[''name''].''</option>'';\r\n					}\r\n					\r\n					echo 	''</select></td>'';\r\n					echo ''</tr>'';\r\n					\r\n				}// while\r\n				\r\n				\r\n			}\r\n			else if ($team_id == 2)\r\n			{\r\n				\r\n				echo ''<tr>'';\r\n				echo ''   <td><h3>Πληροφορίες Νοσηλευτικού Προσωπικού</h3></td>'';\r\n				echo ''</tr>'';\r\n				\r\n				\r\n				$query_string = "SELECT * FROM nurse_user WHERE user_id=".$_GET[''user_id''];\r\n				$result = $con->query($query_string);\r\n				\r\n				\r\n				while ($row = $result->fetch_array())\r\n				{\r\n					\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Θέση</label></td>'';\r\n					echo    ''<td><input name="thesi" type="text" size="20" maxlength="30" autocomplete="off" value="''.$row[''thesi''].''"/></td>'';\r\n					echo ''</tr>'';\r\n					\r\n				\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Βαθμίδα</label></td>'';\r\n					echo    ''<td><select name="bathmida">'';\r\n					\r\n					$query_string = "SELECT name FROM bathmides WHERE team_id=2";\r\n					\r\n					$result = $con->query($query_string);\r\n					\r\n					while ($bat = $result->fetch_array())\r\n					{\r\n						if($row[''bathmida''] == $bat[''name'']) echo ''<option value="''.$bat[''name''].''" selected="selected">''.$bat[''name''].''</option>'';\r\n						else echo ''<option value="''.$bat[''name''].''">''.$bat[''name''].''</option>'';\r\n					}\r\n					\r\n					echo 	''</select></td>'';\r\n					echo ''</tr>'';\r\n					\r\n					\r\n				\r\n					echo ''<tr>'';\r\n					echo    ''<td><label>Ειδικότητα</label></td>'';\r\n					echo    ''<td><select name="eidikotita">'';\r\n					\r\n					$query_string = "SELECT name FROM eidikotites WHERE team_id=2";\r\n					\r\n					$result = $con->query($query_string);\r\n					\r\n					while ($eid = $result->fetch_array())\r\n					{\r\n						if($row[''eidikotita''] == $eid[''name'']) echo ''<option value="''.$eid[''name''].''" selected="selected">''.$eid[''name''].''</option>'';\r\n						else echo ''<option value="''.$eid[''name''].''">''.$eid[''name''].''</option>'';\r\n					}\r\n					\r\n					echo 	''</select></td>'';\r\n					echo ''</tr>'';\r\n					\r\n				}// while\r\n				\r\n				\r\n			}\r\n			\r\n			\r\n		?>\r\n			<tr>\r\n				<td><input type="submit" value="Ενημέρωση" style="font-size:1em" class="btn btn-primary"/></td>\r\n				<td></td>\r\n				<td><input type="button" value="Ακύρωση" onclick="window.location.href=''index.php/list-users''" style="font-size:1em" class="btn"/></td>\r\n			</tr>\r\n			\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n<?php\r\n	\r\n		\r\n		if (isset($_POST[''username'']))\r\n		{\r\n			\r\n			$con = connect_db(''central_db'');\r\n			\r\n			\r\n			\r\n			$name_user = $_POST[''name_user''];\r\n			$surname_user = $_POST[''surname_user''];\r\n			$username = $_POST[''username''];\r\n			$password = $_POST[''password1''];\r\n			$email = $_POST[''email''];\r\n			$amka = $_POST[''amka''];\r\n			$department = $_POST[''department''];\r\n			\r\n			$query_string  = "UPDATE users SET name_user=''".$name_user."'', surname_user=''".$surname_user."'', username=''".$username."'', password=''".$password."'', email=''".$email."'', amka=''".$amka."'', department=''".$department."''";\r\n			$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n			$con->query($query_string);			\r\n			\r\n			\r\n			$stathero = $_POST[''stathero''];\r\n			$kinito = $_POST[''kinito''];\r\n			$fax = $_POST[''fax''];\r\n			\r\n			$query_string  = "UPDATE phone_numbers SET telephone=''".$stathero."'', mobile=''".$kinito."'', fax=''".$fax."''";\r\n			$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			\r\n			$nomos = $_POST[''nomos''];\r\n			$dimos = $_POST[''dimos''];\r\n			$city = $_POST[''city''];\r\n			$address = $_POST[''address''];\r\n			$tk = intval($_POST[''tk'']);\r\n			$perioxi = $_POST[''perioxi''];\r\n			$xwra = $_POST[''xwra''];\r\n			\r\n			$query_string  = "UPDATE address SET nomos=''".$nomos."'', dimos=''".$dimos."'', city=''".$city."'', address=''".$address."'', tk=".$tk.", perioxi=''".$perioxi."'', xwra=''".$xwra."''";\r\n			$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			if ($team_id == 1)\r\n			{\r\n				\r\n				$thesi = $_POST[''thesi''];\r\n				$bathmida = $_POST[''bathmida''];\r\n				$eidikotita = $_POST[''eidikotita''];\r\n				\r\n				$query_string = "UPDATE doctor_users SET thesi=''".$thesi."'', bathmida=''".$bathmida."'', eidikotita=''".$eidikotita."''";\r\n				$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n				\r\n				$con->query($query_string);\r\n				\r\n			}\r\n			else if ($team_id == 2)\r\n			{\r\n				\r\n				$thesi = $_POST[''thesi''];\r\n				$bathmida = $_POST[''bathmida''];\r\n				$eidikotita = $_POST[''eidikotita''];\r\n				\r\n				$query_string = "UPDATE nurse_user SET thesi=''".$thesi."'', bathmida=''".$bathmida."'', eidikotita=''".$eidikotita."''";\r\n				$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n				\r\n				$con->query($query_string);\r\n				\r\n			}\r\n			\r\n			header(''Location: index.php/list-users?edit=1'');\r\n			\r\n			\r\n		}\r\n				\r\n\r\n\r\n?>', '', 1, 2, '2013-08-09 09:50:35', 385, '', '2013-08-09 18:34:17', 385, 0, '0000-00-00 00:00:00', '2013-08-09 09:50:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 21, 10, '', '', 2, 98, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 51, 'Διαγραφή Χρήστη', '2013-08-09-09-51-12', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<form action="index.php/do-delete-user?user_id=<?php echo $_GET[''user_id''];?>" name="register" method="post">\r\n		<table border="0" >\r\n			<tr>\r\n				<td><input type="submit" value="Διαγραφή" style="font-size:1em" class="btn btn-danger"/></td>\r\n				<td></td>\r\n				<td><input type="button" value="Ακύρωση" onclick="window.location.href=''index.php/list-users''" style="font-size:1em" class="btn"/></td>\r\n			</tr>\r\n		</table>\r\n	</form>\r\n\r\n</body>\r\n</html>', '', 1, 2, '2013-08-09 09:51:12', 385, '', '2013-08-10 12:12:22', 385, 0, '0000-00-00 00:00:00', '2013-08-09 09:51:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 9, '', '', 2, 18, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 52, 'Οριστική Διαγραφή Χρήστη', '2013-08-09-18-58-01', '<?php\r\n		\r\n		\r\n		\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "DELETE FROM users";\r\n		$query_string .= " WHERE user_id=".$_GET[''user_id''];\r\n		$con->query($query_string);\r\n		\r\n		header(''Location: index.php/list-users?delete=1'');\r\n\r\n?>', '', 1, 2, '2013-08-09 18:58:01', 385, '', '2013-08-11 12:14:06', 385, 0, '0000-00-00 00:00:00', '2013-08-09 18:58:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 8, '', '', 2, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 53, 'Λεπτομέρειες Προγράμματος (Λίστα Καθηκόντων)', '2013-08-11-12-12-56', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n\r\n\r\n	function deleted()\r\n	{\r\n		document.getElementById(''system-message'').innerHTML  = ''<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η διαγραφή ήταν επιτυχής</p></div></div>'';\r\n	}\r\n	\r\n	function confirm_delete(id)\r\n	{\r\n		if (confirm(''Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο καθήκον;''))\r\n		{\r\n			window.location.href=''index.php/delete-duty?duty_id='' + id;\r\n		}\r\n	}\r\n	\r\n	function confirm_delete_prog()\r\n	{\r\n		if (confirm(''Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο πρόγραμμα;''))\r\n		{\r\n			window.location.href=''index.php/delete-program'';\r\n		}\r\n	}\r\n	\r\n	\r\n\r\n</script>\r\n\r\n<style type="text/css">\r\n	\r\n	.list table, th, td\r\n	{\r\n		border: 1px solid black;\r\n	}\r\n	\r\n	.list th\r\n	{\r\n		background-color:#06F;\r\n		color:#FFF;\r\n	}\r\n</style>\r\n<?php\r\n	if (isset($_GET[''delete''])) echo ''<script> deleted(); </script>'';\r\n?>\r\n\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n    <h3 style="color:#39F">\r\n    <?php\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "SELECT progname FROM progname";\r\n		$result = $con->query($query_string);\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{	\r\n			echo $row[''progname''];\r\n		}\r\n		\r\n		?>\r\n    </h3>\r\n    \r\n	<table class="list">\r\n		<tr>\r\n			<th><label>Ημερομηνία</label></th>\r\n			<th><label>Τύπος</label></th>\r\n			<th><label>Ώρα Έναρξης</label></th>\r\n			<th><label>Ώρα Λήξης</label></th>\r\n			<th><label>Νοσοκομειακή Μονάδα</label></th>\r\n			<th><label>Όνομα</label></th>\r\n			<th><label>Επίθετο</label></th>\r\n			<th><label>Ενέργεια</label></th>\r\n		</tr>\r\n	\r\n	<?php\r\n		\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "SELECT progname FROM progname";\r\n		$result = $con->query($query_string);\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{	\r\n			$progname = $row[''progname''];\r\n		}\r\n		\r\n		if (!isset($progname)) header(''Location: index.php/error'');\r\n		\r\n		\r\n		\r\n		$query_string   = "SELECT p.date, p.duty_type, p.duty_start_time, p.duty_end_time, p.location, u.name_user, u.surname_user, p.program_id FROM program AS p";\r\n		$query_string  .= " INNER JOIN users AS u ON p.user_id=u.user_id WHERE p.program_name=''".$progname."''";\r\n		$result = $con->query($query_string);\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{\r\n			\r\n			echo "<tr>";\r\n			echo "<td>".$row[''date'']."</td>";\r\n			echo "<td>".$row[''duty_type'']."</td>";\r\n			echo "<td>".$row[''duty_start_time'']."</td>";\r\n			echo "<td>".$row[''duty_end_time'']."</td>";\r\n			echo "<td>".$row[''location'']."</td>";\r\n			echo "<td>".$row[''name_user'']."</td>";\r\n			echo "<td>".$row[''surname_user'']."</td>";\r\n			echo ''<td><input type="button" onclick="confirm_delete(''.$row[''program_id''].'');" value="Διαγραφή Καθήκοντος" class="btn btn-danger"/></td>'';\r\n			echo "</tr>";\r\n			\r\n		}\r\n		\r\n		\r\n		$con->close();\r\n		\r\n	?>\r\n    </table>\r\n    \r\n    <table>\r\n    	<tr>\r\n        	<td><input type="button" onclick="confirm_delete_prog();" value="Διαγραφή Όλου του Προγράμματος" class="btn btn-danger"/></td>\r\n			<td><input type="button" onclick="window.location.href=''index.php/list-programs''" value="Πίσω στην Λίστα" class="btn"/></td>\r\n		</tr>\r\n	</table>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-11 12:12:56', 385, '', '2013-08-11 17:02:49', 385, 385, '2013-08-11 17:02:49', '2013-08-11 12:12:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 7, '', '', 2, 73, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 54, 'Διαγραφή Καθήκοντος', '2013-08-11-16-24-28', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<?php\r\n		\r\n		\r\n		if ( isset( $_GET[''duty_id''] ) )\r\n		{\r\n		\r\n			$con = connect_db(''central_db'');\r\n			\r\n			$query_string  = "DELETE FROM program WHERE program_id=".$_GET[''duty_id''];\r\n			$result = $con->query($query_string);\r\n			$con->close();\r\n			\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/list-programs'');\r\n			\r\n		}\r\n		else\r\n		{\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/error'');\r\n		}\r\n		\r\n	?>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-11 16:24:28', 385, '', '2013-08-11 16:51:21', 385, 0, '0000-00-00 00:00:00', '2013-08-11 16:24:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 6, '', '', 2, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 55, 'Διαγραφή Προγράμματος', '2013-08-11-16-24-51', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<?php\r\n		\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		$query_string  = "SELECT progname FROM progname";\r\n		$result = $con->query($query_string);\r\n		\r\n		while ($row = $result->fetch_array())\r\n		{	\r\n			$progname = $row[''progname''];\r\n		}\r\n		\r\n		\r\n		$query_string  = "TRUNCATE TABLE progname";\r\n		$con->query($query_string);\r\n		\r\n		\r\n		if ( isset( $progname ) )\r\n		{\r\n			\r\n			$query_string  = "DELETE FROM program WHERE program_name=''".$progname."''";\r\n			$result = $con->query($query_string);\r\n			\r\n			$con->close();\r\n			\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/list-programs'');\r\n			\r\n		}\r\n		else\r\n		{\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/error'');\r\n		}\r\n		\r\n	?>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-11 16:24:51', 385, '', '2013-08-11 17:02:34', 385, 0, '0000-00-00 00:00:00', '2013-08-11 16:24:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 2, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 56, 'Αποδοχή Αιτήματος (Ανταλλαγή)', '2013-08-12-10-39-58', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n\r\n<script type="text/javascript" src="http://www.google.com/jsapi"></script>\r\n<script type="text/javascript">google.load("mootools", "1.1.2");</script>\r\n<script type="text/javascript">\r\n	\r\n	\r\n	function confirm_exchange(before_id, after_id)\r\n	{\r\n		if (confirm(''Είστε σίγουροι ότι θέλετε να ανταλλάξετε αυτά τα καθήκοντα;''))\r\n		{\r\n			window.location.href=''index.php/exchange-request?before='' + before_id + ''&after='' + after_id;\r\n		}\r\n	}\r\n	\r\n	\r\n	function confirm_accept(id)\r\n	{\r\n		if (confirm(''Είστε σίγουροι ότι θέλετε να αλλάξετε αυτo τo καθήκον;''))\r\n		{\r\n			window.location.href=''index.php/do-accept-request?duty_id='' + id;\r\n		}\r\n	}\r\n	\r\n\r\n</script>\r\n\r\n<style type="text/css">\r\n	\r\n	.list table, th, td\r\n	{\r\n		border: 1px solid black;\r\n	}\r\n	\r\n	.list th\r\n	{\r\n		background-color:#06F;\r\n		color:#FFF;\r\n	}\r\n	\r\n</style>\r\n\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	\r\n	<h3>Λίστα διαθέσιμων προγραμμάτων προς αλλαγή:</h3>\r\n	\r\n	<table class="list">\r\n		\r\n	\r\n	<?php\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		\r\n		$query_string  = "SELECT cl.id, cl.request_date, cl.request_start_time, p.duty_type, p.location FROM change_list AS cl";\r\n		$query_string .= " INNER JOIN program AS p ON p.program_id=cl.id";\r\n		$query_string .= " WHERE cl.id=".$_GET[''duty_id''];\r\n		$result = $con->query($query_string);\r\n		\r\n		\r\n		$i=1;\r\n		while ($change_list = $result->fetch_array())\r\n		{			\r\n			\r\n			\r\n			$query_string  = "SELECT u.name_user, u.surname_user, u.department, p.location, p.duty_type, p.date, p.duty_start_time, p.duty_end_time, p.program_id FROM program AS p";\r\n			$query_string .= " INNER JOIN users AS u ON u.user_id=p.user_id";\r\n			$query_string .= " WHERE p.date=''".$change_list[''request_date'']."''";\r\n			$query_string .= " AND p.duty_type=''".$change_list[''duty_type'']."''";\r\n			$query_string .= " AND p.location=''".$change_list[''location'']."''";\r\n			if ($change_list[''request_start_time''] != NULL)\r\n			{\r\n				$query_string .= " AND duty_start_time=''".$change_list[''request_start_time'']."''";\r\n			}\r\n			$result2 = $con->query($query_string);\r\n			\r\n			\r\n			while ($program = $result2->fetch_array())\r\n			{\r\n				\r\n					\r\n				if ($i==1)\r\n				{\r\n					echo ''<tr>'';\r\n					echo ''	<th><label>Όνομα</label></th>'';\r\n					echo ''	<th><label>Επίθετο</label></th>'';\r\n					echo ''	<th><label>Τμήμα</label></th>'';\r\n					echo ''	<th><label>Νοσοκομειακή Μονάδα</label></th>'';\r\n					echo ''	<th><label>Τύπος</label></th>'';\r\n					echo ''	<th><label>Ημερομηνία</label></th>'';\r\n					echo ''	<th><label>Ώρα Έναρξης</label></th>'';\r\n					echo ''	<th><label>Ώρα Λήξης</label></th>'';\r\n					echo ''	<th><label>Ενέργεια</label></th>'';\r\n					echo ''</tr>'';\r\n				}\r\n				\r\n				\r\n				echo "<tr>";\r\n				echo "	<td>".$program[''name_user'']."</td>";\r\n				echo "	<td>".$program[''surname_user'']."</td>";\r\n				echo "	<td>".$program[''department'']."</td>";\r\n				echo "	<td>".$program[''location'']."</td>";\r\n				echo "	<td>".$program[''duty_type'']."</td>";\r\n				echo "	<td>".$program[''date'']."</td>";\r\n				echo "	<td>".$program[''duty_start_time'']."</td>";\r\n				echo "	<td>".$program[''duty_end_time'']."</td>";\r\n				echo ''	<td><input type="button" onclick="confirm_exchange(''.$change_list[''id''].'', ''.$program[''program_id''].'');" value="Ανταλλαγή" class="btn btn-success"/></td>'';\r\n				echo "</tr>";\r\n				\r\n				$i++;\r\n				\r\n				\r\n			} // while program\r\n			\r\n			\r\n			\r\n		} // while change_list\r\n		\r\n		\r\n		if ($i==1)\r\n		{\r\n			echo "Δεν υπάρχουν καθήκοντα άλλων χρηστών με τα οποία μπορεί να ανταλλαχθεί το παρόν.<br>";\r\n			echo ''<input type="button" onclick="confirm_accept(''.$_GET[''duty_id''].'');" value="Αλλαγή" class="btn btn-success"/>'';\r\n		}\r\n		\r\n		\r\n		$con->close();\r\n		\r\n	?>\r\n	</table>\r\n	\r\n</body>\r\n</html>', '', 1, 2, '2013-08-12 10:39:58', 385, '', '2013-08-14 08:49:03', 385, 0, '0000-00-00 00:00:00', '2013-08-12 10:39:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 4, '', '', 2, 68, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 57, 'Απόρριψη Αιτήματος', '2013-08-12-10-40-17', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<?php\r\n		\r\n		\r\n		$con = connect_db(''central_db'');\r\n		\r\n		if ( isset( $_GET[''duty_id''] ) )\r\n		{\r\n			\r\n			\r\n			$query_string  = "SELECT * FROM change_list";\r\n			$query_string .= " WHERE id=".$_GET[''duty_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			while ($change = $result->fetch_array())\r\n			{\r\n				$change_date = $change[''request_date''];\r\n				$change_start = $change[''request_start_time''];\r\n				$change_user_id = $change[''user_id''];\r\n			}\r\n			\r\n			\r\n			\r\n			$query_string  = "DELETE FROM change_list WHERE id=''".$_GET[''duty_id'']."''";\r\n			$result = $con->query($query_string);\r\n			\r\n			\r\n			\r\n			// ******************** NOTIFY *********************** //\r\n			\r\n			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$change_user_id.", ".$_GET[''duty_id''].", 1, ''Your request for date ".$change_date." and time ".$change_start." has NOT been fulfilled.'')";\r\n			$con->query($query_string);\r\n			\r\n			\r\n			$con->close();\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/requests-users'');\r\n			\r\n		}\r\n		else\r\n		{\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/error'');\r\n		}\r\n		\r\n	?>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-12 10:40:17', 385, '', '2013-09-03 20:26:20', 385, 0, '0000-00-00 00:00:00', '2013-08-12 10:40:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 3, '', '', 2, 28, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `luacm_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(23, 58, 'Ανταλλαγή Καθηκόντων', '2013-08-13-21-15-58', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<?php\r\n		\r\n		if ( isset($_GET[''before'']) && isset($_GET[''after'']) )\r\n		{\r\n		\r\n			$con = connect_db(''central_db'');\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			// ********************* BEFORE *********************** //\r\n			\r\n			$query_string  = "SELECT date, duty_start_time, duty_end_time, user_id FROM program";\r\n			$query_string .= " WHERE program_id=".$_GET[''before''];\r\n			$result = $con->query($query_string);\r\n			\r\n			while ($before = $result->fetch_array())\r\n			{\r\n				$before_date = $before[''date''];\r\n				$before_start = $before[''duty_start_time''];\r\n				$before_end = $before[''duty_end_time''];\r\n				$before_user_id = $before[''user_id''];\r\n			}\r\n			\r\n			\r\n			// ********************* AFTER *********************** //\r\n			\r\n			$query_string  = "SELECT date, duty_start_time, duty_end_time, user_id FROM program";\r\n			$query_string .= " WHERE program_id=".$_GET[''after''];\r\n			$result2 = $con->query($query_string);\r\n			\r\n			while ($after = $result2->fetch_array())\r\n			{\r\n				$after_date = $after[''date''];\r\n				$after_start = $after[''duty_start_time''];\r\n				$after_end = $after[''duty_end_time''];\r\n				$after_user_id = $after[''user_id''];\r\n			}\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			// ******************* EXCHANGE ******************** //\r\n			\r\n			$query_string  = "UPDATE program SET date=''".$after_date."'', duty_start_time=''".$after_start."'', duty_end_time=''".$after_end."''";\r\n			$query_string .= " WHERE program_id=".$_GET[''before''];\r\n			$con->query($query_string);\r\n			\r\n			$query_string  = "UPDATE program SET date=''".$before_date."'', duty_start_time=''".$before_start."'', duty_end_time=''".$before_end."''";\r\n			$query_string .= " WHERE program_id=".$_GET[''after''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			$query_string  = "DELETE FROM change_list";\r\n			$query_string .= " WHERE id=".$_GET[''before''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			// ******************** NOTIFY *********************** //\r\n			\r\n			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$before_user_id.", ".$_GET[''before''].", 1, ''Your request for date ".$after_date." and time ".$after_start." has been fulfilled.'')";\r\n			$con->query($query_string);\r\n			\r\n			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$after_user_id.", ".$_GET[''after''].", 1, ''Your program on date ".$after_date." moved to ".$before_date.".'')";\r\n			$con->query($query_string);\r\n			\r\n			\r\n			$con->close();\r\n			\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/requests-users'');\r\n			\r\n		}\r\n		else\r\n		{\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/error'');\r\n		}\r\n		\r\n	?>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-13 21:15:58', 385, '', '2013-09-03 20:55:47', 385, 0, '0000-00-00 00:00:00', '2013-08-13 21:15:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 2, '', '', 2, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 59, 'Οριστική Αποδοχή Αιτήματος (Ανταλλαγή)', '2013-08-13-21-16-51', '<?php\r\n	\r\n		function connect_db($name)\r\n		{\r\n			try\r\n			{\r\n				@ $con = mysqli_connect(''localhost'', ''root'', ''OgfTt&TTtG?'', $name);\r\n				\r\n				if (mysqli_connect_errno()) {\r\n				printf("Connect failed: %s\\n", mysqli_connect_error());\r\n				exit();\r\n			}\r\n			\r\n			$con->select_db($name);\r\n			\r\n			if (!$con->set_charset(''utf8''))\r\n			printf("Error loading character set utf8: %s\\n", $mysqli->error);\r\n			\r\n			//echo $con;\r\n			\r\n			return $con;\r\n			}\r\n				catch (Exception $e)\r\n			{\r\n				return -1;\r\n			}\r\n		}\r\n		\r\n		\r\n?>\r\n\r\n\r\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n</head>\r\n\r\n\r\n<body>\r\n	\r\n	<?php\r\n		\r\n		if ( isset($_GET[''duty_id'']) )\r\n		{\r\n		\r\n			$con = connect_db(''central_db'');\r\n			\r\n			\r\n			\r\n			$query_string  = "SELECT * FROM change_list";\r\n			$query_string .= " WHERE id=".$_GET[''duty_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			while ($change = $result->fetch_array())\r\n			{\r\n				$change_date = $change[''request_date''];\r\n				$change_start = $change[''request_start_time''];\r\n				$change_user_id = $change[''user_id''];\r\n			}\r\n			\r\n			\r\n			\r\n			$query_string  = "SELECT duty_start_time, duty_end_time FROM program";\r\n			$query_string .= " WHERE program_id=".$_GET[''duty_id''];\r\n			$result = $con->query($query_string);\r\n			\r\n			while ($program = $result->fetch_array())\r\n			{\r\n				$prog_diff_times_secs = strtotime($program[''duty_end_time'']) - strtotime($program[''duty_start_time'']);\r\n			}\r\n			\r\n			\r\n			$change_end = date(''H:i:s'', strtotime($change_start) + $prog_diff_times_secs);\r\n			\r\n			$query_string  = "UPDATE program SET date=''".$change_date."'', duty_start_time=''".$change_start."'', duty_end_time=''".$change_end."''";\r\n			$query_string .= " WHERE program_id=".$_GET[''duty_id''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			$query_string  = "DELETE FROM change_list";\r\n			$query_string .= " WHERE id=".$_GET[''duty_id''];\r\n			$con->query($query_string);\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			// ******************** NOTIFY *********************** //\r\n			\r\n			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$change_user_id.", ".$_GET[''duty_id''].", 1, ''Your request for date ".$change_date." and time ".$change_start." has fulfilled.'')";\r\n			$con->query($query_string);\r\n			\r\n			$con->close();\r\n			\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/requests-users'');\r\n			\r\n		}\r\n		else\r\n		{\r\n			header(''Location: http://localhost/HFPM_WebApp_J/index.php/error'');\r\n		}\r\n		\r\n	?>\r\n    \r\n</body>\r\n</html>', '', 1, 2, '2013-08-13 21:16:51', 385, '', '2013-09-03 20:09:45', 385, 0, '0000-00-00 00:00:00', '2013-08-13 21:16:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 2, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 60, 'Καλώς Ήρθατε', '2013-08-14-11-04-01', '<h4>Καλώς ήρθατε στην εφαρμογή διαχείρισης νοσοκομειακής μονάδας.<br><br>\r\n\r\nΑπό εδώ μπορείτε να δημιουργείτε νέους χρήστες του συστήματος, νέα προγράμματα, να βλέπετε την λίστα χρηστών και προγραμμάτων, καθώς και τα αιτήματα των χρηστών για αλλαγές στα προγράμματά τους.<br>\r\nΕπίσης υπάρχει η δυνατότητα επεξεργασίας χρήστη και επιλογή αποδοχής/απόρριψης αιτημάτων!<br><br>\r\n\r\nΓια να ξεκινήσετε κάντε κλικ σε κάποιο από τα στοιχεία του μενού στα δεξιά σας!</h4>', '', 1, 2, '2013-08-14 11:04:01', 385, '', '2013-08-14 11:09:06', 385, 0, '0000-00-00 00:00:00', '2013-08-14 11:04:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 43, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `luacm_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `luacm_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `luacm_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_content_rating`
--

CREATE TABLE IF NOT EXISTS `luacm_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_content_types`
--

CREATE TABLE IF NOT EXISTS `luacm_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `luacm_content_types`
--

INSERT INTO `luacm_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute'),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `luacm_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_extensions`
--

CREATE TABLE IF NOT EXISTS `luacm_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10002 ;

--
-- Dumping data for table `luacm_extensions`
--

INSERT INTO `luacm_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"el-GR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `luacm_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.4","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.4","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'DirectPHP', 'plugin', 'DirectPHP', 'content', 0, 1, 1, 0, '{"name":"DirectPHP","type":"plugin","creationDate":"Oct 2011","author":"kksou","copyright":"(C) kksou.com. All Rights Reserved.","authorEmail":"support@kksou.com","authorUrl":"www.kksou.com\\/php-gtk2\\/","version":"3.0","description":"This plugin allows direct embedding of PHP commands right inside Joomla content page for dynamic contents. To see examples of using this plugin, please refer to: http:\\/\\/www.kksou.com\\/php-gtk2\\/Joomla\\/DirectPHP-plugin.php","group":""}', '{"using_no_editor":"0","block_list":"basename, chgrp, chmod, chown, clearstatcache, copy, delete, dirname, disk_free_space, disk_total_space, diskfreespace, fclose, feof, fflush, fgetc, fgetcsv, fgets, fgetss, file_exists, file_get_contents, file_put_contents, file, fileatime, filectime, filegroup, fileinode, filemtime, fileowner, fileperms, filesize, filetype, flock, fnmatch, fopen, fpassthru, fputcsv, fputs, fread, fscanf, fseek, fstat, ftell, ftruncate, fwrite, glob, lchgrp, lchown, link, linkinfo, lstat, move_uploaded_file, opendir, parse_ini_file, pathinfo, pclose, popen, readfile, readdir, readllink, realpath, rename, rewind, rmdir, set_file_buffer, stat, symlink, tempnam, tmpfile, touch, umask, unlink, fsockopen, system, exec, passthru, escapeshellcmd, pcntl_exec, proc_open, proc_close, mkdir, rmdir"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Greek (Hellenic)', 'language', 'el-GR', '', 0, 1, 1, 0, '{"name":"Greek (Hellenic)","type":"language","creationDate":"2013-03-23","author":"chriszemp","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"chriszemp11@yahoo.gr","authorUrl":"http:\\/\\/www.joomla.gr","version":"3.1.0 v1","description":"Greek language pack for Joomla! 3.1 [Site]","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_filters`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `luacm_finder_taxonomy`
--

INSERT INTO `luacm_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_terms`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luacm_finder_terms_common`
--

INSERT INTO `luacm_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_finder_types`
--

CREATE TABLE IF NOT EXISTS `luacm_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_languages`
--

CREATE TABLE IF NOT EXISTS `luacm_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `luacm_languages`
--

INSERT INTO `luacm_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_menu`
--

CREATE TABLE IF NOT EXISTS `luacm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `luacm_menu`
--

INSERT INTO `luacm_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 95, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(101, 'mainmenu', 'Αρχική', 'home', '', 'home', 'index.php?option=com_content&view=article&id=25', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 1, '*', 0),
(102, 'mainmenu', 'Test PHP', 'test-php', '', 'test-php', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(103, 'mainmenu', 'Εγγραφή Χρήστη', 'user-registration', '', 'user-registration', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(104, 'others', 'Εισαγωγή Πληροφοριών Ιατρικού Προσωπικού', 'doctor-info', '', 'doctor-info', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(105, 'others', 'Εισαγωγή Πληροφοριών Νοσηλευτικού Προσωπικού', 'nurse-info', '', 'nurse-info', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(106, 'others', 'Εισαγωγή Πληροφοριών Διοικητικού Προσωπικού', 'staff-info', '', 'staff-info', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(107, 'others', 'Σφάλμα', 'error', '', 'error', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(108, 'others', 'Εισαγωγή Πληροφοριών Τηλεφώνου', 'phone-info', '', 'phone-info', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(109, 'others', 'Εισαγωγή Πληροφοριών Κατοικίας', 'address-info', '', 'address-info', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(110, 'others', 'Επιτυχία', 'success', '', 'success', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(111, 'others', 'Διαγραφή', 'cancel', '', 'cancel', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(112, 'mainmenu', 'Λίστα Χρηστών', 'list-users', '', 'list-users', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(113, 'mainmenu', 'Δημιουργία Προγράμματος', 'create-program', '', 'create-program', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(114, 'mainmenu', 'Λίστα Προγραμμάτων', 'list-programs', '', 'list-programs', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(115, 'mainmenu', 'Αιτήματα Χρηστών', 'requests-users', '', 'requests-users', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(116, 'others', 'Επεξεργασία Χρήστη', 'edit-user', '', 'edit-user', 'index.php?option=com_content&view=article&id=15', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(117, 'others', 'Διαγραφή Χρήστη', 'delete-user', '', 'delete-user', 'index.php?option=com_content&view=article&id=16', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(118, 'others', 'Οριστική Διαγραφή Χρήστη', 'do-delete-user', '', 'do-delete-user', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(119, 'others', 'Λεπτομέρειες Προγράμματος', 'list-duties', '', 'list-duties', 'index.php?option=com_content&view=article&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(120, 'others', 'Διαγραφή Καθήκοντος', 'delete-duty', '', 'delete-duty', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(121, 'others', 'Διαγραφή Προγράμματος', 'delete-program', '', 'delete-program', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(122, 'others', 'Αποδοχή Αιτήματος (Ανταλλαγή)', 'accept-request', '', 'accept-request', 'index.php?option=com_content&view=article&id=21', 'component', 1, 1, 1, 22, 385, '2013-09-03 17:43:03', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(123, 'others', 'Απόρριψη Αιτήματος', 'reject-request', '', 'reject-request', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 385, '2013-09-03 17:43:10', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(124, 'others', 'Ανταλλαγή Καθηκόντων', 'exchange-request', '', 'exchange-request', 'index.php?option=com_content&view=article&id=23', 'component', 1, 1, 1, 22, 385, '2013-09-03 17:43:16', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(125, 'others', 'Οριστική Αποδοχή Αιτήματος (Ανταλλαγή)', 'do-accept-request', '', 'do-accept-request', 'index.php?option=com_content&view=article&id=24', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_menu_types`
--

CREATE TABLE IF NOT EXISTS `luacm_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `luacm_menu_types`
--

INSERT INTO `luacm_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Κυρίως Μενού', 'The main menu for the site'),
(2, 'others', 'Άλλα', '');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_messages`
--

CREATE TABLE IF NOT EXISTS `luacm_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `luacm_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_modules`
--

CREATE TABLE IF NOT EXISTS `luacm_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `luacm_modules`
--

INSERT INTO `luacm_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Κυρίως Μενού', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 2, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 2, 1, '{"showHere":"1","showHome":"1","homeText":"\\u0394\\u03b9\\u03b1\\u03c7\\u03b5\\u03af\\u03c1\\u03b9\\u03c3\\u03b7 \\u039d\\u03bf\\u03c3\\u03bf\\u03ba\\u03bf\\u03bc\\u03b5\\u03b9\\u03b1\\u03ba\\u03ae\\u03c2 \\u039c\\u03bf\\u03bd\\u03ac\\u03b4\\u03b1\\u03c2","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_modules_menu`
--

CREATE TABLE IF NOT EXISTS `luacm_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luacm_modules_menu`
--

INSERT INTO `luacm_modules_menu` (`moduleid`, `menuid`) VALUES
(1, -115),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, -115),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `luacm_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_overrider`
--

CREATE TABLE IF NOT EXISTS `luacm_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_redirect_links`
--

CREATE TABLE IF NOT EXISTS `luacm_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_schemas`
--

CREATE TABLE IF NOT EXISTS `luacm_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luacm_schemas`
--

INSERT INTO `luacm_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.1.5');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_session`
--

CREATE TABLE IF NOT EXISTS `luacm_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luacm_session`
--

INSERT INTO `luacm_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('7io1qgm8vfp7jj8rsgkapn5ob5', 0, 0, '1378242161', '__default|a:8:{s:15:"session.counter";i:163;s:19:"session.timer.start";i:1378235750;s:18:"session.timer.last";i:1378241987;s:17:"session.timer.now";i:1378242160;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":2:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:4:"data";a:0:{}s:6:"return";s:31:"http://localhost/HFPM_WebApp_J/";}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"385";s:4:"name";s:21:"Vassilis Lampropoulos";s:8:"username";s:10:"lampropoul";s:5:"email";s:26:"lampropoul@ceid.upatras.gr";s:8:"password";s:65:"1717fec3742064a9fa129601bda173f7:smZrjERlsN03ZNxF74eEayqpl4XFMUHP";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2013-08-03 11:24:50";s:13:"lastvisitDate";s:19:"2013-08-28 18:34:24";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"69649e6908bacbc3d3c214ee9db963f4";}', 385, 'lampropoul'),
('tfac3ohe8jbv00n7dli6glpf62', 1, 0, '1378241748', '__default|a:8:{s:15:"session.counter";i:59;s:19:"session.timer.start";i:1378238934;s:18:"session.timer.last";i:1378241746;s:17:"session.timer.now";i:1378241748;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":5:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:11:"com_content";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:8:"articles";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:6:"search";s:0:"";s:6:"access";i:0;s:9:"author_id";s:0:"";s:9:"published";s:0:"";s:11:"category_id";s:0:"";s:5:"level";i:0;s:8:"language";s:0:"";s:3:"tag";s:0:"";}s:10:"limitstart";s:1:"0";s:8:"ordercol";s:7:"a.title";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:6:"others";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:3:{i:0;i:122;i:1;i:123;i:2;i:124;}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"385";s:4:"name";s:21:"Vassilis Lampropoulos";s:8:"username";s:10:"lampropoul";s:5:"email";s:26:"lampropoul@ceid.upatras.gr";s:8:"password";s:65:"1717fec3742064a9fa129601bda173f7:smZrjERlsN03ZNxF74eEayqpl4XFMUHP";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2013-08-03 11:24:50";s:13:"lastvisitDate";s:19:"2013-09-03 19:36:09";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"1d1907ec0c758325cbff6716af4edc5b";}', 385, 'lampropoul');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_tags`
--

CREATE TABLE IF NOT EXISTS `luacm_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `luacm_tags`
--

INSERT INTO `luacm_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_template_styles`
--

CREATE TABLE IF NOT EXISTS `luacm_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `luacm_template_styles`
--

INSERT INTO `luacm_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#0088cc","templateBackgroundColor":"#189cde","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_ucm_base`
--

CREATE TABLE IF NOT EXISTS `luacm_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_ucm_content`
--

CREATE TABLE IF NOT EXISTS `luacm_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_updates`
--

CREATE TABLE IF NOT EXISTS `luacm_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=52 ;

--
-- Dumping data for table `luacm_updates`
--

INSERT INTO `luacm_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.1.1.2', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', ''),
(2, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(3, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(4, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(5, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', ''),
(6, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(7, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),
(8, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(9, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', ''),
(10, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(11, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', ''),
(12, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.0.3.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),
(13, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', ''),
(14, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(15, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(16, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', ''),
(17, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(18, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(19, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.1.0.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(20, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.1.0.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(21, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(22, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(23, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(24, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(25, 3, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/ckb-IQ_details.xml', ''),
(26, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(27, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(28, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(29, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),
(30, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.1.4.2', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(31, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.0.2.2', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', ''),
(32, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),
(33, 3, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '3.1.0.1', '', 'http://update.joomla.org/language/details3/gd-GB_details.xml', ''),
(34, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.1.5.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(35, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(36, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.1.2.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(37, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.1.5.2', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(38, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.1.4.2', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(39, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(40, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.1.4.4', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(41, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),
(42, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', ''),
(43, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.3.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(44, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(45, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(46, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(47, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(48, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.0.3.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(49, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', ''),
(50, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(51, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_update_sites`
--

CREATE TABLE IF NOT EXISTS `luacm_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `luacm_update_sites`
--

INSERT INTO `luacm_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1378241731),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1378241731),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1378241731);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `luacm_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `luacm_update_sites_extensions`
--

INSERT INTO `luacm_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_usergroups`
--

CREATE TABLE IF NOT EXISTS `luacm_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `luacm_usergroups`
--

INSERT INTO `luacm_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_users`
--

CREATE TABLE IF NOT EXISTS `luacm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=386 ;

--
-- Dumping data for table `luacm_users`
--

INSERT INTO `luacm_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(385, 'Vassilis Lampropoulos', 'lampropoul', 'lampropoul@ceid.upatras.gr', '1717fec3742064a9fa129601bda173f7:smZrjERlsN03ZNxF74eEayqpl4XFMUHP', 0, 1, '2013-08-03 11:24:50', '2013-09-03 20:08:56', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_user_notes`
--

CREATE TABLE IF NOT EXISTS `luacm_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `luacm_user_profiles`
--

CREATE TABLE IF NOT EXISTS `luacm_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `luacm_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `luacm_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luacm_user_usergroup_map`
--

INSERT INTO `luacm_user_usergroup_map` (`user_id`, `group_id`) VALUES
(385, 8);

-- --------------------------------------------------------

--
-- Table structure for table `luacm_viewlevels`
--

CREATE TABLE IF NOT EXISTS `luacm_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `luacm_viewlevels`
--

INSERT INTO `luacm_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Table structure for table `luacm_weblinks`
--

CREATE TABLE IF NOT EXISTS `luacm_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
