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
-- Table structure for table `dr_order_no_gen`
--

DROP TABLE IF EXISTS `dr_order_no_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_order_no_gen` (
  `prefix` varchar(2) NOT NULL COMMENT '订单前缀',
  `dateremark` varchar(45) NOT NULL COMMENT '日期表示，精确到月',
  `seq` varchar(45) NOT NULL COMMENT '序号',
  PRIMARY KEY (`prefix`,`dateremark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单编号创建';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_order_no_gen`
--

LOCK TABLES `dr_order_no_gen` WRITE;
/*!40000 ALTER TABLE `dr_order_no_gen` DISABLE KEYS */;
INSERT INTO `dr_order_no_gen` VALUES ('VC','20143','4'),('VC','201501','6');
/*!40000 ALTER TABLE `dr_order_no_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_banner`
--

DROP TABLE IF EXISTS `dr_tb_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_banner` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL COMMENT '代码',
  `title_sc` varchar(500) NOT NULL COMMENT '标题',
  `title_tc` varchar(500) NOT NULL,
  `title_en` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL COMMENT '超链接',
  `pic_sc` varchar(500) NOT NULL COMMENT '图片',
  `pic_tc` varchar(500) DEFAULT NULL,
  `pic_en` varchar(500) DEFAULT NULL,
  `remarks` varchar(500) NOT NULL COMMENT '说明',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_banner`
--

LOCK TABLES `dr_tb_banner` WRITE;
/*!40000 ALTER TABLE `dr_tb_banner` DISABLE KEYS */;
INSERT INTO `dr_tb_banner` VALUES (1,'indextop1','no','no','no','no','150202230416B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230256B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230356B08F4A44A820EC7BF46541AFB04FFA7.jpg','首页列表第一张图','2015-02-02 23:41:55',1,'2015-02-02 23:44:17',1,'A'),(2,'indextop2','no','no','no','','150202230546B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230496B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230576B08F4A44A820EC7BF46541AFB04FFA7.jpg','首页列表第二张图','2015-02-02 23:43:25',1,'2015-02-02 23:43:25',1,'A'),(3,'indexpromotion','no','no','no','','150202230506B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230556B08F4A44A820EC7BF46541AFB04FFA7.jpg','150202230596B08F4A44A820EC7BF46541AFB04FFA7.jpg','首页大张宣传图','2015-02-02 23:45:20',1,'2015-02-02 23:45:20',1,'A');
/*!40000 ALTER TABLE `dr_tb_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_block`
--

DROP TABLE IF EXISTS `dr_tb_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_block` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_block`
--

LOCK TABLES `dr_tb_block` WRITE;
/*!40000 ALTER TABLE `dr_tb_block` DISABLE KEYS */;
INSERT INTO `dr_tb_block` VALUES (1,1,''),(2,1,''),(3,1,''),(4,1,''),(5,1,''),(6,1,''),(7,1,''),(8,1,''),(9,1,''),(10,1,''),(11,1,''),(12,1,''),(13,1,''),(14,1,''),(15,1,''),(16,1,''),(17,1,''),(18,1,''),(19,1,''),(20,1,''),(21,1,''),(22,1,''),(23,1,''),(24,1,''),(25,1,''),(26,1,''),(27,2,''),(28,2,''),(29,2,''),(30,2,''),(31,2,''),(32,2,''),(33,2,''),(34,2,''),(35,2,''),(36,2,''),(37,2,''),(38,2,''),(39,2,''),(40,2,''),(41,2,''),(42,2,''),(43,2,''),(44,2,''),(45,2,''),(46,2,''),(47,2,''),(48,2,''),(49,2,''),(50,3,''),(51,3,''),(52,3,''),(53,3,''),(54,3,''),(55,3,''),(56,3,''),(57,3,''),(58,3,''),(59,3,''),(60,3,''),(61,3,''),(62,3,''),(63,3,''),(64,3,''),(65,3,''),(66,4,''),(67,4,''),(68,4,'');
/*!40000 ALTER TABLE `dr_tb_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_block_lang`
--

DROP TABLE IF EXISTS `dr_tb_block_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_block_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_block_lang`
--

LOCK TABLES `dr_tb_block_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_block_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_block_lang` VALUES (1,'en_us','Cyberport'),(1,'zh-cn','数码港'),(1,'zh-hk','數碼港'),(2,'en_us','Pok Fu Lam'),(2,'zh-cn','薄扶林'),(2,'zh-hk','薄扶林'),(3,'en_us','Sai Wan'),(3,'zh-cn','西环'),(3,'zh-hk','西環'),(4,'en_us','Sheung Wan'),(4,'zh-cn','上环'),(4,'zh-hk','上環'),(5,'en_us','Central'),(5,'zh-cn','中环'),(5,'zh-hk','中環'),(6,'en_us','Admiralty'),(6,'zh-cn','金钟'),(6,'zh-hk','金鐘'),(7,'en_us','Wan Chai'),(7,'zh-cn','湾仔'),(7,'zh-hk','灣仔'),(8,'en_us','Causeway Bay'),(8,'zh-cn','铜锣湾'),(8,'zh-hk','銅鑼灣'),(9,'en_us','Happy Valley'),(9,'zh-cn','跑马地'),(9,'zh-hk','跑馬地'),(10,'en_us','Tin Hau'),(10,'zh-cn','天后'),(10,'zh-hk','天後'),(11,'en_us','Fortress Hill'),(11,'zh-cn','炮台山'),(11,'zh-hk','炮臺山'),(12,'en_us','North Point'),(12,'zh-cn','北角'),(12,'zh-hk','北角'),(13,'en_us','Quarry Bay'),(13,'zh-cn','鲗鱼涌'),(13,'zh-hk','鲗魚湧'),(14,'en_us','Tai Koo'),(14,'zh-cn','太古'),(14,'zh-hk','太古'),(15,'en_us','Sai Wan Ho'),(15,'zh-cn','西湾河'),(15,'zh-hk','西灣河'),(16,'en_us','Shau Kei Wan'),(16,'zh-cn','筲箕湾'),(16,'zh-hk','筲箕灣'),(17,'en_us','HengFaChuen'),(17,'zh-cn','杏花村'),(17,'zh-hk','杏花村'),(18,'en_us','Chai Wan'),(18,'zh-cn','柴湾'),(18,'zh-hk','柴灣'),(19,'en_us','SiuSai Wan'),(19,'zh-cn','小西湾'),(19,'zh-hk','小西灣'),(20,'en_us','Aberdeen'),(20,'zh-cn','香港仔'),(20,'zh-hk','香港仔'),(21,'en_us','Ap Lei Chau'),(21,'zh-cn','鸭脷洲'),(21,'zh-hk','鴨脷洲'),(22,'en_us','Deep Water Bay'),(22,'zh-cn','深水湾'),(22,'zh-hk','深水灣'),(23,'en_us','Repulse Bay'),(23,'zh-cn','浅水湾'),(23,'zh-hk','淺水灣'),(24,'en_us','Stanley'),(24,'zh-cn','赤柱'),(24,'zh-hk','赤柱'),(25,'en_us','Shek O'),(25,'zh-cn','石澳'),(25,'zh-hk','石澳'),(26,'en_us','Peak'),(26,'zh-cn','山顶'),(26,'zh-hk','山頂'),(27,'en_us','Jordan'),(27,'zh-cn','佐敦'),(27,'zh-hk','佐敦'),(28,'en_us','MongKok'),(28,'zh-cn','旺角'),(28,'zh-hk','旺角'),(29,'en_us','Yau Tong'),(29,'zh-cn','油塘'),(29,'zh-hk','油塘'),(30,'en_us','Hung Hom'),(30,'zh-cn','红磡'),(30,'zh-hk','紅磡'),(31,'en_us','Mei Foo'),(31,'zh-cn','美孚'),(31,'zh-hk','美孚'),(32,'en_us','Choi Hung'),(32,'zh-cn','彩虹'),(32,'zh-hk','彩虹'),(33,'en_us','Lam Tin'),(33,'zh-cn','蓝田'),(33,'zh-hk','藍田'),(34,'en_us','Kwun Tong'),(34,'zh-cn','观塘'),(34,'zh-hk','觀塘'),(35,'en_us','Kowloon City'),(35,'zh-cn','九龙城'),(35,'zh-hk','九龍城'),(36,'en_us','Kowloon Tong'),(36,'zh-cn','九龙塘'),(36,'zh-hk','九龍塘'),(37,'en_us','Kowloon Bay'),(37,'zh-cn','九龙湾'),(37,'zh-hk','九龍灣'),(38,'en_us','To Kwa Wan'),(38,'zh-cn','土瓜湾'),(38,'zh-hk','土瓜灣'),(39,'en_us','Tai KokTsui'),(39,'zh-cn','大角咀'),(39,'zh-hk','大角咀'),(40,'en_us','Ngau Tau Kok'),(40,'zh-cn','牛头角'),(40,'zh-hk','牛頭角'),(41,'en_us','TsimShaTsui'),(41,'zh-cn','尖沙咀'),(41,'zh-hk','尖沙咀'),(42,'en_us','Ho Man Tin'),(42,'zh-cn','何文田'),(42,'zh-hk','何文田'),(43,'en_us','Yau Ma Tei'),(43,'zh-cn','油麻地'),(43,'zh-hk','油麻地'),(44,'en_us','Cheung Sha Wan'),(44,'zh-cn','长沙湾'),(44,'zh-hk','長沙灣'),(45,'en_us','Lai Chi Kok'),(45,'zh-cn','荔枝角'),(45,'zh-hk','荔枝角'),(46,'en_us','Sham Shui Po'),(46,'zh-cn','深水埗'),(46,'zh-hk','深水埗'),(47,'en_us','Wong Tai Sin'),(47,'zh-cn','黄大仙'),(47,'zh-hk','黃大仙'),(48,'en_us','San Po Kong'),(48,'zh-cn','新蒲岗'),(48,'zh-hk','新蒲崗'),(49,'en_us','Diamond Hill'),(49,'zh-cn','钻石山'),(49,'zh-hk','鉆石山'),(50,'en_us','SheungShui'),(50,'zh-cn','上水'),(50,'zh-hk','上水'),(51,'en_us','Fan Ling'),(51,'zh-cn','粉岭'),(51,'zh-hk','粉嶺'),(52,'en_us','Tai Po'),(52,'zh-cn','大埔'),(52,'zh-hk','大埔'),(53,'en_us','Fo Tan'),(53,'zh-cn','火炭'),(53,'zh-hk','火炭'),(54,'en_us','Sha Tin'),(54,'zh-cn','沙田'),(54,'zh-hk','沙田'),(55,'en_us','Tai Wai'),(55,'zh-cn','大围'),(55,'zh-hk','大圍'),(56,'en_us','Ma On Shan'),(56,'zh-cn','马鞍山'),(56,'zh-hk','馬鞍山'),(57,'en_us','Kwai Chung'),(57,'zh-cn','葵涌'),(57,'zh-hk','葵湧'),(58,'en_us','Tsuen Wan'),(58,'zh-cn','荃湾'),(58,'zh-hk','荃灣'),(59,'en_us','Sai Kung'),(59,'zh-cn','西贡'),(59,'zh-hk','西貢'),(60,'en_us','Tseung Kwan O'),(60,'zh-cn','将军澳'),(60,'zh-hk','將軍澳'),(61,'en_us','TuenMun'),(61,'zh-cn','屯门'),(61,'zh-hk','屯門'),(62,'en_us','Yuen Long'),(62,'zh-cn','元朗'),(62,'zh-hk','元朗'),(63,'en_us','Tsing Yi'),(63,'zh-cn','青衣'),(63,'zh-hk','青衣'),(64,'en_us','Tin ShuiWai'),(64,'zh-cn','天水围'),(64,'zh-hk','天水圍'),(65,'en_us','Sham Tseng'),(65,'zh-cn','深井'),(65,'zh-hk','深井'),(66,'en_us','Tung Chung'),(66,'zh-cn','东涌'),(66,'zh-hk','東湧'),(67,'en_us','Airport'),(67,'zh-cn','机场'),(67,'zh-hk','機場'),(68,'en_us','Discovery Bay'),(68,'zh-cn','愉景湾'),(68,'zh-hk','愉景灣');
/*!40000 ALTER TABLE `dr_tb_block_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_district`
--

DROP TABLE IF EXISTS `dr_tb_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_district` (
  `id` int(11) NOT NULL,
  `remarks` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_district`
--

LOCK TABLES `dr_tb_district` WRITE;
/*!40000 ALTER TABLE `dr_tb_district` DISABLE KEYS */;
INSERT INTO `dr_tb_district` VALUES (1,''),(2,''),(3,''),(4,'');
/*!40000 ALTER TABLE `dr_tb_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_district_lang`
--

DROP TABLE IF EXISTS `dr_tb_district_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_district_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_district_lang`
--

LOCK TABLES `dr_tb_district_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_district_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_district_lang` VALUES (1,'en_us','Hong Kong Island','Hong Kong Hong Kong Island'),(1,'zh-cn','香港岛','香港香港岛'),(1,'zh-hk','香港島','香港香港島'),(2,'en_us','Kowloon','Hong Kong Kowloon'),(2,'zh-cn','九龙','香港九龙'),(2,'zh-hk','九龍','香港九龍'),(3,'en_us','New Territories','Hong Kong New Territories'),(3,'zh-cn','新界','香港新界'),(3,'zh-hk','新界','香港新界'),(4,'en_us','Islands','Hong Kong Islands'),(4,'zh-cn','离岛','香港离岛'),(4,'zh-hk','離島','香港離島');
/*!40000 ALTER TABLE `dr_tb_district_lang` ENABLE KEYS */;
UNLOCK TABLES;

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
  `hospital_list_id` varchar(1000) NOT NULL COMMENT '可使用的医院',
  `general_price` decimal(10,3) NOT NULL COMMENT '全科收费',
  `specialist_id` int(11) NOT NULL,
  `specialist_price` decimal(10,3) NOT NULL COMMENT '专科收费',
  `use_lang_id` varchar(1000) NOT NULL COMMENT '语言',
  `is_general` varchar(1) NOT NULL COMMENT '是否为全科医生',
  `remarks` varchar(1000) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor`
--

LOCK TABLES `dr_tb_doctor` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor` VALUES (1,'aaaa','14121614011Chrysanthemum.jpg','M',1,'1',1.000,2,1.000,'1','N','','A','2014-12-16 22:22:18',1,'2015-01-11 01:34:07',1),(2,'2323asd','15020300016Koala.jpg','M',2013,'1',11.000,1,11.000,'2,3','N','','A','2015-01-12 21:59:57',1,'2015-02-03 00:50:19',1);
/*!40000 ALTER TABLE `dr_tb_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_account`
--

DROP TABLE IF EXISTS `dr_tb_doctor_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_account` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL COMMENT '绑定医生',
  `login_id` varchar(45) NOT NULL COMMENT '登录账号',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `accessright` varchar(45) NOT NULL COMMENT '权限，D医生，N护士',
  `email` varchar(45) NOT NULL COMMENT '邮箱',
  `remarks` varchar(300) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生登录账号管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_account`
--

LOCK TABLES `dr_tb_doctor_account` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_account` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor_account` VALUES (1,1,'aaa','0b4e7a0e5fe84ad35fb5f95b9ceeac79','D','aaa','','A','2014-12-16 22:25:35',1,'2014-12-16 22:25:35',1),(2,1,'aaaa','47bce5c74f589f4867dbd57e9ca9f808','D','aaa','','A','2014-12-16 22:26:00',1,'2014-12-16 22:26:00',1),(3,1,'aaaaa','74b87337454200d4d33f80c4663dc5e5','N','aa','','A','2014-12-16 22:26:13',1,'2014-12-16 22:26:13',1),(4,1,'test_1','4e70ffa82fbe886e3c4ac00ac374c29b','D','aaa','','A','2014-12-18 21:30:14',1,'2014-12-18 21:32:09',1),(5,2,'steve','21218cca77804d2ba1922c33e0151105','D','aa','','A','2015-01-12 22:57:39',1,'2015-01-12 22:57:39',1);
/*!40000 ALTER TABLE `dr_tb_doctor_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_lang`
--

DROP TABLE IF EXISTS `dr_tb_doctor_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(145) NOT NULL COMMENT '医生姓名',
  `post_process` varchar(1000) NOT NULL COMMENT '任职历程',
  `summary` varchar(1000) NOT NULL COMMENT '个人简介',
  `pro_title` varchar(1000) NOT NULL COMMENT '获得的专业资格',
  `book_content` varchar(1000) NOT NULL COMMENT '预约内容',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_lang`
--

LOCK TABLES `dr_tb_doctor_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor_lang` VALUES (1,'en-us','Kevin','啊啊','aaa','ee','aa'),(1,'zh-cn','Kevin','啊啊','aaa','eee','aa'),(1,'zh-hk','Kevin','啊啊','aa','ee','aa'),(2,'en-us','steve','steve','steve','steve','steve'),(2,'zh-cn','steve','steve','steve','steve','steve'),(2,'zh-hk','steve','steve','steve','steve','steve');
/*!40000 ALTER TABLE `dr_tb_doctor_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_promoted`
--

DROP TABLE IF EXISTS `dr_tb_doctor_promoted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_promoted` (
  `id` int(11) NOT NULL,
  `doctor_list` varchar(1000) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推广医生	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_promoted`
--

LOCK TABLES `dr_tb_doctor_promoted` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_promoted` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor_promoted` VALUES (1,'2,1','2015-01-16 16:46:07',1,'2015-02-03 00:41:09',1,'啊啊');
/*!40000 ALTER TABLE `dr_tb_doctor_promoted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_service`
--

DROP TABLE IF EXISTS `dr_tb_doctor_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_service` (
  `doctor_id` int(11) NOT NULL,
  `effect_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `web_price` decimal(10,2) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`doctor_id`,`effect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_service`
--

LOCK TABLES `dr_tb_doctor_service` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_service` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor_service` VALUES (2,3,12.00,7.00,5,'2015-01-12 23:06:01');
/*!40000 ALTER TABLE `dr_tb_doctor_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_vaccine`
--

DROP TABLE IF EXISTS `dr_tb_doctor_vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_vaccine` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL COMMENT '医生',
  `vaccine_id` int(11) NOT NULL COMMENT '疫苗',
  `price` decimal(10,2) NOT NULL COMMENT '单次接种疫苗收费',
  `web_price` decimal(10,2) NOT NULL COMMENT '一次性付款收费',
  `remarks` varchar(1000) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生的疫苗';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_vaccine`
--

LOCK TABLES `dr_tb_doctor_vaccine` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_vaccine` DISABLE KEYS */;
INSERT INTO `dr_tb_doctor_vaccine` VALUES (1,1,1,1.00,1.00,'','A','2014-12-18 22:35:00',4,'2014-12-18 22:35:00',4),(2,1,1,11.00,33.00,'','A','2014-12-18 22:35:25',4,'2014-12-18 22:35:25',4);
/*!40000 ALTER TABLE `dr_tb_doctor_vaccine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_doctor_value`
--

DROP TABLE IF EXISTS `dr_tb_doctor_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_doctor_value` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `service_level` decimal(2,1) DEFAULT NULL,
  `pro_level` decimal(2,1) DEFAULT NULL,
  `facility_level` decimal(2,1) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `booking_count` int(11) DEFAULT NULL,
  `totle_score` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生价值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_doctor_value`
--

LOCK TABLES `dr_tb_doctor_value` WRITE;
/*!40000 ALTER TABLE `dr_tb_doctor_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_tb_doctor_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_effect`
--

DROP TABLE IF EXISTS `dr_tb_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_effect` (
  `id` int(11) NOT NULL COMMENT '主键',
  `type` varchar(1) NOT NULL COMMENT '类型，值未定，A全部，Y疫苗',
  `status` varchar(1) NOT NULL COMMENT '状态，A,I,D',
  `remarks` varchar(500) NOT NULL COMMENT '备注',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='治疗功效';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_effect`
--

LOCK TABLES `dr_tb_effect` WRITE;
/*!40000 ALTER TABLE `dr_tb_effect` DISABLE KEYS */;
INSERT INTO `dr_tb_effect` VALUES (1,'Y','A','','2014-12-10 23:50:21',1,'2014-12-10 23:50:21',1),(2,'A','A','','2014-12-10 23:52:20',1,'2014-12-10 23:52:20',1),(3,'M','A','','2015-01-11 01:29:46',1,'2015-01-11 01:29:46',1),(4,'M','A','','2015-01-11 01:30:09',1,'2015-01-11 01:30:09',1);
/*!40000 ALTER TABLE `dr_tb_effect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_effect_lang`
--

DROP TABLE IF EXISTS `dr_tb_effect_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_effect_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL COMMENT '功效名称',
  `description` varchar(1000) NOT NULL COMMENT '功效详细描述',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='治疗功效多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_effect_lang`
--

LOCK TABLES `dr_tb_effect_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_effect_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_effect_lang` VALUES (1,'en-us','three union','unknown'),(1,'zh-cn','三联','不知道'),(1,'zh-hk','三联','不知道'),(2,'en-us','xiaoermabi','xiaoermabi1'),(2,'zh-cn','小儿麻痹','小儿麻痹'),(2,'zh-hk','小儿麻痹','小二麻痹'),(3,'en-us','体检','X'),(3,'zh-cn','体检','X'),(3,'zh-hk','体检','X'),(4,'en-us','CT脑扫描','CT脑扫描'),(4,'zh-cn','CT脑扫描','CT脑扫描'),(4,'zh-hk','CT脑扫描','CT脑扫描');
/*!40000 ALTER TABLE `dr_tb_effect_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_hospital`
--

DROP TABLE IF EXISTS `dr_tb_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_hospital` (
  `id` int(11) NOT NULL COMMENT '主键',
  `coordinate` varchar(45) NOT NULL,
  `remarks` varchar(1000) NOT NULL COMMENT '备注',
  `status` varchar(1) NOT NULL COMMENT '状态',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_hospital`
--

LOCK TABLES `dr_tb_hospital` WRITE;
/*!40000 ALTER TABLE `dr_tb_hospital` DISABLE KEYS */;
INSERT INTO `dr_tb_hospital` VALUES (1,'aaa','aa','A','2014-12-16 22:20:53',1,'2014-12-16 22:20:53',1);
/*!40000 ALTER TABLE `dr_tb_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_hospital_lang`
--

DROP TABLE IF EXISTS `dr_tb_hospital_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_hospital_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '医院名称',
  `description` varchar(1000) NOT NULL COMMENT '医院描述',
  `address` varchar(1000) NOT NULL COMMENT '医院地址',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_hospital_lang`
--

LOCK TABLES `dr_tb_hospital_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_hospital_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_hospital_lang` VALUES (1,'en-us','aaa','aaa','aaa'),(1,'zh-cn','aaa','aaa','aaa'),(1,'zh-hk','aaa','aaa','aaa');
/*!40000 ALTER TABLE `dr_tb_hospital_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_hot_district`
--

DROP TABLE IF EXISTS `dr_tb_hot_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_hot_district` (
  `id` int(11) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门商业区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_hot_district`
--

LOCK TABLES `dr_tb_hot_district` WRITE;
/*!40000 ALTER TABLE `dr_tb_hot_district` DISABLE KEYS */;
INSERT INTO `dr_tb_hot_district` VALUES (1,''),(2,'');
/*!40000 ALTER TABLE `dr_tb_hot_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_hot_district_lang`
--

DROP TABLE IF EXISTS `dr_tb_hot_district_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_hot_district_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(145) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门片区语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_hot_district_lang`
--

LOCK TABLES `dr_tb_hot_district_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_hot_district_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_hot_district_lang` VALUES (1,'en_us','Causeway Bay-Central-Admiralty'),(1,'zh-cn','铜锣湾-中环-金钟'),(1,'zh-hk','銅鑼灣-中環-金鐘'),(2,'en_us','MongKok-Yau Ma Tei'),(2,'zh-cn','旺角-油麻地'),(2,'zh-hk','旺角-油麻地');
/*!40000 ALTER TABLE `dr_tb_hot_district_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_lang`
--

DROP TABLE IF EXISTS `dr_tb_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_lang` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='可用语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_lang`
--

LOCK TABLES `dr_tb_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_lang` VALUES (1,'普通话'),(2,'广东话'),(3,'英语');
/*!40000 ALTER TABLE `dr_tb_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_member`
--

DROP TABLE IF EXISTS `dr_tb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_member` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL COMMENT '邮箱',
  `mobile` varchar(15) NOT NULL COMMENT '手机号码',
  `password` varchar(60) NOT NULL COMMENT '登录密码',
  `name` varchar(45) NOT NULL COMMENT '名称',
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_member`
--

LOCK TABLES `dr_tb_member` WRITE;
/*!40000 ALTER TABLE `dr_tb_member` DISABLE KEYS */;
INSERT INTO `dr_tb_member` VALUES (1,'','a','d41d8cd98f00b204e9800998ecf8427e','蔡笋','A');
/*!40000 ALTER TABLE `dr_tb_member` ENABLE KEYS */;
UNLOCK TABLES;

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
  `h_status` varchar(1) DEFAULT NULL,
  `h_comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员疫苗预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_member_vaccine_order`
--

LOCK TABLES `dr_tb_member_vaccine_order` WRITE;
/*!40000 ALTER TABLE `dr_tb_member_vaccine_order` DISABLE KEYS */;
INSERT INTO `dr_tb_member_vaccine_order` VALUES (1,'000001','000001',1,'蔡笋','a','','2015-01-07',24,1,1,2,1.00,'P','2014-12-31 03:36:37','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            aaa\n            \n        \n        \n            诊所地址\n            aaa\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n19:30-20:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        请选择预约时间\n        \n            确认预约\n        \n    \n',NULL,NULL,NULL,NULL),(2,'VC20143000001','VC20143000001',1,'蔡笋','a','','2015-01-01',11,1,1,1,1.00,'F','2014-12-31 11:32:13','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-01 16:28:24',NULL,NULL),(3,'VC20143000002','VC20143000002',1,'蔡笋','a','','2015-01-01',20,1,1,1,1.00,'F','2014-12-31 12:13:19','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-01 16:33:01',NULL,NULL),(4,'VC20143000003','VC20143000003',1,'蔡笋','a','','2015-01-04',12,1,1,1,1.00,'P','2014-12-31 12:17:23','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:30-14:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',NULL,NULL,NULL,NULL),(5,'VC201501000001','416791E5-BA24-866B-FAEB-51A9CBEF8CDE',1,'蔡笋','a','','2015-01-08',20,1,1,1,1.00,'C','2015-01-01 22:29:23','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-06 01:49:50',NULL,NULL),(6,'VC201501000002','17B8ADB3-F582-7271-C426-1BE07BE1970C',1,'蔡笋','a','','2015-01-06',1,1,1,1,1.00,'F','2015-01-05 23:48:10','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n8:00-8:30\n12:00-12:30\n16:30-17:00\n17:30-18:00\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-06 00:54:20',NULL,NULL),(7,'VC201501000003','52D6F7D5-14F9-2091-4EE7-C45703428BDF',1,'蔡笋','a','','2015-01-10',1,1,1,1,1.00,'P','2015-01-05 23:51:14','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n8:00-8:30\n16:00-16:30\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',NULL,NULL,NULL,NULL),(8,'VC201501000004','2248793B-B519-721C-25FD-2B89282FA994',1,'蔡笋','a','','2015-01-08',11,1,1,1,1.00,'C','2015-01-06 00:55:01','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n13:00-13:30\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',4,'2015-01-06 01:49:20',NULL,NULL),(9,'VC201501000005','CD7E3F73-5E8B-AF3A-3F03-259B287E324A',1,'蔡笋','a','','2015-01-10',17,1,1,1,1.00,'P','2015-01-06 00:55:22','\n    \n        \n        确认预约信息\n    \n    \n        \n            医生\n            Kevin\n        \n        \n            疫苗\n            脊灰疫苗\n        \n                \n            选择诊所\n            ddd\n            \n        \n        \n            诊所地址\n            wwww\n        \n                \n            预约日期\n            \n        \n        \n            预约时段\n            请选择\n16:00-16:30\n\n        \n        \n            邮箱地址\n            \n        \n        \n            手机号码\n            \n        \n        \n            真实姓名\n            \n        \n        \n            价格 \n            港币1.000\n        \n        \n        \n            确认预约\n        \n    \n',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dr_tb_member_vaccine_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_office`
--

DROP TABLE IF EXISTS `dr_tb_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_office` (
  `id` int(11) NOT NULL COMMENT '主键',
  `coordinate` varchar(45) NOT NULL,
  `remarks` varchar(1000) NOT NULL COMMENT '备注',
  `status` varchar(1) NOT NULL COMMENT '状态',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `hot_district_id` int(11) NOT NULL,
  `station1_id` int(11) NOT NULL,
  `station2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诊所';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_office`
--

LOCK TABLES `dr_tb_office` WRITE;
/*!40000 ALTER TABLE `dr_tb_office` DISABLE KEYS */;
INSERT INTO `dr_tb_office` VALUES (1,'116.387021,40.039448','','A','2014-12-22 00:38:51',1,'2015-01-16 23:15:14',1,1,0,99,4),(2,'116.366899,39.966493','aaaa','A','2014-12-29 16:14:19',1,'2014-12-29 16:14:19',1,0,0,0,0);
/*!40000 ALTER TABLE `dr_tb_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_office_lang`
--

DROP TABLE IF EXISTS `dr_tb_office_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_office_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '诊所名称',
  `description` varchar(1000) NOT NULL COMMENT '诊所描述',
  `address` varchar(1000) NOT NULL COMMENT '诊所地址',
  `open_hour` varchar(1000) NOT NULL COMMENT '营业时间',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诊所多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_office_lang`
--

LOCK TABLES `dr_tb_office_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_office_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_office_lang` VALUES (1,'en-us','dd','ee','www','edds\ndkdljmdl\ndjlkd'),(1,'zh-cn','ddd','eee','wwww','rrfffsddd'),(1,'zh-hk','dd','ee','www','didijd\ndijfof\nrjfdoi'),(2,'en-us','aaa','aaa','aaa','aaa'),(2,'zh-cn','aaa','aaa','aaa','aaa'),(2,'zh-hk','aaa','aaa','aaa','aaa');
/*!40000 ALTER TABLE `dr_tb_office_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_office_openhour`
--

DROP TABLE IF EXISTS `dr_tb_office_openhour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_office_openhour` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL COMMENT '医生',
  `office_id` int(11) NOT NULL COMMENT '诊所',
  `meet_day1` varchar(200) NOT NULL COMMENT '周一开放时间',
  `meet_day2` varchar(200) NOT NULL COMMENT '周二开放时间',
  `meet_day3` varchar(200) NOT NULL COMMENT '周三开放时间',
  `meet_day4` varchar(200) NOT NULL COMMENT '周四开放时间',
  `meet_day5` varchar(200) NOT NULL COMMENT '周五开放时间',
  `meet_day6` varchar(200) NOT NULL COMMENT '周六开放时间',
  `meet_day0` varchar(200) NOT NULL COMMENT '周日开放时间',
  `remarks` varchar(1000) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生诊所工作时间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_office_openhour`
--

LOCK TABLES `dr_tb_office_openhour` WRITE;
/*!40000 ALTER TABLE `dr_tb_office_openhour` DISABLE KEYS */;
INSERT INTO `dr_tb_office_openhour` VALUES (1,1,1,'1,9','1,9,18,20','9,13','11,20','','1,17','12','','A',1,'2014-12-27 00:20:21',4,'2014-12-27 02:20:02'),(2,1,2,'1,2,3,4,8,9,10,11,16,18,25','18','24','','','','2,9,10,16,17,23,24','','A',1,'2014-12-29 16:15:03',1,'2014-12-29 16:15:03');
/*!40000 ALTER TABLE `dr_tb_office_openhour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_requirement`
--

DROP TABLE IF EXISTS `dr_tb_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_requirement` (
  `id` int(11) NOT NULL,
  `submit_user` int(11) NOT NULL COMMENT '提交人',
  `title` varchar(250) NOT NULL COMMENT '需求标题',
  `type` varchar(1) NOT NULL COMMENT '需求类型',
  `description` varchar(1000) NOT NULL COMMENT '需求描述',
  `attachment_1` varchar(250) NOT NULL COMMENT '附件1',
  `attachment_2` varchar(250) NOT NULL COMMENT '附件2',
  `attachment_3` varchar(250) NOT NULL COMMENT '附件3',
  `handling_comment` varchar(1000) NOT NULL COMMENT '处理意见',
  `handling_type` varchar(1) NOT NULL COMMENT '处理类型',
  `handling_user` varchar(45) NOT NULL COMMENT '处理人',
  `review_type` varchar(1) NOT NULL COMMENT '审阅类型',
  `review_comment` varchar(45) NOT NULL COMMENT '审阅评论',
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_requirement`
--

LOCK TABLES `dr_tb_requirement` WRITE;
/*!40000 ALTER TABLE `dr_tb_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_tb_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_specialist`
--

DROP TABLE IF EXISTS `dr_tb_specialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_specialist` (
  `id` int(11) NOT NULL,
  `effect_list` varchar(200) NOT NULL COMMENT '效果列表',
  `remarks` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生专科';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_specialist`
--

LOCK TABLES `dr_tb_specialist` WRITE;
/*!40000 ALTER TABLE `dr_tb_specialist` DISABLE KEYS */;
INSERT INTO `dr_tb_specialist` VALUES (1,'2,3','','A','2015-01-11 01:30:28',1,'2015-01-11 01:30:28','1'),(2,'3,4','','A','2015-01-11 01:30:51',1,'2015-01-12 22:08:18','1');
/*!40000 ALTER TABLE `dr_tb_specialist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_specialist_lang`
--

DROP TABLE IF EXISTS `dr_tb_specialist_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_specialist_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生专科语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_specialist_lang`
--

LOCK TABLES `dr_tb_specialist_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_specialist_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_specialist_lang` VALUES (1,'en-us','小儿科'),(1,'zh-cn','小儿科'),(1,'zh-hk','小儿科'),(2,'en-us','脑残科'),(2,'zh-cn','脑残科'),(2,'zh-hk','脑残科');
/*!40000 ALTER TABLE `dr_tb_specialist_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_subway`
--

DROP TABLE IF EXISTS `dr_tb_subway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_subway` (
  `id` int(11) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地铁线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_subway`
--

LOCK TABLES `dr_tb_subway` WRITE;
/*!40000 ALTER TABLE `dr_tb_subway` DISABLE KEYS */;
INSERT INTO `dr_tb_subway` VALUES (1,''),(2,''),(3,''),(4,''),(5,''),(6,''),(7,''),(8,''),(9,'');
/*!40000 ALTER TABLE `dr_tb_subway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_subway_lang`
--

DROP TABLE IF EXISTS `dr_tb_subway_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_subway_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(145) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_subway_lang`
--

LOCK TABLES `dr_tb_subway_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_subway_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_subway_lang` VALUES (1,'en_us','East Rail Line'),(1,'zh-cn','东铁线'),(1,'zh-hk','東鐵線'),(2,'en_us','Kwun Tong Line'),(2,'zh-cn','观塘线'),(2,'zh-hk','觀塘線'),(3,'en_us','Island Line'),(3,'zh-cn','港岛线'),(3,'zh-hk','港島線'),(4,'en_us','Tsuen Wan Line'),(4,'zh-cn','荃湾线'),(4,'zh-hk','荃灣線'),(5,'en_us','Tseung Kwan O Line'),(5,'zh-cn','将军澳线'),(5,'zh-hk','將軍澳線'),(6,'en_us','Ma On Shan Line'),(6,'zh-cn','马鞍山线'),(6,'zh-hk','馬鞍山線'),(7,'en_us','West Rail Line'),(7,'zh-cn','西铁线'),(7,'zh-hk','西鐵線'),(8,'en_us','Tung Chung Line'),(8,'zh-cn','东涌线'),(8,'zh-hk','東湧線'),(9,'en_us','Airport Express'),(9,'zh-cn','机场快线'),(9,'zh-hk','機場快線');
/*!40000 ALTER TABLE `dr_tb_subway_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_subway_station`
--

DROP TABLE IF EXISTS `dr_tb_subway_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_subway_station` (
  `id` int(11) NOT NULL,
  `subway_id` int(11) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_subway_station`
--

LOCK TABLES `dr_tb_subway_station` WRITE;
/*!40000 ALTER TABLE `dr_tb_subway_station` DISABLE KEYS */;
INSERT INTO `dr_tb_subway_station` VALUES (1,1,''),(2,1,''),(3,1,''),(4,1,''),(5,1,''),(6,1,''),(7,1,''),(8,1,''),(9,1,''),(10,1,''),(11,1,''),(12,1,''),(13,1,''),(14,2,''),(15,2,''),(16,2,''),(17,2,''),(18,2,''),(19,2,''),(20,2,''),(21,2,''),(22,2,''),(23,2,''),(24,2,''),(25,2,''),(26,2,''),(27,2,''),(28,2,''),(29,3,''),(30,3,''),(31,3,''),(32,3,''),(33,3,''),(34,3,''),(35,3,''),(36,3,''),(37,3,''),(38,3,''),(39,3,''),(40,3,''),(41,3,''),(42,3,''),(43,3,''),(44,3,''),(45,3,''),(46,4,''),(47,4,''),(48,4,''),(49,4,''),(50,4,''),(51,4,''),(52,4,''),(53,4,''),(54,4,''),(55,4,''),(56,4,''),(57,4,''),(58,4,''),(59,4,''),(60,4,''),(61,4,''),(62,5,''),(63,5,''),(64,5,''),(65,5,''),(66,5,''),(67,5,''),(68,5,''),(69,5,''),(70,6,''),(71,6,''),(72,6,''),(73,6,''),(74,6,''),(75,6,''),(76,6,''),(77,6,''),(78,6,''),(79,7,''),(80,7,''),(81,7,''),(82,7,''),(83,7,''),(84,7,''),(85,7,''),(86,7,''),(87,7,''),(88,7,''),(89,7,''),(90,7,''),(91,8,''),(92,8,''),(93,8,''),(94,8,''),(95,8,''),(96,8,''),(97,8,''),(98,8,''),(99,9,''),(100,9,''),(101,9,''),(102,9,'');
/*!40000 ALTER TABLE `dr_tb_subway_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_subway_station_lang`
--

DROP TABLE IF EXISTS `dr_tb_subway_station_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_subway_station_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(145) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_subway_station_lang`
--

LOCK TABLES `dr_tb_subway_station_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_subway_station_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_subway_station_lang` VALUES (1,'en_us','Hung Hom '),(1,'zh-cn','红磡'),(1,'zh-hk','紅磡'),(2,'en_us','Mong Kok East'),(2,'zh-cn','旺角东'),(2,'zh-hk','旺角東'),(3,'en_us','Kowloon Tong'),(3,'zh-cn','九龙塘'),(3,'zh-hk','九龍塘'),(4,'en_us','Tai Wai '),(4,'zh-cn','大围'),(4,'zh-hk','大圍'),(5,'en_us','Sha Tin '),(5,'zh-cn','沙田'),(5,'zh-hk','沙田'),(6,'en_us','Fo Tan '),(6,'zh-cn','火炭'),(6,'zh-hk','火炭'),(7,'en_us','University '),(7,'zh-cn','大学'),(7,'zh-hk','大學'),(8,'en_us','Tai Po Market '),(8,'zh-cn','大埔墟'),(8,'zh-hk','大埔墟'),(9,'en_us','Tai Wo '),(9,'zh-cn','太和'),(9,'zh-hk','太和'),(10,'en_us','Fanling '),(10,'zh-cn','粉岭'),(10,'zh-hk','粉嶺'),(11,'en_us','Sheung Shui '),(11,'zh-cn','上水'),(11,'zh-hk','上水'),(12,'en_us','Lo Wu '),(12,'zh-cn','罗湖'),(12,'zh-hk','羅湖'),(13,'en_us','Lok Ma Chau'),(13,'zh-cn','落马洲'),(13,'zh-hk','落馬洲'),(14,'en_us','Yau Ma Tei '),(14,'zh-cn','油麻地'),(14,'zh-hk','油麻地'),(15,'en_us','Mong Kok '),(15,'zh-cn','旺角'),(15,'zh-hk','旺角'),(16,'en_us','Prince Edward '),(16,'zh-cn','太子'),(16,'zh-hk','太子'),(17,'en_us','Shek Kip Mei '),(17,'zh-cn','石硖尾'),(17,'zh-hk','石硖尾'),(18,'en_us','Kowloon Tong'),(18,'zh-cn','九龙塘'),(18,'zh-hk','九龍塘'),(19,'en_us','Lok Fu '),(19,'zh-cn','乐富'),(19,'zh-hk','樂富'),(20,'en_us','Wong Tai Sin '),(20,'zh-cn','黄大仙'),(20,'zh-hk','黃大仙'),(21,'en_us','Diamond Hill '),(21,'zh-cn','钻石山'),(21,'zh-hk','鑽石山'),(22,'en_us','Choi Hung '),(22,'zh-cn','彩虹'),(22,'zh-hk','彩虹'),(23,'en_us','Kowloon Bay '),(23,'zh-cn','九龙湾'),(23,'zh-hk','九龍灣'),(24,'en_us','Ngau Tau Kok '),(24,'zh-cn','牛头角'),(24,'zh-hk','牛頭角'),(25,'en_us','Kwun Tong '),(25,'zh-cn','观塘'),(25,'zh-hk','觀塘'),(26,'en_us','Lam Tin '),(26,'zh-cn','蓝田'),(26,'zh-hk','藍田'),(27,'en_us','Yau Tong '),(27,'zh-cn','油塘'),(27,'zh-hk','油塘'),(28,'en_us','Tiu Keng Leng'),(28,'zh-cn','调景岭'),(28,'zh-hk','調景嶺'),(29,'en_us','Kennedy Town'),(29,'zh-cn','坚尼地城'),(29,'zh-hk','堅尼地城'),(30,'en_us','HKU'),(30,'zh-cn','香港大学'),(30,'zh-hk','香港大學'),(31,'en_us','Sai Ying Pun'),(31,'zh-cn','西营盘'),(31,'zh-hk','西營盤'),(32,'en_us','Sheung Wan '),(32,'zh-cn','上环'),(32,'zh-hk','上環'),(33,'en_us','Central '),(33,'zh-cn','中环'),(33,'zh-hk','中環'),(34,'en_us','Admiralty '),(34,'zh-cn','金钟'),(34,'zh-hk','金鍾'),(35,'en_us','Wan Chai '),(35,'zh-cn','湾仔'),(35,'zh-hk','灣仔'),(36,'en_us','Causeway Bay '),(36,'zh-cn','铜锣湾'),(36,'zh-hk','銅鑼灣'),(37,'en_us','Tin Hau '),(37,'zh-cn','天后'),(37,'zh-hk','天後'),(38,'en_us','Fortress Hill '),(38,'zh-cn','炮台山'),(38,'zh-hk','炮台山'),(39,'en_us','North Point '),(39,'zh-cn','北角'),(39,'zh-hk','北角'),(40,'en_us','Quarry Bay '),(40,'zh-cn','鱼则鱼涌'),(40,'zh-hk','魚則魚湧'),(41,'en_us','Tai Koo '),(41,'zh-cn','太古'),(41,'zh-hk','太古'),(42,'en_us','Sai Wan Ho '),(42,'zh-cn','西湾河'),(42,'zh-hk','西灣河'),(43,'en_us','Shau Kei Wan '),(43,'zh-cn','筲箕湾'),(43,'zh-hk','筲箕灣'),(44,'en_us','Heng Fa Chuen '),(44,'zh-cn','杏花村'),(44,'zh-hk','杏花村'),(45,'en_us','Chai Wan'),(45,'zh-cn','柴湾'),(45,'zh-hk','柴灣'),(46,'en_us','Central '),(46,'zh-cn','中环'),(46,'zh-hk','中環'),(47,'en_us','Admiralty '),(47,'zh-cn','金钟'),(47,'zh-hk','金鍾'),(48,'en_us','Tsim Sha Tsui'),(48,'zh-cn','尖沙咀'),(48,'zh-hk','尖沙咀'),(49,'en_us','Jordan '),(49,'zh-cn','佐敦'),(49,'zh-hk','佐敦'),(50,'en_us','Yau Ma Tei '),(50,'zh-cn','油麻地'),(50,'zh-hk','油麻地'),(51,'en_us','Mong Kok '),(51,'zh-cn','旺角'),(51,'zh-hk','旺角'),(52,'en_us','Prince Edward '),(52,'zh-cn','太子'),(52,'zh-hk','太子'),(53,'en_us','Sham Shui Po'),(53,'zh-cn','深水涉'),(53,'zh-hk','深水涉'),(54,'en_us','Cheung Sha Wan'),(54,'zh-cn','长沙湾'),(54,'zh-hk','長沙灣'),(55,'en_us','Lai Chi Kok '),(55,'zh-cn','荔枝角'),(55,'zh-hk','荔枝角'),(56,'en_us','Mei Foo'),(56,'zh-cn','美孚'),(56,'zh-hk','美孚'),(57,'en_us','Lai King '),(57,'zh-cn','荔景'),(57,'zh-hk','荔景'),(58,'en_us','Kwai Fong '),(58,'zh-cn','葵芳'),(58,'zh-hk','葵芳'),(59,'en_us','Kwai Hing '),(59,'zh-cn','葵兴'),(59,'zh-hk','葵興'),(60,'en_us','Tai Wo Hau'),(60,'zh-cn','大窝口'),(60,'zh-hk','大窩口'),(61,'en_us','Tsuen Wan '),(61,'zh-cn','荃湾'),(61,'zh-hk','荃灣'),(62,'en_us','North Point '),(62,'zh-cn','北角'),(62,'zh-hk','北角'),(63,'en_us','Quarry Bay '),(63,'zh-cn','鱼则鱼涌'),(63,'zh-hk','魚則魚湧'),(64,'en_us','Yau Tong '),(64,'zh-cn','油塘'),(64,'zh-hk','油塘'),(65,'en_us','Tiu Keng Leng '),(65,'zh-cn','调景岭'),(65,'zh-hk','調景嶺'),(66,'en_us','Tseung Kwan O'),(66,'zh-cn','将军澳'),(66,'zh-hk','將軍澳'),(67,'en_us','Hang Hau '),(67,'zh-cn','坑口'),(67,'zh-hk','坑口'),(68,'en_us','Po Lam '),(68,'zh-cn','宝琳'),(68,'zh-hk','寶琳'),(69,'en_us','Lohas Park'),(69,'zh-cn','康城'),(69,'zh-hk','康城'),(70,'en_us','Tai Wai '),(70,'zh-cn','大围'),(70,'zh-hk','大圍'),(71,'en_us','Che Kung Temple'),(71,'zh-cn','车公庙'),(71,'zh-hk','車公廟'),(72,'en_us','Sha Tin Wai'),(72,'zh-cn','沙田围'),(72,'zh-hk','沙田圍'),(73,'en_us','City One'),(73,'zh-cn','第一城'),(73,'zh-hk','第一城'),(74,'en_us','Shek Mun'),(74,'zh-cn','石门'),(74,'zh-hk','石門'),(75,'en_us','Tai Shui Hang'),(75,'zh-cn','大水坑'),(75,'zh-hk','大水坑'),(76,'en_us','Heng On'),(76,'zh-cn','恒安'),(76,'zh-hk','恒安'),(77,'en_us','Ma On Shan'),(77,'zh-cn','马鞍山'),(77,'zh-hk','馬鞍山'),(78,'en_us','Wu Kai Sha'),(78,'zh-cn','乌溪沙'),(78,'zh-hk','烏溪沙'),(79,'en_us','Hung Hom '),(79,'zh-cn','红磡'),(79,'zh-hk','紅磡'),(80,'en_us','East Tsim Sha Tsui '),(80,'zh-cn','尖东'),(80,'zh-hk','尖東'),(81,'en_us','Austin'),(81,'zh-cn','柯士甸'),(81,'zh-hk','柯士甸'),(82,'en_us','Nam Cheong'),(82,'zh-cn','南昌'),(82,'zh-hk','南昌'),(83,'en_us','Mei Foo'),(83,'zh-cn','美孚'),(83,'zh-hk','美孚'),(84,'en_us','Tsuen Wan West'),(84,'zh-cn','荃湾西'),(84,'zh-hk','荃灣西'),(85,'en_us','Kam Sheung Road'),(85,'zh-cn','锦上路'),(85,'zh-hk','錦上路'),(86,'en_us','Yuen Long'),(86,'zh-cn','元朗'),(86,'zh-hk','元朗'),(87,'en_us','Long Ping'),(87,'zh-cn','朗屏'),(87,'zh-hk','朗屏'),(88,'en_us','Tin Shui Wai'),(88,'zh-cn','天水围'),(88,'zh-hk','天水圍'),(89,'en_us','Siu Hong'),(89,'zh-cn','兆康'),(89,'zh-hk','兆康'),(90,'en_us','Tuen Mun'),(90,'zh-cn','屯门'),(90,'zh-hk','屯門'),(91,'en_us','Tung Chung '),(91,'zh-cn','东涌'),(91,'zh-hk','東湧'),(92,'en_us','Sunny Bay'),(92,'zh-cn','欣澳'),(92,'zh-hk','欣澳'),(93,'en_us','Tsing Yi '),(93,'zh-cn','青衣'),(93,'zh-hk','青衣'),(94,'en_us','Lai King '),(94,'zh-cn','荔景'),(94,'zh-hk','荔景'),(95,'en_us','Nam Cheong '),(95,'zh-cn','南昌'),(95,'zh-hk','南昌'),(96,'en_us','Olympic '),(96,'zh-cn','奥运'),(96,'zh-hk','奧運'),(97,'en_us','Kowloon '),(97,'zh-cn','九龙'),(97,'zh-hk','九龍'),(98,'en_us','Hong Kong '),(98,'zh-cn','香港'),(98,'zh-hk','香港'),(99,'en_us','Airport '),(99,'zh-cn','机场'),(99,'zh-hk','機場'),(100,'en_us','Tsing Yi '),(100,'zh-cn','青衣'),(100,'zh-hk','青衣'),(101,'en_us','Kowloon '),(101,'zh-cn','九龙'),(101,'zh-hk','九龍'),(102,'en_us','Hong Kong '),(102,'zh-cn','香港'),(102,'zh-hk','香港');
/*!40000 ALTER TABLE `dr_tb_subway_station_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_time`
--

DROP TABLE IF EXISTS `dr_tb_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_time` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `start_time` varchar(45) NOT NULL,
  `end_time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='期段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_time`
--

LOCK TABLES `dr_tb_time` WRITE;
/*!40000 ALTER TABLE `dr_tb_time` DISABLE KEYS */;
INSERT INTO `dr_tb_time` VALUES (1,'08:00-08:30','08:00','08:30'),(2,'08:30-09:00','08:30','09:00'),(3,'09:00-09:30','09:00','09:30'),(4,'09:30-10:00','09:30','10:00'),(5,'10:00-10:30','10:00','10:30'),(6,'10:30-11:00','10:30','11:00'),(7,'11:00-11:30','11:00','11:30'),(8,'11:30-12:00','11:30','12:00'),(9,'12:00-12:30','12:00','12:30'),(10,'12:30-13:00','12:30','13:00'),(11,'13:00-13:30','13:00','13:30'),(12,'13:30-14:00','13:30','14:00'),(13,'14:00-14:30','14:00','14:30'),(14,'14:30-15:00','14:30','15:00'),(15,'15:00-15:30','15:00','15:30'),(16,'15:30-16:00','15:30','16:00'),(17,'16:00-16:30','16:00','16:30'),(18,'16:30-17:00','16:30','17:00'),(19,'17:00-17:30','17:00','17:30'),(20,'17:30-18:00','17:30','18:00'),(21,'18:00-18:30','18:00','18:30'),(22,'18:30-19:00','18:30','19:00'),(23,'19:00-19:30','19:00','19:30'),(24,'19:30-20:00','19:30','20:00'),(25,'20:00-20:30','20:00','20:30'),(26,'20:30-21:00','20:30','21:00');
/*!40000 ALTER TABLE `dr_tb_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_used_group`
--

DROP TABLE IF EXISTS `dr_tb_used_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_used_group` (
  `id` int(11) NOT NULL COMMENT '主键',
  `type` varchar(1) NOT NULL COMMENT '类型，A无限制 Y，疫苗专用',
  `min_age` int(11) NOT NULL COMMENT '最小年龄',
  `max_age` int(11) NOT NULL COMMENT '最大年龄',
  `sexual` varchar(1) NOT NULL COMMENT '适用性别A,M,F',
  `remarks` varchar(500) NOT NULL COMMENT '备注',
  `status` varchar(1) NOT NULL COMMENT '状态，A,I,D',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='适用人群';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_used_group`
--

LOCK TABLES `dr_tb_used_group` WRITE;
/*!40000 ALTER TABLE `dr_tb_used_group` DISABLE KEYS */;
INSERT INTO `dr_tb_used_group` VALUES (1,'A',0,99,'F','ss','A','2014-12-10 23:54:22',1,'2014-12-10 23:54:22',1),(2,'Y',0,99,'M','','A','2014-12-10 23:55:27',1,'2014-12-10 23:55:27',1),(3,'Y',0,3,'A','111','A','2014-12-10 23:56:22',1,'2014-12-10 23:56:34',1);
/*!40000 ALTER TABLE `dr_tb_used_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_used_group_lang`
--

DROP TABLE IF EXISTS `dr_tb_used_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_used_group_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL COMMENT '适用人群名称',
  `description` varchar(1000) NOT NULL COMMENT '适用人群描述',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='使用人群多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_used_group_lang`
--

LOCK TABLES `dr_tb_used_group_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_used_group_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_used_group_lang` VALUES (1,'en-us','women only','you fu ke ji bing de funv'),(1,'zh-cn','妇女专用','有妇科疾病的妇女'),(1,'zh-hk','妇女专用','有妇科疾病的妇女'),(2,'en-us','Man Only','an bing zhuangyong'),(2,'zh-cn','男性专用','有暗病的男人专用'),(2,'zh-hk','男性专用','有暗病的男人专用'),(3,'en-us','Baby Only','Baby Only'),(3,'zh-cn','婴儿专用','婴儿专用'),(3,'zh-hk','婴儿专用','婴儿专用');
/*!40000 ALTER TABLE `dr_tb_used_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_user`
--

DROP TABLE IF EXISTS `dr_tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_user` (
  `id` int(11) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `is_admin` varchar(1) NOT NULL,
  `remarks` varchar(350) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_user`
--

LOCK TABLES `dr_tb_user` WRITE;
/*!40000 ALTER TABLE `dr_tb_user` DISABLE KEYS */;
INSERT INTO `dr_tb_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator','alucard263096@126.com','Y','please let me know if you have any problems in this CMS','A','2014-11-30 00:01:17',1,'2014-11-30 00:03:11',1),(2,'steve','e19d5cd5af0378da05f63f891c7467af','Steve.cai','steve.cai@126.com','N','normal user','A','2014-11-30 14:30:06',1,'2014-11-30 14:30:06',1);
/*!40000 ALTER TABLE `dr_tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine`
--

DROP TABLE IF EXISTS `dr_tb_vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine` (
  `id` int(11) NOT NULL COMMENT '主键',
  `code` varchar(45) NOT NULL COMMENT '疫苗编号',
  `effect_list` varchar(300) NOT NULL COMMENT '功效',
  `image` varchar(145) NOT NULL,
  `seq` varchar(10) NOT NULL DEFAULT '0',
  `used_group_id` varchar(1000) NOT NULL COMMENT '适用人群',
  `is_hk_project` varchar(1) NOT NULL COMMENT '是否为香港计划内疫苗',
  `is_china_project` varchar(1) NOT NULL COMMENT '是否为中国计划内疫苗',
  `standard_price` decimal(10,3) NOT NULL COMMENT '疫苗接种标准价格',
  `discount` int(11) NOT NULL COMMENT '折扣',
  `content` text NOT NULL,
  `remarks` varchar(500) NOT NULL COMMENT '备注',
  `status` varchar(1) NOT NULL COMMENT '状态A,I,D',
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine`
--

LOCK TABLES `dr_tb_vaccine` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine` VALUES (1,'000198656','1','150128140516B08F4A44A820EC7BF46541AFB04FFA7.jpg','1','1','Y','Y',1000.000,11,'<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: bold; line-height: normal; text-align: right;\">产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法产生不良反应的解决方法</span></p>\n','','A','2015-01-28 14:16:20',1,'2015-01-28 14:16:20',1),(2,'NPE200','1','15020300029Chrysanthemum.jpg','1','1','Y','N',100.000,1,'','','A','2015-02-03 00:26:47',1,'2015-02-03 00:26:47',1);
/*!40000 ALTER TABLE `dr_tb_vaccine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_category`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_category` (
  `id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `seq` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗一级分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_category`
--

LOCK TABLES `dr_tb_vaccine_category` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_category` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_category` VALUES (1,'A','','2015-01-17 00:11:53',1,'2015-01-17 00:11:53',1,'');
/*!40000 ALTER TABLE `dr_tb_vaccine_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_category_lang`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_category_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗一级分类多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_category_lang`
--

LOCK TABLES `dr_tb_vaccine_category_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_category_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_category_lang` VALUES (1,'en-us','女性'),(1,'zh-cn','女性'),(1,'zh-hk','女性');
/*!40000 ALTER TABLE `dr_tb_vaccine_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_category_sub`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_category_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_category_sub` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '一级分类',
  `vaccine_list` varchar(500) NOT NULL COMMENT '疫苗列表',
  `status` varchar(45) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `seq` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗二级分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_category_sub`
--

LOCK TABLES `dr_tb_vaccine_category_sub` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_category_sub` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_category_sub` VALUES (1,1,'1','A','','2015-01-17 00:13:51',1,'2015-01-17 00:13:51',1,'');
/*!40000 ALTER TABLE `dr_tb_vaccine_category_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_category_sub_lang`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_category_sub_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_category_sub_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_category_sub_lang`
--

LOCK TABLES `dr_tb_vaccine_category_sub_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_category_sub_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_category_sub_lang` VALUES (1,'en-us','子宫疫苗'),(1,'zh-cn','子宫疫苗'),(1,'zh-hk','子宫疫苗');
/*!40000 ALTER TABLE `dr_tb_vaccine_category_sub_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_lang`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL COMMENT '疫苗名称',
  `summary` varchar(1000) NOT NULL COMMENT '疫苗简述',
  `used_group` varchar(300) NOT NULL COMMENT '适用人群文本',
  `effect` varchar(300) NOT NULL COMMENT '治疗效果文本',
  `injection_count` varchar(300) NOT NULL COMMENT '注射次数',
  `injection_time` varchar(300) NOT NULL COMMENT '接种时间',
  `injection_season` varchar(300) NOT NULL COMMENT '适用季节',
  `description` varchar(1000) NOT NULL COMMENT '疫苗详细介绍',
  `caution` varchar(1000) NOT NULL COMMENT '接种注意事项',
  `bad_effect` varchar(1000) NOT NULL COMMENT '可能产生的不良反应',
  `bad_effect_resolve` varchar(1000) NOT NULL COMMENT '产生不良反应的解决方法',
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_lang`
--

LOCK TABLES `dr_tb_vaccine_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_lang` VALUES (1,'en-us','疫苗名称','疫苗简述','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍','接种注意事项','可能产生的不良反应','产生不良反应的解决方法'),(1,'zh-cn','疫苗名称','疫苗简述','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍','接种注意事项','可能产生的不良反应','产生不良反应的解决方法'),(1,'zh-hk','疫苗名称','疫苗简述','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍','接种注意事项','可能产生的不良反应','产生不良反应的解决方法'),(2,'en-us','2V1 HPV子宫疫苗','2V1 HPV子宫疫苗','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍\n疫苗详细介绍\n疫苗详细介绍','接种注意事项接种注意事项\n接种注意事项','可能产生的不良反应','产生不良反应的解决方法'),(2,'zh-cn','2V1 HPV子宫疫苗','2V1 HPV子宫疫苗','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍\n疫苗详细介绍\n疫苗详细介绍','接种注意事项接种注意事项\n接种注意事项','可能产生的不良反应','产生不良反应的解决方法'),(2,'zh-hk','2V1 HPV子宫疫苗','2V1 HPV子宫疫苗','适用人群文本','治疗效果文本','接种次数','接种时间','接种季节','疫苗详细介绍\n疫苗详细介绍\n疫苗详细介绍','接种注意事项接种注意事项\n接种注意事项','可能产生的不良反应','产生不良反应的解决方法');
/*!40000 ALTER TABLE `dr_tb_vaccine_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_promoted`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_promoted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_promoted` (
  `id` int(11) NOT NULL,
  `vaccine_list` varchar(500) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_user` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_promoted`
--

LOCK TABLES `dr_tb_vaccine_promoted` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_promoted` DISABLE KEYS */;
INSERT INTO `dr_tb_vaccine_promoted` VALUES (1,'1,2','2015-01-16 17:18:23',1,'2015-02-03 00:35:17',1,'aa');
/*!40000 ALTER TABLE `dr_tb_vaccine_promoted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_vaccine_value`
--

DROP TABLE IF EXISTS `dr_tb_vaccine_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_vaccine_value` (
  `id` int(11) NOT NULL,
  `vaccine_id` int(11) NOT NULL,
  `booking_count` int(11) NOT NULL COMMENT '已预约数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫苗价值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_vaccine_value`
--

LOCK TABLES `dr_tb_vaccine_value` WRITE;
/*!40000 ALTER TABLE `dr_tb_vaccine_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_tb_vaccine_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_weekday`
--

DROP TABLE IF EXISTS `dr_tb_weekday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_weekday` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作日';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_weekday`
--

LOCK TABLES `dr_tb_weekday` WRITE;
/*!40000 ALTER TABLE `dr_tb_weekday` DISABLE KEYS */;
INSERT INTO `dr_tb_weekday` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);
/*!40000 ALTER TABLE `dr_tb_weekday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_tb_weekday_lang`
--

DROP TABLE IF EXISTS `dr_tb_weekday_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_tb_weekday_lang` (
  `oid` int(11) NOT NULL,
  `lang` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`oid`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作日多语言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_tb_weekday_lang`
--

LOCK TABLES `dr_tb_weekday_lang` WRITE;
/*!40000 ALTER TABLE `dr_tb_weekday_lang` DISABLE KEYS */;
INSERT INTO `dr_tb_weekday_lang` VALUES (1,'en-us','Monday'),(1,'zh-cn','星期一'),(1,'zh-sc','星期一'),(2,'en-us','Tuesday'),(2,'zh-cn','星期二'),(2,'zh-sc','星期二'),(3,'en-us','Wednesday'),(3,'zh-cn','星期三'),(3,'zh-sc','星期三'),(4,'en-us','Thursday'),(4,'zh-cn','星期四'),(4,'zh-sc','星期四'),(5,'en-us','Friday'),(5,'zh-cn','星期五'),(5,'zh-sc','星期五'),(6,'en-us','Saturday'),(6,'zh-cn','星期六'),(6,'zh-sc','星期六'),(7,'en-us','Sunday'),(7,'zh-cn','星期日'),(7,'zh-sc','星期日');
/*!40000 ALTER TABLE `dr_tb_weekday_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dr_v_district_block`
--

DROP TABLE IF EXISTS `dr_v_district_block`;
/*!50001 DROP VIEW IF EXISTS `dr_v_district_block`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dr_v_district_block` AS SELECT 
 1 AS `id`,
 1 AS `district_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dr_v_district_block_lang`
--

DROP TABLE IF EXISTS `dr_v_district_block_lang`;
/*!50001 DROP VIEW IF EXISTS `dr_v_district_block_lang`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dr_v_district_block_lang` AS SELECT 
 1 AS `oid`,
 1 AS `block_name`,
 1 AS `district_name`,
 1 AS `fullname`,
 1 AS `lang`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dr_v_subway_station`
--

DROP TABLE IF EXISTS `dr_v_subway_station`;
/*!50001 DROP VIEW IF EXISTS `dr_v_subway_station`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dr_v_subway_station` AS SELECT 
 1 AS `id`,
 1 AS `subway_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dr_v_subway_station_lang`
--

DROP TABLE IF EXISTS `dr_v_subway_station_lang`;
/*!50001 DROP VIEW IF EXISTS `dr_v_subway_station_lang`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dr_v_subway_station_lang` AS SELECT 
 1 AS `oid`,
 1 AS `subway_name`,
 1 AS `station_name`,
 1 AS `fullname`,
 1 AS `lang`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'medicalplatform'
--

--
-- Dumping routines for database 'medicalplatform'
--

--
-- Final view structure for view `dr_v_district_block`
--

/*!50001 DROP VIEW IF EXISTS `dr_v_district_block`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dr_v_district_block` AS select `b`.`id` AS `id`,`b`.`district_id` AS `district_id` from (`dr_tb_district` `a` join `dr_tb_block` `b` on((`a`.`id` = `b`.`district_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dr_v_district_block_lang`
--

/*!50001 DROP VIEW IF EXISTS `dr_v_district_block_lang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dr_v_district_block_lang` AS select `a`.`id` AS `oid`,`b`.`name` AS `block_name`,`c`.`name` AS `district_name`,concat(`c`.`name`,' - ',`b`.`name`) AS `fullname`,`b`.`lang` AS `lang` from ((`dr_tb_block` `a` join `dr_tb_block_lang` `b` on((`a`.`id` = `b`.`oid`))) join `dr_tb_district_lang` `c` on(((`a`.`district_id` = `c`.`oid`) and (`b`.`lang` = `c`.`lang`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dr_v_subway_station`
--

/*!50001 DROP VIEW IF EXISTS `dr_v_subway_station`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dr_v_subway_station` AS select `b`.`id` AS `id`,`b`.`subway_id` AS `subway_id` from (`dr_tb_subway` `a` join `dr_tb_subway_station` `b` on((`a`.`id` = `b`.`subway_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dr_v_subway_station_lang`
--

/*!50001 DROP VIEW IF EXISTS `dr_v_subway_station_lang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dr_v_subway_station_lang` AS select `a`.`id` AS `oid`,`b`.`name` AS `subway_name`,`c`.`name` AS `station_name`,concat(`c`.`name`,' - ',`b`.`name`) AS `fullname`,`b`.`lang` AS `lang` from ((`dr_tb_subway_station` `a` join `dr_tb_subway_station_lang` `b` on((`a`.`id` = `b`.`oid`))) join `dr_tb_subway_lang` `c` on(((`a`.`subway_id` = `c`.`oid`) and (`b`.`lang` = `c`.`lang`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-03  0:54:47
