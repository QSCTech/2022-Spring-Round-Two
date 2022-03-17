-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: notify3
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `notify3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `notify3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notify3`;

--
-- Table structure for table `0_notices`
--

DROP TABLE IF EXISTS `0_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `0_notices` (
  `notice_id` int unsigned NOT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `faculty` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` blob NOT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `clicks` int unsigned DEFAULT '0',
  `release_time` timestamp NOT NULL,
  `appendixes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `0_notices` VALUES (11624,'【志愿者】计软学院亚（残）运会志愿者名单公示','计算机科学与技术学院','学生工作;团建工作;',_binary '<div><p>各位同学：</p><p>根据浙江大学团委《关于组织开展2022年杭州亚运志愿者院级第二轮面试的通知》要求，我院亚运会、亚残运会志愿者第二轮选拔已结束，最终入选志愿者名单公示如下：</p><p><img src=\"http://cspo.zju.edu.cn/_ueditor/themes/default/images/icon_pdf.gif\"><a href=\"http://cspo.zju.edu.cn/_upload/article/files/ed/7e/ef04b8854e75bffd4ad25515edce/9191ba6c-7333-476c-b622-7e5e0008b1dd.pdf\">计软学院亚（残）运会志愿者名单.pdf</a></p><p>名单公示期为2022年1月6日至2022年1月10日，期间如有异议，可联系学院团委，公示期后不再接受调整。</p><p>联系人：李老师，邮箱：zjucsqz@163.com，电话：87951251。</p><p><br></p><p><br></p><p>计算机科学与技术学院和软件学院团委</p><p>2022年1月6日</p></div>','http://cspo.zju.edu.cn/2022/0106/c27178a2473608/page.htm',0,'2022-01-05 16:00:00','')