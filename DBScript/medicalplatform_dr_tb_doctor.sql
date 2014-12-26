CREATE DATABASE  IF NOT EXISTS `medicalplatform` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `medicalplatform`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: medicalplatform
-- ------------------------------------------------------
-- Server version	5.6.21-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dr_tb_doctor`
--

DROP TABLE IF EXISTS `dr_tb_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor` (
  `id` int(11) NOT NULL,
  `licence_code` varchar(45) NOT NULL COMMENT '执业许可证号',
  `photo` varchar(200) NOT NULL COMMENT '头像',
  `sexual` varchar(1) NOT NULL COMMENT '性别',
  `exec_year` int(11) NOT NULL COMMENT '执业年期',
  `effect_list_id` varchar(1000) NOT NULL COMMENT '可提供的医疗服务及手术',
  `hospital_list_id` varchar(1000) NOT NULL COMMENT '可使用的医院',
  `general_price` decimal(10,3) NOT NULL COMMENT '全科收费',
  `specialist_price` decimal(10,3) NOT NULL COMMENT '专科收费',
  `use_lang_id` varchar(1000) NOT NULL COMMENT '语言',
  `is_general` varchar(1) NOT NULL COMMENT '是否为全科医生',
  `remarks` varchar(1000) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `meet_day1` varchar(200) DEFAULT NULL COMMENT '周一预约时间段',
  `meet_day2` varchar(200) DEFAULT NULL COMMENT '周二预约时间段',
  `meet_day3` varchar(200) DEFAULT NULL COMMENT '周三预约时间段',
  `meet_day4` varchar(200) DEFAULT NULL COMMENT '周四预约时间段',
  `meet_day5` varchar(200) DEFAULT NULL COMMENT '周五预约时间段',
  `meet_day6` varchar(200) DEFAULT NULL COMMENT '周六预约时间段',
  `meet_day7` varchar(200) DEFAULT NULL COMMENT '周日预约时间段',
  `office_list_id` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-22  0:54:38