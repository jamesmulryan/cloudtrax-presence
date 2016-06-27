SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `cloudtrax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloudtrax`;

DROP TABLE IF EXISTS `access_points`;
CREATE TABLE IF NOT EXISTS `access_points` (
  `Access_Point_ID` int(6) DEFAULT NULL,
  `MAC_Address` varchar(17) DEFAULT NULL,
  `Access_Point_Name` varchar(27) DEFAULT NULL,
  `Access_Point_Description` varchar(33) DEFAULT NULL,
  `IP` varchar(12) DEFAULT NULL,
  `Role` varchar(8) DEFAULT NULL,
  `Firmware_Version` varchar(10) DEFAULT NULL,
  `Mesh_Version` varchar(10) DEFAULT NULL,
  `Last_Checkin` varchar(20) DEFAULT NULL,
  `Uptime` varchar(11) DEFAULT NULL,
  `Hardware_Model` varchar(7) DEFAULT NULL,
  `Free_Memory` int(5) DEFAULT NULL,
  `System_Load` decimal(3,2) DEFAULT NULL,
  `Spare` varchar(10) DEFAULT NULL,
  `Latitude` decimal(8,6) DEFAULT NULL,
  `Longitude` decimal(8,6) DEFAULT NULL,
  `Channel_2_4` varchar(2) DEFAULT NULL,
  `Channel_5` varchar(2) DEFAULT NULL,
  `Latency` decimal(4,2) DEFAULT NULL,
  `Mesh_Hops` int(1) DEFAULT NULL,
  `Number_of_Clients` int(3) DEFAULT NULL,
  `Download_Bytes` bigint(10) DEFAULT NULL,
  `Upload_Bytes` int(10) DEFAULT NULL,
  `Total_Bytes` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `presence_detail`;
CREATE TABLE IF NOT EXISTS `presence_detail` (
  `id_presence_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_presence_header` int(11) NOT NULL,
  `mac` varchar(64) CHARACTER SET latin1 NOT NULL,
  `count` varchar(64) CHARACTER SET latin1 NOT NULL,
  `min_signal` varchar(64) CHARACTER SET latin1 NOT NULL,
  `max_signal` varchar(64) CHARACTER SET latin1 NOT NULL,
  `avg_signal` varchar(64) CHARACTER SET latin1 NOT NULL,
  `first_seen` varchar(64) CHARACTER SET latin1 NOT NULL,
  `last_seen` varchar(64) CHARACTER SET latin1 NOT NULL,
  `associated` varchar(64) CHARACTER SET latin1 NOT NULL,
  `timestamp_detail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_presence_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `presence_header`;
CREATE TABLE IF NOT EXISTS `presence_header` (
  `id_presence_header` int(11) NOT NULL AUTO_INCREMENT,
  `network_id` int(11) NOT NULL,
  `node_mac` varchar(64) CHARACTER SET latin1 NOT NULL,
  `version` varchar(64) CHARACTER SET latin1 NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_presence_header`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
