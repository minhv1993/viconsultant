-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: viledevmain
-- ------------------------------------------------------
-- Server version	5.1.73-community

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
-- Table structure for table `arealayoutcolumns`
--

DROP TABLE IF EXISTS `arealayoutcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutcolumns`
--

LOCK TABLES `arealayoutcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutcolumns` DISABLE KEYS */;
INSERT INTO `arealayoutcolumns` VALUES (1,1,0,27,1),(2,1,1,28,2),(3,2,0,31,3),(4,2,1,32,4),(5,2,2,33,5),(6,3,0,34,6),(7,3,1,35,7),(8,4,0,36,8),(9,4,1,37,9),(10,4,2,38,10),(11,5,0,41,11),(12,5,1,42,12),(13,5,2,43,13),(14,5,3,44,14),(15,6,0,45,15),(16,6,1,46,16),(17,7,0,48,17),(18,7,1,49,18),(19,8,0,76,19),(20,8,1,77,20),(21,9,0,78,21),(22,9,1,79,22),(23,9,2,80,23),(24,10,0,81,24),(25,10,1,82,25),(26,11,0,97,26),(27,11,1,98,27),(28,12,0,99,28),(29,12,1,100,29),(30,12,2,101,30),(31,13,0,104,31),(32,13,1,105,32),(33,14,0,106,33),(34,14,1,107,34),(35,15,0,108,35),(36,15,1,109,36),(37,16,0,111,37),(38,16,1,112,38),(39,16,2,113,39),(40,17,0,114,40),(41,17,1,115,41);
/*!40000 ALTER TABLE `arealayoutcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutcustomcolumns`
--

DROP TABLE IF EXISTS `arealayoutcustomcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutcustomcolumns`
--

LOCK TABLES `arealayoutcustomcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutpresets`
--

DROP TABLE IF EXISTS `arealayoutpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutpresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutpresets`
--

LOCK TABLES `arealayoutpresets` WRITE;
/*!40000 ALTER TABLE `arealayoutpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayouts`
--

DROP TABLE IF EXISTS `arealayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayouts`
--

LOCK TABLES `arealayouts` WRITE;
/*!40000 ALTER TABLE `arealayouts` DISABLE KEYS */;
INSERT INTO `arealayouts` VALUES (1,0,0,0,12,1),(2,0,0,0,12,1),(3,0,0,0,12,1),(4,0,0,0,12,1),(5,0,0,0,12,1),(6,0,0,0,12,1),(7,0,0,0,12,1),(8,0,0,0,12,1),(9,0,0,0,12,1),(10,0,0,0,12,1),(11,0,0,0,12,1),(12,0,0,0,12,1),(13,0,0,0,12,1),(14,0,0,0,12,1),(15,0,0,0,12,1),(16,0,0,0,12,1),(17,0,0,0,12,1);
/*!40000 ALTER TABLE `arealayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutsusingpresets`
--

DROP TABLE IF EXISTS `arealayoutsusingpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutsusingpresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutsusingpresets`
--

LOCK TABLES `arealayoutsusingpresets` WRITE;
/*!40000 ALTER TABLE `arealayoutsusingpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutsusingpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutthemegridcolumns`
--

DROP TABLE IF EXISTS `arealayoutthemegridcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutthemegridcolumns`
--

LOCK TABLES `arealayoutthemegridcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` DISABLE KEYS */;
INSERT INTO `arealayoutthemegridcolumns` VALUES (1,8,0),(2,3,1),(3,4,0),(4,4,0),(5,4,0),(6,6,0),(7,6,0),(8,2,0),(9,3,0),(10,6,1),(11,3,0),(12,3,0),(13,3,0),(14,3,0),(15,6,0),(16,6,0),(17,5,0),(18,5,2),(19,6,0),(20,6,0),(21,4,0),(22,4,0),(23,4,0),(24,4,0),(25,7,1),(26,7,0),(27,4,1),(28,2,0),(29,4,0),(30,6,0),(31,7,0),(32,5,0),(33,4,0),(34,7,1),(35,4,0),(36,7,1),(37,4,0),(38,4,0),(39,4,0),(40,4,0),(41,8,0);
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionassignments`
--

DROP TABLE IF EXISTS `areapermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionassignments`
--

LOCK TABLES `areapermissionassignments` WRITE;
/*!40000 ALTER TABLE `areapermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionblocktypeaccesslist`
--

LOCK TABLES `areapermissionblocktypeaccesslist` WRITE;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionblocktypeaccesslistcustom`
--

LOCK TABLES `areapermissionblocktypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,127,'Main',0,0,0,0),(2,128,'Primary',0,0,0,0),(3,128,'Secondary 1',0,0,0,0),(4,128,'Secondary 2',0,0,0,0),(5,128,'Secondary 3',0,0,0,0),(6,128,'Secondary 4',0,0,0,0),(7,128,'Secondary 5',0,0,0,0),(8,145,'Main',0,0,0,0),(9,146,'Main',0,0,0,0),(10,147,'Main',0,0,0,0),(11,148,'Main',0,0,0,0),(12,149,'Main',0,0,0,0),(13,150,'Main',0,0,0,0),(14,151,'Main',0,0,0,0),(15,152,'Main',0,0,0,0),(16,170,'Main',0,0,0,0),(17,170,'Sidebar',0,0,0,0),(18,170,'Page Footer',0,0,0,0),(19,177,'Page Header',0,0,0,0),(20,177,'Sidebar',0,0,0,0),(21,177,'Main',0,0,0,0),(22,163,'Page Header',0,0,0,0),(23,163,'Sidebar',0,0,0,0),(24,163,'Main',0,0,0,0),(25,163,'Page Footer',0,0,0,0),(26,158,'Main',0,0,0,0),(27,158,'Main : 1',0,0,0,26),(28,158,'Main : 2',0,0,0,26),(29,155,'Main',0,0,0,0),(30,1,'Main',0,0,0,0),(31,1,'Main : 3',0,0,0,30),(32,1,'Main : 4',0,0,0,30),(33,1,'Main : 5',0,0,0,30),(34,1,'Main : 6',0,0,0,30),(35,1,'Main : 7',0,0,0,30),(36,1,'Main : 8',0,0,0,30),(37,1,'Main : 9',0,0,0,30),(38,1,'Main : 10',0,0,0,30),(39,1,'Page Footer',0,0,0,0),(40,154,'Main',0,0,0,0),(41,154,'Main : 11',0,0,0,40),(42,154,'Main : 12',0,0,0,40),(43,154,'Main : 13',0,0,0,40),(44,154,'Main : 14',0,0,0,40),(45,154,'Main : 15',0,0,0,40),(46,154,'Main : 16',0,0,0,40),(47,154,'Page Footer',0,0,0,0),(48,154,'Page Footer : 17',0,0,0,47),(49,154,'Page Footer : 18',0,0,0,47),(50,156,'Main',0,0,0,0),(51,164,'Page Header',0,0,0,0),(52,164,'Main',0,0,0,0),(53,164,'Sidebar',0,0,0,0),(54,164,'Page Footer',0,0,0,0),(55,165,'Page Header',0,0,0,0),(56,165,'Main',0,0,0,0),(57,165,'Sidebar',0,0,0,0),(58,165,'Page Footer',0,0,0,0),(59,166,'Page Header',0,0,0,0),(60,166,'Main',0,0,0,0),(61,166,'Sidebar',0,0,0,0),(62,166,'Page Footer',0,0,0,0),(63,167,'Page Header',0,0,0,0),(64,167,'Main',0,0,0,0),(65,167,'Sidebar',0,0,0,0),(66,167,'Page Footer',0,0,0,0),(67,168,'Page Header',0,0,0,0),(68,168,'Main',0,0,0,0),(69,168,'Sidebar',0,0,0,0),(70,168,'Page Footer',0,0,0,0),(71,169,'Page Header',0,0,0,0),(72,169,'Main',0,0,0,0),(73,169,'Sidebar',0,0,0,0),(74,169,'Page Footer',0,0,0,0),(75,157,'Main',0,0,0,0),(76,157,'Main : 19',0,0,0,75),(77,157,'Main : 20',0,0,0,75),(78,157,'Main : 21',0,0,0,75),(79,157,'Main : 22',0,0,0,75),(80,157,'Main : 23',0,0,0,75),(81,157,'Main : 24',0,0,0,75),(82,157,'Main : 25',0,0,0,75),(83,159,'Main',0,0,0,0),(84,159,'Main : 1',0,0,0,0),(85,159,'Main : 2',0,0,0,0),(86,171,'Page Footer',0,0,0,0),(87,171,'Main',0,0,0,0),(88,171,'Sidebar',0,0,0,0),(89,172,'Page Footer',0,0,0,0),(90,172,'Main',0,0,0,0),(91,172,'Sidebar',0,0,0,0),(92,173,'Page Footer',0,0,0,0),(93,173,'Main',0,0,0,0),(94,173,'Sidebar',0,0,0,0),(95,160,'Main',0,0,0,0),(96,161,'Main',0,0,0,0),(97,161,'Main : 26',0,0,0,96),(98,161,'Main : 27',0,0,0,96),(99,161,'Main : 28',0,0,0,96),(100,161,'Main : 29',0,0,0,96),(101,161,'Main : 30',0,0,0,96),(102,162,'Main',0,0,0,0),(103,174,'Main',0,0,0,0),(104,174,'Main : 31',0,0,0,103),(105,174,'Main : 32',0,0,0,103),(106,174,'Main : 33',0,0,0,103),(107,174,'Main : 34',0,0,0,103),(108,174,'Main : 35',0,0,0,103),(109,174,'Main : 36',0,0,0,103),(110,175,'Main',0,0,0,0),(111,175,'Main : 37',0,0,0,110),(112,175,'Main : 38',0,0,0,110),(113,175,'Main : 39',0,0,0,110),(114,175,'Main : 40',0,0,0,110),(115,175,'Main : 41',0,0,0,110),(116,178,'Main',0,0,0,0),(117,178,'Page Header',0,0,0,0),(118,178,'Sidebar',0,0,0,0),(119,179,'Main',0,0,0,0),(120,179,'Page Header',0,0,0,0),(121,179,'Sidebar',0,0,0,0),(122,176,'Main',0,0,0,0),(123,1,'Header Site Title',0,0,1,0),(124,1,'Header Navigation',0,0,1,0),(125,1,'Header Search',0,0,1,0),(126,1,'Footer Site Title',0,0,1,0),(127,1,'Footer Social',0,0,1,0),(128,1,'Footer Legal',0,0,1,0),(129,1,'Footer Navigation',0,0,1,0),(130,1,'Footer Contact',0,0,1,0);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataddress`
--

DROP TABLE IF EXISTS `ataddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataddress`
--

