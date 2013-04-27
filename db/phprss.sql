/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.24-log : Database - phprss
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`phprss` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `phprss`;

/*Table structure for table `phprss_articlelists` */

DROP TABLE IF EXISTS `phprss_articlelists`;

CREATE TABLE `phprss_articlelists` (
  `article_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_sub_id` bigint(20) unsigned NOT NULL,
  `article_name` varchar(200) NOT NULL,
  `article_comments` text NOT NULL,
  `article_url` varchar(200) NOT NULL,
  `article_gettime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `article_createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `article_isreaded` tinyint(1) NOT NULL DEFAULT '0',
  `article_isstared` tinyint(1) NOT NULL DEFAULT '0',
  `article_tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `article_id` (`article_id`),
  KEY `article_sub_id` (`article_sub_id`),
  KEY `article_tags` (`article_tags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `phprss_articlelists` */

/*Table structure for table `phprss_sublists` */

DROP TABLE IF EXISTS `phprss_sublists`;

CREATE TABLE `phprss_sublists` (
  `sub_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(200) NOT NULL,
  `sub_url` varchar(200) NOT NULL,
  `sub_tags` tinytext,
  PRIMARY KEY (`sub_id`),
  KEY `sub_id` (`sub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `phprss_sublists` */

/*Table structure for table `phprss_taglists` */

DROP TABLE IF EXISTS `phprss_taglists`;

CREATE TABLE `phprss_taglists` (
  `tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(200) NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_id` (`tag_id`),
  KEY `tag_name` (`tag_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `phprss_taglists` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
