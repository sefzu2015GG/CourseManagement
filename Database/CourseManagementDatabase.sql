-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: curvar
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `20150930183602_choseinfo`
--

DROP TABLE IF EXISTS `20150930183602_choseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930183602_choseinfo` (
  `chosenum` varchar(32) NOT NULL DEFAULT '',
  `coursenum` varchar(16) DEFAULT NULL,
  `weektime` varchar(10) DEFAULT NULL,
  `teachername` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chosenum`),
  KEY `coursenum` (`coursenum`),
  CONSTRAINT `20150930183602_choseinfo_ibfk_1` FOREIGN KEY (`coursenum`) REFERENCES `20150930183602_courseinfo` (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930183602_choseinfo`
--

LOCK TABLES `20150930183602_choseinfo` WRITE;
/*!40000 ALTER TABLE `20150930183602_choseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `20150930183602_choseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930183602_courseinfo`
--

DROP TABLE IF EXISTS `20150930183602_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930183602_courseinfo` (
  `coursenum` varchar(16) NOT NULL,
  `Grade` varchar(8) DEFAULT NULL,
  `marjor` varchar(64) DEFAULT NULL,
  `peoplenum` int(11) DEFAULT '0',
  `coursename` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `credit` float DEFAULT '0',
  `period` int(11) DEFAULT '0',
  `testperiod` int(11) DEFAULT '0',
  `fuckcomputerperiod` int(11) DEFAULT '0',
  PRIMARY KEY (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930183602_courseinfo`
--

LOCK TABLES `20150930183602_courseinfo` WRITE;
/*!40000 ALTER TABLE `20150930183602_courseinfo` DISABLE KEYS */;
INSERT INTO `20150930183602_courseinfo` VALUES ('03120210','2012','计算机科学与技术',87,'计算机外部设备',' 专业选修',2,32,0,0),('03120211','2012','计算机科学与技术',87,'软件可靠性与可信软件',' 专业选修',2,32,0,0),('03120212','2012','计算机科学与技术',87,'网络工程应用开发技术',' 专业选修',2,32,0,0),('03120213','2012','计算机科学与技术',87,'云计算',' 专业选修',2,32,0,0),('03120214','2013','计算机科学与技术',1,'EDA技术',' 专业方向（限选）1',2,32,0,16),('03120215','2013','计算机科学与技术',1,'Java语言程序设计',' 实践选修',1.5,36,0,18),('03120216','2013','计算机科学与技术',1,'Linux操作系统设计实践',' 实践选修',1.5,36,0,0),('03120217','2013','计算机科学与技术',1,'Web程序设计',' 专业方向（限选）2',2,32,0,8),('03120218','2013','计算机科学与技术',1,'编译方法',' 学科必修',3,48,0,0),('03120219','2013','计算机科学与技术',1,'编译系统设计实践',' 实践选修',1.5,36,0,0),('03120220','2013','计算机科学与技术',1,'计算方法',' 学科必修',2,32,0,0),('03120221','2013','计算机科学与技术',1,'计算机图形学',' 专业方向（限选）3',2,32,0,0),('03120222','2013','计算机科学与技术',1,'计算机图形学综合实验',' 实践选修',1.5,36,0,0),('03120223','2013','计算机科学与技术',1,'计算机网络体系结构',' 专业方向（限选）1',2,32,0,0),('03120224','2013','计算机科学与技术',1,'计算机系统结构',' 学科必修',3,48,0,0),('03120225','2013','计算机科学与技术',1,'宽带网及宽带接入技术',' 专业选修',2,32,0,0),('03120226','2013','计算机科学与技术',1,'面向对象设计方法(UML)',' 专业方向（限选）2',2,32,0,0),('03120227','2013','计算机科学与技术',1,'人工智能',' 专业必修（限选）',2,32,0,0),('03120228','2013','计算机科学与技术',1,'软件工程A',' 专业必修（限选）',3,48,0,0),('03120229','2013','计算机科学与技术',1,'软件工程实践',' 实践选修',2,48,0,0),('0312023','2012','计算机科学与技术',87,'Internet技术与协议分析实验',' 实践选修',1,24,0,0),('03120230','2013','计算机科学与技术',1,'软件体系结构',' 专业方向（限选）2',2,32,0,0),('03120231','2013','计算机科学与技术',1,'数据挖掘技术',' 专业方向（限选）3',2,32,0,0),('03120232','2013','计算机科学与技术',1,'现代计算机接口技术',' 专业必修（限选）',2,32,0,0),('03120233','2013','计算机科学与技术',1,'现代计算机接口技术实践',' 实践选修',1.5,36,0,0),('03120234','2013','计算机科学与技术',1,'现代搜索引擎技术及应用',' 专业选修',2,32,0,0),('03120235','2014','计算机类',191,'IEEE Micromouse 原理与实践B（企业开课）',' 专业选修',2,32,16,0),('03120236','2014','计算机类',191,'离散数学A',' 学科必修',4.5,72,0,0),('03120237','2014','计算机类',191,'数字电路与逻辑设计',' 学科必修',3,48,0,0),('03120238','2014','计算机类',191,'数字逻辑电路设计',' 实践选修',2,48,0,0),('03120239','2014','计算机类',191,'算法与数据结构',' 学科必修',5,80,0,28),('0312024','2012','计算机科学与技术',87,'IT企业项目实训',' 实践选修',2,48,0,0),('03120240','2015','计算机类',1,'高级语言程序设计',' 学科必修',4,64,0,32),('03120241','2015','计算机类',1,'计算机导论',' 学科必修',1.5,24,0,0),('03120242','2015','计算机类',1,'认识实习（计算机基础训练）',' 实践环节',1,24,0,0),('03120243','2015','计算机类',1,'线性代数',' 公共必修',2,32,0,0),('0312025','2012','计算机科学与技术',87,'多媒体通信技术',' 专业选修',2,32,0,0),('0312026','2012','计算机科学与技术',87,'分布式操作系统',' 专业选修',2,32,0,0),('0312027','2012','计算机科学与技术',87,'分布式系统',' 专业选修',2,32,0,0),('0312028','2012','计算机科学与技术',87,'广域网技术实验',' 实践选修',1,24,0,0),('0312029','2012','计算机科学与技术',87,'计算机仿真技术',' 专业选修',2,32,12,0);
/*!40000 ALTER TABLE `20150930183602_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930194125_choseinfo`
--

DROP TABLE IF EXISTS `20150930194125_choseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930194125_choseinfo` (
  `chosenum` varchar(32) NOT NULL DEFAULT '',
  `coursenum` varchar(16) DEFAULT NULL,
  `weektime` varchar(10) DEFAULT NULL,
  `teachername` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chosenum`),
  KEY `coursenum` (`coursenum`),
  CONSTRAINT `20150930194125_choseinfo_ibfk_1` FOREIGN KEY (`coursenum`) REFERENCES `20150930194125_courseinfo` (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930194125_choseinfo`
--

LOCK TABLES `20150930194125_choseinfo` WRITE;
/*!40000 ALTER TABLE `20150930194125_choseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `20150930194125_choseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930194125_courseinfo`
--

DROP TABLE IF EXISTS `20150930194125_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930194125_courseinfo` (
  `coursenum` varchar(16) NOT NULL,
  `Grade` varchar(8) DEFAULT NULL,
  `marjor` varchar(64) DEFAULT NULL,
  `peoplenum` int(11) DEFAULT '0',
  `coursename` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `credit` float DEFAULT '0',
  `period` int(11) DEFAULT '0',
  `testperiod` int(11) DEFAULT '0',
  `fuckcomputerperiod` int(11) DEFAULT '0',
  PRIMARY KEY (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930194125_courseinfo`
--

LOCK TABLES `20150930194125_courseinfo` WRITE;
/*!40000 ALTER TABLE `20150930194125_courseinfo` DISABLE KEYS */;
INSERT INTO `20150930194125_courseinfo` VALUES ('03120210','2012','计算机科学与技术',87,'计算机外部设备',' 专业选修',2,32,0,0),('03120211','2012','计算机科学与技术',87,'软件可靠性与可信软件',' 专业选修',2,32,0,0),('03120212','2012','计算机科学与技术',87,'网络工程应用开发技术',' 专业选修',2,32,0,0),('03120213','2012','计算机科学与技术',87,'云计算',' 专业选修',2,32,0,0),('03120214','2013','计算机科学与技术',1,'EDA技术',' 专业方向（限选）1',2,32,0,16),('03120215','2013','计算机科学与技术',1,'Java语言程序设计',' 实践选修',1.5,36,0,18),('03120216','2013','计算机科学与技术',1,'Linux操作系统设计实践',' 实践选修',1.5,36,0,0),('03120217','2013','计算机科学与技术',1,'Web程序设计',' 专业方向（限选）2',2,32,0,8),('03120218','2013','计算机科学与技术',1,'编译方法',' 学科必修',3,48,0,0),('03120219','2013','计算机科学与技术',1,'编译系统设计实践',' 实践选修',1.5,36,0,0),('03120220','2013','计算机科学与技术',1,'计算方法',' 学科必修',2,32,0,0),('03120221','2013','计算机科学与技术',1,'计算机图形学',' 专业方向（限选）3',2,32,0,0),('03120222','2013','计算机科学与技术',1,'计算机图形学综合实验',' 实践选修',1.5,36,0,0),('03120223','2013','计算机科学与技术',1,'计算机网络体系结构',' 专业方向（限选）1',2,32,0,0),('03120224','2013','计算机科学与技术',1,'计算机系统结构',' 学科必修',3,48,0,0),('03120225','2013','计算机科学与技术',1,'宽带网及宽带接入技术',' 专业选修',2,32,0,0),('03120226','2013','计算机科学与技术',1,'面向对象设计方法(UML)',' 专业方向（限选）2',2,32,0,0),('03120227','2013','计算机科学与技术',1,'人工智能',' 专业必修（限选）',2,32,0,0),('03120228','2013','计算机科学与技术',1,'软件工程A',' 专业必修（限选）',3,48,0,0),('03120229','2013','计算机科学与技术',1,'软件工程实践',' 实践选修',2,48,0,0),('0312023','2012','计算机科学与技术',87,'Internet技术与协议分析实验',' 实践选修',1,24,0,0),('03120230','2013','计算机科学与技术',1,'软件体系结构',' 专业方向（限选）2',2,32,0,0),('03120231','2013','计算机科学与技术',1,'数据挖掘技术',' 专业方向（限选）3',2,32,0,0),('03120232','2013','计算机科学与技术',1,'现代计算机接口技术',' 专业必修（限选）',2,32,0,0),('03120233','2013','计算机科学与技术',1,'现代计算机接口技术实践',' 实践选修',1.5,36,0,0),('03120234','2013','计算机科学与技术',1,'现代搜索引擎技术及应用',' 专业选修',2,32,0,0),('03120235','2014','计算机类',191,'IEEE Micromouse 原理与实践B（企业开课）',' 专业选修',2,32,16,0),('03120236','2014','计算机类',191,'离散数学A',' 学科必修',4.5,72,0,0),('03120237','2014','计算机类',191,'数字电路与逻辑设计',' 学科必修',3,48,0,0),('03120238','2014','计算机类',191,'数字逻辑电路设计',' 实践选修',2,48,0,0),('03120239','2014','计算机类',191,'算法与数据结构',' 学科必修',5,80,0,28),('0312024','2012','计算机科学与技术',87,'IT企业项目实训',' 实践选修',2,48,0,0),('03120240','2015','计算机类',1,'高级语言程序设计',' 学科必修',4,64,0,32),('03120241','2015','计算机类',1,'计算机导论',' 学科必修',1.5,24,0,0),('03120242','2015','计算机类',1,'认识实习（计算机基础训练）',' 实践环节',1,24,0,0),('03120243','2015','计算机类',1,'线性代数',' 公共必修',2,32,0,0),('0312025','2012','计算机科学与技术',87,'多媒体通信技术',' 专业选修',2,32,0,0),('0312026','2012','计算机科学与技术',87,'分布式操作系统',' 专业选修',2,32,0,0),('0312027','2012','计算机科学与技术',87,'分布式系统',' 专业选修',2,32,0,0),('0312028','2012','计算机科学与技术',87,'广域网技术实验',' 实践选修',1,24,0,0),('0312029','2012','计算机科学与技术',87,'计算机仿真技术',' 专业选修',2,32,12,0);
/*!40000 ALTER TABLE `20150930194125_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930194548_choseinfo`
--

DROP TABLE IF EXISTS `20150930194548_choseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930194548_choseinfo` (
  `chosenum` varchar(32) NOT NULL DEFAULT '',
  `coursenum` varchar(16) DEFAULT NULL,
  `weektime` varchar(10) DEFAULT NULL,
  `teachername` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chosenum`),
  KEY `coursenum` (`coursenum`),
  CONSTRAINT `20150930194548_choseinfo_ibfk_1` FOREIGN KEY (`coursenum`) REFERENCES `20150930194548_courseinfo` (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930194548_choseinfo`
--

LOCK TABLES `20150930194548_choseinfo` WRITE;
/*!40000 ALTER TABLE `20150930194548_choseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `20150930194548_choseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930194548_courseinfo`
--

DROP TABLE IF EXISTS `20150930194548_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930194548_courseinfo` (
  `coursenum` varchar(16) NOT NULL,
  `Grade` varchar(8) DEFAULT NULL,
  `marjor` varchar(64) DEFAULT NULL,
  `peoplenum` int(11) DEFAULT '0',
  `coursename` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `credit` float DEFAULT '0',
  `period` int(11) DEFAULT '0',
  `testperiod` int(11) DEFAULT '0',
  `fuckcomputerperiod` int(11) DEFAULT '0',
  PRIMARY KEY (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930194548_courseinfo`
--

LOCK TABLES `20150930194548_courseinfo` WRITE;
/*!40000 ALTER TABLE `20150930194548_courseinfo` DISABLE KEYS */;
INSERT INTO `20150930194548_courseinfo` VALUES ('03120210','2012','计算机科学与技术',87,'计算机外部设备',' 专业选修',2,32,0,0),('03120211','2012','计算机科学与技术',87,'软件可靠性与可信软件',' 专业选修',2,32,0,0),('03120212','2012','计算机科学与技术',87,'网络工程应用开发技术',' 专业选修',2,32,0,0),('03120213','2012','计算机科学与技术',87,'云计算',' 专业选修',2,32,0,0),('03120214','2013','计算机科学与技术',1,'EDA技术',' 专业方向（限选）1',2,32,0,16),('03120215','2013','计算机科学与技术',1,'Java语言程序设计',' 实践选修',1.5,36,0,18),('03120216','2013','计算机科学与技术',1,'Linux操作系统设计实践',' 实践选修',1.5,36,0,0),('03120217','2013','计算机科学与技术',1,'Web程序设计',' 专业方向（限选）2',2,32,0,8),('03120218','2013','计算机科学与技术',1,'编译方法',' 学科必修',3,48,0,0),('03120219','2013','计算机科学与技术',1,'编译系统设计实践',' 实践选修',1.5,36,0,0),('03120220','2013','计算机科学与技术',1,'计算方法',' 学科必修',2,32,0,0),('03120221','2013','计算机科学与技术',1,'计算机图形学',' 专业方向（限选）3',2,32,0,0),('03120222','2013','计算机科学与技术',1,'计算机图形学综合实验',' 实践选修',1.5,36,0,0),('03120223','2013','计算机科学与技术',1,'计算机网络体系结构',' 专业方向（限选）1',2,32,0,0),('03120224','2013','计算机科学与技术',1,'计算机系统结构',' 学科必修',3,48,0,0),('03120225','2013','计算机科学与技术',1,'宽带网及宽带接入技术',' 专业选修',2,32,0,0),('03120226','2013','计算机科学与技术',1,'面向对象设计方法(UML)',' 专业方向（限选）2',2,32,0,0),('03120227','2013','计算机科学与技术',1,'人工智能',' 专业必修（限选）',2,32,0,0),('03120228','2013','计算机科学与技术',1,'软件工程A',' 专业必修（限选）',3,48,0,0),('03120229','2013','计算机科学与技术',1,'软件工程实践',' 实践选修',2,48,0,0),('0312023','2012','计算机科学与技术',87,'Internet技术与协议分析实验',' 实践选修',1,24,0,0),('03120230','2013','计算机科学与技术',1,'软件体系结构',' 专业方向（限选）2',2,32,0,0),('03120231','2013','计算机科学与技术',1,'数据挖掘技术',' 专业方向（限选）3',2,32,0,0),('03120232','2013','计算机科学与技术',1,'现代计算机接口技术',' 专业必修（限选）',2,32,0,0),('03120233','2013','计算机科学与技术',1,'现代计算机接口技术实践',' 实践选修',1.5,36,0,0),('03120234','2013','计算机科学与技术',1,'现代搜索引擎技术及应用',' 专业选修',2,32,0,0),('03120235','2014','计算机类',191,'IEEE Micromouse 原理与实践B（企业开课）',' 专业选修',2,32,16,0),('03120236','2014','计算机类',191,'离散数学A',' 学科必修',4.5,72,0,0),('03120237','2014','计算机类',191,'数字电路与逻辑设计',' 学科必修',3,48,0,0),('03120238','2014','计算机类',191,'数字逻辑电路设计',' 实践选修',2,48,0,0),('03120239','2014','计算机类',191,'算法与数据结构',' 学科必修',5,80,0,28),('0312024','2012','计算机科学与技术',87,'IT企业项目实训',' 实践选修',2,48,0,0),('03120240','2015','计算机类',1,'高级语言程序设计',' 学科必修',4,64,0,32),('03120241','2015','计算机类',1,'计算机导论',' 学科必修',1.5,24,0,0),('03120242','2015','计算机类',1,'认识实习（计算机基础训练）',' 实践环节',1,24,0,0),('03120243','2015','计算机类',1,'线性代数',' 公共必修',2,32,0,0),('0312025','2012','计算机科学与技术',87,'多媒体通信技术',' 专业选修',2,32,0,0),('0312026','2012','计算机科学与技术',87,'分布式操作系统',' 专业选修',2,32,0,0),('0312027','2012','计算机科学与技术',87,'分布式系统',' 专业选修',2,32,0,0),('0312028','2012','计算机科学与技术',87,'广域网技术实验',' 实践选修',1,24,0,0),('0312029','2012','计算机科学与技术',87,'计算机仿真技术',' 专业选修',2,32,12,0);
/*!40000 ALTER TABLE `20150930194548_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930201005_choseinfo`
--

DROP TABLE IF EXISTS `20150930201005_choseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930201005_choseinfo` (
  `chosenum` varchar(32) NOT NULL DEFAULT '',
  `coursenum` varchar(16) DEFAULT NULL,
  `weektime` varchar(10) DEFAULT NULL,
  `teachername` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chosenum`),
  KEY `coursenum` (`coursenum`),
  CONSTRAINT `20150930201005_choseinfo_ibfk_1` FOREIGN KEY (`coursenum`) REFERENCES `20150930201005_courseinfo` (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930201005_choseinfo`
--

LOCK TABLES `20150930201005_choseinfo` WRITE;
/*!40000 ALTER TABLE `20150930201005_choseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `20150930201005_choseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20150930201005_courseinfo`
--

DROP TABLE IF EXISTS `20150930201005_courseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20150930201005_courseinfo` (
  `coursenum` varchar(16) NOT NULL,
  `Grade` varchar(8) DEFAULT NULL,
  `marjor` varchar(64) DEFAULT NULL,
  `peoplenum` int(11) DEFAULT '0',
  `coursename` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `credit` float DEFAULT '0',
  `period` int(11) DEFAULT '0',
  `testperiod` int(11) DEFAULT '0',
  `fuckcomputerperiod` int(11) DEFAULT '0',
  PRIMARY KEY (`coursenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20150930201005_courseinfo`
--

LOCK TABLES `20150930201005_courseinfo` WRITE;
/*!40000 ALTER TABLE `20150930201005_courseinfo` DISABLE KEYS */;
INSERT INTO `20150930201005_courseinfo` VALUES ('03120210','2012','计算机科学与技术',87,'计算机外部设备',' 专业选修',2,32,0,0),('03120211','2012','计算机科学与技术',87,'软件可靠性与可信软件',' 专业选修',2,32,0,0),('03120212','2012','计算机科学与技术',87,'网络工程应用开发技术',' 专业选修',2,32,0,0),('03120213','2012','计算机科学与技术',87,'云计算',' 专业选修',2,32,0,0),('03120214','2013','计算机科学与技术',1,'EDA技术',' 专业方向（限选）1',2,32,0,16),('03120215','2013','计算机科学与技术',1,'Java语言程序设计',' 实践选修',1.5,36,0,18),('03120216','2013','计算机科学与技术',1,'Linux操作系统设计实践',' 实践选修',1.5,36,0,0),('03120217','2013','计算机科学与技术',1,'Web程序设计',' 专业方向（限选）2',2,32,0,8),('03120218','2013','计算机科学与技术',1,'编译方法',' 学科必修',3,48,0,0),('03120219','2013','计算机科学与技术',1,'编译系统设计实践',' 实践选修',1.5,36,0,0),('03120220','2013','计算机科学与技术',1,'计算方法',' 学科必修',2,32,0,0),('03120221','2013','计算机科学与技术',1,'计算机图形学',' 专业方向（限选）3',2,32,0,0),('03120222','2013','计算机科学与技术',1,'计算机图形学综合实验',' 实践选修',1.5,36,0,0),('03120223','2013','计算机科学与技术',1,'计算机网络体系结构',' 专业方向（限选）1',2,32,0,0),('03120224','2013','计算机科学与技术',1,'计算机系统结构',' 学科必修',3,48,0,0),('03120225','2013','计算机科学与技术',1,'宽带网及宽带接入技术',' 专业选修',2,32,0,0),('03120226','2013','计算机科学与技术',1,'面向对象设计方法(UML)',' 专业方向（限选）2',2,32,0,0),('03120227','2013','计算机科学与技术',1,'人工智能',' 专业必修（限选）',2,32,0,0),('03120228','2013','计算机科学与技术',1,'软件工程A',' 专业必修（限选）',3,48,0,0),('03120229','2013','计算机科学与技术',1,'软件工程实践',' 实践选修',2,48,0,0),('0312023','2012','计算机科学与技术',87,'Internet技术与协议分析实验',' 实践选修',1,24,0,0),('03120230','2013','计算机科学与技术',1,'软件体系结构',' 专业方向（限选）2',2,32,0,0),('03120231','2013','计算机科学与技术',1,'数据挖掘技术',' 专业方向（限选）3',2,32,0,0),('03120232','2013','计算机科学与技术',1,'现代计算机接口技术',' 专业必修（限选）',2,32,0,0),('03120233','2013','计算机科学与技术',1,'现代计算机接口技术实践',' 实践选修',1.5,36,0,0),('03120234','2013','计算机科学与技术',1,'现代搜索引擎技术及应用',' 专业选修',2,32,0,0),('03120235','2014','计算机类',191,'IEEE Micromouse 原理与实践B（企业开课）',' 专业选修',2,32,16,0),('03120236','2014','计算机类',191,'离散数学A',' 学科必修',4.5,72,0,0),('03120237','2014','计算机类',191,'数字电路与逻辑设计',' 学科必修',3,48,0,0),('03120238','2014','计算机类',191,'数字逻辑电路设计',' 实践选修',2,48,0,0),('03120239','2014','计算机类',191,'算法与数据结构',' 学科必修',5,80,0,28),('0312024','2012','计算机科学与技术',87,'IT企业项目实训',' 实践选修',2,48,0,0),('03120240','2015','计算机类',1,'高级语言程序设计',' 学科必修',4,64,0,32),('03120241','2015','计算机类',1,'计算机导论',' 学科必修',1.5,24,0,0),('03120242','2015','计算机类',1,'认识实习（计算机基础训练）',' 实践环节',1,24,0,0),('03120243','2015','计算机类',1,'线性代数',' 公共必修',2,32,0,0),('0312025','2012','计算机科学与技术',87,'多媒体通信技术',' 专业选修',2,32,0,0),('0312026','2012','计算机科学与技术',87,'分布式操作系统',' 专业选修',2,32,0,0),('0312027','2012','计算机科学与技术',87,'分布式系统',' 专业选修',2,32,0,0),('0312028','2012','计算机科学与技术',87,'广域网技术实验',' 实践选修',1,24,0,0),('0312029','2012','计算机科学与技术',87,'计算机仿真技术',' 专业选修',2,32,12,0);
/*!40000 ALTER TABLE `20150930201005_courseinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-30 20:15:38