LOCK TABLES `ataddress` WRITE;
/*!40000 ALTER TABLE `ataddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataddresscustomcountries`
--

DROP TABLE IF EXISTS `ataddresscustomcountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataddresscustomcountries`
--

LOCK TABLES `ataddresscustomcountries` WRITE;
/*!40000 ALTER TABLE `ataddresscustomcountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddresscustomcountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataddresssettings`
--

DROP TABLE IF EXISTS `ataddresssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataddresssettings`
--

LOCK TABLES `ataddresssettings` WRITE;
/*!40000 ALTER TABLE `ataddresssettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddresssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atboolean`
--

DROP TABLE IF EXISTS `atboolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atboolean`
--

LOCK TABLES `atboolean` WRITE;
/*!40000 ALTER TABLE `atboolean` DISABLE KEYS */;
INSERT INTO `atboolean` VALUES (9,1),(16,1),(18,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(42,1),(43,1),(47,1),(51,1),(99,1),(107,1),(108,1),(109,1),(146,1),(147,1),(148,1),(159,1),(165,1),(181,1),(186,0),(196,1),(198,0),(199,1),(204,0),(211,0);
/*!40000 ALTER TABLE `atboolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atbooleansettings`
--

DROP TABLE IF EXISTS `atbooleansettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atbooleansettings`
--

LOCK TABLES `atbooleansettings` WRITE;
/*!40000 ALTER TABLE `atbooleansettings` DISABLE KEYS */;
INSERT INTO `atbooleansettings` VALUES (5,0),(6,0),(9,0),(10,0),(11,0),(12,1),(13,1),(20,1);
/*!40000 ALTER TABLE `atbooleansettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdatetime`
--

DROP TABLE IF EXISTS `atdatetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdatetime`
--

LOCK TABLES `atdatetime` WRITE;
/*!40000 ALTER TABLE `atdatetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdatetimesettings`
--

DROP TABLE IF EXISTS `atdatetimesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdatetimesettings`
--

LOCK TABLES `atdatetimesettings` WRITE;
/*!40000 ALTER TABLE `atdatetimesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetimesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdefault`
--

DROP TABLE IF EXISTS `atdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdefault`
--

LOCK TABLES `atdefault` WRITE;
/*!40000 ALTER TABLE `atdefault` DISABLE KEYS */;
INSERT INTO `atdefault` VALUES (1,'fa fa-th-large'),(2,'pages, add page, delete page, copy, move, alias'),(3,'pages, add page, delete page, copy, move, alias'),(4,'pages, add page, delete page, copy, move, alias, bulk'),(5,'find page, search page, search, find, pages, sitemap'),(6,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(7,'file, file attributes, title, attribute, description, rename'),(8,'files, category, categories'),(10,'new file set'),(11,'users, groups, people, find, delete user, remove user, change password, password'),(12,'find, search, people, delete user, remove user, change password, password'),(13,'user, group, people, permissions, expire, badges'),(14,'user attributes, user data, gather data, registration data'),(15,'new user, create'),(17,'new user group, new group, group, create'),(19,'group set'),(20,'community, points, karma'),(21,'action, community actions'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'forms, questions, response, data'),(24,'questions, quiz, response'),(25,'forms, log, error, email, mysql, exception, survey, history'),(26,'new theme, theme, active theme, change theme, template, css'),(27,'page types'),(36,'page attributes, custom'),(37,'single, page, custom, application'),(38,'atom, rss, feed, syndication'),(39,'icon-bullhorn'),(40,'add workflow, remove workflow'),(41,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(44,'edit stacks, view stacks, all stacks'),(45,'block, refresh, custom'),(46,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),(48,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(49,'update, upgrade'),(50,'concrete5.org, my account, marketplace'),(52,'buy theme, new theme, marketplace, template'),(53,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(54,'dashboard, configuration'),(55,'website name, title'),(56,'accessibility, easy mode'),(57,'sharing, facebook, twitter'),(58,'logo, favicon, iphone, icon, bookmark'),(59,'tinymce, content block, fonts, editor, content, overlay'),(60,'translate, translation, internationalization, multilingual'),(61,'timezone, profile, locale'),(62,'multilingual, localization, internationalization, i18n'),(63,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),(64,'bulk, seo, change keywords, engine, optimization, search'),(65,'traffic, statistics, google analytics, quant, pageviews, hits'),(66,'pretty, slug'),(67,'configure search, site search, search option'),(68,'file options, file manager, upload, modify'),(69,'security, files, media, extension, manager, upload'),(70,'images, picture, responsive, retina'),(71,'uploading, upload, images, image, resizing, manager'),(72,'security, alternate storage, hide files'),(73,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(74,'cache option, turn off cache, no cache, page cache, caching'),(75,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(76,'queries, database, mysql'),(77,'editors, hide site, offline, private, public, access'),(78,'security, actions, administrator, admin, package, marketplace, search'),(79,'security, lock ip, lock out, block ip, address, restrict, access'),(80,'security, registration'),(81,'antispam, block spam, security'),(82,'lock site, under construction, hide, hidden'),(83,'profile, login, redirect, specific, dashboard, administrators'),(84,'member profile, member page, community, forums, social, avatar'),(85,'signup, new user, community, public registration, public, registration'),(86,'auth, authentication, types, oauth, facebook, login, registration'),(87,'smtp, mail settings'),(88,'email server, mail settings, mail configuration, external, internal'),(89,'test smtp, test mail'),(90,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(91,'conversations'),(92,'conversations'),(93,'conversations ratings, ratings, community, community points'),(94,'conversations bad words, banned words, banned, bad words, bad, words, list'),(95,'attribute configuration'),(96,'attributes, sets'),(97,'attributes, types'),(98,'topics, tags, taxonomy'),(100,'overrides, system info, debug, support, help'),(101,'errors, exceptions, develop, support, help'),(102,'email, logging, logs, smtp, pop, errors, mysql, log'),(103,'network, proxy server'),(104,'database, entities, doctrine, orm'),(105,'export, backup, database, sql, mysql, encryption, restore'),(106,'upgrade, new version, update'),(110,'fa fa-edit'),(111,'fa fa-trash-o'),(112,'fa fa-th'),(113,'fa fa-briefcase'),(151,'Test Client'),(156,'Test Client'),(162,'Test Client 2'),(168,'Test Client 2'),(173,'Test Client 2'),(178,'Test Client 2'),(182,NULL),(183,NULL),(184,NULL),(185,NULL),(193,NULL),(194,NULL),(195,NULL),(197,NULL),(200,NULL),(201,NULL),(202,NULL),(203,NULL),(206,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. '),(207,NULL),(208,NULL),(209,NULL),(210,NULL),(213,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ');
/*!40000 ALTER TABLE `atdefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atfile`
--

DROP TABLE IF EXISTS `atfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atfile`
--

LOCK TABLES `atfile` WRITE;
/*!40000 ALTER TABLE `atfile` DISABLE KEYS */;
INSERT INTO `atfile` VALUES (187,2),(149,6),(189,7),(154,8),(176,10),(191,11),(171,12),(166,15),(160,16);
/*!40000 ALTER TABLE `atfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atnumber`
--

DROP TABLE IF EXISTS `atnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atnumber`
--

LOCK TABLES `atnumber` WRITE;
/*!40000 ALTER TABLE `atnumber` DISABLE KEYS */;
INSERT INTO `atnumber` VALUES (114,200.0000),(115,200.0000),(116,500.0000),(117,500.0000),(118,460.0000),(119,460.0000),(120,592.0000),(121,397.0000),(122,250.0000),(123,252.0000),(124,1600.0000),(125,1067.0000),(126,200.0000),(127,200.0000),(128,1499.0000),(129,1067.0000),(130,1100.0000),(131,263.0000),(132,1600.0000),(133,1067.0000),(134,1600.0000),(135,1066.0000),(136,1600.0000),(137,1067.0000),(138,1100.0000),(139,368.0000),(140,1100.0000),(141,368.0000),(142,1600.0000),(143,1067.0000),(144,1600.0000),(145,953.0000);
/*!40000 ALTER TABLE `atnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectedtopics`
--

DROP TABLE IF EXISTS `atselectedtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectedtopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectedtopics`
--

LOCK TABLES `atselectedtopics` WRITE;
/*!40000 ALTER TABLE `atselectedtopics` DISABLE KEYS */;
INSERT INTO `atselectedtopics` VALUES (188,11),(192,11),(190,13),(150,16),(161,16),(167,16),(172,16),(177,16),(155,18);
/*!40000 ALTER TABLE `atselectedtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectoptions`
--

DROP TABLE IF EXISTS `atselectoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectoptions`
--

LOCK TABLES `atselectoptions` WRITE;
/*!40000 ALTER TABLE `atselectoptions` DISABLE KEYS */;
INSERT INTO `atselectoptions` VALUES (1,18,'Finance',0,0),(2,18,'Marketing and Sales',1,0),(3,18,'Human Resources',2,0),(4,18,'Technical and Operations',3,0),(5,18,'Management',4,0),(6,25,'Architecture',0,0),(7,25,'Multimedia',1,0),(8,25,'Design',2,0),(9,25,'Production',3,0),(10,25,'Development',4,0),(11,25,'Quality Assurance',5,0),(12,26,'HTML',0,0),(13,26,'JavaScript',1,0),(14,26,'PHP',2,0),(15,26,'Database',3,0),(16,26,'CSS',4,0),(17,26,'Ruby',5,0),(18,26,'Java',6,0),(19,26,'iOS/Android/App Development',7,0),(20,26,'Photoshop',8,0),(21,26,'Python',9,0),(22,26,'Writing',10,0);
/*!40000 ALTER TABLE `atselectoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectoptionsselected`
--

DROP TABLE IF EXISTS `atselectoptionsselected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectoptionsselected`
--

LOCK TABLES `atselectoptionsselected` WRITE;
/*!40000 ALTER TABLE `atselectoptionsselected` DISABLE KEYS */;
INSERT INTO `atselectoptionsselected` VALUES (212,2),(205,4),(152,6),(157,6),(163,7),(152,8),(169,8),(174,8),(179,8),(152,9),(163,9),(163,10),(153,12),(164,12),(153,13),(164,13),(153,14),(158,14),(164,14),(164,16),(170,20),(175,20),(180,20);
/*!40000 ALTER TABLE `atselectoptionsselected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectsettings`
--

DROP TABLE IF EXISTS `atselectsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectsettings`
--

LOCK TABLES `atselectsettings` WRITE;
/*!40000 ALTER TABLE `atselectsettings` DISABLE KEYS */;
INSERT INTO `atselectsettings` VALUES (8,1,'display_asc',1),(18,0,'display_asc',0),(25,1,'display_asc',0),(26,1,'display_asc',0);
/*!40000 ALTER TABLE `atselectsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atsociallinks`
--

DROP TABLE IF EXISTS `atsociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atsociallinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atsociallinks`
--

LOCK TABLES `atsociallinks` WRITE;
/*!40000 ALTER TABLE `atsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atsociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attextareasettings`
--

DROP TABLE IF EXISTS `attextareasettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attextareasettings`
--

LOCK TABLES `attextareasettings` WRITE;
/*!40000 ALTER TABLE `attextareasettings` DISABLE KEYS */;
INSERT INTO `attextareasettings` VALUES (2,'',''),(3,'',''),(4,'',''),(7,'',''),(19,'text','');
/*!40000 ALTER TABLE `attextareasettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attopicsettings`
--

DROP TABLE IF EXISTS `attopicsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attopicsettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attopicsettings`
--

LOCK TABLES `attopicsettings` WRITE;
/*!40000 ALTER TABLE `attopicsettings` DISABLE KEYS */;
INSERT INTO `attopicsettings` VALUES (22,5,2),(23,14,3);
/*!40000 ALTER TABLE `attopicsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributekeycategories`
--

DROP TABLE IF EXISTS `attributekeycategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributekeycategories`
--

LOCK TABLES `attributekeycategories` WRITE;
/*!40000 ALTER TABLE `attributekeycategories` DISABLE KEYS */;
INSERT INTO `attributekeycategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `attributekeycategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributekeys`
--

DROP TABLE IF EXISTS `attributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributekeys`
--

LOCK TABLES `attributekeys` WRITE;
/*!40000 ALTER TABLE `attributekeys` DISABLE KEYS */;
INSERT INTO `attributekeys` VALUES (1,'meta_title','Meta Title',1,1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,1,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',0,0,1,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,1,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,1,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,1,0,0,1,2,1,0),(8,'tags','Tags',1,1,1,0,0,1,8,1,0),(9,'is_featured','Is Featured',1,0,1,0,0,1,3,1,0),(10,'exclude_search_index','Exclude From Search Index',1,1,1,0,0,1,3,1,0),(11,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,1,0,0,1,3,1,0),(12,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,0,0,1,3,2,0),(13,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,0,0,1,3,2,0),(14,'width','Width',1,1,1,0,0,1,6,3,0),(15,'height','Height',1,1,1,0,0,1,6,3,0),(16,'account_profile_links','Personal Links',0,0,0,0,0,1,11,2,0),(17,'duration','Duration',1,1,1,0,0,1,6,3,0),(18,'job_posting_department','Department',1,1,1,0,0,1,8,1,0),(19,'job_location','Location',1,1,1,0,0,1,2,1,0),(20,'exclude_subpages_from_nav','Exclude Sub-Pages From Nav',1,1,1,0,0,1,3,1,0),(21,'thumbnail','Thumbnail',1,1,1,0,0,1,5,1,0),(22,'blog_entry_topics','Blog Entry Topics',1,1,1,0,0,1,10,1,0),(23,'project_topics','Project Topics',1,1,1,0,0,1,10,1,0),(24,'project_client','Client',1,1,1,0,0,1,1,1,0),(25,'project_tasks','Task',1,1,1,0,0,1,8,1,0),(26,'project_skills','Skills',1,1,1,0,0,1,8,1,0);
/*!40000 ALTER TABLE `attributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributesetkeys`
--

DROP TABLE IF EXISTS `attributesetkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesetkeys`
--

LOCK TABLES `attributesetkeys` WRITE;
/*!40000 ALTER TABLE `attributesetkeys` DISABLE KEYS */;
INSERT INTO `attributesetkeys` VALUES (1,1,1),(2,1,2),(7,1,3),(11,1,4),(9,2,1),(5,2,2),(6,2,3),(10,2,4),(8,2,5),(21,2,6),(20,2,7),(18,3,1),(19,3,2),(22,4,1),(23,5,1),(24,5,2),(25,5,3),(26,5,4);
/*!40000 ALTER TABLE `attributesetkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributesets`
--

DROP TABLE IF EXISTS `attributesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesets`
--

LOCK TABLES `attributesets` WRITE;
/*!40000 ALTER TABLE `attributesets` DISABLE KEYS */;
INSERT INTO `attributesets` VALUES (1,'SEO','seo',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1),(3,'Jobs','job_board',1,0,0,2),(4,'Blog','blog',1,0,0,3),(5,'Portfolio','portfolio',1,0,0,4);
/*!40000 ALTER TABLE `attributesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributetypecategories`
--

DROP TABLE IF EXISTS `attributetypecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributetypecategories`
--

LOCK TABLES `attributetypecategories` WRITE;
/*!40000 ALTER TABLE `attributetypecategories` DISABLE KEYS */;
INSERT INTO `attributetypecategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(1,2),(2,2),(3,2),(4,2),(6,2),(8,2),(9,2),(10,2),(11,2),(1,3),(2,3),(3,3),(4,3),(6,3),(7,3),(8,3),(10,3);
/*!40000 ALTER TABLE `attributetypecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributetypes`
--

DROP TABLE IF EXISTS `attributetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributetypes`
--

LOCK TABLES `attributetypes` WRITE;
/*!40000 ALTER TABLE `attributetypes` DISABLE KEYS */;
INSERT INTO `attributetypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0),(10,'topics','Topics',0),(11,'social_links','Social Links',0);
/*!40000 ALTER TABLE `attributetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributevalues`
--

DROP TABLE IF EXISTS `attributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributevalues`
--

LOCK TABLES `attributevalues` WRITE;
/*!40000 ALTER TABLE `attributevalues` DISABLE KEYS */;
INSERT INTO `attributevalues` VALUES (1,4,'2016-03-25 13:05:04',1,2),(2,3,'2016-03-25 13:05:04',1,2),(3,3,'2016-03-25 13:05:04',1,2),(4,3,'2016-03-25 13:05:04',1,2),(5,3,'2016-03-25 13:05:05',1,2),(6,3,'2016-03-25 13:05:05',1,2),(7,3,'2016-03-25 13:05:05',1,2),(8,3,'2016-03-25 13:05:05',1,2),(9,5,'2016-03-25 13:05:05',1,3),(10,3,'2016-03-25 13:05:05',1,2),(11,3,'2016-03-25 13:05:05',1,2),(12,3,'2016-03-25 13:05:05',1,2),(13,3,'2016-03-25 13:05:05',1,2),(14,3,'2016-03-25 13:05:05',1,2),(15,3,'2016-03-25 13:05:05',1,2),(16,5,'2016-03-25 13:05:05',1,3),(17,3,'2016-03-25 13:05:05',1,2),(18,5,'2016-03-25 13:05:05',1,3),(19,3,'2016-03-25 13:05:05',1,2),(20,3,'2016-03-25 13:05:05',1,2),(21,3,'2016-03-25 13:05:05',1,2),(22,3,'2016-03-25 13:05:05',1,2),(23,3,'2016-03-25 13:05:05',1,2),(24,3,'2016-03-25 13:05:05',1,2),(25,3,'2016-03-25 13:05:05',1,2),(26,3,'2016-03-25 13:05:05',1,2),(27,3,'2016-03-25 13:05:05',1,2),(28,5,'2016-03-25 13:05:05',1,3),(29,5,'2016-03-25 13:05:05',1,3),(30,5,'2016-03-25 13:05:05',1,3),(31,5,'2016-03-25 13:05:05',1,3),(32,5,'2016-03-25 13:05:05',1,3),(33,5,'2016-03-25 13:05:05',1,3),(34,5,'2016-03-25 13:05:05',1,3),(35,5,'2016-03-25 13:05:05',1,3),(36,3,'2016-03-25 13:05:05',1,2),(37,3,'2016-03-25 13:05:05',1,2),(38,3,'2016-03-25 13:05:05',1,2),(39,4,'2016-03-25 13:05:05',1,2),(40,3,'2016-03-25 13:05:05',1,2),(41,3,'2016-03-25 13:05:05',1,2),(42,5,'2016-03-25 13:05:05',1,3),(43,10,'2016-03-25 13:05:05',1,3),(44,3,'2016-03-25 13:05:05',1,2),(45,3,'2016-03-25 13:05:05',1,2),(46,3,'2016-03-25 13:05:05',1,2),(47,5,'2016-03-25 13:05:05',1,3),(48,3,'2016-03-25 13:05:05',1,2),(49,3,'2016-03-25 13:05:05',1,2),(50,3,'2016-03-25 13:05:05',1,2),(51,5,'2016-03-25 13:05:05',1,3),(52,3,'2016-03-25 13:05:05',1,2),(53,3,'2016-03-25 13:05:05',1,2),(54,3,'2016-03-25 13:05:05',1,2),(55,3,'2016-03-25 13:05:05',1,2),(56,3,'2016-03-25 13:05:05',1,2),(57,3,'2016-03-25 13:05:05',1,2),(58,3,'2016-03-25 13:05:05',1,2),(59,3,'2016-03-25 13:05:05',1,2),(60,3,'2016-03-25 13:05:05',1,2),(61,3,'2016-03-25 13:05:05',1,2),(62,3,'2016-03-25 13:05:05',1,2),(63,3,'2016-03-25 13:05:05',1,2),(64,3,'2016-03-25 13:05:05',1,2),(65,3,'2016-03-25 13:05:05',1,2),(66,3,'2016-03-25 13:05:05',1,2),(67,3,'2016-03-25 13:05:05',1,2),(68,3,'2016-03-25 13:05:05',1,2),(69,3,'2016-03-25 13:05:05',1,2),(70,3,'2016-03-25 13:05:05',1,2),(71,3,'2016-03-25 13:05:05',1,2),(72,3,'2016-03-25 13:05:05',1,2),(73,3,'2016-03-25 13:05:05',1,2),(74,3,'2016-03-25 13:05:05',1,2),(75,3,'2016-03-25 13:05:05',1,2),(76,3,'2016-03-25 13:05:05',1,2),(77,3,'2016-03-25 13:05:05',1,2),(78,3,'2016-03-25 13:05:05',1,2),(79,3,'2016-03-25 13:05:05',1,2),(80,3,'2016-03-25 13:05:05',1,2),(81,3,'2016-03-25 13:05:05',1,2),(82,3,'2016-03-25 13:05:05',1,2),(83,3,'2016-03-25 13:05:05',1,2),(84,3,'2016-03-25 13:05:05',1,2),(85,3,'2016-03-25 13:05:06',1,2),(86,3,'2016-03-25 13:05:06',1,2),(87,3,'2016-03-25 13:05:06',1,2),(88,3,'2016-03-25 13:05:06',1,2),(89,3,'2016-03-25 13:05:06',1,2),(90,3,'2016-03-25 13:05:06',1,2),(91,3,'2016-03-25 13:05:06',1,2),(92,3,'2016-03-25 13:05:06',1,2),(93,3,'2016-03-25 13:05:06',1,2),(94,3,'2016-03-25 13:05:06',1,2),(95,3,'2016-03-25 13:05:06',1,2),(96,3,'2016-03-25 13:05:06',1,2),(97,3,'2016-03-25 13:05:06',1,2),(98,3,'2016-03-25 13:05:06',1,2),(99,10,'2016-03-25 13:05:06',1,3),(100,3,'2016-03-25 13:05:06',1,2),(101,3,'2016-03-25 13:05:06',1,2),(102,3,'2016-03-25 13:05:06',1,2),(103,3,'2016-03-25 13:05:06',1,2),(104,3,'2016-03-25 13:05:06',1,2),(105,3,'2016-03-25 13:05:06',1,2),(106,3,'2016-03-25 13:05:06',1,2),(107,5,'2016-03-25 13:05:06',1,3),(108,5,'2016-03-25 13:05:06',1,3),(109,10,'2016-03-25 13:05:06',1,3),(110,4,'2016-03-25 13:05:08',1,2),(111,4,'2016-03-25 13:05:08',1,2),(112,4,'2016-03-25 13:05:08',1,2),(113,4,'2016-03-25 13:05:08',1,2),(114,14,'2016-03-25 13:05:10',1,6),(115,15,'2016-03-25 13:05:10',1,6),(116,14,'2016-03-25 13:05:11',1,6),(117,15,'2016-03-25 13:05:11',1,6),(118,14,'2016-03-25 13:05:11',1,6),(119,15,'2016-03-25 13:05:11',1,6),(120,14,'2016-03-25 13:05:11',1,6),(121,15,'2016-03-25 13:05:11',1,6),(122,14,'2016-03-25 13:05:11',1,6),(123,15,'2016-03-25 13:05:11',1,6),(124,14,'2016-03-25 13:05:11',1,6),(125,15,'2016-03-25 13:05:11',1,6),(126,14,'2016-03-25 13:05:11',1,6),(127,15,'2016-03-25 13:05:11',1,6),(128,14,'2016-03-25 13:05:11',1,6),(129,15,'2016-03-25 13:05:11',1,6),(130,14,'2016-03-25 13:05:11',1,6),(131,15,'2016-03-25 13:05:11',1,6),(132,14,'2016-03-25 13:05:12',1,6),(133,15,'2016-03-25 13:05:12',1,6),(134,14,'2016-03-25 13:05:12',1,6),(135,15,'2016-03-25 13:05:12',1,6),(136,14,'2016-03-25 13:05:12',1,6),(137,15,'2016-03-25 13:05:12',1,6),(138,14,'2016-03-25 13:05:12',1,6),(139,15,'2016-03-25 13:05:12',1,6),(140,14,'2016-03-25 13:05:12',1,6),(141,15,'2016-03-25 13:05:12',1,6),(142,14,'2016-03-25 13:05:12',1,6),(143,15,'2016-03-25 13:05:12',1,6),(144,14,'2016-03-25 13:05:13',1,6),(145,15,'2016-03-25 13:05:13',1,6),(146,5,'2016-03-25 13:05:17',1,3),(147,20,'2016-03-25 13:05:17',1,3),(148,9,'2016-03-25 13:05:18',1,3),(149,21,'2016-03-25 13:05:18',1,5),(150,23,'2016-03-25 13:05:18',1,10),(151,24,'2016-03-25 13:05:18',1,1),(152,25,'2016-03-25 13:05:18',1,8),(153,26,'2016-03-25 13:05:18',1,8),(154,21,'2016-03-25 13:05:18',1,5),(155,23,'2016-03-25 13:05:18',1,10),(156,24,'2016-03-25 13:05:18',1,1),(157,25,'2016-03-25 13:05:18',1,8),(158,26,'2016-03-25 13:05:18',1,8),(159,9,'2016-03-25 13:05:18',1,3),(160,21,'2016-03-25 13:05:18',1,5),(161,23,'2016-03-25 13:05:18',1,10),(162,24,'2016-03-25 13:05:18',1,1),(163,25,'2016-03-25 13:05:18',1,8),(164,26,'2016-03-25 13:05:19',1,8),(165,9,'2016-03-25 13:05:19',1,3),(166,21,'2016-03-25 13:05:19',1,5),(167,23,'2016-03-25 13:05:19',1,10),(168,24,'2016-03-25 13:05:19',1,1),(169,25,'2016-03-25 13:05:19',1,8),(170,26,'2016-03-25 13:05:19',1,8),(171,21,'2016-03-25 13:05:19',1,5),(172,23,'2016-03-25 13:05:19',1,10),(173,24,'2016-03-25 13:05:19',1,1),(174,25,'2016-03-25 13:05:19',1,8),(175,26,'2016-03-25 13:05:19',1,8),(176,21,'2016-03-25 13:05:20',1,5),(177,23,'2016-03-25 13:05:20',1,10),(178,24,'2016-03-25 13:05:20',1,1),(179,25,'2016-03-25 13:05:20',1,8),(180,26,'2016-03-25 13:05:20',1,8),(181,20,'2016-03-25 13:05:20',1,3),(182,1,'2016-03-25 13:05:20',1,1),(183,2,'2016-03-25 13:05:20',1,2),(184,3,'2016-03-25 13:05:21',1,2),(185,7,'2016-03-25 13:05:21',1,2),(186,11,'2016-03-25 13:05:21',1,3),(187,21,'2016-03-25 13:05:21',1,5),(188,22,'2016-03-25 13:05:21',1,10),(189,21,'2016-03-25 13:05:21',1,5),(190,22,'2016-03-25 13:05:21',1,10),(191,21,'2016-03-25 13:05:21',1,5),(192,22,'2016-03-25 13:05:21',1,10),(193,1,'2016-03-25 13:05:21',1,1),(194,2,'2016-03-25 13:05:21',1,2),(195,3,'2016-03-25 13:05:21',1,2),(196,5,'2016-03-25 13:05:21',1,3),(197,7,'2016-03-25 13:05:21',1,2),(198,11,'2016-03-25 13:05:21',1,3),(199,5,'2016-03-25 13:05:22',1,3),(200,1,'2016-03-25 13:05:23',1,1),(201,2,'2016-03-25 13:05:23',1,2),(202,3,'2016-03-25 13:05:23',1,2),(203,7,'2016-03-25 13:05:23',1,2),(204,11,'2016-03-25 13:05:23',1,3),(205,18,'2016-03-25 13:05:23',1,8),(206,19,'2016-03-25 13:05:23',1,2),(207,1,'2016-03-25 13:05:23',1,1),(208,2,'2016-03-25 13:05:23',1,2),(209,3,'2016-03-25 13:05:23',1,2),(210,7,'2016-03-25 13:05:23',1,2),(211,11,'2016-03-25 13:05:23',1,3),(212,18,'2016-03-25 13:05:23',1,8),(213,19,'2016-03-25 13:05:23',1,2);
/*!40000 ALTER TABLE `attributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticationtypes`
--

DROP TABLE IF EXISTS `authenticationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authenticationtypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticationtypes`
--

LOCK TABLES `authenticationtypes` WRITE;
/*!40000 ALTER TABLE `authenticationtypes` DISABLE KEYS */;
INSERT INTO `authenticationtypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);
/*!40000 ALTER TABLE `authenticationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtypeconcretecookiemap`
--

DROP TABLE IF EXISTS `authtypeconcretecookiemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtypeconcretecookiemap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtypeconcretecookiemap`
--

LOCK TABLES `authtypeconcretecookiemap` WRITE;
/*!40000 ALTER TABLE `authtypeconcretecookiemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtypeconcretecookiemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannedwords`
--

DROP TABLE IF EXISTS `bannedwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannedwords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannedwords`
--

LOCK TABLES `bannedwords` WRITE;
/*!40000 ALTER TABLE `bannedwords` DISABLE KEYS */;
INSERT INTO `bannedwords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `bannedwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicworkflowpermissionassignments`
--

DROP TABLE IF EXISTS `basicworkflowpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicworkflowpermissionassignments`
--

LOCK TABLES `basicworkflowpermissionassignments` WRITE;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicworkflowprogressdata`
--

DROP TABLE IF EXISTS `basicworkflowprogressdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicworkflowprogressdata`
--

LOCK TABLES `basicworkflowprogressdata` WRITE;
/*!40000 ALTER TABLE `basicworkflowprogressdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowprogressdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockfeatureassignments`
--

DROP TABLE IF EXISTS `blockfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockfeatureassignments`
--

LOCK TABLES `blockfeatureassignments` WRITE;
/*!40000 ALTER TABLE `blockfeatureassignments` DISABLE KEYS */;
INSERT INTO `blockfeatureassignments` VALUES (170,1,16,1),(157,1,110,2),(171,1,112,3),(172,1,114,4),(173,1,116,5),(161,1,125,6),(174,1,132,7),(174,1,139,8),(174,1,143,9),(175,1,146,10);
/*!40000 ALTER TABLE `blockfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockpermissionassignments`
--

DROP TABLE IF EXISTS `blockpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockpermissionassignments`
--

LOCK TABLES `blockpermissionassignments` WRITE;
/*!40000 ALTER TABLE `blockpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockrelations`
--

DROP TABLE IF EXISTS `blockrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockrelations`
--

LOCK TABLES `blockrelations` WRITE;
/*!40000 ALTER TABLE `blockrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjEiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIwNzoiPGRpdiBzdHlsZT0icGFkZGluZzogNDBweDsgdGV4dC1hbGlnbjogY2VudGVyIj4KPGlmcmFtZSB3aWR0aD0iODUzIiBoZWlnaHQ9IjQ4MCIgc3JjPSIvL3d3dy55b3V0dWJlLmNvbS9lbWJlZC9WQi1SNzF6azA2VSIgZnJhbWVib3JkZXI9IjAiIGFsbG93ZnVsbHNjcmVlbj48L2lmcmFtZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+Ijt9'),(2,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',9,1,NULL),(3,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',10,1,NULL),(4,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjQiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQSI7fQ=='),(5,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQiI7fQ=='),(6,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',7,1,NULL),(7,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',6,1,NULL),(8,'','2016-03-25 13:05:06','2016-03-25 13:05:06',NULL,'0',8,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjgiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQyI7fQ=='),(9,'','2016-03-25 13:05:15','2016-03-25 13:05:15','byline.php','0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjExOiJidFBhZ2VUaXRsZSI7czoxNDoidXNlQ3VzdG9tVGl0bGUiO2k6MDtzOjk6InRpdGxlVGV4dCI7czoxMjoiW1BhZ2UgVGl0bGVdIjt9'),(10,'','2016-03-25 13:05:15','2016-03-25 13:05:15',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMSI7fQ=='),(11,'','2016-03-25 13:05:15','2016-03-25 13:05:15',NULL,'0',29,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjExIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnROZXh0UHJldmlvdXMiO3M6OToibmV4dExhYmVsIjtzOjk6Ik5leHQgUG9zdCI7czoxMzoicHJldmlvdXNMYWJlbCI7czo5OiJMYXN0IFBvc3QiO3M6MTE6InBhcmVudExhYmVsIjtzOjA6IiI7czoxMjoibG9vcFNlcXVlbmNlIjtpOjA7czoxODoiZXhjbHVkZVN5c3RlbVBhZ2VzIjtpOjE7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7fQ=='),(12,'','2016-03-25 13:05:15','2016-03-25 13:05:15',NULL,'0',23,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czoxNToiYnRTaGFyZVRoaXNQYWdlIjt9'),(13,'','2016-03-25 13:05:15','2016-03-25 13:05:15',NULL,'0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjEzIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJQIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czoxNzoiYmxvZ19lbnRyeV90b3BpY3MiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjE1OTtzOjU6InRpdGxlIjtzOjY6IlRvcGljcyI7fQ=='),(14,'','2016-03-25 13:05:15','2016-03-25 13:05:15',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI2OntzOjM6ImJJRCI7czoyOiIxNCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtzOjM6IjE1OSI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjEzOiJSZWxhdGVkIFBvc3RzIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO2k6MDtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO2k6NztzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(15,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',26,1,NULL),(16,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE0OntzOjM6ImJJRCI7czoyOiIxNiI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZUNvbnZlcnNhdGlvbiI7czo1OiJjbnZJRCI7czoxOiIxIjtzOjEzOiJlbmFibGVQb3N0aW5nIjtzOjE6IjEiO3M6ODoicGFnaW5hdGUiO3M6MToiMSI7czoxMjoiaXRlbXNQZXJQYWdlIjtzOjI6IjUwIjtzOjExOiJkaXNwbGF5TW9kZSI7czo4OiJ0aHJlYWRlZCI7czo3OiJvcmRlckJ5IjtzOjg6ImRhdGVfYXNjIjtzOjE0OiJlbmFibGVPcmRlcmluZyI7aTowO3M6MTk6ImVuYWJsZUNvbW1lbnRSYXRpbmciO3M6MToiMSI7czoxODoiZGlzcGxheVBvc3RpbmdGb3JtIjtzOjM6InRvcCI7czoxNToiYWRkTWVzc2FnZUxhYmVsIjtzOjExOiJBZGQgTWVzc2FnZSI7czoxMDoiZGF0ZUZvcm1hdCI7czo3OiJkZWZhdWx0IjtzOjE2OiJjdXN0b21EYXRlRm9ybWF0IjtzOjA6IiI7fQ=='),(17,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjE3IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(18,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI1OntzOjM6ImJJRCI7czoyOiIxOCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtpOjA7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO3M6MzoiMTc1IjtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MTQ6Ik9wZW4gUG9zaXRpb25zIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO2k6MDtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO2k6MDtzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(19,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxODI6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMTc1fSIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPjxpIGNsYXNzPSJmYSBmYS1hcnJvdy1sZWZ0Ij48L2k+IEJhY2sgdG8gQ2FyZWVyczwvYT48L3A+Ijt9'),(20,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxOToiPGgzPkRlcGFydG1lbnQ8L2gzPiI7fQ=='),(21,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjIxIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjIyOiJqb2JfcG9zdGluZ19kZXBhcnRtZW50IjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6MDoiIjtzOjEwOiJkaXNwbGF5VGFnIjtzOjE6InAiO3M6MTA6ImRhdGVGb3JtYXQiO3M6MTE6Im0vZC95IGg6aTphIjtzOjE1OiJ0aHVtYm5haWxIZWlnaHQiO3M6MzoiMjUwIjtzOjE0OiJ0aHVtYm5haWxXaWR0aCI7czozOiIyNTAiO30='),(22,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNzoiPGgzPkxvY2F0aW9uPC9oMz4iO30='),(23,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjIzIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEyOiJqb2JfbG9jYXRpb24iO3M6MTg6ImF0dHJpYnV0ZVRpdGxlVGV4dCI7czowOiIiO3M6MTA6ImRpc3BsYXlUYWciO3M6MToicCI7czoxMDoiZGF0ZUZvcm1hdCI7czoxMToibS9kL3kgaDppOmEiO3M6MTU6InRodW1ibmFpbEhlaWdodCI7czozOiIyNTAiO3M6MTQ6InRodW1ibmFpbFdpZHRoIjtzOjM6IjI1MCI7fQ=='),(24,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNDoiPGgzPkpvYiBJbmZvcm1hdGlvbjwvaDM+Ijt9'),(25,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMiI7fQ=='),(26,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2MzoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YnIvPjxici8+Ijt9'),(27,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(28,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI4IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiMyI7fQ=='),(29,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjI5IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X2NsaWVudCI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IkNsaWVudDoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(30,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjMwIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEzOiJwcm9qZWN0X3Rhc2tzIjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6NToiVGFzazoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(31,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',16,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjMxIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X3NraWxscyI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IlNraWxsczoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),(32,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',2,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMyIjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiNCI7fQ=='),(33,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',26,1,NULL),(34,'','2016-03-25 13:05:16','2016-03-25 13:05:16','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI3OntzOjM6ImJJRCI7czoyOiIzNCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjE2OiJSZWxhdGVkIFByb2plY3RzIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO2k6MDtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO2k6OTtzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MjY6Ik5vIHJlbGF0ZWQgcHJvamVjdHMgZm91bmQuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjAiO3M6MTM6InRydW5jYXRlQ2hhcnMiO2k6MDt9'),(35,'','2016-03-25 13:05:16','2016-03-25 13:05:16','archive.php','0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjM1IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(36,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM2IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIxIjt9'),(37,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI4OntzOjM6ImJJRCI7czoyOiIzNyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjI6IjEwIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7aTowO3M6NToiY1RoaXMiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MDoiIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7aTowO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIxIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7aToxO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjEiO3M6NDoicHRJRCI7aTo3O3M6NDoicGZJRCI7aToxO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czoyMjoiTm8gcG9zdHMgdG8gdGhpcyBibG9nLiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(38,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjM4IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJ0aXRsZSI7czo2OiJUb3BpY3MiO30='),(39,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',13,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjM5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnREYXRlTmF2aWdhdGlvbiI7czo1OiJ0aXRsZSI7czo4OiJBcmNoaXZlcyI7czoxNDoiZmlsdGVyQnlQYXJlbnQiO3M6MToiMSI7czoxNzoicmVkaXJlY3RUb1Jlc3VsdHMiO3M6MToiMCI7czo5OiJjUGFyZW50SUQiO2k6MTU5O3M6OToiY1RhcmdldElEIjtpOjA7czo0OiJwdElEIjtpOjc7fQ=='),(40,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjQwIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MTI6IltQYWdlIFRpdGxlXSI7fQ=='),(41,'','2016-03-25 13:05:16','2016-03-25 13:05:16','flat_filter.php','0',20,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjQxIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjMiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJ0aXRsZSI7czowOiIiO30='),(42,'','2016-03-25 13:05:16','2016-03-25 13:05:16','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI4OntzOjM6ImJJRCI7czoyOiI0MiI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtpOjA7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO2k6MDtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTY6InVzZUJ1dHRvbkZvckxpbmsiO3M6MToiMCI7czoxNDoiYnV0dG9uTGlua1RleHQiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO2k6MDtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MTtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIxIjtzOjQ6InB0SUQiO2k6OTtzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MTg6Ik5vIHByb2plY3RzIGZvdW5kLiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIxIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(43,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNTc6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD4xMjM0IFNFIFN0cmVldFZpZXc8L3A+PHA+U3VpdGUgMzAxPC9wPjxwPlBvcnRsYW5kLCBPUiA5ODEwMTwvcD48cD48YSBocmVmPSJ7Q0NNOkNJRF8xNjF9Ij5WaWV3IG9uIEdvb2dsZSBNYXBzPC9hPjwvcD4iO30='),(44,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2ODoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPsKpIDIwMTbCoEVsZW1lbnRhbCBUaGVtZTwvcD4iO30='),(45,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozOTg6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMTc2fSI+RkFRIC8gSGVscDwvYT48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE1Nn0iPkNhc2UgU3R1ZGllczwvYT48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE1OX0iPkJsb2c8L2E+PC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48YSBocmVmPSJ7Q0NNOkNJRF8xfSI+QW5vdGhlciBMaW5rPC9hPjwvcD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIjt9'),(46,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo1ODoiPGEgaHJlZj0ie0NDTTpDSURfMX0iIGlkPSJmb290ZXItc2l0ZS10aXRsZSI+RWxlbWVudGFsPC9hPiI7fQ=='),(47,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',21,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQ3IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRTb2NpYWxMaW5rcyI7fQ=='),(48,'','2016-03-25 13:05:16','2016-03-25 13:05:16','responsive_header_navigation','0',11,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiI0OCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6MzoiYWxsIjtzOjIwOiJkaXNwbGF5U3ViUGFnZUxldmVscyI7czo2OiJjdXN0b20iO3M6MjM6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzTnVtIjtzOjE6IjEiO3M6MjM6ImRpc3BsYXlVbmF2YWlsYWJsZVBhZ2VzIjtpOjA7czoxODoiZGlzcGxheVN5c3RlbVBhZ2VzIjtpOjA7fQ=='),(49,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',32,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjQ5IjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czowOiIiO3M6MTA6ImJ1dHRvblRleHQiO3M6MDoiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InBvc3RUb19jSUQiO2k6MTYwO3M6MTA6InJlc3VsdHNVUkwiO3M6MDoiIjt9'),(50,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjUwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo1ODoiPGEgaHJlZj0ie0NDTTpDSURfMX0iIGlkPSJoZWFkZXItc2l0ZS10aXRsZSI+RWxlbWVudGFsPC9hPiI7fQ=='),(51,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjUxIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMSI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(52,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjUyIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIyIjt9'),(53,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjUzIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo2OiJwZW5jaWwiO3M6NToidGl0bGUiO3M6MTI6IkVhc3kgdG8gRWRpdCI7czo5OiJwYXJhZ3JhcGgiO3M6MTgxOiJQZWxsZW50ZXNxdWUgdWx0cmljaWVzIGxpZ3VsYSB2ZWwgbmVxdWUgZGljdHVtLCBldSBtb2xsaXMgdG9ydG9yIGFkaXBpc2NpbmcuIEV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(54,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjU0IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czozOiJleWUiO3M6NToidGl0bGUiO3M6MTM6IlBpeGVsIFBlcmZlY3QiO3M6OToicGFyYWdyYXBoIjtzOjE4MToiUGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(55,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjU1IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czoxMjoieW91dHViZS1wbGF5IjtzOjU6InRpdGxlIjtzOjEwOiJNZWRpYSBSaWNoIjtzOjk6InBhcmFncmFwaCI7czoxODE6IlBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(56,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',26,1,NULL),(57,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozNzA6IjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBjZW50ZXIiPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzLWJvbGQiPlByZXNlbnRpbmcgeW91ciBCdXNpbmVzcyBoYXMgbmV2ZXIgYmVlbiBzbyBlYXN5PC9zcGFuPjwvcD48cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLjwvcD48cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+RXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS7CoDwvcD4iO30='),(58,'','2016-03-25 13:05:16','2016-03-25 13:05:16','thumbnail_grid','0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI4OntzOjM6ImJJRCI7czoyOiI1OCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjEyOiJWaWV3IFByb2plY3QiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MDoiIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7aTowO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7aTowO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7aTo5O3M6NDoicGZJRCI7aTowO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMSI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czowOiIiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7aTowO30='),(59,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',26,1,NULL),(60,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYwIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIzIjt9'),(61,'','2016-03-25 13:05:16','2016-03-25 13:05:16',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNToiPGg1PkxhdGVzdCBCbG9nIFBvc3Q8L2g1PiI7fQ=='),(62,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMDoiPGg1Pk5vdyBPcGVuIEZvciBCdXNpbmVzczwvaDU+Ijt9'),(63,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYzIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI0Ijt9'),(64,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI4OntzOjM6ImJJRCI7czoyOiI2NCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjA6IiI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtpOjA7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMCI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtpOjc7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjA6IiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIxIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(65,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI4OntzOjM6ImJJRCI7czoyOiI2NSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiZGlzcGxheV9hc2MiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjA6IiI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtpOjA7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtpOjc7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjA6IiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),(66,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2MTY6IjxwPiAgPHNwYW4gY2xhc3M9InRpdGxlLXRoaW4iPldlIHNwZWNpYWxpemUgaW4gbWFraW5nIHlvdXIgY29uY2VwdHMgYSByZWFsaXR5Ljwvc3Bhbj4gIDwvcD4gIDxwPiAgICBTZWQgY3Vyc3VzIGZhY2lsaXNpcyBkaWduaXNzaW0uIEFsaXF1YW0gcmhvbmN1cyBlbmltIGV0IHBlbGxlbnRlc3F1ZSB2YXJpdXMuIE51bGxhIHNvZGFsZXMgbmliaCBsb3JlbSwgc2l0IGFtZXQgaW1wZXJkaWV0IGFyY3UgY29tbW9kbyBzaXQgYW1ldC4gTWF1cmlzIHNlZCBzY2VsZXJpc3F1ZSBuaXNsLiBVdCBhdWN0b3IgaXBzdW0gdGVsbHVzLCB2ZWwgdml2ZXJyYSBtYXNzYSBlbGVtZW50dW0gc2l0IGFtZXQuICA8L3A+ICA8cD4gICAgU2VkIGFkaXBpc2NpbmcgdGVtcHVzIHNlbSBldSBtb2xlc3RpZS4gQWVuZWFuIGxhb3JlZXQgcHJldGl1bSBhbnRlIHZpdGFlIHVsdHJpY2VzLiBBZW5lYW4gZXUgZ3JhdmlkYSBtYWduYSwgdmVsIGFsaXF1ZXQgbWFnbmEuIEluIGF1Y3RvciBjb252YWxsaXMgZ3JhdmlkYS48YnI+ICA8L3A+ICA8YnIvPiAgPHA+ICA8YSBocmVmPSJ7Q0NNOkNJRF8xNjF9Ij48c3BhbiBjbGFzcz0iYnRuIGJ0bi1zdWNjZXNzIj5Db250YWN0IFVzIFRvZGF5PC9zcGFuPjwvYT4gIDwvcD4iO30='),(67,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxMDk6IjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBjZW50ZXIiPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzIj5DdXN0b21pemFibGUgZm9vdGVyIGFyZWEgd2l0aCBhY2NlbnQgY2xhc3MuPC9zcGFuPjwvcD4iO30='),(68,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjY4IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjE7czo5OiJ0aXRsZVRleHQiO3M6MTM6Ik91ciBFeHBlcnRpc2UiO30='),(69,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI1Ijt9'),(70,'','2016-03-25 13:05:17','2016-03-25 13:05:17','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcwIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJzdGFyIjtzOjU6InRpdGxlIjtzOjc6IlF1YWxpdHkiO3M6OToicGFyYWdyYXBoIjtzOjkwOiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBOdWxsYSBzb2RhbGVzIG5vbiBsZW8gaWQgYWxpcXVldC4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(71,'','2016-03-25 13:05:17','2016-03-25 13:05:17','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcxIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJ0aW50IjtzOjU6InRpdGxlIjtzOjY6IkRlc2lnbiI7czo5OiJwYXJhZ3JhcGgiO3M6OTA6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhIHNvZGFsZXMgbm9uIGxlbyBpZCBhbGlxdWV0LiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(72,'','2016-03-25 13:05:17','2016-03-25 13:05:17','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjcyIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czozOiJjb2ciO3M6NToidGl0bGUiO3M6MTE6IkRldmVsb3BtZW50IjtzOjk6InBhcmFncmFwaCI7czo5MDoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGEgc29kYWxlcyBub24gbGVvIGlkIGFsaXF1ZXQuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(73,'','2016-03-25 13:05:17','2016-03-25 13:05:17','hover_description','0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjczIjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJsb2NrIjtzOjU6InRpdGxlIjtzOjg6IlNlY3VyaXR5IjtzOjk6InBhcmFncmFwaCI7czo5MDoiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGEgc29kYWxlcyBub24gbGVvIGlkIGFsaXF1ZXQuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(74,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',26,1,NULL),(75,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc1IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI2Ijt9'),(76,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5Nzk6IjxoMz5Bd2Vzb21lIEZlYXR1cmVzPC9oMz48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIDwvcD48aDM+R3VpZGUgQm9va3M8L2gzPjxwPkZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGFtIHNpdCBhbWV0IGNvbnNlY3RldHVyIGxhY3VzLiBWZXN0aWJ1bHVtIG5lcXVlIGxlY3R1cywgZWdlc3RhcyBub24gY3Vyc3VzIHZpdGFlLCBhbGlxdWFtIGF0IG1hZ25hLiBFdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiA8L3A+PGgzPkFkbWluIEFjY291bnRzPC9oMz48cD5GdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy7CoDwvcD4iO30='),(77,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4MTg6IjxoMz5TdXBwb3J0PC9oMz48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIDwvcD48aDM+QWRkaXRpb25hbCBPcHRpb25zPC9oMz48cD5GdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS7CoDwvcD48cD5FdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiBJbiBncmF2aWRhIHR1cnBpcyBhIHBoYXJldHJhIGNvbW1vZG8uIERvbmVjIG5vbiB0dXJwaXMgdnVscHV0YXRlLCBmYXVjaWJ1cyBtZXR1cyBhLCBjb25zZWN0ZXR1ciBudW5jLiBNb3JiaSB0b3J0b3IgbmlzaSwgaGVuZHJlcml0IHNlZCBsYW9yZWV0IGVnZXQsIGZlcm1lbnR1bSBldCBqdXN0by4gU3VzcGVuZGlzc2UgcG90ZW50aS48L3A+Ijt9'),(78,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5ODoiPHAgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlciI+PHNwYW4gY2xhc3M9InRpdGxlLWNhcHMiPldoYXQgQ2xpZW50cyBBcmUgU2F5aW5nIEFib3V0IFVzPC9zcGFuPjwvcD4iO30='),(79,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI3Ijt9'),(80,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgwIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MTtzOjQ6Im5hbWUiO3M6MTI6IkZyYW56IE1hcnVuYSI7czo4OiJwb3NpdGlvbiI7czoxMzoiQ0VPICYgRm91bmRlciI7czo3OiJjb21wYW55IjtzOjk6ImNvbmNyZXRlNSI7czoxMDoiY29tcGFueVVSTCI7czoyMDoiaHR0cDovL2NvbmNyZXRlNS5vcmciO3M6OToicGFyYWdyYXBoIjtzOjE3MjoiQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIE1vcmJpIGF0IHN1c2NpcGl0IHJpc3VzLiI7fQ=='),(81,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgxIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MTtzOjQ6Im5hbWUiO3M6ODoiSm9obiBEb2UiO3M6ODoicG9zaXRpb24iO3M6MTk6Ik1hcmtldGluZyBEaXJlY3RvcnkiO3M6NzoiY29tcGFueSI7czo5OiJDb21wYW55Q28iO3M6MTA6ImNvbXBhbnlVUkwiO3M6MDoiIjtzOjk6InBhcmFncmFwaCI7czoxNzI6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4iO30='),(82,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgyIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MTtzOjQ6Im5hbWUiO3M6MTM6IkFuZHJldyBFbWJsZXIiO3M6ODoicG9zaXRpb24iO3M6MTM6IkNUTyAmIEZvdW5kZXIiO3M6NzoiY29tcGFueSI7czo5OiJjb25jcmV0ZTUiO3M6MTA6ImNvbXBhbnlVUkwiO3M6MjA6Imh0dHA6Ly9jb25jcmV0ZTUub3JnIjtzOjk6InBhcmFncmFwaCI7czoxNzI6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4iO30='),(83,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjgzIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MTtzOjQ6Im5hbWUiO3M6ODoiSmFuZSBEb2UiO3M6ODoicG9zaXRpb24iO3M6MTA6IklUIE1hbmFnZXIiO3M6NzoiY29tcGFueSI7czo5OiJDb21wYW55Q28iO3M6MTA6ImNvbXBhbnlVUkwiO3M6MDoiIjtzOjk6InBhcmFncmFwaCI7czoxNzI6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4iO30='),(84,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6Ijg0IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(85,'','2016-03-25 13:05:17','2016-03-25 13:05:17',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(86,'','2016-03-25 13:05:18','2016-03-25 13:05:18',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6Ijg2IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(87,'','2016-03-25 13:05:18','2016-03-25 13:05:18',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(88,'','2016-03-25 13:05:18','2016-03-25 13:05:18',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6Ijg4IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(89,'','2016-03-25 13:05:18','2016-03-25 13:05:18',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(90,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjkwIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(91,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(92,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjkyIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(93,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjkzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(94,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',33,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6Ijk0IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czo3OiJ0aW1lb3V0IjtpOjQwMDA7czo1OiJzcGVlZCI7aTo1MDA7czo5OiJub0FuaW1hdGUiO2k6MDtzOjU6InBhdXNlIjtpOjA7fQ=='),(95,'','2016-03-25 13:05:19','2016-03-25 13:05:19',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyOTYxOiI8YmxvY2txdW90ZT5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBNb3JiaSB0ZW1wdXMgbmliaCBhIGxhb3JlZXQgY3Vyc3VzLiBQaGFzZWxsdXMgbWFsZXN1YWRhIHZ1bHB1dGF0ZSBiaWJlbmR1bS4gVXQgdml0YWUganVzdG8gbmlzaS4gU2VkIGNvbnNlY3RldHVyIHZlc3RpYnVsdW0gdG9ydG9yLCBpbiBiaWJlbmR1bSBkaWFtIGxhY2luaWEgdml0YWUuIE51bGxhbSB2b2x1dHBhdCByaXN1cyBxdWlzIG9yY2kgY29uc2VjdGV0dXIgYWRpcGlzY2luZy4gSW4gY29tbW9kbyB2dWxwdXRhdGUgYXJjdSBzaXQgYW1ldCBvcm5hcmUuIFZpdmFtdXMgdXQgaWFjdWxpcyB2ZWxpdC48L2Jsb2NrcXVvdGU+PHA+UGVsbGVudGVzcXVlIGV1aXNtb2QgbGFjdXMgc2VkIGFjY3Vtc2FuIGx1Y3R1cy4gU3VzcGVuZGlzc2UgdXJuYSBmZWxpcywgbGFjaW5pYSB2ZWwgdGVtcG9yIGlkLCB1bHRyaWNpZXMgcnV0cnVtIG5pc2wuIE51bmMgdWx0cmljZXMgbnVsbGEgZXQgYmliZW5kdW0gbW9sZXN0aWUuIFBoYXNlbGx1cyBwb3J0dGl0b3Igc2l0IGFtZXQgbGliZXJvIHZlbCBmZXJtZW50dW0uIFNlZCBzYXBpZW4gcmlzdXMsIGVsZWlmZW5kIHZlbCBoZW5kcmVyaXQgZXUsIHBvcnRhIHZlbCB0ZWxsdXMuIER1aXMgZmF1Y2lidXMgb2RpbyBldCBtYWduYSB2YXJpdXMsIHF1aXMgYWNjdW1zYW4gdGVsbHVzIHZlc3RpYnVsdW0uIE5hbSBudW5jIG51bGxhLCBjb252YWxsaXMgYXQgZWxlbWVudHVtIHBoYXJldHJhLCBhZGlwaXNjaW5nIHF1aXMgZW5pbS4gRG9uZWMgZmV1Z2lhdCBwb3J0dGl0b3IgZG9sb3IsIG5lYyBwb3J0dGl0b3IgbWkgYXVjdG9yIGVnZXQuIEZ1c2NlIGlhY3VsaXMgdmFyaXVzIGRpYW0gbm9uIGRpY3R1bS4gRnVzY2UgZWxlbWVudHVtIGEgbnVuYyB2ZWwgdGluY2lkdW50LiBNb3JiaSBuZWMgZXN0IGVsZW1lbnR1bSwgdmVoaWN1bGEgb2RpbyBuZWMsIGxvYm9ydGlzIGxhY3VzLiBOdWxsYSB1bHRyaWNpZXMgdml0YWUgbnVuYyB1dCBsYWNpbmlhLiBQcm9pbiBtYXR0aXMgZmVsaXMgc2VtLCBldSBjb25zZWN0ZXR1ciBhcmN1IHZhcml1cyBldC4gRHVpcyBhdCBsZWN0dXMgZXUgbG9yZW0gZWxlbWVudHVtIGFsaXF1ZXQgbmVjIGluIGVsaXQuIFZlc3RpYnVsdW0gbm9uIG1ldHVzIGFjIHJpc3VzIGFkaXBpc2NpbmcgcGVsbGVudGVzcXVlIHNlZCBzaXQgYW1ldCBsb3JlbS4gRG9uZWMgdml2ZXJyYSwgbWV0dXMgaW4gdmFyaXVzIHB1bHZpbmFyLCBhdWd1ZSBudW5jIGFjY3Vtc2FuIGVyb3MsIGEgcHVsdmluYXIgZXN0IGVsaXQgdml0YWUgbnVsbGEuPC9wPjxwPkR1aXMgbm9uIGxlbyBpbiBlbmltIGxhb3JlZXQgcHJldGl1bS4gTnVsbGFtIHZpdGFlIG5lcXVlIG5lYyBsaWJlcm8gcGhhcmV0cmEgdGVtcG9yIGF0IGZhdWNpYnVzIGxlY3R1cy4gQ3VtIHNvY2lpcyBuYXRvcXVlIHBlbmF0aWJ1cyBldCBtYWduaXMgZGlzIHBhcnR1cmllbnQgbW9udGVzLCBuYXNjZXR1ciByaWRpY3VsdXMgbXVzLiBTZWQgaW1wZXJkaWV0IGNvbnZhbGxpcyBhcmN1LiBOYW0gc29sbGljaXR1ZGluIHNvbGxpY2l0dWRpbiBsYWN1cyBub24gZGljdHVtLiBBbGlxdWFtIGVyYXQgdm9sdXRwYXQuIE51bGxhIHNhcGllbiBxdWFtLCBjb25zZXF1YXQgbm9uIGR1aSB1dCwgZWxlaWZlbmQgc29kYWxlcyBvcmNpLiBQcmFlc2VudCBxdWlzIGxvcmVtIGFjY3Vtc2FuLCB2b2x1dHBhdCBsZWN0dXMgYSwgc29sbGljaXR1ZGluIGVyYXQuIERvbmVjIGZhdWNpYnVzIG1pIGluIHNhcGllbiB2b2x1dHBhdCwgYWMgYXVjdG9yIGxvcmVtIG1vbGxpcy4gUHJvaW4gZWdldCB0dXJwaXMgbm9uIGxhY3VzIGJpYmVuZHVtIHBvcnRhIG5vbiBhYyBqdXN0by4gQWxpcXVhbSBhbGlxdWFtIHZpdmVycmEgbG9yZW0gYWMgcnV0cnVtLiBJbiBldCBzYXBpZW4gc2l0IGFtZXQgZGlhbSB2ZXN0aWJ1bHVtIGN1cnN1cyB1dCB0cmlzdGlxdWUgdGVsbHVzLjwvcD48cD5VdCBpbiBwdXJ1cyBtaS4gRXRpYW0gYWMgYWxpcXVldCBpcHN1bS4gUGVsbGVudGVzcXVlIGZhdWNpYnVzIGRpYW0gZHVpLiBNb3JiaSBhIHNlbXBlciBvcmNpLiBVdCBuZWMgbWFsZXN1YWRhIHVybmEuIFZlc3RpYnVsdW0gYWxpcXVldCBhbnRlIGFjIGxhY3VzIGRpY3R1bSwgc2l0IGFtZXQgcHVsdmluYXIgbGVvIGxhb3JlZXQuIE1hZWNlbmFzIHV0IGVzdCBjb21tb2RvLCBjb21tb2RvIHF1YW0gbmVjLCBkaWduaXNzaW0gZXN0LiBRdWlzcXVlIHJ1dHJ1bSBtb2xlc3RpZSBudW5jLCBzZWQgbW9sbGlzIG51bGxhIHZvbHV0cGF0IGV0LiBEb25lYyBkaWduaXNzaW0gb3JuYXJlIGF1Z3VlIGV1IGFsaXF1YW0uIEFsaXF1YW0gaW4gdGluY2lkdW50IHZlbGl0LiBJbiBhdCBmZXJtZW50dW0gbWF1cmlzLCB1dCBhY2N1bXNhbiBuaXNsLiBJbnRlcmR1bSBldCBtYWxlc3VhZGEgZmFtZXMgYWMgYW50ZSBpcHN1bSBwcmltaXMgaW4gZmF1Y2lidXMuPC9wPjxwPkludGVnZXIgYWMgbnVsbGEgYXQgbmlzaSBzb2RhbGVzIHVsbGFtY29ycGVyIGlkIGluIGp1c3RvLiBDdW0gc29jaWlzIG5hdG9xdWUgcGVuYXRpYnVzIGV0IG1hZ25pcyBkaXMgcGFydHVyaWVudCBtb250ZXMsIG5hc2NldHVyIHJpZGljdWx1cyBtdXMuIEV0aWFtIHBoYXJldHJhIGVsaXQgb2RpbywgYWMgbWF0dGlzIHR1cnBpcyBjb25zZXF1YXQgYWMuIFBlbGxlbnRlc3F1ZSB0aW5jaWR1bnQgc2VkIGVuaW0gbmVjIGF1Y3Rvci4gUXVpc3F1ZSB2YXJpdXMsIGZlbGlzIGEgaGVuZHJlcml0IGZhdWNpYnVzLCBudW5jIGxvcmVtIHZhcml1cyBuaWJoLCB2ZWwgZGlnbmlzc2ltIHZlbGl0IGRvbG9yIHV0IGVsaXQuIE1hdXJpcyB1dCB2dWxwdXRhdGUgbmVxdWUuIERvbmVjIGF0IGVzdCB2aXRhZSBtYXNzYSBlZ2VzdGFzIGZyaW5naWxsYS4gUHJhZXNlbnQgYSB0cmlzdGlxdWUgbmliaC4gTnVuYyBibGFuZGl0IGR1aSByaXN1cywgcXVpcyByaG9uY3VzIG5pc2kgY29uc2VjdGV0dXIgdmVsLjwvcD4iO30='),(96,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6Ijk2IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MDoiIjt9'),(97,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk3IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI4Ijt9'),(98,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6Ijk4IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MztzOjQ6Im5hbWUiO3M6MTA6IkpvaG4gU21pdGgiO3M6ODoicG9zaXRpb24iO3M6MTY6IkNvLUZvdW5kZXIgLyBDRU8iO3M6NzoiY29tcGFueSI7czowOiIiO3M6MTA6ImNvbXBhbnlVUkwiO3M6MDoiIjtzOjk6InBhcmFncmFwaCI7czoxNDc6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiI7fQ=='),(99,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6Ijk5IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRUZXN0aW1vbmlhbCI7czozOiJmSUQiO2k6MztzOjQ6Im5hbWUiO3M6OToiQm9iIFNtaXRoIjtzOjg6InBvc2l0aW9uIjtzOjE2OiJDby1Gb3VuZGVyIC8gQ1RPIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(100,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',26,1,NULL),(101,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwMSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiOSI7fQ=='),(102,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwMiI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjEwOiJKb2huIFNtaXRoIjtzOjg6InBvc2l0aW9uIjtzOjEyOiJBcnQgRGlyZWN0b3IiO3M6NzoiY29tcGFueSI7czowOiIiO3M6MTA6ImNvbXBhbnlVUkwiO3M6MDoiIjtzOjk6InBhcmFncmFwaCI7czoxNDc6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiI7fQ=='),(103,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwMyI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjEwOiJKb2huIFNtaXRoIjtzOjg6InBvc2l0aW9uIjtzOjEyOiJBcnQgRGlyZWN0b3IiO3M6NzoiY29tcGFueSI7czowOiIiO3M6MTA6ImNvbXBhbnlVUkwiO3M6MDoiIjtzOjk6InBhcmFncmFwaCI7czoxNDc6IkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiI7fQ=='),(104,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNCI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjk6IkJvYiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(105,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNSI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjk6IkJvYiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(106,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNiI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjk6IkJvYiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(107,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',22,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjEwNyI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtpOjM7czo0OiJuYW1lIjtzOjk6IkJvYiBTbWl0aCI7czo4OiJwb3NpdGlvbiI7czoxMjoiQXJ0IERpcmVjdG9yIjtzOjc6ImNvbXBhbnkiO3M6MDoiIjtzOjEwOiJjb21wYW55VVJMIjtzOjA6IiI7czo5OiJwYXJhZ3JhcGgiO3M6MTQ3OiJDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4iO30='),(108,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',26,1,NULL),(109,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwOSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTAiO30='),(110,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxMTAiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO2k6NTtzOjEwOiJmT25zdGF0ZUlEIjtpOjA7czo4OiJtYXhXaWR0aCI7aTowO3M6OToibWF4SGVpZ2h0IjtpOjA7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7czo3OiJhbHRUZXh0IjtzOjExOiJCbGFuayBJbWFnZSI7czo1OiJ0aXRsZSI7czoxMToiQmxhbmsgSW1hZ2UiO30='),(111,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzE5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJ0aXRsZS10aGluIj5HZXQgaW4gVG91Y2g8L3A+PHA+U2VkIGN1cnN1cyBmYWNpbGlzaXMgZGlnbmlzc2ltLiBBbGlxdWFtIHJob25jdXMgZW5pbSBldCBwZWxsZW50ZXNxdWUgdmFyaXVzLiBOdWxsYSBzb2RhbGVzIG5pYmggbG9yZW0sIHNpdCBhbWV0IGltcGVyZGlldCBhcmN1IGNvbW1vZG8gc2l0IGFtZXQuPGJyPjxicj48L3A+PHA+PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0ie0NDTTpDSURfMTYxfSI+Q29udGFjdCBVczwvYT48L3A+Ijt9'),(112,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE0OntzOjM6ImJJRCI7czozOiIxMTIiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiMiI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO30='),(113,'','2016-03-25 13:05:20','2016-03-25 13:05:20',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzAyOToiPGJsb2NrcXVvdGU+RnVzY2Ugdm9sdXRwYXQgc29kYWxlcyBtYXVyaXMgcXVpcyBkYXBpYnVzLiBNYWVjZW5hcyBjb252YWxsaXMsIGxpYmVybyBldSB1bHRyaWNlcyBpbnRlcmR1bSwgbGVvIG1hdXJpcyBjb21tb2RvIGRpYW0sIHNlZCBjdXJzdXMgc2FwaWVuIGxpZ3VsYSBuZWMgbGVvLjwvYmxvY2txdW90ZT48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIEZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGFtIHNpdCBhbWV0IGNvbnNlY3RldHVyIGxhY3VzLiBWZXN0aWJ1bHVtIG5lcXVlIGxlY3R1cywgZWdlc3RhcyBub24gY3Vyc3VzIHZpdGFlLCBhbGlxdWFtIGF0IG1hZ25hLiBFdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiBJbiBncmF2aWRhIHR1cnBpcyBhIHBoYXJldHJhIGNvbW1vZG8uIERvbmVjIG5vbiB0dXJwaXMgdnVscHV0YXRlLCBmYXVjaWJ1cyBtZXR1cyBhLCBjb25zZWN0ZXR1ciBudW5jLiBNb3JiaSB0b3J0b3IgbmlzaSwgaGVuZHJlcml0IHNlZCBsYW9yZWV0IGVnZXQsIGZlcm1lbnR1bSBldCBqdXN0by4gU3VzcGVuZGlzc2UgcG90ZW50aS48L3A+PHA+PGEgaHJlZj0ie0NDTTpGSURfRExfMn0iIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmaWQ9IjIiIC8+PC9hPjwvcD48aDI+SGVhZGluZyAyPC9oMj48cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIEZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gTnVsbGFtIHNpdCBhbWV0IGNvbnNlY3RldHVyIGxhY3VzLiBWZXN0aWJ1bHVtIG5lcXVlIGxlY3R1cywgZWdlc3RhcyBub24gY3Vyc3VzIHZpdGFlLCBhbGlxdWFtIGF0IG1hZ25hLiBFdGlhbSBhbGlxdWFtLCBqdXN0byBldCB2YXJpdXMgZWxlaWZlbmQsIGR1aSBsZWN0dXMgZWdlc3RhcyBudW5jLCB2ZWwgbWFsZXN1YWRhIG5pc2wgcHVydXMgbmVjIG1ldHVzLiBJbiBncmF2aWRhIHR1cnBpcyBhIHBoYXJldHJhIGNvbW1vZG8uIERvbmVjIG5vbiB0dXJwaXMgdnVscHV0YXRlLCBmYXVjaWJ1cyBtZXR1cyBhLCBjb25zZWN0ZXR1ciBudW5jLiBNb3JiaSB0b3J0b3IgbmlzaSwgaGVuZHJlcml0IHNlZCBsYW9yZWV0IGVnZXQsIGZlcm1lbnR1bSBldCBqdXN0by4gU3VzcGVuZGlzc2UgcG90ZW50aS48L3A+PGgzPkhlYWRpbmcgMzwvaDM+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD48aDM+SGVhZGluZyAzPC9oMz48cD5Eb25lYyBibGFuZGl0IGxlY3R1cyBuZWMgbmVxdWUgdWxsYW1jb3JwZXIgcmhvbmN1cy4gU2VkIGFkaXBpc2NpbmcgdGVtcHVzIHNlbSBldSBtb2xlc3RpZS4gQWVuZWFuIGxhb3JlZXQgcHJldGl1bSBhbnRlIHZpdGFlIHVsdHJpY2VzLiBBZW5lYW4gZXUgZ3JhdmlkYSBtYWduYSwgdmVsIGFsaXF1ZXQgbWFnbmEuIEluIGF1Y3RvciBjb252YWxsaXMgZ3JhdmlkYS4gUGhhc2VsbHVzIGVzdCBlcmF0LCBhZGlwaXNjaW5nIG5lYyBsb2JvcnRpcyBxdWlzLCBlbGVpZmVuZCBhdCBzZW0uIEN1cmFiaXR1ciBmcmluZ2lsbGEgdml2ZXJyYSBkb2xvciwgaW4gcnV0cnVtIGlwc3VtIHJ1dHJ1bSBzaXQgYW1ldC4gVmVzdGlidWx1bSBmZXVnaWF0IHBvcnR0aXRvciBpcHN1bSB2ZWwgY29uZGltZW50dW0uIFN1c3BlbmRpc3NlIGF0IHRlbXB1cyBsaWJlcm8uIFNlZCBldSB0ZW1wb3IgZW5pbS4gRXRpYW0gY29udmFsbGlzIGVsZWlmZW5kIHJ1dHJ1bS4gRG9uZWMgcG9ydGEgZGlhbSBxdWlzIHRlbGx1cyBmZXVnaWF0IGRpZ25pc3NpbS4gQ3JhcyBwb3N1ZXJlLCBtYXNzYSBlZ2V0IGxhb3JlZXQgbGFvcmVldCwgdXJuYSBsaWJlcm8gbG9ib3J0aXMgZG9sb3IsIHNlZCBjb25zZXF1YXQgZWxpdCB1cm5hIGVnZXQgbWFzc2EuIERvbmVjIGFsaXF1ZXQgcGVsbGVudGVzcXVlIGNvbnNlY3RldHVyLjwvcD4iO30='),(114,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE0OntzOjM6ImJJRCI7czozOiIxMTQiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiMyI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO30='),(115,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6OTA0OiI8cD5DdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiBOYW0gYmliZW5kdW0gbGVvIG5pc2ksIGxhY2luaWEgbW9sZXN0aWUgYXJjdSBjb25zZXF1YXQgcXVpcy4gTW9yYmkgYXQgc3VzY2lwaXQgcmlzdXMuIFNlZCBjb25zZXF1YXQgZWxlaWZlbmQgbWV0dXMsIHZpdGFlIG1hbGVzdWFkYSBlcm9zIGVsZW1lbnR1bSBzZWQuIEZ1c2NlIHJpc3VzIGZlbGlzLCB2aXZlcnJhIGV0IGRpZ25pc3NpbSBhdCwgbG9ib3J0aXMgbm9uIGVzdC4gTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC7CoDwvcD48cD48c3BhbiBjbGFzcz0idGl0bGUtdGhpbiI+Q01TIFRvIHRoZSBSZXNjdWUhPC9zcGFuPjwvcD48cD5OdWxsYW0gc2l0IGFtZXQgY29uc2VjdGV0dXIgbGFjdXMuIFZlc3RpYnVsdW0gbmVxdWUgbGVjdHVzLCBlZ2VzdGFzIG5vbiBjdXJzdXMgdml0YWUsIGFsaXF1YW0gYXQgbWFnbmEuIEV0aWFtIGFsaXF1YW0sIGp1c3RvIGV0IHZhcml1cyBlbGVpZmVuZCwgZHVpIGxlY3R1cyBlZ2VzdGFzIG51bmMsIHZlbCBtYWxlc3VhZGEgbmlzbCBwdXJ1cyBuZWMgbWV0dXMuIEluIGdyYXZpZGEgdHVycGlzIGEgcGhhcmV0cmEgY29tbW9kby4gRG9uZWMgbm9uIHR1cnBpcyB2dWxwdXRhdGUsIGZhdWNpYnVzIG1ldHVzIGEsIGNvbnNlY3RldHVyIG51bmMuIE1vcmJpIHRvcnRvciBuaXNpLCBoZW5kcmVyaXQgc2VkIGxhb3JlZXQgZWdldCwgZmVybWVudHVtIGV0IGp1c3RvLiBTdXNwZW5kaXNzZSBwb3RlbnRpLjwvcD48cD48YSBocmVmPSJodHRwOi8vd3d3LmNvbmNyZXRlNS5vcmciPkxlYXJuIG1vcmUgYXQgY29uY3JldGU1Lm9yZ8KgPC9hPjxicj48L3A+Ijt9'),(116,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',5,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE0OntzOjM6ImJJRCI7czozOiIxMTYiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidENvcmVDb252ZXJzYXRpb24iO3M6NToiY252SUQiO3M6MToiNCI7czoxMzoiZW5hYmxlUG9zdGluZyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTI6Iml0ZW1zUGVyUGFnZSI7czoyOiI1MCI7czoxMToiZGlzcGxheU1vZGUiO3M6ODoidGhyZWFkZWQiO3M6Nzoib3JkZXJCeSI7czo4OiJkYXRlX2FzYyI7czoxNDoiZW5hYmxlT3JkZXJpbmciO2k6MDtzOjE5OiJlbmFibGVDb21tZW50UmF0aW5nIjtzOjE6IjEiO3M6MTg6ImRpc3BsYXlQb3N0aW5nRm9ybSI7czozOiJ0b3AiO3M6MTU6ImFkZE1lc3NhZ2VMYWJlbCI7czoxMToiQWRkIE1lc3NhZ2UiO3M6MTA6ImRhdGVGb3JtYXQiO3M6NzoiZGVmYXVsdCI7czoxNjoiY3VzdG9tRGF0ZUZvcm1hdCI7czowOiIiO30='),(117,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjAwOToiPHA+Q3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIE1vcmJpIGF0IHN1c2NpcGl0IHJpc3VzLiBTZWQgY29uc2VxdWF0IGVsZWlmZW5kIG1ldHVzLCB2aXRhZSBtYWxlc3VhZGEgZXJvcyBlbGVtZW50dW0gc2VkLiBGdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy4gSW4gZ3JhdmlkYSB0dXJwaXMgYSBwaGFyZXRyYSBjb21tb2RvLiBEb25lYyBub24gdHVycGlzIHZ1bHB1dGF0ZSwgZmF1Y2lidXMgbWV0dXMgYSwgY29uc2VjdGV0dXIgbnVuYy4gTW9yYmkgdG9ydG9yIG5pc2ksIGhlbmRyZXJpdCBzZWQgbGFvcmVldCBlZ2V0LCBmZXJtZW50dW0gZXQganVzdG8uIFN1c3BlbmRpc3NlIHBvdGVudGkuPC9wPjxwPjxzcGFuIGNsYXNzPSJ0aXRsZS1jYXBzLWJvbGQiPkhlYWRpbmcgMzwvc3Bhbj48L3A+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD48cD48YSBocmVmPSJ7Q0NNOkZJRF9ETF8xMX0iIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmaWQ9IjExIiAvPjwvYT48L3A+PHA+PHNwYW4gY2xhc3M9ImltYWdlLWNhcHRpb24iPkxvb2sgYXQgbXkgYmVhdXRpZnVsIGltYWdlLiBEb24ndCB5b3UgdG8gbG9vayBtb3JlPzwvc3Bhbj48L3A+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD4iO30='),(118,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',32,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjExOCI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6NjoiU2VhcmNoIjtzOjEwOiJidXR0b25UZXh0IjtzOjY6IlNlYXJjaCI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjA6IiI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),(119,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjExOSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjA6IiI7fQ=='),(120,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyMCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTEiO30='),(121,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',24,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIxMjEiO3M6OToiACoAX3RhYmxlIjtzOjExOiJidEdvb2dsZU1hcCI7czo1OiJ0aXRsZSI7czowOiIiO3M6ODoibG9jYXRpb24iO3M6NDc6IjEyMDAgTlcgTmFpdG8gUGt3eSwgUG9ydGxhbmQsIE9SLCBVbml0ZWQgU3RhdGVzIjtzOjg6ImxhdGl0dWRlIjtzOjEwOiI0NS41MzEzMjU0IjtzOjk6ImxvbmdpdHVkZSI7czoxMjoiLTEyMi42NzYzNDkzIjtzOjQ6Inpvb20iO2k6MTQ7czo1OiJ3aWR0aCI7czo0OiIxMDAlIjtzOjY6ImhlaWdodCI7czo1OiI0MDBweCI7czoxMToic2Nyb2xsd2hlZWwiO2k6MDt9'),(122,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyMiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjY1OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoNT5IZWFkcXVhcnRlcnM8L2g1PjxwPjEyMzQgU0UgU3RyZWV0IFZpZXc8YnI+U3VpdGUgMzAxPGJyPlBvcnRsYW5kLCBPUiA5ODEwMTwvcD48aDU+SE9VUlM8L2g1PjxwPiA8c3Ryb25nPk0tRjwvc3Ryb25nPjogIDEwIEFNIC0gNyBQTTxicj48c3Ryb25nPlNhdDwvc3Ryb25nPjogTm9vbiAtIE1pZG5pZ2h0PGJyPjxzdHJvbmc+U3VuPC9zdHJvbmc+OiBDbG9zZWQ8L3A+Ijt9'),(123,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',26,1,NULL),(124,'','2016-03-25 13:05:21','2016-03-25 13:05:21',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTIiO30='),(125,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEyNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7aTo3O3M6MTA6ImZPbnN0YXRlSUQiO2k6MDtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjt9'),(126,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NTczOiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoMj5DaG9vc2luZyBVczwvaDI+PHA+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiBRdWlzcXVlIGRpZ25pc3NpbSBuZXF1ZSBhIGlwc3VtIHNvZGFsZXMsIG1hdHRpcyBhbGlxdWFtIGFudGUgZGljdHVtLiBWZXN0aWJ1bHVtIGVsZW1lbnR1bSBwZWxsZW50ZXNxdWUgdG9ydG9yIGFjIGNvbmd1ZS4gTWF1cmlzIHZlbCBuaWJoIGlkIG1ldHVzIHRpbmNpZHVudCBlbGVpZmVuZC4gSW4gaW50ZXJkdW0gZ3JhdmlkYSBsaWd1bGEsIGF0IHZlbmVuYXRpcyBvZGlvIGZlcm1lbnR1bSBhdC4gRG9uZWMgZGFwaWJ1cyBlbmltIGxlY3R1cywgcXVpcyB2ZW5lbmF0aXMgdGVsbHVzIHZvbHV0cGF0IGluLiBOdWxsYW0gaW4gdmVsaXQgdG9ydG9yLjwvcD4iO30='),(127,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDA6IjxoNT5XZSB3b3VsZCBsb3ZlIHRvIGhlYXIgZnJvbSB5b3UhPC9oNT4iO30='),(128,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',17,1,NULL),(129,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NTU6IjxwPlRoaXMgaXMgbXkgZW1wdHkgY29udGVudCBibG9jayBvbiBteSBibGFuayBwYWdlLjwvcD4iO30='),(130,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjEzMCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjA6IiI7fQ=='),(131,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTMiO30='),(132,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEzMiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7aTo0O3M6MTA6ImZPbnN0YXRlSUQiO2k6MDtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjt9'),(133,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTcwOiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxibG9ja3F1b3RlPkZ1c2NlIHZvbHV0cGF0IHNvZGFsZXMgbWF1cmlzIHF1aXMgZGFwaWJ1cy4gTWFlY2VuYXMgY29udmFsbGlzLCBsaWJlcm8gZXUgdWx0cmljZXMgaW50ZXJkdW0uPC9ibG9ja3F1b3RlPiI7fQ=='),(134,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDQ5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4gPC9wPjxwPjxhIGhyZWY9Imh0dHA6Ly93d3cueWFob28uY29tIj5RdWlzcXVlIGRpZ25pc3NpbTwvYT4gbmVxdWUgYSBpcHN1bSBzb2RhbGVzLCBtYXR0aXMgYWxpcXVhbSBhbnRlIGRpY3R1bS4gVmVzdGlidWx1bSBlbGVtZW50dW0gcGVsbGVudGVzcXVlIHRvcnRvciBhYyBjb25ndWUuIE1hdXJpcyB2ZWwgbmliaCBpZCBtZXR1cyB0aW5jaWR1bnQgZWxlaWZlbmQuPC9wPiI7fQ=='),(135,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',26,1,NULL),(136,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTQiO30='),(137,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTYxOiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxoMT5IZWFkaW5nIDE8L2gxPjxoMj5IZWFkaW5nIDI8L2gyPjxoMz5IZWFkaW5nIDM8L2gzPjxoND5IZWFkaW5nIDQ8L2g0PjxoNT5IZWFkaW5nIDU8L2g1PjxoNj5IZWFkaW5nIDY8L2g2PiI7fQ=='),(138,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzOCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6ODI1OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPkN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIE5hbSBiaWJlbmR1bSBsZW8gbmlzaSwgbGFjaW5pYSBtb2xlc3RpZSBhcmN1IGNvbnNlcXVhdCBxdWlzLiBNb3JiaSBhdCBzdXNjaXBpdCByaXN1cy4gU2VkIGNvbnNlcXVhdCBlbGVpZmVuZCBtZXR1cywgdml0YWUgbWFsZXN1YWRhIGVyb3MgZWxlbWVudHVtIHNlZC4gRnVzY2UgcmlzdXMgZmVsaXMsIHZpdmVycmEgZXQgZGlnbmlzc2ltIGF0LCBsb2JvcnRpcyBub24gZXN0LiBMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBOdWxsYW0gc2l0IGFtZXQgY29uc2VjdGV0dXIgbGFjdXMuIFZlc3RpYnVsdW0gbmVxdWUgbGVjdHVzLCBlZ2VzdGFzIG5vbiBjdXJzdXMgdml0YWUsIGFsaXF1YW0gYXQgbWFnbmEuIEV0aWFtIGFsaXF1YW0sIGp1c3RvIGV0IHZhcml1cyBlbGVpZmVuZCwgZHVpIGxlY3R1cyBlZ2VzdGFzIG51bmMsIHZlbCBtYWxlc3VhZGEgbmlzbCBwdXJ1cyBuZWMgbWV0dXMuIEluIGdyYXZpZGEgdHVycGlzIGEgcGhhcmV0cmEgY29tbW9kby4gRG9uZWMgbm9uIHR1cnBpcyB2dWxwdXRhdGUsIGZhdWNpYnVzIG1ldHVzIGEsIGNvbnNlY3RldHVyIG51bmMuIE1vcmJpIHRvcnRvciBuaXNpLCBoZW5kcmVyaXQgc2VkIGxhb3JlZXQgZWdldCwgZmVybWVudHVtIGV0IGp1c3RvLiBTdXNwZW5kaXNzZSBwb3RlbnRpLjxicj48YnI+PGJyPjwvcD4iO30='),(139,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEzOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7aTo0O3M6MTA6ImZPbnN0YXRlSUQiO2k6MDtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjt9'),(140,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0MCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6ODIxOiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxicj48YnI+Q3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4gTmFtIGJpYmVuZHVtIGxlbyBuaXNpLCBsYWNpbmlhIG1vbGVzdGllIGFyY3UgY29uc2VxdWF0IHF1aXMuIE1vcmJpIGF0IHN1c2NpcGl0IHJpc3VzLiBTZWQgY29uc2VxdWF0IGVsZWlmZW5kIG1ldHVzLCB2aXRhZSBtYWxlc3VhZGEgZXJvcyBlbGVtZW50dW0gc2VkLiBGdXNjZSByaXN1cyBmZWxpcywgdml2ZXJyYSBldCBkaWduaXNzaW0gYXQsIGxvYm9ydGlzIG5vbiBlc3QuIExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIE51bGxhbSBzaXQgYW1ldCBjb25zZWN0ZXR1ciBsYWN1cy4gVmVzdGlidWx1bSBuZXF1ZSBsZWN0dXMsIGVnZXN0YXMgbm9uIGN1cnN1cyB2aXRhZSwgYWxpcXVhbSBhdCBtYWduYS4gRXRpYW0gYWxpcXVhbSwganVzdG8gZXQgdmFyaXVzIGVsZWlmZW5kLCBkdWkgbGVjdHVzIGVnZXN0YXMgbnVuYywgdmVsIG1hbGVzdWFkYSBuaXNsIHB1cnVzIG5lYyBtZXR1cy4gSW4gZ3JhdmlkYSB0dXJwaXMgYSBwaGFyZXRyYSBjb21tb2RvLiBEb25lYyBub24gdHVycGlzIHZ1bHB1dGF0ZSwgZmF1Y2lidXMgbWV0dXMgYSwgY29uc2VjdGV0dXIgbnVuYy4gTW9yYmkgdG9ydG9yIG5pc2ksIGhlbmRyZXJpdCBzZWQgbGFvcmVldCBlZ2V0LCBmZXJtZW50dW0gZXQganVzdG8uIFN1c3BlbmRpc3NlIHBvdGVudGkuPC9wPiI7fQ=='),(141,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',26,1,NULL),(142,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0MiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTUiO30='),(143,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjE0MyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7aTo1O3M6MTA6ImZPbnN0YXRlSUQiO2k6MDtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjt9'),(144,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0NCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzE5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwIGNsYXNzPSJ0aXRsZS10aGluIj5HZXQgaW4gVG91Y2g8L3A+PHA+U2VkIGN1cnN1cyBmYWNpbGlzaXMgZGlnbmlzc2ltLiBBbGlxdWFtIHJob25jdXMgZW5pbSBldCBwZWxsZW50ZXNxdWUgdmFyaXVzLiBOdWxsYSBzb2RhbGVzIG5pYmggbG9yZW0sIHNpdCBhbWV0IGltcGVyZGlldCBhcmN1IGNvbW1vZG8gc2l0IGFtZXQuPGJyPjxicj48L3A+PHA+PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0ie0NDTTpDSURfMTYxfSI+Q29udGFjdCBVczwvYT48L3A+Ijt9'),(145,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjE0NSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aToxO3M6OToidGl0bGVUZXh0IjtzOjEyOiJXb3JrIHdpdGggVXMiO30='),(146,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',27,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjE0NiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7aTo5O3M6MTA6ImZPbnN0YXRlSUQiO2k6MDtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MDoiIjt9'),(147,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',25,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzI6IjxkaXYgc3R5bGU9ImhlaWdodDogNTBweCI+PC9kaXY+Ijt9'),(148,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE0OCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTYiO30='),(149,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE0OSI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiaG9tZSI7czo1OiJ0aXRsZSI7czoxMjoiV2VsY29tZSBIb21lIjtzOjk6InBhcmFncmFwaCI7czoxMzk6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ3VyYWJpdHVyIHNhZ2l0dGlzIGVsZW1lbnR1bSBmZWxpcyBhdCBzb2RhbGVzLiBOdWxsYW0gZmVybWVudHVtIGF0IHVybmEgcXVpcyBhY2N1bXNhbi4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),(150,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MCI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoidXNlciI7czo1OiJ0aXRsZSI7czoxMzoiR3JlYXQgV29ya2VycyI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(151,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MSI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiZmxhZyI7czo1OiJ0aXRsZSI7czoxNjoiQW1hemluZyBMb2NhdGlvbiI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(152,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MiI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NzoiY2xvY2stbyI7czo1OiJ0aXRsZSI7czoxMzoiUGFpZCBUaW1lIE9mZiI7czo5OiJwYXJhZ3JhcGgiO3M6MTM5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEN1cmFiaXR1ciBzYWdpdHRpcyBlbGVtZW50dW0gZmVsaXMgYXQgc29kYWxlcy4gTnVsbGFtIGZlcm1lbnR1bSBhdCB1cm5hIHF1aXMgYWNjdW1zYW4uIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDt9'),(153,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1MyI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoic3RhciI7czo1OiJ0aXRsZSI7czoxMToiTm8gTWVldGluZ3MiO3M6OToicGFyYWdyYXBoIjtzOjEzOToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(154,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',19,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE1NCI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6NDoiYmVlciI7czo1OiJ0aXRsZSI7czoxMToiRnJlZSBEcmlua3MiO3M6OToicGFyYWdyYXBoIjtzOjEzOToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDdXJhYml0dXIgc2FnaXR0aXMgZWxlbWVudHVtIGZlbGlzIGF0IHNvZGFsZXMuIE51bGxhbSBmZXJtZW50dW0gYXQgdXJuYSBxdWlzIGFjY3Vtc2FuLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),(155,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',26,1,NULL),(156,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',1,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTciO30='),(157,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6OTc6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRpdiBjbGFzcz0idGl0bGUtdGhpbiI+T3BlbiBQb3NpdGlvbnM8L2Rpdj4iO30='),(158,'','2016-03-25 13:05:22','2016-03-25 13:05:22',NULL,'0',30,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI2OntzOjM6ImJJRCI7czozOiIxNTgiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7aTowO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjM6IjE3NSI7czo1OiJjVGhpcyI7czoxOiIxIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjk6IkFwcGx5IE5vdyI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtpOjA7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtpOjA7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtpOjg7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjAiO3M6MTM6InRydW5jYXRlQ2hhcnMiO2k6MDt9'),(159,'','2016-03-25 13:05:23','2016-03-25 13:05:23',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1OSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTY4MDoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlF1aXNxdWUgYWNjdW1zYW4gbGVvIHNpdCBhbWV0IG5lcXVlIHByZXRpdW0gY29uc2VjdGV0dXIuIFNlZCBibGFuZGl0IG51bGxhIGF0IGp1c3RvIHZvbHV0cGF0IHJob25jdXMuIFNlZCByaXN1cyBvcmNpLCBsdWN0dXMgc2l0IGFtZXQgZnJpbmdpbGxhIGZhdWNpYnVzLCBjb25ndWUgbmVjIGR1aS4gUGhhc2VsbHVzIG1hdHRpcyBsb2JvcnRpcyBtYWduYSBzZWQgZGFwaWJ1cy4gRG9uZWMgc2FnaXR0aXMgbnVuYyBzZWQgYWNjdW1zYW4gZWxlaWZlbmQuIFV0IHBvcnR0aXRvciBzYXBpZW4gZXUgbmlzbCB2b2x1dHBhdCwgdml0YWUgaW50ZXJkdW0gZXN0IG1vbGxpcy4gU2VkIGxhb3JlZXQgc2l0IGFtZXQgZWxpdCBpbiBlbGVpZmVuZC4gU2VkIGEgdGluY2lkdW50IHZlbGl0LCBuZWMgcG9zdWVyZSB1cm5hLiBJbiBlZ2V0IG1ldHVzIG5vbiBlc3QgdmFyaXVzIHZpdmVycmEuIFF1aXNxdWUgYWNjdW1zYW4gb2RpbyBzZW0sIGluIGNvbnNlcXVhdCBudW5jIGxvYm9ydGlzIGFjLjwvcD48cD5DcmFzIGRpZ25pc3NpbSBudWxsYSB1dCBldWlzbW9kIGFkaXBpc2NpbmcuIE1hdXJpcyBub24gZXJvcyBzZW0uIENyYXMgYXQgbGFjaW5pYSBudWxsYS4gTWFlY2VuYXMgbmVjIG1hZ25hIGFyY3UuIEFlbmVhbiBpYWN1bGlzLCBhdWd1ZSBzZWQgcHJldGl1bSBzZW1wZXIsIG9kaW8gdGVsbHVzIHZvbHV0cGF0IHJpc3VzLCBxdWlzIGNvbnNlY3RldHVyIG5pYmggbWF1cmlzIHV0IG9kaW8uIEludGVnZXIgY29udmFsbGlzLCBhdWd1ZSBhIGFjY3Vtc2FuIGNvbmRpbWVudHVtLCBzZW0gbmlzbCBjb25ndWUgbG9yZW0sIGNvbnNlY3RldHVyIGxhY2luaWEgbmVxdWUgdG9ydG9yIGV1IG5lcXVlLiBBZW5lYW4gY29udmFsbGlzIGFyY3Ugdml0YWUgZW5pbSBkaWduaXNzaW0gdmVzdGlidWx1bS4gUGhhc2VsbHVzIHRpbmNpZHVudCBkb2xvciBpZCBlbmltIGdyYXZpZGEgdWxsYW1jb3JwZXIuIE51bGxhbSB1dCBsb3JlbSBhdWN0b3IsIGNvbmd1ZSBxdWFtIG5vbiwgYXVjdG9yIGFyY3UuIE1vcmJpIGFjIGFsaXF1YW0gaXBzdW0sIGF0IGFsaXF1ZXQgbGlndWxhLjwvcD48cD5DcmFzIGFkaXBpc2NpbmcgdGVsbHVzIG5vbiBudWxsYSBzdXNjaXBpdCBjb25ndWUuIFBlbGxlbnRlc3F1ZSBpZCBuZXF1ZSBldWlzbW9kLCBlbGVtZW50dW0gYXVndWUgdmVsLCB2b2x1dHBhdCB0dXJwaXMuIFBlbGxlbnRlc3F1ZSBzaXQgYW1ldCB0b3J0b3Igbm9uIGxvcmVtIGhlbmRyZXJpdCBwZWxsZW50ZXNxdWUgYWMgaW4gbmlzaS4gU2VkIGFsaXF1ZXQgdGluY2lkdW50IGFyY3UsIGV1IGxhY2luaWEgbG9yZW0gZnJpbmdpbGxhIGlkLiBJbnRlZ2VyIHV0IG9ybmFyZSBvcmNpLiBEb25lYyBzY2VsZXJpc3F1ZSB2dWxwdXRhdGUgZXN0IGEgY29uZGltZW50dW0uIE1vcmJpIHRlbGx1cyBzYXBpZW4sIHZlaGljdWxhIHZlbCBpcHN1bSBub24sIGx1Y3R1cyB1bGxhbWNvcnBlciBtaS4gUGhhc2VsbHVzIGZlbGlzIHRvcnRvciwgZWdlc3RhcyBxdWlzIGZlbGlzIHNpdCBhbWV0LCBtYWxlc3VhZGEgYXVjdG9yIG5pYmguIFNlZCBtb2xsaXMgbWkgc2l0IGFtZXQgdHJpc3RpcXVlIHNjZWxlcmlzcXVlLiBDcmFzIGVsZW1lbnR1bSBtYXVyaXMgdXJuYSwgdWxsYW1jb3JwZXIgY29uc2VjdGV0dXIgb3JjaSB2ZWhpY3VsYSB1dC48L3A+Ijt9'),(160,'','2016-03-25 13:05:23','2016-03-25 13:05:23',NULL,'0',12,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE2MCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTY4MDoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlF1aXNxdWUgYWNjdW1zYW4gbGVvIHNpdCBhbWV0IG5lcXVlIHByZXRpdW0gY29uc2VjdGV0dXIuIFNlZCBibGFuZGl0IG51bGxhIGF0IGp1c3RvIHZvbHV0cGF0IHJob25jdXMuIFNlZCByaXN1cyBvcmNpLCBsdWN0dXMgc2l0IGFtZXQgZnJpbmdpbGxhIGZhdWNpYnVzLCBjb25ndWUgbmVjIGR1aS4gUGhhc2VsbHVzIG1hdHRpcyBsb2JvcnRpcyBtYWduYSBzZWQgZGFwaWJ1cy4gRG9uZWMgc2FnaXR0aXMgbnVuYyBzZWQgYWNjdW1zYW4gZWxlaWZlbmQuIFV0IHBvcnR0aXRvciBzYXBpZW4gZXUgbmlzbCB2b2x1dHBhdCwgdml0YWUgaW50ZXJkdW0gZXN0IG1vbGxpcy4gU2VkIGxhb3JlZXQgc2l0IGFtZXQgZWxpdCBpbiBlbGVpZmVuZC4gU2VkIGEgdGluY2lkdW50IHZlbGl0LCBuZWMgcG9zdWVyZSB1cm5hLiBJbiBlZ2V0IG1ldHVzIG5vbiBlc3QgdmFyaXVzIHZpdmVycmEuIFF1aXNxdWUgYWNjdW1zYW4gb2RpbyBzZW0sIGluIGNvbnNlcXVhdCBudW5jIGxvYm9ydGlzIGFjLjwvcD48cD5DcmFzIGRpZ25pc3NpbSBudWxsYSB1dCBldWlzbW9kIGFkaXBpc2NpbmcuIE1hdXJpcyBub24gZXJvcyBzZW0uIENyYXMgYXQgbGFjaW5pYSBudWxsYS4gTWFlY2VuYXMgbmVjIG1hZ25hIGFyY3UuIEFlbmVhbiBpYWN1bGlzLCBhdWd1ZSBzZWQgcHJldGl1bSBzZW1wZXIsIG9kaW8gdGVsbHVzIHZvbHV0cGF0IHJpc3VzLCBxdWlzIGNvbnNlY3RldHVyIG5pYmggbWF1cmlzIHV0IG9kaW8uIEludGVnZXIgY29udmFsbGlzLCBhdWd1ZSBhIGFjY3Vtc2FuIGNvbmRpbWVudHVtLCBzZW0gbmlzbCBjb25ndWUgbG9yZW0sIGNvbnNlY3RldHVyIGxhY2luaWEgbmVxdWUgdG9ydG9yIGV1IG5lcXVlLiBBZW5lYW4gY29udmFsbGlzIGFyY3Ugdml0YWUgZW5pbSBkaWduaXNzaW0gdmVzdGlidWx1bS4gUGhhc2VsbHVzIHRpbmNpZHVudCBkb2xvciBpZCBlbmltIGdyYXZpZGEgdWxsYW1jb3JwZXIuIE51bGxhbSB1dCBsb3JlbSBhdWN0b3IsIGNvbmd1ZSBxdWFtIG5vbiwgYXVjdG9yIGFyY3UuIE1vcmJpIGFjIGFsaXF1YW0gaXBzdW0sIGF0IGFsaXF1ZXQgbGlndWxhLjwvcD48cD5DcmFzIGFkaXBpc2NpbmcgdGVsbHVzIG5vbiBudWxsYSBzdXNjaXBpdCBjb25ndWUuIFBlbGxlbnRlc3F1ZSBpZCBuZXF1ZSBldWlzbW9kLCBlbGVtZW50dW0gYXVndWUgdmVsLCB2b2x1dHBhdCB0dXJwaXMuIFBlbGxlbnRlc3F1ZSBzaXQgYW1ldCB0b3J0b3Igbm9uIGxvcmVtIGhlbmRyZXJpdCBwZWxsZW50ZXNxdWUgYWMgaW4gbmlzaS4gU2VkIGFsaXF1ZXQgdGluY2lkdW50IGFyY3UsIGV1IGxhY2luaWEgbG9yZW0gZnJpbmdpbGxhIGlkLiBJbnRlZ2VyIHV0IG9ybmFyZSBvcmNpLiBEb25lYyBzY2VsZXJpc3F1ZSB2dWxwdXRhdGUgZXN0IGEgY29uZGltZW50dW0uIE1vcmJpIHRlbGx1cyBzYXBpZW4sIHZlaGljdWxhIHZlbCBpcHN1bSBub24sIGx1Y3R1cyB1bGxhbWNvcnBlciBtaS4gUGhhc2VsbHVzIGZlbGlzIHRvcnRvciwgZWdlc3RhcyBxdWlzIGZlbGlzIHNpdCBhbWV0LCBtYWxlc3VhZGEgYXVjdG9yIG5pYmguIFNlZCBtb2xsaXMgbWkgc2l0IGFtZXQgdHJpc3RpcXVlIHNjZWxlcmlzcXVlLiBDcmFzIGVsZW1lbnR1bSBtYXVyaXMgdXJuYSwgdWxsYW1jb3JwZXIgY29uc2VjdGV0dXIgb3JjaSB2ZWhpY3VsYSB1dC48L3A+Ijt9'),(161,'','2016-03-25 13:05:24','2016-03-25 13:05:24',NULL,'0',18,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjM6IjE2MSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjI2OiJGcmVxdWVudGx5IEFza2VkIFF1ZXN0aW9ucyI7fQ=='),(162,'','2016-03-25 13:05:24','2016-03-25 13:05:24',NULL,'0',28,1,'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE2MiI7czo5OiIAKgBfdGFibGUiO3M6NToiYnRGYXEiO3M6MTA6ImJsb2NrVGl0bGUiO3M6MDoiIjt9');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypepermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslist`
--

LOCK TABLES `blocktypepermissionblocktypeaccesslist` WRITE;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypepermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslistcustom`
--

LOCK TABLES `blocktypepermissionblocktypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypes`
--

DROP TABLE IF EXISTS `blocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypes`
--

LOCK TABLES `blocktypes` WRITE;
/*!40000 ALTER TABLE `blocktypes` DISABLE KEYS */;
INSERT INTO `blocktypes` VALUES (1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,0,400,400,0),(2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,0,400,400,0),(3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,0,400,400,0),(4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,0,400,400,0),(5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,0,400,400,0),(6,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(7,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(8,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,1,0,0,0,0,400,400,0),(9,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',0,0,1,0,0,0,0,400,400,0),(10,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',0,0,1,0,0,0,0,400,400,0),(11,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,0,800,350,0),(12,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,0,600,465,0),(13,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,0,400,450,0),(14,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,0,370,175,0),(15,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,0,300,320,0),(16,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,0,500,365,0),(17,'form','Form','Build simple forms and surveys.',0,0,0,0,0,0,0,420,430,0),(18,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,0,400,400,0),(19,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,0,400,520,0),(20,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,0,400,400,0),(21,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,0,400,400,0),(22,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,0,450,560,0),(23,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,0,400,400,0),(24,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,0,400,320,0),(25,'html','HTML','For adding HTML by hand.',0,0,0,0,0,1,0,600,500,0),(26,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,1,0,400,400,0),(27,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,0,400,550,0),(28,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,0,600,465,0),(29,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,0,430,400,0),(30,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,0,800,350,0),(31,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,0,400,550,0),(32,'search','Search','Add a search box to your site.',0,0,0,0,0,0,0,400,420,0),(33,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,1,0,600,550,0),(34,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,0,420,400,0),(35,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,0,500,150,0),(36,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,0,450,439,0),(37,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,0,320,270,0),(38,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,0,400,490,0);
/*!40000 ALTER TABLE `blocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypesetblocktypes`
--

DROP TABLE IF EXISTS `blocktypesetblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypesetblocktypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypesetblocktypes`
--

LOCK TABLES `blocktypesetblocktypes` WRITE;
/*!40000 ALTER TABLE `blocktypesetblocktypes` DISABLE KEYS */;
INSERT INTO `blocktypesetblocktypes` VALUES (12,1,0),(25,1,1),(27,1,2),(15,1,3),(26,1,4),(19,1,5),(11,2,0),(18,2,1),(28,2,2),(30,2,3),(29,2,4),(13,2,5),(36,2,6),(20,2,7),(31,2,8),(35,2,9),(17,3,0),(32,3,1),(14,3,2),(34,4,0),(5,4,1),(21,4,2),(22,4,3),(23,4,4),(16,5,0),(33,5,1),(37,5,2),(38,5,3),(24,5,4);
/*!40000 ALTER TABLE `blocktypesetblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypesets`
--

DROP TABLE IF EXISTS `blocktypesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypesets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypesets`
--

LOCK TABLES `blocktypesets` WRITE;
/*!40000 ALTER TABLE `blocktypesets` DISABLE KEYS */;
INSERT INTO `blocktypesets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Social Networking','social',0,0),(5,'Multimedia','multimedia',0,0);
/*!40000 ALTER TABLE `blocktypesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentfile`
--

DROP TABLE IF EXISTS `btcontentfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentfile`
--

LOCK TABLES `btcontentfile` WRITE;
/*!40000 ALTER TABLE `btcontentfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcontentfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentimage`
--

DROP TABLE IF EXISTS `btcontentimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentimage`
--

LOCK TABLES `btcontentimage` WRITE;
/*!40000 ALTER TABLE `btcontentimage` DISABLE KEYS */;
INSERT INTO `btcontentimage` VALUES (110,5,0,0,0,'',0,'Blank Image','Blank Image'),(125,7,0,0,0,'',0,'',NULL),(132,4,0,0,0,'',0,'',NULL),(139,4,0,0,0,'',0,'',NULL),(143,5,0,0,0,'',0,'',NULL),(146,9,0,0,0,'',0,'',NULL);
/*!40000 ALTER TABLE `btcontentimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentlocal`
--

DROP TABLE IF EXISTS `btcontentlocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentlocal`
--

LOCK TABLES `btcontentlocal` WRITE;
/*!40000 ALTER TABLE `btcontentlocal` DISABLE KEYS */;
INSERT INTO `btcontentlocal` VALUES (1,'<div style=\"padding: 40px; text-align: center\">\n<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>\n                                    </div>'),(19,'\n                                                    <p><a href=\"{CCM:CID_175}\" style=\"background-color: rgb(255, 255, 255);\"><i class=\"fa fa-arrow-left\"></i> Back to Careers</a></p>'),(20,'<h3>Department</h3>'),(22,'<h3>Location</h3>'),(24,'<h3>Job Information</h3>'),(26,'\n                                                    <br/><br/>'),(43,'\n                                    <p>1234 SE StreetView</p><p>Suite 301</p><p>Portland, OR 98101</p><p><a href=\"{CCM:CID_161}\">View on Google Maps</a></p>'),(44,'\n                                    <p>© 2016 Elemental Theme</p>'),(45,'\n                                    \n                                    <p><a href=\"{CCM:CID_176}\">FAQ / Help</a></p>\n                                    <p><a href=\"{CCM:CID_156}\">Case Studies</a></p>\n                                    <p><a href=\"{CCM:CID_159}\">Blog</a></p>\n                                    <p><a href=\"{CCM:CID_1}\">Another Link</a></p>\n                                    '),(46,'<a href=\"{CCM:CID_1}\" id=\"footer-site-title\">Elemental</a>'),(50,'<a href=\"{CCM:CID_1}\" id=\"header-site-title\">Elemental</a>'),(57,'<p style=\"text-align: center\"><span class=\"title-caps-bold\">Presenting your Business has never been so easy</span></p><p style=\"text-align: center;\">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style=\"text-align: center;\">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>'),(61,'<h5>Latest Blog Post</h5>'),(62,'<h5>Now Open For Business</h5>'),(66,'<p>  <span class=\"title-thin\">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=\"{CCM:CID_161}\"><span class=\"btn btn-success\">Contact Us Today</span></a>  </p>'),(67,'<p style=\"text-align: center\"><span class=\"title-caps\">Customizable footer area with accent class.</span></p>'),(76,'<h3>Awesome Features</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Guide Books</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p><h3>Admin Accounts</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. </p>'),(77,'<h3>Support</h3><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. </p><h3>Additional Options</h3><p>Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. </p><p>Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(78,'<p style=\"text-align: center\"><span class=\"title-caps\">What Clients Are Saying About Us</span></p>'),(85,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(87,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(89,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(91,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(93,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(95,'<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit.</blockquote><p>Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.</p><p>Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.</p><p>Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p>Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.</p>'),(111,'\n                                                    <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_161}\">Contact Us</a></p>'),(113,'<blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo.</blockquote><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"{CCM:FID_DL_2}\" data-concrete5-link-lightbox=\"image\"><concrete-picture fid=\"2\" /></a></p><h2>Heading 2</h2><p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><h3>Heading 3</h3><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><h3>Heading 3</h3><p>Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.</p>'),(115,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p><p><span class=\"title-thin\">CMS To the Rescue!</span></p><p>Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><a href=\"http://www.concrete5.org\">Learn more at concrete5.org </a><br></p>'),(117,'<p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p><p><span class=\"title-caps-bold\">Heading 3</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p><p><a href=\"{CCM:FID_DL_11}\" data-concrete5-link-lightbox=\"image\"><concrete-picture fid=\"11\" /></a></p><p><span class=\"image-caption\">Look at my beautiful image. Don\'t you to look more?</span></p><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(122,'\n                                                    <h5>Headquarters</h5><p>1234 SE Street View<br>Suite 301<br>Portland, OR 98101</p><h5>HOURS</h5><p> <strong>M-F</strong>:  10 AM - 7 PM<br><strong>Sat</strong>: Noon - Midnight<br><strong>Sun</strong>: Closed</p>'),(126,'\n                                                    <h2>Choosing Us</h2><p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.</p>'),(127,'<h5>We would love to hear from you!</h5>'),(129,'<p>This is my empty content block on my blank page.</p>'),(133,'\n                                                    <blockquote>Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum.</blockquote>'),(134,'\n                                                    <p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p><p><a href=\"http://www.yahoo.com\">Quisque dignissim</a> neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.</p>'),(137,'\n                                                    <h1>Heading 1</h1><h2>Heading 2</h2><h3>Heading 3</h3><h4>Heading 4</h4><h5>Heading 5</h5><h6>Heading 6</h6>'),(138,'\n                                                    <p>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.<br><br><br></p>'),(140,'\n                                                    <p><br><br>Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.</p>'),(144,'\n                                                    <p class=\"title-thin\">Get in Touch</p><p>Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.<br><br></p><p><a class=\"btn btn-success\" href=\"{CCM:CID_161}\">Contact Us</a></p>'),(147,'<div style=\"height: 50px\"></div>'),(157,'\n                                                    <div class=\"title-thin\">Open Positions</div>'),(159,'\n                                    <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>'),(160,'\n                                    <p>Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.</p><p>Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.</p><p>Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.</p>');
/*!40000 ALTER TABLE `btcontentlocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorearealayout`
--

DROP TABLE IF EXISTS `btcorearealayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorearealayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorearealayout`
--

LOCK TABLES `btcorearealayout` WRITE;
/*!40000 ALTER TABLE `btcorearealayout` DISABLE KEYS */;
INSERT INTO `btcorearealayout` VALUES (36,1),(52,2),(60,3),(63,4),(69,5),(75,6),(79,7),(97,8),(101,9),(109,10),(120,11),(124,12),(131,13),(136,14),(142,15),(148,16),(156,17);
/*!40000 ALTER TABLE `btcorearealayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcoreconversation`
--

DROP TABLE IF EXISTS `btcoreconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcoreconversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcoreconversation`
--

LOCK TABLES `btcoreconversation` WRITE;
/*!40000 ALTER TABLE `btcoreconversation` DISABLE KEYS */;
INSERT INTO `btcoreconversation` VALUES (16,1,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(112,2,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(114,3,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default',''),(116,4,1,1,50,'threaded','date_asc',0,1,'top','Add Message','default','');
/*!40000 ALTER TABLE `btcoreconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorepagetypecomposercontroloutput`
--

DROP TABLE IF EXISTS `btcorepagetypecomposercontroloutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorepagetypecomposercontroloutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorepagetypecomposercontroloutput`
--

LOCK TABLES `btcorepagetypecomposercontroloutput` WRITE;
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` DISABLE KEYS */;
INSERT INTO `btcorepagetypecomposercontroloutput` VALUES (10,1),(25,2),(28,3),(32,4);
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorescrapbookdisplay`
--

DROP TABLE IF EXISTS `btcorescrapbookdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorescrapbookdisplay`
--

LOCK TABLES `btcorescrapbookdisplay` WRITE;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorestackdisplay`
--

DROP TABLE IF EXISTS `btcorestackdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorestackdisplay`
--

LOCK TABLES `btcorestackdisplay` WRITE;
/*!40000 ALTER TABLE `btcorestackdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorestackdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdashboardnewsflowlatest`
--

DROP TABLE IF EXISTS `btdashboardnewsflowlatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdashboardnewsflowlatest`
--

LOCK TABLES `btdashboardnewsflowlatest` WRITE;
/*!40000 ALTER TABLE `btdashboardnewsflowlatest` DISABLE KEYS */;
INSERT INTO `btdashboardnewsflowlatest` VALUES (4,'A'),(5,'B'),(8,'C');
/*!40000 ALTER TABLE `btdashboardnewsflowlatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdatenavigation`
--

DROP TABLE IF EXISTS `btdatenavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdatenavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdatenavigation`
--

LOCK TABLES `btdatenavigation` WRITE;
/*!40000 ALTER TABLE `btdatenavigation` DISABLE KEYS */;
INSERT INTO `btdatenavigation` VALUES (39,'Archives',1,0,159,0,7);
/*!40000 ALTER TABLE `btdatenavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btexternalform`
--

DROP TABLE IF EXISTS `btexternalform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btexternalform`
--

LOCK TABLES `btexternalform` WRITE;
/*!40000 ALTER TABLE `btexternalform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexternalform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfaq`
--

DROP TABLE IF EXISTS `btfaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfaq`
--

LOCK TABLES `btfaq` WRITE;
/*!40000 ALTER TABLE `btfaq` DISABLE KEYS */;
INSERT INTO `btfaq` VALUES (162,'');
/*!40000 ALTER TABLE `btfaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfaqentries`
--

DROP TABLE IF EXISTS `btfaqentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfaqentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfaqentries`
--

LOCK TABLES `btfaqentries` WRITE;
/*!40000 ALTER TABLE `btfaqentries` DISABLE KEYS */;
INSERT INTO `btfaqentries` VALUES (4,162,'What are page versions?','What are page versions?',0,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. '),(5,162,'How do I add more people as editors in my website?','How do I add more people as editors in my website?',1,'\n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. ');
/*!40000 ALTER TABLE `btfaqentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfeature`
--

DROP TABLE IF EXISTS `btfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfeature`
--

LOCK TABLES `btfeature` WRITE;
/*!40000 ALTER TABLE `btfeature` DISABLE KEYS */;
INSERT INTO `btfeature` VALUES (53,'pencil','Easy to Edit','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(54,'eye','Pixel Perfect','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(55,'youtube-play','Media Rich','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.','',0),(70,'star','Quality','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(71,'tint','Design','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(72,'cog','Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(73,'lock','Security','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet.','',0),(149,'home','Welcome Home','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(150,'user','Great Workers','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(151,'flag','Amazing Location','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(152,'clock-o','Paid Time Off','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(153,'star','No Meetings','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0),(154,'beer','Free Drinks','\n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan.','',0);
/*!40000 ALTER TABLE `btfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btform`
--

DROP TABLE IF EXISTS `btform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btform`
--

LOCK TABLES `btform` WRITE;
/*!40000 ALTER TABLE `btform` DISABLE KEYS */;
INSERT INTO `btform` VALUES (128,1458936322,'Contact Us','Submit','Thanks!',0,'',0,0,0);
/*!40000 ALTER TABLE `btform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformanswers`
--

DROP TABLE IF EXISTS `btformanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformanswers`
--

LOCK TABLES `btformanswers` WRITE;
/*!40000 ALTER TABLE `btformanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformanswerset`
--

DROP TABLE IF EXISTS `btformanswerset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformanswerset`
--

LOCK TABLES `btformanswerset` WRITE;
/*!40000 ALTER TABLE `btformanswerset` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswerset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformquestions`
--

DROP TABLE IF EXISTS `btformquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformquestions`
--

LOCK TABLES `btformquestions` WRITE;
/*!40000 ALTER TABLE `btformquestions` DISABLE KEYS */;
INSERT INTO `btformquestions` VALUES (19,1,128,1458936322,'First Name','field','',0,50,3,'',1),(20,2,128,1458936322,'Last Name','field','',0,50,3,'',1),(21,3,128,1458936322,'Email Address','email','a:1:{s:22:\"send_notification_from\";i:0;}',0,50,3,'',1),(25,4,128,1458936322,'Subject','select','\n                                                    I love your work.%%Great website.%%Check out this cool thing I found.%%Other.',0,50,3,'',0),(26,5,128,1458936322,'Message','text','',0,50,3,'',0);
/*!40000 ALTER TABLE `btformquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btgooglemap`
--

DROP TABLE IF EXISTS `btgooglemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btgooglemap`
--

LOCK TABLES `btgooglemap` WRITE;
/*!40000 ALTER TABLE `btgooglemap` DISABLE KEYS */;
INSERT INTO `btgooglemap` VALUES (121,'','1200 NW Naito Pkwy, Portland, OR, United States',45.5313254,-122.6763493,14,'100%','400px',0);
/*!40000 ALTER TABLE `btgooglemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btimageslider`
--

DROP TABLE IF EXISTS `btimageslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btimageslider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btimageslider`
--

LOCK TABLES `btimageslider` WRITE;
/*!40000 ALTER TABLE `btimageslider` DISABLE KEYS */;
INSERT INTO `btimageslider` VALUES (51,1,4000,500,0,0),(84,0,4000,500,0,0),(86,0,4000,500,0,0),(88,0,4000,500,0,0),(90,0,4000,500,0,0),(92,0,4000,500,0,0),(94,0,4000,500,0,0);
/*!40000 ALTER TABLE `btimageslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btimagesliderentries`
--

DROP TABLE IF EXISTS `btimagesliderentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btimagesliderentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btimagesliderentries`
--

LOCK TABLES `btimagesliderentries` WRITE;
/*!40000 ALTER TABLE `btimagesliderentries` DISABLE KEYS */;
INSERT INTO `btimagesliderentries` VALUES (1,51,0,13,'',0,'Stand Out on the Web','<p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>',0),(2,51,0,14,'',0,'A Simple Image Slider','<p>This image slider can have any content that you want in it.</p>',1),(3,84,0,16,'',0,'','',0),(4,84,0,15,'',0,'','',1),(5,84,0,12,'',0,'','',2),(6,86,0,16,'',0,'','',0),(7,86,0,15,'',0,'','',1),(8,86,0,12,'',0,'','',2),(9,88,0,16,'',0,'','',0),(10,88,0,15,'',0,'','',1),(11,88,0,12,'',0,'','',2),(12,90,0,16,'',0,'','',0),(13,90,0,15,'',0,'','',1),(14,90,0,12,'',0,'','',2),(15,92,0,16,'',0,'','',0),(16,92,0,15,'',0,'','',1),(17,92,0,12,'',0,'','',2),(18,94,0,16,'',0,'','',0),(19,94,0,15,'',0,'','',1),(20,94,0,12,'',0,'','',2);
/*!40000 ALTER TABLE `btimagesliderentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btnavigation`
--

DROP TABLE IF EXISTS `btnavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  `displaySystemPages` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btnavigation`
--

LOCK TABLES `btnavigation` WRITE;
/*!40000 ALTER TABLE `btnavigation` DISABLE KEYS */;
INSERT INTO `btnavigation` VALUES (48,'display_asc','top',0,0,'all','custom',1,0,0);
/*!40000 ALTER TABLE `btnavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btnextprevious`
--

DROP TABLE IF EXISTS `btnextprevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btnextprevious`
--

LOCK TABLES `btnextprevious` WRITE;
/*!40000 ALTER TABLE `btnextprevious` DISABLE KEYS */;
INSERT INTO `btnextprevious` VALUES (11,'Next Post','Last Post','',0,1,'chrono_desc');
/*!40000 ALTER TABLE `btnextprevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpageattributedisplay`
--

DROP TABLE IF EXISTS `btpageattributedisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpageattributedisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpageattributedisplay`
--

LOCK TABLES `btpageattributedisplay` WRITE;
/*!40000 ALTER TABLE `btpageattributedisplay` DISABLE KEYS */;
INSERT INTO `btpageattributedisplay` VALUES (21,'job_posting_department','','p','m/d/y h:i:a',250,250),(23,'job_location','','p','m/d/y h:i:a',250,250),(29,'project_client','Client:','div','m/d/y h:i:a',250,250),(30,'project_tasks','Task:','div','m/d/y h:i:a',250,250),(31,'project_skills','Skills:','div','m/d/y h:i:a',250,250);
/*!40000 ALTER TABLE `btpageattributedisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpagelist`
--

DROP TABLE IF EXISTS `btpagelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpagelist`
--

LOCK TABLES `btpagelist` WRITE;
/*!40000 ALTER TABLE `btpagelist` DISABLE KEYS */;
INSERT INTO `btpagelist` VALUES (14,3,'random',159,0,0,NULL,'Related Posts',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,7,0,0,0,NULL,0,0),(18,0,'chrono_desc',175,0,0,NULL,'Open Positions',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,0,0,0,0,NULL,0,0),(34,3,'random',0,0,0,NULL,'Related Projects',0,0,'',0,NULL,NULL,'','',0,1,0,0,0,0,0,0,9,0,0,0,'No related projects found.',0,0),(37,10,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,1,0,1,0,1,7,1,0,0,'No posts to this blog.',0,0),(42,0,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,0,0,0,1,0,1,9,0,0,0,'No projects found.',1,0),(58,3,'chrono_desc',0,0,1,'View Project',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,9,0,0,1,'',1,0),(64,1,'chrono_desc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,0,0,0,0,0,0,0,7,0,0,0,'',1,0),(65,1,'display_asc',0,0,0,'',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,7,0,0,0,'',0,0),(158,0,'chrono_desc',175,1,1,'Apply Now',NULL,0,0,'',0,NULL,NULL,'','',0,1,1,0,0,0,0,0,8,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `btpagelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpagetitle`
--

DROP TABLE IF EXISTS `btpagetitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpagetitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpagetitle`
--

LOCK TABLES `btpagetitle` WRITE;
/*!40000 ALTER TABLE `btpagetitle` DISABLE KEYS */;
INSERT INTO `btpagetitle` VALUES (9,0,'[Page Title]',NULL),(17,0,'[Page Title]',NULL),(27,0,'[Page Title]',NULL),(35,0,'[Page Title]',NULL),(40,0,'[Page Title]',NULL),(68,1,'Our Expertise',NULL),(96,0,'',NULL),(119,0,'',NULL),(130,0,'',NULL),(145,1,'Work with Us',NULL),(161,0,'Frequently Asked Questions',NULL);
/*!40000 ALTER TABLE `btpagetitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btrssdisplay`
--

DROP TABLE IF EXISTS `btrssdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btrssdisplay`
--

LOCK TABLES `btrssdisplay` WRITE;
/*!40000 ALTER TABLE `btrssdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btrssdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsearch`
--

DROP TABLE IF EXISTS `btsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsearch`
--

LOCK TABLES `btsearch` WRITE;
/*!40000 ALTER TABLE `btsearch` DISABLE KEYS */;
INSERT INTO `btsearch` VALUES (49,'','','','160',''),(118,'Search','Search','','','');
/*!40000 ALTER TABLE `btsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsharethispage`
--

DROP TABLE IF EXISTS `btsharethispage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsharethispage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsharethispage`
--

LOCK TABLES `btsharethispage` WRITE;
/*!40000 ALTER TABLE `btsharethispage` DISABLE KEYS */;
INSERT INTO `btsharethispage` VALUES (1,12,'facebook',0),(2,12,'twitter',1),(3,12,'linkedin',2),(4,12,'email',3);
/*!40000 ALTER TABLE `btsharethispage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsociallinks`
--

DROP TABLE IF EXISTS `btsociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsociallinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsociallinks`
--

LOCK TABLES `btsociallinks` WRITE;
/*!40000 ALTER TABLE `btsociallinks` DISABLE KEYS */;
INSERT INTO `btsociallinks` VALUES (1,47,3,0),(2,47,2,1),(3,47,1,2);
/*!40000 ALTER TABLE `btsociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurvey`
--

DROP TABLE IF EXISTS `btsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurvey`
--

LOCK TABLES `btsurvey` WRITE;
/*!40000 ALTER TABLE `btsurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurveyoptions`
--

DROP TABLE IF EXISTS `btsurveyoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurveyoptions`
--

LOCK TABLES `btsurveyoptions` WRITE;
/*!40000 ALTER TABLE `btsurveyoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurveyresults`
--

DROP TABLE IF EXISTS `btsurveyresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurveyresults`
--

LOCK TABLES `btsurveyresults` WRITE;
/*!40000 ALTER TABLE `btsurveyresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btswitchlanguage`
--

DROP TABLE IF EXISTS `btswitchlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btswitchlanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btswitchlanguage`
--

LOCK TABLES `btswitchlanguage` WRITE;
/*!40000 ALTER TABLE `btswitchlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btswitchlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttags`
--

DROP TABLE IF EXISTS `bttags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttags`
--

LOCK TABLES `bttags` WRITE;
/*!40000 ALTER TABLE `bttags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttestimonial`
--

DROP TABLE IF EXISTS `bttestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttestimonial`
--

LOCK TABLES `bttestimonial` WRITE;
/*!40000 ALTER TABLE `bttestimonial` DISABLE KEYS */;
INSERT INTO `bttestimonial` VALUES (80,1,'Franz Maruna','CEO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(81,1,'John Doe','Marketing Directory','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(82,1,'Andrew Embler','CTO & Founder','concrete5','http://concrete5.org','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(83,1,'Jane Doe','IT Manager','CompanyCo','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus.'),(98,3,'John Smith','Co-Founder / CEO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(99,3,'Bob Smith','Co-Founder / CTO','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(102,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(103,3,'John Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(104,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(105,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(106,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.'),(107,3,'Bob Smith','Art Director','','','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis.');
/*!40000 ALTER TABLE `bttestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttopiclist`
--

DROP TABLE IF EXISTS `bttopiclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttopiclist` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttopiclist`
--

LOCK TABLES `bttopiclist` WRITE;
/*!40000 ALTER TABLE `bttopiclist` DISABLE KEYS */;
INSERT INTO `bttopiclist` VALUES (13,'P','blog_entry_topics',2,159,'Topics'),(38,'S','',2,0,'Topics'),(41,'S','',3,0,'');
/*!40000 ALTER TABLE `bttopiclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btvideo`
--

DROP TABLE IF EXISTS `btvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btvideo`
--

LOCK TABLES `btvideo` WRITE;
/*!40000 ALTER TABLE `btvideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btyoutube`
--

DROP TABLE IF EXISTS `btyoutube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btyoutube`
--

LOCK TABLES `btyoutube` WRITE;
/*!40000 ALTER TABLE `btyoutube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btyoutube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionattributevalues`
--

DROP TABLE IF EXISTS `collectionattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionattributevalues`
--

LOCK TABLES `collectionattributevalues` WRITE;
/*!40000 ALTER TABLE `collectionattributevalues` DISABLE KEYS */;
INSERT INTO `collectionattributevalues` VALUES (2,1,4,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,5,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,5,16),(17,1,3,17),(17,1,5,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(23,1,3,22),(24,1,3,23),(25,1,3,24),(26,1,3,25),(28,1,3,26),(29,1,3,27),(29,1,5,28),(31,1,5,29),(32,1,5,30),(33,1,5,31),(34,1,5,32),(35,1,5,33),(36,1,5,34),(38,1,5,35),(39,1,3,36),(40,1,3,37),(41,1,3,38),(43,1,4,39),(44,1,3,40),(48,1,3,41),(50,1,5,42),(50,1,10,43),(50,1,3,44),(51,1,3,45),(52,1,3,46),(53,1,5,47),(54,1,3,48),(55,1,3,49),(56,1,3,50),(56,1,5,51),(57,1,3,52),(58,1,3,53),(59,1,3,54),(61,1,3,55),(62,1,3,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(66,1,3,60),(67,1,3,61),(68,1,3,62),(74,1,3,63),(75,1,3,64),(76,1,3,65),(77,1,3,66),(78,1,3,67),(80,1,3,68),(81,1,3,69),(82,1,3,70),(83,1,3,71),(84,1,3,72),(86,1,3,73),(87,1,3,74),(88,1,3,75),(89,1,3,76),(91,1,3,77),(92,1,3,78),(95,1,3,79),(96,1,3,80),(97,1,3,81),(98,1,3,82),(100,1,3,83),(101,1,3,84),(102,1,3,85),(103,1,3,86),(104,1,3,87),(105,1,3,88),(106,1,3,89),(107,1,3,90),(108,1,3,91),(109,1,3,92),(110,1,3,93),(111,1,3,94),(113,1,3,95),(114,1,3,96),(115,1,3,97),(116,1,3,98),(118,1,10,99),(119,1,3,100),(120,1,3,101),(121,1,3,102),(122,1,3,103),(123,1,3,104),(124,1,3,105),(126,1,3,106),(127,1,5,107),(128,1,5,108),(128,1,10,109),(129,1,4,110),(130,1,4,111),(131,1,4,112),(134,1,4,113),(1,1,5,146),(156,1,20,147),(164,1,9,148),(164,1,21,149),(164,1,23,150),(164,1,24,151),(164,1,25,152),(164,1,26,153),(165,1,21,154),(165,1,23,155),(165,1,24,156),(165,1,25,157),(165,1,26,158),(166,1,9,159),(166,1,21,160),(166,1,23,161),(166,1,24,162),(166,1,25,163),(166,1,26,164),(167,1,9,165),(167,1,21,166),(167,1,23,167),(167,1,24,168),(167,1,25,169),(167,1,26,170),(168,1,21,171),(168,1,23,172),(168,1,24,173),(168,1,25,174),(168,1,26,175),(169,1,21,176),(169,1,23,177),(169,1,24,178),(169,1,25,179),(169,1,26,180),(159,1,20,181),(171,1,1,182),(171,1,2,183),(171,1,3,184),(171,1,7,185),(171,1,11,186),(171,1,21,187),(171,1,22,188),(172,1,21,189),(172,1,22,190),(173,1,21,191),(173,1,22,192),(160,1,1,193),(160,1,2,194),(160,1,3,195),(160,1,5,196),(160,1,7,197),(160,1,11,198),(162,1,5,199),(178,1,1,200),(178,1,2,201),(178,1,3,202),(178,1,7,203),(178,1,11,204),(178,1,18,205),(178,1,19,206),(179,1,1,207),(179,1,2,208),(179,1,3,209),(179,1,7,210),(179,1,11,211),(179,1,18,212),(179,1,19,213);
/*!40000 ALTER TABLE `collectionattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'2016-03-25 13:04:18','2016-03-25 13:05:15','home'),(2,'2016-03-25 13:05:02','2016-03-25 13:05:02','dashboard'),(3,'2016-03-25 13:05:02','2016-03-25 13:05:02','sitemap'),(4,'2016-03-25 13:05:02','2016-03-25 13:05:02','full'),(5,'2016-03-25 13:05:02','2016-03-25 13:05:02','explore'),(6,'2016-03-25 13:05:02','2016-03-25 13:05:02','search'),(7,'2016-03-25 13:05:02','2016-03-25 13:05:02','files'),(8,'2016-03-25 13:05:02','2016-03-25 13:05:02','search'),(9,'2016-03-25 13:05:02','2016-03-25 13:05:02','attributes'),(10,'2016-03-25 13:05:02','2016-03-25 13:05:02','sets'),(11,'2016-03-25 13:05:02','2016-03-25 13:05:02','add_set'),(12,'2016-03-25 13:05:02','2016-03-25 13:05:02','users'),(13,'2016-03-25 13:05:02','2016-03-25 13:05:02','search'),(14,'2016-03-25 13:05:02','2016-03-25 13:05:02','groups'),(15,'2016-03-25 13:05:02','2016-03-25 13:05:02','attributes'),(16,'2016-03-25 13:05:02','2016-03-25 13:05:02','add'),(17,'2016-03-25 13:05:02','2016-03-25 13:05:02','add_group'),(18,'2016-03-25 13:05:02','2016-03-25 13:05:02','bulkupdate'),(19,'2016-03-25 13:05:02','2016-03-25 13:05:02','group_sets'),(20,'2016-03-25 13:05:02','2016-03-25 13:05:02','points'),(21,'2016-03-25 13:05:02','2016-03-25 13:05:02','assign'),(22,'2016-03-25 13:05:02','2016-03-25 13:05:02','actions'),(23,'2016-03-25 13:05:02','2016-03-25 13:05:02','reports'),(24,'2016-03-25 13:05:02','2016-03-25 13:05:02','forms'),(25,'2016-03-25 13:05:02','2016-03-25 13:05:02','surveys'),(26,'2016-03-25 13:05:02','2016-03-25 13:05:02','logs'),(27,'2016-03-25 13:05:02','2016-03-25 13:05:02','pages'),(28,'2016-03-25 13:05:02','2016-03-25 13:05:02','themes'),(29,'2016-03-25 13:05:02','2016-03-25 13:05:02','inspect'),(30,'2016-03-25 13:05:02','2016-03-25 13:05:02','types'),(31,'2016-03-25 13:05:02','2016-03-25 13:05:02','organize'),(32,'2016-03-25 13:05:02','2016-03-25 13:05:02','add'),(33,'2016-03-25 13:05:02','2016-03-25 13:05:02','form'),(34,'2016-03-25 13:05:02','2016-03-25 13:05:02','output'),(35,'2016-03-25 13:05:02','2016-03-25 13:05:02','attributes'),(36,'2016-03-25 13:05:02','2016-03-25 13:05:02','permissions'),(37,'2016-03-25 13:05:02','2016-03-25 13:05:02','templates'),(38,'2016-03-25 13:05:02','2016-03-25 13:05:03','add'),(39,'2016-03-25 13:05:03','2016-03-25 13:05:03','attributes'),(40,'2016-03-25 13:05:03','2016-03-25 13:05:03','single'),(41,'2016-03-25 13:05:03','2016-03-25 13:05:03','feeds'),(42,'2016-03-25 13:05:03','2016-03-25 13:05:03','conversations'),(43,'2016-03-25 13:05:03','2016-03-25 13:05:03','messages'),(44,'2016-03-25 13:05:03','2016-03-25 13:05:03','workflow'),(45,'2016-03-25 13:05:03','2016-03-25 13:05:03','me'),(46,'2016-03-25 13:05:03','2016-03-25 13:05:03','workflows'),(47,'2016-03-25 13:05:03','2016-03-25 13:05:03','blocks'),(48,'2016-03-25 13:05:03','2016-03-25 13:05:03','stacks'),(49,'2016-03-25 13:05:03','2016-03-25 13:05:03','permissions'),(50,'2016-03-25 13:05:03','2016-03-25 13:05:03','list'),(51,'2016-03-25 13:05:03','2016-03-25 13:05:03','types'),(52,'2016-03-25 13:05:03','2016-03-25 13:05:03','extend'),(53,'2016-03-25 13:05:03','2016-03-25 13:05:03','news'),(54,'2016-03-25 13:05:03','2016-03-25 13:05:03','install'),(55,'2016-03-25 13:05:03','2016-03-25 13:05:03','update'),(56,'2016-03-25 13:05:03','2016-03-25 13:05:03','connect'),(57,'2016-03-25 13:05:03','2016-03-25 13:05:03','themes'),(58,'2016-03-25 13:05:03','2016-03-25 13:05:03','addons'),(59,'2016-03-25 13:05:03','2016-03-25 13:05:03','system'),(60,'2016-03-25 13:05:03','2016-03-25 13:05:03','basics'),(61,'2016-03-25 13:05:03','2016-03-25 13:05:03','name'),(62,'2016-03-25 13:05:03','2016-03-25 13:05:03','accessibility'),(63,'2016-03-25 13:05:03','2016-03-25 13:05:03','social'),(64,'2016-03-25 13:05:03','2016-03-25 13:05:03','icons'),(65,'2016-03-25 13:05:03','2016-03-25 13:05:03','editor'),(66,'2016-03-25 13:05:03','2016-03-25 13:05:03','multilingual'),(67,'2016-03-25 13:05:03','2016-03-25 13:05:03','timezone'),(68,'2016-03-25 13:05:03','2016-03-25 13:05:03','multilingual'),(69,'2016-03-25 13:05:03','2016-03-25 13:05:03','setup'),(70,'2016-03-25 13:05:03','2016-03-25 13:05:03','copy'),(71,'2016-03-25 13:05:03','2016-03-25 13:05:03','page_report'),(72,'2016-03-25 13:05:03','2016-03-25 13:05:03','translate_interface'),(73,'2016-03-25 13:05:03','2016-03-25 13:05:03','seo'),(74,'2016-03-25 13:05:03','2016-03-25 13:05:03','urls'),(75,'2016-03-25 13:05:03','2016-03-25 13:05:03','bulk'),(76,'2016-03-25 13:05:03','2016-03-25 13:05:03','codes'),(77,'2016-03-25 13:05:03','2016-03-25 13:05:03','excluded'),(78,'2016-03-25 13:05:03','2016-03-25 13:05:03','searchindex'),(79,'2016-03-25 13:05:03','2016-03-25 13:05:03','files'),(80,'2016-03-25 13:05:03','2016-03-25 13:05:03','permissions'),(81,'2016-03-25 13:05:03','2016-03-25 13:05:03','filetypes'),(82,'2016-03-25 13:05:03','2016-03-25 13:05:03','thumbnails'),(83,'2016-03-25 13:05:03','2016-03-25 13:05:03','image_uploading'),(84,'2016-03-25 13:05:03','2016-03-25 13:05:03','storage'),(85,'2016-03-25 13:05:03','2016-03-25 13:05:03','optimization'),(86,'2016-03-25 13:05:03','2016-03-25 13:05:03','cache'),(87,'2016-03-25 13:05:03','2016-03-25 13:05:03','clearcache'),(88,'2016-03-25 13:05:03','2016-03-25 13:05:03','jobs'),(89,'2016-03-25 13:05:03','2016-03-25 13:05:03','query_log'),(90,'2016-03-25 13:05:03','2016-03-25 13:05:03','permissions'),(91,'2016-03-25 13:05:03','2016-03-25 13:05:04','site'),(92,'2016-03-25 13:05:04','2016-03-25 13:05:04','tasks'),(93,'2016-03-25 13:05:04','2016-03-25 13:05:04','users'),(94,'2016-03-25 13:05:04','2016-03-25 13:05:04','advanced'),(95,'2016-03-25 13:05:04','2016-03-25 13:05:04','blacklist'),(96,'2016-03-25 13:05:04','2016-03-25 13:05:04','captcha'),(97,'2016-03-25 13:05:04','2016-03-25 13:05:04','antispam'),(98,'2016-03-25 13:05:04','2016-03-25 13:05:04','maintenance'),(99,'2016-03-25 13:05:04','2016-03-25 13:05:04','registration'),(100,'2016-03-25 13:05:04','2016-03-25 13:05:04','postlogin'),(101,'2016-03-25 13:05:04','2016-03-25 13:05:04','profiles'),(102,'2016-03-25 13:05:04','2016-03-25 13:05:04','open'),(103,'2016-03-25 13:05:04','2016-03-25 13:05:04','authentication'),(104,'2016-03-25 13:05:04','2016-03-25 13:05:04','mail'),(105,'2016-03-25 13:05:04','2016-03-25 13:05:04','method'),(106,'2016-03-25 13:05:04','2016-03-25 13:05:04','test'),(107,'2016-03-25 13:05:04','2016-03-25 13:05:04','importers'),(108,'2016-03-25 13:05:04','2016-03-25 13:05:04','conversations'),(109,'2016-03-25 13:05:04','2016-03-25 13:05:04','settings'),(110,'2016-03-25 13:05:04','2016-03-25 13:05:04','points'),(111,'2016-03-25 13:05:04','2016-03-25 13:05:04','bannedwords'),(112,'2016-03-25 13:05:04','2016-03-25 13:05:04','permissions'),(113,'2016-03-25 13:05:04','2016-03-25 13:05:04','attributes'),(114,'2016-03-25 13:05:04','2016-03-25 13:05:04','sets'),(115,'2016-03-25 13:05:04','2016-03-25 13:05:04','types'),(116,'2016-03-25 13:05:04','2016-03-25 13:05:04','topics'),(117,'2016-03-25 13:05:04','2016-03-25 13:05:04','add'),(118,'2016-03-25 13:05:04','2016-03-25 13:05:04','environment'),(119,'2016-03-25 13:05:04','2016-03-25 13:05:04','info'),(120,'2016-03-25 13:05:04','2016-03-25 13:05:04','debug'),(121,'2016-03-25 13:05:04','2016-03-25 13:05:04','logging'),(122,'2016-03-25 13:05:04','2016-03-25 13:05:04','proxy'),(123,'2016-03-25 13:05:04','2016-03-25 13:05:04','entities'),(124,'2016-03-25 13:05:04','2016-03-25 13:05:04','backup'),(125,'2016-03-25 13:05:04','2016-03-25 13:05:04','backup'),(126,'2016-03-25 13:05:04','2016-03-25 13:05:04','update'),(127,'2016-03-25 13:05:04','2016-03-25 13:05:04','welcome'),(128,'2016-03-25 13:05:04','2016-03-25 13:05:04','home'),(129,'2016-03-25 13:05:07','2016-03-25 13:05:07','!drafts'),(130,'2016-03-25 13:05:07','2016-03-25 13:05:07','!trash'),(131,'2016-03-25 13:05:07','2016-03-25 13:05:07','!stacks'),(132,'2016-03-25 13:05:07','2016-03-25 13:05:07','login'),(133,'2016-03-25 13:05:07','2016-03-25 13:05:07','register'),(134,'2016-03-25 13:05:07','2016-03-25 13:05:07','account'),(135,'2016-03-25 13:05:07','2016-03-25 13:05:07','edit_profile'),(136,'2016-03-25 13:05:08','2016-03-25 13:05:08','avatar'),(137,'2016-03-25 13:05:08','2016-03-25 13:05:08','messages'),(138,'2016-03-25 13:05:08','2016-03-25 13:05:08','inbox'),(139,'2016-03-25 13:05:08','2016-03-25 13:05:08','members'),(140,'2016-03-25 13:05:08','2016-03-25 13:05:08','profile'),(141,'2016-03-25 13:05:08','2016-03-25 13:05:08','directory'),(142,'2016-03-25 13:05:08','2016-03-25 13:05:08','page_not_found'),(143,'2016-03-25 13:05:08','2016-03-25 13:05:08','page_forbidden'),(144,'2016-03-25 13:05:08','2016-03-25 13:05:08','download_file'),(145,'2016-03-25 13:05:14','2016-03-25 13:05:14','footer-contact'),(146,'2016-03-25 13:05:14','2016-03-25 13:05:14','footer-legal'),(147,'2016-03-25 13:05:14','2016-03-25 13:05:14','footer-navigation'),(148,'2016-03-25 13:05:14','2016-03-25 13:05:14','footer-site-title'),(149,'2016-03-25 13:05:14','2016-03-25 13:05:14','footer-social'),(150,'2016-03-25 13:05:14','2016-03-25 13:05:14','header-navigation'),(151,'2016-03-25 13:05:14','2016-03-25 13:05:14','header-search'),(152,'2016-03-25 13:05:14','2016-03-25 13:05:14','header-site-title'),(153,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(154,'2016-03-25 13:05:15','2016-03-25 13:05:15','services'),(155,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(156,'2016-03-25 13:05:15','2016-03-25 13:05:15','portfolio'),(157,'2016-03-25 13:05:15','2016-03-25 13:05:15','team'),(158,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(159,'2016-03-25 13:05:15','2016-03-25 13:05:15','blog'),(160,'2016-03-25 13:05:15','2016-03-25 13:05:15','search'),(161,'2016-03-25 13:05:15','2016-03-25 13:05:15','contact'),(162,'2016-03-25 13:05:15','2016-03-25 13:05:15','blank-page'),(163,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(164,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title'),(165,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title-2'),(166,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title-3'),(167,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title-4'),(168,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title-5'),(169,'2016-03-25 13:05:15','2016-03-25 13:05:15','project-title-6'),(170,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(171,'2016-03-25 13:05:15','2016-03-25 13:05:15','hello-world'),(172,'2016-03-25 13:05:15','2016-03-25 13:05:15','another-blog-post'),(173,'2016-03-25 13:05:15','2016-03-25 13:05:15','a-beautiful-blog'),(174,'2016-03-25 13:05:15','2016-03-25 13:05:15','about'),(175,'2016-03-25 13:05:15','2016-03-25 13:05:15','careers'),(176,'2016-03-25 13:05:15','2016-03-25 13:05:15','faq'),(177,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(178,'2016-03-25 13:05:15','2016-03-25 13:05:15','web-developer'),(179,'2016-03-25 13:05:15','2016-03-25 13:05:15','sales-associate'),(180,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(181,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL),(182,'2016-03-25 13:05:15','2016-03-25 13:05:15',NULL);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionsearchindexattributes`
--

DROP TABLE IF EXISTS `collectionsearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionsearchindexattributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_description` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` tinytext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` tinytext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` tinytext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_job_posting_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_job_location` tinytext COLLATE utf8_unicode_ci,
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_blog_entry_topics` tinytext COLLATE utf8_unicode_ci,
  `ak_project_topics` tinytext COLLATE utf8_unicode_ci,
  `ak_project_client` tinytext COLLATE utf8_unicode_ci,
  `ak_project_tasks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_project_skills` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionsearchindexattributes`
--

LOCK TABLES `collectionsearchindexattributes` WRITE;
/*!40000 ALTER TABLE `collectionsearchindexattributes` DISABLE KEYS */;
INSERT INTO `collectionsearchindexattributes` VALUES (1,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,'fa fa-th-large',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,'files, category, categories',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,'new file set',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,'user, group, people, permissions, expire, badges',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,'user attributes, user data, gather data, registration data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,'new user, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,'new user group, new group, group, create',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,'group set',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,'community, points, karma',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,'action, community actions',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,'forms, questions, response, data',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,'questions, quiz, response',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,'page types',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,'page attributes, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,'single, page, custom, application',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,'atom, rss, feed, syndication',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,'icon-bullhorn',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,'edit stacks, view stacks, all stacks',NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,'block, refresh, custom',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,'update, upgrade',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,'concrete5.org, my account, marketplace',NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,'dashboard, configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,'website name, title',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,'accessibility, easy mode',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,'sharing, facebook, twitter',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,'multilingual, localization, internationalization, i18n',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,'pretty, slug',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,'images, picture, responsive, retina',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,'uploading, upload, images, image, resizing, manager',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(89,NULL,NULL,'queries, database, mysql',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(91,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(92,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,'security, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(98,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,'signup, new user, community, public registration, public, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(109,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(110,NULL,NULL,'conversations ratings, ratings, community, community points',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(111,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,'attribute configuration',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,'attributes, sets',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(115,NULL,NULL,'attributes, types',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(116,NULL,NULL,'topics, tags, taxonomy',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(119,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(120,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(121,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(122,NULL,NULL,'network, proxy server',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(123,NULL,NULL,'database, entities, doctrine, orm',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(124,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(126,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(127,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,1,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(129,NULL,NULL,NULL,'fa fa-edit',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(130,NULL,NULL,NULL,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(131,NULL,NULL,NULL,'fa fa-th',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(134,NULL,NULL,NULL,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(154,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(157,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(159,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(161,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(162,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(164,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,6,NULL,'||/Homework||','Test Client','\nArchitecture\nDesign\nProduction\n','\nHTML\nJavaScript\nPHP\n'),(165,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,8,NULL,'||/Activities||','Test Client','\nArchitecture\n','\nPHP\n'),(166,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,16,NULL,'||/Homework||','Test Client 2','\nMultimedia\nProduction\nDevelopment\n','\nHTML\nJavaScript\nPHP\nCSS\n'),(167,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,0,0,NULL,NULL,0,15,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(168,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,12,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(169,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,10,NULL,'||/Homework||','Test Client 2','\nDesign\n','\nPhotoshop\n'),(171,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,2,'||/Projects||',NULL,NULL,NULL,NULL),(172,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,7,'||/Humor||',NULL,NULL,NULL,NULL),(173,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,11,'||/Projects||',NULL,NULL,NULL,NULL),(174,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(176,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(178,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nTechnical and Operations\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL),(179,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,'\nMarketing and Sales\n','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla massa lacus, vehicula eu interdum convallis, laoreet id lectus. Nunc turpis elit, aliquam sit amet aliquam tincidunt, dapibus vel tellus. ',0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `collectionsearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionareastyles`
--

DROP TABLE IF EXISTS `collectionversionareastyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionareastyles`
--

LOCK TABLES `collectionversionareastyles` WRITE;
/*!40000 ALTER TABLE `collectionversionareastyles` DISABLE KEYS */;
INSERT INTO `collectionversionareastyles` VALUES (1,1,'Page Footer',14),(154,1,'Page Footer',15);
/*!40000 ALTER TABLE `collectionversionareastyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblocks`
--

DROP TABLE IF EXISTS `collectionversionblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblocks`
--

LOCK TABLES `collectionversionblocks` WRITE;
/*!40000 ALTER TABLE `collectionversionblocks` DISABLE KEYS */;
INSERT INTO `collectionversionblocks` VALUES (1,1,51,'Main',0,1,0,0,0,0,0),(1,1,52,'Main',1,1,0,0,0,0,0),(1,1,53,'Main : 3',0,1,0,0,0,0,0),(1,1,54,'Main : 4',0,1,0,0,0,0,0),(1,1,55,'Main : 5',0,1,0,0,0,0,0),(1,1,56,'Main',2,1,0,0,0,0,0),(1,1,57,'Main',3,1,0,0,0,0,0),(1,1,58,'Main',4,1,0,0,0,0,0),(1,1,59,'Main',5,1,0,0,0,0,0),(1,1,60,'Main',6,1,0,0,0,0,0),(1,1,61,'Main : 6',0,1,0,0,0,0,0),(1,1,62,'Main : 7',0,1,0,0,0,0,0),(1,1,63,'Main',7,1,0,0,0,0,0),(1,1,64,'Main : 8',0,1,0,0,0,0,0),(1,1,65,'Main : 9',0,1,0,0,0,0,0),(1,1,66,'Main : 10',0,1,0,0,0,0,0),(1,1,67,'Page Footer',0,1,0,0,0,0,0),(127,1,1,'Main',0,1,0,0,0,0,0),(128,1,2,'Primary',0,1,0,0,0,0,0),(128,1,3,'Primary',1,1,0,0,0,0,0),(128,1,4,'Secondary 1',0,1,0,0,0,0,0),(128,1,5,'Secondary 2',0,1,0,0,0,0,0),(128,1,6,'Secondary 3',0,1,0,0,0,0,0),(128,1,7,'Secondary 4',0,1,0,0,0,0,0),(128,1,8,'Secondary 5',0,1,0,0,0,0,0),(145,1,43,'Main',0,1,0,0,0,0,0),(146,1,44,'Main',0,1,0,0,0,0,0),(147,1,45,'Main',0,1,0,0,0,0,0),(148,1,46,'Main',0,1,0,0,0,0,0),(149,1,47,'Main',0,1,0,0,0,0,0),(150,1,48,'Main',0,1,0,0,1,0,0),(151,1,49,'Main',0,1,0,0,0,0,0),(152,1,50,'Main',0,1,0,0,0,0,0),(154,1,68,'Main',0,1,0,0,0,0,0),(154,1,69,'Main',1,1,0,0,0,0,0),(154,1,70,'Main : 11',0,1,0,0,0,0,0),(154,1,71,'Main : 12',0,1,0,0,0,0,0),(154,1,72,'Main : 13',0,1,0,0,0,0,0),(154,1,73,'Main : 14',0,1,0,0,0,0,0),(154,1,74,'Main',2,1,0,0,0,0,0),(154,1,75,'Main',3,1,0,0,0,0,0),(154,1,76,'Main : 15',0,1,0,0,0,0,0),(154,1,77,'Main : 16',0,1,0,0,0,0,0),(154,1,78,'Page Footer',0,1,0,0,0,0,0),(154,1,79,'Page Footer',1,1,0,0,0,0,0),(154,1,80,'Page Footer : 17',0,1,0,0,0,0,0),(154,1,81,'Page Footer : 17',1,1,0,0,0,0,0),(154,1,82,'Page Footer : 18',0,1,0,0,0,0,0),(154,1,83,'Page Footer : 18',1,1,0,0,0,0,0),(155,1,40,'Main',0,1,0,0,0,0,0),(155,1,41,'Main',1,1,0,0,0,0,0),(155,1,42,'Main',2,1,0,0,0,0,0),(156,1,40,'Main',0,0,0,0,0,0,0),(156,1,41,'Main',1,0,0,0,0,0,0),(156,1,42,'Main',2,0,0,0,0,0,0),(157,1,96,'Main',0,1,0,0,0,0,0),(157,1,97,'Main',1,1,0,0,0,0,0),(157,1,98,'Main : 19',0,1,0,0,0,0,0),(157,1,99,'Main : 20',0,1,0,0,0,0,0),(157,1,100,'Main',2,1,0,0,0,0,0),(157,1,101,'Main',3,1,0,0,0,0,0),(157,1,102,'Main : 21',0,1,0,0,0,0,0),(157,1,103,'Main : 21',1,1,0,0,0,0,0),(157,1,104,'Main : 22',0,1,0,0,0,0,0),(157,1,105,'Main : 22',1,1,0,0,0,0,0),(157,1,106,'Main : 23',0,1,0,0,0,0,0),(157,1,107,'Main : 23',1,1,0,0,0,0,0),(157,1,108,'Main',4,1,0,0,0,0,0),(157,1,109,'Main',5,1,0,0,0,0,0),(157,1,110,'Main : 24',0,1,0,0,0,0,0),(157,1,111,'Main : 25',0,1,0,0,0,0,0),(158,1,35,'Main',0,1,0,0,0,0,0),(158,1,36,'Main',1,1,0,0,0,0,0),(158,1,37,'Main : 1',0,1,0,0,0,0,0),(158,1,38,'Main : 2',0,1,0,0,0,0,0),(158,1,39,'Main : 2',1,1,0,0,0,0,0),(159,1,35,'Main',0,0,0,0,0,0,0),(159,1,36,'Main',1,0,0,0,0,0,0),(159,1,37,'Main : 1',0,0,0,0,0,0,0),(159,1,38,'Main : 2',0,0,0,0,0,0,0),(159,1,39,'Main : 2',1,0,0,0,0,0,0),(160,1,118,'Main',0,1,0,0,0,0,0),(161,1,119,'Main',0,1,0,0,0,0,0),(161,1,120,'Main',1,1,0,0,0,0,0),(161,1,121,'Main : 26',0,1,0,0,0,0,0),(161,1,122,'Main : 27',0,1,0,0,0,0,0),(161,1,123,'Main',2,1,0,0,0,0,0),(161,1,124,'Main',3,1,0,0,0,0,0),(161,1,125,'Main : 28',0,1,0,0,0,0,0),(161,1,126,'Main : 29',0,1,0,0,0,0,0),(161,1,127,'Main : 30',0,1,0,0,0,0,0),(161,1,128,'Main : 30',1,1,0,0,0,0,0),(162,1,129,'Main',0,1,0,0,0,0,0),(163,1,27,'Page Header',0,1,0,0,0,0,0),(163,1,28,'Page Header',1,1,0,0,0,0,0),(163,1,29,'Sidebar',0,1,0,0,0,0,0),(163,1,30,'Sidebar',1,1,0,0,0,0,0),(163,1,31,'Sidebar',2,1,0,0,0,0,0),(163,1,32,'Main',0,1,0,0,0,0,0),(163,1,33,'Page Footer',0,1,0,0,0,0,0),(163,1,34,'Page Footer',1,1,0,0,0,0,0),(164,1,27,'Page Header',0,0,0,0,0,0,0),(164,1,29,'Sidebar',0,0,0,0,0,0,0),(164,1,30,'Sidebar',1,0,0,0,0,0,0),(164,1,31,'Sidebar',2,0,0,0,0,0,0),(164,1,33,'Page Footer',0,0,0,0,0,0,0),(164,1,34,'Page Footer',1,0,0,0,0,0,0),(164,1,84,'Page Header',1,1,0,0,0,0,0),(164,1,85,'Main',0,1,0,0,0,0,0),(165,1,27,'Page Header',0,0,0,0,0,0,0),(165,1,29,'Sidebar',0,0,0,0,0,0,0),(165,1,30,'Sidebar',1,0,0,0,0,0,0),(165,1,31,'Sidebar',2,0,0,0,0,0,0),(165,1,33,'Page Footer',0,0,0,0,0,0,0),(165,1,34,'Page Footer',1,0,0,0,0,0,0),(165,1,86,'Page Header',1,1,0,0,0,0,0),(165,1,87,'Main',0,1,0,0,0,0,0),(166,1,27,'Page Header',0,0,0,0,0,0,0),(166,1,29,'Sidebar',0,0,0,0,0,0,0),(166,1,30,'Sidebar',1,0,0,0,0,0,0),(166,1,31,'Sidebar',2,0,0,0,0,0,0),(166,1,33,'Page Footer',0,0,0,0,0,0,0),(166,1,34,'Page Footer',1,0,0,0,0,0,0),(166,1,88,'Page Header',1,1,0,0,0,0,0),(166,1,89,'Main',0,1,0,0,0,0,0),(167,1,27,'Page Header',0,0,0,0,0,0,0),(167,1,29,'Sidebar',0,0,0,0,0,0,0),(167,1,30,'Sidebar',1,0,0,0,0,0,0),(167,1,31,'Sidebar',2,0,0,0,0,0,0),(167,1,33,'Page Footer',0,0,0,0,0,0,0),(167,1,34,'Page Footer',1,0,0,0,0,0,0),(167,1,90,'Page Header',1,1,0,0,0,0,0),(167,1,91,'Main',0,1,0,0,0,0,0),(168,1,27,'Page Header',0,0,0,0,0,0,0),(168,1,29,'Sidebar',0,0,0,0,0,0,0),(168,1,30,'Sidebar',1,0,0,0,0,0,0),(168,1,31,'Sidebar',2,0,0,0,0,0,0),(168,1,33,'Page Footer',0,0,0,0,0,0,0),(168,1,34,'Page Footer',1,0,0,0,0,0,0),(168,1,92,'Page Header',1,1,0,0,0,0,0),(168,1,93,'Main',0,1,0,0,0,0,0),(169,1,27,'Page Header',0,0,0,0,0,0,0),(169,1,29,'Sidebar',0,0,0,0,0,0,0),(169,1,30,'Sidebar',1,0,0,0,0,0,0),(169,1,31,'Sidebar',2,0,0,0,0,0,0),(169,1,33,'Page Footer',0,0,0,0,0,0,0),(169,1,34,'Page Footer',1,0,0,0,0,0,0),(169,1,94,'Page Header',1,1,0,0,0,0,0),(169,1,95,'Main',0,1,0,0,0,0,0),(170,1,9,'Main',0,1,0,0,0,0,0),(170,1,10,'Main',1,1,0,0,0,0,0),(170,1,11,'Sidebar',0,1,0,0,0,0,0),(170,1,12,'Sidebar',1,1,0,0,0,0,0),(170,1,13,'Sidebar',2,1,0,0,0,0,0),(170,1,14,'Sidebar',3,1,0,0,0,0,0),(170,1,15,'Page Footer',0,1,0,0,0,0,0),(170,1,16,'Page Footer',1,1,0,0,0,0,0),(171,1,9,'Main',0,0,0,0,0,0,0),(171,1,11,'Sidebar',0,0,0,0,0,0,0),(171,1,12,'Sidebar',1,0,0,0,0,0,0),(171,1,13,'Sidebar',2,0,0,0,0,0,0),(171,1,14,'Sidebar',3,0,0,0,0,0,0),(171,1,15,'Page Footer',0,0,0,0,0,0,0),(171,1,112,'Page Footer',1,1,0,0,0,0,0),(171,1,113,'Main',1,1,0,0,0,0,0),(172,1,9,'Main',0,0,0,0,0,0,0),(172,1,11,'Sidebar',0,0,0,0,0,0,0),(172,1,12,'Sidebar',1,0,0,0,0,0,0),(172,1,13,'Sidebar',2,0,0,0,0,0,0),(172,1,14,'Sidebar',3,0,0,0,0,0,0),(172,1,15,'Page Footer',0,0,0,0,0,0,0),(172,1,114,'Page Footer',1,1,0,0,0,0,0),(172,1,115,'Main',1,1,0,0,0,0,0),(173,1,9,'Main',0,0,0,0,0,0,0),(173,1,11,'Sidebar',0,0,0,0,0,0,0),(173,1,12,'Sidebar',1,0,0,0,0,0,0),(173,1,13,'Sidebar',2,0,0,0,0,0,0),(173,1,14,'Sidebar',3,0,0,0,0,0,0),(173,1,15,'Page Footer',0,0,0,0,0,0,0),(173,1,116,'Page Footer',1,1,0,0,0,0,0),(173,1,117,'Main',1,1,0,0,0,0,0),(174,1,130,'Main',0,1,0,0,0,0,0),(174,1,131,'Main',1,1,0,0,0,0,0),(174,1,132,'Main : 31',0,1,0,0,0,0,0),(174,1,133,'Main : 32',0,1,0,0,0,0,0),(174,1,134,'Main : 32',1,1,0,0,0,0,0),(174,1,135,'Main',2,1,0,0,0,0,0),(174,1,136,'Main',3,1,0,0,0,0,0),(174,1,137,'Main : 33',0,1,0,0,0,0,0),(174,1,138,'Main : 34',0,1,0,0,0,0,0),(174,1,139,'Main : 34',1,1,0,0,0,0,0),(174,1,140,'Main : 34',2,1,0,0,0,0,0),(174,1,141,'Main',4,1,0,0,0,0,0),(174,1,142,'Main',5,1,0,0,0,0,0),(174,1,143,'Main : 35',0,1,0,0,0,0,0),(174,1,144,'Main : 36',0,1,0,0,0,0,0),(175,1,145,'Main',0,1,0,0,0,0,0),(175,1,146,'Main',1,1,0,0,0,0,0),(175,1,147,'Main',2,1,0,0,0,0,0),(175,1,148,'Main',3,1,0,0,0,0,0),(175,1,149,'Main : 37',0,1,0,0,0,0,0),(175,1,150,'Main : 37',1,1,0,0,0,0,0),(175,1,151,'Main : 38',0,1,0,0,0,0,0),(175,1,152,'Main : 38',1,1,0,0,0,0,0),(175,1,153,'Main : 39',0,1,0,0,0,0,0),(175,1,154,'Main : 39',1,1,0,0,0,0,0),(175,1,155,'Main',4,1,0,0,0,0,0),(175,1,156,'Main',5,1,0,0,0,0,0),(175,1,157,'Main : 40',0,1,0,0,0,0,0),(175,1,158,'Main : 41',0,1,0,0,0,0,0),(176,1,161,'Main',0,1,0,0,0,0,0),(176,1,162,'Main',1,1,0,0,0,0,0),(177,1,17,'Page Header',0,1,0,0,0,0,0),(177,1,18,'Sidebar',0,1,0,0,0,0,0),(177,1,19,'Main',0,1,0,0,0,0,0),(177,1,20,'Main',1,1,0,0,0,0,0),(177,1,21,'Main',2,1,0,0,0,0,0),(177,1,22,'Main',3,1,0,0,0,0,0),(177,1,23,'Main',4,1,0,0,0,0,0),(177,1,24,'Main',5,1,0,0,0,0,0),(177,1,25,'Main',6,1,0,0,0,0,0),(177,1,26,'Main',7,1,0,0,0,0,0),(178,1,17,'Page Header',0,0,0,0,0,0,0),(178,1,18,'Sidebar',0,0,0,0,0,0,0),(178,1,19,'Main',0,0,0,0,0,0,0),(178,1,20,'Main',1,0,0,0,0,0,0),(178,1,21,'Main',2,0,0,0,0,0,0),(178,1,22,'Main',3,0,0,0,0,0,0),(178,1,23,'Main',4,0,0,0,0,0,0),(178,1,24,'Main',5,0,0,0,0,0,0),(178,1,26,'Main',7,0,0,0,0,0,0),(178,1,159,'Main',6,1,0,0,0,0,0),(179,1,17,'Page Header',0,0,0,0,0,0,0),(179,1,18,'Sidebar',0,0,0,0,0,0,0),(179,1,19,'Main',0,0,0,0,0,0,0),(179,1,20,'Main',1,0,0,0,0,0,0),(179,1,21,'Main',2,0,0,0,0,0,0),(179,1,22,'Main',3,0,0,0,0,0,0),(179,1,23,'Main',4,0,0,0,0,0,0),(179,1,24,'Main',5,0,0,0,0,0,0),(179,1,26,'Main',7,0,0,0,0,0,0),(179,1,160,'Main',6,1,0,0,0,0,0);
/*!40000 ALTER TABLE `collectionversionblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblockscachesettings`
--

DROP TABLE IF EXISTS `collectionversionblockscachesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblockscachesettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblockscachesettings`
--

LOCK TABLES `collectionversionblockscachesettings` WRITE;
/*!40000 ALTER TABLE `collectionversionblockscachesettings` DISABLE KEYS */;
INSERT INTO `collectionversionblockscachesettings` VALUES (150,1,48,'Main',1,1,1,3600);
/*!40000 ALTER TABLE `collectionversionblockscachesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblocksoutputcache`
--

DROP TABLE IF EXISTS `collectionversionblocksoutputcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblocksoutputcache`
--

LOCK TABLES `collectionversionblocksoutputcache` WRITE;
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` DISABLE KEYS */;
INSERT INTO `collectionversionblocksoutputcache` VALUES (1,1,47,'Footer Social','\n<div id=\"ccm-block-social-links47\" class=\"ccm-block-social-links\">\n    <ul class=\"list-inline\">\n            <li><a target=\"_blank\" href=\"http://twitter.com/concrete5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a target=\"_blank\" href=\"http://github.com/concrete5\"><i class=\"fa fa-github-square\"></i></a></li>\n            <li><a target=\"_blank\" href=\"http://facebook.com/concrete5\"><i class=\"fa fa-facebook\"></i></a></li>\n        </ul>\n</div>',1616702731),(1,1,48,'Header Navigation','\n<nav class=\"ccm-responsive-navigation original\"><ul><li class=\"\"><a href=\"http://localhost:3268/index.php/services\" target=\"_self\" class=\"\">Services</a></li><li class=\"\"><a href=\"http://localhost:3268/index.php/portfolio\" target=\"_self\" class=\"\">Portfolio</a></li><li class=\"\"><a href=\"http://localhost:3268/index.php/team\" target=\"_self\" class=\"\">Team</a><ul><li class=\"\"><a href=\"http://localhost:3268/index.php/team/about\" target=\"_self\" class=\"\">About</a></li><li class=\"\"><a href=\"http://localhost:3268/index.php/team/careers\" target=\"_self\" class=\"\">Careers</a></li><li class=\"\"><a href=\"http://localhost:3268/index.php/team/faq\" target=\"_self\" class=\"\">Frequently Asked Questions</a></li></ul></li><li class=\"\"><a href=\"http://localhost:3268/index.php/blog\" target=\"_self\" class=\"\">Blog</a></li><li class=\"\"><a href=\"http://localhost:3268/index.php/contact\" target=\"_self\" class=\"\">Contact</a></li></ul></nav><div class=\"ccm-responsive-menu-launch\"><i></i></div>',1458939931),(1,1,53,'Main : 3','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-pencil\"></i> Easy to Edit</h4>\n        Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>',1616702731),(1,1,54,'Main : 4','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-eye\"></i> Pixel Perfect</h4>\n        Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>',1616702731),(1,1,55,'Main : 5','<div class=\"ccm-block-feature-item\">\n            <h4><i class=\"fa fa-youtube-play\"></i> Media Rich</h4>\n        Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>',1616702731),(1,1,56,'Main','<hr/>',1616702731),(1,1,59,'Main','<hr/>',1616702731);
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblockstyles`
--

DROP TABLE IF EXISTS `collectionversionblockstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblockstyles`
--

LOCK TABLES `collectionversionblockstyles` WRITE;
/*!40000 ALTER TABLE `collectionversionblockstyles` DISABLE KEYS */;
INSERT INTO `collectionversionblockstyles` VALUES (170,1,11,'Sidebar',1),(171,1,11,'Sidebar',1),(172,1,11,'Sidebar',1),(173,1,11,'Sidebar',1),(170,1,12,'Sidebar',2),(171,1,12,'Sidebar',2),(172,1,12,'Sidebar',2),(173,1,12,'Sidebar',2),(177,1,18,'Sidebar',3),(178,1,18,'Sidebar',3),(179,1,18,'Sidebar',3),(158,1,37,'Main : 1',4),(159,1,37,'Main : 1',4),(158,1,38,'Main : 2',5),(159,1,38,'Main : 2',5),(158,1,39,'Main : 2',6),(159,1,39,'Main : 2',6),(155,1,41,'Main',7),(156,1,41,'Main',7),(1,1,53,'Main : 3',8),(1,1,54,'Main : 4',9),(1,1,55,'Main : 5',10),(1,1,57,'Main',11),(1,1,64,'Main : 8',12),(1,1,65,'Main : 9',13),(157,1,98,'Main : 19',16),(157,1,99,'Main : 20',17),(157,1,102,'Main : 21',18),(157,1,103,'Main : 21',19),(157,1,104,'Main : 22',20),(157,1,105,'Main : 22',21),(157,1,106,'Main : 23',22),(157,1,107,'Main : 23',23),(157,1,110,'Main : 24',24),(161,1,125,'Main : 28',25),(174,1,143,'Main : 35',26),(175,1,158,'Main : 41',27);
/*!40000 ALTER TABLE `collectionversionblockstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionfeatureassignments`
--

DROP TABLE IF EXISTS `collectionversionfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionfeatureassignments`
--

LOCK TABLES `collectionversionfeatureassignments` WRITE;
/*!40000 ALTER TABLE `collectionversionfeatureassignments` DISABLE KEYS */;
INSERT INTO `collectionversionfeatureassignments` VALUES (170,1,1),(157,1,2),(171,1,3),(172,1,4),(173,1,5),(161,1,6),(174,1,7),(174,1,8),(174,1,9),(175,1,10);
/*!40000 ALTER TABLE `collectionversionfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionrelatededits`
--

DROP TABLE IF EXISTS `collectionversionrelatededits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionrelatededits`
--

LOCK TABLES `collectionversionrelatededits` WRITE;
/*!40000 ALTER TABLE `collectionversionrelatededits` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionrelatededits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversions`
--

DROP TABLE IF EXISTS `collectionversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversions`
--

LOCK TABLES `collectionversions` WRITE;
/*!40000 ALTER TABLE `collectionversions` DISABLE KEYS */;
INSERT INTO `collectionversions` VALUES (1,1,'Home','home','','2016-03-25 13:04:18','2016-03-25 13:04:18','Initial Version',1,0,1,NULL,1,6,NULL),(2,1,'Dashboard','dashboard','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(4,1,'Full Sitemap','full','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(5,1,'Flat View','explore','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(6,1,'Page Search','search','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(7,1,'Files','files','All documents and images.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(8,1,'File Manager','search','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(9,1,'Attributes','attributes','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(10,1,'File Sets','sets','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(11,1,'Add File Set','add_set','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(13,1,'Search Users','search','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(14,1,'User Groups','groups','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(15,1,'Attributes','attributes','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(16,1,'Add User','add','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(17,1,'Add Group','add_group','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(19,1,'Group Sets','group_sets','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(20,1,'Community Points','points',NULL,'2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(21,1,'Assign Points','assign',NULL,'2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(22,1,'Actions','actions',NULL,'2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(23,1,'Reports','reports','Get data from forms and logs.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(24,1,'Form Results','forms','Get submission data.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(25,1,'Surveys','surveys','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(26,1,'Logs','logs','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(28,1,'Themes','themes','Reskin your site.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(29,1,'Inspect','inspect','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(30,1,'Page Types','types','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(31,1,'Organize Page Type Order','organize','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(32,1,'Add Page Type','add','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(33,1,'Compose Form','form','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(34,1,'Defaults and Output','output','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(35,1,'Page Type Attributes','attributes','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(36,1,'Page Type Permissions','permissions','','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(37,1,'Page Templates','templates','Form factors for pages in your site.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(38,1,'Add Page Template','add','Add page templates to your site.','2016-03-25 13:05:02','2016-03-25 13:05:02','Initial Version',1,0,1,NULL,1,0,NULL),(39,1,'Attributes','attributes','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(40,1,'Single Pages','single','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(41,1,'RSS Feeds','feeds','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(42,1,'Conversations','conversations','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(43,1,'Messages','messages','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(44,1,'Workflow','workflow','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(45,1,'Waiting for Me','me','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(46,1,'Workflow List','workflows','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(48,1,'Stacks','stacks','Share content across your site.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(50,1,'Stack List','list','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(52,1,'Extend concrete5','extend','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(53,1,'Dashboard','news','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(54,1,'Add Functionality','install','Install add-ons & themes.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(55,1,'Update Add-Ons','update','Update your installed packages.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(56,1,'Connect to the Community','connect','Connect to the concrete5 community.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(57,1,'Get More Themes','themes','Download themes from concrete5.org.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(58,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(59,1,'System & Settings','system','Secure and setup your site.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(60,1,'Basics','basics','Basic information about your website.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(61,1,'Site Name','name','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(62,1,'Accessibility','accessibility','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(63,1,'Social Links','social','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(64,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(65,1,'Rich Text Editor','editor','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(66,1,'Languages','multilingual','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(67,1,'Time Zone','timezone','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(68,1,'Multilingual','multilingual','Run your site in multiple languages.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(69,1,'Multilingual Setup','setup','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(70,1,'Copy Languages','copy','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(71,1,'Page Report','page_report','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(72,1,'Translate Site Interface','translate_interface','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(73,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(74,1,'URLs and Redirection','urls','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(75,1,'Bulk SEO Updater','bulk','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(76,1,'Tracking Codes','codes','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(77,1,'Excluded URL Word List','excluded','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(78,1,'Search Index','searchindex','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(79,1,'Files','files','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(80,1,'File Manager Permissions','permissions','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(81,1,'Allowed File Types','filetypes','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(82,1,'Thumbnails','thumbnails','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(83,1,'Image Uploading','image_uploading','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(84,1,'File Storage Locations','storage','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(85,1,'Optimization','optimization','Keep your site running well.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(86,1,'Cache & Speed Settings','cache','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(87,1,'Clear Cache','clearcache','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(88,1,'Automated Jobs','jobs','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(89,1,'Database Query Log','query_log','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(90,1,'Permissions & Access','permissions','Control who sees and edits your site.','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(91,1,'Site Access','site','','2016-03-25 13:05:03','2016-03-25 13:05:03','Initial Version',1,0,1,NULL,1,0,NULL),(92,1,'Task Permissions','tasks','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(93,1,'User Permissions','users','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(94,1,'Advanced Permissions','advanced','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(95,1,'IP Blacklist','blacklist','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(96,1,'Captcha Setup','captcha','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(97,1,'Spam Control','antispam','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(98,1,'Maintenance Mode','maintenance','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(99,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(100,1,'Login Destination','postlogin','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(101,1,'Public Profiles','profiles','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(102,1,'Public Registration','open','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(103,1,'Authentication Types','authentication','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(104,1,'Email','mail','Control how your site send and processes mail.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(105,1,'SMTP Method','method','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(106,1,'Test Mail Settings','test','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(107,1,'Email Importers','importers','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(108,1,'Conversations','conversations','Manage your conversations settings','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(109,1,'Settings','settings','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(110,1,'Community Points','points','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(111,1,'Banned Words','bannedwords','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(112,1,'Conversation Permissions','permissions','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(113,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(114,1,'Sets','sets','Group attributes into sets for easier organization','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(115,1,'Types','types','Choose which attribute types are available for different items.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(116,1,'Topics','topics','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(117,1,'Add Topic Tree','add','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(118,1,'Environment','environment','Advanced settings for web developers.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(119,1,'Environment Information','info','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(120,1,'Debug Settings','debug','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(121,1,'Logging Settings','logging','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(122,1,'Proxy Server','proxy','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(123,1,'Database Entities','entities','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(124,1,'Backup & Restore','backup','Backup or restore your website.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(125,1,'Backup Database','backup','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(126,1,'Update concrete5','update','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,0,NULL),(127,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,4,NULL),(128,1,'Customize Dashboard Home','home','','2016-03-25 13:05:04','2016-03-25 13:05:04','Initial Version',1,0,1,NULL,1,2,NULL),(129,1,'Drafts','!drafts','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(130,1,'Trash','!trash','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(131,1,'Stacks','!stacks','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(132,1,'Login','login','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(133,1,'Register','register','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(134,1,'My Account','account','','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(135,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2016-03-25 13:05:07','2016-03-25 13:05:07','Initial Version',1,0,1,NULL,1,0,NULL),(136,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(137,1,'Messages','messages','Inbox for site-specific messages.','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(138,1,'Inbox','inbox','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(139,1,'Members','members','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(140,1,'View Profile','profile','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(141,1,'Directory','directory','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(142,1,'Page Not Found','page_not_found','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(143,1,'Page Forbidden','page_forbidden','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(144,1,'Download File','download_file','','2016-03-25 13:05:08','2016-03-25 13:05:08','Initial Version',1,0,1,NULL,1,0,NULL),(145,1,'Footer Contact','footer-contact',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(146,1,'Footer Legal','footer-legal',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(147,1,'Footer Navigation','footer-navigation',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(148,1,'Footer Site Title','footer-site-title',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(149,1,'Footer Social','footer-social',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(150,1,'Header Navigation','header-navigation',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(151,1,'Header Search','header-search',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(152,1,'Header Site Title','header-site-title',NULL,'2016-03-25 13:05:14','2016-03-25 13:05:14','Initial Version',1,0,1,NULL,1,0,NULL),(153,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,6,NULL),(154,1,'Services','services','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(155,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,6,NULL),(156,1,'Portfolio','portfolio','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(157,1,'Team','team','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(158,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,6,NULL),(159,1,'Blog','blog','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(160,1,'Search','search','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(161,1,'Contact','contact','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(162,1,'Blank Page','blank-page','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,5,NULL),(163,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,7,NULL),(164,1,'Project Title','project-title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:30:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(165,1,'Project Title 2','project-title-2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:20:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(166,1,'Project Title 3','project-title-3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:10:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(167,1,'Project Title 4','project-title-4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 15:00:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(168,1,'Project Title 5','project-title-5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:30:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(169,1,'Project Title 6','project-title-6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','2014-08-06 14:20:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(170,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,8,NULL),(171,1,'Hello World!','hello-world','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','2014-07-01 12:00:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,8,NULL),(172,1,'Another Blog Post','another-blog-post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','2014-07-04 15:00:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,8,NULL),(173,1,'A Beautiful Site Deserves a Beautiful Blog','a-beautiful-blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','2014-08-01 16:30:00','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,8,NULL),(174,1,'About','about','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(175,1,'Careers','careers','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(176,1,'Frequently Asked Questions','faq','','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,6,NULL),(177,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,7,NULL),(178,1,'Web Developer','web-developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(179,1,'Sales Associate','sales-associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,1,NULL,1,7,NULL),(180,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,5,NULL),(181,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,7,NULL),(182,1,'',NULL,NULL,'2016-03-25 13:05:15','2016-03-25 13:05:15','Initial Version',1,0,NULL,NULL,0,8,NULL);
/*!40000 ALTER TABLE `collectionversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionthemecustomstyles`
--

DROP TABLE IF EXISTS `collectionversionthemecustomstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionthemecustomstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionthemecustomstyles`
--

LOCK TABLES `collectionversionthemecustomstyles` WRITE;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('','concrete','security.token.encryption','fc66v7A5AL1tJyEHrXvpRlAeWCtEC9as7YOtXMX2IBzkTIRBTAZB3Pab0e0EZBcJ'),('','concrete','security.token.jobs','owH9mQQLL1EEpbGhBSFFjtGSAJYsPvxNlHqpxpKnEig92iDqnyB0RyC5WcVp9l55'),('','concrete','security.token.validation','Bpqn20RGtZeSRVFyyqTB600ZKw98M2cBAZWrxiGkXvBkQnhMaYXjhqFsgHz6yZfn');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configstore`
--

DROP TABLE IF EXISTS `configstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configstore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configstore`
--

LOCK TABLES `configstore` WRITE;
/*!40000 ALTER TABLE `configstore` DISABLE KEYS */;
INSERT INTO `configstore` VALUES ('MAIN_HELP_LAST_VIEWED','2016-03-25 20:05:31','1458936331',1,0),('NEWSFLOW_LAST_VIEWED','2016-03-25 20:05:25','FIRSTRUN',1,0);
/*!40000 ALTER TABLE `configstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationdiscussions`
--

DROP TABLE IF EXISTS `conversationdiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationdiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationdiscussions`
--

LOCK TABLES `conversationdiscussions` WRITE;
/*!40000 ALTER TABLE `conversationdiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationdiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationeditors`
--

DROP TABLE IF EXISTS `conversationeditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationeditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationeditors`
--

LOCK TABLES `conversationeditors` WRITE;
/*!40000 ALTER TABLE `conversationeditors` DISABLE KEYS */;
INSERT INTO `conversationeditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `conversationeditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationfeaturedetailassignments`
--

DROP TABLE IF EXISTS `conversationfeaturedetailassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationfeaturedetailassignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationfeaturedetailassignments`
--

LOCK TABLES `conversationfeaturedetailassignments` WRITE;
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` DISABLE KEYS */;
INSERT INTO `conversationfeaturedetailassignments` VALUES (1,1),(3,2),(4,3),(5,4);
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationflaggedmessages`
--

DROP TABLE IF EXISTS `conversationflaggedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationflaggedmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationflaggedmessages`
--

LOCK TABLES `conversationflaggedmessages` WRITE;
/*!40000 ALTER TABLE `conversationflaggedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationflaggedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationflaggedmessagetypes`
--

DROP TABLE IF EXISTS `conversationflaggedmessagetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationflaggedmessagetypes`
--

LOCK TABLES `conversationflaggedmessagetypes` WRITE;
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` DISABLE KEYS */;
INSERT INTO `conversationflaggedmessagetypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessageattachments`
--

DROP TABLE IF EXISTS `conversationmessageattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessageattachments`
--

LOCK TABLES `conversationmessageattachments` WRITE;
/*!40000 ALTER TABLE `conversationmessageattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessageratings`
--

DROP TABLE IF EXISTS `conversationmessageratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessageratings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessageratings`
--

LOCK TABLES `conversationmessageratings` WRITE;
/*!40000 ALTER TABLE `conversationmessageratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessages`
--

DROP TABLE IF EXISTS `conversationmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessages`
--

LOCK TABLES `conversationmessages` WRITE;
/*!40000 ALTER TABLE `conversationmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationpermissionaddmessageaccesslist`
--

DROP TABLE IF EXISTS `conversationpermissionaddmessageaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationpermissionaddmessageaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationpermissionaddmessageaccesslist`
--

LOCK TABLES `conversationpermissionaddmessageaccesslist` WRITE;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationpermissionassignments`
--

DROP TABLE IF EXISTS `conversationpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationpermissionassignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationpermissionassignments`
--

LOCK TABLES `conversationpermissionassignments` WRITE;
/*!40000 ALTER TABLE `conversationpermissionassignments` DISABLE KEYS */;
INSERT INTO `conversationpermissionassignments` VALUES (0,66,101),(0,67,102),(0,70,103),(0,69,104),(0,71,105),(0,68,106),(0,72,107),(0,73,108);
/*!40000 ALTER TABLE `conversationpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationratingtypes`
--

DROP TABLE IF EXISTS `conversationratingtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationratingtypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationratingtypes`
--

LOCK TABLES `conversationratingtypes` WRITE;
/*!40000 ALTER TABLE `conversationratingtypes` DISABLE KEYS */;
INSERT INTO `conversationratingtypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `conversationratingtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES (1,170,'2016-03-25 13:05:16','2016-03-25 13:05:16',0,1,0,0,0,0,0,0,0,NULL,0,0),(2,171,'2016-03-25 13:05:20','2016-03-25 13:05:20',0,1,0,0,0,0,0,0,0,NULL,0,0),(3,172,'2016-03-25 13:05:21','2016-03-25 13:05:21',0,1,0,0,0,0,0,0,0,NULL,0,0),(4,173,'2016-03-25 13:05:21','2016-03-25 13:05:21',0,1,0,0,0,0,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationsubscriptions`
--

DROP TABLE IF EXISTS `conversationsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationsubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationsubscriptions`
--

LOCK TABLES `conversationsubscriptions` WRITE;
/*!40000 ALTER TABLE `conversationsubscriptions` DISABLE KEYS */;
INSERT INTO `conversationsubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `conversationsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadstatistics`
--

DROP TABLE IF EXISTS `downloadstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadstatistics`
--

LOCK TABLES `downloadstatistics` WRITE;
/*!40000 ALTER TABLE `downloadstatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadstatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featureassignments`
--

DROP TABLE IF EXISTS `featureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureassignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featureassignments`
--

LOCK TABLES `featureassignments` WRITE;
/*!40000 ALTER TABLE `featureassignments` DISABLE KEYS */;
INSERT INTO `featureassignments` VALUES (1,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"1\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(2,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:44:\"/application/files/1214/5893/6311/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(3,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"2\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(4,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"3\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(5,6,1,'O:47:\"Concrete\\Core\\Feature\\Detail\\ConversationDetail\":3:{s:8:\"\0*\0cnvID\";s:1:\"4\";s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(6,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:52:\"/application/files/9814/5893/6311/chinese_house2.jpg\";s:8:\"\0*\0width\";d:200;s:9:\"\0*\0height\";d:200;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(7,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:43:\"/application/files/7514/5893/6311/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(8,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:43:\"/application/files/7514/5893/6311/blank.png\";s:8:\"\0*\0width\";d:592;s:9:\"\0*\0height\";d:397;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(9,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:44:\"/application/files/1214/5893/6311/blank2.png\";s:8:\"\0*\0width\";d:250;s:9:\"\0*\0height\";d:252;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(10,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/9214/5893/6311/masthead.png\";s:8:\"\0*\0width\";d:1100;s:9:\"\0*\0height\";d:263;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');
/*!40000 ALTER TABLE `featureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featurecategories`
--

DROP TABLE IF EXISTS `featurecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurecategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featurecategories`
--

LOCK TABLES `featurecategories` WRITE;
/*!40000 ALTER TABLE `featurecategories` DISABLE KEYS */;
INSERT INTO `featurecategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `featurecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileattributevalues`
--

DROP TABLE IF EXISTS `fileattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileattributevalues`
--

LOCK TABLES `fileattributevalues` WRITE;
/*!40000 ALTER TABLE `fileattributevalues` DISABLE KEYS */;
INSERT INTO `fileattributevalues` VALUES (1,1,14,114),(1,1,15,115),(2,1,14,116),(2,1,15,117),(3,1,14,118),(3,1,15,119),(4,1,14,120),(4,1,15,121),(5,1,14,122),(5,1,15,123),(6,1,14,124),(6,1,15,125),(7,1,14,126),(7,1,15,127),(8,1,14,128),(8,1,15,129),(9,1,14,130),(9,1,15,131),(10,1,14,132),(10,1,15,133),(11,1,14,134),(11,1,15,135),(12,1,14,136),(12,1,15,137),(13,1,14,138),(13,1,15,139),(14,1,14,140),(14,1,15,141),(15,1,14,142),(15,1,15,143),(16,1,14,144),(16,1,15,145);
/*!40000 ALTER TABLE `fileattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileimagethumbnailtypes`
--

DROP TABLE IF EXISTS `fileimagethumbnailtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileimagethumbnailtypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileimagethumbnailtypes`
--

LOCK TABLES `fileimagethumbnailtypes` WRITE;
/*!40000 ALTER TABLE `fileimagethumbnailtypes` DISABLE KEYS */;
INSERT INTO `fileimagethumbnailtypes` VALUES (1,'small','Small Image',740,NULL,0),(2,'medium','Medium Image',940,NULL,0),(3,'large','Large Image',1140,NULL,0),(4,'file_manager_listing','File Manager Thumbnails',60,60,1),(5,'file_manager_detail','File Manager Detail Thumbnails',400,NULL,1);
/*!40000 ALTER TABLE `fileimagethumbnailtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionassignments`
--

DROP TABLE IF EXISTS `filepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionassignments`
--

LOCK TABLES `filepermissionassignments` WRITE;
/*!40000 ALTER TABLE `filepermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionfiletypes`
--

DROP TABLE IF EXISTS `filepermissionfiletypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionfiletypes`
--

LOCK TABLES `filepermissionfiletypes` WRITE;
/*!40000 ALTER TABLE `filepermissionfiletypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionfiletypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'2016-03-25 13:05:10',1,1,0,0,NULL),(2,'2016-03-25 13:05:11',1,1,0,0,NULL),(3,'2016-03-25 13:05:11',1,1,0,0,NULL),(4,'2016-03-25 13:05:11',1,1,0,0,NULL),(5,'2016-03-25 13:05:11',1,1,0,0,NULL),(6,'2016-03-25 13:05:11',1,1,0,0,NULL),(7,'2016-03-25 13:05:11',1,1,0,0,NULL),(8,'2016-03-25 13:05:11',1,1,0,0,NULL),(9,'2016-03-25 13:05:11',1,1,0,0,NULL),(10,'2016-03-25 13:05:11',1,1,0,0,NULL),(11,'2016-03-25 13:05:12',1,1,0,0,NULL),(12,'2016-03-25 13:05:12',1,1,0,0,NULL),(13,'2016-03-25 13:05:12',1,1,0,0,NULL),(14,'2016-03-25 13:05:12',1,1,0,0,NULL),(15,'2016-03-25 13:05:12',1,1,0,0,NULL),(16,'2016-03-25 13:05:12',1,1,0,0,NULL);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesearchindexattributes`
--

DROP TABLE IF EXISTS `filesearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesearchindexattributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesearchindexattributes`
--

LOCK TABLES `filesearchindexattributes` WRITE;
/*!40000 ALTER TABLE `filesearchindexattributes` DISABLE KEYS */;
INSERT INTO `filesearchindexattributes` VALUES (1,200.0000,200.0000,0.0000),(2,500.0000,500.0000,0.0000),(3,460.0000,460.0000,0.0000),(4,592.0000,397.0000,0.0000),(5,250.0000,252.0000,0.0000),(6,1600.0000,1067.0000,0.0000),(7,200.0000,200.0000,0.0000),(8,1499.0000,1067.0000,0.0000),(9,1100.0000,263.0000,0.0000),(10,1600.0000,1067.0000,0.0000),(11,1600.0000,1066.0000,0.0000),(12,1600.0000,1067.0000,0.0000),(13,1100.0000,368.0000,0.0000),(14,1100.0000,368.0000,0.0000),(15,1600.0000,1067.0000,0.0000),(16,1600.0000,953.0000,0.0000);
/*!40000 ALTER TABLE `filesearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetfiles`
--

DROP TABLE IF EXISTS `filesetfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetfiles`
--

LOCK TABLES `filesetfiles` WRITE;
/*!40000 ALTER TABLE `filesetfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetpermissionassignments`
--

DROP TABLE IF EXISTS `filesetpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetpermissionassignments`
--

LOCK TABLES `filesetpermissionassignments` WRITE;
/*!40000 ALTER TABLE `filesetpermissionassignments` DISABLE KEYS */;
INSERT INTO `filesetpermissionassignments` VALUES (0,39,40),(0,40,41),(0,41,42),(0,42,43),(0,43,44),(0,44,45),(0,46,46),(0,45,47),(0,47,48);
/*!40000 ALTER TABLE `filesetpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetpermissionfiletypeaccesslist`
--

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetpermissionfiletypeaccesslist`
--

LOCK TABLES `filesetpermissionfiletypeaccesslist` WRITE;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetpermissionfiletypeaccesslistcustom`
--

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetpermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetpermissionfiletypeaccesslistcustom`
--

LOCK TABLES `filesetpermissionfiletypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesets`
--

DROP TABLE IF EXISTS `filesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesets`
--

LOCK TABLES `filesets` WRITE;
/*!40000 ALTER TABLE `filesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetsavedsearches`
--

DROP TABLE IF EXISTS `filesetsavedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetsavedsearches`
--

LOCK TABLES `filesetsavedsearches` WRITE;
/*!40000 ALTER TABLE `filesetsavedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetsavedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestoragelocations`
--

DROP TABLE IF EXISTS `filestoragelocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestoragelocations`
--

LOCK TABLES `filestoragelocations` WRITE;
/*!40000 ALTER TABLE `filestoragelocations` DISABLE KEYS */;
INSERT INTO `filestoragelocations` VALUES (1,'Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1);
/*!40000 ALTER TABLE `filestoragelocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestoragelocationtypes`
--

DROP TABLE IF EXISTS `filestoragelocationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestoragelocationtypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestoragelocationtypes`
--

LOCK TABLES `filestoragelocationtypes` WRITE;
/*!40000 ALTER TABLE `filestoragelocationtypes` DISABLE KEYS */;
INSERT INTO `filestoragelocationtypes` VALUES (1,'default','Default',0),(2,'local','Local',0);
/*!40000 ALTER TABLE `filestoragelocationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileversionlog`
--

DROP TABLE IF EXISTS `fileversionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileversionlog`
--

LOCK TABLES `fileversionlog` WRITE;
/*!40000 ALTER TABLE `fileversionlog` DISABLE KEYS */;
INSERT INTO `fileversionlog` VALUES (1,1,1,5,14),(2,1,1,5,15),(3,2,1,5,14),(4,2,1,5,15),(5,3,1,5,14),(6,3,1,5,15),(7,4,1,5,14),(8,4,1,5,15),(9,5,1,5,14),(10,5,1,5,15),(11,6,1,5,14),(12,6,1,5,15),(13,7,1,5,14),(14,7,1,5,15),(15,8,1,5,14),(16,8,1,5,15),(17,9,1,5,14),(18,9,1,5,15),(19,10,1,5,14),(20,10,1,5,15),(21,11,1,5,14),(22,11,1,5,15),(23,12,1,5,14),(24,12,1,5,15),(25,13,1,5,14),(26,13,1,5,15),(27,14,1,5,14),(28,14,1,5,15),(29,15,1,5,14),(30,15,1,5,15),(31,16,1,5,14),(32,16,1,5,15);
/*!40000 ALTER TABLE `fileversionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileversions`
--

DROP TABLE IF EXISTS `fileversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileversions`
--

LOCK TABLES `fileversions` WRITE;
/*!40000 ALTER TABLE `fileversions` DISABLE KEYS */;
INSERT INTO `fileversions` VALUES (1,1,'avatar_none.png','421458936310',0,12769,'avatar_none.png','','',1,'2016-03-25 13:05:10',1,1,'2016-03-25 13:05:10',1,0,'png',1),(2,1,'balloon.jpg','701458936311',0,49708,'balloon.jpg','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'jpg',1),(3,1,'bio.png','901458936311',0,1353,'bio.png','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'png',1),(4,1,'blank.png','751458936311',0,1837,'blank.png','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'png',1),(5,1,'blank2.png','121458936311',0,1210,'blank2.png','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,0,'png',1),(6,1,'bridge.jpg','581458936311',0,211901,'bridge.jpg','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'jpg',1),(7,1,'chinese_house2.jpg','981458936311',0,84383,'chinese_house2.jpg','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,0,'jpg',1),(8,1,'houses.jpg','821458936311',0,293154,'houses.jpg','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'jpg',1),(9,1,'masthead.png','921458936311',0,1429,'masthead.png','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'png',1),(10,1,'mountains.jpg','771458936311',0,330436,'mountains.jpg','','',1,'2016-03-25 13:05:11',1,1,'2016-03-25 13:05:11',1,1,'jpg',1),(11,1,'plants.jpg','271458936312',0,373839,'plants.jpg','','',1,'2016-03-25 13:05:12',1,1,'2016-03-25 13:05:12',1,1,'jpg',1),(12,1,'shoes.jpg','271458936312',0,170179,'shoes.jpg','','',1,'2016-03-25 13:05:12',1,1,'2016-03-25 13:05:12',1,1,'jpg',1),(13,1,'slider1.png','791458936312',0,78494,'slider1.png','','',1,'2016-03-25 13:05:12',1,1,'2016-03-25 13:05:12',1,1,'png',1),(14,1,'slider2.png','331458936312',0,111308,'slider2.png','','',1,'2016-03-25 13:05:12',1,1,'2016-03-25 13:05:12',1,1,'png',1),(15,1,'subway.jpg','551458936312',0,305595,'subway.jpg','','',1,'2016-03-25 13:05:12',1,1,'2016-03-25 13:05:12',1,1,'jpg',1),(16,1,'sunset.jpg','301458936312',0,458047,'sunset.jpg','','',1,'2016-03-25 13:05:13',1,1,'2016-03-25 13:05:13',1,1,'jpg',1);
/*!40000 ALTER TABLE `fileversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gapage`
--

DROP TABLE IF EXISTS `gapage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gapage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gapage`
--

LOCK TABLES `gapage` WRITE;
/*!40000 ALTER TABLE `gapage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gapage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringconfigureddatasources`
--

DROP TABLE IF EXISTS `gatheringconfigureddatasources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringconfigureddatasources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringconfigureddatasources`
--

LOCK TABLES `gatheringconfigureddatasources` WRITE;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringdatasources`
--

DROP TABLE IF EXISTS `gatheringdatasources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringdatasources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringdatasources`
--

LOCK TABLES `gatheringdatasources` WRITE;
/*!40000 ALTER TABLE `gatheringdatasources` DISABLE KEYS */;
INSERT INTO `gatheringdatasources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `gatheringdatasources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemfeatureassignments`
--

DROP TABLE IF EXISTS `gatheringitemfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemfeatureassignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemfeatureassignments`
--

LOCK TABLES `gatheringitemfeatureassignments` WRITE;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitems`
--

DROP TABLE IF EXISTS `gatheringitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitems`
--

LOCK TABLES `gatheringitems` WRITE;
/*!40000 ALTER TABLE `gatheringitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemselectedtemplates`
--

DROP TABLE IF EXISTS `gatheringitemselectedtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemselectedtemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemselectedtemplates`
--

LOCK TABLES `gatheringitemselectedtemplates` WRITE;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplatefeatures`
--

DROP TABLE IF EXISTS `gatheringitemtemplatefeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplatefeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplatefeatures`
--

LOCK TABLES `gatheringitemtemplatefeatures` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatefeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplates`
--

DROP TABLE IF EXISTS `gatheringitemtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplates`
--

LOCK TABLES `gatheringitemtemplates` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplates` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `gatheringitemtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplatetypes`
--

DROP TABLE IF EXISTS `gatheringitemtemplatetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplatetypes`
--

LOCK TABLES `gatheringitemtemplatetypes` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatetypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringpermissionassignments`
--

DROP TABLE IF EXISTS `gatheringpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringpermissionassignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringpermissionassignments`
--

LOCK TABLES `gatheringpermissionassignments` WRITE;
/*!40000 ALTER TABLE `gatheringpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatherings`
--

DROP TABLE IF EXISTS `gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatherings`
--

LOCK TABLES `gatherings` WRITE;
/*!40000 ALTER TABLE `gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupsetgroups`
--

DROP TABLE IF EXISTS `groupsetgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupsetgroups`
--

LOCK TABLES `groupsetgroups` WRITE;
/*!40000 ALTER TABLE `groupsetgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsetgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupsets`
--

DROP TABLE IF EXISTS `groupsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupsets`
--

LOCK TABLES `groupsets` WRITE;
/*!40000 ALTER TABLE `groupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2016-03-25 13:05:00',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsetjobs`
--

DROP TABLE IF EXISTS `jobsetjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsetjobs`
--

LOCK TABLES `jobsetjobs` WRITE;
/*!40000 ALTER TABLE `jobsetjobs` DISABLE KEYS */;
INSERT INTO `jobsetjobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `jobsetjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsets`
--

DROP TABLE IF EXISTS `jobsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsets`
--

LOCK TABLES `jobsets` WRITE;
/*!40000 ALTER TABLE `jobsets` DISABLE KEYS */;
INSERT INTO `jobsets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `jobsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobslog`
--

DROP TABLE IF EXISTS `jobslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobslog`
--

LOCK TABLES `jobslog` WRITE;
/*!40000 ALTER TABLE `jobslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailimporters`
--

DROP TABLE IF EXISTS `mailimporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailimporters`
--

LOCK TABLES `mailimporters` WRITE;
/*!40000 ALTER TABLE `mailimporters` DISABLE KEYS */;
INSERT INTO `mailimporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `mailimporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailvalidationhashes`
--

DROP TABLE IF EXISTS `mailvalidationhashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailvalidationhashes`
--

LOCK TABLES `mailvalidationhashes` WRITE;
/*!40000 ALTER TABLE `mailvalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailvalidationhashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilingualpagerelations`
--

DROP TABLE IF EXISTS `multilingualpagerelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multilingualpagerelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilingualpagerelations`
--

LOCK TABLES `multilingualpagerelations` WRITE;
/*!40000 ALTER TABLE `multilingualpagerelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualpagerelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilingualsections`
--

DROP TABLE IF EXISTS `multilingualsections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multilingualsections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilingualsections`
--

LOCK TABLES `multilingualsections` WRITE;
/*!40000 ALTER TABLE `multilingualsections` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualsections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilingualtranslations`
--

DROP TABLE IF EXISTS `multilingualtranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multilingualtranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilingualtranslations`
--

LOCK TABLES `multilingualtranslations` WRITE;
/*!40000 ALTER TABLE `multilingualtranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualtranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthusermap`
--

DROP TABLE IF EXISTS `oauthusermap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthusermap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthusermap`
--

LOCK TABLES `oauthusermap` WRITE;
/*!40000 ALTER TABLE `oauthusermap` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthusermap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagefeeds`
--

DROP TABLE IF EXISTS `pagefeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagefeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagefeeds`
--

LOCK TABLES `pagefeeds` WRITE;
/*!40000 ALTER TABLE `pagefeeds` DISABLE KEYS */;
INSERT INTO `pagefeeds` VALUES (1,159,'Blog','blog','concrete5 Blog',0,'S',NULL,NULL,0,0,7,0,0);
/*!40000 ALTER TABLE `pagefeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepaths`
--

DROP TABLE IF EXISTS `pagepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepaths`
--

LOCK TABLES `pagepaths` WRITE;
/*!40000 ALTER TABLE `pagepaths` DISABLE KEYS */;
INSERT INTO `pagepaths` VALUES (1,2,'/dashboard','1',1),(2,3,'/dashboard/sitemap','1',1),(3,4,'/dashboard/sitemap/full','1',1),(4,5,'/dashboard/sitemap/explore','1',1),(5,6,'/dashboard/sitemap/search','1',1),(6,7,'/dashboard/files','1',1),(7,8,'/dashboard/files/search','1',1),(8,9,'/dashboard/files/attributes','1',1),(9,10,'/dashboard/files/sets','1',1),(10,11,'/dashboard/files/add_set','1',1),(11,12,'/dashboard/users','1',1),(12,13,'/dashboard/users/search','1',1),(13,14,'/dashboard/users/groups','1',1),(14,15,'/dashboard/users/attributes','1',1),(15,16,'/dashboard/users/add','1',1),(16,17,'/dashboard/users/add_group','1',1),(17,18,'/dashboard/users/groups/bulkupdate','1',1),(18,19,'/dashboard/users/group_sets','1',1),(19,20,'/dashboard/users/points','1',1),(20,21,'/dashboard/users/points/assign','1',1),(21,22,'/dashboard/users/points/actions','1',1),(22,23,'/dashboard/reports','1',1),(23,24,'/dashboard/reports/forms','1',1),(24,25,'/dashboard/reports/surveys','1',1),(25,26,'/dashboard/reports/logs','1',1),(26,27,'/dashboard/pages','1',1),(27,28,'/dashboard/pages/themes','1',1),(28,29,'/dashboard/pages/themes/inspect','1',1),(29,30,'/dashboard/pages/types','1',1),(30,31,'/dashboard/pages/types/organize','1',1),(31,32,'/dashboard/pages/types/add','1',1),(32,33,'/dashboard/pages/types/form','1',1),(33,34,'/dashboard/pages/types/output','1',1),(34,35,'/dashboard/pages/types/attributes','1',1),(35,36,'/dashboard/pages/types/permissions','1',1),(36,37,'/dashboard/pages/templates','1',1),(37,38,'/dashboard/pages/templates/add','1',1),(38,39,'/dashboard/pages/attributes','1',1),(39,40,'/dashboard/pages/single','1',1),(40,41,'/dashboard/pages/feeds','1',1),(41,42,'/dashboard/conversations','1',1),(42,43,'/dashboard/conversations/messages','1',1),(43,44,'/dashboard/workflow','1',1),(44,45,'/dashboard/workflow/me','1',1),(45,46,'/dashboard/workflow/workflows','1',1),(46,47,'/dashboard/blocks','1',1),(47,48,'/dashboard/blocks/stacks','1',1),(48,49,'/dashboard/blocks/permissions','1',1),(49,50,'/dashboard/blocks/stacks/list','1',1),(50,51,'/dashboard/blocks/types','1',1),(51,52,'/dashboard/extend','1',1),(52,53,'/dashboard/news','1',1),(53,54,'/dashboard/extend/install','1',1),(54,55,'/dashboard/extend/update','1',1),(55,56,'/dashboard/extend/connect','1',1),(56,57,'/dashboard/extend/themes','1',1),(57,58,'/dashboard/extend/addons','1',1),(58,59,'/dashboard/system','1',1),(59,60,'/dashboard/system/basics','1',1),(60,61,'/dashboard/system/basics/name','1',1),(61,62,'/dashboard/system/basics/accessibility','1',1),(62,63,'/dashboard/system/basics/social','1',1),(63,64,'/dashboard/system/basics/icons','1',1),(64,65,'/dashboard/system/basics/editor','1',1),(65,66,'/dashboard/system/basics/multilingual','1',1),(66,67,'/dashboard/system/basics/timezone','1',1),(67,68,'/dashboard/system/multilingual','1',1),(68,69,'/dashboard/system/multilingual/setup','1',1),(69,70,'/dashboard/system/multilingual/copy','1',1),(70,71,'/dashboard/system/multilingual/page_report','1',1),(71,72,'/dashboard/system/multilingual/translate_interface','1',1),(72,73,'/dashboard/system/seo','1',1),(73,74,'/dashboard/system/seo/urls','1',1),(74,75,'/dashboard/system/seo/bulk','1',1),(75,76,'/dashboard/system/seo/codes','1',1),(76,77,'/dashboard/system/seo/excluded','1',1),(77,78,'/dashboard/system/seo/searchindex','1',1),(78,79,'/dashboard/system/files','1',1),(79,80,'/dashboard/system/files/permissions','1',1),(80,81,'/dashboard/system/files/filetypes','1',1),(81,82,'/dashboard/system/files/thumbnails','1',1),(82,83,'/dashboard/system/files/image_uploading','1',1),(83,84,'/dashboard/system/files/storage','1',1),(84,85,'/dashboard/system/optimization','1',1),(85,86,'/dashboard/system/optimization/cache','1',1),(86,87,'/dashboard/system/optimization/clearcache','1',1),(87,88,'/dashboard/system/optimization/jobs','1',1),(88,89,'/dashboard/system/optimization/query_log','1',1),(89,90,'/dashboard/system/permissions','1',1),(90,91,'/dashboard/system/permissions/site','1',1),(91,92,'/dashboard/system/permissions/tasks','1',1),(92,93,'/dashboard/system/permissions/users','1',1),(93,94,'/dashboard/system/permissions/advanced','1',1),(94,95,'/dashboard/system/permissions/blacklist','1',1),(95,96,'/dashboard/system/permissions/captcha','1',1),(96,97,'/dashboard/system/permissions/antispam','1',1),(97,98,'/dashboard/system/permissions/maintenance','1',1),(98,99,'/dashboard/system/registration','1',1),(99,100,'/dashboard/system/registration/postlogin','1',1),(100,101,'/dashboard/system/registration/profiles','1',1),(101,102,'/dashboard/system/registration/open','1',1),(102,103,'/dashboard/system/registration/authentication','1',1),(103,104,'/dashboard/system/mail','1',1),(104,105,'/dashboard/system/mail/method','1',1),(105,106,'/dashboard/system/mail/method/test','1',1),(106,107,'/dashboard/system/mail/importers','1',1),(107,108,'/dashboard/system/conversations','1',1),(108,109,'/dashboard/system/conversations/settings','1',1),(109,110,'/dashboard/system/conversations/points','1',1),(110,111,'/dashboard/system/conversations/bannedwords','1',1),(111,112,'/dashboard/system/conversations/permissions','1',1),(112,113,'/dashboard/system/attributes','1',1),(113,114,'/dashboard/system/attributes/sets','1',1),(114,115,'/dashboard/system/attributes/types','1',1),(115,116,'/dashboard/system/attributes/topics','1',1),(116,117,'/dashboard/system/attributes/topics/add','1',1),(117,118,'/dashboard/system/environment','1',1),(118,119,'/dashboard/system/environment/info','1',1),(119,120,'/dashboard/system/environment/debug','1',1),(120,121,'/dashboard/system/environment/logging','1',1),(121,122,'/dashboard/system/environment/proxy','1',1),(122,123,'/dashboard/system/environment/entities','1',1),(123,124,'/dashboard/system/backup','1',1),(124,125,'/dashboard/system/backup/backup','1',1),(125,126,'/dashboard/system/backup/update','1',1),(126,127,'/dashboard/welcome','1',1),(127,128,'/dashboard/home','1',1),(128,129,'/!drafts','1',1),(129,130,'/!trash','1',1),(130,131,'/!stacks','1',1),(131,132,'/login','1',1),(132,133,'/register','1',1),(133,134,'/account','1',1),(134,135,'/account/edit_profile','1',1),(135,136,'/account/avatar','1',1),(136,137,'/account/messages','1',1),(137,138,'/account/messages/inbox','1',1),(138,139,'/members','1',1),(139,140,'/members/profile','1',1),(140,141,'/members/directory','1',1),(141,142,'/page_not_found','1',1),(142,143,'/page_forbidden','1',1),(143,144,'/download_file','1',1),(144,145,'/!stacks/footer-contact','1',1),(145,146,'/!stacks/footer-legal','1',1),(146,147,'/!stacks/footer-navigation','1',1),(147,148,'/!stacks/footer-site-title','1',1),(148,149,'/!stacks/footer-social','1',1),(149,150,'/!stacks/header-navigation','1',1),(150,151,'/!stacks/header-search','1',1),(151,152,'/!stacks/header-site-title','1',1),(152,154,'/services','1',1),(153,156,'/portfolio','1',1),(154,157,'/team','1',1),(155,159,'/blog','1',1),(156,160,'/search','1',1),(157,161,'/contact','1',1),(158,162,'/blank-page','1',1),(159,164,'/portfolio/project-title','1',1),(160,165,'/portfolio/project-title-2','1',1),(161,166,'/portfolio/project-title-3','1',1),(162,167,'/portfolio/project-title-4','1',1),(163,168,'/portfolio/project-title-5','1',1),(164,169,'/portfolio/project-title-6','1',1),(165,171,'/blog/hello-world','1',1),(166,172,'/blog/another-blog-post','1',1),(167,173,'/blog/a-beautiful-blog','1',1),(168,174,'/team/about','1',1),(169,175,'/team/careers','1',1),(170,176,'/team/faq','1',1),(171,178,'/team/careers/web-developer','1',1),(172,179,'/team/careers/sales-associate','1',1);
/*!40000 ALTER TABLE `pagepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionassignments`
--

DROP TABLE IF EXISTS `pagepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionassignments`
--

LOCK TABLES `pagepermissionassignments` WRITE;
/*!40000 ALTER TABLE `pagepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagepermissionassignments` VALUES (1,1,49),(2,1,69),(129,1,70),(132,1,67),(133,1,68),(1,2,50),(129,2,88),(1,3,51),(129,3,72),(1,4,52),(129,4,73),(1,5,53),(129,5,89),(1,6,54),(129,6,90),(1,7,55),(129,7,76),(1,8,57),(129,8,78),(1,9,58),(129,9,91),(1,10,59),(129,10,92),(1,11,60),(129,11,81),(1,12,61),(129,12,93),(1,13,62),(129,13,94),(1,14,63),(129,14,95),(1,15,64),(129,15,85),(1,16,65),(129,16,86),(1,17,66),(129,17,87),(1,18,56),(129,18,77);
/*!40000 ALTER TABLE `pagepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpagetypeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpagetypeaccesslist`
--

LOCK TABLES `pagepermissionpagetypeaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpagetypeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpagetypeaccesslistcustom`
--

LOCK TABLES `pagepermissionpagetypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpropertyaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpropertyaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpropertyaccesslist`
--

LOCK TABLES `pagepermissionpropertyaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpropertyattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpropertyattributeaccesslistcustom`
--

LOCK TABLES `pagepermissionpropertyattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionthemeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionthemeaccesslist`
--

LOCK TABLES `pagepermissionthemeaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionthemeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionthemeaccesslistcustom`
--

LOCK TABLES `pagepermissionthemeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,1,1,1,'2016-03-25 13:06:20','2016-03-25 13:06:20',1,1,'OVERRIDE',NULL,0,NULL,0,1,18,0,0,0,0,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,0,2,0,0,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,1,2,0,0,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,2,2,0,0,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,3,3,2,0,0,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,23,0,0,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,23,0,0,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,4,2,0,0,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,27,0,0,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,28,0,0,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,27,0,0,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,30,0,0,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,30,0,0,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,30,0,0,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,27,0,0,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,37,0,0,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,27,0,0,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,27,0,0,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,27,0,0,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,5,2,0,0,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,42,0,0,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,0,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,0,44,0,0,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/workflows.php',0,NULL,0,1,0,1,44,0,0,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,0,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,0,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,0,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,12,10,2,0,0,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,7,0,59,0,0,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,60,0,0,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,60,0,0,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,60,0,0,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,60,0,0,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,60,0,0,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,60,0,0,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,60,0,0,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,1,59,0,0,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,68,0,0,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,68,0,0,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,68,0,0,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,2,59,0,0,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,73,0,0,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,73,0,0,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,73,0,0,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,73,0,0,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,73,0,0,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,5,3,59,0,0,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,79,0,0,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,79,0,0,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,79,0,0,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/image_uploading.php',0,NULL,0,1,0,3,79,0,0,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,4,79,0,0,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,4,59,0,0,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,85,0,0,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,85,0,0,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,85,0,0,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,85,0,0,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,5,59,0,0,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,90,0,0,-1,'0',0,1),(92,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,90,0,0,-1,'0',0,1),(93,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,90,0,0,-1,'0',0,1),(94,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,90,0,0,-1,'0',0,1),(95,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,4,90,0,0,-1,'0',0,1),(96,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,90,0,0,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,90,0,0,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,7,90,0,0,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,4,6,59,0,0,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,99,0,0,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,99,0,0,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,99,0,0,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,99,0,0,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,7,59,0,0,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,104,0,0,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,105,0,0,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,104,0,0,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,8,59,0,0,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,108,0,0,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,108,0,0,-1,'0',0,1),(111,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,108,0,0,-1,'0',0,1),(112,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,108,0,0,-1,'0',0,1),(113,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,9,59,0,0,-1,'0',0,1),(114,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,113,0,0,-1,'0',0,1),(115,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,113,0,0,-1,'0',0,1),(116,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,113,0,0,-1,'0',0,1),(117,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,116,0,0,-1,'0',0,1),(118,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,10,59,0,0,-1,'0',0,1),(119,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,118,0,0,-1,'0',0,1),(120,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,118,0,0,-1,'0',0,1),(121,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,118,0,0,-1,'0',0,1),(122,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,118,0,0,-1,'0',0,1),(123,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,118,0,0,-1,'0',0,1),(124,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,11,59,0,0,-1,'0',0,1),(125,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,124,0,0,-1,'0',0,1),(126,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,124,0,0,-1,'0',0,1),(127,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,0,-1,'0',0,1),(128,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,0,-1,'0',0,1),(129,0,0,1,0,NULL,NULL,NULL,1,129,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(130,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(131,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,8,0,0,0,0,-1,'0',0,1),(132,0,0,1,0,NULL,NULL,NULL,1,132,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(133,0,0,1,0,NULL,NULL,NULL,1,133,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(134,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(135,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,134,0,0,-1,'0',0,1),(136,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,134,0,0,-1,'0',0,1),(137,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/view.php',0,NULL,0,1,1,2,134,0,0,-1,'0',0,1),(138,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/inbox.php',0,NULL,0,1,0,0,137,0,0,-1,'0',0,1),(139,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/view.php',0,NULL,0,1,2,0,1,0,0,-1,'0',0,1),(140,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/profile.php',0,NULL,0,1,0,0,139,0,0,-1,'0',0,1),(141,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/directory.php',0,NULL,0,1,0,1,139,0,0,-1,'0',0,1),(142,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(143,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(144,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,0,-1,'0',0,1),(145,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,131,0,0,-1,'0',0,1),(146,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,131,0,0,-1,'0',0,1),(147,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,131,0,0,-1,'0',0,1),(148,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,131,0,0,-1,'0',0,1),(149,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,131,0,0,-1,'0',0,1),(150,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,131,0,0,-1,'0',0,1),(151,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,131,0,0,-1,'0',0,1),(152,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,131,0,0,-1,'0',0,1),(153,6,1,NULL,0,NULL,NULL,NULL,1,153,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(154,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,1,0,0,-1,'0',0,0),(155,11,1,NULL,0,NULL,NULL,NULL,1,155,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(156,11,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,6,3,1,0,0,-1,'0',0,0),(157,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,4,1,0,0,-1,'0',0,0),(158,10,1,NULL,0,NULL,NULL,NULL,1,158,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(159,10,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,3,5,1,0,0,-1,'0',0,0),(160,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,0,-1,'0',0,0),(161,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,0,-1,'0',0,0),(162,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,1,0,0,-1,'0',0,0),(163,9,1,NULL,0,NULL,NULL,NULL,1,163,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(164,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,156,0,0,-1,'0',0,0),(165,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,156,0,0,-1,'0',0,0),(166,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,156,0,0,-1,'0',0,0),(167,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,156,0,0,-1,'0',0,0),(168,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,156,0,0,-1,'0',0,0),(169,9,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,156,0,0,-1,'0',0,0),(170,7,1,NULL,0,NULL,NULL,NULL,1,170,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(171,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,159,0,0,-1,'0',0,0),(172,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,159,0,0,-1,'0',0,0),(173,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,159,0,0,-1,'0',0,0),(174,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,157,0,0,-1,'0',0,0),(175,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,1,157,0,0,-1,'0',0,0),(176,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,157,0,0,-1,'0',0,0),(177,8,1,NULL,0,NULL,NULL,NULL,1,177,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(178,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,175,0,0,-1,'0',0,0),(179,8,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,175,0,0,-1,'0',0,0),(180,6,1,NULL,0,NULL,NULL,NULL,1,180,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(181,6,1,NULL,0,NULL,NULL,NULL,1,181,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(182,6,1,NULL,0,NULL,NULL,NULL,1,182,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesearchindex`
--

DROP TABLE IF EXISTS `pagesearchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesearchindex`
--

LOCK TABLES `pagesearchindex` WRITE;
/*!40000 ALTER TABLE `pagesearchindex` DISABLE KEYS */;
INSERT INTO `pagesearchindex` VALUES (2,'','Dashboard','','/dashboard','2016-03-25 13:05:02','2016-03-25 13:05:04',NULL,0),(3,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2016-03-25 13:05:02','2016-03-25 13:05:04',NULL,0),(4,'','Full Sitemap','','/dashboard/sitemap/full','2016-03-25 13:05:02','2016-03-25 13:05:04',NULL,0),(5,'','Flat View','','/dashboard/sitemap/explore','2016-03-25 13:05:02','2016-03-25 13:05:04',NULL,0),(6,'','Page Search','','/dashboard/sitemap/search','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(8,'','File Manager','','/dashboard/files/search','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(9,'','Attributes','','/dashboard/files/attributes','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(10,'','File Sets','','/dashboard/files/sets','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(11,'','Add File Set','','/dashboard/files/add_set','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(12,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(13,'','Search Users','','/dashboard/users/search','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(14,'','User Groups','','/dashboard/users/groups','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(15,'','Attributes','','/dashboard/users/attributes','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(16,'','Add User','','/dashboard/users/add','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(17,'','Add Group','','/dashboard/users/add_group','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(19,'','Group Sets','','/dashboard/users/group_sets','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(20,'','Community Points',NULL,'/dashboard/users/points','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(22,'','Actions',NULL,'/dashboard/users/points/actions','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(23,'','Reports','Get data from forms and logs.','/dashboard/reports','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(29,'','Inspect','','/dashboard/pages/themes/inspect','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(31,'','Organize Page Type Order','','/dashboard/pages/types/organize','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(32,'','Add Page Type','','/dashboard/pages/types/add','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(33,'','Compose Form','','/dashboard/pages/types/form','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(34,'','Defaults and Output','','/dashboard/pages/types/output','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(35,'','Page Type Attributes','','/dashboard/pages/types/attributes','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(36,'','Page Type Permissions','','/dashboard/pages/types/permissions','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(38,'','Add Page Template','Add page templates to your site.','/dashboard/pages/templates/add','2016-03-25 13:05:02','2016-03-25 13:05:05',NULL,0),(39,'','Attributes','','/dashboard/pages/attributes','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(40,'','Single Pages','','/dashboard/pages/single','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(41,'','RSS Feeds','','/dashboard/pages/feeds','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(43,'','Messages','','/dashboard/conversations/messages','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(44,'','Workflow','','/dashboard/workflow','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(48,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(50,'','Stack List','','/dashboard/blocks/stacks/list','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(51,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(52,'','Extend concrete5','','/dashboard/extend','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(53,'','Dashboard','','/dashboard/news','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(54,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(55,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(56,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(57,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(58,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/addons','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(59,'','System & Settings','Secure and setup your site.','/dashboard/system','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(61,'','Site Name','','/dashboard/system/basics/name','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(62,'','Accessibility','','/dashboard/system/basics/accessibility','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(63,'','Social Links','','/dashboard/system/basics/social','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(64,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(65,'','Rich Text Editor','','/dashboard/system/basics/editor','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(66,'','Languages','','/dashboard/system/basics/multilingual','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(67,'','Time Zone','','/dashboard/system/basics/timezone','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(68,'','Multilingual','Run your site in multiple languages.','/dashboard/system/multilingual','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(74,'','URLs and Redirection','','/dashboard/system/seo/urls','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(75,'','Bulk SEO Updater','','/dashboard/system/seo/bulk','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(76,'','Tracking Codes','','/dashboard/system/seo/codes','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(77,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(78,'','Search Index','','/dashboard/system/seo/searchindex','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(80,'','File Manager Permissions','','/dashboard/system/files/permissions','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(81,'','Allowed File Types','','/dashboard/system/files/filetypes','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(82,'','Thumbnails','','/dashboard/system/files/thumbnails','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(83,'','Image Uploading','','/dashboard/system/files/image_uploading','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(84,'','File Storage Locations','','/dashboard/system/files/storage','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(86,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(87,'','Clear Cache','','/dashboard/system/optimization/clearcache','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(88,'','Automated Jobs','','/dashboard/system/optimization/jobs','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(89,'','Database Query Log','','/dashboard/system/optimization/query_log','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(91,'','Site Access','','/dashboard/system/permissions/site','2016-03-25 13:05:03','2016-03-25 13:05:05',NULL,0),(92,'','Task Permissions','','/dashboard/system/permissions/tasks','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(95,'','IP Blacklist','','/dashboard/system/permissions/blacklist','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(96,'','Captcha Setup','','/dashboard/system/permissions/captcha','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(97,'','Spam Control','','/dashboard/system/permissions/antispam','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(98,'','Maintenance Mode','','/dashboard/system/permissions/maintenance','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(100,'','Login Destination','','/dashboard/system/registration/postlogin','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(101,'','Public Profiles','','/dashboard/system/registration/profiles','2016-03-25 13:05:04','2016-03-25 13:05:05',NULL,0),(102,'','Public Registration','','/dashboard/system/registration/open','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(103,'','Authentication Types','','/dashboard/system/registration/authentication','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(104,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(105,'','SMTP Method','','/dashboard/system/mail/method','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(106,'','Test Mail Settings','','/dashboard/system/mail/method/test','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(107,'','Email Importers','','/dashboard/system/mail/importers','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(108,'','Conversations','Manage your conversations settings','/dashboard/system/conversations','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(109,'','Settings','','/dashboard/system/conversations/settings','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(110,'','Community Points','','/dashboard/system/conversations/points','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(111,'','Banned Words','','/dashboard/system/conversations/bannedwords','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(113,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(114,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(115,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(116,'','Topics','','/dashboard/system/attributes/topics','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(119,'','Environment Information','','/dashboard/system/environment/info','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(120,'','Debug Settings','','/dashboard/system/environment/debug','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(121,'','Logging Settings','','/dashboard/system/environment/logging','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(122,'','Proxy Server','','/dashboard/system/environment/proxy','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(123,'','Database Entities','','/dashboard/system/environment/entities','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(124,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(126,'','Update concrete5','','/dashboard/system/backup/update','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(127,'\n\n                                      ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(128,'','Customize Dashboard Home','','/dashboard/home','2016-03-25 13:05:04','2016-03-25 13:05:06',NULL,0),(129,'','Drafts','','/!drafts','2016-03-25 13:05:07','2016-03-25 13:05:08',NULL,0),(130,'','Trash','','/!trash','2016-03-25 13:05:07','2016-03-25 13:05:08',NULL,0),(131,'','Stacks','','/!stacks','2016-03-25 13:05:07','2016-03-25 13:05:08',NULL,0),(134,'','My Account','','/account','2016-03-25 13:05:07','2016-03-25 13:05:08',NULL,0),(1,'Stand Out on the Web  Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.  A Simple Image Slider  This image slider can have any content that you want in it.   Easy to Edit Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pixel Perfect Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Media Rich Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Presenting your Business has never been so easy Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Latest Blog Post Now Open For Business    We specialize in making your concepts a reality.          Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.          Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.            Contact Us Today    Customizable footer area with accent class.  ','Home','',NULL,'2016-03-25 13:04:18','2016-03-25 13:05:17',NULL,0),(154,'Our Expertise Quality Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Design Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Development Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Security Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sodales non leo id aliquet. Awesome Features Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Guide Books Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.  Admin Accounts Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus.   Support Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed.  Additional Options Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.   Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  What Clients Are Saying About Us  Franz Maruna\nCEO & Founder\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. John Doe\nMarketing Directory\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Andrew Embler\nCTO & Founder\nconcrete5\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Jane Doe\nIT Manager\nCompanyCo\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. ','Services','','/services','2016-03-25 13:05:15','2016-03-25 13:05:17',NULL,0),(156,'','Portfolio','','/portfolio','2016-03-25 13:05:15','2016-03-25 13:05:17',NULL,0),(164,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title','2014-08-06 15:30:00','2016-03-25 13:05:18',NULL,0),(165,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 2','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-2','2014-08-06 15:20:00','2016-03-25 13:05:18',NULL,0),(166,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 3','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-3','2014-08-06 15:10:00','2016-03-25 13:05:19',NULL,0),(167,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 4','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-4','2014-08-06 15:00:00','2016-03-25 13:05:19',NULL,0),(168,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 5','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-5','2014-08-06 14:30:00','2016-03-25 13:05:19',NULL,0),(169,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus nibh a laoreet cursus. Phasellus malesuada vulputate bibendum. Ut vitae justo nisi. Sed consectetur vestibulum tortor, in bibendum diam lacinia vitae. Nullam volutpat risus quis orci consectetur adipiscing. In commodo vulputate arcu sit amet ornare. Vivamus ut iaculis velit. Pellentesque euismod lacus sed accumsan luctus. Suspendisse urna felis, lacinia vel tempor id, ultricies rutrum nisl. Nunc ultrices nulla et bibendum molestie. Phasellus porttitor sit amet libero vel fermentum. Sed sapien risus, eleifend vel hendrerit eu, porta vel tellus. Duis faucibus odio et magna varius, quis accumsan tellus vestibulum. Nam nunc nulla, convallis at elementum pharetra, adipiscing quis enim. Donec feugiat porttitor dolor, nec porttitor mi auctor eget. Fusce iaculis varius diam non dictum. Fusce elementum a nunc vel tincidunt. Morbi nec est elementum, vehicula odio nec, lobortis lacus. Nulla ultricies vitae nunc ut lacinia. Proin mattis felis sem, eu consectetur arcu varius et. Duis at lectus eu lorem elementum aliquet nec in elit. Vestibulum non metus ac risus adipiscing pellentesque sed sit amet lorem. Donec viverra, metus in varius pulvinar, augue nunc accumsan eros, a pulvinar est elit vitae nulla.  Duis non leo in enim laoreet pretium. Nullam vitae neque nec libero pharetra tempor at faucibus lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed imperdiet convallis arcu. Nam sollicitudin sollicitudin lacus non dictum. Aliquam erat volutpat. Nulla sapien quam, consequat non dui ut, eleifend sodales orci. Praesent quis lorem accumsan, volutpat lectus a, sollicitudin erat. Donec faucibus mi in sapien volutpat, ac auctor lorem mollis. Proin eget turpis non lacus bibendum porta non ac justo. Aliquam aliquam viverra lorem ac rutrum. In et sapien sit amet diam vestibulum cursus ut tristique tellus.  Ut in purus mi. Etiam ac aliquet ipsum. Pellentesque faucibus diam dui. Morbi a semper orci. Ut nec malesuada urna. Vestibulum aliquet ante ac lacus dictum, sit amet pulvinar leo laoreet. Maecenas ut est commodo, commodo quam nec, dignissim est. Quisque rutrum molestie nunc, sed mollis nulla volutpat et. Donec dignissim ornare augue eu aliquam. Aliquam in tincidunt velit. In at fermentum mauris, ut accumsan nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.  Integer ac nulla at nisi sodales ullamcorper id in justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam pharetra elit odio, ac mattis turpis consequat ac. Pellentesque tincidunt sed enim nec auctor. Quisque varius, felis a hendrerit faucibus, nunc lorem varius nibh, vel dignissim velit dolor ut elit. Mauris ut vulputate neque. Donec at est vitae massa egestas fringilla. Praesent a tristique nibh. Nunc blandit dui risus, quis rhoncus nisi consectetur vel.  ','Project Title 6','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.','/portfolio/project-title-6','2014-08-06 14:20:00','2016-03-25 13:05:20',NULL,0),(157,'John Smith\nCo-Founder / CEO\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nCo-Founder / CTO\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. John Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Bob Smith\nArt Director\n\nCurabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. \n                                                    Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','Team','','/team','2016-03-25 13:05:15','2016-03-25 13:05:20',NULL,0),(159,'','Blog','','/blog','2016-03-25 13:05:15','2016-03-25 13:05:20',NULL,0),(171,'Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum, leo mauris commodo diam, sed cursus sapien ligula nec leo. Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.   Heading 2 Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti. Heading 3 Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor. Heading 3 Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat, adipiscing nec lobortis quis, eleifend at sem. Curabitur fringilla viverra dolor, in rutrum ipsum rutrum sit amet. Vestibulum feugiat porttitor ipsum vel condimentum. Suspendisse at tempus libero. Sed eu tempor enim. Etiam convallis eleifend rutrum. Donec porta diam quis tellus feugiat dignissim. Cras posuere, massa eget laoreet laoreet, urna libero lobortis dolor, sed consequat elit urna eget massa. Donec aliquet pellentesque consectetur.  ','Hello World!','Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum.','/blog/hello-world','2014-07-01 12:00:00','2016-03-25 13:05:21',NULL,0),(172,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit.   CMS To the Rescue!  Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Learn more at concrete5.org    ','Another Blog Post','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna.','/blog/another-blog-post','2014-07-04 15:00:00','2016-03-25 13:05:21',NULL,0),(173,' Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  Heading 3  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.    Look at my beautiful image. Don\'t you to look more?  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  ','A Beautiful Site Deserves a Beautiful Blog','Donec blandit lectus nec neque ullamcorper rhoncus. Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida. Phasellus est erat.','/blog/a-beautiful-blog','2014-08-01 16:30:00','2016-03-25 13:05:21',NULL,0),(160,'','Search','','/search','2016-03-25 13:05:15','2016-03-25 13:05:21',NULL,0),(161,'\n                                                    Headquarters 1234 SE Street View Suite 301 Portland, OR 98101 HOURS  M-F:  10 AM - 7 PM Sat: Noon - Midnight Sun: Closed  \n                                                    Choosing Us Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend. In interdum gravida ligula, at venenatis odio fermentum at. Donec dapibus enim lectus, quis venenatis tellus volutpat in. Nullam in velit tortor.  We would love to hear from you! ','Contact','','/contact','2016-03-25 13:05:15','2016-03-25 13:05:22',NULL,0),(162,' This is my empty content block on my blank page.  ','Blank Page','','/blank-page','2016-03-25 13:05:15','2016-03-25 13:05:22',NULL,0),(174,'\n                                                    Fusce volutpat sodales mauris quis dapibus. Maecenas convallis, libero eu ultrices interdum. \n                                                     Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Quisque dignissim neque a ipsum sodales, mattis aliquam ante dictum. Vestibulum elementum pellentesque tortor ac congue. Mauris vel nibh id metus tincidunt eleifend.  \n                                                    Heading 1Heading 2Heading 3Heading 4Heading 5Heading 6 \n                                                     Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.     \n                                                       Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus. Vestibulum neque lectus, egestas non cursus vitae, aliquam at magna. Etiam aliquam, justo et varius eleifend, dui lectus egestas nunc, vel malesuada nisl purus nec metus. In gravida turpis a pharetra commodo. Donec non turpis vulputate, faucibus metus a, consectetur nunc. Morbi tortor nisi, hendrerit sed laoreet eget, fermentum et justo. Suspendisse potenti.  \n                                                    Get in Touch  Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet.    Contact Us  ','About','','/team/about','2016-03-25 13:05:15','2016-03-25 13:05:22',NULL,0),(175,'Work with Us   Welcome Home \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Great Workers \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Amazing Location \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Paid Time Off \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. No Meetings \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Free Drinks \n                                                    Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. \n                                                    Open Positions  ','Careers','','/team/careers','2016-03-25 13:05:15','2016-03-25 13:05:23',NULL,0),(178,'\n                                                      Back to Careers  Department Location Job Information \n                                                       \n                                     Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Web Developer','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/web-developer','2016-03-25 13:05:15','2016-03-25 13:05:23',NULL,0),(179,'\n                                                      Back to Careers  Department Location Job Information \n                                                       \n                                     Quisque accumsan leo sit amet neque pretium consectetur. Sed blandit nulla at justo volutpat rhoncus. Sed risus orci, luctus sit amet fringilla faucibus, congue nec dui. Phasellus mattis lobortis magna sed dapibus. Donec sagittis nunc sed accumsan eleifend. Ut porttitor sapien eu nisl volutpat, vitae interdum est mollis. Sed laoreet sit amet elit in eleifend. Sed a tincidunt velit, nec posuere urna. In eget metus non est varius viverra. Quisque accumsan odio sem, in consequat nunc lobortis ac.  Cras dignissim nulla ut euismod adipiscing. Mauris non eros sem. Cras at lacinia nulla. Maecenas nec magna arcu. Aenean iaculis, augue sed pretium semper, odio tellus volutpat risus, quis consectetur nibh mauris ut odio. Integer convallis, augue a accumsan condimentum, sem nisl congue lorem, consectetur lacinia neque tortor eu neque. Aenean convallis arcu vitae enim dignissim vestibulum. Phasellus tincidunt dolor id enim gravida ullamcorper. Nullam ut lorem auctor, congue quam non, auctor arcu. Morbi ac aliquam ipsum, at aliquet ligula.  Cras adipiscing tellus non nulla suscipit congue. Pellentesque id neque euismod, elementum augue vel, volutpat turpis. Pellentesque sit amet tortor non lorem hendrerit pellentesque ac in nisi. Sed aliquet tincidunt arcu, eu lacinia lorem fringilla id. Integer ut ornare orci. Donec scelerisque vulputate est a condimentum. Morbi tellus sapien, vehicula vel ipsum non, luctus ullamcorper mi. Phasellus felis tortor, egestas quis felis sit amet, malesuada auctor nibh. Sed mollis mi sit amet tristique scelerisque. Cras elementum mauris urna, ullamcorper consectetur orci vehicula ut.  ','Sales Associate','Curabitur sagittis elementum felis at sodales. Nullam fermentum at urna quis accumsan. Nam bibendum leo nisi, lacinia molestie arcu consequat quis. Morbi at suscipit risus. Sed consequat eleifend metus, vitae malesuada eros elementum sed. Fusce risus felis, viverra et dignissim at, lobortis non est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet consectetur lacus.','/team/careers/sales-associate','2016-03-25 13:05:15','2016-03-25 13:05:24',NULL,0),(176,'What are page versions? What are page versions? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. How do I add more people as editors in my website? How do I add more people as editors in my website? \n                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.  ','Frequently Asked Questions','','/team/faq','2016-03-25 13:05:15','2016-03-25 13:05:24',NULL,0);
/*!40000 ALTER TABLE `pagesearchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetemplates`
--

DROP TABLE IF EXISTS `pagetemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetemplates`
--

LOCK TABLES `pagetemplates` WRITE;
/*!40000 ALTER TABLE `pagetemplates` DISABLE KEYS */;
INSERT INTO `pagetemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'dashboard_primary_five','','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','','Dashboard Header + Four Column',1,0),(4,'dashboard_full','','Dashboard Full',1,0),(5,'blank','blank.png','Blank',0,0),(6,'full','full.png','Full',0,0),(7,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(8,'right_sidebar','right_sidebar.png','Right Sidebar',0,0);
/*!40000 ALTER TABLE `pagetemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagethemecustomstyles`
--

DROP TABLE IF EXISTS `pagethemecustomstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagethemecustomstyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagethemecustomstyles`
--

LOCK TABLES `pagethemecustomstyles` WRITE;
/*!40000 ALTER TABLE `pagethemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagethemecustomstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagethemes`
--

DROP TABLE IF EXISTS `pagethemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagethemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagethemes`
--

LOCK TABLES `pagethemes` WRITE;
/*!40000 ALTER TABLE `pagethemes` DISABLE KEYS */;
INSERT INTO `pagethemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1);
/*!40000 ALTER TABLE `pagethemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposercontroltypes`
--

DROP TABLE IF EXISTS `pagetypecomposercontroltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposercontroltypes`
--

LOCK TABLES `pagetypecomposercontroltypes` WRITE;
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` DISABLE KEYS */;
INSERT INTO `pagetypecomposercontroltypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposerformlayoutsetcontrols`
--

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsetcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposerformlayoutsetcontrols`
--

LOCK TABLES `pagetypecomposerformlayoutsetcontrols` WRITE;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsetcontrols` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Entry Name',NULL,NULL,0),(7,2,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(8,2,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Short Description',NULL,NULL,0),(9,2,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(10,2,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"22\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"22\";s:24:\"\0*\0ptComposerControlName\";s:17:\"Blog Entry Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,'Topics',NULL,NULL,0),(11,3,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(12,3,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(13,4,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Job Name',NULL,NULL,1),(14,4,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Posting Date',NULL,NULL,0),(15,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:8:\"Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(16,5,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:10:\"Department\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(17,5,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'Brief Description',NULL,NULL,0),(18,5,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,'Job Details',NULL,NULL,0),(19,6,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,'Give your portfolio project a name.',0),(20,6,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(21,6,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(22,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"23\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"23\";s:24:\"\0*\0ptComposerControlName\";s:14:\"Project Topics\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(23,7,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Date Completed',NULL,NULL,0),(24,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"24\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"24\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Client\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(25,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"25\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"25\";s:24:\"\0*\0ptComposerControlName\";s:4:\"Task\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(26,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"26\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"26\";s:24:\"\0*\0ptComposerControlName\";s:6:\"Skills\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(27,7,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"21\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"21\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Thumbnail\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',5,NULL,NULL,NULL,0),(28,8,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:33;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:33;s:24:\"\0*\0ptComposerControlName\";s:12:\"Image Slider\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/blocks/image_slider/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(29,9,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(30,10,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,0),(31,10,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(32,11,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Name',NULL,NULL,0),(33,11,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposerformlayoutsets`
--

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposerformlayoutsets`
--

LOCK TABLES `pagetypecomposerformlayoutsets` WRITE;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsets` VALUES (1,6,'Basics','',0),(2,7,'Post Details','',0),(3,7,'Content','',1),(4,8,'Basics','',0),(5,8,'About This Job','',1),(6,9,'Page','',0),(7,9,'Project Data','',1),(8,9,'Image Slider','',2),(9,9,'Body','',3),(10,10,'Details','',0),(11,11,'','',0);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposeroutputblocks`
--

DROP TABLE IF EXISTS `pagetypecomposeroutputblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposeroutputblocks`
--

LOCK TABLES `pagetypecomposeroutputblocks` WRITE;
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposeroutputcontrols`
--

DROP TABLE IF EXISTS `pagetypecomposeroutputcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposeroutputcontrols`
--

LOCK TABLES `pagetypecomposeroutputcontrols` WRITE;
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposeroutputcontrols` VALUES (1,8,7,12),(2,7,8,18),(3,7,9,28),(4,7,9,29);
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepagetemplatedefaultpages`
--

DROP TABLE IF EXISTS `pagetypepagetemplatedefaultpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepagetemplatedefaultpages`
--

LOCK TABLES `pagetypepagetemplatedefaultpages` WRITE;
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` DISABLE KEYS */;
INSERT INTO `pagetypepagetemplatedefaultpages` VALUES (6,6,153),(6,11,155),(6,10,158),(7,9,163),(8,7,170),(7,8,177),(5,6,180),(7,6,181),(8,6,182);
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepagetemplates`
--

DROP TABLE IF EXISTS `pagetypepagetemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepagetemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepagetemplates`
--

LOCK TABLES `pagetypepagetemplates` WRITE;
/*!40000 ALTER TABLE `pagetypepagetemplates` DISABLE KEYS */;
INSERT INTO `pagetypepagetemplates` VALUES (10,6),(11,6),(8,7),(9,7),(7,8);
/*!40000 ALTER TABLE `pagetypepagetemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepermissionassignments`
--

DROP TABLE IF EXISTS `pagetypepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepermissionassignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepermissionassignments`
--

LOCK TABLES `pagetypepermissionassignments` WRITE;
/*!40000 ALTER TABLE `pagetypepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagetypepermissionassignments` VALUES (1,59,9),(2,59,9),(3,59,9),(4,59,9),(5,59,9),(6,59,9),(7,59,9),(8,59,9),(9,59,9),(10,59,9),(11,59,9),(1,60,9),(2,60,9),(3,60,9),(4,60,9),(5,60,9),(6,60,9),(7,60,9),(8,60,9),(9,60,9),(10,60,9),(11,60,9),(1,61,9),(2,61,9),(3,61,9),(4,61,9),(5,61,9),(6,61,9),(7,61,9),(8,61,9),(9,61,9),(10,61,9),(11,61,9),(1,62,9),(2,62,9),(3,62,9),(4,62,9),(5,62,9),(6,62,9),(7,62,9),(8,62,9),(9,62,9),(10,62,9),(11,62,9),(1,63,26),(2,63,27),(3,63,28),(4,63,29),(5,63,30),(6,63,33),(7,63,34),(8,63,35),(9,63,36),(10,63,37),(11,63,38);
/*!40000 ALTER TABLE `pagetypepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepublishtargettypes`
--

DROP TABLE IF EXISTS `pagetypepublishtargettypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepublishtargettypes`
--

LOCK TABLES `pagetypepublishtargettypes` WRITE;
/*!40000 ALTER TABLE `pagetypepublishtargettypes` DISABLE KEYS */;
INSERT INTO `pagetypepublishtargettypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `pagetypepublishtargettypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypes`
--

DROP TABLE IF EXISTS `pagetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypes`
--

LOCK TABLES `pagetypes` WRITE;
/*!40000 ALTER TABLE `pagetypes` DISABLE KEYS */;
INSERT INTO `pagetypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),(3,'Dashboard Primary + Five','dashboard_primary_five',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),(4,'Dashboard Header + Four Column','dashboard_header_four_col',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),(5,'Dashboard Full','dashboard_full',3,0,'A',1,0,4,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),(6,'Empty Page','page',3,6,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(7,'Blog Entry','blog_entry',2,8,'C',0,1,1,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":7:{s:7:\"\0*\0ptID\";s:2:\"10\";s:21:\"\0*\0selectorFormFactor\";N;s:20:\"\0*\0startingPointPage\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(8,'Job Posting','job_posting',1,7,'C',0,1,2,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"175\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),(9,'Portfolio Project','portfolio_project',2,7,'C',0,1,3,1,0,'O:73:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\PageTypeConfiguration\":7:{s:7:\"\0*\0ptID\";s:2:\"11\";s:21:\"\0*\0selectorFormFactor\";N;s:20:\"\0*\0startingPointPage\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"2\";s:25:\"ptPublishTargetTypeHandle\";s:9:\"page_type\";s:9:\"pkgHandle\";b:0;}'),(10,'Blog','blog',3,6,'C',0,0,4,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(11,'Portfolio','portfolio',3,6,'C',0,0,5,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}');
/*!40000 ALTER TABLE `pagetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pageworkflowprogress`
--

DROP TABLE IF EXISTS `pageworkflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageworkflowprogress`
--

LOCK TABLES `pageworkflowprogress` WRITE;
/*!40000 ALTER TABLE `pageworkflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `pageworkflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccess`
--

DROP TABLE IF EXISTS `permissionaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccess`
--

LOCK TABLES `permissionaccess` WRITE;
/*!40000 ALTER TABLE `permissionaccess` DISABLE KEYS */;
INSERT INTO `permissionaccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1);
/*!40000 ALTER TABLE `permissionaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentities`
--

DROP TABLE IF EXISTS `permissionaccessentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentities`
--

LOCK TABLES `permissionaccessentities` WRITE;
/*!40000 ALTER TABLE `permissionaccessentities` DISABLE KEYS */;
INSERT INTO `permissionaccessentities` VALUES (1,1),(5,1),(6,1),(2,5),(3,6),(4,7);
/*!40000 ALTER TABLE `permissionaccessentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitygroups`
--

DROP TABLE IF EXISTS `permissionaccessentitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitygroups`
--

LOCK TABLES `permissionaccessentitygroups` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitygroups` DISABLE KEYS */;
INSERT INTO `permissionaccessentitygroups` VALUES (1,1,3),(2,5,1),(3,6,2);
/*!40000 ALTER TABLE `permissionaccessentitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitygroupsets`
--

DROP TABLE IF EXISTS `permissionaccessentitygroupsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitygroupsets`
--

LOCK TABLES `permissionaccessentitygroupsets` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitytypecategories`
--

DROP TABLE IF EXISTS `permissionaccessentitytypecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitytypecategories`
--

LOCK TABLES `permissionaccessentitytypecategories` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypecategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(3,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(3,10),(4,10),(1,11),(2,11),(3,11),(4,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(2,14),(3,14),(4,14),(5,14),(1,15),(2,15),(3,15),(4,15),(1,16),(2,16),(3,16),(4,16),(1,17),(2,17),(3,17),(4,17),(1,18),(2,18),(3,18),(4,18),(1,19),(2,19),(3,19),(4,19),(7,19),(1,20),(2,20),(3,20),(4,20),(7,20),(1,21),(2,21),(4,21);
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitytypes`
--

DROP TABLE IF EXISTS `permissionaccessentitytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitytypes`
--

LOCK TABLES `permissionaccessentitytypes` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitytypes` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `permissionaccessentitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentityusers`
--

DROP TABLE IF EXISTS `permissionaccessentityusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentityusers`
--

LOCK TABLES `permissionaccessentityusers` WRITE;
/*!40000 ALTER TABLE `permissionaccessentityusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessentityusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccesslist`
--

DROP TABLE IF EXISTS `permissionaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccesslist`
--

LOCK TABLES `permissionaccesslist` WRITE;
/*!40000 ALTER TABLE `permissionaccesslist` DISABLE KEYS */;
INSERT INTO `permissionaccesslist` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,2,0,10),(27,2,0,10),(28,2,0,10),(29,2,0,10),(30,2,0,10),(31,5,0,10),(32,5,0,10),(33,2,0,10),(34,2,0,10),(35,2,0,10),(36,2,0,10),(37,2,0,10),(38,2,0,10),(39,5,0,10),(40,1,0,10),(40,5,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,5,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,1,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,5,0,10),(68,5,0,10),(69,1,0,10),(70,5,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,1,0,10),(81,1,0,10),(82,1,0,10),(83,1,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(88,1,0,10),(88,2,0,10),(89,1,0,10),(89,2,0,10),(90,1,0,10),(90,2,0,10),(91,1,0,10),(91,2,0,10),(92,1,0,10),(92,2,0,10),(93,1,0,10),(93,2,0,10),(94,1,0,10),(94,2,0,10),(95,1,0,10),(95,2,0,10),(96,1,0,10),(97,1,0,10),(98,1,0,10),(99,1,0,10),(100,1,0,10),(101,5,0,10),(102,5,0,10),(103,1,0,10),(103,4,0,10),(104,1,0,10),(104,4,0,10),(105,1,0,10),(105,6,0,10),(106,1,0,10),(107,1,0,10),(108,1,0,10);
/*!40000 ALTER TABLE `permissionaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessworkflows`
--

DROP TABLE IF EXISTS `permissionaccessworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessworkflows`
--

LOCK TABLES `permissionaccessworkflows` WRITE;
/*!40000 ALTER TABLE `permissionaccessworkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionassignments`
--

DROP TABLE IF EXISTS `permissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionassignments`
--

LOCK TABLES `permissionassignments` WRITE;
/*!40000 ALTER TABLE `permissionassignments` DISABLE KEYS */;
INSERT INTO `permissionassignments` VALUES (1,19),(2,20),(3,74),(4,75),(5,76),(6,78),(7,79),(8,80),(9,86),(10,87),(11,89),(12,90),(13,91),(14,92),(15,93),(16,94),(17,95),(18,96),(19,97),(20,98),(21,99),(22,100),(23,101),(24,102),(25,103);
/*!40000 ALTER TABLE `permissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissiondurationobjects`
--

DROP TABLE IF EXISTS `permissiondurationobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissiondurationobjects`
--

LOCK TABLES `permissiondurationobjects` WRITE;
/*!40000 ALTER TABLE `permissiondurationobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissiondurationobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionkeycategories`
--

DROP TABLE IF EXISTS `permissionkeycategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionkeycategories`
--

LOCK TABLES `permissionkeycategories` WRITE;
/*!40000 ALTER TABLE `permissionkeycategories` DISABLE KEYS */;
INSERT INTO `permissionkeycategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_set',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'sitemap',NULL),(12,'marketplace_newsflow',NULL),(13,'basic_workflow',NULL),(14,'page_type',NULL),(15,'gathering',NULL),(16,'group_tree_node',NULL),(17,'topic_category_tree_node',NULL),(18,'topic_tree_node',NULL),(19,'conversation',NULL),(20,'conversation_message',NULL),(21,'multilingual_section',NULL);
/*!40000 ALTER TABLE `permissionkeycategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionkeys`
--

DROP TABLE IF EXISTS `permissionkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionkeys`
--

LOCK TABLES `permissionkeys` WRITE;
/*!40000 ALTER TABLE `permissionkeys` DISABLE KEYS */;
INSERT INTO `permissionkeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',5,0),(40,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',5,0),(41,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(42,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',5,0),(43,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',5,0),(44,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',5,0),(45,'delete_file_set','Delete File Set',0,0,'Can delete file set.',5,0),(46,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',5,0),(47,'add_file','Add File',0,1,'Can add files to set.',5,0),(48,'view_file','View Files',0,0,'Can view and download files.',6,0),(49,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(50,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(51,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(52,'copy_file','Copy File',0,0,'Can copy file.',6,0),(53,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(54,'delete_file','Delete File',0,0,'Can delete file.',6,0),(55,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',13,0),(56,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',13,0),(57,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',13,0),(58,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',13,0),(59,'add_page_type','Add Pages of This Type',0,0,'',14,0),(60,'edit_page_type','Edit Page Type',0,0,'',14,0),(61,'delete_page_type','Delete Page Type',0,0,'',14,0),(62,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',14,0),(63,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',14,0),(64,'view_topic_tree_node','View Topic Tree Node',0,0,'',18,0),(65,'view_topic_category_tree_node','View Topic Category Tree Node',0,0,'',17,0),(66,'add_conversation_message','Add Message to Conversation',0,1,'',19,0),(67,'add_conversation_message_attachments','Add Message Attachments',0,0,'',19,0),(68,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',19,0),(69,'delete_conversation_message','Delete Message',0,0,'',19,0),(70,'edit_conversation_message','Edit Message',0,0,'',19,0),(71,'rate_conversation_message','Rate Message',0,0,'',19,0),(72,'flag_conversation_message','Flag Message',0,0,'',19,0),(73,'approve_conversation_message','Approve Message',0,0,'',19,0),(74,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(75,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(76,'activate_user','Activate/Deactivate User',0,0,NULL,4,0),(77,'sudo','Sign in as User',0,0,NULL,4,0),(78,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(79,'access_group_search','Access Group Search',0,0,NULL,4,0),(80,'delete_user','Delete User',0,0,NULL,4,0),(81,'search_users_in_group','Search User Group',0,0,NULL,16,0),(82,'edit_group','Edit Group',0,0,NULL,16,0),(83,'assign_group','Assign Group',0,0,NULL,16,0),(84,'add_sub_group','Add Child Group',0,0,NULL,16,0),(85,'edit_group_permissions','Edit Group Permissions',0,0,NULL,16,0),(86,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(87,'backup','Perform Backups',0,0,NULL,10,0),(88,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(89,'access_sitemap','Access Sitemap',0,0,NULL,11,0),(90,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(91,'customize_themes','Customize Themes',0,0,NULL,10,0),(92,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(93,'empty_trash','Empty Trash',0,0,NULL,10,0),(94,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(95,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(96,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(97,'uninstall_packages','Uninstall Packages',0,0,NULL,12,0),(98,'install_packages','Install Packages',0,0,NULL,12,0),(99,'view_newsflow','View Newsflow',0,0,NULL,12,0),(100,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(101,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(102,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(103,'edit_gathering_items','Edit Gathering Items',0,0,'',15,0);
/*!40000 ALTER TABLE `permissionkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilecontents`
--

DROP TABLE IF EXISTS `pilecontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilecontents`
--

LOCK TABLES `pilecontents` WRITE;
/*!40000 ALTER TABLE `pilecontents` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilecontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piles`
--

DROP TABLE IF EXISTS `piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piles`
--

LOCK TABLES `piles` WRITE;
/*!40000 ALTER TABLE `piles` DISABLE KEYS */;
/*!40000 ALTER TABLE `piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queuemessages`
--

DROP TABLE IF EXISTS `queuemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuemessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuemessages`
--

LOCK TABLES `queuemessages` WRITE;
/*!40000 ALTER TABLE `queuemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuemessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queuepageduplicationrelations`
--

DROP TABLE IF EXISTS `queuepageduplicationrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuepageduplicationrelations`
--

LOCK TABLES `queuepageduplicationrelations` WRITE;
/*!40000 ALTER TABLE `queuepageduplicationrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuepageduplicationrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signuprequests`
--

DROP TABLE IF EXISTS `signuprequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signuprequests`
--

LOCK TABLES `signuprequests` WRITE;
/*!40000 ALTER TABLE `signuprequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `signuprequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociallinks`
--

DROP TABLE IF EXISTS `sociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sociallinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociallinks`
--

LOCK TABLES `sociallinks` WRITE;
/*!40000 ALTER TABLE `sociallinks` DISABLE KEYS */;
INSERT INTO `sociallinks` VALUES (1,'facebook','http://facebook.com/concrete5'),(2,'github','http://github.com/concrete5'),(3,'twitter','http://twitter.com/concrete5');
/*!40000 ALTER TABLE `sociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stacks`
--

DROP TABLE IF EXISTS `stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stacks`
--

LOCK TABLES `stacks` WRITE;
/*!40000 ALTER TABLE `stacks` DISABLE KEYS */;
INSERT INTO `stacks` VALUES (1,'Footer Contact',20,145,0),(2,'Footer Legal',20,146,0),(3,'Footer Navigation',20,147,0),(4,'Footer Site Title',20,148,0),(5,'Footer Social',20,149,0),(6,'Header Navigation',20,150,0),(7,'Header Search',20,151,0),(8,'Header Site Title',20,152,0);
/*!40000 ALTER TABLE `stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizercustomcssrecords`
--

DROP TABLE IF EXISTS `stylecustomizercustomcssrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizercustomcssrecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizercustomcssrecords`
--

LOCK TABLES `stylecustomizercustomcssrecords` WRITE;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizerinlinestylepresets`
--

DROP TABLE IF EXISTS `stylecustomizerinlinestylepresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizerinlinestylepresets`
--

LOCK TABLES `stylecustomizerinlinestylepresets` WRITE;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizerinlinestylesets`
--

DROP TABLE IF EXISTS `stylecustomizerinlinestylesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizerinlinestylesets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizerinlinestylesets`
--

LOCK TABLES `stylecustomizerinlinestylesets` WRITE;
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` DISABLE KEYS */;
INSERT INTO `stylecustomizerinlinestylesets` VALUES (1,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(2,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(3,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(4,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','blog-entry-list',0,0,0,0),(5,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-wrapped',0,0,0,0),(6,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','block-sidebar-padded',0,0,0,0),(7,'',0,'no-repeat','','','','','none','','','','','','','','','','','','','','','','','','','','',0,0,0,0),(8,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(9,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(10,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','feature-home-page',0,0,0,0),(11,'',0,'','','','','','','','','','','','','','','','','80px','','','','','','','','','',0,0,0,0),(12,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry',0,0,0,0),(13,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','recent-blog-entry',0,0,0,0),(14,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','area-content-accent',0,0,0,0),(15,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','area-content-accent',0,0,0,0),(16,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(17,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(18,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(19,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(20,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(21,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(22,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(23,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','testimonial-bio',0,0,0,0),(24,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt',0,0,0,0),(25,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','image-circle',0,0,0,0),(26,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','image-right-tilt',0,0,0,0),(27,'',0,'','','','','','','','','','','','','','','','','','','','','','','','','','page-list-with-buttons',0,0,0,0);
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizervaluelists`
--

DROP TABLE IF EXISTS `stylecustomizervaluelists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizervaluelists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizervaluelists`
--

LOCK TABLES `stylecustomizervaluelists` WRITE;
/*!40000 ALTER TABLE `stylecustomizervaluelists` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervaluelists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizervalues`
--

DROP TABLE IF EXISTS `stylecustomizervalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizervalues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizervalues`
--

LOCK TABLES `stylecustomizervalues` WRITE;
/*!40000 ALTER TABLE `stylecustomizervalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemantispamlibraries`
--

DROP TABLE IF EXISTS `systemantispamlibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemantispamlibraries`
--

LOCK TABLES `systemantispamlibraries` WRITE;
/*!40000 ALTER TABLE `systemantispamlibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemantispamlibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemcaptchalibraries`
--

DROP TABLE IF EXISTS `systemcaptchalibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemcaptchalibraries`
--

LOCK TABLES `systemcaptchalibraries` WRITE;
/*!40000 ALTER TABLE `systemcaptchalibraries` DISABLE KEYS */;
INSERT INTO `systemcaptchalibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `systemcaptchalibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemcontenteditorsnippets`
--

DROP TABLE IF EXISTS `systemcontenteditorsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemcontenteditorsnippets`
--

LOCK TABLES `systemcontenteditorsnippets` WRITE;
/*!40000 ALTER TABLE `systemcontenteditorsnippets` DISABLE KEYS */;
INSERT INTO `systemcontenteditorsnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `systemcontenteditorsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemdatabasemigrations`
--

DROP TABLE IF EXISTS `systemdatabasemigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemdatabasemigrations`
--

LOCK TABLES `systemdatabasemigrations` WRITE;
/*!40000 ALTER TABLE `systemdatabasemigrations` DISABLE KEYS */;
INSERT INTO `systemdatabasemigrations` VALUES ('20151221000000');
/*!40000 ALTER TABLE `systemdatabasemigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemdatabasequerylog`
--

DROP TABLE IF EXISTS `systemdatabasequerylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemdatabasequerylog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemdatabasequerylog`
--

LOCK TABLES `systemdatabasequerylog` WRITE;
/*!40000 ALTER TABLE `systemdatabasequerylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemdatabasequerylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topictrees`
--

DROP TABLE IF EXISTS `topictrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topictrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topictrees`
--

LOCK TABLES `topictrees` WRITE;
/*!40000 ALTER TABLE `topictrees` DISABLE KEYS */;
INSERT INTO `topictrees` VALUES (2,'Blog Entries'),(3,'Projects');
/*!40000 ALTER TABLE `topictrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treecategorynodes`
--

DROP TABLE IF EXISTS `treecategorynodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treecategorynodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treecategorynodes`
--

LOCK TABLES `treecategorynodes` WRITE;
/*!40000 ALTER TABLE `treecategorynodes` DISABLE KEYS */;
INSERT INTO `treecategorynodes` VALUES (5,''),(6,'Reviews'),(14,'');
/*!40000 ALTER TABLE `treecategorynodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treegroupnodes`
--

DROP TABLE IF EXISTS `treegroupnodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treegroupnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treegroupnodes`
--

LOCK TABLES `treegroupnodes` WRITE;
/*!40000 ALTER TABLE `treegroupnodes` DISABLE KEYS */;
INSERT INTO `treegroupnodes` VALUES (2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `treegroupnodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodepermissionassignments`
--

DROP TABLE IF EXISTS `treenodepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodepermissionassignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodepermissionassignments`
--

LOCK TABLES `treenodepermissionassignments` WRITE;
/*!40000 ALTER TABLE `treenodepermissionassignments` DISABLE KEYS */;
INSERT INTO `treenodepermissionassignments` VALUES (5,65,31),(14,65,32),(1,81,96),(1,82,97),(1,83,98),(1,84,99),(1,85,100);
/*!40000 ALTER TABLE `treenodepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodes`
--

DROP TABLE IF EXISTS `treenodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodes`
--

LOCK TABLES `treenodes` WRITE;
/*!40000 ALTER TABLE `treenodes` DISABLE KEYS */;
INSERT INTO `treenodes` VALUES (1,1,1,0,0,1,1),(2,1,1,1,0,0,1),(3,1,1,1,1,0,1),(4,1,1,1,2,0,1),(5,2,2,0,0,1,5),(6,2,2,5,0,0,5),(7,3,2,6,0,0,5),(8,3,2,6,1,0,5),(9,3,2,6,2,0,5),(10,3,2,6,3,0,5),(11,3,2,5,1,0,5),(12,3,2,5,2,0,5),(13,3,2,5,3,0,5),(14,2,3,0,0,1,14),(15,3,3,14,0,0,14),(16,3,3,14,1,0,14),(17,3,3,14,2,0,14),(18,3,3,14,3,0,14);
/*!40000 ALTER TABLE `treenodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodetypes`
--

DROP TABLE IF EXISTS `treenodetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodetypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodetypes`
--

LOCK TABLES `treenodetypes` WRITE;
/*!40000 ALTER TABLE `treenodetypes` DISABLE KEYS */;
INSERT INTO `treenodetypes` VALUES (1,'group',0),(2,'topic_category',0),(3,'topic',0);
/*!40000 ALTER TABLE `treenodetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,1,'2016-03-25 13:04:16',1),(2,2,'2016-03-25 13:05:14',5),(3,2,'2016-03-25 13:05:14',14);
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treetopicnodes`
--

DROP TABLE IF EXISTS `treetopicnodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treetopicnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treetopicnodes`
--

LOCK TABLES `treetopicnodes` WRITE;
/*!40000 ALTER TABLE `treetopicnodes` DISABLE KEYS */;
INSERT INTO `treetopicnodes` VALUES (7,'Gadgets'),(8,'Movies'),(9,'Books'),(10,'Music'),(11,'Projects'),(12,'Sports'),(13,'Humor'),(15,'Crafts'),(16,'Homework'),(17,'Supplies'),(18,'Activities');
/*!40000 ALTER TABLE `treetopicnodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treetypes`
--

DROP TABLE IF EXISTS `treetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treetypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treetypes`
--

LOCK TABLES `treetypes` WRITE;
/*!40000 ALTER TABLE `treetypes` DISABLE KEYS */;
INSERT INTO `treetypes` VALUES (1,'group',0),(2,'topic',0);
/*!40000 ALTER TABLE `treetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattributekeys`
--

DROP TABLE IF EXISTS `userattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattributekeys`
--

LOCK TABLES `userattributekeys` WRITE;
/*!40000 ALTER TABLE `userattributekeys` DISABLE KEYS */;
INSERT INTO `userattributekeys` VALUES (12,0,0,1,0,1,0,1,1),(13,0,0,1,0,1,0,2,1),(16,0,0,0,0,0,0,3,1);
/*!40000 ALTER TABLE `userattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattributevalues`
--

DROP TABLE IF EXISTS `userattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattributevalues`
--

LOCK TABLES `userattributevalues` WRITE;
/*!40000 ALTER TABLE `userattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `userattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbannedips`
--

DROP TABLE IF EXISTS `userbannedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbannedips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbannedips`
--

LOCK TABLES `userbannedips` WRITE;
/*!40000 ALTER TABLE `userbannedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `userbannedips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissioneditpropertyaccesslist`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissioneditpropertyaccesslist`
--

LOCK TABLES `userpermissioneditpropertyaccesslist` WRITE;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissioneditpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissioneditpropertyattributeaccesslistcustom`
--

LOCK TABLES `userpermissioneditpropertyattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissionviewattributeaccesslist`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissionviewattributeaccesslist`
--

LOCK TABLES `userpermissionviewattributeaccesslist` WRITE;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissionviewattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissionviewattributeaccesslistcustom`
--

LOCK TABLES `userpermissionviewattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpointactions`
--

DROP TABLE IF EXISTS `userpointactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpointactions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpointactions`
--

LOCK TABLES `userpointactions` WRITE;
/*!40000 ALTER TABLE `userpointactions` DISABLE KEYS */;
INSERT INTO `userpointactions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `userpointactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpointhistory`
--

DROP TABLE IF EXISTS `userpointhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpointhistory`
--

LOCK TABLES `userpointhistory` WRITE;
/*!40000 ALTER TABLE `userpointhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpointhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivatemessages`
--

DROP TABLE IF EXISTS `userprivatemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivatemessages`
--

LOCK TABLES `userprivatemessages` WRITE;
/*!40000 ALTER TABLE `userprivatemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivatemessagesto`
--

DROP TABLE IF EXISTS `userprivatemessagesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivatemessagesto`
--

LOCK TABLES `userprivatemessagesto` WRITE;
/*!40000 ALTER TABLE `userprivatemessagesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessagesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','minhv1019@gmail.com','$2a$12$1kM6n0rFnEdspgSnClq3lu09MluJ45sVgbFQJ3gb5N/2eXJqxmZoe','1',-1,1,'2016-03-25 13:04:16','2016-03-25 13:04:16',0,1458936330,1458936256,'00000000000000000000000000000001',0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersearchindexattributes`
--

DROP TABLE IF EXISTS `usersearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersearchindexattributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersearchindexattributes`
--

LOCK TABLES `usersearchindexattributes` WRITE;
/*!40000 ALTER TABLE `usersearchindexattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uservalidationhashes`
--

DROP TABLE IF EXISTS `uservalidationhashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uservalidationhashes`
--

LOCK TABLES `uservalidationhashes` WRITE;
/*!40000 ALTER TABLE `uservalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uservalidationhashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogress`
--

DROP TABLE IF EXISTS `workflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogress`
--

LOCK TABLES `workflowprogress` WRITE;
/*!40000 ALTER TABLE `workflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogresscategories`
--

DROP TABLE IF EXISTS `workflowprogresscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogresscategories`
--

LOCK TABLES `workflowprogresscategories` WRITE;
/*!40000 ALTER TABLE `workflowprogresscategories` DISABLE KEYS */;
INSERT INTO `workflowprogresscategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `workflowprogresscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogresshistory`
--

DROP TABLE IF EXISTS `workflowprogresshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogresshistory`
--

LOCK TABLES `workflowprogresshistory` WRITE;
/*!40000 ALTER TABLE `workflowprogresshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprogresshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowrequestobjects`
--

DROP TABLE IF EXISTS `workflowrequestobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowrequestobjects`
--

LOCK TABLES `workflowrequestobjects` WRITE;
/*!40000 ALTER TABLE `workflowrequestobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowrequestobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowtypes`
--

DROP TABLE IF EXISTS `workflowtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowtypes`
--

LOCK TABLES `workflowtypes` WRITE;
/*!40000 ALTER TABLE `workflowtypes` DISABLE KEYS */;
INSERT INTO `workflowtypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `workflowtypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-25 13:10:14
