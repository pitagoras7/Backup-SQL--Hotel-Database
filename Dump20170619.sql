CREATE DATABASE  IF NOT EXISTS `ibuhotel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ibuhotel`;
-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ibuhotel
-- ------------------------------------------------------
-- Server version	5.5.49-0+deb8u1

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `longname` varchar(140) DEFAULT NULL,
  `action_type` int(11) DEFAULT NULL,
  `action_subtype` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huesped`
--

DROP TABLE IF EXISTS `huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huesped` (
  `huesped_id` int(11) NOT NULL AUTO_INCREMENT,
  `huesped_code` varchar(45) DEFAULT NULL,
  `huesped_type` int(11) DEFAULT NULL,
  `nationality_type` int(11) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(140) DEFAULT NULL,
  `password` varchar(140) DEFAULT NULL,
  `avatar` text,
  `birtdate` datetime DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `biography` varchar(140) DEFAULT NULL,
  `token` varchar(140) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `online` varchar(1) DEFAULT NULL,
  `offline` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`huesped_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huesped`
--

LOCK TABLES `huesped` WRITE;
/*!40000 ALTER TABLE `huesped` DISABLE KEYS */;
/*!40000 ALTER TABLE `huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_type` int(11) DEFAULT NULL,
  `info_subtype` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `content` text,
  `fuente` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `file2` varchar(250) DEFAULT NULL,
  `file3` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `tag` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_type` int(11) DEFAULT NULL,
  `location_subtype` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `longname` varchar(50) DEFAULT NULL,
  `coordinates` varchar(30) DEFAULT NULL,
  `tag` text,
  `details` text,
  `telephone` varchar(10) DEFAULT NULL,
  `address` varchar(140) DEFAULT NULL,
  `email` varchar(140) DEFAULT NULL,
  `image` text,
  `estatu` varchar(10) DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `master_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `longname` varchar(140) DEFAULT NULL,
  `type` varchar(140) DEFAULT NULL,
  `subtype` varchar(140) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `responsiblity_id` int(11) DEFAULT NULL,
  `request_type` int(11) DEFAULT NULL,
  `responsiblity_enabled` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `location_subtype` int(11) DEFAULT NULL,
  `location_enabled` varchar(1) NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  `action_subtype` int(11) DEFAULT NULL,
  `action_enabled` varchar(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `priority_enable` varchar(1) NOT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `details` text,
  `validated` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_code` varchar(45) DEFAULT NULL,
  `options` varchar(280) DEFAULT NULL,
  `estatu` varchar(10) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type` int(11) DEFAULT NULL,
  `request_code` varchar(45) DEFAULT NULL,
  `inbox_code` varchar(45) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `estatu` varchar(10) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `waiting` datetime DEFAULT NULL,
  `viewed` datetime DEFAULT NULL,
  `opened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `details` text,
  `validated` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sesion` (
  `sesion_id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(20) DEFAULT NULL,
  `nameuser` varchar(140) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `online` varchar(1) DEFAULT NULL,
  `token` varchar(140) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`sesion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_type` int(11) DEFAULT NULL,
  `question_code` varchar(45) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `details` text,
  `estatu` varchar(10) DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(45) DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `dpto_type` int(11) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(140) DEFAULT NULL,
  `password` varchar(140) DEFAULT NULL,
  `token` varchar(140) DEFAULT NULL,
  `avatar` text,
  `genre` varchar(45) DEFAULT NULL,
  `birtdate` datetime DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `online` varchar(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `offline` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19  4:06:21
