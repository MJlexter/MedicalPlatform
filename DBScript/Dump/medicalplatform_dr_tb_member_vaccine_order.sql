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
-- Table structure for table `dr_tb_member_vaccine_order`
--

DROP TABLE IF EXISTS `dr_tb_member_vaccine_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_member_vaccine_order` (
  `id` int(11) NOT NULL,
  `order_no` varchar(45) NOT NULL,
  `guid` varchar(45) NOT NULL,
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `name` varchar(100) NOT NULL COMMENT '预约人名称',
  `mobile` varchar(100) NOT NULL COMMENT '预约人手机号码',
  `email` varchar(100) NOT NULL COMMENT '预约人邮箱',
  `order_date` date NOT NULL COMMENT '预约日期',
  `order_time` int(11) NOT NULL COMMENT '预约时间',
  `vaccine_id` int(11) NOT NULL COMMENT '疫苗ID',
  `doctor_id` int(11) NOT NULL COMMENT '医生ID',
  `office_id` int(11) NOT NULL COMMENT '诊所ID',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `status` varchar(1) NOT NULL COMMENT '状态\nP-等待处理\nF-完成预约',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `snapshot` varchar(3000) NOT NULL COMMENT '快照',
  `updated_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员疫苗预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_member_vaccine_order`
--

LOCK TABLES `dr_tb_member_vaccine_order` WRITE;
/*!40000 ALTER TABLE `dr_tb_member_vaccine_order` DISABLE KEYS */;
INSERT INTO `dr_tb_member_vaccine_order` VALUES (1,'000001','000001',1,'蔡笋','a','','2015-01-07',24,1,1,2,1.00,'P','2014-12-31 03:36:37','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            aaa\n            \n        \n        \n            诊所地址\n            aaa\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n19:30-20:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        请选择预约时间\n        \n            确认预约\n        \n    \n',NULL,NULL),(2,'VC20143000001','VC20143000001',1,'蔡笋','a','','2015-01-01',11,1,1,1,1.00,'F','2014-12-31 11:32:13','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-01 16:28:24'),(3,'VC20143000002','VC20143000002',1,'蔡笋','a','','2015-01-01',20,1,1,1,1.00,'F','2014-12-31 12:13:19','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-01 16:33:01'),(4,'VC20143000003','VC20143000003',1,'蔡笋','a','','2015-01-04',12,1,1,1,1.00,'P','2014-12-31 12:17:23','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:30-14:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',NULL,NULL),(5,'VC201501000001','416791E5-BA24-866B-FAEB-51A9CBEF8CDE',1,'蔡笋','a','','2015-01-08',20,1,1,1,1.00,'P','2015-01-01 22:29:23','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',NULL,NULL);
/*!40000 ALTER TABLE `dr_tb_member_vaccine_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-04 22:15:22
