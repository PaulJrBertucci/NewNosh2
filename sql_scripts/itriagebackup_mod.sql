-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: nosh
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `addressbook`
--

DROP TABLE IF EXISTS `addressbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addressbook` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specialty` varchar(100) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `facility` varchar(100) DEFAULT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `suffix` varchar(100) DEFAULT NULL,
  `street_address1` varchar(255) DEFAULT NULL,
  `street_address2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `insurance_plan_payor_id` varchar(255) DEFAULT NULL,
  `insurance_plan_type` varchar(255) DEFAULT NULL,
  `insurance_plan_assignment` varchar(4) DEFAULT NULL,
  `insurance_plan_ppa_phone` varchar(255) DEFAULT NULL,
  `insurance_plan_ppa_fax` varchar(255) DEFAULT NULL,
  `insurance_plan_ppa_url` varchar(255) DEFAULT NULL,
  `insurance_plan_mpa_phone` varchar(255) DEFAULT NULL,
  `insurance_plan_mpa_fax` varchar(255) DEFAULT NULL,
  `insurance_plan_mpa_url` varchar(255) DEFAULT NULL,
  `ordering_id` varchar(255) DEFAULT NULL,
  `insurance_box_31` varchar(4) DEFAULT NULL,
  `insurance_box_32a` varchar(4) DEFAULT NULL,
  `npi` varchar(255) DEFAULT NULL,
  `electronic_order` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'United States',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressbook`
--

LOCK TABLES `addressbook` WRITE;
/*!40000 ALTER TABLE `addressbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `addressbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `alert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `orders_id` bigint(20) DEFAULT NULL,
  `alert` varchar(255) DEFAULT NULL,
  `alert_description` longtext,
  `alert_date_active` datetime DEFAULT NULL,
  `alert_date_complete` datetime DEFAULT NULL,
  `alert_reason_not_complete` varchar(255) DEFAULT NULL,
  `alert_provider` bigint(20) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `alert_send_message` varchar(4) DEFAULT 'n',
  `results` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allergies` (
  `allergies_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `allergies_date_active` datetime DEFAULT NULL,
  `allergies_date_inactive` datetime DEFAULT NULL,
  `allergies_med` varchar(255) DEFAULT NULL,
  `allergies_reaction` varchar(255) DEFAULT NULL,
  `allergies_provider` varchar(255) DEFAULT NULL,
  `rcopia_sync` varchar(4) DEFAULT NULL,
  `meds_ndcid` varchar(11) DEFAULT NULL,
  `allergies_severity` varchar(255) DEFAULT NULL,
  `reconcile` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `label` varchar(255) DEFAULT NULL,
  `provider_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`allergies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_queue`
--

DROP TABLE IF EXISTS `api_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table` varchar(100) DEFAULT NULL,
  `primary` varchar(100) DEFAULT NULL,
  `local_id` bigint(20) DEFAULT NULL,
  `remote_id` bigint(20) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `json` longtext,
  `login` longtext,
  `url` varchar(100) DEFAULT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `response` longtext,
  `success` varchar(4) DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_queue`
--

LOCK TABLES `api_queue` WRITE;
/*!40000 ALTER TABLE `api_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `assessment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assessment_icd1` varchar(20) DEFAULT NULL,
  `assessment_icd2` varchar(20) DEFAULT NULL,
  `assessment_icd3` varchar(20) DEFAULT NULL,
  `assessment_icd4` varchar(20) DEFAULT NULL,
  `assessment_icd5` varchar(20) DEFAULT NULL,
  `assessment_icd6` varchar(20) DEFAULT NULL,
  `assessment_icd7` varchar(20) DEFAULT NULL,
  `assessment_icd8` varchar(20) DEFAULT NULL,
  `assessment_1` longtext,
  `assessment_2` longtext,
  `assessment_3` longtext,
  `assessment_4` longtext,
  `assessment_5` longtext,
  `assessment_6` longtext,
  `assessment_7` longtext,
  `assessment_8` longtext,
  `assessment_other` longtext,
  `assessment_ddx` longtext,
  `assessment_notes` longtext,
  `assessment_icd9` varchar(20) DEFAULT NULL,
  `assessment_icd10` varchar(20) DEFAULT NULL,
  `assessment_icd11` varchar(20) DEFAULT NULL,
  `assessment_icd12` varchar(20) DEFAULT NULL,
  `assessment_9` longtext,
  `assessment_10` longtext,
  `assessment_11` longtext,
  `assessment_12` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment`
--

LOCK TABLES `assessment` WRITE;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` VALUES (1,1,'Paul Bertucci','2019-02-05 00:52:50','R51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Headache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Paul Bertucci','2019-02-05 22:10:21','M22.01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Recurrent dislocation of patella, right knee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,'Paul Bertucci','2019-02-05 23:03:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'Paul Bertucci','2019-02-23 01:35:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,'Paul Bertucci','2019-02-05 22:10:21','M22.01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Recurrent dislocation of patella, right knee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `audit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `query` longtext,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,NULL,NULL,NULL,NULL,'Add','insert into `users` (`username`, `password`, `email`, `group_id`, `displayname`, `active`, `practice_id`) values (\'admin\', \'a$xv00mccoxHCkz4PArNaqRue89WUfURqR9RqmLeJIRapg6tMeMvaNe\', \'pj@dataxdesign.com\', \'1\', \'Administrator\', \'1\', \'1\')','2019-02-05 00:18:35',NULL),(2,NULL,NULL,NULL,NULL,'Add','insert into `practiceinfo` (`practice_name`, `street_address1`, `street_address2`, `city`, `state`, `zip`, `phone`, `fax`, `email`, `documents_dir`, `fax_type`, `vivacare`, `version`, `active`, `patient_centric`) values (\'GMAST\', \'6144 NE Glisan St\', \'\', \'Portland\', \'OR\', \'97213\', \'(925) 597-0079\', \'(925) 597-0079\', \'pj@dataxdesign.com\', \'/noshdocuments/\', \'\', \'\', \'2.0.0\', \'Y\', \'n\')','2019-02-05 00:18:35',NULL),(3,NULL,NULL,NULL,NULL,'Add','insert into `groups` (`id`, `title`, `description`) values (\'1\', \'admin\', \'Administrator\')','2019-02-05 00:18:35',NULL),(4,NULL,NULL,NULL,NULL,'Add','insert into `groups` (`id`, `title`, `description`) values (\'2\', \'provider\', \'Provider\')','2019-02-05 00:18:35',NULL),(5,NULL,NULL,NULL,NULL,'Add','insert into `groups` (`id`, `title`, `description`) values (\'3\', \'assistant\', \'Assistant\')','2019-02-05 00:18:35',NULL),(6,NULL,NULL,NULL,NULL,'Add','insert into `groups` (`id`, `title`, `description`) values (\'4\', \'billing\', \'Billing\')','2019-02-05 00:18:35',NULL),(7,NULL,NULL,NULL,NULL,'Add','insert into `groups` (`id`, `title`, `description`) values (\'100\', \'patient\', \'Patient\')','2019-02-05 00:18:35',NULL),(8,NULL,NULL,NULL,NULL,'Add','insert into `calendar` (`visit_type`, `classname`, `active`, `practice_id`) values (\'Closed\', \'colorblack\', \'y\', \'1\')','2019-02-05 00:18:35',NULL),(9,1,'Administrator',1,NULL,'Add','insert into `users` (`firstname`, `middle`, `lastname`, `title`, `displayname`, `email`, `group_id`, `active`, `practice_id`, `password`, `created_at`) values (\'Paul\', \'\', \'Bertucci\', \'\', \'Paul Bertucci\', \'pbertucci@dataxdesign.com\', \'2\', \'1\', \'1\', \'Xzia_YwUwjYLhQFcDd-lz2FqKhpiF3E6_Y98h-bZfTpYEnCE5sGczmNd0nl1Usu33Rv7R4w79l7JuMQEU7Uy5Q\', \'2019-02-04 16:19:06\')','2019-02-05 00:19:06',1),(10,1,'Administrator',1,NULL,'Update','update `users` set `username` = \'pbertucci\', `password` = \'a$AjiZGYlUtdGVeWtXsXSGweDao7ynMsEY2fice50BwJ8De1GhblYJ.\', `secret_question` = \'Default password\', `secret_answer` = \'iTriage!\' where `password` = \'Xzia_YwUwjYLhQFcDd-lz2FqKhpiF3E6_Y98h-bZfTpYEnCE5sGczmNd0nl1Usu33Rv7R4w79l7JuMQEU7Uy5Q\'','2019-02-05 00:19:28',1),(11,1,'Administrator',1,NULL,'Update','update `practiceinfo` set `practice_id` = \'1\', `weekends` = \'1\', `minTime` = \'08:00 AM\', `maxTime` = \'05:00 PM\', `timezone` = \'America/Los_Angeles\', `mon_o` = \'\', `mon_c` = \'\', `tue_o` = \'\', `tue_c` = \'\', `wed_o` = \'\', `wed_c` = \'\', `thu_o` = \'\', `thu_c` = \'\', `fri_o` = \'\', `fri_c` = \'\', `sat_o` = \'\', `sat_c` = \'\', `sun_o` = \'\', `sun_c` = \'\' where `practice_id` = \'1\'','2019-02-05 00:19:49',1),(12,1,'Administrator',1,NULL,'Update','update `practiceinfo` set `practice_id` = \'1\', `primary_contact` = \'\', `npi` = \'\', `medicare` = \'\', `tax_id` = \'\', `default_pos_id` = \'1\', `documents_dir` = \'/noshdocuments/\', `weight_unit` = \'lbs\', `height_unit` = \'in\', `temp_unit` = \'F\', `hc_unit` = \'in\', `encounter_template` = \'medical\', `additional_message` = \'\', `reminder_interval` = \'Default\' where `practice_id` = \'1\'','2019-02-05 00:19:56',1),(13,1,'Administrator',1,NULL,'Update','update `practiceinfo` set `practice_id` = \'1\', `billing_street_address1` = \'6144 NE Glisan St\', `billing_street_address2` = \'\', `billing_city` = \'Portland\', `billing_state` = \'OR\', `billing_zip` = \'97213\' where `practice_id` = \'1\'','2019-02-05 00:20:06',1),(14,1,'Administrator',1,NULL,'Update','update `practiceinfo` set `practice_logo` = \'assets/images/GMASTlogo_1549326039.png\' where `practice_id` = \'1\'','2019-02-05 00:20:39',1),(15,2,'Paul Bertucci',2,NULL,'Add','insert into `demographics` (`lastname`, `firstname`, `DOB`, `sex`, `active`, `sexuallyactive`, `tobacco`, `pregnant`) values (\'Sample\', \'John\', \'1989-08-30\', \'m\', \'1\', \'no\', \'no\', \'no\')','2019-02-05 00:52:18',1),(16,2,'Paul Bertucci',2,NULL,'Add','insert into `demographics_notes` (`billing_notes`, `imm_notes`, `pid`, `practice_id`) values (\'\', \'\', \'1\', \'1\')','2019-02-05 00:52:18',1),(17,2,'Paul Bertucci',2,NULL,'Add','insert into `demographics_relate` (`pid`, `practice_id`) values (\'1\', \'1\')','2019-02-05 00:52:18',1),(18,2,'Paul Bertucci',2,1,'Add','insert into `encounters` (`encounter_provider`, `encounter_cc`, `encounter_template`, `encounter_DOS`, `encounter_location`, `encounter_role`, `pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`) values (\'Paul Bertucci\', \'Headache\', \'medical\', \'2019-02-04 16:52:00\', \'1\', \'Primary Care Provider\', \'1\', \'\', \'29 Years Old\', \'\', \'No\', \'n\', \'2\', \'1\')','2019-02-05 00:52:29',1),(19,2,'Paul Bertucci',2,1,'Update','update `encounters` set `addendum_eid` = \'1\' where `eid` = \'1\'','2019-02-05 00:52:29',1),(20,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-05 00:52:34',1),(21,2,'Paul Bertucci',2,1,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'1\', \'1\', \'Paul Bertucci\')','2019-02-05 00:52:34',1),(22,2,'Paul Bertucci',2,1,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'1\', \'1\', \'Paul Bertucci\')','2019-02-05 00:52:34',1),(23,2,'Paul Bertucci',2,1,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'\', \'1\', \'1\', \'Paul Bertucci\')','2019-02-05 00:52:38',1),(24,2,'Paul Bertucci',2,1,'Add','insert into `assessment` (`assessment_1`, `assessment_icd1`, `eid`, `pid`, `encounter_provider`) values (\'Headache\', \'R51\', \'1\', \'1\', \'Paul Bertucci\')','2019-02-05 00:52:45',1),(25,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'1\'','2019-02-05 00:52:50',1),(26,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'1\'','2019-02-05 00:52:50',1),(27,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'1\'','2019-02-05 00:52:50',1),(28,2,'Paul Bertucci',2,1,'Add','insert into `plan` (`plan`, `eid`, `pid`, `encounter_provider`) values (\'\', \'1\', \'1\', \'Paul Bertucci\')','2019-02-05 00:52:54',1),(29,2,'Paul Bertucci',2,1,'Update','update `plan` set `followup` = \'\' where `eid` = \'1\'','2019-02-05 00:52:54',1),(30,2,'Paul Bertucci',2,1,'Update','update `plan` set `duration` = \'\' where `eid` = \'1\'','2019-02-05 00:52:54',1),(31,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-05 01:02:43',1),(32,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-05 01:02:43',1),(33,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-05 01:02:43',1),(34,2,'Paul Bertucci',2,1,'Update','update `practiceinfo` set `practice_logo` = \'assets/images/GMASTlogo copy_1549329226.jpg\' where `practice_id` = \'1\'','2019-02-05 01:13:46',1),(35,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-05 01:15:12',1),(36,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-05 01:15:12',1),(37,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-05 01:15:12',1),(38,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-05 01:15:17',1),(39,2,'Paul Bertucci',2,1,'Add','insert into `demographics` (`lastname`, `firstname`, `DOB`, `sex`, `active`, `sexuallyactive`, `tobacco`, `pregnant`) values (\'Bertucci\', \'Donald\', \'2007-01-21\', \'m\', \'1\', \'no\', \'no\', \'no\')','2019-02-05 22:01:33',1),(40,2,'Paul Bertucci',2,1,'Add','insert into `demographics_notes` (`billing_notes`, `imm_notes`, `pid`, `practice_id`) values (\'\', \'\', \'2\', \'1\')','2019-02-05 22:01:33',1),(41,2,'Paul Bertucci',2,1,'Add','insert into `demographics_relate` (`pid`, `practice_id`) values (\'2\', \'1\')','2019-02-05 22:01:33',1),(42,2,'Paul Bertucci',2,2,'Update','update `demographics` set `pid` = \'2\', `address` = \'1237 ARCADIA DR\', `city` = \'EUGENE\', `state` = \'OR\', `zip` = \'97401\', `email` = \'pbertucci@dbarchitechs.com\', `phone_home` = \'(541) 731-1820\', `phone_work` = \'\', `phone_cell` = \'\', `emergency_contact` = \'Paul Bertucci\', `reminder_method` = \'\', `reminder_interval` = \'Default\' where `pid` = \'2\'','2019-02-05 22:03:06',1),(43,2,'Paul Bertucci',2,2,'Add','insert into `issues` (`issue`, `type`, `issue_date_active`, `notes`, `issue_date_inactive`, `issue_provider`, `rcopia_sync`, `reconcile`, `pid`) values (\'Pain in right knee [M25.561]\', \'Problem List\', \'2019-02-05 00:00:00\', \'\', \'\', \'Paul Bertucci\', \'n\', \'y\', \'2\')','2019-02-05 22:03:38',1),(44,2,'Paul Bertucci',2,2,'Add','insert into `encounters` (`encounter_provider`, `encounter_cc`, `encounter_template`, `encounter_DOS`, `encounter_location`, `encounter_role`, `pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`) values (\'Paul Bertucci\', \'pain in his right knee from football game this past saturday\', \'medical\', \'2019-02-05 14:04:00\', \'23\', \'Primary Care Provider\', \'2\', \'\', \'12 Years Old\', \'\', \'No\', \'n\', \'2\', \'1\')','2019-02-05 22:05:21',1),(45,2,'Paul Bertucci',2,2,'Update','update `encounters` set `addendum_eid` = \'2\' where `eid` = \'2\'','2019-02-05 22:05:21',1),(46,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:05:24',1),(47,2,'Paul Bertucci',2,2,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'2\', \'2\', \'Paul Bertucci\')','2019-02-05 22:05:24',1),(48,2,'Paul Bertucci',2,2,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'2\', \'2\', \'Paul Bertucci\')','2019-02-05 22:05:24',1),(49,2,'Paul Bertucci',2,2,'Add','insert into `vitals` (`eid`, `weight`, `height`, `headcircumference`, `BMI`, `temp`, `temp_method`, `bp_systolic`, `bp_diastolic`, `bp_position`, `pulse`, `respirations`, `o2_sat`, `vitals_other`, `pedsage`, `vitals_age`, `vitals_date`, `pid`) values (\'2\', \'155\', \'72\', \'\', \'21\', \'98.6\', \'Oral\', \'115\', \'70\', \'Sitting\', \'58\', \'9\', \'99\', \' - Desirable\', \'144.5152016756\', \'12.04292965671\', \'2019-02-05 14:04:00\', \'2\')','2019-02-05 22:06:35',1),(50,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'2\', `weight` = \'155\', `height` = \'72\', `headcircumference` = \'\', `BMI` = \'21\', `temp` = \'98.6\', `temp_method` = \'Oral\', `bp_systolic` = \'115\', `bp_diastolic` = \'70\', `bp_position` = \'Sitting\', `pulse` = \'58\', `respirations` = \'9\', `o2_sat` = \'99\', `vitals_other` = \' - Desirable\', `pedsage` = \'144.5152016756\', `vitals_age` = \'12.04292965671\', `vitals_date` = \'2019-02-05 14:04:00\', `pid` = \'2\', `wt_percentile` = \'0\', `ht_percentile` = \'0\', `wt_ht_percentile` = \'0\', `bmi_percentile` = \'NAN\' where `eid` = \'0\'','2019-02-05 22:06:40',1),(51,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/image_1549404502.png\', \'2\', \'Pain Location (right knee, upper cartilage)\', \'2\', \'Paul Bertucci\', \'2\')','2019-02-05 22:08:22',1),(52,2,'Paul Bertucci',2,2,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'possible \', \'2\', \'2\', \'Paul Bertucci\')','2019-02-05 22:09:06',1),(53,2,'Paul Bertucci',2,2,'Add','insert into `assessment` (`assessment_1`, `assessment_icd1`, `eid`, `pid`, `encounter_provider`) values (\'Recurrent dislocation of patella, right knee\', \'M22.01\', \'2\', \'2\', \'Paul Bertucci\')','2019-02-05 22:10:15',1),(54,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'2\'','2019-02-05 22:10:21',1),(55,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'2\'','2019-02-05 22:10:21',1),(56,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'2\'','2019-02-05 22:10:21',1),(57,2,'Paul Bertucci',2,2,'Add','insert into `plan` (`plan`, `eid`, `pid`, `encounter_provider`) values (\'possible surgery to re-attach tendon.\', \'2\', \'2\', \'Paul Bertucci\')','2019-02-05 22:10:46',1),(58,2,'Paul Bertucci',2,2,'Update','update `plan` set `followup` = \'\' where `eid` = \'2\'','2019-02-05 22:10:46',1),(59,2,'Paul Bertucci',2,2,'Update','update `plan` set `duration` = \'\' where `eid` = \'2\'','2019-02-05 22:10:46',1),(60,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:10:48',1),(61,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:10:48',1),(62,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:10:48',1),(63,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:11:44',1),(64,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:11:44',1),(65,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:11:44',1),(66,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/15494048047867868752707336336366_1549404864.jpg\', \'2\', \'Photo Uploaded February 5th, 2019\', \'2\', \'Paul Bertucci\', \'2\')','2019-02-05 22:14:24',1),(67,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/15494049638783211515701179164538_1549405001.jpg\', \'2\', \'Photo Uploaded February 5th, 2019\', \'2\', \'Paul Bertucci\', \'2\')','2019-02-05 22:16:41',1),(68,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/15494050562334728006305539374217_1549405089.jpg\', \'2\', \'Photo Uploaded February 5th, 2019\', \'2\', \'Paul Bertucci\', \'2\')','2019-02-05 22:18:09',1),(69,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:18:48',1),(70,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:18:48',1),(71,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:18:48',1),(72,2,'Paul Bertucci',2,2,'Delete','delete from `image` where `image_id` = \'3\'','2019-02-05 22:19:35',1),(73,2,'Paul Bertucci',2,2,'Delete','delete from `image` where `image_id` = \'2\'','2019-02-05 22:19:38',1),(74,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'possible \' where `eid` = \'2\'','2019-02-05 22:19:56',1),(75,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'2\'','2019-02-05 22:20:00',1),(76,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'2\'','2019-02-05 22:20:00',1),(77,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'2\'','2019-02-05 22:20:00',1),(78,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:20:19',1),(79,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:20:19',1),(80,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:20:19',1),(81,2,'Paul Bertucci',2,2,'Update','update `demographics` set `photo` = \'/noshdocuments/2/30741841_1417473801691282_3593771914507583488_n_1549405547.jpg\' where `pid` = \'2\'','2019-02-05 22:25:47',1),(82,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:27:23',1),(83,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:27:23',1),(84,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:27:23',1),(85,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/IMG_4212_1549405679.JPG\', \'2\', \'Photo Uploaded February 5th, 2019\', \'2\', \'Paul Bertucci\', \'2\')','2019-02-05 22:27:59',1),(86,2,'Paul Bertucci',2,2,'Update','update `image` set `image_location` = \'/noshdocuments/2/image_1549405703.png\', `pid` = \'2\', `image_description` = \'Photo Uploaded February 5th, 2019\', `id` = \'2\', `encounter_provider` = \'Paul Bertucci\', `eid` = \'2\' where `image_id` = \'5\'','2019-02-05 22:28:23',1),(87,2,'Paul Bertucci',2,2,'Update','update `image` set `image_location` = \'/noshdocuments/2/image_1549405736.png\', `pid` = \'2\', `image_description` = \'Photo Uploaded February 5th, 2019\', `id` = \'2\', `encounter_provider` = \'Paul Bertucci\', `eid` = \'2\' where `image_id` = \'5\'','2019-02-05 22:28:56',1),(88,2,'Paul Bertucci',2,2,'Update','update `demographics` set `pid` = \'2\', `guardian_lastname` = \'Bertucci\', `guardian_firstname` = \'Paul\', `guardian_relationship` = \'\', `guardian_code` = \'\', `guardian_address` = \'30327, Seely Lane\', `guardian_city` = \'Eugene\', `guardian_state` = \'OR\', `guardian_zip` = \'97405\', `guardian_email` = \'ptbertucci@gmail.com\', `guardian_phone_home` = \'(541) 731-1820\', `guardian_phone_work` = \'\', `guardian_phone_cell` = \'\' where `pid` = \'2\'','2019-02-05 22:30:50',1),(89,2,'Paul Bertucci',2,2,'Update','update `demographics` set `pid` = \'2\', `guardian_lastname` = \'Bertucci\', `guardian_firstname` = \'Paul\', `guardian_relationship` = \'Natural Father\', `guardian_code` = \'NFTH\', `guardian_address` = \'30327, Seely Lane\', `guardian_city` = \'Eugene\', `guardian_state` = \'OR\', `guardian_zip` = \'97405\', `guardian_email` = \'ptbertucci@gmail.com\', `guardian_phone_home` = \'(541) 731-1820\', `guardian_phone_work` = \'\', `guardian_phone_cell` = \'\' where `pid` = \'2\'','2019-02-05 22:31:10',1),(90,2,'Paul Bertucci',2,2,'Add','insert into `other_history` (`eid`, `pid`) values (\'0\', \'2\')','2019-02-05 22:31:57',1),(91,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'\' where `eid` = \'2\'','2019-02-05 22:31:57',1),(92,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `oh_id` = \'3\'','2019-02-05 22:32:33',1),(93,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `eid` = \'2\'','2019-02-05 22:32:34',1),(94,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n- \\n  Name: vilay sithongkang\\n  Relationship: Mother\\n  Status: Alive\\n  Gender: Female\\n  Date of Birth: 1979-10-11\\n  Marital Status: Single\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `oh_id` = \'3\'','2019-02-05 22:33:12',1),(95,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n- \\n  Name: vilay sithongkang\\n  Relationship: Mother\\n  Status: Alive\\n  Gender: Female\\n  Date of Birth: 1979-10-11\\n  Marital Status: Single\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `eid` = \'2\'','2019-02-05 22:33:12',1),(96,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n- \\n  Name: vilay sithongkang\\n  Relationship: Mother\\n  Status: Alive\\n  Gender: Female\\n  Date of Birth: 1979-10-11\\n  Marital Status: Single\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `eid` = \'2\'','2019-02-05 22:33:49',1),(97,2,'Paul Bertucci',2,2,'Update','update `other_history` set `oh_fh` = \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n- \\n  Name: vilay sithongkang\\n  Relationship: Mother\\n  Status: Alive\\n  Gender: Female\\n  Date of Birth: 1979-10-11\\n  Marital Status: Single\\n  Mother:\\n  Father:\\n  Medical:\\n\' where `eid` = \'2\'','2019-02-05 22:35:20',1),(98,2,'Paul Bertucci',2,2,'Update','update `practiceinfo` set `practice_id` = \'1\', `weekends` = \'1\', `minTime` = \'08:00 AM\', `maxTime` = \'05:00 PM\', `timezone` = \'America/Los_Angeles\', `mon_o` = \'08:00 AM\', `mon_c` = \'05:00 PM\', `tue_o` = \'08:00 AM\', `tue_c` = \'05:00 PM\', `wed_o` = \'08:00 AM\', `wed_c` = \'05:00 PM\', `thu_o` = \'08:00 AM\', `thu_c` = \'05:00 PM\', `fri_o` = \'08:00 AM\', `fri_c` = \'05:00 PM\', `sat_o` = \'02:37 PM\', `sat_c` = \'02:37 PM\', `sun_o` = \'\', `sun_c` = \'\' where `practice_id` = \'1\'','2019-02-05 22:37:49',1),(99,2,'Paul Bertucci',2,2,'Add','insert into `calendar` (`visit_type`, `duration`, `classname`, `provider_id`, `active`, `practice_id`) values (\'Office Visit\', \'900\', \'coloryellow\', \'0\', \'y\', \'1\')','2019-02-05 22:41:15',1),(100,2,'Paul Bertucci',2,2,'Add','insert into `calendar` (`visit_type`, `duration`, `classname`, `provider_id`, `active`, `practice_id`) values (\'Outpatient Visit\', \'900\', \'colorblue\', \'0\', \'y\', \'1\')','2019-02-05 22:41:39',1),(101,2,'Paul Bertucci',2,2,'Add','insert into `calendar` (`visit_type`, `duration`, `classname`, `provider_id`, `active`, `practice_id`) values (\'Emergency Room Visit\', \'900\', \'colorblue\', \'0\', \'y\', \'1\')','2019-02-05 22:41:54',1),(102,2,'Paul Bertucci',2,2,'Add','insert into `calendar` (`visit_type`, `duration`, `classname`, `provider_id`, `active`, `practice_id`) values (\'Remote Clinic Visit\', \'900\', \'colorblue\', \'0\', \'y\', \'1\')','2019-02-05 22:42:11',1),(103,2,'Paul Bertucci',2,2,'Add','insert into `calendar` (`visit_type`, `duration`, `classname`, `provider_id`, `active`, `practice_id`) values (\'Outreach Event Visit\', \'900\', \'colororange\', \'0\', \'y\', \'1\')','2019-02-05 22:42:31',1),(104,2,'Paul Bertucci',2,2,'Add','insert into `schedule` (`pid`, `start`, `end`, `title`, `visit_type`, `reason`, `status`, `provider_id`, `user_id`, `notes`, `timestamp`) values (\'2\', \'1549319400\', \'1549320300\', \'Bertucci, Donald (DOB: 01/21/2007) (ID: 2)\', \'Office Visit\', \'\', \'Pending\', \'2\', \'2\', \'\', \'\')','2019-02-05 22:42:55',1),(105,2,'Paul Bertucci',2,2,'Add','insert into `schedule` (`pid`, `start`, `end`, `title`, `visit_type`, `reason`, `status`, `provider_id`, `user_id`, `notes`, `timestamp`) values (\'2\', \'1549648800\', \'1549649700\', \'Bertucci, Donald (DOB: 01/21/2007) (ID: 2)\', \'Office Visit\', \'evaluate knee\\r\\n\', \'Pending\', \'2\', \'2\', \'\', \'\')','2019-02-05 22:43:50',1),(106,2,'Paul Bertucci',2,2,'Add','insert into `schedule` (`pid`, `start`, `end`, `title`, `visit_type`, `reason`, `status`, `provider_id`, `user_id`, `notes`, `timestamp`) values (\'1\', \'1549651500\', \'1549652400\', \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', \'Remote Clinic Visit\', \'Cleft Lip assessment\', \'Pending\', \'2\', \'2\', \'\', \'\')','2019-02-05 22:44:37',1),(107,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'2\', `start` = \'1549319400\', `end` = \'1549320300\', `title` = \'Bertucci, Donald (DOB: 01/21/2007) (ID: 2)\', `visit_type` = \'Office Visit\', `reason` = \'\', `status` = \'Attended\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'1\'','2019-02-05 22:45:23',1),(108,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'2\', `start` = \'1549648800\', `end` = \'1549649700\', `title` = \'Bertucci, Donald (DOB: 01/21/2007) (ID: 2)\', `visit_type` = \'Office Visit\', `reason` = \'evaluate knee\\r\\n\', `status` = \'Reminder Sent\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'2\'','2019-02-05 22:45:42',1),(109,2,'Paul Bertucci',2,2,'Add','insert into `encounters` (`pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`, `encounter_location`, `encounter_template`, `encounter_cc`, `encounter_role`, `encounter_provider`, `encounter_DOS`, `encounter_condition_work`, `encounter_condition_auto`) values (\'1\', \'3\', \'12 Years Old\', \'Remote Clinic Visit\', \'No\', \'n\', \'2\', \'1\', \'1\', \'medical\', \'Cleft Lip assessment\', \'Primary Care Provider\', \'Paul Bertucci\', \'2019-02-08 10:45:00\', \'No\', \'No\')','2019-02-05 22:45:50',1),(110,2,'Paul Bertucci',2,2,'Update','update `schedule` set `status` = \'Attended\' where `appt_id` = \'3\'','2019-02-05 22:45:50',1),(111,2,'Paul Bertucci',2,2,'Update','update `encounters` set `addendum_eid` = \'3\' where `eid` = \'3\'','2019-02-05 22:45:50',1),(112,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Cleft Lip assessment\' where `eid` = \'3\'','2019-02-05 22:45:53',1),(113,2,'Paul Bertucci',2,1,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'3\', \'1\', \'Paul Bertucci\')','2019-02-05 22:45:53',1),(114,2,'Paul Bertucci',2,1,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'3\', \'1\', \'Paul Bertucci\')','2019-02-05 22:45:53',1),(115,2,'Paul Bertucci',2,1,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'\', \'3\', \'1\', \'Paul Bertucci\')','2019-02-05 22:46:01',1),(116,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:46:47',1),(117,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:46:47',1),(118,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:46:47',1),(119,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'possible \' where `eid` = \'2\'','2019-02-05 22:46:52',1),(120,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'2\'','2019-02-05 22:46:58',1),(121,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'2\'','2019-02-05 22:46:58',1),(122,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'2\'','2019-02-05 22:46:58',1),(123,2,'Paul Bertucci',2,2,'Update','update `plan` set `plan` = \'possible surgery to re-attach tendon.\' where `eid` = \'2\'','2019-02-05 22:47:06',1),(124,2,'Paul Bertucci',2,2,'Update','update `plan` set `followup` = \'\' where `eid` = \'2\'','2019-02-05 22:47:06',1),(125,2,'Paul Bertucci',2,2,'Update','update `plan` set `duration` = \'\' where `eid` = \'2\'','2019-02-05 22:47:06',1),(126,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:47:13',1),(127,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:47:13',1),(128,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:47:13',1),(129,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-05 22:50:18',1),(130,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-05 22:50:18',1),(131,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-05 22:50:18',1),(132,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'2\', `weight` = \'25\', `height` = \'22\', `headcircumference` = \'\', `BMI` = \'21\', `temp` = \'98.6\', `temp_method` = \'Oral\', `bp_systolic` = \'115\', `bp_diastolic` = \'70\', `bp_position` = \'Sitting\', `pulse` = \'58\', `respirations` = \'9\', `o2_sat` = \'99\', `vitals_other` = \' - Desirable\' where `eid` = \'2\'','2019-02-05 22:50:40',1),(133,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'2\', `weight` = \'25\', `height` = \'22\', `headcircumference` = \'\', `BMI` = \'21\', `temp` = \'98.6\', `temp_method` = \'Oral\', `bp_systolic` = \'115\', `bp_diastolic` = \'70\', `bp_position` = \'Sitting\', `pulse` = \'58\', `respirations` = \'9\', `o2_sat` = \'99\', `vitals_other` = \' - Desirable\', `wt_percentile` = \'0\', `ht_percentile` = \'0\', `wt_ht_percentile` = \'0\', `bmi_percentile` = \'NAN\' where `eid` = \'2\'','2019-02-05 22:50:45',1),(134,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'2\', `weight` = \'7\', `height` = \'22\', `headcircumference` = \'\', `BMI` = \'21\', `temp` = \'98.6\', `temp_method` = \'Oral\', `bp_systolic` = \'115\', `bp_diastolic` = \'70\', `bp_position` = \'Sitting\', `pulse` = \'58\', `respirations` = \'9\', `o2_sat` = \'99\', `vitals_other` = \' - Desirable\' where `eid` = \'2\'','2019-02-05 22:52:04',1),(135,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'2\', `weight` = \'7\', `height` = \'22\', `headcircumference` = \'\', `BMI` = \'21\', `temp` = \'98.6\', `temp_method` = \'Oral\', `bp_systolic` = \'115\', `bp_diastolic` = \'70\', `bp_position` = \'Sitting\', `pulse` = \'58\', `respirations` = \'9\', `o2_sat` = \'99\', `vitals_other` = \' - Desirable\', `wt_percentile` = \'0\', `ht_percentile` = \'0\', `wt_ht_percentile` = \'0\', `bmi_percentile` = \'NAN\' where `eid` = \'2\'','2019-02-05 22:52:09',1),(136,2,'Paul Bertucci',2,2,'Update','update `demographics` set `photo` = \'/noshdocuments/2/IMG_4212_1549407373.JPG\' where `pid` = \'2\'','2019-02-05 22:56:13',1),(137,2,'Paul Bertucci',2,2,'Add','insert into `encounters` (`pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`, `encounter_location`, `encounter_template`, `encounter_cc`, `encounter_role`, `encounter_provider`, `encounter_DOS`, `encounter_condition_work`, `encounter_condition_auto`) values (\'2\', \'1\', \'12 Years Old\', \'Office Visit\', \'No\', \'n\', \'2\', \'1\', \'1\', \'medical\', \'\', \'Primary Care Provider\', \'Paul Bertucci\', \'2019-02-04 14:30:00\', \'No\', \'No\')','2019-02-05 23:02:49',1),(138,2,'Paul Bertucci',2,2,'Update','update `schedule` set `status` = \'Attended\' where `appt_id` = \'1\'','2019-02-05 23:02:49',1),(139,2,'Paul Bertucci',2,2,'Update','update `encounters` set `addendum_eid` = \'4\' where `eid` = \'4\'','2019-02-05 23:02:49',1),(140,2,'Paul Bertucci',2,2,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'\', \'4\', \'2\', \'Paul Bertucci\')','2019-02-05 23:02:57',1),(141,2,'Paul Bertucci',2,2,'Add','insert into `assessment` (`assessment_other`, `eid`, `pid`, `encounter_provider`) values (\'\', \'4\', \'2\', \'Paul Bertucci\')','2019-02-05 23:03:00',1),(142,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'4\'','2019-02-05 23:03:00',1),(143,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'4\'','2019-02-05 23:03:00',1),(144,2,'Paul Bertucci',2,2,'Add','insert into `plan` (`plan`, `eid`, `pid`, `encounter_provider`) values (\'\', \'4\', \'2\', \'Paul Bertucci\')','2019-02-05 23:03:02',1),(145,2,'Paul Bertucci',2,2,'Update','update `plan` set `followup` = \'\' where `eid` = \'4\'','2019-02-05 23:03:02',1),(146,2,'Paul Bertucci',2,2,'Update','update `plan` set `duration` = \'\' where `eid` = \'4\'','2019-02-05 23:03:02',1),(147,2,'Paul Bertucci',2,1,'Update','update `practiceinfo` set `practice_id` = \'1\', `weekends` = \'1\', `minTime` = \'08:00 AM\', `maxTime` = \'05:00 PM\', `timezone` = \'America/Los_Angeles\', `mon_o` = \'08:00 AM\', `mon_c` = \'05:00 PM\', `tue_o` = \'08:00 AM\', `tue_c` = \'05:00 PM\', `wed_o` = \'08:00 AM\', `wed_c` = \'05:00 PM\', `thu_o` = \'08:00 AM\', `thu_c` = \'05:00 PM\', `fri_o` = \'08:00 AM\', `fri_c` = \'05:00 PM\', `sat_o` = \'\', `sat_c` = \'\', `sun_o` = \'\', `sun_c` = \'\' where `practice_id` = \'1\'','2019-02-07 20:57:13',1),(148,2,'Paul Bertucci',2,1,'Add','insert into `encounters` (`encounter_provider`, `encounter_cc`, `encounter_template`, `encounter_DOS`, `encounter_location`, `encounter_role`, `pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`) values (\'Paul Bertucci\', \'Headache\', \'medical\', \'2019-02-07 15:40:00\', \'11\', \'Primary Care Provider\', \'1\', \'\', \'29 Years Old\', \'\', \'No\', \'n\', \'2\', \'1\')','2019-02-07 23:40:40',1),(149,2,'Paul Bertucci',2,1,'Update','update `encounters` set `addendum_eid` = \'5\' where `eid` = \'5\'','2019-02-07 23:40:40',1),(150,2,'Paul Bertucci',2,1,'Add','insert into `rx_list` (`rxl_id`, `rxl_medication`, `rxl_dosage`, `rxl_dosage_unit`, `rxl_sig`, `rxl_route`, `rxl_frequency`, `rxl_instructions`, `rxl_reason`, `rxl_date_active`, `rxl_ndcid`, `rxl_date_inactive`, `rxl_provider`, `rxl_date_prescribed`, `rxl_date_old`, `rxl_days`, `rxl_quantity`, `rxl_refill`, `id`, `rcopia_sync`, `reconcile`, `rxl_license`, `rxl_dea`, `rxl_daw`, `prescription`, `pid`) values (\'\', \'Acetaminophen 160 MG/ML Oral Suspension\', \'160\', \'MG/ML\', \'\', \'Oral route\', \'\', \'\', \'headache\', \'2019-02-07 00:00:00\', \'00363000805\', \'\', \'Paul Bertucci\', \'2019-02-07\', \'\', \'\', \'100\', \'1\', \'2\', \'n\', \'y\', \' - \', \'\', \'\', \'pending\', \'1\')','2019-02-07 23:42:11',1),(151,2,'Paul Bertucci',2,1,'Update','update `rx_list` set `json` = \'{\\\"resourceType\\\":\\\"MedicationRequest\\\",\\\"text\\\":{\\\"status\\\":\\\"generated\\\",\\\"div\\\":\\\"<div>Acetaminophen 160 MG\\/ML Oral Suspension 160 MG\\/ML,  for headache<\\/div>\\\"},\\\"id\\\":1,\\\"intent\\\":\\\"order\\\",\\\"priority\\\":\\\"routine\\\",\\\"subject\\\":{\\\"reference\\\":\\\"Patient\\/1\\\",\\\"display\\\":\\\"John Sample\\\"},\\\"requester\\\":{\\\"agent\\\":{\\\"reference\\\":\\\"Practitioner\\/2\\\",\\\"display\\\":\\\"Paul Bertucci\\\"},\\\"onBehalfOf\\\":{\\\"reference\\\":\\\"Organization\\/1\\\"}},\\\"dateWritten\\\":\\\"2019-02-07\\\",\\\"medicationReference\\\":{\\\"reference\\\":\\\"Medication\\/00363000805\\\",\\\"display\\\":\\\"Acetaminophen 100 MG\\/ML Oral Suspension\\\"},\\\"reasonCodeableConcept\\\":{\\\"coding\\\":[{\\\"system\\\":\\\"http:\\/\\/snomed.info\\/sct\\\",\\\"code\\\":\\\"25064002\\\",\\\"display\\\":\\\"Headache\\\"}]},\\\"status\\\":\\\"active\\\",\\\"dosageInstruction\\\":[{\\\"text\\\":\\\" for headache\\\",\\\"asNeededBoolean\\\":false,\\\"quantityQuantity\\\":{\\\"value\\\":\\\"100\\\"},\\\"doseQuantity\\\":{\\\"value\\\":\\\"160\\\",\\\"unit\\\":\\\"MG\\/ML\\\"}}],\\\"dispenseRequest\\\":{\\\"medicationReference\\\":{\\\"reference\\\":\\\"Medication\\/00363000805\\\",\\\"display\\\":\\\"Acetaminophen 100 MG\\/ML Oral Suspension\\\"},\\\"validityPeriod\\\":{\\\"start\\\":\\\"2019-02-07\\\",\\\"end\\\":\\\"2020-02-07\\\"},\\\"numberOfRepeatsAllowed\\\":\\\"1\\\",\\\"quantity\\\":{\\\"value\\\":\\\"100\\\"},\\\"expectedSupplyDuration\\\":{\\\"value\\\":0,\\\"unit\\\":\\\"days\\\",\\\"system\\\":\\\"http:\\/\\/unitsofmeasure.org\\\",\\\"code\\\":\\\"d\\\"}},\\\"substitution\\\":{\\\"allowed\\\":true}}\' where `rxl_id` = \'1\'','2019-02-07 23:42:14',1),(152,2,'Paul Bertucci',2,1,'Add','insert into `rx` (`eid`, `pid`, `encounter_provider`, `rx_rx`, `rx_orders_summary`) values (\'5\', \'1\', \'Paul Bertucci\', \'PRESCRIBED MEDICATIONS:  \\nAcetaminophen 160 MG/ML Oral Suspension 160 MG/ML,  for headache, Quantity: 100, Refills: 1\', \'PRESCRIBED MEDICATIONS:  \\nAcetaminophen 160 MG/ML Oral Suspension 160 MG/ML,  for headache, Quantity: 100, Refills: 1\')','2019-02-07 23:42:14',1),(153,2,'Paul Bertucci',2,1,'Add','insert into `tests` (`test_type`, `test_name`, `test_result`, `test_units`, `test_reference`, `test_flags`, `test_datetime`, `test_from`, `test_code`, `test_provider_id`, `pid`) values (\'Laboratory\', \'Hemoglobin\', \'normal\', \'n/a\', \'\', \'\', \'2019-02-07 00:00:00\', \'\', \'\', \'2\', \'1\')','2019-02-07 23:44:16',1),(154,2,'Paul Bertucci',2,1,'Add','insert into `other_history` (`eid`, `pid`) values (\'0\', \'1\')','2019-02-07 23:44:28',1),(155,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-07 23:46:08',1),(156,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-07 23:46:08',1),(157,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-07 23:46:08',1),(158,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'2\'','2019-02-07 23:48:38',1),(159,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'2\'','2019-02-07 23:48:38',1),(160,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'2\'','2019-02-07 23:48:38',1),(161,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'2\'','2019-02-07 23:48:46',1),(162,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'2\'','2019-02-07 23:48:46',1),(163,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'2\'','2019-02-07 23:48:46',1),(164,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'possible \' where `eid` = \'2\'','2019-02-07 23:48:59',1),(165,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_signed` = \'Yes\', `date_signed` = \'2019-02-07 15:49:06\' where `eid` = \'2\'','2019-02-07 23:49:06',1),(166,2,'Paul Bertucci',2,2,'Update','update `demographics` set `pid` = \'2\', `lastname` = \'Bertucci\', `firstname` = \'Donald\', `nickname` = \'\', `middle` = \'\', `title` = \'\', `DOB` = \'2018-01-21 00:00:00\', `sex` = \'m\', `patient_id` = \'\', `ss` = \'\', `race` = \'\', `race_code` = \'\', `marital_status` = \'Single\', `partner_name` = \'\', `employer` = \'\', `ethnicity` = \'\', `ethnicity_code` = \'\', `caregiver` = \'\', `active` = \'1\', `referred_by` = \'\', `language` = \'\', `lang_code` = \'\' where `pid` = \'2\'','2019-02-07 23:49:57',1),(167,2,'Paul Bertucci',2,2,'Update','update `schedule` set `title` = \'Bertucci, Donald (DOB: 01/21/2018) (ID: 2)\' where `appt_id` = \'1\'','2019-02-07 23:49:57',1),(168,2,'Paul Bertucci',2,2,'Update','update `schedule` set `title` = \'Bertucci, Donald (DOB: 01/21/2018) (ID: 2)\' where `appt_id` = \'2\'','2019-02-07 23:49:57',1),(169,2,'Paul Bertucci',2,2,'Add','insert into `vitals` (`eid`, `weight`, `height`, `headcircumference`, `BMI`, `temp`, `temp_method`, `bp_systolic`, `bp_diastolic`, `bp_position`, `pulse`, `respirations`, `o2_sat`, `vitals_other`, `pedsage`, `vitals_age`, `vitals_date`, `pid`) values (\'4\', \'25\', \'22\', \'\', \'36\', \'\', \'Oral\', \'\', \'\', \'Sitting\', \'\', \'\', \'\', \' - Obese\', \'12.471865121421\', \'1.0393217641034\', \'2019-02-04 14:30:00\', \'2\')','2019-02-07 23:52:21',1),(170,2,'Paul Bertucci',2,2,'Update','update `vitals` set `eid` = \'4\', `weight` = \'25\', `height` = \'22\', `headcircumference` = \'\', `BMI` = \'36\', `temp` = \'\', `temp_method` = \'Oral\', `bp_systolic` = \'\', `bp_diastolic` = \'\', `bp_position` = \'Sitting\', `pulse` = \'\', `respirations` = \'\', `o2_sat` = \'\', `vitals_other` = \' - Obese\', `pedsage` = \'12.471865121421\', `vitals_age` = \'1.0393217641034\', `vitals_date` = \'2019-02-04 14:30:00\', `pid` = \'2\', `wt_percentile` = \'92\', `ht_percentile` = \'0\', `wt_ht_percentile` = \'0\' where `eid` = \'0\'','2019-02-07 23:52:24',1),(171,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-08 00:02:35',1),(172,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-08 00:02:35',1),(173,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-08 00:02:35',1),(174,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-08 00:02:41',1),(175,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-08 00:02:44',1),(176,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-08 00:02:44',1),(177,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-08 00:02:44',1),(178,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Cleft Lip assessment\' where `eid` = \'3\'','2019-02-08 00:03:31',1),(179,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'3\'','2019-02-08 00:03:31',1),(180,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'3\'','2019-02-08 00:03:31',1),(181,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'\' where `eid` = \'4\'','2019-02-08 00:03:55',1),(182,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'\' where `eid` = \'4\'','2019-02-08 00:06:47',1),(183,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'4\'','2019-02-08 00:07:00',1),(184,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'4\'','2019-02-08 00:07:00',1),(185,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'4\'','2019-02-08 00:07:00',1),(186,2,'Paul Bertucci',2,2,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/2/image_1549584447.png\', \'2\', \'\', \'2\', \'Paul Bertucci\', \'4\')','2019-02-08 00:07:27',1),(187,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'\' where `eid` = \'3\'','2019-02-08 00:07:52',1),(188,2,'Paul Bertucci',2,2,'Update','update `plan` set `plan` = \'\' where `eid` = \'4\'','2019-02-08 00:08:18',1),(189,2,'Paul Bertucci',2,2,'Update','update `plan` set `followup` = \'\' where `eid` = \'4\'','2019-02-08 00:08:18',1),(190,2,'Paul Bertucci',2,2,'Update','update `plan` set `duration` = \'\' where `eid` = \'4\'','2019-02-08 00:08:18',1),(191,2,'Paul Bertucci',2,2,'Update','update `image` set `image_location` = \'/noshdocuments/2/image_1549584535.png\', `pid` = \'2\', `image_description` = \'\', `id` = \'2\', `encounter_provider` = \'Paul Bertucci\', `eid` = \'4\' where `image_id` = \'6\'','2019-02-08 00:08:56',1),(192,2,'Paul Bertucci',2,2,'Update','update `plan` set `plan` = \'\' where `eid` = \'4\'','2019-02-08 00:09:06',1),(193,2,'Paul Bertucci',2,2,'Update','update `plan` set `followup` = \'\' where `eid` = \'4\'','2019-02-08 00:09:06',1),(194,2,'Paul Bertucci',2,2,'Update','update `plan` set `duration` = \'\' where `eid` = \'4\'','2019-02-08 00:09:06',1),(195,2,'Paul Bertucci',2,2,'Update','update `demographics` set `photo` = \'/noshdocuments/2/Day 2 Unilateral cleft lip_1549585249.JPG\' where `pid` = \'2\'','2019-02-08 00:20:49',1),(196,2,'Paul Bertucci',2,2,'Update','update `image` set `image_location` = \'/noshdocuments/2/image_1549584535.png\', `pid` = \'2\', `image_description` = \'\', `id` = \'2\', `encounter_provider` = \'Paul Bertucci\', `eid` = \'4\' where `image_id` = \'6\'','2019-02-08 00:23:14',1),(197,2,'Paul Bertucci',2,1,'Add','insert into `tags` (`tag`) values (\'Sampletag\')','2019-02-08 01:04:04',1),(198,2,'Paul Bertucci',2,1,'Add','insert into `tags_relate` (`tags_id`, `eid`, `pid`, `practice_id`) values (\'1\', \'1\', \'1\', \'1\')','2019-02-08 01:04:04',1),(199,2,'Paul Bertucci',2,1,'Delete','delete from `tags_relate` where `tags_id` = \'1\' and `eid` = \'1\'','2019-02-08 01:04:22',1),(200,2,'Paul Bertucci',2,1,'Add','insert into `encounters` (`encounter_provider`, `encounter_cc`, `encounter_template`, `encounter_DOS`, `encounter_location`, `encounter_role`, `pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`) values (\'Paul Bertucci\', \'jjjj\', \'medical\', \'2019-02-07 17:05:00\', \'1\', \'Primary Care Provider\', \'1\', \'\', \'29 Years Old\', \'\', \'No\', \'n\', \'2\', \'1\')','2019-02-08 01:05:14',1),(201,2,'Paul Bertucci',2,1,'Update','update `encounters` set `addendum_eid` = \'6\' where `eid` = \'6\'','2019-02-08 01:05:14',1),(202,2,'Paul Bertucci',2,1,'Add','insert into `tags` (`tag`) values (\'first\')','2019-02-08 01:05:31',1),(203,2,'Paul Bertucci',2,1,'Add','insert into `tags_relate` (`tags_id`, `eid`, `pid`, `practice_id`) values (\'2\', \'6\', \'1\', \'1\')','2019-02-08 01:05:31',1),(204,2,'Paul Bertucci',2,1,'Delete','delete from `tags_relate` where `tags_id` = \'2\' and `eid` = \'6\'','2019-02-08 01:09:56',1),(205,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-08 01:26:48',1),(206,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-08 01:26:48',1),(207,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-08 01:26:48',1),(208,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'1\'','2019-02-08 01:26:50',1),(209,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'1\'','2019-02-08 01:26:50',1),(210,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'1\'','2019-02-08 01:26:50',1),(211,2,'Paul Bertucci',2,1,'Update','update `plan` set `plan` = \'\' where `eid` = \'1\'','2019-02-08 01:27:00',1),(212,2,'Paul Bertucci',2,1,'Update','update `plan` set `followup` = \'\' where `eid` = \'1\'','2019-02-08 01:27:00',1),(213,2,'Paul Bertucci',2,1,'Update','update `plan` set `duration` = \'\' where `eid` = \'1\'','2019-02-08 01:27:00',1),(214,2,'Paul Bertucci',2,1,'Add','insert into `demographics` (`lastname`, `firstname`, `DOB`, `sex`, `active`, `sexuallyactive`, `tobacco`, `pregnant`) values (\'Jane\', \'Sample\', \'1989-08-30\', \'f\', \'1\', \'no\', \'no\', \'no\')','2019-02-08 01:28:29',1),(215,2,'Paul Bertucci',2,1,'Add','insert into `demographics_notes` (`billing_notes`, `imm_notes`, `pid`, `practice_id`) values (\'\', \'\', \'3\', \'1\')','2019-02-08 01:28:29',1),(216,2,'Paul Bertucci',2,1,'Add','insert into `demographics_relate` (`pid`, `practice_id`) values (\'3\', \'1\')','2019-02-08 01:28:29',1),(217,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'5\'','2019-02-09 04:19:26',1),(218,2,'Paul Bertucci',2,1,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'5\', \'1\', \'Paul Bertucci\')','2019-02-09 04:19:26',1),(219,2,'Paul Bertucci',2,1,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'5\', \'1\', \'Paul Bertucci\')','2019-02-09 04:19:26',1),(220,2,'Paul Bertucci',2,1,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/1/image_1549685996.png\', \'1\', \'\', \'2\', \'Paul Bertucci\', \'5\')','2019-02-09 04:19:56',1),(221,2,'Paul Bertucci',2,1,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'\', \'5\', \'1\', \'Paul Bertucci\')','2019-02-09 04:20:05',1),(222,2,'Paul Bertucci',2,2,'Add','insert into `encounters` (`encounter_provider`, `encounter_cc`, `encounter_template`, `encounter_DOS`, `encounter_location`, `encounter_role`, `pid`, `appt_id`, `encounter_age`, `encounter_type`, `encounter_signed`, `addendum`, `user_id`, `practice_id`) values (\'Paul Bertucci\', \'Headache\', \'medical\', \'2019-02-08 20:44:00\', \'15\', \'Primary Care Provider\', \'2\', \'\', \'1 Year Old\', \'\', \'No\', \'n\', \'2\', \'1\')','2019-02-09 04:45:13',1),(223,2,'Paul Bertucci',2,2,'Update','update `encounters` set `addendum_eid` = \'7\' where `eid` = \'7\'','2019-02-09 04:45:13',1),(224,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'7\'','2019-02-09 04:45:44',1),(225,2,'Paul Bertucci',2,2,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'7\', \'2\', \'Paul Bertucci\')','2019-02-09 04:45:44',1),(226,2,'Paul Bertucci',2,2,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'7\', \'2\', \'Paul Bertucci\')','2019-02-09 04:45:44',1),(227,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'jjjj\' where `eid` = \'6\'','2019-02-09 04:48:52',1),(228,2,'Paul Bertucci',2,1,'Add','insert into `hpi` (`hpi`, `eid`, `pid`, `encounter_provider`) values (\'\', \'6\', \'1\', \'Paul Bertucci\')','2019-02-09 04:48:52',1),(229,2,'Paul Bertucci',2,1,'Add','insert into `ros` (`ros`, `eid`, `pid`, `encounter_provider`) values (\'\', \'6\', \'1\', \'Paul Bertucci\')','2019-02-09 04:48:52',1),(230,2,'Paul Bertucci',2,1,'Add','insert into `image` (`image_location`, `pid`, `image_description`, `id`, `encounter_provider`, `eid`) values (\'/noshdocuments/1/15496877475064748926969012532066_1549687778.jpg\', \'1\', \'Photo Uploaded February 8th, 2019\', \'2\', \'Paul Bertucci\', \'6\')','2019-02-09 04:49:38',1),(231,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'7\'','2019-02-09 04:52:55',1),(232,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'7\'','2019-02-09 04:52:55',1),(233,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'7\'','2019-02-09 04:52:55',1),(234,2,'Paul Bertucci',2,1,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'So I find that this is not a good patient we should throw them on the street I had so I can just do my voice rec this way and it\\\'s all part of the record I read so\', \'6\', \'1\', \'Paul Bertucci\')','2019-02-09 04:53:31',1),(235,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'So I find that this is not a good patient we should throw them on the street I had so I can just do my voice rec this way and it\\\'s all part of the record I read so\' where `eid` = \'6\'','2019-02-09 04:53:50',1),(236,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-09 04:54:42',1),(237,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-09 04:54:42',1),(238,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-09 04:54:42',1),(239,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-09 04:54:45',1),(240,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'1\'','2019-02-09 04:54:50',1),(241,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'1\'','2019-02-09 04:54:50',1),(242,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'1\'','2019-02-09 04:54:50',1),(243,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-16 01:07:12',1),(244,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-16 01:07:12',1),(245,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-16 01:07:12',1),(246,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-16 01:07:25',1),(247,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-16 01:07:45',1),(248,2,'Paul Bertucci',2,1,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'1\'','2019-02-16 01:09:33',1),(249,2,'Paul Bertucci',2,1,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'1\'','2019-02-16 01:09:33',1),(250,2,'Paul Bertucci',2,1,'Update','update `ros` set `ros` = \'\' where `eid` = \'1\'','2019-02-16 01:09:33',1),(251,2,'Paul Bertucci',2,1,'Update','update `pe` set `pe` = \'\' where `eid` = \'1\'','2019-02-16 01:09:36',1),(252,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_other` = \'\' where `eid` = \'1\'','2019-02-16 01:09:40',1),(253,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'1\'','2019-02-16 01:09:40',1),(254,2,'Paul Bertucci',2,1,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'1\'','2019-02-16 01:09:40',1),(255,2,'Paul Bertucci',2,1,'Update','update `plan` set `plan` = \'\' where `eid` = \'1\'','2019-02-16 01:11:15',1),(256,2,'Paul Bertucci',2,1,'Update','update `plan` set `followup` = \'\' where `eid` = \'1\'','2019-02-16 01:11:15',1),(257,2,'Paul Bertucci',2,1,'Update','update `plan` set `duration` = \'\' where `eid` = \'1\'','2019-02-16 01:11:15',1),(258,2,'Paul Bertucci',2,3,'Update','update `demographics` set `registration_code` = \'FdWYgO\' where `pid` = \'3\'','2019-02-16 01:13:50',1),(259,2,'Paul Bertucci',2,2,'Add','insert into `encounters` (`pid`, `appt_id`, `encounter_provider`, `encounter_date`, `date_signed`, `encounter_DOS`, `encounter_age`, `encounter_type`, `encounter_location`, `encounter_activity`, `encounter_cc`, `encounter_condition`, `encounter_condition_work`, `encounter_condition_auto`, `encounter_condition_auto_state`, `encounter_condition_other`, `bill_submitted`, `addendum`, `addendum_eid`, `user_id`, `encounter_role`, `referring_provider`, `practice_id`, `referring_provider_npi`, `encounter_template`, `bill_complex`, `label`, `encounter_condition_auto_country`, `encounter_signed`) values (\'2\', \'0\', \'Paul Bertucci\', \'2019-02-07 23:49:06\', \'2019-02-07 15:49:06\', \'2019-02-05 14:04:00\', \'12 Years Old\', \'\', \'23\', \'\', \'pain in his right knee from football game this past saturday\', \'\', \'\', \'\', \'\', \'\', \'\', \'n\', \'2\', \'2\', \'Primary Care Provider\', \'\', \'1\', \'\', \'medical\', \'\', \'\', \'United States\', \'No\')','2019-02-16 01:15:33',1),(260,2,'Paul Bertucci',2,2,'Update','update `encounters` set `addendum` = \'y\' where `eid` = \'2\'','2019-02-16 01:15:33',1),(261,2,'Paul Bertucci',2,2,'Add','insert into `hpi` (`pid`, `encounter_provider`, `hpi_date`, `hpi`, `situation`, `forms`, `eid`) values (\'2\', \'Paul Bertucci\', \'2019-02-05 22:05:24\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(262,2,'Paul Bertucci',2,2,'Add','insert into `ros` (`pid`, `encounter_provider`, `ros_date`, `ros_gen`, `ros_eye`, `ros_ent`, `ros_resp`, `ros_cv`, `ros_gi`, `ros_gu`, `ros_mus`, `ros_neuro`, `ros_psych`, `ros_heme`, `ros_endocrine`, `ros_skin`, `ros_wcc`, `ros_psych1`, `ros_psych2`, `ros_psych3`, `ros_psych4`, `ros_psych5`, `ros_psych6`, `ros_psych7`, `ros_psych8`, `ros_psych9`, `ros_psych10`, `ros_psych11`, `ros`, `eid`) values (\'2\', \'Paul Bertucci\', \'2019-02-05 22:05:24\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(263,2,'Paul Bertucci',2,2,'Add','insert into `vitals` (`pid`, `encounter_provider`, `vitals_date`, `vitals_age`, `pedsage`, `weight`, `height`, `headcircumference`, `BMI`, `temp`, `temp_method`, `bp_systolic`, `bp_diastolic`, `bp_position`, `pulse`, `respirations`, `o2_sat`, `vitals_other`, `wt_percentile`, `ht_percentile`, `hc_percentile`, `wt_ht_percentile`, `bmi_percentile`, `eid`) values (\'2\', \'\', \'2019-02-05 14:04:00\', \'12\', \'144.515201675601\', \'7\', \'22\', \'\', \'21\', \'98.6\', \'Oral\', \'115\', \'70\', \'Sitting\', \'58\', \'9\', \'99\', \' - Desirable\', \'0\', \'0\', \'\', \'0\', \'NAN\', \'8\')','2019-02-16 01:15:33',1),(264,2,'Paul Bertucci',2,2,'Add','insert into `pe` (`pid`, `encounter_provider`, `pe_date`, `pe_gen1`, `pe_eye1`, `pe_eye2`, `pe_eye3`, `pe_ent1`, `pe_ent2`, `pe_ent3`, `pe_ent4`, `pe_ent5`, `pe_ent6`, `pe_neck1`, `pe_neck2`, `pe_resp1`, `pe_resp2`, `pe_resp3`, `pe_resp4`, `pe_cv1`, `pe_cv2`, `pe_cv3`, `pe_cv4`, `pe_cv5`, `pe_cv6`, `pe_ch1`, `pe_ch2`, `pe_gi1`, `pe_gi2`, `pe_gi3`, `pe_gi4`, `pe_gu1`, `pe_gu2`, `pe_gu3`, `pe_gu4`, `pe_gu5`, `pe_gu6`, `pe_gu7`, `pe_gu8`, `pe_gu9`, `pe_lymph1`, `pe_lymph2`, `pe_lymph3`, `pe_ms1`, `pe_ms2`, `pe_ms3`, `pe_ms4`, `pe_ms5`, `pe_ms6`, `pe_ms7`, `pe_ms8`, `pe_ms9`, `pe_ms10`, `pe_ms11`, `pe_ms12`, `pe_skin1`, `pe_skin2`, `pe_neuro1`, `pe_neuro2`, `pe_neuro3`, `pe_psych1`, `pe_psych2`, `pe_psych3`, `pe_psych4`, `pe_constitutional1`, `pe_mental1`, `pe`, `eid`) values (\'2\', \'Paul Bertucci\', \'2019-02-05 22:09:06\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'possible \', \'8\')','2019-02-16 01:15:33',1),(265,2,'Paul Bertucci',2,2,'Add','insert into `assessment` (`pid`, `encounter_provider`, `assessment_date`, `assessment_icd1`, `assessment_icd2`, `assessment_icd3`, `assessment_icd4`, `assessment_icd5`, `assessment_icd6`, `assessment_icd7`, `assessment_icd8`, `assessment_1`, `assessment_2`, `assessment_3`, `assessment_4`, `assessment_5`, `assessment_6`, `assessment_7`, `assessment_8`, `assessment_other`, `assessment_ddx`, `assessment_notes`, `assessment_icd9`, `assessment_icd10`, `assessment_icd11`, `assessment_icd12`, `assessment_9`, `assessment_10`, `assessment_11`, `assessment_12`, `eid`) values (\'2\', \'Paul Bertucci\', \'2019-02-05 22:10:21\', \'M22.01\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'Recurrent dislocation of patella, right knee\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(266,2,'Paul Bertucci',2,2,'Add','insert into `plan` (`pid`, `encounter_provider`, `plan_date`, `plan`, `duration`, `followup`, `goals`, `tp`, `eid`) values (\'2\', \'Paul Bertucci\', \'2019-02-05 22:10:46\', \'possible surgery to re-attach tendon.\', \'\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(267,2,'Paul Bertucci',2,2,'Add','insert into `other_history` (`pid`, `encounter_provider`, `oh_date`, `oh_pmh`, `oh_psh`, `oh_fh`, `oh_sh`, `oh_etoh`, `oh_tobacco`, `oh_drugs`, `oh_employment`, `oh_meds`, `oh_supplements`, `oh_allergies`, `oh_psychosocial`, `oh_developmental`, `oh_medtrials`, `oh_results`, `oh_diet`, `oh_physical_activity`, `label`, `eid`) values (\'2\', \'\', \'2019-02-07 23:46:53\', \'\\nReviewed by Paul Bertucci on 2019-02-07\', \'\\nReviewed by Paul Bertucci on 2019-02-07\', \'---\\n- \\n  Name: Paul Bertucci\\n  Relationship: Father\\n  Status: Alive\\n  Gender: Male\\n  Date of Birth: 1976-05-01\\n  Marital Status: Divorced\\n  Mother:\\n  Father:\\n  Medical:\\n- \\n  Name: vilay sithongkang\\n  Relationship: Mother\\n  Status: Alive\\n  Gender: Female\\n  Date of Birth: 1979-10-11\\n  Marital Status: Single\\n  Mother:\\n  Father:\\n  Medical:\\n\', \'\', \'\', \'\', \'\', \'\', \'\', \'\\nReviewed by Paul Bertucci on 2019-02-05\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(268,2,'Paul Bertucci',2,2,'Add','insert into `image` (`pid`, `id`, `encounter_provider`, `image_date`, `image_location`, `image_description`, `message_id`, `t_messages_id`, `label`, `eid`) values (\'2\', \'2\', \'Paul Bertucci\', \'2019-02-05 22:08:22\', \'/noshdocuments/2/image_1549404502.png\', \'Pain Location (right knee, upper cartilage)\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(269,2,'Paul Bertucci',2,2,'Add','insert into `image` (`pid`, `id`, `encounter_provider`, `image_date`, `image_location`, `image_description`, `message_id`, `t_messages_id`, `label`, `eid`) values (\'2\', \'2\', \'Paul Bertucci\', \'2019-02-05 22:18:09\', \'/noshdocuments/2/15494050562334728006305539374217_1549405089.jpg\', \'Photo Uploaded February 5th, 2019\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(270,2,'Paul Bertucci',2,2,'Add','insert into `image` (`pid`, `id`, `encounter_provider`, `image_date`, `image_location`, `image_description`, `message_id`, `t_messages_id`, `label`, `eid`) values (\'2\', \'2\', \'Paul Bertucci\', \'2019-02-05 22:28:56\', \'/noshdocuments/2/image_1549405736.png\', \'Photo Uploaded February 5th, 2019\', \'\', \'\', \'\', \'8\')','2019-02-16 01:15:33',1),(271,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'pain in his right knee from football game this past saturday\' where `eid` = \'8\'','2019-02-16 01:15:36',1),(272,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'8\'','2019-02-16 01:15:36',1),(273,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'8\'','2019-02-16 01:15:36',1),(274,2,'Paul Bertucci',2,2,'Update','update `image` set `image_location` = \'/noshdocuments/2/image_1550279759.png\', `pid` = \'2\', `image_description` = \'Photo Uploaded February 5th, 2019\', `id` = \'2\', `encounter_provider` = \'Paul Bertucci\', `eid` = \'8\' where `image_id` = \'11\'','2019-02-16 01:15:59',1),(275,2,'Paul Bertucci',2,2,'Update','update `practiceinfo` set `practice_id` = \'1\', `primary_contact` = \'\', `npi` = \'\', `medicare` = \'\', `tax_id` = \'\', `default_pos_id` = \'1\', `documents_dir` = \'/noshdocuments/\', `weight_unit` = \'kg\', `height_unit` = \'cm\', `temp_unit` = \'C\', `hc_unit` = \'cm\', `encounter_template` = \'medical\', `additional_message` = \'\', `reminder_interval` = \'24\' where `practice_id` = \'1\'','2019-02-23 01:26:22',1),(276,2,'Paul Bertucci',2,2,'Delete','delete from `issues` where `issue_id` = \'1\'','2019-02-23 01:32:56',1),(277,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'7\'','2019-02-23 01:34:35',1),(278,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'7\'','2019-02-23 01:34:35',1),(279,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'7\'','2019-02-23 01:34:35',1),(280,2,'Paul Bertucci',2,2,'Add','insert into `pe` (`pe`, `eid`, `pid`, `encounter_provider`) values (\'\', \'7\', \'2\', \'Paul Bertucci\')','2019-02-23 01:35:00',1),(281,2,'Paul Bertucci',2,2,'Update','update `encounters` set `encounter_cc` = \'Headache\' where `eid` = \'7\'','2019-02-23 01:35:40',1),(282,2,'Paul Bertucci',2,2,'Update','update `hpi` set `hpi` = \'\' where `eid` = \'7\'','2019-02-23 01:35:40',1),(283,2,'Paul Bertucci',2,2,'Update','update `ros` set `ros` = \'\' where `eid` = \'7\'','2019-02-23 01:35:40',1),(284,2,'Paul Bertucci',2,2,'Update','update `pe` set `pe` = \'\' where `eid` = \'7\'','2019-02-23 01:35:52',1),(285,2,'Paul Bertucci',2,2,'Add','insert into `assessment` (`assessment_other`, `eid`, `pid`, `encounter_provider`) values (\'\', \'7\', \'2\', \'Paul Bertucci\')','2019-02-23 01:35:56',1),(286,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_ddx` = \'\' where `eid` = \'7\'','2019-02-23 01:35:57',1),(287,2,'Paul Bertucci',2,2,'Update','update `assessment` set `assessment_notes` = \'\' where `eid` = \'7\'','2019-02-23 01:35:57',1),(288,2,'Paul Bertucci',2,2,'Add','insert into `schedule` (`pid`, `start`, `end`, `title`, `visit_type`, `reason`, `status`, `provider_id`, `user_id`, `notes`, `timestamp`) values (\'1\', \'1551114000\', \'1551114900\', \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', \'Remote Clinic Visit\', \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', \'Pending\', \'2\', \'2\', \'\', \'\')','2019-02-23 02:42:10',1),(289,2,'Paul Bertucci',2,2,'Update','update `schedule` set `start` = \'1551114000\', `end` = \'1551118500\' where `appt_id` = \'4\'','2019-02-23 02:43:29',1),(290,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'Pending\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:43:54',1),(291,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'Pending\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:44:26',1),(292,2,'Paul Bertucci',2,2,'Update','update `schedule` set `start` = \'1551114000\', `end` = \'1551118500\' where `appt_id` = \'4\'','2019-02-23 02:44:32',1),(293,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'Pending\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:44:43',1),(294,2,'Paul Bertucci',2,2,'Update','update `schedule` set `start` = \'1551114000\', `end` = \'1551120300\' where `appt_id` = \'4\'','2019-02-23 02:44:52',1),(295,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'Pending\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:46:17',1),(296,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'Pending\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:46:41',1),(297,2,'Paul Bertucci',2,2,'Update','update `schedule` set `pid` = \'1\', `start` = \'1551114000\', `end` = \'1551114900\', `title` = \'Sample, John,  (DOB: 08/30/1989) (ID: 1)\', `visit_type` = \'Remote Clinic Visit\', `reason` = \'cleft bi-lateral full\\r\\nAGE: 14 months\\r\\nHEM: 9999.99\', `status` = \'\', `provider_id` = \'2\', `user_id` = \'2\', `notes` = \'\' where `appt_id` = \'4\'','2019-02-23 02:47:35',1),(298,2,'Paul Bertucci',2,2,'Update','update `schedule` set `start` = \'1551114000\', `end` = \'1551121200\' where `appt_id` = \'4\'','2019-02-23 02:47:49',1);
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `bill_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `insurance_id_1` int(11) DEFAULT NULL,
  `insurance_id_2` int(11) DEFAULT NULL,
  `bill_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bill_complex` varchar(255) DEFAULT NULL,
  `bill_Box11C` varchar(29) DEFAULT NULL,
  `bill_payor_id` varchar(5) DEFAULT NULL,
  `bill_ins_add1` varchar(29) DEFAULT NULL,
  `bill_ins_add2` varchar(29) DEFAULT NULL,
  `bill_Box1` varchar(45) DEFAULT NULL,
  `bill_Box1P` varchar(45) DEFAULT NULL,
  `bill_Box1A` varchar(29) DEFAULT NULL,
  `bill_Box2` varchar(28) DEFAULT NULL,
  `bill_Box3A` varchar(10) DEFAULT NULL,
  `bill_Box3B` varchar(6) DEFAULT NULL,
  `bill_Box3BP` varchar(6) DEFAULT NULL,
  `bill_Box4` varchar(29) DEFAULT NULL,
  `bill_Box5A` varchar(28) DEFAULT NULL,
  `bill_Box6` varchar(15) DEFAULT NULL,
  `bill_Box6P` varchar(15) DEFAULT NULL,
  `bill_Box7A` varchar(29) DEFAULT NULL,
  `bill_Box5B` varchar(24) DEFAULT NULL,
  `bill_Box5C` varchar(3) DEFAULT NULL,
  `bill_Box8A` varchar(13) DEFAULT NULL,
  `bill_Box8AP` varchar(13) DEFAULT NULL,
  `bill_Box7B` varchar(23) DEFAULT NULL,
  `bill_Box7C` varchar(4) DEFAULT NULL,
  `bill_Box5D` varchar(12) DEFAULT NULL,
  `bill_Box5E` varchar(14) DEFAULT NULL,
  `bill_Box8B` varchar(13) DEFAULT NULL,
  `bill_Box8BP` varchar(13) DEFAULT NULL,
  `bill_Box7D` varchar(12) DEFAULT NULL,
  `bill_Box7E` varchar(14) DEFAULT NULL,
  `bill_Box9` varchar(28) DEFAULT NULL,
  `bill_Box11` varchar(29) DEFAULT NULL,
  `bill_Box9A` varchar(28) DEFAULT NULL,
  `bill_Box10` varchar(19) DEFAULT NULL,
  `bill_Box10A` varchar(7) DEFAULT NULL,
  `bill_Box10AP` varchar(7) DEFAULT NULL,
  `bill_Box11A1` varchar(10) DEFAULT NULL,
  `bill_Box11A2` varchar(8) DEFAULT NULL,
  `bill_Box11A2P` varchar(8) DEFAULT NULL,
  `bill_Box9B1` varchar(10) DEFAULT NULL,
  `bill_Box9B2` varchar(7) DEFAULT NULL,
  `bill_Box9B2P` varchar(7) DEFAULT NULL,
  `bill_Box10B1` varchar(7) DEFAULT NULL,
  `bill_Box10B1P` varchar(7) DEFAULT NULL,
  `bill_Box10B2` varchar(3) DEFAULT NULL,
  `bill_Box11B` varchar(29) DEFAULT NULL,
  `bill_Box9C` varchar(28) DEFAULT NULL,
  `bill_Box10C` varchar(7) DEFAULT NULL,
  `bill_Box10CP` varchar(7) DEFAULT NULL,
  `bill_Box9D` varchar(28) DEFAULT NULL,
  `bill_Box11D` varchar(6) DEFAULT NULL,
  `bill_Box11DP` varchar(6) DEFAULT NULL,
  `bill_Box17` varchar(26) DEFAULT NULL,
  `bill_Box17A` varchar(17) DEFAULT NULL,
  `bill_Box21_1` varchar(8) DEFAULT NULL,
  `bill_Box21_2` varchar(8) DEFAULT NULL,
  `bill_Box21_3` varchar(8) DEFAULT NULL,
  `bill_Box21_4` varchar(8) DEFAULT NULL,
  `bill_DOS1F` varchar(8) DEFAULT NULL,
  `bill_DOS1T` varchar(8) DEFAULT NULL,
  `bill_DOS2F` varchar(8) DEFAULT NULL,
  `bill_DOS2T` varchar(8) DEFAULT NULL,
  `bill_DOS3F` varchar(8) DEFAULT NULL,
  `bill_DOS3T` varchar(8) DEFAULT NULL,
  `bill_DOS4F` varchar(8) DEFAULT NULL,
  `bill_DOS4T` varchar(8) DEFAULT NULL,
  `bill_DOS5F` varchar(8) DEFAULT NULL,
  `bill_DOS5T` varchar(8) DEFAULT NULL,
  `bill_DOS6F` varchar(8) DEFAULT NULL,
  `bill_DOS6T` varchar(8) DEFAULT NULL,
  `bill_Box24B1` varchar(5) DEFAULT NULL,
  `bill_Box24B2` varchar(5) DEFAULT NULL,
  `bill_Box24B3` varchar(5) DEFAULT NULL,
  `bill_Box24B4` varchar(5) DEFAULT NULL,
  `bill_Box24B5` varchar(5) DEFAULT NULL,
  `bill_Box24B6` varchar(5) DEFAULT NULL,
  `bill_Box24D1` varchar(6) DEFAULT NULL,
  `bill_Box24D2` varchar(6) DEFAULT NULL,
  `bill_Box24D3` varchar(6) DEFAULT NULL,
  `bill_Box24D4` varchar(6) DEFAULT NULL,
  `bill_Box24D5` varchar(6) DEFAULT NULL,
  `bill_Box24D6` varchar(6) DEFAULT NULL,
  `bill_Modifier1` varchar(11) DEFAULT NULL,
  `bill_Modifier2` varchar(11) DEFAULT NULL,
  `bill_Modifier3` varchar(11) DEFAULT NULL,
  `bill_Modifier4` varchar(11) DEFAULT NULL,
  `bill_Modifier5` varchar(11) DEFAULT NULL,
  `bill_Modifier6` varchar(11) DEFAULT NULL,
  `bill_Box24E1` varchar(4) DEFAULT NULL,
  `bill_Box24E2` varchar(4) DEFAULT NULL,
  `bill_Box24E3` varchar(4) DEFAULT NULL,
  `bill_Box24E4` varchar(4) DEFAULT NULL,
  `bill_Box24E5` varchar(4) DEFAULT NULL,
  `bill_Box24E6` varchar(4) DEFAULT NULL,
  `bill_Box24F1` varchar(8) DEFAULT NULL,
  `bill_Box24F2` varchar(8) DEFAULT NULL,
  `bill_Box24F3` varchar(8) DEFAULT NULL,
  `bill_Box24F4` varchar(8) DEFAULT NULL,
  `bill_Box24F5` varchar(8) DEFAULT NULL,
  `bill_Box24F6` varchar(8) DEFAULT NULL,
  `bill_Box24G1` varchar(5) DEFAULT NULL,
  `bill_Box24G2` varchar(5) DEFAULT NULL,
  `bill_Box24G3` varchar(5) DEFAULT NULL,
  `bill_Box24G4` varchar(5) DEFAULT NULL,
  `bill_Box24G5` varchar(5) DEFAULT NULL,
  `bill_Box24G6` varchar(5) DEFAULT NULL,
  `bill_Box24J1` varchar(11) DEFAULT NULL,
  `bill_Box24J2` varchar(11) DEFAULT NULL,
  `bill_Box24J3` varchar(11) DEFAULT NULL,
  `bill_Box24J4` varchar(11) DEFAULT NULL,
  `bill_Box24J5` varchar(11) DEFAULT NULL,
  `bill_Box24J6` varchar(11) DEFAULT NULL,
  `bill_Box25` varchar(15) DEFAULT NULL,
  `bill_Box26` varchar(14) DEFAULT NULL,
  `bill_Box27` varchar(6) DEFAULT NULL,
  `bill_Box27P` varchar(6) DEFAULT NULL,
  `bill_Box28` varchar(9) DEFAULT NULL,
  `bill_Box29` varchar(8) DEFAULT NULL,
  `bill_Box30` varchar(8) DEFAULT NULL,
  `bill_Box31` varchar(21) DEFAULT NULL,
  `bill_Box32A` varchar(26) DEFAULT NULL,
  `bill_Box32B` varchar(26) DEFAULT NULL,
  `bill_Box32C` varchar(26) DEFAULT NULL,
  `bill_Box32D` varchar(10) DEFAULT NULL,
  `bill_Box33A` varchar(14) DEFAULT NULL,
  `bill_Box33B` varchar(29) DEFAULT NULL,
  `bill_Box33C` varchar(29) DEFAULT NULL,
  `bill_Box33D` varchar(29) DEFAULT NULL,
  `bill_Box33E` varchar(10) DEFAULT NULL,
  `bill_Box21_5` varchar(8) DEFAULT NULL,
  `bill_Box21_6` varchar(8) DEFAULT NULL,
  `bill_Box21_7` varchar(8) DEFAULT NULL,
  `bill_Box21_8` varchar(8) DEFAULT NULL,
  `bill_Box21_9` varchar(8) DEFAULT NULL,
  `bill_Box21_10` varchar(8) DEFAULT NULL,
  `bill_Box21_11` varchar(8) DEFAULT NULL,
  `bill_Box21_12` varchar(8) DEFAULT NULL,
  `bill_Box21A` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_core`
--

DROP TABLE IF EXISTS `billing_core`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_core` (
  `billing_core_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `other_billing_id` bigint(20) DEFAULT NULL,
  `cpt` varchar(5) DEFAULT NULL,
  `cpt_charge` varchar(6) DEFAULT NULL,
  `icd_pointer` varchar(4) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `modifier` varchar(2) DEFAULT NULL,
  `dos_f` varchar(10) DEFAULT NULL,
  `dos_t` varchar(10) DEFAULT NULL,
  `billing_group` varchar(1) DEFAULT NULL,
  `payment` varchar(6) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`billing_core_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_core`
--

LOCK TABLES `billing_core` WRITE;
/*!40000 ALTER TABLE `billing_core` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_core` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `calendar_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visit_type` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `classname` varchar(20) DEFAULT NULL,
  `active` varchar(4) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `provider_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`calendar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'Closed',NULL,'colorblack','y',1,NULL),(2,'Office Visit',900,'coloryellow','y',1,0),(3,'Outpatient Visit',900,'colorblue','y',1,0),(4,'Emergency Room Visit',900,'colorblue','y',1,0),(5,'Remote Clinic Visit',900,'colorblue','y',1,0),(6,'Outreach Event Visit',900,'colororange','y',1,0);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpt`
--

DROP TABLE IF EXISTS `cpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpt` (
  `cpt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpt` varchar(255) DEFAULT NULL,
  `cpt_description` longtext,
  `cpt_charge` varchar(255) DEFAULT NULL,
  `cpt_common` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cpt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpt`
--

LOCK TABLES `cpt` WRITE;
/*!40000 ALTER TABLE `cpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpt_relate`
--

DROP TABLE IF EXISTS `cpt_relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpt_relate` (
  `cpt_relate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `practice_id` int(11) DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `cpt_description` longtext,
  `cpt_charge` varchar(255) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpt_relate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpt_relate`
--

LOCK TABLES `cpt_relate` WRITE;
/*!40000 ALTER TABLE `cpt_relate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpt_relate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_associationrefset_d`
--

DROP TABLE IF EXISTS `curr_associationrefset_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_associationrefset_d` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  `targetcomponentid` varchar(18) NOT NULL,
  KEY `curr_associationrefset_d_id_index` (`id`),
  KEY `curr_associationrefset_d_effectivetime_index` (`effectivetime`),
  KEY `curr_associationrefset_d_active_index` (`active`),
  KEY `curr_associationrefset_d_moduleid_index` (`moduleid`),
  KEY `curr_associationrefset_d_refsetid_index` (`refsetid`),
  KEY `curr_associationrefset_d_referencedcomponentid_index` (`referencedcomponentid`),
  KEY `curr_associationrefset_d_targetcomponentid_index` (`targetcomponentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_associationrefset_d`
--

LOCK TABLES `curr_associationrefset_d` WRITE;
/*!40000 ALTER TABLE `curr_associationrefset_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_associationrefset_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_attributevaluerefset_f`
--

DROP TABLE IF EXISTS `curr_attributevaluerefset_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_attributevaluerefset_f` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  `valueid` varchar(18) NOT NULL,
  KEY `curr_attributevaluerefset_f_id_index` (`id`),
  KEY `curr_attributevaluerefset_f_effectivetime_index` (`effectivetime`),
  KEY `curr_attributevaluerefset_f_active_index` (`active`),
  KEY `curr_attributevaluerefset_f_moduleid_index` (`moduleid`),
  KEY `curr_attributevaluerefset_f_refsetid_index` (`refsetid`),
  KEY `curr_attributevaluerefset_f_referencedcomponentid_index` (`referencedcomponentid`),
  KEY `curr_attributevaluerefset_f_valueid_index` (`valueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_attributevaluerefset_f`
--

LOCK TABLES `curr_attributevaluerefset_f` WRITE;
/*!40000 ALTER TABLE `curr_attributevaluerefset_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_attributevaluerefset_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_complexmaprefset_f`
--

DROP TABLE IF EXISTS `curr_complexmaprefset_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_complexmaprefset_f` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  `mapGroup` smallint(6) NOT NULL,
  `mapPriority` smallint(6) NOT NULL,
  `mapRule` varchar(18) DEFAULT NULL,
  `mapAdvice` varchar(18) DEFAULT NULL,
  `mapTarget` varchar(18) DEFAULT NULL,
  `correlationId` varchar(18) NOT NULL,
  KEY `curr_complexmaprefset_f_id_index` (`id`),
  KEY `curr_complexmaprefset_f_effectivetime_index` (`effectivetime`),
  KEY `curr_complexmaprefset_f_active_index` (`active`),
  KEY `curr_complexmaprefset_f_moduleid_index` (`moduleid`),
  KEY `curr_complexmaprefset_f_refsetid_index` (`refsetid`),
  KEY `curr_complexmaprefset_f_referencedcomponentid_index` (`referencedcomponentid`),
  KEY `curr_complexmaprefset_f_maptarget_index` (`mapTarget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_complexmaprefset_f`
--

LOCK TABLES `curr_complexmaprefset_f` WRITE;
/*!40000 ALTER TABLE `curr_complexmaprefset_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_complexmaprefset_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_concept_f`
--

DROP TABLE IF EXISTS `curr_concept_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_concept_f` (
  `id` varchar(18) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `definitionstatusid` varchar(18) NOT NULL,
  KEY `curr_concept_f_id_index` (`id`),
  KEY `curr_concept_f_effectivetime_index` (`effectivetime`),
  KEY `curr_concept_f_active_index` (`active`),
  KEY `curr_concept_f_moduleid_index` (`moduleid`),
  KEY `curr_concept_f_definitionstatusid_index` (`definitionstatusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_concept_f`
--

LOCK TABLES `curr_concept_f` WRITE;
/*!40000 ALTER TABLE `curr_concept_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_concept_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_description_f`
--

DROP TABLE IF EXISTS `curr_description_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_description_f` (
  `id` varchar(18) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `conceptid` varchar(18) NOT NULL,
  `languagecode` varchar(2) NOT NULL,
  `typeid` varchar(18) NOT NULL,
  `term` varchar(255) NOT NULL,
  `casesignificanceid` varchar(18) NOT NULL,
  KEY `curr_description_f_id_index` (`id`),
  KEY `curr_description_f_effectivetime_index` (`effectivetime`),
  KEY `curr_description_f_active_index` (`active`),
  KEY `curr_description_f_moduleid_index` (`moduleid`),
  KEY `curr_description_f_conceptid_index` (`conceptid`),
  KEY `curr_description_f_languagecode_index` (`languagecode`),
  KEY `curr_description_f_typeid_index` (`typeid`),
  KEY `curr_description_f_term_index` (`term`),
  KEY `curr_description_f_casesignificanceid_index` (`casesignificanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_description_f`
--

LOCK TABLES `curr_description_f` WRITE;
/*!40000 ALTER TABLE `curr_description_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_description_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_langrefset_f`
--

DROP TABLE IF EXISTS `curr_langrefset_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_langrefset_f` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  `acceptabilityid` varchar(18) NOT NULL,
  KEY `curr_langrefset_f_id_index` (`id`),
  KEY `curr_langrefset_f_effectivetime_index` (`effectivetime`),
  KEY `curr_langrefset_f_active_index` (`active`),
  KEY `curr_langrefset_f_moduleid_index` (`moduleid`),
  KEY `curr_langrefset_f_refsetid_index` (`refsetid`),
  KEY `curr_langrefset_f_referencedcomponentid_index` (`referencedcomponentid`),
  KEY `curr_langrefset_f_acceptabilityid_index` (`acceptabilityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_langrefset_f`
--

LOCK TABLES `curr_langrefset_f` WRITE;
/*!40000 ALTER TABLE `curr_langrefset_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_langrefset_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_relationship_f`
--

DROP TABLE IF EXISTS `curr_relationship_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_relationship_f` (
  `id` varchar(18) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `sourceid` varchar(18) NOT NULL,
  `destinationid` varchar(18) NOT NULL,
  `relationshipgroup` varchar(18) NOT NULL,
  `typeid` varchar(18) NOT NULL,
  `characteristictypeid` varchar(18) NOT NULL,
  `modifierid` varchar(18) NOT NULL,
  `lineage` longtext NOT NULL,
  `deep` int(11) NOT NULL,
  KEY `curr_relationship_f_id_index` (`id`),
  KEY `curr_relationship_f_effectivetime_index` (`effectivetime`),
  KEY `curr_relationship_f_active_index` (`active`),
  KEY `curr_relationship_f_moduleid_index` (`moduleid`),
  KEY `curr_relationship_f_sourceid_index` (`sourceid`),
  KEY `curr_relationship_f_destinationid_index` (`destinationid`),
  KEY `curr_relationship_f_relationshipgroup_index` (`relationshipgroup`),
  KEY `curr_relationship_f_typeid_index` (`typeid`),
  KEY `curr_relationship_f_characteristictypeid_index` (`characteristictypeid`),
  KEY `curr_relationship_f_modifierid_index` (`modifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_relationship_f`
--

LOCK TABLES `curr_relationship_f` WRITE;
/*!40000 ALTER TABLE `curr_relationship_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_relationship_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_simplemaprefset_f`
--

DROP TABLE IF EXISTS `curr_simplemaprefset_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_simplemaprefset_f` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  `maptarget` varchar(32) NOT NULL,
  KEY `curr_simplemaprefset_f_id_index` (`id`),
  KEY `curr_simplemaprefset_f_effectivetime_index` (`effectivetime`),
  KEY `curr_simplemaprefset_f_active_index` (`active`),
  KEY `curr_simplemaprefset_f_moduleid_index` (`moduleid`),
  KEY `curr_simplemaprefset_f_refsetid_index` (`refsetid`),
  KEY `curr_simplemaprefset_f_referencedcomponentid_index` (`referencedcomponentid`),
  KEY `curr_simplemaprefset_f_maptarget_index` (`maptarget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_simplemaprefset_f`
--

LOCK TABLES `curr_simplemaprefset_f` WRITE;
/*!40000 ALTER TABLE `curr_simplemaprefset_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_simplemaprefset_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_simplerefset_f`
--

DROP TABLE IF EXISTS `curr_simplerefset_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_simplerefset_f` (
  `id` varchar(36) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `refsetid` varchar(18) NOT NULL,
  `referencedcomponentid` varchar(18) NOT NULL,
  KEY `curr_simplerefset_f_id_index` (`id`),
  KEY `curr_simplerefset_f_effectivetime_index` (`effectivetime`),
  KEY `curr_simplerefset_f_active_index` (`active`),
  KEY `curr_simplerefset_f_moduleid_index` (`moduleid`),
  KEY `curr_simplerefset_f_refsetid_index` (`refsetid`),
  KEY `curr_simplerefset_f_referencedcomponentid_index` (`referencedcomponentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_simplerefset_f`
--

LOCK TABLES `curr_simplerefset_f` WRITE;
/*!40000 ALTER TABLE `curr_simplerefset_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_simplerefset_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_stated_relationship_f`
--

DROP TABLE IF EXISTS `curr_stated_relationship_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_stated_relationship_f` (
  `id` varchar(18) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `sourceid` varchar(18) NOT NULL,
  `destinationid` varchar(18) NOT NULL,
  `relationshipgroup` varchar(18) NOT NULL,
  `typeid` varchar(18) NOT NULL,
  `characteristictypeid` varchar(18) NOT NULL,
  `modifierid` varchar(18) NOT NULL,
  KEY `curr_stated_relationship_f_id_index` (`id`),
  KEY `curr_stated_relationship_f_effectivetime_index` (`effectivetime`),
  KEY `curr_stated_relationship_f_active_index` (`active`),
  KEY `curr_stated_relationship_f_moduleid_index` (`moduleid`),
  KEY `curr_stated_relationship_f_sourceid_index` (`sourceid`),
  KEY `curr_stated_relationship_f_destinationid_index` (`destinationid`),
  KEY `curr_stated_relationship_f_relationshipgroup_index` (`relationshipgroup`),
  KEY `curr_stated_relationship_f_typeid_index` (`typeid`),
  KEY `curr_stated_relationship_f_characteristictypeid_index` (`characteristictypeid`),
  KEY `curr_stated_relationship_f_modifierid_index` (`modifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_stated_relationship_f`
--

LOCK TABLES `curr_stated_relationship_f` WRITE;
/*!40000 ALTER TABLE `curr_stated_relationship_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_stated_relationship_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr_textdefinition_f`
--

DROP TABLE IF EXISTS `curr_textdefinition_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr_textdefinition_f` (
  `id` varchar(18) NOT NULL,
  `effectivetime` char(8) NOT NULL,
  `active` char(1) NOT NULL,
  `moduleid` varchar(18) NOT NULL,
  `conceptid` varchar(18) NOT NULL,
  `languagecode` varchar(2) NOT NULL,
  `typeid` varchar(18) NOT NULL,
  `term` varchar(1024) NOT NULL,
  `casesignificanceid` varchar(18) NOT NULL,
  KEY `curr_textdefinition_f_id_index` (`id`),
  KEY `curr_textdefinition_f_effectivetime_index` (`effectivetime`),
  KEY `curr_textdefinition_f_active_index` (`active`),
  KEY `curr_textdefinition_f_moduleid_index` (`moduleid`),
  KEY `curr_textdefinition_f_conceptid_index` (`conceptid`),
  KEY `curr_textdefinition_f_languagecode_index` (`languagecode`),
  KEY `curr_textdefinition_f_typeid_index` (`typeid`),
  KEY `curr_textdefinition_f_term_index` (`term`),
  KEY `curr_textdefinition_f_casesignificanceid_index` (`casesignificanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curr_textdefinition_f`
--

LOCK TABLES `curr_textdefinition_f` WRITE;
/*!40000 ALTER TABLE `curr_textdefinition_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `curr_textdefinition_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvx`
--

DROP TABLE IF EXISTS `cvx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvx` (
  `cvx_code` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `vaccine_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvx`
--

LOCK TABLES `cvx` WRITE;
/*!40000 ALTER TABLE `cvx` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_sync`
--

DROP TABLE IF EXISTS `data_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_sync` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `action` longtext,
  `from` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `source_index` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_sync`
--

LOCK TABLES `data_sync` WRITE;
/*!40000 ALTER TABLE `data_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographics` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` bigint(20) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middle` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `ss` varchar(100) DEFAULT NULL,
  `race` varchar(100) DEFAULT NULL,
  `ethnicity` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_cell` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `marital_status` varchar(100) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `employer` varchar(100) DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `emergency_phone` varchar(100) DEFAULT NULL,
  `reminder_method` varchar(100) DEFAULT NULL,
  `cell_carrier` varchar(100) DEFAULT NULL,
  `reminder_to` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `preferred_provider` varchar(255) DEFAULT NULL,
  `preferred_pharmacy` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `other1` varchar(255) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `tobacco` varchar(5) DEFAULT NULL,
  `sexuallyactive` varchar(5) DEFAULT NULL,
  `pregnant` varchar(255) DEFAULT NULL,
  `caregiver` varchar(255) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `billing_notes` longtext,
  `imm_notes` longtext,
  `rcopia_sync` varchar(4) DEFAULT NULL,
  `rcopia_update_medications` varchar(4) DEFAULT NULL,
  `rcopia_update_medications_date` varchar(20) DEFAULT NULL,
  `rcopia_update_allergy` varchar(4) DEFAULT NULL,
  `rcopia_update_allergy_date` varchar(20) DEFAULT NULL,
  `rcopia_update_prescription` varchar(4) DEFAULT NULL,
  `rcopia_update_prescription_date` varchar(20) DEFAULT NULL,
  `registration_code` varchar(255) DEFAULT NULL,
  `race_code` varchar(100) DEFAULT NULL,
  `ethnicity_code` varchar(100) DEFAULT NULL,
  `guardian_firstname` varchar(255) DEFAULT NULL,
  `guardian_lastname` varchar(255) DEFAULT NULL,
  `guardian_code` varchar(100) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `guardian_city` varchar(100) DEFAULT NULL,
  `guardian_state` varchar(100) DEFAULT NULL,
  `guardian_zip` varchar(100) DEFAULT NULL,
  `guardian_phone_home` varchar(100) DEFAULT NULL,
  `guardian_phone_work` varchar(100) DEFAULT NULL,
  `guardian_phone_cell` varchar(100) DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `guardian_relationship` varchar(100) DEFAULT NULL,
  `lang_code` varchar(100) DEFAULT NULL,
  `creditcard_number` varchar(255) DEFAULT NULL,
  `creditcard_expiration` varchar(255) DEFAULT NULL,
  `creditcard_type` varchar(255) DEFAULT NULL,
  `creditcard_key` varchar(255) DEFAULT '',
  `hieofone_as_url` varchar(255) DEFAULT NULL,
  `hieofone_as_client_id` varchar(255) DEFAULT NULL,
  `hieofone_as_client_secret` varchar(255) DEFAULT NULL,
  `hieofone_as_name` varchar(255) DEFAULT NULL,
  `hieofone_as_picture` varchar(255) DEFAULT NULL,
  `pharmacy_address_id` bigint(20) DEFAULT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `reminder_interval` varchar(255) DEFAULT NULL,
  `hieofone_as_refresh_token` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'United States',
  `guardian_country` varchar(255) NOT NULL DEFAULT 'United States',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
INSERT INTO `demographics` VALUES (1,NULL,'Sample','John',NULL,NULL,NULL,'m','1989-08-30 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-02-05 00:52:18',NULL,NULL,NULL,'no','no','no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'United States','United States'),(2,NULL,'Bertucci','Donald','','','','m','2018-01-21 00:00:00','','','','','1237 ARCADIA DR','EUGENE','OR','97401','(541) 731-1820','','','pbertucci@dbarchitechs.com','Single','','','Paul Bertucci',NULL,'',NULL,NULL,'/noshdocuments/2/Day 2 Unilateral cleft lip_1549585249.JPG',NULL,NULL,1,'2019-02-08 00:20:49',NULL,NULL,NULL,'no','no','no','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Paul','Bertucci','NFTH','30327, Seely Lane','Eugene','OR','97405','(541) 731-1820','','','ptbertucci@gmail.com','Natural Father','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','Default',NULL,'United States','United States'),(3,NULL,'Jane','Sample',NULL,NULL,NULL,'f','1989-08-30 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-02-16 01:13:50',NULL,NULL,NULL,'no','no','no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FdWYgO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'United States','United States');
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics_notes`
--

DROP TABLE IF EXISTS `demographics_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographics_notes` (
  `demographics_notes_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `billing_notes` longtext,
  `imm_notes` longtext,
  PRIMARY KEY (`demographics_notes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics_notes`
--

LOCK TABLES `demographics_notes` WRITE;
/*!40000 ALTER TABLE `demographics_notes` DISABLE KEYS */;
INSERT INTO `demographics_notes` VALUES (1,1,1,'',''),(2,2,1,'',''),(3,3,1,'','');
/*!40000 ALTER TABLE `demographics_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographics_relate`
--

DROP TABLE IF EXISTS `demographics_relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographics_relate` (
  `demographics_relate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `appointment_reminder` varchar(100) DEFAULT 'n',
  `api_key` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `uma_client_id` varchar(255) DEFAULT '',
  `uma_client_secret` varchar(255) DEFAULT '',
  `uma_refresh_token` varchar(255) DEFAULT '',
  PRIMARY KEY (`demographics_relate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics_relate`
--

LOCK TABLES `demographics_relate` WRITE;
/*!40000 ALTER TABLE `demographics_relate` DISABLE KEYS */;
INSERT INTO `demographics_relate` VALUES (1,1,1,NULL,'n',NULL,NULL,'','',''),(2,2,1,NULL,'n',NULL,NULL,'','',''),(3,3,1,NULL,'n',NULL,NULL,'','','');
/*!40000 ALTER TABLE `demographics_relate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `documents_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `documents_type` varchar(255) DEFAULT NULL,
  `documents_url` varchar(255) DEFAULT NULL,
  `documents_desc` varchar(255) DEFAULT NULL,
  `documents_from` varchar(255) DEFAULT NULL,
  `documents_viewed` varchar(20) DEFAULT NULL,
  `documents_date` datetime DEFAULT NULL,
  `reconcile` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encounters`
--

DROP TABLE IF EXISTS `encounters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encounters` (
  `eid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `appt_id` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `encounter_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `encounter_signed` varchar(4) DEFAULT NULL,
  `date_signed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `encounter_DOS` datetime DEFAULT NULL,
  `encounter_age` varchar(100) DEFAULT NULL,
  `encounter_type` varchar(100) DEFAULT NULL,
  `encounter_location` varchar(100) DEFAULT NULL,
  `encounter_activity` varchar(100) DEFAULT NULL,
  `encounter_cc` longtext,
  `encounter_condition` varchar(255) DEFAULT NULL,
  `encounter_condition_work` varchar(4) DEFAULT NULL,
  `encounter_condition_auto` varchar(4) DEFAULT NULL,
  `encounter_condition_auto_state` varchar(2) DEFAULT NULL,
  `encounter_condition_other` varchar(4) DEFAULT NULL,
  `bill_submitted` varchar(4) DEFAULT NULL,
  `addendum` varchar(4) DEFAULT NULL,
  `addendum_eid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `encounter_role` varchar(255) DEFAULT NULL,
  `referring_provider` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `referring_provider_npi` varchar(255) DEFAULT NULL,
  `encounter_template` varchar(255) DEFAULT NULL,
  `bill_complex` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `encounter_condition_auto_country` varchar(255) NOT NULL DEFAULT 'United States',
  `encounter_bed` varchar(25) DEFAULT NULL,
  `encounter_clawson` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encounters`
--

LOCK TABLES `encounters` WRITE;
/*!40000 ALTER TABLE `encounters` DISABLE KEYS */;
INSERT INTO `encounters` VALUES (1,1,0,'Paul Bertucci','2019-02-05 00:52:29','No','0000-00-00 00:00:00','2019-02-04 16:52:00','29 Years Old','','1',NULL,'Headache',NULL,NULL,NULL,NULL,NULL,NULL,'n',1,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(2,2,0,'Paul Bertucci','2019-02-16 01:15:33','Yes','2019-02-07 15:49:06','2019-02-05 14:04:00','12 Years Old','','23',NULL,'pain in his right knee from football game this past saturday',NULL,NULL,NULL,NULL,NULL,NULL,'y',2,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(3,1,3,'Paul Bertucci','2019-02-05 22:45:50','No','0000-00-00 00:00:00','2019-02-08 10:45:00','12 Years Old','Remote Clinic Visit','1',NULL,'Cleft Lip assessment',NULL,'No','No',NULL,NULL,NULL,'n',3,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(4,2,1,'Paul Bertucci','2019-02-05 23:02:49','No','0000-00-00 00:00:00','2019-02-04 14:30:00','12 Years Old','Office Visit','1',NULL,'',NULL,'No','No',NULL,NULL,NULL,'n',4,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(5,1,0,'Paul Bertucci','2019-02-07 23:40:40','No','0000-00-00 00:00:00','2019-02-07 15:40:00','29 Years Old','','11',NULL,'Headache',NULL,NULL,NULL,NULL,NULL,NULL,'n',5,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(6,1,0,'Paul Bertucci','2019-02-08 01:05:14','No','0000-00-00 00:00:00','2019-02-07 17:05:00','29 Years Old','','1',NULL,'jjjj',NULL,NULL,NULL,NULL,NULL,NULL,'n',6,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(7,2,0,'Paul Bertucci','2019-02-09 04:45:13','No','0000-00-00 00:00:00','2019-02-08 20:44:00','1 Year Old','','15',NULL,'Headache',NULL,NULL,NULL,NULL,NULL,NULL,'n',7,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States'),(8,2,0,'Paul Bertucci','2019-02-07 23:49:06','No','2019-02-07 15:49:06','2019-02-05 14:04:00','12 Years Old','','23',NULL,'pain in his right knee from football game this past saturday',NULL,NULL,NULL,NULL,NULL,NULL,'n',2,2,'Primary Care Provider',NULL,1,NULL,'medical',NULL,NULL,NULL,NULL,'United States');
/*!40000 ALTER TABLE `encounters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `era`
--

DROP TABLE IF EXISTS `era`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `era` (
  `era_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `era` longtext,
  `era_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`era_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `era`
--

LOCK TABLES `era` WRITE;
/*!40000 ALTER TABLE `era` DISABLE KEYS */;
/*!40000 ALTER TABLE `era` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions_log`
--

DROP TABLE IF EXISTS `extensions_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extensions_log` (
  `extensions_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extensions_name` varchar(255) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `description` longtext,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`extensions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions_log`
--

LOCK TABLES `extensions_log` WRITE;
/*!40000 ALTER TABLE `extensions_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `extensions_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `forms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `forms_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `forms_title` varchar(255) DEFAULT NULL,
  `forms_content` longtext,
  `forms_destination` varchar(255) DEFAULT NULL,
  `forms_content_text` longtext,
  `array` longtext,
  PRIMARY KEY (`forms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc`
--

DROP TABLE IF EXISTS `gc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sex` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `Age` varchar(11) DEFAULT NULL,
  `Length` varchar(11) DEFAULT NULL,
  `Height` varchar(11) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `L` varchar(11) DEFAULT NULL,
  `M` varchar(11) DEFAULT NULL,
  `S` varchar(11) DEFAULT NULL,
  `P01` varchar(11) DEFAULT NULL,
  `P1` varchar(11) DEFAULT NULL,
  `P3` varchar(11) DEFAULT NULL,
  `P5` varchar(11) DEFAULT NULL,
  `P10` varchar(11) DEFAULT NULL,
  `P15` varchar(11) DEFAULT NULL,
  `P25` varchar(11) DEFAULT NULL,
  `P50` varchar(11) DEFAULT NULL,
  `P75` varchar(11) DEFAULT NULL,
  `P85` varchar(11) DEFAULT NULL,
  `P90` varchar(11) DEFAULT NULL,
  `P95` varchar(11) DEFAULT NULL,
  `P97` varchar(11) DEFAULT NULL,
  `P99` varchar(11) DEFAULT NULL,
  `P999` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc`
--

LOCK TABLES `gc` WRITE;
/*!40000 ALTER TABLE `gc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'provider','Provider'),(3,'assistant','Assistant'),(4,'billing','Billing'),(100,'patient','Patient');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_roles`
--

DROP TABLE IF EXISTS `guardian_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_roles` (
  `guardian_roles_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`guardian_roles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_roles`
--

LOCK TABLES `guardian_roles` WRITE;
/*!40000 ALTER TABLE `guardian_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hippa`
--

DROP TABLE IF EXISTS `hippa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hippa` (
  `hippa_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `hippa_date_release` datetime DEFAULT NULL,
  `hippa_reason` varchar(255) DEFAULT NULL,
  `hippa_provider` varchar(255) DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  `t_messages_id` int(11) DEFAULT NULL,
  `documents_id` int(11) DEFAULT NULL,
  `other_hippa_id` int(11) DEFAULT NULL,
  `hippa_role` varchar(100) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hippa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hippa`
--

LOCK TABLES `hippa` WRITE;
/*!40000 ALTER TABLE `hippa` DISABLE KEYS */;
/*!40000 ALTER TABLE `hippa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hippa_request`
--

DROP TABLE IF EXISTS `hippa_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hippa_request` (
  `hippa_request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `hippa_date_request` datetime DEFAULT NULL,
  `request_reason` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `request_to` longtext,
  `address_id` bigint(20) DEFAULT NULL,
  `history_physical` varchar(255) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `lab_date` varchar(100) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `accident_f` varchar(100) DEFAULT NULL,
  `accident_t` varchar(100) DEFAULT NULL,
  `other` longtext,
  `practice_id` int(11) DEFAULT NULL,
  `received` varchar(10) DEFAULT 'No',
  PRIMARY KEY (`hippa_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hippa_request`
--

LOCK TABLES `hippa_request` WRITE;
/*!40000 ALTER TABLE `hippa_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `hippa_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hpi`
--

DROP TABLE IF EXISTS `hpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hpi` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `hpi_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hpi` longtext,
  `situation` longtext,
  `forms` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hpi`
--

LOCK TABLES `hpi` WRITE;
/*!40000 ALTER TABLE `hpi` DISABLE KEYS */;
INSERT INTO `hpi` VALUES (1,1,'Paul Bertucci','2019-02-05 00:52:34','',NULL,NULL),(2,2,'Paul Bertucci','2019-02-05 22:05:24','',NULL,NULL),(3,1,'Paul Bertucci','2019-02-05 22:45:53','',NULL,NULL),(5,1,'Paul Bertucci','2019-02-09 04:19:26','',NULL,NULL),(6,1,'Paul Bertucci','2019-02-09 04:48:52','',NULL,NULL),(7,2,'Paul Bertucci','2019-02-09 04:45:44','',NULL,NULL),(8,2,'Paul Bertucci','2019-02-05 22:05:24','',NULL,NULL);
/*!40000 ALTER TABLE `hpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd10`
--

DROP TABLE IF EXISTS `icd10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icd10` (
  `icd10_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icd10` varchar(255) DEFAULT NULL,
  `icd10_description` varchar(255) DEFAULT NULL,
  `icd10_common` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`icd10_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd10`
--

LOCK TABLES `icd10` WRITE;
/*!40000 ALTER TABLE `icd10` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd9`
--

DROP TABLE IF EXISTS `icd9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icd9` (
  `icd9_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icd9` varchar(255) DEFAULT NULL,
  `icd9_description` varchar(255) DEFAULT NULL,
  `icd9_common` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`icd9_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd9`
--

LOCK TABLES `icd9` WRITE;
/*!40000 ALTER TABLE `icd9` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd_fav`
--

DROP TABLE IF EXISTS `icd_fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icd_fav` (
  `icd_fav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` bigint(20) DEFAULT NULL,
  `icd` varchar(255) DEFAULT NULL,
  `icd_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`icd_fav_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd_fav`
--

LOCK TABLES `icd_fav` WRITE;
/*!40000 ALTER TABLE `icd_fav` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd_fav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `eid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `image_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_location` varchar(255) DEFAULT NULL,
  `image_description` longtext,
  `image_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `t_messages_id` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (2,2,2,'Paul Bertucci','2019-02-05 22:08:22','/noshdocuments/2/image_1549404502.png','Pain Location (right knee, upper cartilage)',1,NULL,NULL,NULL),(2,2,2,'Paul Bertucci','2019-02-05 22:18:09','/noshdocuments/2/15494050562334728006305539374217_1549405089.jpg','Photo Uploaded February 5th, 2019',4,NULL,NULL,NULL),(2,2,2,'Paul Bertucci','2019-02-05 22:28:56','/noshdocuments/2/image_1549405736.png','Photo Uploaded February 5th, 2019',5,NULL,NULL,NULL),(4,2,2,'Paul Bertucci','2019-02-08 00:08:56','/noshdocuments/2/image_1549584535.png','',6,NULL,NULL,NULL),(5,1,2,'Paul Bertucci','2019-02-09 04:19:56','/noshdocuments/1/image_1549685996.png','',7,NULL,NULL,NULL),(6,1,2,'Paul Bertucci','2019-02-09 04:49:38','/noshdocuments/1/15496877475064748926969012532066_1549687778.jpg','Photo Uploaded February 8th, 2019',8,NULL,NULL,NULL),(8,2,2,'Paul Bertucci','2019-02-05 22:08:22','/noshdocuments/2/image_1549404502.png','Pain Location (right knee, upper cartilage)',9,NULL,NULL,NULL),(8,2,2,'Paul Bertucci','2019-02-05 22:18:09','/noshdocuments/2/15494050562334728006305539374217_1549405089.jpg','Photo Uploaded February 5th, 2019',10,NULL,NULL,NULL),(8,2,2,'Paul Bertucci','2019-02-16 01:15:59','/noshdocuments/2/image_1550279759.png','Photo Uploaded February 5th, 2019',11,NULL,NULL,NULL);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immunizations`
--

DROP TABLE IF EXISTS `immunizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immunizations` (
  `imm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `imm_date` datetime DEFAULT NULL,
  `imm_immunization` varchar(255) DEFAULT NULL,
  `imm_sequence` varchar(255) DEFAULT NULL,
  `imm_body_site` varchar(255) DEFAULT NULL,
  `imm_dosage` varchar(255) DEFAULT NULL,
  `imm_dosage_unit` varchar(255) DEFAULT NULL,
  `imm_route` varchar(255) DEFAULT NULL,
  `imm_elsewhere` varchar(255) DEFAULT NULL,
  `imm_vis` varchar(255) DEFAULT NULL,
  `imm_lot` varchar(255) DEFAULT NULL,
  `imm_manufacturer` varchar(255) DEFAULT NULL,
  `imm_expiration` datetime DEFAULT NULL,
  `imm_brand` varchar(255) DEFAULT NULL,
  `imm_cvxcode` varchar(255) DEFAULT NULL,
  `imm_provider` varchar(255) DEFAULT NULL,
  `reconcile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`imm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunizations`
--

LOCK TABLES `immunizations` WRITE;
/*!40000 ALTER TABLE `immunizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `immunizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `insurance_plan_name` varchar(255) DEFAULT NULL,
  `insurance_order` varchar(255) DEFAULT NULL,
  `insurance_id_num` varchar(255) DEFAULT NULL,
  `insurance_group` varchar(255) DEFAULT NULL,
  `insurance_relationship` varchar(255) DEFAULT NULL,
  `insurance_copay` varchar(255) DEFAULT NULL,
  `insurance_deductible` varchar(255) DEFAULT NULL,
  `insurance_comments` longtext,
  `insurance_plan_active` varchar(255) DEFAULT NULL,
  `insurance_insu_firstname` varchar(255) DEFAULT NULL,
  `insurance_insu_lastname` varchar(255) DEFAULT NULL,
  `insurance_insu_address` varchar(255) DEFAULT NULL,
  `insurance_insu_city` varchar(255) DEFAULT NULL,
  `insurance_insu_state` varchar(255) DEFAULT NULL,
  `insurance_insu_zip` varchar(255) DEFAULT NULL,
  `insurance_insu_phone` varchar(255) DEFAULT NULL,
  `insurance_insu_dob` datetime DEFAULT NULL,
  `insurance_insu_gender` varchar(255) DEFAULT NULL,
  `insurance_insu_country` varchar(255) NOT NULL DEFAULT 'United States',
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `issue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `issue_date_active` datetime DEFAULT NULL,
  `issue_date_inactive` datetime DEFAULT NULL,
  `issue_provider` varchar(255) DEFAULT NULL,
  `rcopia_sync` varchar(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'Problem List',
  `reconcile` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `labs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `labs_ua_urobili` varchar(100) DEFAULT NULL,
  `labs_ua_bilirubin` varchar(100) DEFAULT NULL,
  `labs_ua_ketones` varchar(100) DEFAULT NULL,
  `labs_ua_glucose` varchar(100) DEFAULT NULL,
  `labs_ua_protein` varchar(100) DEFAULT NULL,
  `labs_ua_nitrites` varchar(100) DEFAULT NULL,
  `labs_ua_leukocytes` varchar(100) DEFAULT NULL,
  `labs_ua_blood` varchar(100) DEFAULT NULL,
  `labs_ua_ph` varchar(100) DEFAULT NULL,
  `labs_ua_spgr` varchar(100) DEFAULT NULL,
  `labs_ua_color` varchar(100) DEFAULT NULL,
  `labs_ua_clarity` varchar(100) DEFAULT NULL,
  `labs_upt` varchar(100) DEFAULT NULL,
  `labs_strep` varchar(100) DEFAULT NULL,
  `labs_mono` varchar(100) DEFAULT NULL,
  `labs_flu` varchar(100) DEFAULT NULL,
  `labs_microscope` varchar(100) DEFAULT NULL,
  `labs_glucose` varchar(100) DEFAULT NULL,
  `labs_other` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang`
--

LOCK TABLES `lang` WRITE;
/*!40000 ALTER TABLE `lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meds_full`
--

DROP TABLE IF EXISTS `meds_full`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meds_full` (
  `PRODUCTNDC` varchar(255) NOT NULL,
  `PRODUCTTYPENAME` varchar(255) DEFAULT NULL,
  `PROPRIETARYNAME` varchar(255) DEFAULT NULL,
  `PROPRIETARYNAMESUFFIX` varchar(255) DEFAULT NULL,
  `NONPROPRIETARYNAME` varchar(255) DEFAULT NULL,
  `DOSAGEFORMNAME` varchar(255) DEFAULT NULL,
  `ROUTENAME` varchar(255) DEFAULT NULL,
  `STARTMARKETINGDATE` varchar(255) DEFAULT NULL,
  `ENDMARKETINGDATE` varchar(255) DEFAULT NULL,
  `MARKETINGCATEGORYNAME` varchar(255) DEFAULT NULL,
  `APPLICATIONNUMBER` varchar(255) DEFAULT NULL,
  `LABELERNAME` varchar(255) DEFAULT NULL,
  `SUBSTANCENAME` varchar(255) DEFAULT NULL,
  `ACTIVE_NUMERATOR_STRENGTH` varchar(255) DEFAULT NULL,
  `ACTIVE_INGRED_UNIT` varchar(255) DEFAULT NULL,
  `PHARM_CLASSES` varchar(255) DEFAULT NULL,
  `DEASCHEDULE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCTNDC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meds_full`
--

LOCK TABLES `meds_full` WRITE;
/*!40000 ALTER TABLE `meds_full` DISABLE KEYS */;
/*!40000 ALTER TABLE `meds_full` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meds_full_package`
--

DROP TABLE IF EXISTS `meds_full_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meds_full_package` (
  `PRODUCTNDC` varchar(255) DEFAULT NULL,
  `NDCPACKAGECODE` varchar(255) NOT NULL,
  `PACKAGEDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NDCPACKAGECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meds_full_package`
--

LOCK TABLES `meds_full_package` WRITE;
/*!40000 ALTER TABLE `meds_full_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `meds_full_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messaging`
--

DROP TABLE IF EXISTS `messaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messaging` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `message_from` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `patient_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `t_messages_id` int(11) DEFAULT NULL,
  `mailbox` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `read` varchar(4) DEFAULT NULL,
  `documents_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messaging`
--

LOCK TABLES `messaging` WRITE;
/*!40000 ALTER TABLE `messaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `messaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_01_12_142343_create_addressbook_table',1),(2,'2014_01_12_142343_create_alerts_table',1),(3,'2014_01_12_142343_create_allergies_table',1),(4,'2014_01_12_142343_create_assessment_table',1),(5,'2014_01_12_142343_create_audit_table',1),(6,'2014_01_12_142343_create_billing_core_table',1),(7,'2014_01_12_142343_create_billing_table',1),(8,'2014_01_12_142343_create_calendar_table',1),(9,'2014_01_12_142343_create_ci_sessions_table',1),(10,'2014_01_12_142343_create_cpt_relate_table',1),(11,'2014_01_12_142343_create_cpt_table',1),(12,'2014_01_12_142343_create_curr_associationrefset_d_table',1),(13,'2014_01_12_142343_create_curr_attributevaluerefset_f_table',1),(14,'2014_01_12_142343_create_curr_complexmaprefset_f_table',1),(15,'2014_01_12_142343_create_curr_concept_f_table',1),(16,'2014_01_12_142343_create_curr_description_f_table',1),(17,'2014_01_12_142343_create_curr_langrefset_f_table',1),(18,'2014_01_12_142343_create_curr_relationship_f_table',1),(19,'2014_01_12_142343_create_curr_simplemaprefset_f_table',1),(20,'2014_01_12_142343_create_curr_simplerefset_f_table',1),(21,'2014_01_12_142343_create_curr_stated_relationship_f_table',1),(22,'2014_01_12_142343_create_curr_textdefinition_f_table',1),(23,'2014_01_12_142343_create_cvx_table',1),(24,'2014_01_12_142343_create_demographics_notes_table',1),(25,'2014_01_12_142343_create_demographics_relate_table',1),(26,'2014_01_12_142343_create_demographics_table',1),(27,'2014_01_12_142343_create_documents_table',1),(28,'2014_01_12_142343_create_encounters_table',1),(29,'2014_01_12_142343_create_extensions_log_table',1),(30,'2014_01_12_142343_create_forms_table',1),(31,'2014_01_12_142343_create_gc_table',1),(32,'2014_01_12_142343_create_groups_table',1),(33,'2014_01_12_142343_create_guardian_roles_table',1),(34,'2014_01_12_142343_create_hippa_table',1),(35,'2014_01_12_142343_create_hpi_table',1),(36,'2014_01_12_142343_create_icd9_table',1),(37,'2014_01_12_142343_create_images_table',1),(38,'2014_01_12_142343_create_immunizations_table',1),(39,'2014_01_12_142343_create_insurance_table',1),(40,'2014_01_12_142343_create_issues_table',1),(41,'2014_01_12_142343_create_labs_table',1),(42,'2014_01_12_142343_create_lang_table',1),(43,'2014_01_12_142343_create_meds_full_package_table',1),(44,'2014_01_12_142343_create_meds_full_table',1),(45,'2014_01_12_142343_create_messaging_table',1),(46,'2014_01_12_142343_create_mtm_table',1),(47,'2014_01_12_142343_create_npi_table',1),(48,'2014_01_12_142343_create_orders_table',1),(49,'2014_01_12_142343_create_orderslist1_table',1),(50,'2014_01_12_142343_create_orderslist_table',1),(51,'2014_01_12_142343_create_other_history_table',1),(52,'2014_01_12_142343_create_pages_table',1),(53,'2014_01_12_142343_create_pe_table',1),(54,'2014_01_12_142343_create_plan_table',1),(55,'2014_01_12_142343_create_pos_table',1),(56,'2014_01_12_142343_create_practiceinfo_table',1),(57,'2014_01_12_142343_create_procedure_table',1),(58,'2014_01_12_142343_create_procedurelist_table',1),(59,'2014_01_12_142343_create_providers_table',1),(60,'2014_01_12_142343_create_received_table',1),(61,'2014_01_12_142343_create_recipients_table',1),(62,'2014_01_12_142343_create_repeat_schedule_table',1),(63,'2014_01_12_142343_create_ros_table',1),(64,'2014_01_12_142343_create_rx_list_table',1),(65,'2014_01_12_142343_create_rx_table',1),(66,'2014_01_12_142343_create_scans_table',1),(67,'2014_01_12_142343_create_schedule_table',1),(68,'2014_01_12_142343_create_sendfax_table',1),(69,'2014_01_12_142343_create_snomed_procedure_imaging_table',1),(70,'2014_01_12_142343_create_snomed_procedure_path_table',1),(71,'2014_01_12_142343_create_sup_list_table',1),(72,'2014_01_12_142343_create_supplement_inventory_table',1),(73,'2014_01_12_142343_create_supplements_list_table',1),(74,'2014_01_12_142343_create_t_messages_table',1),(75,'2014_01_12_142343_create_tags_relate_table',1),(76,'2014_01_12_142343_create_tags_table',1),(77,'2014_01_12_142343_create_templates_table',1),(78,'2014_01_12_142343_create_tests_table',1),(79,'2014_01_12_142343_create_users_table',1),(80,'2014_01_12_142343_create_vaccine_inventory_table',1),(81,'2014_01_12_142343_create_vaccine_temp_table',1),(82,'2014_01_12_142343_create_vitals_table',1),(83,'2014_01_13_200734_create_session_table',1),(84,'2014_01_30_132924_add_aoe_code_and_aoe_field_to_orderslist1_table',1),(85,'2014_01_30_135311_add_orders_pending_date_to_orders_table',1),(86,'2014_02_01_195914_add_encounter_template_to_encounters_table',1),(87,'2014_02_28_172522_add_bill_complex_to_encounters_table',1),(88,'2014_03_27_172130_add_situation_to_hpi_table',1),(89,'2014_03_27_181301_add_assessments_to_assessment_table',1),(90,'2014_03_29_054806_add_id_to_calendar_table',1),(91,'2014_03_31_223903_add_timezone_to_practiceinfo_table',1),(92,'2014_04_07_125905_create_image_table',1),(93,'2014_04_08_101852_edit_image_table',1),(94,'2014_04_27_171539_add_token_to_user_table',1),(95,'2014_05_01_201318_create_icd10_table',1),(96,'2014_05_01_224547_add_icd_to_practiceifno_table',1),(97,'2014_05_31_011330_add_psych_to_ros_table',1),(98,'2014_05_31_071830_add_mental_to_pe_table',1),(99,'2014_06_02_163028_add_goals_to_plan_table',1),(100,'2014_06_02_173829_add_psychosocial_to_other_history_table',1),(101,'2014_06_02_191021_add_creditcard_to_demographics_table',1),(102,'2014_06_02_215834_add_supplements_to_practiceinfo_table',1),(103,'2014_06_06_183140_add_address_id_to_hippa_table',1),(104,'2014_06_10_165645_add_scoring_to_templates_table',1),(105,'2014_06_20_214440_add_encounter_template_to_practiceinfo_table',1),(106,'2014_06_26_023918_fix_oh_id_to_other_history_table',1),(107,'2014_06_27_182135_add_oh_results_to_other_history_table',1),(108,'2014_07_07_182123_create_hippa_request_table',1),(109,'2014_07_10_130421_add_phaxio_api_key_to_practiceinfo_table',1),(110,'2014_07_11_232547_add_notes_to_schedule_table',1),(111,'2014_07_24_181106_create_era_table',1),(112,'2014_07_29_164246_add_birthday_extension_to_practiceinfo_table',1),(113,'2014_07_29_212213_add_alert_send_message_to_alerts_table',1),(114,'2014_08_01_212617_add_opennotes_to_practiceinfo_table',1),(115,'2014_08_04_233421_add_patient_centric_to_practiceinfo_table',1),(116,'2014_08_08_211502_add_appointment_extension_to_practiceinfo_table',1),(117,'2014_08_08_212434_add_appointment_reminder_to_demographics_relate_table',1),(118,'2014_08_14_233439_add_practice_api_key_to_practiceinfo_table',1),(119,'2014_08_22_222211_add_api_key_to_demographics_relate_table',1),(120,'2014_08_26_171600_create_api_queue_table',1),(121,'2014_09_20_000822_add_upi_to_users_table',1),(122,'2014_10_13_230957_add_openidconnect_client_id_practiceinfo_table',1),(123,'2015_03_25_035637_add_template_core_id_to_templates_table',1),(124,'2015_04_06_152049_add_quantity1_to_supplement_inventory_table',1),(125,'2015_04_08_003159_edit_unit_in_billing_core_table',1),(126,'2015_04_08_122405_add_type_in_issues_table',1),(127,'2015_04_14_202233_add_creditcard_key_to_demographics_table',1),(128,'2015_08_07_162731_add_uma_client_id_to_practiceinfo_table',1),(129,'2015_08_26_052254_add_uma_refresh_token_to_practiceinfo_table',1),(130,'2015_08_28_123145_create_uma_table',1),(131,'2015_09_04_214622_create_refresh_tokens_table',1),(132,'2015_09_06_035931_create_uma_invitation_table',1),(133,'2015_09_09_044134_add_google_refresh_token_to_practiceinfo_table',1),(134,'2015_09_16_042115_add_uma_refresh_token_to_demographics_relate_table',1),(135,'2015_09_17_224532_add_practice_api_url_to_practiceinfo_table',1),(136,'2015_10_23_040404_add_table_id_to_uma_table',1),(137,'2016_06_09_162819_create_icd_fav_table',1),(138,'2016_08_13_181627_add_name_to_uma_invitation_table',1),(139,'2016_09_29_174338_add_hieofone_as_url_to_demographics_table',1),(140,'2016_11_02_190328_add_updated_at_to_users_table',1),(141,'2016_11_17_163507_add_pe_to_pe_table',1),(142,'2016_11_17_175424_add_ros_to_ros_table',1),(143,'2016_12_17_082709_change_orders_labs_icd_in_orders_table',1),(144,'2016_12_19_042853_add_orders_notes_in_orders_table',1),(145,'2016_12_26_143433_add_wt_percentile_in_vitals_table',1),(146,'2016_12_27_145404_add_address_id_in_rx_list_table',1),(147,'2016_12_27_173715_add_pharmacy_address_id_in_demographics_table',1),(148,'2016_12_28_015247_add_oh_diet_in_other_history_table',1),(149,'2017_01_10_173631_add_actions_in_t_messages_table',1),(150,'2017_01_16_180315_add_template_in_users_table',1),(151,'2017_01_25_140115_add_forms_in_users_table',1),(152,'2017_01_26_235440_add_forms_in_hpi_table',1),(153,'2017_02_09_040702_add_reports_in_users_table',1),(154,'2017_02_10_140556_add_reconcile_in_issues_table',1),(155,'2017_02_10_140758_add_reconcile_in_rx_list_table',1),(156,'2017_02_10_141031_add_reconcile_in_immunizations_table',1),(157,'2017_02_10_141330_add_reconcile_in_allergies_table',1),(158,'2017_02_10_141422_add_reconcile_in_sup_list_table',1),(159,'2017_03_01_233609_add_reconcile_in_documents_table',1),(160,'2017_03_21_232311_add_prescription_in_rx_list_table',1),(161,'2017_04_04_025215_add_patient_id_demographics_table',1),(162,'2017_04_04_025245_add_json_in_rx_list_table',1),(163,'2017_04_04_182440_change_billing_core_id_in_billing_core_table',1),(164,'2017_04_04_185234_change_bill_id_in_billing_table',1),(165,'2017_04_18_073143_add_sms_url_in_practiceinfo_table',1),(166,'2017_05_11_183615_add_test_code_in_tests_table',1),(167,'2017_05_11_202309_add_reminder_interval_in_practiceinfo_table',1),(168,'2017_05_11_202322_add_reminder_interval_in_demographics_table',1),(169,'2017_05_11_202702_add_notes_in_issues_table',1),(170,'2017_05_11_202712_add_notes_in_allergies_table',1),(171,'2017_07_31_050224_add_openepic_client_id_in_practiceinfo_table',1),(172,'2017_08_02_044112_add_pnosh_in_refresh_tokens_table',1),(173,'2018_04_21_011646_add_uma_uri_in_practiceinfo_table',1),(174,'2018_07_05_213736_add_hieofone_as_refresh_token_to_demographics_table',1),(175,'2018_07_14_190507_add_message_id_to_image_table',1),(176,'2018_09_07_150954_add_locale_to_users_table',1),(177,'2018_09_07_151424_add_label_to_encounters_table',1),(178,'2018_09_07_151543_add_label_to_t_messages_table',1),(179,'2018_09_07_151718_add_label_to_issues_table',1),(180,'2018_09_07_151814_add_label_to_allergies_table',1),(181,'2018_09_07_151913_add_label_to_documents_table',1),(182,'2018_09_07_152016_add_label_to_rx_list_table',1),(183,'2018_09_07_152115_add_label_to_image_table',1),(184,'2018_09_09_175047_add_label_to_other_history_table',1),(185,'2018_09_26_024432_add_provider_id_to_allergies_table',1),(186,'2018_10_16_170728_create_data_sync_table',1),(187,'2018_10_17_030419_add_country_to_practiceinfo_table',1),(188,'2018_10_17_030435_add_country_to_demographics_table',1),(189,'2018_10_17_030514_add_country_to_addressbook_table',1),(190,'2018_10_17_041005_add_insurance_insu_country_to_insurance_table',1),(191,'2018_10_17_042641_add_country_to_providers_table',1),(192,'2018_10_17_121640_add_encounter_condition_auto_country_to_encounters_table',1),(193,'2018_10_18_202522_add_schedule_notification_to_providers_table',1),(194,'2018_10_18_204012_add_secure_message_notification_to_users_table',1),(195,'2018_11_08_223502_add_results_to_alerts_table',1),(196,'2018_11_14_042925_add_locale_to_practiceinfo_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtm`
--

DROP TABLE IF EXISTS `mtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtm` (
  `mtm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `mtm_description` longtext,
  `mtm_recommendations` longtext,
  `mtm_beneficiary_notes` longtext,
  `complete` varchar(4) DEFAULT NULL,
  `mtm_action` longtext,
  `mtm_outcome` longtext,
  `mtm_related_conditions` longtext,
  `mtm_duration` varchar(255) DEFAULT NULL,
  `mtm_date_completed` date DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mtm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtm`
--

LOCK TABLES `mtm` WRITE;
/*!40000 ALTER TABLE `mtm` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npi`
--

DROP TABLE IF EXISTS `npi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npi` (
  `npi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `type` longtext,
  `classification` longtext,
  `specialization` longtext,
  PRIMARY KEY (`npi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npi`
--

LOCK TABLES `npi` WRITE;
/*!40000 ALTER TABLE `npi` DISABLE KEYS */;
/*!40000 ALTER TABLE `npi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` bigint(20) DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  `t_messages_id` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `orders_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orders_insurance` varchar(255) DEFAULT NULL,
  `orders_referrals` longtext,
  `orders_labs` longtext,
  `orders_radiology` longtext,
  `orders_cp` longtext,
  `orders_referrals_icd` longtext,
  `orders_labs_icd` longtext,
  `orders_radiology_icd` longtext,
  `orders_cp_icd` longtext,
  `orders_labs_obtained` varchar(255) DEFAULT NULL,
  `orders_completed` tinyint(1) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `orders_pending_date` datetime DEFAULT NULL,
  `orders_notes` longtext,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderslist`
--

DROP TABLE IF EXISTS `orderslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderslist` (
  `orderslist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `orders_category` varchar(255) DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `orders_description` longtext,
  `snomed` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderslist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderslist`
--

LOCK TABLES `orderslist` WRITE;
/*!40000 ALTER TABLE `orderslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderslist1`
--

DROP TABLE IF EXISTS `orderslist1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderslist1` (
  `orderslist1_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_code` bigint(20) DEFAULT NULL,
  `orders_category` varchar(255) DEFAULT NULL,
  `orders_vendor` varchar(255) DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `orders_description` longtext,
  `result_code` bigint(20) DEFAULT NULL,
  `result_name` varchar(255) DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `aoe_code` varchar(255) DEFAULT NULL,
  `aoe_field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderslist1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderslist1`
--

LOCK TABLES `orderslist1` WRITE;
/*!40000 ALTER TABLE `orderslist1` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderslist1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_history`
--

DROP TABLE IF EXISTS `other_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_history` (
  `oh_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `oh_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oh_pmh` longtext,
  `oh_psh` longtext,
  `oh_fh` longtext,
  `oh_sh` longtext,
  `oh_etoh` longtext,
  `oh_tobacco` longtext,
  `oh_drugs` longtext,
  `oh_employment` longtext,
  `oh_meds` longtext,
  `oh_supplements` longtext,
  `oh_allergies` longtext,
  `oh_psychosocial` longtext,
  `oh_developmental` longtext,
  `oh_medtrials` longtext,
  `oh_results` longtext,
  `oh_diet` longtext,
  `oh_physical_activity` longtext,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_history`
--

LOCK TABLES `other_history` WRITE;
/*!40000 ALTER TABLE `other_history` DISABLE KEYS */;
INSERT INTO `other_history` VALUES (1,1,1,NULL,'2019-02-16 01:07:54','\nReviewed by Paul Bertucci on 2019-02-15','\nReviewed by Paul Bertucci on 2019-02-15',NULL,NULL,NULL,NULL,NULL,NULL,'<strong>Acetaminophen 160 MG/ML Oral Suspension</strong> 160 MG/ML,  for headache<br><strong>Last Prescribed:</strong> 2019-02-07, 8 days ago\nReviewed by Paul Bertucci on 2019-02-15','\nReviewed by Paul Bertucci on 2019-02-04','\nReviewed by Paul Bertucci on 2019-02-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,2,NULL,'2019-02-07 23:46:53','\nReviewed by Paul Bertucci on 2019-02-07','\nReviewed by Paul Bertucci on 2019-02-07','---\n- \n  Name: Paul Bertucci\n  Relationship: Father\n  Status: Alive\n  Gender: Male\n  Date of Birth: 1976-05-01\n  Marital Status: Divorced\n  Mother:\n  Father:\n  Medical:\n- \n  Name: vilay sithongkang\n  Relationship: Mother\n  Status: Alive\n  Gender: Female\n  Date of Birth: 1979-10-11\n  Marital Status: Single\n  Mother:\n  Father:\n  Medical:\n',NULL,NULL,NULL,NULL,NULL,NULL,'\nReviewed by Paul Bertucci on 2019-02-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,2,NULL,'2019-02-05 22:33:12',NULL,NULL,'---\n- \n  Name: Paul Bertucci\n  Relationship: Father\n  Status: Alive\n  Gender: Male\n  Date of Birth: 1976-05-01\n  Marital Status: Divorced\n  Mother:\n  Father:\n  Medical:\n- \n  Name: vilay sithongkang\n  Relationship: Mother\n  Status: Alive\n  Gender: Female\n  Date of Birth: 1979-10-11\n  Marital Status: Single\n  Mother:\n  Father:\n  Medical:\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,0,1,NULL,'2019-02-07 23:44:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,1,NULL,'2019-02-09 04:29:48','\nReviewed by Paul Bertucci on 2019-02-08','\nReviewed by Paul Bertucci on 2019-02-08',NULL,NULL,NULL,NULL,NULL,NULL,'<strong>Acetaminophen 160 MG/ML Oral Suspension</strong> 160 MG/ML,  for headache<br><strong>Last Prescribed:</strong> 2019-02-07, 1 days ago\nReviewed by Paul Bertucci on 2019-02-08','\nReviewed by Paul Bertucci on 2019-02-08','\nReviewed by Paul Bertucci on 2019-02-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,8,2,NULL,'2019-02-07 23:46:53','\nReviewed by Paul Bertucci on 2019-02-07','\nReviewed by Paul Bertucci on 2019-02-07','---\n- \n  Name: Paul Bertucci\n  Relationship: Father\n  Status: Alive\n  Gender: Male\n  Date of Birth: 1976-05-01\n  Marital Status: Divorced\n  Mother:\n  Father:\n  Medical:\n- \n  Name: vilay sithongkang\n  Relationship: Mother\n  Status: Alive\n  Gender: Female\n  Date of Birth: 1979-10-11\n  Marital Status: Single\n  Mother:\n  Father:\n  Medical:\n',NULL,NULL,NULL,NULL,NULL,NULL,'\nReviewed by Paul Bertucci on 2019-02-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `other_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `pages_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `file_original` varchar(255) DEFAULT NULL,
  `file_size` varchar(100) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `pagecount` int(11) DEFAULT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pe`
--

DROP TABLE IF EXISTS `pe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pe` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `pe_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pe_gen1` longtext,
  `pe_eye1` longtext,
  `pe_eye2` longtext,
  `pe_eye3` longtext,
  `pe_ent1` longtext,
  `pe_ent2` longtext,
  `pe_ent3` longtext,
  `pe_ent4` longtext,
  `pe_ent5` longtext,
  `pe_ent6` longtext,
  `pe_neck1` longtext,
  `pe_neck2` longtext,
  `pe_resp1` longtext,
  `pe_resp2` longtext,
  `pe_resp3` longtext,
  `pe_resp4` longtext,
  `pe_cv1` longtext,
  `pe_cv2` longtext,
  `pe_cv3` longtext,
  `pe_cv4` longtext,
  `pe_cv5` longtext,
  `pe_cv6` longtext,
  `pe_ch1` longtext,
  `pe_ch2` longtext,
  `pe_gi1` longtext,
  `pe_gi2` longtext,
  `pe_gi3` longtext,
  `pe_gi4` longtext,
  `pe_gu1` longtext,
  `pe_gu2` longtext,
  `pe_gu3` longtext,
  `pe_gu4` longtext,
  `pe_gu5` longtext,
  `pe_gu6` longtext,
  `pe_gu7` longtext,
  `pe_gu8` longtext,
  `pe_gu9` longtext,
  `pe_lymph1` longtext,
  `pe_lymph2` longtext,
  `pe_lymph3` longtext,
  `pe_ms1` longtext,
  `pe_ms2` longtext,
  `pe_ms3` longtext,
  `pe_ms4` longtext,
  `pe_ms5` longtext,
  `pe_ms6` longtext,
  `pe_ms7` longtext,
  `pe_ms8` longtext,
  `pe_ms9` longtext,
  `pe_ms10` longtext,
  `pe_ms11` longtext,
  `pe_ms12` longtext,
  `pe_skin1` longtext,
  `pe_skin2` longtext,
  `pe_neuro1` longtext,
  `pe_neuro2` longtext,
  `pe_neuro3` longtext,
  `pe_psych1` longtext,
  `pe_psych2` longtext,
  `pe_psych3` longtext,
  `pe_psych4` longtext,
  `pe_constitutional1` longtext,
  `pe_mental1` longtext,
  `pe` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pe`
--

LOCK TABLES `pe` WRITE;
/*!40000 ALTER TABLE `pe` DISABLE KEYS */;
INSERT INTO `pe` VALUES (1,1,'Paul Bertucci','2019-02-05 00:52:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(2,2,'Paul Bertucci','2019-02-05 22:09:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'possible '),(3,1,'Paul Bertucci','2019-02-05 22:46:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(4,2,'Paul Bertucci','2019-02-05 23:02:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(5,1,'Paul Bertucci','2019-02-09 04:20:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(6,1,'Paul Bertucci','2019-02-09 04:53:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'So I find that this is not a good patient we should throw them on the street I had so I can just do my voice rec this way and it\'s all part of the record I read so'),(7,2,'Paul Bertucci','2019-02-23 01:35:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(8,2,'Paul Bertucci','2019-02-05 22:09:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'possible ');
/*!40000 ALTER TABLE `pe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `plan_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plan` longtext,
  `duration` varchar(100) DEFAULT NULL,
  `followup` longtext,
  `goals` longtext,
  `tp` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,1,'Paul Bertucci','2019-02-05 00:52:54','','','',NULL,NULL),(2,2,'Paul Bertucci','2019-02-05 22:10:46','possible surgery to re-attach tendon.','','',NULL,NULL),(4,2,'Paul Bertucci','2019-02-05 23:03:02','','','',NULL,NULL),(8,2,'Paul Bertucci','2019-02-05 22:10:46','possible surgery to re-attach tendon.','','',NULL,NULL);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos`
--

DROP TABLE IF EXISTS `pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL,
  `pos_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos`
--

LOCK TABLES `pos` WRITE;
/*!40000 ALTER TABLE `pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practiceinfo`
--

DROP TABLE IF EXISTS `practiceinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practiceinfo` (
  `practice_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `practice_name` varchar(255) DEFAULT NULL,
  `street_address1` varchar(255) DEFAULT NULL,
  `street_address2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `primary_contact` varchar(100) DEFAULT NULL,
  `npi` varchar(100) DEFAULT NULL,
  `medicare` varchar(100) DEFAULT NULL,
  `tax_id` varchar(100) DEFAULT NULL,
  `weight_unit` varchar(100) DEFAULT NULL,
  `height_unit` varchar(100) DEFAULT NULL,
  `temp_unit` varchar(100) DEFAULT NULL,
  `hc_unit` varchar(100) DEFAULT NULL,
  `sun_o` varchar(10) DEFAULT NULL,
  `sun_c` varchar(10) DEFAULT NULL,
  `mon_o` varchar(10) DEFAULT NULL,
  `mon_c` varchar(10) DEFAULT NULL,
  `tue_o` varchar(10) DEFAULT NULL,
  `tue_c` varchar(10) DEFAULT NULL,
  `wed_o` varchar(10) DEFAULT NULL,
  `wed_c` varchar(10) DEFAULT NULL,
  `thu_o` varchar(10) DEFAULT NULL,
  `thu_c` varchar(10) DEFAULT NULL,
  `fri_o` varchar(10) DEFAULT NULL,
  `fri_c` varchar(10) DEFAULT NULL,
  `sat_o` varchar(10) DEFAULT NULL,
  `sat_c` varchar(10) DEFAULT NULL,
  `minTime` varchar(10) DEFAULT NULL,
  `maxTime` varchar(10) DEFAULT NULL,
  `weekends` tinyint(1) DEFAULT NULL,
  `default_pos_id` tinyint(1) DEFAULT NULL,
  `documents_dir` varchar(255) DEFAULT NULL,
  `billing_street_address1` varchar(255) DEFAULT NULL,
  `billing_street_address2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `fax_type` varchar(100) DEFAULT NULL,
  `fax_email` varchar(100) DEFAULT NULL,
  `fax_email_password` varchar(100) DEFAULT NULL,
  `fax_email_hostname` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(100) DEFAULT NULL,
  `patient_portal` varchar(255) DEFAULT NULL,
  `rcopia_extension` varchar(4) DEFAULT NULL,
  `rcopia_apiVendor` varchar(100) DEFAULT NULL,
  `rcopia_apiPass` varchar(100) DEFAULT NULL,
  `rcopia_apiPractice` varchar(100) DEFAULT NULL,
  `rcopia_apiSystem` varchar(100) DEFAULT NULL,
  `rcopia_update_notification_lastupdate` varchar(100) DEFAULT NULL,
  `updox_extension` varchar(4) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `mtm_extension` varchar(4) DEFAULT NULL,
  `practice_logo` varchar(255) DEFAULT NULL,
  `mtm_logo` varchar(255) DEFAULT NULL,
  `mtm_alert_users` longtext,
  `additional_message` longtext,
  `snomed_extension` varchar(4) DEFAULT NULL,
  `vivacare` varchar(255) DEFAULT NULL,
  `sales_tax` varchar(10) DEFAULT NULL,
  `practicehandle` varchar(255) DEFAULT NULL,
  `peacehealth_id` varchar(100) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `icd` varchar(100) DEFAULT NULL,
  `supplements_menu_item` varchar(100) DEFAULT 'y',
  `immunizations_menu_item` varchar(100) DEFAULT 'y',
  `encounter_template` varchar(100) DEFAULT 'standardmedical',
  `fax_email_smtp` varchar(100) DEFAULT 'smtp.gmail.com',
  `phaxio_api_key` varchar(100) DEFAULT NULL,
  `phaxio_api_secret` varchar(100) DEFAULT NULL,
  `birthday_extension` varchar(4) DEFAULT 'n',
  `birthday_sent_date` varchar(100) DEFAULT NULL,
  `birthday_message` longtext,
  `opennotes` varchar(4) DEFAULT 'n',
  `patient_centric` varchar(4) DEFAULT 'n',
  `appointment_extension` varchar(4) DEFAULT 'n',
  `appointment_sent_date` varchar(100) DEFAULT NULL,
  `appointment_message` longtext,
  `appointment_interval` varchar(100) DEFAULT '31556926',
  `practice_api_key` varchar(100) DEFAULT NULL,
  `practice_registration_key` varchar(100) DEFAULT NULL,
  `practice_registration_timeout` varchar(100) DEFAULT '',
  `openidconnect_client_id` varchar(255) DEFAULT '',
  `openidconnect_client_secret` varchar(255) DEFAULT '',
  `uma_client_id` varchar(255) DEFAULT '',
  `uma_client_secret` varchar(255) DEFAULT '',
  `uma_refresh_token` varchar(255) DEFAULT '',
  `google_refresh_token` varchar(255) DEFAULT '',
  `practice_api_url` varchar(255) DEFAULT '',
  `sms_url` varchar(255) DEFAULT NULL,
  `reminder_interval` varchar(255) DEFAULT NULL,
  `openepic_client_id` varchar(255) DEFAULT NULL,
  `openepic_sandbox_client_id` varchar(255) DEFAULT NULL,
  `uma_uri` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'United States',
  `billing_country` varchar(255) NOT NULL DEFAULT 'United States',
  `locale` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`practice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practiceinfo`
--

LOCK TABLES `practiceinfo` WRITE;
/*!40000 ALTER TABLE `practiceinfo` DISABLE KEYS */;
INSERT INTO `practiceinfo` VALUES (1,'GMAST','6144 NE Glisan St','','Portland','OR','97213','(925) 597-0079','(925) 597-0079','pj@dataxdesign.com',NULL,'','','','','kg','cm','C','cm','','','08:00 AM','05:00 PM','08:00 AM','05:00 PM','08:00 AM','05:00 PM','08:00 AM','05:00 PM','08:00 AM','05:00 PM','','','08:00 AM','05:00 PM',1,1,'/noshdocuments/','6144 NE Glisan St','','Portland','OR','97213','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.0.0',NULL,'assets/images/GMASTlogo copy_1549329226.jpg',NULL,NULL,'',NULL,'',NULL,NULL,NULL,'Y','America/Los_Angeles',NULL,'y','y','medical','smtp.gmail.com',NULL,NULL,'n',NULL,NULL,'n','n','n',NULL,NULL,'31556926',NULL,NULL,'','','','','','','','',NULL,'24',NULL,NULL,NULL,'United States','United States',NULL);
/*!40000 ALTER TABLE `practiceinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedure` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `proc_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `proc_type` varchar(100) DEFAULT NULL,
  `proc_cpt` varchar(5) DEFAULT NULL,
  `proc_description` longtext,
  `proc_complications` longtext,
  `proc_ebl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedurelist`
--

DROP TABLE IF EXISTS `procedurelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedurelist` (
  `procedurelist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `procedure_type` varchar(255) DEFAULT NULL,
  `procedure_description` longtext,
  `procedure_complications` longtext,
  `cpt` varchar(255) DEFAULT NULL,
  `procedure_ebl` varchar(100) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`procedurelist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedurelist`
--

LOCK TABLES `procedurelist` WRITE;
/*!40000 ALTER TABLE `procedurelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedurelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` bigint(20) NOT NULL,
  `license` varchar(100) DEFAULT NULL,
  `license_state` varchar(100) DEFAULT NULL,
  `npi` varchar(100) DEFAULT NULL,
  `npi_taxonomy` varchar(100) DEFAULT NULL,
  `upin` varchar(100) DEFAULT NULL,
  `dea` varchar(100) DEFAULT NULL,
  `medicare` varchar(100) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `tax_id` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `timeslotsperhour` int(11) DEFAULT NULL,
  `sun_o` varchar(10) DEFAULT NULL,
  `sun_c` varchar(10) DEFAULT NULL,
  `mon_o` varchar(10) DEFAULT NULL,
  `mon_c` varchar(10) DEFAULT NULL,
  `tue_o` varchar(10) DEFAULT NULL,
  `tue_c` varchar(10) DEFAULT NULL,
  `wed_o` varchar(10) DEFAULT NULL,
  `wed_c` varchar(10) DEFAULT NULL,
  `thu_o` varchar(10) DEFAULT NULL,
  `thu_c` varchar(10) DEFAULT NULL,
  `fri_o` varchar(10) DEFAULT NULL,
  `fri_c` varchar(10) DEFAULT NULL,
  `sat_o` varchar(10) DEFAULT NULL,
  `sat_c` varchar(10) DEFAULT NULL,
  `rcopia_username` varchar(100) DEFAULT NULL,
  `schedule_increment` varchar(100) DEFAULT '20',
  `practice_id` int(11) DEFAULT NULL,
  `peacehealth_id` varchar(100) DEFAULT NULL,
  `license_country` varchar(255) NOT NULL DEFAULT 'United States',
  `schedule_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (2,'','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',1,'','United States',NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `received`
--

DROP TABLE IF EXISTS `received`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `received` (
  `received_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `fileFrom` varchar(255) DEFAULT NULL,
  `fileDateTime` datetime DEFAULT NULL,
  `filePages` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`received_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `received`
--

LOCK TABLES `received` WRITE;
/*!40000 ALTER TABLE `received` DISABLE KEYS */;
/*!40000 ALTER TABLE `received` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipients` (
  `sendlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `faxrecipient` varchar(255) DEFAULT NULL,
  `faxnumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sendlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refresh_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `endpoint_uri` longtext,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `pnosh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repeat_schedule`
--

DROP TABLE IF EXISTS `repeat_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repeat_schedule` (
  `repeat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `repeat_day` varchar(20) DEFAULT NULL,
  `repeat_start_time` varchar(20) DEFAULT NULL,
  `repeat_end_time` varchar(20) DEFAULT NULL,
  `repeat` int(11) DEFAULT NULL,
  `until` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `provider_id` bigint(20) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  PRIMARY KEY (`repeat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeat_schedule`
--

LOCK TABLES `repeat_schedule` WRITE;
/*!40000 ALTER TABLE `repeat_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `repeat_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ros`
--

DROP TABLE IF EXISTS `ros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ros` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `ros_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ros_gen` longtext,
  `ros_eye` longtext,
  `ros_ent` longtext,
  `ros_resp` longtext,
  `ros_cv` longtext,
  `ros_gi` longtext,
  `ros_gu` longtext,
  `ros_mus` longtext,
  `ros_neuro` longtext,
  `ros_psych` longtext,
  `ros_heme` longtext,
  `ros_endocrine` longtext,
  `ros_skin` longtext,
  `ros_wcc` longtext,
  `ros_psych1` longtext,
  `ros_psych2` longtext,
  `ros_psych3` longtext,
  `ros_psych4` longtext,
  `ros_psych5` longtext,
  `ros_psych6` longtext,
  `ros_psych7` longtext,
  `ros_psych8` longtext,
  `ros_psych9` longtext,
  `ros_psych10` longtext,
  `ros_psych11` longtext,
  `ros` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ros`
--

LOCK TABLES `ros` WRITE;
/*!40000 ALTER TABLE `ros` DISABLE KEYS */;
INSERT INTO `ros` VALUES (1,1,'Paul Bertucci','2019-02-05 00:52:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(2,2,'Paul Bertucci','2019-02-05 22:05:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(3,1,'Paul Bertucci','2019-02-05 22:45:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(5,1,'Paul Bertucci','2019-02-09 04:19:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(6,1,'Paul Bertucci','2019-02-09 04:48:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(7,2,'Paul Bertucci','2019-02-09 04:45:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(8,2,'Paul Bertucci','2019-02-05 22:05:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `ros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rx`
--

DROP TABLE IF EXISTS `rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rx` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `rx_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rx_rx` longtext,
  `rx_supplements` longtext,
  `rx_immunizations` longtext,
  `rx_orders_summary` longtext,
  `rx_supplements_orders_summary` longtext,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rx`
--

LOCK TABLES `rx` WRITE;
/*!40000 ALTER TABLE `rx` DISABLE KEYS */;
INSERT INTO `rx` VALUES (5,1,'Paul Bertucci','2019-02-07 23:42:14','PRESCRIBED MEDICATIONS:  \nAcetaminophen 160 MG/ML Oral Suspension 160 MG/ML,  for headache, Quantity: 100, Refills: 1',NULL,NULL,'PRESCRIBED MEDICATIONS:  \nAcetaminophen 160 MG/ML Oral Suspension 160 MG/ML,  for headache, Quantity: 100, Refills: 1',NULL);
/*!40000 ALTER TABLE `rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rx_list`
--

DROP TABLE IF EXISTS `rx_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rx_list` (
  `rxl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `rxl_date_active` datetime DEFAULT NULL,
  `rxl_date_prescribed` datetime DEFAULT NULL,
  `rxl_medication` varchar(255) DEFAULT NULL,
  `rxl_dosage` varchar(255) DEFAULT NULL,
  `rxl_dosage_unit` varchar(255) DEFAULT NULL,
  `rxl_sig` varchar(255) DEFAULT NULL,
  `rxl_route` varchar(255) DEFAULT NULL,
  `rxl_frequency` varchar(255) DEFAULT NULL,
  `rxl_instructions` varchar(255) DEFAULT NULL,
  `rxl_quantity` varchar(255) DEFAULT NULL,
  `rxl_refill` varchar(255) DEFAULT NULL,
  `rxl_reason` varchar(255) DEFAULT NULL,
  `rxl_date_inactive` datetime DEFAULT NULL,
  `rxl_date_old` datetime DEFAULT NULL,
  `rxl_provider` varchar(255) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `rxl_dea` varchar(255) DEFAULT NULL,
  `rxl_daw` varchar(255) DEFAULT NULL,
  `rxl_license` varchar(255) DEFAULT NULL,
  `rxl_days` int(11) DEFAULT NULL,
  `rxl_due_date` datetime DEFAULT NULL,
  `rcopia_sync` varchar(4) DEFAULT NULL,
  `rxl_ndcid` varchar(11) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `reconcile` varchar(255) DEFAULT NULL,
  `prescription` varchar(255) DEFAULT NULL,
  `json` longtext,
  `transaction` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rxl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rx_list`
--

LOCK TABLES `rx_list` WRITE;
/*!40000 ALTER TABLE `rx_list` DISABLE KEYS */;
INSERT INTO `rx_list` VALUES (1,1,'2019-02-07 00:00:00','2019-02-07 00:00:00','Acetaminophen 160 MG/ML Oral Suspension','160','MG/ML','','Oral route','','','100','1','headache','0000-00-00 00:00:00','0000-00-00 00:00:00','Paul Bertucci',2,'','',' - ',0,NULL,'n','00363000805',NULL,'y','pending','{\"resourceType\":\"MedicationRequest\",\"text\":{\"status\":\"generated\",\"div\":\"<div>Acetaminophen 160 MG\\/ML Oral Suspension 160 MG\\/ML,  for headache<\\/div>\"},\"id\":1,\"intent\":\"order\",\"priority\":\"routine\",\"subject\":{\"reference\":\"Patient\\/1\",\"display\":\"John Sample\"},\"requester\":{\"agent\":{\"reference\":\"Practitioner\\/2\",\"display\":\"Paul Bertucci\"},\"onBehalfOf\":{\"reference\":\"Organization\\/1\"}},\"dateWritten\":\"2019-02-07\",\"medicationReference\":{\"reference\":\"Medication\\/00363000805\",\"display\":\"Acetaminophen 100 MG\\/ML Oral Suspension\"},\"reasonCodeableConcept\":{\"coding\":[{\"system\":\"http:\\/\\/snomed.info\\/sct\",\"code\":\"25064002\",\"display\":\"Headache\"}]},\"status\":\"active\",\"dosageInstruction\":[{\"text\":\" for headache\",\"asNeededBoolean\":false,\"quantityQuantity\":{\"value\":\"100\"},\"doseQuantity\":{\"value\":\"160\",\"unit\":\"MG\\/ML\"}}],\"dispenseRequest\":{\"medicationReference\":{\"reference\":\"Medication\\/00363000805\",\"display\":\"Acetaminophen 100 MG\\/ML Oral Suspension\"},\"validityPeriod\":{\"start\":\"2019-02-07\",\"end\":\"2020-02-07\"},\"numberOfRepeatsAllowed\":\"1\",\"quantity\":{\"value\":\"100\"},\"expectedSupplyDuration\":{\"value\":0,\"unit\":\"days\",\"system\":\"http:\\/\\/unitsofmeasure.org\",\"code\":\"d\"}},\"substitution\":{\"allowed\":true}}',NULL,NULL);
/*!40000 ALTER TABLE `rx_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scans`
--

DROP TABLE IF EXISTS `scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scans` (
  `scans_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileName` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `fileDateTime` datetime DEFAULT NULL,
  `filePages` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scans`
--

LOCK TABLES `scans` WRITE;
/*!40000 ALTER TABLE `scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `appt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `visit_type` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `provider_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` longtext,
  PRIMARY KEY (`appt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,2,1549319400,1549320300,'Bertucci, Donald (DOB: 01/21/2018) (ID: 2)','Office Visit','','Attended',2,2,'2019-02-07 23:49:57',''),(2,2,1549648800,1549649700,'Bertucci, Donald (DOB: 01/21/2018) (ID: 2)','Office Visit','evaluate knee\r\n','Reminder Sent',2,2,'2019-02-07 23:49:57',''),(3,1,1549651500,1549652400,'Sample, John,  (DOB: 08/30/1989) (ID: 1)','Remote Clinic Visit','Cleft Lip assessment','Attended',2,2,'2019-02-05 22:45:50',''),(4,1,1551114000,1551121200,'Sample, John,  (DOB: 08/30/1989) (ID: 1)','Remote Clinic Visit','cleft bi-lateral full\r\nAGE: 14 months\r\nHEM: 9999.99','',2,2,'2019-02-23 02:47:49','');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendfax`
--

DROP TABLE IF EXISTS `sendfax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendfax` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `faxsubject` varchar(255) DEFAULT NULL,
  `faxcoverpage` varchar(10) DEFAULT NULL,
  `faxmessage` longtext,
  `faxschedule` varchar(10) DEFAULT NULL,
  `datepicker` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `faxdraft` varchar(10) DEFAULT NULL,
  `sentdate` date DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `attempts` tinyint(1) DEFAULT NULL,
  `ready_to_send` tinyint(1) DEFAULT NULL,
  `command` longtext,
  `last_attempt` datetime DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendfax`
--

LOCK TABLES `sendfax` WRITE;
/*!40000 ALTER TABLE `sendfax` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendfax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snomed_procedure_imaging`
--

DROP TABLE IF EXISTS `snomed_procedure_imaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snomed_procedure_imaging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snomed_procedure_imaging`
--

LOCK TABLES `snomed_procedure_imaging` WRITE;
/*!40000 ALTER TABLE `snomed_procedure_imaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `snomed_procedure_imaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snomed_procedure_path`
--

DROP TABLE IF EXISTS `snomed_procedure_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snomed_procedure_path` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conceptid` varchar(255) DEFAULT NULL,
  `path` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snomed_procedure_path`
--

LOCK TABLES `snomed_procedure_path` WRITE;
/*!40000 ALTER TABLE `snomed_procedure_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `snomed_procedure_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sup_list`
--

DROP TABLE IF EXISTS `sup_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sup_list` (
  `sup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `sup_date_active` datetime DEFAULT NULL,
  `sup_date_prescribed` datetime DEFAULT NULL,
  `sup_supplement` varchar(255) DEFAULT NULL,
  `sup_dosage` varchar(255) DEFAULT NULL,
  `sup_dosage_unit` varchar(255) DEFAULT NULL,
  `sup_sig` varchar(255) DEFAULT NULL,
  `sup_route` varchar(255) DEFAULT NULL,
  `sup_frequency` varchar(255) DEFAULT NULL,
  `sup_instructions` varchar(255) DEFAULT NULL,
  `sup_quantity` varchar(255) DEFAULT NULL,
  `sup_reason` varchar(255) DEFAULT NULL,
  `sup_date_inactive` datetime DEFAULT NULL,
  `sup_date_old` datetime DEFAULT NULL,
  `sup_provider` varchar(255) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `supplement_id` int(11) DEFAULT NULL,
  `reconcile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sup_list`
--

LOCK TABLES `sup_list` WRITE;
/*!40000 ALTER TABLE `sup_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `sup_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplement_inventory`
--

DROP TABLE IF EXISTS `supplement_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplement_inventory` (
  `supplement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_purchase` datetime DEFAULT NULL,
  `sup_description` longtext,
  `sup_strength` varchar(255) DEFAULT NULL,
  `sup_manufacturer` varchar(255) DEFAULT NULL,
  `sup_expiration` datetime DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sup_lot` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `quantity1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplement_inventory`
--

LOCK TABLES `supplement_inventory` WRITE;
/*!40000 ALTER TABLE `supplement_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplement_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplements_list`
--

DROP TABLE IF EXISTS `supplements_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplements_list` (
  `supplements_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplement_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplements_list`
--

LOCK TABLES `supplements_list` WRITE;
/*!40000 ALTER TABLE `supplements_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplements_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_messages`
--

DROP TABLE IF EXISTS `t_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_messages` (
  `t_messages_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `t_messages_to` varchar(255) DEFAULT NULL,
  `t_messages_from` varchar(255) DEFAULT NULL,
  `t_messages_provider` varchar(255) DEFAULT NULL,
  `t_messages_signed` varchar(4) DEFAULT NULL,
  `t_messages_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_messages_dos` datetime DEFAULT NULL,
  `t_messages_subject` varchar(255) DEFAULT NULL,
  `t_messages_message` longtext,
  `practice_id` int(11) DEFAULT NULL,
  `actions` longtext,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_messages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_messages`
--

LOCK TABLES `t_messages` WRITE;
/*!40000 ALTER TABLE `t_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tags_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Sampletag'),(2,'first');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_relate`
--

DROP TABLE IF EXISTS `tags_relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_relate` (
  `tags_relate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tags_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `eid` bigint(20) DEFAULT NULL,
  `t_messages_id` bigint(20) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `documents_id` int(11) DEFAULT NULL,
  `hippa_id` int(11) DEFAULT NULL,
  `appt_id` int(11) DEFAULT NULL,
  `tests_id` int(11) DEFAULT NULL,
  `mtm_id` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tags_relate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_relate`
--

LOCK TABLES `tags_relate` WRITE;
/*!40000 ALTER TABLE `tags_relate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_relate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `default` varchar(100) DEFAULT NULL,
  `template_name` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `array` longtext,
  `practice_id` int(11) DEFAULT NULL,
  `scoring` longtext,
  `template_core_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `tests_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `test_datetime` datetime DEFAULT NULL,
  `test_result` longtext,
  `test_units` varchar(100) DEFAULT NULL,
  `test_reference` longtext,
  `test_flags` varchar(100) DEFAULT NULL,
  `test_provider_id` bigint(20) DEFAULT NULL,
  `test_unassigned` longtext,
  `test_from` longtext,
  `test_type` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `test_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tests_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,1,'Hemoglobin','2019-02-07 00:00:00','normal','n/a','','',2,NULL,'','Laboratory',NULL,'');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uma`
--

DROP TABLE IF EXISTS `uma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uma` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_set_id` varchar(255) DEFAULT NULL,
  `scope` longtext,
  `user_access_policy_uri` longtext,
  `table_id` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uma`
--

LOCK TABLES `uma` WRITE;
/*!40000 ALTER TABLE `uma` DISABLE KEYS */;
/*!40000 ALTER TABLE `uma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uma_invitation`
--

DROP TABLE IF EXISTS `uma_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uma_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `invitation_timeout` varchar(255) DEFAULT NULL,
  `resource_set_ids` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uma_invitation`
--

LOCK TABLES `uma_invitation` WRITE;
/*!40000 ALTER TABLE `uma_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `uma_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `middle` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT '100',
  `token` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `secret_question` varchar(255) DEFAULT NULL,
  `secret_answer` varchar(255) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_token_secret` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `template` longtext,
  `forms` longtext,
  `reports` longtext,
  `locale` varchar(10) DEFAULT NULL,
  `secure_message_notification` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','pj@dataxdesign.com','Administrator',NULL,NULL,NULL,NULL,'$2a$10$xv00mccoxHCkz4PArNaqRue89WUfURqR9RqmLeJIRapg6tMeMvaNe',1,NULL,NULL,1,NULL,NULL,1,'STVz5ebpcvZS6aJYYsBXQ0uiRg4qGRPAZ933mlzjs8oeSE7rebsalnTp7T4N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'pbertucci','pbertucci@dataxdesign.com','Paul Bertucci','Paul','Bertucci','','','$2a$10$AjiZGYlUtdGVeWtXsXSGweDao7ynMsEY2fice50BwJ8De1GhblYJ.',2,NULL,NULL,1,'Default password','iTriage!',1,'t5PV8A2tGdp3deKBm8VXomUtSZcsVNtZ7fgoRS08LxlzIyAhS62YI4130VwH',NULL,NULL,NULL,'2019-02-04 16:19:06',NULL,'---\naction:\nalert_description:\nassessment_other:\nassessment_ddx:\nassessment_notes:\nbody:\ngoals:\nhpi:\n  Asthma:\n    - \n      text: Frequency of attacks per week\n      input: text\n    - \n      text: Time of usual attacks\n      input: text\n    - \n      text: Number of ER visits or hospitalizations\n      input: text\n    - \n      text: Number of school/work days missed\n      input: text\n    - \n      text: Nocturnal awakenings\n      input: text\n    - \n      text: Restriction of activities\n      input: text\n    - \n      text: Recent infections\n      input: text\n    - \n      text: Asthma triggers\n      input: text\n  Chronic Pain:\n    - \n      text: Diagnosis\n      input: text\n    - \n      text: Side effects from medications\n      input: text\n    - \n      text: Other treatments\n      input: text\n    - \n      text: Pain scale (0-10)\n      input: text\n    - \n      text: Relief (% improvement) since last visit\n      input: text\n    - \n      text: General activity\n      input: text\n    - \n      text: Interactions with other people\n      input: text\n    - \n      text: Mood\n      input: text\n    - \n      text: Ability to work\n      input: text\n    - \n      text: Enjoyment of life\n      input: text\n  Generic:\n    - \n      text: Location/Description\n      input: text\n    - \n      text: Duration\n      input: text\n    - \n      text: Modifying factors\n      input: text\n  Injury:\n    - \n      text: Date of injury\n      input: text\n    - \n      text: Description of how injury occurred\n      input: text\n    - \n      text: Treatments\n      input: text\n    - \n      text: Pain scale (0-10)\n      input: text\n    - \n      text: Relief (% improvement) since last visit\n      input: text\n    - \n      text: General activity\n      input: text\n    - \n      text: Ability to work\n      input: text\n  Birth History:\n    - \n      text: Pregnancy complications\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Delivery complications\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Postpartum complications\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Gestational age\n      input: text\n      age: child\n    - \n      text: Birth weight\n      input: text\n      age: child\n    - \n      text: Apgar scores\n      input: text\n      age: child\n    - \n      text: Hearing screen\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Metabolic screen\n      input: radio\n      options: normal,abnormal\n      age: child\n  Sports Physical:\n    - \n      text: >\n        Illness, surgery, or other medical\n        conditions in the past 2 months\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Concussion, skull fractures, or neck\n        injury\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Poor or abnormal vision or loss of an\n        eye\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Rheumatic fever or heart murmur\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Heart condition\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Chest discomfort during exercise\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Lung condition or breathing difficulty\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Asthma or chronic bronchitis\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Any bone or joint injury\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Epilepsy or other convulsive disorder\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Any other medical problem or surgical\n        operation other than tonsillectomy\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Hernia or loss of ovary\n      input: radio\n      options: yes,no\n      gender: f\n      age: child\n    - \n      text: Absence of an ovary, kidney, or lung\n      input: radio\n      options: yes,no\n      gender: f\n      age: child\n    - \n      text: Hernia or loss of testicle\n      input: radio\n      options: yes,no\n      gender: m\n      age: child\n    - \n      text: Absence of an testicle, kidney, or lung\n      input: radio\n      options: yes,no\n      gender: m\n      age: child\n  Well Woman Exam:\n    - \n      text: Abnormal pap smears in the past\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Irregular periods\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Bleeding between periods\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Days between periods\n      input: text\n      gender: f\n      age: adult\n    - \n      text: Duration of periods\n      input: text\n      gender: f\n      age: adult\n    - \n      text: Period flow\n      input: text\n      gender: f\n      age: adult\n    - \n      text: Pain with periods (0-10)\n      input: text\n      gender: f\n      age: adult\n    - \n      text: >\n        Pain with premenstrual tension syndrome\n        (0-10)\n      input: text\n      gender: f\n      age: adult\n    - \n      text: Pain with sex (0-10)\n      input: text\n      gender: f\n      age: adult\n    - \n      text: Sexually active\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Birth control\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Self breast exams\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\n    - \n      text: Past or current history of abuse\n      input: radio\n      options: yes,no\n      gender: f\n      age: adult\nletter_body:\n  School Absence:\n    - \n      text: \'*~letterintro~*\'\n      normal: true\n    - \n      text: \'Please excuse *~firstname~* from school starting\'\n      input: text\n    - \n      text: \'*~firstname~* can return to school on\'\n      input: text\n  Work Absence:\n    - \n      text: \'*~letterintro~*\'\n      normal: true\n    - \n      text: \'Please excuse *~firstname~* from work starting\'\n      input: text\n    - \n      text: \'*~firstname~* can return to work on\'\n      input: text\n  Work Light Duty:\n    - \n      text: \'*~firstname~* should begin the following modified work restrictions\'\n    - \n      text: Start Date\n      input: text\n    - \n      text: End Date\n      input: text\n    - \n      text: Limited use of the right shoulder\n    - \n      text: No use of the right shoulder\n    - \n      text: Limited use of the left shoulder\n    - \n      text: No use of the left shoulder\n    - \n      text: Limited use of both shoulders\n    - \n      text: No use of both shoulders\n    - \n      text: Limited use of the right arm\n    - \n      text: No use of the right arm\n    - \n      text: Limited use of the left arm\n    - \n      text: No use of the left arm\n    - \n      text: Limited use of both arms\n    - \n      text: No use of both arms\n    - \n      text: Limited use of the right hand\n    - \n      text: No use of the right hand\n    - \n      text: Limited use of the left hand\n    - \n      text: No use of the left hand\n    - \n      text: Limited use of both hands\n    - \n      text: No use of both hands\n    - \n      text: Limited use of the right leg\n    - \n      text: No use of the right leg\n    - \n      text: Limited use of the left leg\n    - \n      text: No use of the left leg\n    - \n      text: Limited use of both legs\n    - \n      text: No use of both legs\n    - \n      text: >\n        Need to use splint provided while at\n        work\n    - \n      text: >\n        Need to use splint provided while at\n        work\n    - \n      text: >\n        Need to use back brace provided while at\n        work\n    - \n      text: Limited bending\n    - \n      text: No bending\n    - \n      text: Limited climbing\n    - \n      text: No climbing\n    - \n      text: Limited heavy lifting\n    - \n      text: No heavy lifting\n    - \n      text: Limited overhead reaching\n    - \n      text: No overhead reaching\n    - \n      text: Limited pulling\n    - \n      text: No pulling\n    - \n      text: Limited pushing\n    - \n      text: No pushing\n    - \n      text: Limited squatting\n    - \n      text: No squatting\n    - \n      text: Limited standing\n    - \n      text: No standing\n    - \n      text: Limited stooping\n    - \n      text: No stooping\n    - \n      text: Limited twisting\n    - \n      text: No twisting\n    - \n      text: Limited weight bearing\n    - \n      text: No weight bearing\n    - \n      text: Limited work near moving machinery\n    - \n      text: No work near moving machinery\n    - \n      text: Limited work requiring depth perception\n    - \n      text: No work requiring depth perception\noh_developmental:\noh_diet:\noh_drugs:\noh_employment:\noh_etoh:\noh_medtrials:\noh_physical_activity:\noh_psychosocial:\noh_sh:\n  Social History:\n    - \n      text: \'Spouse or partner name:\'\n      input: text\n    - \n      text: \'Family memebers in the household:\'\n      input: text\n    - \n      text: \'Children:\'\n      input: text\n    - \n      text: \'Pets:\'\n      input: text\n    - \n      text: \'Hobbies:\'\n      input: text\n    - \n      text: \'Child care:\'\n      input: text\n  Sexual History:\n    - \n      text: Number of sexual partners\n      input: radio\n      options: One,Multiple\n    - \n      text: Sexual partner preference\n      input: select\n      options: Heterosexual,Homosexual,Bisexual\noh_tobacco:\n  Tobacco History:\n    - \n      text: \'Type:\'\n      input: text\n    - \n      text: \'Frequency:\'\n      input: text\n    - \n      text: \'Years of using tobacco:\'\n      input: text\n    - \n      text: Intention to quit?\n      input: text\n  Tobacco Cessation:\n    - \n      text: \'Methods tried:\'\n      input: text\n    - \n      text: \'What has worked:\'\n      input: text\n    - \n      text: \'What has failed:\'\n      input: text\norders_cp:\norders_labs:\n  LabCorp:\n    - \n      text: Aerobic Bacterial Culture\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 8649\n        cpt: 87070\n        loinc: 634-6\n        results_code: 8649\n    - \n      text: Allergen Profile, Food\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 660423\n        cpt: 86003,86005\n        loinc: >\n          7258-7,6276-0,6087-1,6206-7,6248-9,6219-0,6039-2,15218-1,7291-8,6080-6\n        results_code: >\n          602453,602459,602460,602451,602457,602498,602509,602860,602528,602492\n    - \n      text: ANA\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 164947\n        cpt: 86038\n        loinc: 5048-4\n        results_code: 164947\n    - \n      text: Basic Metabolic Panel\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 322758\n        cpt: 80048\n        loinc: >\n          48642-3,48643-1,2345-7,3094-0,2160-0,3097-3,2951-2,2823-3,2075-0,2028-9,17861-6\n        results_code: >\n          100791,100797,1032,1040,1370,11577,1198,1180,1206,1578,1016\n    - \n      text: BNP\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 140889\n        cpt: 83880\n        loinc: 30934-4\n        results_code: 140891\n    - \n      text: CBC with Differential and Platelets\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 5009\n        cpt: 85025\n        loinc: >\n          6690-2,789-8,718-7,4544-3,787-2,785-6,786-4,788-0,777-3,770-8,736-9,5905-5,713-8,706-2,751-8,731-0,742-7,711-2,704-7,38518-7,51584-1,58413-6,18314-5\n        results_code: >\n          5025,5033,5041,5058,15065,15073,15081,105007,15172,15107,15123,15131,15149,15156,15909,15917,15925,15933,15941,15108,15911,15945,15180\n    - \n      text: Chlamydia GC Amplification\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 183194\n        cpt: 87491,87591\n        loinc: 43304-5,43305-2\n        results_code: 188078,188086\n    - \n      text: Comprehensive Metabolic Panel\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 322000\n        cpt: 80053\n        loinc: >\n          48642-3,48643-1,2345-7,3094-0,2160-0,3097-3,2951-2,2823-3,2075-0,2028-9,17861-6,2885-2,1751-7,10834-0,1759-0,1975-2,6768-6,1920-8,1742-6\n        results_code: >\n          100791,100797,1032,1040,1370,11577,1198,1180,1206,1578,1016,1073,1081,12039,12047,1099,1107,1123,1545\n    - \n      text: C-Reactive Protein\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 6627\n        cpt: 86140\n        loinc: 1988-5\n        results_code: 6627\n    - \n      text: Ferritin\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 4598\n        cpt: 82728\n        loinc: 2276-4\n        results_code: 4598\n    - \n      text: Giardia, Ova and Parasite\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 140285\n        cpt: 87177,87209,87329\n        loinc: 10701-1,6412-1\n        results_code: 8624,182204\n    - \n      text: Hemoglobin A1c\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 1453\n        cpt: 83036\n        loinc: 4548-4\n        results_code: 1481\n    - \n      text: Hepatic Function Panel\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 322755\n        cpt: 80076\n        loinc: >\n          2885-2,1751-7,1975-2,1968-7,6768-6,1920-8,1742-6\n        results_code: 1073,1081,1099,1222,1107,1123,1545\n    - \n      text: Hepatitis C Antibody\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 140659\n        cpt: 86803\n        loinc: 48159-8\n        results_code: 140689\n    - \n      text: Lipid Panel with TC-HDL Ratio\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 221010\n        cpt: 80061\n        loinc: >\n          2093-3,2571-8,2085-9,13458-5,13457-7,9830-1\n        results_code: 1065,1172,11817,11916,12054,100065\n    - \n      text: Microalbumin Creatinine Ratio\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 140285\n        cpt: 82043,82570\n        loinc: 2161-8,14957-5,9318-7\n        results_code: 13672,140097,140288\n    - \n      text: Pap Test, Liquid Based\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 192005\n        cpt: 88142\n        loinc: 22637-3\n        results_code: 191108\n    - \n      text: RPR\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 6072\n        cpt: 86592\n        loinc: 20507-0\n        results_code: 6072\n    - \n      text: Sedimentation Rate\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 5215\n        cpt: 85652\n        loinc: 4537-7\n        results_code:\n    - \n      text: Stool Culture\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 8144\n        cpt: 87045,87046,87427\n        loinc: 43371-4,6331-3,21262-1\n        results_code: 8722,180141,180935\n    - \n      text: Testosterone, Total\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 4226\n        cpt: 84403\n        loinc: 2986-8\n        results_code: 4227\n    - \n      text: TSH\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 4259\n        cpt: 84403\n        loinc: 11580-8\n        results_code: 4264\n    - \n      text: Free T4\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 1974\n        cpt: 84439\n        loinc: 3024-7\n        results_code: 19745\n    - \n      text: Tissue Pathology\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 500918\n        cpt: >\n          88300,88302,88304,88305,88307,88309,88311,88312,88313,88314,88319,88321,88323,88325,88342\n        loinc: 22637-3\n        results_code: 191108\n    - \n      text: Urinalysis with Microscopic\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 3772\n        cpt: 81001\n        loinc:\n          - >\n            2965-2,5803-2,5778-6,5767-9,5799-2,20454-5,2349-9,2514-8,5794-3,5770-3,20405-7,5802-4,12235-8\n        results_code: >\n          13060,13078,13045,13052,13185,13094,13086,13110,13102,13104,13105,13106,12237\n    - \n      text: Urine Culture\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 8847\n        cpt: 87086\n        loinc: 630-4\n        results_code: 8847\n    - \n      text: Vaginitis DNA Probe\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 180026\n        cpt: 87480,87510,87660\n        loinc: 47000-5,6410-5,6410-5\n        results_code: 180027,180028,180029\n    - \n      text: Vitamin B12\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 1503\n        cpt: 82607\n        loinc: 2132-9\n        results_code: 1503\n    - \n      text: Vitamin D, 25-Hydroxy\n      input: orders\n      orders:\n        facility: LabCorp\n        orders_code: 081950\n        cpt: 82306\n        loinc: 62292-8\n        results_code: 81953\n  QuestDiagnostics:\n    - \n      text: Aerobic Bacterial Culture\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 4550\n        cpt: 87070\n        loinc: 634-6\n        results_code: 75400164\n    - \n      text: Allergen Profile, Food\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 91682\n        cpt: 86003\n        loinc: >\n          7691-9,6718-1,6106-9,6174-7,6082-2,6276-0,6242-2,6206-7,6248-9,6136-6,6019-4,6246-3,6270-3,6237-2,6273-7\n        results_code: >\n          55084720,55168205,55085805,55085905,55084505,55086005,55083505,55083605,55086205,55107005,55083705,55084705,55084805,55107305,55172005\n    - \n      text: ANA\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 249\n        cpt: 86038\n        loinc: 42254-3\n        results_code: 45060420\n    - \n      text: Basic Metabolic Panel\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 10165\n        cpt: 80048\n        loinc: >\n          33914-3,48643-1,2345-7,3094-0,2160-0,3097-3,2951-2,2823-3,2075-0,2028-9,17861-6\n        results_code: >\n          25000210,25000220,25000000,25000100,25000200,25000200,25000400,25000500,25000600,25000700,25001000\n    - \n      text: BNP\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 37386\n        cpt: 83880\n        loinc: 30934-4\n        results_code: 56034200\n    - \n      text: CBC with Differential and Platelets\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 6399\n        cpt: 85025\n        loinc: >\n          6690-2,789-8,718-7,4544-3,787-2,785-6,786-4,788-0,777-3,770-8,736-9,5905-5,713-8,706-2,751-8,731-0,742-7,711-2,704-7\n        results_code: >\n          30000000,30000100,30000200,30000300,30000400,30000500,30000600,30000600,30000800,30000900,30001800,30002200,30002500,30002800,30001700,30002110,30002400,30002700,30003000\n    - \n      text: Chlamydia GC Amplification\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 91773\n        cpt: 87491,87591\n        loinc: 43304-5,43305-2\n        results_code: 70043800,70043900\n    - \n      text: Comprehensive Metabolic Panel\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 10231\n        cpt: 80053\n        loinc: >\n          48642-3,48643-1,2345-7,3094-0,2160-0,3097-3,2951-2,2823-3,2075-0,2028-9,17861-6,2885-2,1751-7,10834-0,1759-0,1975-2,6768-6,1920-8,1742-6\n        results_code: >\n          25000210,25000220,25000000,25000100,25000200,25000200,25000400,25000500,25000600,25000700,25001000,25001300,25001400,25001500,25001500,25001700,25002000,25002300,25002400\n    - \n      text: C-Reactive Protein\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 4420\n        cpt: 86140\n        loinc: 1988-5\n        results_code: 45003700\n    - \n      text: Ferritin\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 457\n        cpt: 82728\n        loinc: 2276-4\n        results_code: 55059300\n    - \n      text: Giardia, Ova and Parasite\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 1748\n        cpt: 87177,87209,87329\n        loinc: 10701-1,6412-1\n        results_code: 75400111,75400426\n    - \n      text: Hemoglobin A1c\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 496\n        cpt: 83036\n        loinc: 4548-4\n        results_code: 50026400\n    - \n      text: Hepatic Function Panel\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 10256\n        cpt: 80076\n        loinc: >\n          2885-2,1751-7,1975-2,1968-7,6768-6,1920-8,1742-6\n        results_code: >\n          25001300,25001400,25001700,25001800,25002000,25002300,25002400\n    - \n      text: Hepatitis C Antibody\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 8472\n        cpt: 86803\n        loinc: 48159-8\n        results_code: 55071705\n    - \n      text: Lipid Panel with Ratios\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 19543\n        cpt: 80061\n        loinc: >\n          2093-3,2571-8,2085-9,11054-4,13457-7,9830-1\n        results_code: >\n          25003000,25002900,25015900,25017200,25016900,25017000\n    - \n      text: Microalbumin Creatinine Ratio\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 6517\n        cpt: 82043,82570\n        loinc: 2161-8,14957-5,9318-7\n        results_code: 25026500,50060710,50061100\n    - \n      text: Pap Test, Liquid Based\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 92093\n        cpt: 88142\n        loinc: 22637-3\n        results_code: 191108\n    - \n      text: RPR\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 799\n        cpt: 85652\n        loinc: 20507-0\n        results_code: 40010100\n    - \n      text: Sedimentation Rate\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 809\n        cpt: 86592\n        loinc: 4537-7\n        results_code: 30045300\n    - \n      text: Stool Culture\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 10108\n        cpt: 87045,87046,87427\n        loinc: 43371-4,6331-3,21262-1\n        results_code: 75400265,75400286,75400254\n    - \n      text: Testosterone, Total\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 15983\n        cpt: 84403\n        loinc: 2986-8\n        results_code: 85996653\n    - \n      text: TSH\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 899\n        cpt: 84403\n        loinc: 3016-3\n        results_code: 55080400\n    - \n      text: Free T4\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 866\n        cpt: 84439\n        loinc: 3024-7\n        results_code: 55070600\n    - \n      text: Tissue Pathology\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 3542\n        cpt: >\n          88300,88302,88304,88305,88307,88309,88311,88312,88313,88314,88319,88321,88323,88325,88342\n        loinc: 22638-1\n        results_code: 90000498\n    - \n      text: Urinalysis with Microscopic\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 5463\n        cpt: 81001\n        loinc:\n          - >\n            5811-5,5803-2,5778-6,5767-9,5799-2,20454-5,25428-4,2514-8,5794-3,5770-3,5802-4,12235-8\n        results_code: >\n          30006000,30006200,30005500,30005600,30006500,30006300,30071800,30005900,30006100,30019500,30006400,30008800\n    - \n      text: Urine Culture\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 395\n        cpt: 87086,87088\n        loinc: 630-4\n        results_code: 75400001\n    - \n      text: Vaginitis DNA Probe\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 14577\n        cpt: 87480,87510,87660\n        loinc: 47000-5,6410-5,6568-0\n        results_code: 75407092,75407091,75407090\n    - \n      text: Vitamin B12\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 927\n        cpt: 82607\n        loinc: 2132-9\n        results_code: 55057200\n    - \n      text: Vitamin D, 25-Hydroxy\n      input: orders\n      orders:\n        facility: QuestDiagnostics\n        orders_code: 17306\n        cpt: 82306\n        loinc: 1989-3\n        results_code: 55182715\norders_notes:\norders_radiology:\norders_referrals:\n  Referral:\n    - \n      text: >\n        Assume management for this particular\n        problem and return patient after\n        conclusion of care\n    - \n      text: >\n        Assume future management of patient\n        within your area of expertise\n    - \n      text: >\n        Please provide primary physician with\n        summaries of subsequent visits\n    - \n      text: \'*~problems~*\'\n    - \n      text: \'*~meds~*\'\n    - \n      text: \'*~allergies~*\'\n    - \n      text: >\n        Please call me when you have seen the\n        patient\n    - \n      text: >\n        I would like to receive periodic status\n        reports on this patient\n    - \n      text: >\n        Please send a thorough written report\n        when the consultation is complete\n  Consultation:\n    - \n      text: >\n        Please send the patient back for\n        followup and treatment\n    - \n      text: \'*~problems~*\'\n    - \n      text: \'*~meds~*\'\n    - \n      text: \'*~allergies~*\'\n    - \n      text: Confirm the diagnosis\n    - \n      text: Advise as to the diagnosis\n    - \n      text: Suggested medication or treatment\n    - \n      text: \'Please call me after you have seen *~firstname~*\'\n    - \n      text: >\n        I would like to receive periodic status\n        reports on this patient\n    - \n      text: >\n        Please send a thorough written report\n        when the consultation is complete\n  Physical Therapy:\n    - \n      text: \'Objective - decrease pain\'\n    - \n      text: \'Objective - increase mobility\'\n    - \n      text: \'Objective - increase strength\'\n    - \n      text: Hot or cold packs\n    - \n      text: TENS unit\n    - \n      text: Back program\n    - \n      text: Joint mobilization\n    - \n      text: Home program\n    - \n      text: Pool Therapy\n    - \n      text: Feldenkrais method\n    - \n      text: Therapeutic exercise\n    - \n      text: Myofascial release\n    - \n      text: Patient education\n    - \n      text: Work hardening\n    - \n      text: \'Precautions:\'\n      input: text\n    - \n      text: \'Frequency:\'\n      input: text\n    - \n      text: \'Duration:\'\n      input: text\n  Massage Therapy:\n    - \n      text: \'Objective - decrease pain\'\n    - \n      text: \'Objective - increase mobility\'\n    - \n      text: \'Precautions:\'\n      input: text\n    - \n      text: \'Frequency:\'\n      input: text\n    - \n      text: \'Duration:\'\n      input: text\n  Sleep Study:\n    - \n      text: Diagnostic sleep study only\n    - \n      text: >\n        Diagnostic testing with Continuous\n        Positive Airway Pressure\n    - \n      text: >\n        Diagnostic testing with BiLevel Positive\n        Airway Pressure\n    - \n      text: Diagnostic testing with Oxygen\n    - \n      text: Diagnostic testing with Oral device\n    - \n      text: MSLT (Multiple Sleep Latency Test)\n    - \n      text: MWT (Maintainence of Wakefulness Test)\n    - \n      text: Titrate BiPAP settings\n    - \n      text: \'Inspiratory Presssure (IPIP), cm H2O:\'\n      input: text\n    - \n      text: \'Expiratory Pressure (EPAP), cm H2O:\'\n      input: text\n    - \n      text: \'BiPAP mode:\'\n      input: select\n      options: Spontaneous,Spontaneous/Timed\n    - \n      text: \'Breaths per minute:\'\n      input: text\npe:\n  General - Appearance:\n    - \n      text: >\n        No acute distress and within normal\n        limits\n      normal: true\n    - \n      text: ACUTELY DISTRESSED\n    - \n      text: DISHEVELED\n    - \n      text: ILL\n    - \n      text: TOXIC\n    - \n      text: LETHARGIC\n    - \n      text: OBESE\n    - \n      text: EMACIATED\n  Eye - Conjunctiva and Lids:\n    - \n      text: \'Eyebrows and lashes - \'\n    - \n      text: \'Eyebrows and lashes - Evenly distributed bilaterally\'\n      normal: true\n    - \n      text: \'Eyebrows and lashes - ABNORMAL\'\n      input: text\n    - \n      text: \'Conjunctiva - \'\n    - \n      text: \'Conjunctiva - Clear bilaterally without discharge\'\n      normal: true\n    - \n      text: \'Conjunctiva - REDNESS\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Lids - \'\n    - \n      text: \'Lids - Normal appearing eyelids bilaterally\'\n      normal: true\n    - \n      text: \'Lids - EDEMA\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Lids - REDNESS\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Eye - Pupil and Iris:\n    - \n      text: \'Pupils - \'\n    - \n      text: \'Pupils - Equal, round, and reactive to light and accommodation\'\n      normal: true\n    - \n      text: \'Pupils - DILATED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Iris - \'\n    - \n      text: \'Iris - Within normal limits bilaterally\'\n      normal: true\n    - \n      text: \'Iris - ABNORMAL\'\n      input: text\n  Eye - Fundoscopic:\n    - \n      text: \'Cup-to-disc ratio - \'\n    - \n      text: \'Cup-to-disc ratio - Normal\'\n      normal: true\n    - \n      text: \'Cup-to-disc ratio - ABNORMAL\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Red reflex - \'\n    - \n      text: \'Red reflex - Present\'\n      normal: true\n    - \n      text: \'Red reflex - ABSENT\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  ENT - External Ear and Nose:\n    - \n      text: \'External ear - \'\n    - \n      text: \'External ear - Normal\'\n      normal: true\n    - \n      text: \'External ear - ABNORMAL\'\n      input: text\n    - \n      text: \'Auricle - \'\n    - \n      text: \'Auricle - No swelling\'\n      normal: true\n    - \n      text: \'Auricle - SWELLING\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'External nose - \'\n    - \n      text: \'External nose - Normal\'\n      normal: true\n    - \n      text: \'External nose - ABNORMAL\'\n      input: text\n  ENT - Canals and Tympanic Membranes:\n    - \n      text: \'Tympanic membranes - \'\n    - \n      text: \'Tympanic membranes - Clear bilaterally\'\n      normal: true\n    - \n      text: \'Tympanic membranes - RED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tympanic membranes - PERFORATION\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tympanic membranes - BULGING\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tympanic membranes - DULL\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tympanic membranes - AIR-FLUID LEVELS\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'External canals - \'\n    - \n      text: \'External canals - Normal\'\n      normal: true\n    - \n      text: \'External canals - CERUMEN IMPACTION\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'External canals - REDNESS\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'External canals - EXUDATE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  ENT - Hearing Assessment:\n    - \n      text: \'Weber testing - \'\n    - \n      text: \'Weber testing - Normal\'\n      normal: true\n    - \n      text: \'Weber testing - ABNORMAL\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Rinne testing - \'\n    - \n      text: \'Rinne testing - Positive\'\n      normal: true\n    - \n      text: \'Rinne testing - NEGATIVE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  ENT - Sinuses, Mucosa, Septum, and Turbinates:\n    - \n      text: \'Nasal mucosa - \'\n    - \n      text: \'Nasal mucosa - Pink and moist bilaterally\'\n      normal: true\n    - \n      text: \'Nasal mucosa - RED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Nasal mucosa - COBBLESTONING\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Nasal turbinates - \'\n    - \n      text: \'Nasal turbinates - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Nasal turbinates - ENLARGED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Nasal polyps - \'\n    - \n      text: \'Nasal polyps - None\'\n      normal: true\n  ENT - Lips, Teeth, and Gums:\n    - \n      text: \'Lips - \'\n    - \n      text: \'Lips - Normal\'\n      normal: true\n    - \n      text: \'Lips - ABNORMAL\'\n      input: text\n    - \n      text: \'Dentition - \'\n    - \n      text: \'Dentition - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Dentition - POOR\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Gums - \'\n    - \n      text: \'Gums - Normal\'\n      normal: true\n    - \n      text: \'Gums - RED\'\n      input: radio\n      options: UPPER,LOWER,UPPER AND LOWER\n  ENT - Oropharynx:\n    - \n      text: \'Oropharynx - \'\n    - \n      text: \'Oropharynx - Normal\'\n      normal: true\n    - \n      text: \'Oropharynx - RED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Posterior pharynx - \'\n    - \n      text: \'Posterior pharynx - Normal\'\n      normal: true\n    - \n      text: \'Posterior pharynx - RED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Posterior pharynx - COBBLESTONING\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tonsils - \'\n    - \n      text: \'Tonsils - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Tonsils - RED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tonsils - EXUDATE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Neck - General:\n    - \n      text: \'Neck masses - \'\n    - \n      text: \'Neck masses - No\'\n      normal: true\n    - \n      text: \'Neck masses - YES\'\n      input: text\n    - \n      text: \'Neck masses - LATERALITY\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Neck masses - SIZE\'\n      input: text\n    - \n      text: \"Brudzinski\'s sign - \"\n    - \n      text: \"Brudzinski\'s sign - No\"\n      normal: true\n    - \n      text: \"Brudzinski\'s sign - YES\"\n    - \n      text: \"Kernig\'s sign - \"\n    - \n      text: \"Kernig\'s sign - No\"\n      normal: true\n    - \n      text: \"Kernig\'s sign - YES\"\n  Neck - Thryoid:\n    - \n      text: \'Thyromegaly - \'\n    - \n      text: \'Thyromegaly - No\'\n      normal: true\n    - \n      text: \'Thyromegaly - YES\'\n    - \n      text: \'Thyroid nodule - \'\n    - \n      text: \'Thyroid nodule - No\'\n      normal: true\n    - \n      text: \'Thyroid nodule - YES\'\n      input: text\n    - \n      text: \'Thyroid nodule - LATERALITY\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Thyroid nodule - SIZE\'\n      input: text\n  Respiratory - Effort:\n    - \n      text: \'Tachypnea - \'\n    - \n      text: \'Tachypnea - No\'\n      normal: true\n    - \n      text: \'Tachypnea - YES\'\n    - \n      text: \'Use of accessory muscles - \'\n    - \n      text: \'Use of accessory muscles - No\'\n      normal: true\n    - \n      text: \'Use of accessory muscles - YES\'\n  Respiratory - Percussion:\n    - \n      text: \'Dullness - \'\n    - \n      text: \'Dullness - No\'\n      normal: true\n  Respiratory - Palpation:\n    - \n      text: \'Tactile fremitus - \'\n    - \n      text: \'Tactile fremitus - Normal\'\n      normal: true\n    - \n      text: \'Tactile fremitus - INCREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Tactile fremitus - DECREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Respiratory - Auscultation:\n    0:\n      text: \'Rhonchi - \'\n    1:\n      text: \'Rhonchi - No\'\n      normal: true\n    3:\n      text: \'Wheezing - \'\n    4:\n      text: \'Wheezing - No\'\n      normal: true\n    6:\n      text: \'Crackles - \'\n    7:\n      text: \'Crackles - No\'\n      normal: true\n  Cardiovascular - Palpation:\n    - \n      text: \'Heaves - \'\n    - \n      text: \'Heaves - No\'\n      normal: true\n    - \n      text: \'Heaves - YES\'\n    - \n      text: \'Lifts - \'\n    - \n      text: \'Lifts - No\'\n      normal: true\n    - \n      text: \'Lifts - YES\'\n    - \n      text: \'Thrills - \'\n    - \n      text: \'Thrills - No\'\n      normal: true\n    - \n      text: \'Thrills - YES\'\n  Cardiovascular - Auscultation:\n    - \n      text: \'Rate - \'\n    - \n      text: \'Rate - Regular\'\n      normal: true\n    - \n      text: \'Rate - IRREGULAR\'\n    - \n      text: \'Rhythm - \'\n    - \n      text: \'Rhythm - Regular\'\n      normal: true\n    - \n      text: \'Rhythm - IRREGULAR\'\n    - \n      text: \'Murmur - \'\n    - \n      text: \'Murmur - None\'\n      normal: true\n    - \n      text: \'Murmur - SYSTOLIC EJECTION\'\n    - \n      text: \'Murmur - HOLOSYSTOLIC\'\n    - \n      text: \'Murmur - CRESCENDO-DECRESCENDO\'\n    - \n      text: \'Murmur - BEST HEARD AT THE\'\n      input: text\n  Cardiovascular - Carotid Arteries:\n    0:\n      text: \'Bruits - \'\n    1:\n      text: \'Bruits - None\'\n      normal: true\n    3:\n      text: \'Jugular venous distention - \'\n    4:\n      text: \'Jugular venous distention - No\'\n      normal: true\n    5:\n      text: \'Jugular venous distention - YES\'\n  Cardiovascular - Abdominal Aorta:\n    - \n      text: \'Abdominal bruits - \'\n    - \n      text: \'Abdominal bruits - None\'\n      normal: true\n    - \n      text: \'Abdominal bruits - YES\'\n    - \n      text: \'Renal bruits - \'\n    - \n      text: \'Renal bruits - No\'\n      normal: true\n  Cardiovascular - Femoral Arteries:\n    - \n      text: \'Bruits - \'\n    - \n      text: \'Bruits - No\'\n      normal: true\n  Cardiovascular - Extremities:\n    0:\n      text: \'Lower extremity edema - \'\n    1:\n      text: \'Lower extremity edema - None\'\n      normal: true\n    3:\n      text: \"Homan\'s sign - \"\n    4:\n      text: \"Homan\'s sign - Normal\"\n      normal: true\n  Chest - Inspection:\n    - \n      text: \'Breasts - Symmetric bilaterally\'\n      normal: true\n    - \n      text: \'Breasts - ASSYMETRIC\'\n      input: text\n  Chest - Palpation:\n    0:\n      text: \'Nipple discharge - \'\n    1:\n      text: \'Nipple discharge - None\'\n      normal: true\n    3:\n      text: \'Axillary nodes - \'\n    4:\n      text: \'Axillary nodes - Within normal limits\'\n      normal: true\n    5:\n      text: \'Axillary nodes - PALPABLE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Gastrointestinal - Masses and Tenderness:\n    - \n      text: \'Abdominal Tenderness - \'\n    - \n      text: \'Abdominal Tenderness - None\'\n      normal: true\n    - \n      text: \'Abdominal Tenderness - RIGHT LOWER QUADRANT\'\n    - \n      text: \'Abdominal Tenderness - LEFT LOWER QUADRANT\'\n    - \n      text: \'Abdominal Tenderness - RIGHT UPPER QUADRANT\'\n    - \n      text: \'Abdominal Tenderness - LEFT UPPER QUADRANT\'\n    - \n      text: \'Abdominal Tenderness - EPIGASTRIC\'\n    - \n      text: \'Abdominal Tenderness - DIFFUSE\'\n    - \n      text: \'Abdominal Tenderness - REBOUND\'\n    - \n      text: \'Abdominal Tenderness - INVOLUNTARY GUARDING\'\n    - \n      text: \'Tympanic - \'\n    - \n      text: \'Tympanic - No\'\n      normal: true\n    - \n      text: \'Tympanic - YES\'\n  Gastrointestinal - Liver and Spleen:\n    - \n      text: \'Hepatomegaly - \'\n    - \n      text: \'Hepatomegaly - No\'\n      normal: true\n    - \n      text: \'Hepatomegaly - YES\'\n    - \n      text: \'Splenomegaly - \'\n    - \n      text: \'Splenomegaly - No\'\n      normal: true\n    - \n      text: \'Splenomegaly - YES\'\n  Gastrointestinal - Hernia:\n    0:\n      text: \'Direct inguinal hernia - \'\n    1:\n      text: \'Direct inguinal hernia - None\'\n      normal: true\n    3:\n      text: \'Direct inguinal hernia - REDUCIBLE\'\n      input: radio\n      options: YES,NO\n    4:\n      text: \'Direct inguinal hernia - SIZE\'\n      input: text\n    5:\n      text: \'Indirect inguinal hernia - \'\n    6:\n      text: \'Indirect inguinal hernia - None\'\n      normal: true\n    8:\n      text: \'Indirect inguinal hernia - REDUCIBLE\'\n      input: radio\n      options: YES,NO\n    9:\n      text: \'Indirect inguinal hernia - SIZE\'\n      input: text\n    10:\n      text: \'Umbilical hernia - \'\n    11:\n      text: \'Umbilical hernia - None\'\n      normal: true\n    12:\n      text: \'Umbilical hernia - YES\'\n    13:\n      text: \'Umbilical hernia - REDUCIBLE\'\n      input: radio\n      options: YES,NO\n    14:\n      text: \'Umbilical hernia - SIZE\'\n      input: text\n  Gastrointestinal - Anus, Perineum, and Rectum:\n    - \n      text: \'External Hemorrhoid - \'\n    - \n      text: \'External Hemorrhoid - No\'\n      normal: true\n    - \n      text: \'External Hemorrhoid - THROMBOSED\'\n    - \n      text: \'External Hemorrhoid - NOT THROMBOSED\'\n    - \n      text: \'Internal Hemorrhoid - \'\n    - \n      text: \'Internal Hemorrhoid - No\'\n      normal: true\n    - \n      text: \'Internal Hemorrhoid - THROMBOSED\'\n    - \n      text: \'Internal Hemorrhoid - NOT THROMBOSED\'\n  Genitourinary - Genitalia:\n    0:\n      text: \'Cyst - \'\n      gender: f\n    1:\n      text: \'Cyst - None\'\n      normal: true\n      gender: f\n    3:\n      text: \'Vaginal discharge - \'\n      gender: f\n    4:\n      text: \'Vaginal discharge - None\'\n      normal: true\n      gender: f\n    5:\n      text: \'Vaginal discharge - YES\'\n      gender: f\n    6:\n      text: \'Whiff test - \'\n      gender: f\n    7:\n      text: \'Whiff test - Negative\'\n      normal: true\n      gender: f\n    8:\n      text: \'Whiff test - POSITIVE\'\n      gender: f\n    gender: f\n  Genitourinary - Urethra:\n    0:\n      text: \'Swelling - \'\n      gender: f\n    1:\n      text: \'Swelling - No\'\n      normal: true\n      gender: f\n    2:\n      text: \'Swelling - YES\'\n      gender: f\n    gender: f\n  Genitourinary - Bladder:\n    0:\n      text: \'Tenderness - \'\n      gender: f\n    1:\n      text: \'Tenderness - No\'\n      normal: true\n      gender: f\n    2:\n      text: \'Tenderness - YES\'\n      gender: f\n    gender: f\n  Genitourinary - Cervix:\n    0:\n      text: \'Tenderness - \'\n      gender: f\n    1:\n      text: \'Tenderness - No\'\n      normal: true\n      gender: f\n    2:\n      text: \'Tenderness - YES\'\n      gender: f\n    3:\n      text: \'Bleeding - \'\n      gender: f\n    4:\n      text: \'Bleeding - No\'\n      normal: true\n      gender: f\n    5:\n      text: \'Bleeding - YES\'\n      gender: f\n    gender: f\n  Genitourinary - Uterus:\n    0:\n      text: \'Masses - \'\n      gender: f\n    1:\n      text: \'Masses - No\'\n      normal: true\n      gender: f\n    2:\n      text: \'Masses - YES\'\n      gender: f\n    3:\n      text: \'Prolapse - \'\n      gender: f\n    4:\n      text: \'Prolapse - No\'\n      normal: true\n      gender: f\n    5:\n      text: \'Prolapse - YES\'\n      gender: f\n    gender: f\n  Genitourinary - Adnexa:\n    0:\n      text: \'Masses - \'\n      gender: f\n    1:\n      text: \'Masses - No\'\n      normal: true\n      gender: f\n    2:\n      text: \'Masses - YES\'\n      gender: f\n    3:\n      text: \'Tenderness - \'\n      gender: f\n    4:\n      text: \'Tenderness - No\'\n      normal: true\n      gender: f\n    5:\n      text: \'Tenderness - YES\'\n      gender: f\n    gender: f\n  Genitourinary - Scrotum:\n    0:\n      text: \'Masses - \'\n      gender: m\n    1:\n      text: \'Masses - No\'\n      normal: true\n      gender: m\n    3:\n      text: \'Tenderness - \'\n      gender: m\n    4:\n      text: \'Tenderness - No\'\n      normal: true\n      gender: m\n    6:\n      text: \'Undescended testicle - \'\n      gender: m\n    7:\n      text: \'Undescended testicle - No\'\n      normal: true\n      gender: m\n    gender: m\n  Genitourinary - Penis:\n    - \n      text: \'Penile discharge - \'\n    - \n      text: \'Penile discharge - No\'\n      normal: true\n    - \n      text: \'Penile discharge - YES\'\n  Genitourinary - Prostate:\n    0:\n      text: \'Enlargement - \'\n    1:\n      text: \'Enlargement - No\'\n      normal: true\n    2:\n      text: \'Enlargement - YES\'\n    3:\n      text: \'Nodules - \'\n    4:\n      text: \'Nodules - No\'\n      normal: true\n    6:\n      text: \'Tenderness - \'\n    7:\n      text: \'Tenderness - No\'\n      normal: true\n  Lymphatic - Neck:\n    - \n      text: \'Cervical lymphadenopathy - \'\n    - \n      text: \'Cervical lymphadenopathy - None\'\n      normal: true\n    - \n      text: \'Cervical lymphadenopathy - \'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Lymphatic - Axillae:\n    - \n      text: \'Axillary lymphadenopathy - \'\n    - \n      text: \'Axillary lymphadenopathy - None\'\n      normal: true\n  Lymphatic - Groin:\n    - \n      text: \'Inguinal lymphadenopathy - \'\n    - \n      text: \'Inguinal lymphadenopathy - None\'\n      normal: true\n  Musculoskeletal - Gait and Station:\n    - \n      text: \'Gait - \'\n    - \n      text: \'Gait - Normal\'\n      normal: true\n    - \n      text: \'Gait - ATALGIC\'\n    - \n      text: \'Gait - SLOW\'\n  Musculoskeletal - Digit and Nails:\n    - \n      text: \'Clubbing - \'\n    - \n      text: \'Clubbing - No\'\n      normal: true\n    - \n      text: \'Clubbing - \'\n      input: radio\n      options: >\n        THUMB,2ND FINGER,3RD FINGER,4TH\n        FINGER,5TH FINGER,GREAT TOE,2ND TOE,3RD\n        TOE,4TH TOE,5TH TOE\n    - \n      text: \'Ingrown nail - \'\n    - \n      text: \'Ingrown nail - No\'\n      normal: true\n    - \n      text: \'Ingrown nail - \'\n      input: radio\n      options: >\n        THUMB,2ND FINGER,3RD FINGER,4TH\n        FINGER,5TH FINGER,GREAT TOE,2ND TOE,3RD\n        TOE,4TH TOE,5TH TOE\n  Musculoskeletal - Shoulder:\n    - \n      text: \'Flexion (0-90 degrees) - \'\n    - \n      text: \'Flexion (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Flexion (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Flexion (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-50 degrees) - \'\n    - \n      text: \'Extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Abduction (0-90 degrees) - \'\n    - \n      text: \'Abduction (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Abduction (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Abduction (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Adduction (0-90 degrees) - \'\n    - \n      text: \'Adduction (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Adduction (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Adduction (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Medial rotation (0-90 degrees) - \'\n    - \n      text: \'Medial rotation (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Medial rotation (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Medial rotation (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-90 degrees) - \'\n    - \n      text: \'Lateral rotation (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Lateral rotation (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Supraspinatus testing - \'\n    - \n      text: \'Supraspinatus testing - Negative\'\n      normal: true\n    - \n      text: \'Supraspinatus testing - POSITIVE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \"Neer\'s testing - \"\n    - \n      text: \"Neer\'s testing - Negative\"\n      normal: true\n    - \n      text: \"Neer\'s testing - POSITIVE:\"\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \"Hawkins\' testing - \"\n    - \n      text: \"Hawkins\' testing - Negative\"\n      normal: true\n    - \n      text: \"Hawkins\' testing - POSITIVE:\"\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Apprehension testing - \'\n    - \n      text: \'Apprehension testing - Negative\'\n      normal: true\n    - \n      text: \'Apprehension testing - POSITIVE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Musculoskeletal - Elbow:\n    - \n      text: \'Flexion (0-160 degrees) - \'\n    - \n      text: \'Flexion (0-160 degrees) - 160 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Flexion (0-160 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Flexion (0-160 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-145 degrees) - \'\n    - \n      text: \'Extension (0-145 degrees) - 145 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-145 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-145 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Pronation (0-90 degrees) - \'\n    - \n      text: \'Pronation (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Pronation (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Pronation (0-90 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Wrist:\n    - \n      text: \'Flexion (0-160 degrees) - \'\n    - \n      text: \'Flexion (0-160 degrees) - 160 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Flexion (0-160 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Flexion (0-160 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-145 degrees) - \'\n    - \n      text: \'Extension (0-145 degrees) - 145 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-145 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-145 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Abduction (0-90 degrees) - \'\n    - \n      text: \'Abduction (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Abduction (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Abduction (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Adduction (0-90 degrees) - \'\n    - \n      text: \'Adduction (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Adduction (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Adduction (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Ulnar deviation (0-25 degrees) - \'\n    - \n      text: \'Ulnar deviation (0-25 degrees) - 25 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Ulnar deviation (0-25 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Ulnar deviation (0-25 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Radial deviation (0-20 degrees) - \'\n    - \n      text: \'Radial deviation (0-20 degrees) - 20 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Radial deviation (0-20 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Radial deviation (0-20 degrees) - LEFT\'\n      input: text\n    - \n      text: \"Finkelstein\'s testing - \"\n    - \n      text: \"Finkelstein\'s testing - Negative\"\n      normal: true\n    - \n      text: \"Finkelstein\'s testing - POSITIVE:\"\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Musculoskeletal - Hand:\n    - \n      text: \'Thumb MCP flexion (0-70 degrees) - \'\n    - \n      text: \'Thumb MCP flexion (0-70 degrees) - 70 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb MCP flexion (0-70 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb MCP flexion (0-70 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Thumb MCP extension (0-60 degrees) - \'\n    - \n      text: \'Thumb MCP extension (0-60 degrees) - 60 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb MCP extension (0-60 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb MCP extension (0-60 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Thumb MCP abduction (0-50 degrees) - \'\n    - \n      text: \'Thumb MCP abduction (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb MCP abduction (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb MCP abduction (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Thumb MCP adduction (0-40 degrees) - \'\n    - \n      text: \'Thumb MCP adduction (0-40 degrees) - 40 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb MCP adduction (0-40 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb MCP adduction (0-40 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Thumb IP flexion (0-90 degrees) - \'\n    - \n      text: \'Thumb IP flexion (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb IP flexion (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb IP flexion (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Thumb IP extension (0-90 degrees) - \'\n    - \n      text: \'Thumb IP extension (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Thumb IP extension (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Thumb IP extension (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd finger DIP flexion (0-80 degrees) - \'\n    - \n      text: \'2nd finger DIP flexion (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd finger DIP flexion (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd finger DIP flexion (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd finger DIP extension (0-80 degrees) - \'\n    - \n      text: \'2nd finger DIP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd finger DIP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd finger DIP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd finger PIP flexion (0-120 degrees) - \'\n    - \n      text: \'2nd finger PIP flexion (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd finger PIP flexion (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd finger PIP flexion (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd finger PIP extension (0-120 degrees) - \'\n    - \n      text: \'2nd finger PIP extension (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd finger PIP extension (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd finger PIP extension (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd finger DIP flexion (0-80 degrees) - \'\n    - \n      text: \'3rd finger DIP flexion (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd finger DIP flexion (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd finger DIP flexion (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd finger DIP extension (0-80 degrees) - \'\n    - \n      text: \'3rd finger DIP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd finger DIP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd finger DIP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd finger PIP flexion (0-120 degrees) - \'\n    - \n      text: \'3rd finger PIP flexion (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd finger PIP flexion (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd finger PIP flexion (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd finger PIP extension (0-120 degrees) - \'\n    - \n      text: \'3rd finger PIP extension (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd finger PIP extension (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd finger PIP extension (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th finger DIP flexion (0-80 degrees) - \'\n    - \n      text: \'4th finger DIP flexion (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th finger DIP flexion (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th finger DIP flexion (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th finger DIP extension (0-80 degrees) - \'\n    - \n      text: \'4th finger DIP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th finger DIP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th finger DIP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th finger PIP flexion (0-120 degrees) - \'\n    - \n      text: \'4th finger PIP flexion (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th finger PIP flexion (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th finger PIP flexion (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th finger PIP extension (0-120 degrees) - \'\n    - \n      text: \'4th finger PIP extension (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th finger PIP extension (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th finger PIP extension (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th finger DIP flexion (0-80 degrees) - \'\n    - \n      text: \'5th finger DIP flexion (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th finger DIP flexion (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th finger DIP flexion (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th finger DIP extension (0-80 degrees) - \'\n    - \n      text: \'5th finger DIP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th finger DIP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th finger DIP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th finger PIP flexion (0-120 degrees) - \'\n    - \n      text: \'5th finger PIP flexion (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th finger PIP flexion (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th finger PIP flexion (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th finger PIP extension (0-120 degrees) - \'\n    - \n      text: \'5th finger PIP extension (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th finger PIP extension (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th finger PIP extension (0-120 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Hip:\n    - \n      text: \'Flexion (0-125 degrees) - \'\n    - \n      text: \'Flexion (0-125 degrees) - 125 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Flexion (0-125 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Flexion (0-125 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-115 degrees) - \'\n    - \n      text: \'Extension (0-115 degrees) - 115 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-115 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-115 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Abduction (0-45 degrees) - \'\n    - \n      text: \'Abduction (0-45 degrees) - 45 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Abduction (0-45 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Abduction (0-45 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Adduction (0-45 degrees) - \'\n    - \n      text: \'Adduction (0-45 degrees) - 45 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Adduction (0-45 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Adduction (0-45 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Knee:\n    - \n      text: \'Flexion (0-130 degrees) - \'\n    - \n      text: \'Flexion (0-130 degrees) - 130 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Flexion (0-130 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Flexion (0-130 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-120 degrees) - \'\n    - \n      text: \'Extension (0-120 degrees) - 120 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-120 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-120 degrees) - LEFT\'\n      input: text\n    - \n      text: \'McMurray testing - \'\n    - \n      text: \'McMurray testing - Negative bilaterally\'\n      normal: true\n    - \n      text: \'McMurray testing - POSITIVE ON  SIDE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Anterior drawer/Lachmann testing - \'\n    - \n      text: \'Anterior drawer/Lachmann testing - Negative bilaterally\'\n      normal: true\n    - \n      text: \'Anterior drawer/Lachmann testing - POSITIVE ON  SIDE\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Musculoskeletal - Ankle:\n    - \n      text: \'Dorsiflexion (0-20 degrees) - \'\n    - \n      text: \'Dorsiflexion (0-20 degrees) - 20 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Dorsiflexion (0-20 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Dorsiflexion (0-20 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Plantar flexion (0-50 degrees) - \'\n    - \n      text: \'Plantar flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Plantar flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Plantar flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Inversion (0-35 degrees) - \'\n    - \n      text: \'Inversion (0-35 degrees) - 35 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Inversion (0-35 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Inversion (0-35 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Eversion (0-25 degrees) - \'\n    - \n      text: \'Eversion (0-25 degrees) - 25 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Eversion (0-25 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Eversion (0-25 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Foot:\n    - \n      text: \'Great toe MTP flexion (0-30 degrees) - \'\n    - \n      text: \'Great toe MTP flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe MTP flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe MTP flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Great toe MTP extension (0-80 degrees) - \'\n    - \n      text: \'Great toe MTP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe MTP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe MTP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Great toe IP flexion (0-50 degrees) - \'\n    - \n      text: \'Great toe IP flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe IP flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe IP flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Great toe IP extension (0-50 degrees) - \'\n    - \n      text: \'Great toe IP extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe IP extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe IP extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Great toe IP flexion (0-90 degrees) - \'\n    - \n      text: \'Great toe IP flexion (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe IP flexion (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe IP flexion (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Great toe IP extension (0-90 degrees) - \'\n    - \n      text: \'Great toe IP extension (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Great toe IP extension (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Great toe IP extension (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd toe IP flexion (0-50 degrees) - \'\n    - \n      text: \'2nd toe IP flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd toe IP flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd toe IP flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd toe IP extension (0-50 degrees) - \'\n    - \n      text: \'2nd toe IP extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd toe IP extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd toe IP extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd toe MTP flexion (0-30 degrees) - \'\n    - \n      text: \'2nd toe MTP flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd toe MTP flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd toe MTP flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'2nd toe MTP extension (0-80 degrees) - \'\n    - \n      text: \'2nd toe MTP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'2nd toe MTP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'2nd toe MTP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd toe IP flexion (0-50 degrees) - \'\n    - \n      text: \'3rd toe IP flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd toe IP flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd toe IP flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd toe IP extension (0-50 degrees) - \'\n    - \n      text: \'3rd toe IP extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd toe IP extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd toe IP extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd toe MTP flexion (0-30 degrees) - \'\n    - \n      text: \'3rd toe MTP flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd toe MTP flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd toe MTP flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'3rd toe MTP extension (0-80 degrees) - \'\n    - \n      text: \'3rd toe MTP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'3rd toe MTP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'3rd toe MTP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th toe IP flexion (0-50 degrees) - \'\n    - \n      text: \'4th toe IP flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th toe IP flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th toe IP flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th toe IP extension (0-50 degrees) - \'\n    - \n      text: \'4th toe IP extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th toe IP extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th toe IP extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th toe MTP flexion (0-30 degrees) - \'\n    - \n      text: \'4th toe MTP flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th toe MTP flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th toe MTP flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'4th toe MTP extension (0-80 degrees) - \'\n    - \n      text: \'4th toe MTP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'4th toe MTP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'4th toe MTP extension (0-80 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th toe IP flexion (0-50 degrees) - \'\n    - \n      text: \'5th toe IP flexion (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th toe IP flexion (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th toe IP flexion (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th toe IP extension (0-50 degrees) - \'\n    - \n      text: \'5th toe IP extension (0-50 degrees) - 50 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th toe IP extension (0-50 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th toe IP extension (0-50 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th toe MTP flexion (0-30 degrees) - \'\n    - \n      text: \'5th toe MTP flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th toe MTP flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th toe MTP flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'5th toe MTP extension (0-80 degrees) - \'\n    - \n      text: \'5th toe MTP extension (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'5th toe MTP extension (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'5th toe MTP extension (0-80 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Cervical Spine:\n    - \n      text: \'Forward flexion (0-45 degrees) - \'\n    - \n      text: \'Forward flexion (0-45 degrees) - 45 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Forward flexion (0-45 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Forward flexion (0-45 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-45 degrees) - \'\n    - \n      text: \'Extension (0-45 degrees) - 45 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-45 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-45 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Lateral flexion (0-45 degrees) - \'\n    - \n      text: \'Lateral flexion (0-45 degrees) - 45 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Lateral flexion (0-45 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Lateral flexion (0-45 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-80 degrees) - \'\n    - \n      text: \'Lateral rotation (0-80 degrees) - 80 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Lateral rotation (0-80 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-80 degrees) - LEFT\'\n      input: text\n  Musculoskeletal - Thoracic and Lumbar Spine:\n    - \n      text: \'Forward flexion (0-90 degrees) - \'\n    - \n      text: \'Forward flexion (0-90 degrees) - 90 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Forward flexion (0-90 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Forward flexion (0-90 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Extension (0-30 degrees) - \'\n    - \n      text: \'Extension (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Extension (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Extension (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Lateral flexion (0-30 degrees) - \'\n    - \n      text: \'Lateral flexion (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Lateral flexion (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Lateral flexion (0-30 degrees) - LEFT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-30 degrees) - \'\n    - \n      text: \'Lateral rotation (0-30 degrees) - 30 degrees bilaterally\'\n      normal: true\n    - \n      text: \'Lateral rotation (0-30 degrees) - RIGHT\'\n      input: text\n    - \n      text: \'Lateral rotation (0-30 degrees) - LEFT\'\n      input: text\n  Neurological - Cranial Nerves:\n    - \n      text: \'Cranial nerves - \'\n    - \n      text: \'Cranial nerves - No deficits\'\n      normal: true\n    - \n      text: \'Cranial nerves - DEFICITS\'\n      input: text\n    - \n      text: \'Nystagmus - \'\n    - \n      text: \'Nystagmus - No\'\n      normal: true\n  Neurological - Deep Tendon Reflexes:\n    - \n      text: \'Biceps (0-4) - \'\n    - \n      text: \'Biceps (0-4) - Equal and bilateral\'\n      normal: true\n    - \n      text: \'Biceps (0-4) - RIGHT\'\n      input: text\n    - \n      text: \'Biceps (0-4) - LEFT\'\n      input: text\n    - \n      text: \'Patellar (0-4) - \'\n    - \n      text: \'Patellar (0-4) - Equal and bilateral\'\n      normal: true\n    - \n      text: \'Patellar (0-4) - RIGHT\'\n      input: text\n    - \n      text: \'Patellar (0-4) - LEFT\'\n      input: text\n    - \n      text: \'Achillies (0-4) - \'\n    - \n      text: \'Achillies (0-4) - Equal and bilateral\'\n      normal: true\n    - \n      text: \'Achillies (0-4) - RIGHT\'\n      input: text\n    - \n      text: \'Achillies (0-4) - LEFT\'\n      input: text\n  Neurological - Sensation and Motor:\n    - \n      text: \'Pinprick sensation - \'\n    - \n      text: \'Pinprick sensation - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Pinprick sensation - DECREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Two-point discrimination - \'\n    - \n      text: \'Two-point discrimination - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Two-point discrimination - DECREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Vibratory sensation - \'\n    - \n      text: \'Vibratory sensation - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Vibratory sensation - DECREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: \'Temperature sensation - \'\n    - \n      text: \'Temperature sensation - Normal bilaterally\'\n      normal: true\n    - \n      text: \'Temperature sensation - DECREASED\'\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Psychiatric - Judgment:\n    0:\n      text: \'Judgment - \'\n    1:\n      text: \'Judgment - Good\'\n      normal: true\n    3:\n      text: \'Insight - \'\n    4:\n      text: \'Insight - Good\'\n      normal: true\n  Psychiatric - Orientation:\n    - \n      text: \'Person - \'\n    - \n      text: \'Person - Oriented\'\n      normal: true\n    - \n      text: \'Person - DISORIENTED\'\n    - \n      text: \'Place - \'\n    - \n      text: \'Place - Oriented\'\n      normal: true\n    - \n      text: \'Place - DISORIENTED\'\n    - \n      text: \'Time - \'\n    - \n      text: \'Time - Oriented\'\n      normal: true\n    - \n      text: \'Time - DISORIENTED\'\n  Psychiatric - Memory:\n    - \n      text: \'Recent memory - \'\n    - \n      text: \'Recent memory - Intact\'\n      normal: true\n    - \n      text: \'Recent memory - DEFICIT\'\n    - \n      text: \'Remote memory - \'\n    - \n      text: \'Remote memory - Intact\'\n      normal: true\n    - \n      text: \'Remote memory - DEFICIT\'\n  Psychiatric - Mood and Affect:\n    - \n      text: \'Depressed - \'\n    - \n      text: \'Depressed - No\'\n      normal: true\n    - \n      text: \'Depressed - YES\'\n    - \n      text: \'Anxious - \'\n    - \n      text: \'Anxious - No\'\n      normal: true\n    - \n      text: \'Anxious - YES\'\n    - \n      text: \'Suicidal ideation - \'\n    - \n      text: \'Suicidal ideation - No\'\n      normal: true\n    - \n      text: \'Suicidal ideation - YES\'\n    - \n      text: \'Homicidal ideation - \'\n    - \n      text: \'Homicidal ideation - No\'\n      normal: true\n    - \n      text: \'Homicidal ideation - YES\'\n  Skin - Inspection:\n    0:\n      text: \'Lesions - \'\n    1:\n      text: \'Lesions - None\'\n      normal: true\n    3:\n      text: \'Hair thinning - \'\n    4:\n      text: \'Hair thinning - No\'\n      normal: true\n    5:\n      text: \'Hair thinning - YES\'\n  Skin - Palpation:\n    0:\n      text: \'Macules - \'\n    1:\n      text: \'Macules - None\'\n      normal: true\n    3:\n      text: \'Papules - \'\n    4:\n      text: \'Papules - None\'\n      normal: true\n    6:\n      text: \'Nodules - \'\n    7:\n      text: \'Nodules - None\'\n      normal: true\n    9:\n      text: \'Vescicles - \'\n    10:\n      text: \'Vescicles - None\'\n      normal: true\n    12:\n      text: \'Warmth - \'\n    13:\n      text: \'Warmth - None\'\n      normal: true\n    15:\n      text: \'Urticaria - \'\n    16:\n      text: \'Urticaria - None\'\n      normal: true\nplan:\n  Anticipatory Guidance 1 month:\n    - \n      text: Parental well being\n      age: child\n    - \n      text: Family adjustment\n      age: child\n    - \n      text: >\n        400 IU vitamin D supplement with\n        breastfeeding\n      age: child\n    - \n      text: Iron-fortified formula\n      age: child\n    - \n      text: Solid foods (wait until 4-6 months)\n      age: child\n    - \n      text: >\n        Elimination (5-8 wet diapers, 3-4\n        stools)\n      age: child\n    - \n      text: Tummy time\n      age: child\n    - \n      text: Encourage daily routines\n      age: child\n    - \n      text: Back to sleep\n      age: child\n    - \n      text: Sleep location\n      age: child\n    - \n      text: Techniques to calm\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: No strings around neck\n      age: child\n    - \n      text: No shaking\n      age: child\n    - \n      text: Smoke-free environment\n      age: child\n  Anticipatory Guidance 2 month:\n    - \n      text: Parental well being\n      age: child\n    - \n      text: Infant-family synchrony\n      age: child\n    - \n      text: >\n        400 IU vitamin D supplement with\n        breastfeeding\n      age: child\n    - \n      text: Iron-fortified formula\n      age: child\n    - \n      text: Solid foods (wait until 4-6 months)\n      age: child\n    - \n      text: Elimination\n      age: child\n    - \n      text: No bottle in bed\n      age: child\n    - \n      text: Tummy time\n      age: child\n    - \n      text: Daily routines\n      age: child\n    - \n      text: Back to sleep\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: Burns (hot liquids and water heater)\n      age: child\n    - \n      text: Smoke-free environment\n      age: child\n    - \n      text: Drowning\n      age: child\n    - \n      text: Choking (small objects, plastic bags)\n      age: child\n  Anticipatory Guidance 4 month:\n    - \n      text: Family functioning\n      age: child\n    - \n      text: Weight gain and growth spurts\n      age: child\n    - \n      text: >\n        Vitamin D and iron supplementation with\n        breastfeeding\n      age: child\n    - \n      text: Iron-fortified formula\n      age: child\n    - \n      text: Solid foods (when and how to add)\n      age: child\n    - \n      text: Elimination\n      age: child\n    - \n      text: Social development\n      age: child\n    - \n      text: Communication skills\n      age: child\n    - \n      text: Physical (tummy time)\n      age: child\n    - \n      text: Daily routines\n      age: child\n    - \n      text: Sleep\n      age: child\n    - \n      text: \"Don\'t share utensils/pacifier\"\n      age: child\n    - \n      text: Avoid bed in bottle\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: Burns (hot liquids and water heater)\n      age: child\n    - \n      text: Walkers\n      age: child\n    - \n      text: Drowning\n      age: child\n    - \n      text: Choking\n      age: child\n    - \n      text: Lead poisoning\n      age: child\n  Anticipatory Guidance 6 month:\n    - \n      text: Family functioning\n      age: child\n    - \n      text: >\n        Vitamin D and iron supplementation with\n        breastfeeding\n      age: child\n    - \n      text: Iron-fortified formula\n      age: child\n    - \n      text: >\n        Solid foods (types and amounts, begin\n        cup)\n      age: child\n    - \n      text: Elimination\n      age: child\n    - \n      text: Social development\n      age: child\n    - \n      text: Communication skills\n      age: child\n    - \n      text: Sleep\n      age: child\n    - \n      text: Brush teeth\n      age: child\n    - \n      text: Avoid bed in bottle\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: Burns (hot liquids and water heater)\n      age: child\n    - \n      text: Walkers\n      age: child\n    - \n      text: Drowning\n      age: child\n    - \n      text: Choking\n      age: child\n    - \n      text: Kitchen safety\n      age: child\n    - \n      text: Poisons\n      age: child\n  Anticipatory Guidance 9 month:\n    - \n      text: Limit word \"no\"\n      age: child\n    - \n      text: Age-appropriate discipline\n      age: child\n    - \n      text: Domestic violence\n      age: child\n    - \n      text: Time for self/partner\n      age: child\n    - \n      text: Consistent routines\n      age: child\n    - \n      text: Separation anxiety\n      age: child\n    - \n      text: Learning and developing\n      age: child\n    - \n      text: No TV\n      age: child\n    - \n      text: Self feeding\n      age: child\n    - \n      text: Solid foods\n      age: child\n    - \n      text: Safe foods\n      age: child\n    - \n      text: Using a cup\n      age: child\n    - \n      text: >\n        Vitamin D and iron supplementation with\n        breastfeeding\n      age: child\n    - \n      text: Iron-fortified formula\n      age: child\n    - \n      text: No bottle in bed\n      age: child\n    - \n      text: Brush teeth\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls/Window guards\n      age: child\n    - \n      text: Burns (hot liquids and water heater)\n      age: child\n    - \n      text: Guns\n      age: child\n  Anticipatory Guidance 12 month:\n    - \n      text: Time for self/partner\n      age: child\n    - \n      text: Community activities\n      age: child\n    - \n      text: Age appropriate discipline\n      age: child\n    - \n      text: Family traditions\n      age: child\n    - \n      text: Nap and bedtime\n      age: child\n    - \n      text: Self feeding\n      age: child\n    - \n      text: Consistent meals/snacks\n      age: child\n    - \n      text: Variety of nutritious foods\n      age: child\n    - \n      text: Iron-fortified foods\n      age: child\n    - \n      text: First dental visit\n      age: child\n    - \n      text: Brush teeth twice a day\n      age: child\n    - \n      text: Limit bottle use (water only)\n      age: child\n    - \n      text: No bottle in bed\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Poisons\n      age: child\n    - \n      text: Water\n      age: child\n    - \n      text: No supervision by young children\n      age: child\n    - \n      text: Sharp objects\n      age: child\n    - \n      text: Guns\n      age: child\n    - \n      text: Home safety\n      age: child\n    - \n      text: Falls\n      age: child\n  Anticipatory Guidance 15 month:\n    - \n      text: Give limited choices\n      age: child\n    - \n      text: Stranger anxiety\n      age: child\n    - \n      text: Read and talk with child\n      age: child\n    - \n      text: Consistent routines\n      age: child\n    - \n      text: Night waking\n      age: child\n    - \n      text: Distraction\n      age: child\n    - \n      text: Praise\n      age: child\n    - \n      text: Consistency\n      age: child\n    - \n      text: First dental visit\n      age: child\n    - \n      text: Healthy oral habits\n      age: child\n    - \n      text: Brush teeth twice a day\n      age: child\n    - \n      text: No bottle\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Home safety\n      age: child\n    - \n      text: Poisons\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: Burns\n      age: child\n    - \n      text: Smoke detectors\n      age: child\n    - \n      text: Carbon monoxide detectors\n      age: child\n  Anticipatory Guidance 18 month:\n    - \n      text: Family time\n      age: child\n    - \n      text: Time for self and other children\n      age: child\n    - \n      text: Reinforce limits\n      age: child\n    - \n      text: Prepare for new sibling\n      age: child\n    - \n      text: Smoke-free environment\n      age: child\n    - \n      text: Anticipate anxiety\n      age: child\n    - \n      text: Praise\n      age: child\n    - \n      text: Consistent discipline\n      age: child\n    - \n      text: Daily playtime\n      age: child\n    - \n      text: Read, talk, and sing\n      age: child\n    - \n      text: Simple words\n      age: child\n    - \n      text: Feelings and emotions\n      age: child\n    - \n      text: Walk until child is ready\n      age: child\n    - \n      text: Reading books/praise\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Falls\n      age: child\n    - \n      text: Burns\n      age: child\n    - \n      text: Smoke detectors\n      age: child\n    - \n      text: Gas\n      age: child\n    - \n      text: Poisons\n      age: child\n  Anticipatory Guidance 2 year:\n    - \n      text: Model appropriate language\n      age: child\n    - \n      text: Daily reading\n      age: child\n    - \n      text: Following 1-2 step commands\n      age: child\n    - \n      text: Listen and respond to child\n      age: child\n    - \n      text: Praise, respect\n      age: child\n    - \n      text: Help express feelings\n      age: child\n    - \n      text: Self-expression\n      age: child\n    - \n      text: Playing with other children\n      age: child\n    - \n      text: Toilet training when child is ready\n      age: child\n    - \n      text: Plan for frequent toilet breaks\n      age: child\n    - \n      text: Personal hygiene\n      age: child\n    - \n      text: >\n        Limit TV viewing to no more than 1-2\n        hours a day\n      age: child\n    - \n      text: \'TV alternatives: reading, games, singing\'\n      age: child\n    - \n      text: Encourage physical activity\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Bike helmet\n      age: child\n    - \n      text: Supervise outside\n      age: child\n    - \n      text: Guns\n      age: child\n  Anticipatory Guidance 2 1/2 year:\n    - \n      text: Family meals\n      age: child\n    - \n      text: Family activities\n      age: child\n    - \n      text: Limit TV\n      age: child\n    - \n      text: Daily reading\n      age: child\n    - \n      text: Listen and repeat to child\n      age: child\n    - \n      text: Supervised play with other children\n      age: child\n    - \n      text: Emerging independence\n      age: child\n    - \n      text: Group activities/preschool (if possible)\n      age: child\n    - \n      text: Toilet training\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Water\n      age: child\n    - \n      text: Appropriate supervision\n      age: child\n    - \n      text: Sun exposure\n      age: child\n    - \n      text: Fire safety\n      age: child\n    - \n      text: Smoke detectors\n      age: child\n    - \n      text: Outdoor safety\n      age: child\n    - \n      text: Playground\n      age: child\n    - \n      text: Dogs\n      age: child\n  Anticipatory Guidance 3 year:\n    - \n      text: Show affection\n      age: child\n    - \n      text: Manage anger\n      age: child\n    - \n      text: Reinforce appropriate behavior\n      age: child\n    - \n      text: Reinforce limits\n      age: child\n    - \n      text: Find time for yourself\n      age: child\n    - \n      text: Read, sing, play\n      age: child\n    - \n      text: Talk about pictures in books\n      age: child\n    - \n      text: Encourage child to talk\n      age: child\n    - \n      text: Encourage appropriate play\n      age: child\n    - \n      text: Encourage fantasy play\n      age: child\n    - \n      text: Encourage play with peers\n      age: child\n    - \n      text: Family exercise, activities\n      age: child\n    - \n      text: \'Limit screen time - maximum 1-2 hours/day\'\n      age: child\n    - \n      text: No TV in bedroom\n      age: child\n    - \n      text: Car safety seat\n      age: child\n    - \n      text: Supervise play near streets, cars\n      age: child\n    - \n      text: Safety near windows\n      age: child\n    - \n      text: Guns\n      age: child\n  Anticipatory Guidance 4 year:\n    - \n      text: Model behavior\n      age: child\n    - \n      text: \"Be sensitive to child\'s feelings\"\n      age: child\n    - \n      text: Encourage play with other children\n      age: child\n    - \n      text: Consider preschool\n      age: child\n    - \n      text: Daily reading\n      age: child\n    - \n      text: Talk with child\n      age: child\n    - \n      text: Calm bedtime routines\n      age: child\n    - \n      text: Brush teeth twice daily\n      age: child\n    - \n      text: Daily physical activity\n      age: child\n    - \n      text: Limit TV/video to 1-2 hours/day\n      age: child\n    - \n      text: No TV in bedroom\n      age: child\n    - \n      text: Community activities\n      age: child\n    - \n      text: \'Expect curiosity about body - answer questions using proper terms\'\n      age: child\n    - \n      text: Safety rules with adults\n      age: child\n    - \n      text: Safe and unsafe touches\n      age: child\n    - \n      text: How to seek help when needed\n      age: child\n    - \n      text: Appropriately restrained in all vehicles\n      age: child\n    - \n      text: Supervise all outdoor play\n      age: child\n    - \n      text: Guns\n      age: child\n  Anticipatory Guidance 5-6 year:\n    - \n      text: Establish routines\n      age: child\n    - \n      text: After-school care/activities\n      age: child\n    - \n      text: Friends\n      age: child\n    - \n      text: Bullying\n      age: child\n    - \n      text: Communicate with teachers\n      age: child\n    - \n      text: Family time\n      age: child\n    - \n      text: Anger management\n      age: child\n    - \n      text: Discipline for teaching not punishment\n      age: child\n    - \n      text: Limit TV\n      age: child\n    - \n      text: Healthy weight\n      age: child\n    - \n      text: Well-balanced diet, including breakfast\n      age: child\n    - \n      text: Fruits, vegetables, whole grains\n      age: child\n    - \n      text: Adequate calcium\n      age: child\n    - \n      text: 60 minutes of exercise/day\n      age: child\n    - \n      text: Regular dental visits\n      age: child\n    - \n      text: Brushing/flossing\n      age: child\n    - \n      text: Fluoride\n      age: child\n    - \n      text: Sexual safety\n      age: child\n    - \n      text: Pedestrian safety\n      age: child\n    - \n      text: Safety helmets\n      age: child\n    - \n      text: Swimming safety\n      age: child\n    - \n      text: Fire escape plan\n      age: child\n    - \n      text: Smoke/carbon monoxide detectors\n      age: child\n    - \n      text: Guns\n      age: child\n    - \n      text: Sun\n      age: child\n    - \n      text: Appropriately restrained in all vehicles\n      age: child\n  Anticipatory Guidance 7-8 year:\n    - \n      text: Show interest in school\n      age: child\n    - \n      text: Communicate with teachers\n      age: child\n    - \n      text: Encourage independence\n      age: child\n    - \n      text: Praise strengths\n      age: child\n    - \n      text: Be a positive role model\n      age: child\n    - \n      text: Discuss expected body changes\n      age: child\n    - \n      text: Encourage proper nutrition\n      age: child\n    - \n      text: Eat meals as a family\n      age: child\n    - \n      text: 60 minutes of physical activity daily\n      age: child\n    - \n      text: Limit TV and screen time\n      age: child\n    - \n      text: Dental visits twice a year\n      age: child\n    - \n      text: Brush teeth twice a day\n      age: child\n    - \n      text: Floss teeth daily\n      age: child\n    - \n      text: Wear mouth guard during sports\n      age: child\n    - \n      text: \"Know child\'s friends\"\n      age: child\n    - \n      text: Home emergency plan\n      age: child\n    - \n      text: Safety rules with adults\n      age: child\n    - \n      text: Appropriate vehicle restraint\n      age: child\n    - \n      text: Helmets and pads\n      age: child\n    - \n      text: Supervise around water\n      age: child\n    - \n      text: Smoke-free environment\n      age: child\n    - \n      text: Guns\n      age: child\n    - \n      text: Monitor computer use\n      age: child\n  Anticipatory Guidance 9-10 year:\n    - \n      text: Show interest in school\n      age: child\n    - \n      text: Quiet space for homework\n      age: child\n    - \n      text: Address bullying\n      age: child\n    - \n      text: >\n        Encouraging independence and\n        self-responsibility\n      age: child\n    - \n      text: \'Be a positive role model - discuss respect, anger\'\n      age: child\n    - \n      text: \"Know child\'s friends and importance of peers\"\n      age: child\n    - \n      text: Expect preadolescent behaviors\n      age: child\n    - \n      text: Answer questions and discuss puberty\n      age: child\n    - \n      text: Safety rules with adults\n      age: child\n    - \n      text: Encourage proper nutrition\n      age: child\n    - \n      text: 60 minutes of physical activity daily\n      age: child\n    - \n      text: Limit TV and screen time\n      age: child\n    - \n      text: Dental visits twice a year\n      age: child\n    - \n      text: Brush teeth twice a day\n      age: child\n    - \n      text: Floss teeth daily\n      age: child\n    - \n      text: Wear mouth guards during sports\n      age: child\n    - \n      text: Booster seat\n      age: child\n    - \n      text: Teach to swim/water safety\n      age: child\n    - \n      text: Sunscreen\n      age: child\n    - \n      text: Avoid tobacco, alcohol, drugs\n      age: child\n    - \n      text: Guns\n      age: child\n  Anticipatory Guidance 11-14 year:\n    - \n      text: Brush/floss teeth\n      age: child\n    - \n      text: Regular dental visits\n      age: child\n    - \n      text: Body image\n      age: child\n    - \n      text: Balanced diet\n      age: child\n    - \n      text: Limit TV\n      age: child\n    - \n      text: Physical activity\n      age: child\n    - \n      text: Help with homework when needed\n      age: child\n    - \n      text: Encourage reading/school\n      age: child\n    - \n      text: Community involvement\n      age: child\n    - \n      text: Family time\n      age: child\n    - \n      text: Age-appropriate limits\n      age: child\n    - \n      text: Friends\n      age: child\n    - \n      text: Decision-making\n      age: child\n    - \n      text: Dealing with stress\n      age: child\n    - \n      text: Mental health concerns\n      age: child\n    - \n      text: Sexuality/puberty\n      age: child\n    - \n      text: Tobacco, alcohol, drugs\n      age: child\n    - \n      text: Prescription drugs\n      age: child\n    - \n      text: Know friends and activities\n      age: child\n    - \n      text: Sex\n      age: child\n    - \n      text: Seat belts, no ATV\n      age: child\n    - \n      text: Guns\n      age: child\n    - \n      text: Safe dating\n      age: child\n    - \n      text: Conflict resolution\n      age: child\n    - \n      text: Bullying\n      age: child\n    - \n      text: Sport helmets\n      age: child\n    - \n      text: Protective gear\n      age: child\n  Anticipatory Guidance 15-21 year:\n    - \n      text: Balanced diet\n      age: child\n    - \n      text: Physical activity\n      age: child\n    - \n      text: Limit TV\n      age: child\n    - \n      text: Protect hearing\n      age: child\n    - \n      text: Brush/floss teeth\n      age: child\n    - \n      text: Regular dental visits\n      age: child\n    - \n      text: Age-appropriate limits\n      age: child\n    - \n      text: Friends/relationships\n      age: child\n    - \n      text: Family time\n      age: child\n    - \n      text: Community involvement\n      age: child\n    - \n      text: Encourage reading/school\n      age: child\n    - \n      text: Rules/exceptions\n      age: child\n    - \n      text: Planning for after high school\n      age: child\n    - \n      text: Dealing with stress\n      age: child\n    - \n      text: Decision-making\n      age: child\n    - \n      text: Mood changes\n      age: child\n    - \n      text: Sexuality/Puberty\n      age: child\n    - \n      text: Tobacco, alcohol, drugs\n      age: child\n    - \n      text: Prescription drugs\n      age: child\n    - \n      text: Sex\n      age: child\n    - \n      text: Seat belts\n      age: child\n    - \n      text: Guns\n      age: child\n    - \n      text: Conflict resolution\n      age: child\n    - \n      text: Driving restriction\n      age: child\n    - \n      text: Sports/Recreation safety\n      age: child\nprocedure:\n  Casting/splinting/orthotics/DME:\n    - \n      text: Aircast was provided\n      input: select\n      options: left ankle,right ankle\n    - \n      text: ASO ankle brace was provided\n      input: select\n      options: left ankle,right ankle\n    - \n      text: Boxer fracture splint applied\n      input: select\n      options: left side,right side\n    - \n      text: Buddy taping was applied\n      input: select\n      options: >\n        left hand fingers,right hand\n        fingers,left foot toes,right foot\n        toes,left index and middle fingers,left\n        middle and ring fingers,left ring and\n        small fingers,right index and middle\n        fingers,right middle and ring\n        fingers,right ring and small\n        fingers,left big and 2nd toes,left 2nd\n        and 3rd toes,left 3rd and 4th toes,left\n        4th and 5th toes,right big and 2nd\n        toes,right 2nd and 3rd toes,right 3rd\n        and 4th toes,right 4th and 5th toes\n    - \n      text: Carpal tunnel gel pads were provided\n    - \n      text: Cock-up wrist splint was provided\n      input: select\n      options: left wrist,right wrist\n    - \n      text: Equalizer boot was provided\n      input: select\n      options: left,right\n    - \n      text: Forearm brace was provided\n      input: select\n      options: left,right\n    - \n      text: Gunumedi knee sleeve was provided\n      input: select\n      options: left,right\n    - \n      text: Heel cups were provided\n      input: select\n      options: left,right\n    - \n      text: Long arm cast was applied\n      input: select\n      options: left,right\n    - \n      text: Long arm splint was applied\n      input: select\n      options: left,right\n    - \n      text: Long leg cast was applied\n      input: select\n      options: left,right\n    - \n      text: Patella tendonitis strap was provided\n      input: select\n      options: left,right\n    - \n      text: Post-op shoe was provided\n      input: select\n      options: left,right\n    - \n      text: Radial gutter cast was applied\n      input: select\n      options: left,right\n    - \n      text: Short arm cast was applied\n      input: select\n      options: left,right\n    - \n      text: Short leg cast was applied\n      input: select\n      options: left,right\n    - \n      text: Short leg walking cast was applied\n      input: select\n      options: left,right\n    - \n      text: Sugar tong arm splint was applied\n      input: select\n      options: left,right\n    - \n      text: Thumb spica wrist splint was provided\n      input: select\n      options: left,right\n    - \n      text: Ulnar gutter cast was applied\n      input: select\n      options: left,right\n    - \n      text: Velcro wrist splint was provided\n      input: select\n      options: left,right\n  Cerumen removal:\n    - \n      text: Location\n      input: select\n      options: left,right,bilateral\n    - \n      text: Performed under direct visualization\n    - \n      text: Curette used to remove cerumen\n    - \n      text: Irrigated with water/H2O2\n    - \n      text: Irrigated with warm water\n    - \n      text: Debrox was used to soften the ear wax\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Cerumen successfuly removed\n  Circumcision:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        local 1% Xylocaine,1% Xylocaine dorsal\n        penile nerve block\n    - \n      text: Gomco\n      input: select\n      options: 1.1,1.3,1.45\n    - \n      text: Plastibell\n      input: select\n      options: 1.1,1.3,1.45\n    - \n      text: >\n        After anesthetizing, penis was prepped\n        with Betadine\n    - \n      text: Sterile drape placed\n    - \n      text: Hemostats used to grasp foreskin\n    - \n      text: Adhesions bluntly dissected\n    - \n      text: >\n        Straight forceps used in dorsal midline\n        to crush tissue\n    - \n      text: Iris scissors to cut along crush line\n    - \n      text: Clamp placed and foreskin excised\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: >\n        Hypospadius found and circumcision was\n        stopped\n    - \n      text: Petroleum gauze was applied\n    - \n      text: Patient care instructions given\n  Cryotherapy:\n    - \n      text: \'Type of lesion:\'\n      input: text\n    - \n      text: \'Reason for treatment:\'\n      input: text\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Location, size, and number of lesions:\'\n      input: text\n    - \n      text: Lesion was debrided with a scalpel\n    - \n      text: >\n        Liquid nitrogen was used to treat the\n        lesion with 3 freeze-thaw cycles\n    - \n      text: \"Histofreeze performed according to manufacturer\'s time guidelines\"\n    - \n      text: \"Verruca Freeze performed according to manufacturer\'s time guidelines\"\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  Excision/biopsy:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Preoperative diagnosis:\'\n      input: text\n    - \n      text: \'Postoperative diagnosis:\'\n      input: text\n    - \n      text: \'Location and size of lesion:\'\n      input: text\n    - \n      text: >\n        Area of skin was prepared and draped in\n        the usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        1% lidocaine,1% lidocaine with\n        epinephrine,2% lidocaine,2% lidocaine\n        with epinephrine\n    - \n      text: >\n        Full thickness elliptical incision was\n        performed\n    - \n      text: Linear incision was performed\n    - \n      text: Punch biopsy performed\n    - \n      text: Scissor snip performed\n    - \n      text: Shave excision was performed\n    - \n      text: Suture ligation performed\n    - \n      text: Hemostasis was acheived\n    - \n      text: Closure was performed using\n      input: text\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Foreign body removal:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Location of foreign body:\'\n      input: text\n    - \n      text: >\n        Area of skin was prepared and draped in\n        the usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        1% lidocaine,1% lidocaine with\n        epinephrine,2% lidocaine,2% lidocaine\n        with epinephrine\n    - \n      text: Eye was irrigated with saline\n    - \n      text: >\n        Wound was irrigated copiously with\n        sterile saline\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Gynecologic procedures:\n    - \n      text: \'Indication for procedure:\'\n      input: text\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: >\n        Area was prepared and draped in the\n        usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        1% lidocaine,1% lidocaine with\n        epinephrine,2% lidocaine,2% lidocaine\n        with epinephrine,Hurricaine spray,Motrin\n        600mg,Tylenol 1000 mg\n    - \n      text: >\n        Bivalve speculum was placed in the\n        vagina\n    - \n      text: Tenaculum was used\n    - \n      text: Cryosurgery was performed\n    - \n      text: Uterine sounds to\n      input: text\n    - \n      text: >\n        Endometrial sample was obtained with\n        pipelle\n    - \n      text: Podophylin was applied\n    - \n      text: Acetic acid was applied\n    - \n      text: \'Bimanual exam:\'\n      input: text\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Incision and drainage:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: >\n        Area of skin was prepared and draped in\n        the usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        1% lidocaine,1% lidocaine with\n        epinephrine,2% lidocaine,2% lidocaine\n        with epinephrine\n    - \n      text: >\n        Wound was irrigated copiously with\n        sterile saline\n    - \n      text: Wick was inserted\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Injections, joint:\n    - \n      text: \'Indication for procedure:\'\n      input: text\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Location:\'\n      input: text\n    - \n      text: Location\n      input: select\n      options: \"AC joint,Ankle joint,Anserine bursa,Biceps tendon,Carpal tunnel,Coccyx,Costochondral joint,DeQuervain\'s,Facet joint,First carpometacarpal injection,Foot injection,Ganglion cyst,Greater trochanteric bursitis,Hip joint,Ischial bursa,Knee joint,Lateral epicondyle,Medial epicondyle,Olecranon bursa,Plantar fascia,Subacromial bursa,Trigger finger,Wrist joint\"\n    - \n      text: Laterality\n      input: select\n      options: left,right,bilateral\n    - \n      text: Medication used for injection\n      input: text\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  Intralesional Kenalog:\n    - \n      text: Indication for procedure\n      input: text\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: Location and number of lesions treated\n      input: text\n    - \n      text: Kenalog concentration\n      input: select\n      options: >\n        1.25 mg/cc,2.5 mg/cc,3.3 mg/cc,5.0\n        mg/cc,10 mg/cc,20 mg/cc,40 mg/cc\n    - \n      text: >\n        An alcohol swab was used to prepare the\n        lesions for injection\n    - \n      text: >\n        A TB syringe was filled with the\n        appropriate concentration of Kenalog\n    - \n      text: >\n        Intralesional injection was then carried\n        out with just enough of the solution to\n        blanch the lesions\n  Intrauterine device insertion:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: type\n      input: text\n    - \n      text: >\n        The patient was placed in lithotomy\n        position\n    - \n      text: The cervix was prepped with Betadine\n    - \n      text: A paracervical block was performed\n    - \n      text: A tenaculum was placed\n    - \n      text: The uterus was sounded and found to be\n      input: text\n    - \n      text: IUD was inserted without difficulty\n    - \n      text: >\n        The strings were cut to approximately 2\n        cm\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  IV fluids:\n    - \n      text: \'Indication:\'\n      input: text\n    - \n      text: \'Location:\'\n      input: text\n    - \n      text: Catheter type\n      input: select\n      options: 18 gauge,20 gauge,22 gauge\n    - \n      text: IV solution\n      input: select\n      options: NaCl 0.9%,D5 NS,Lactated Ringers,D5 W\n    - \n      text: \'Volume:\'\n      input: text\n    - \n      text: \'Rate:\'\n      input: text\n    - \n      text: >\n        IV catheter was removed and dressing\n        applied\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  KOH/wet prep:\n    - \n      text: \'Indication:\'\n      input: text\n    - \n      text: >\n        A 15-blade was used to scrape the\n        surface of a representative portion of\n        the area in question\n    - \n      text: >\n        The scrapings were placed on a glass\n        slide\n    - \n      text: >\n        A drop of KOH was applied and a cover\n        slip was applied\n    - \n      text: >\n        The slide was then examined\n        microscopically\n    - \n      text: \'Findings:\'\n      input: text\n  Laceration repair:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Wound location:\'\n      input: text\n    - \n      text: \'Wound size and type:\'\n      input: text\n    - \n      text: >\n        Area of skin was prepared and draped in\n        the usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        1% lidocaine,1% lidocaine with\n        epinephrine,2% lidocaine,2% lidocaine\n        with epinephrine\n    - \n      text: \'Wound closed using:\'\n      input: text\n    - \n      text: Subcutaneous sutures placed\n    - \n      text: Continuous sutures placed\n    - \n      text: \'Number of sutures placed:\'\n      input: text\n    - \n      text: \'Number of staples placed:\'\n      input: text\n    - \n      text: \'Number of steri strips placed:\'\n      input: text\n    - \n      text: Area cleaned and bandaged\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Manipulation:\n    - \n      text: \'Indications:\'\n      input: text\n    - \n      text: \'Area manipulated:\'\n      input: text\n    - \n      text: >\n        Soft tissue, muscle energy technique\n        applied\n    - \n      text: >\n        High velociy, low amplitude technique\n        applied\n    - \n      text: Counterstrain technique applied\n    - \n      text: Rotation right, side bend right\n    - \n      text: Rotation left, side bend left\n    - \n      text: Right first rib elevated\n    - \n      text: Left first rib elevated\n    - \n      text: Right trigger point\n    - \n      text: Left trigger point\n  Nail procedures:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: >\n        Area of skin was prepared and draped in\n        the usual sterile fashion\n    - \n      text: Anesthesia\n      input: select\n      options: >\n        local block,digital block,metatarsal\n        block,1% lidocaine without\n        epinephrine,2% lidocaine without\n        epinephrine\n    - \n      text: Nail plate separated from nailbed\n    - \n      text: Entire nail plate removed\n    - \n      text: Partial nail plate removed\n    - \n      text: Phenol applied with cotton swab\n    - \n      text: Bleeding ligated or cauterized as needed\n    - \n      text: Site dressed with dry sterile dressing\n    - \n      text: Hematoma drained with electrocautery\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Minimal blood loss\n    - \n      text: Patient care instructions given\n  Peak flow/spirometry:\n    - \n      text: \'Peak flow rate:\'\n      input: text\n    - \n      text: \'Post-medication peak flow rate:\'\n      input: text\n    - \n      text: \'Spirometry:\'\n      input: text\n    - \n      text: \'Treatment given:\'\n      input: text\n  Staple/suture removal:\n    - \n      text: Verbal consent given\n    - \n      text: \'Location:\'\n      input: text\n    - \n      text: \'Number of sutures:\'\n      input: text\n    - \n      text: \'Number of staples:\'\n      input: text\n    - \n      text: The area was first cleaned with alcohol\n    - \n      text: >\n        Sutures were taken out with forceps and\n        suture cutting scissors\n    - \n      text: Staples were removed with staple remover\n    - \n      text: Steri-strips placed\n    - \n      text: Non-stick dressing was applied\n    - \n      text: No sign of infection noted\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  Trigger point injection:\n    - \n      text: \'Indications:\'\n      input: text\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: \'Location:\'\n      input: text\n    - \n      text: \'Injected with:\'\n      input: text\n    - \n      text: Needle type\n      input: select\n      options: >\n        22 gauge 3.5 in,25 gauge 3.5 in,25 gauge\n        1.5 in,27 gauge 1.5 in,hollow Q-tip\n    - \n      text: \'Amount per site:\'\n      input: text\n    - \n      text: Performed under sterile conditions\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: \'Post treatment effect:\'\n      input: text\n    - \n      text: Patient care instructions given\n  Vasectomy:\n    - \n      text: >\n        Procedure, alternatives, risks, and\n        questions (PARQ) conference performed\n    - \n      text: Verbal consent given\n    - \n      text: >\n        Consent was signed and witnessed in the\n        office\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\n  Wound care:\n    - \n      text: \'Location:\'\n      input: text\n    - \n      text: \'Size and shape of wound:\'\n      input: text\n    - \n      text: >\n        Using clean technique, wound was\n        irrigated with normal saline\n    - \n      text: >\n        Normal saline wet to dry dressing\n        applied using\n      input: text\n    - \n      text: Kerlix applied\n    - \n      text: ABD applied\n    - \n      text: Telfa applied\n    - \n      text: Paper tape applied\n    - \n      text: Kling applied\n    - \n      text: Triple antibiotic ointment applied\n    - \n      text: Duoderm applied\n    - \n      text: Tegaderm applied\n    - \n      text: Patient tolerated the procedure\n      input: radio\n      options: well,poorly\n    - \n      text: Patient care instructions given\nros:\n  General - Denies:\n    - \n      text: fever\n      normal: true\n    - \n      text: weight change\n      normal: true\n    - \n      text: fatigue\n      normal: true\n    - \n      text: appetite change\n      normal: true\n  General - REPORTS:\n    - \n      text: FEVER\n    - \n      text: WEIGHT LOSS\n    - \n      text: WEIGHT GAIN\n    - \n      text: FATIGUE\n    - \n      text: WEAKNESS\n    - \n      text: INCREASED APPETITE\n    - \n      text: DECREASED APPETITE\n  Eye - Denies:\n    - \n      text: vision change\n      normal: true\n    - \n      text: eye pain\n      normal: true\n    - \n      text: eye redness\n      normal: true\n    - \n      text: eye discharge\n      normal: true\n  Eye - REPORTS:\n    - \n      text: VISION CHANGE\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: EYE PAIN\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: EYE REDNESS\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: EYE DISCHARGE\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Ears, Nose, Throat - Denies:\n    - \n      text: ear pain\n      normal: true\n    - \n      text: tinnitus\n      normal: true\n    - \n      text: rhinorrhea\n      normal: true\n    - \n      text: nose bleeding\n      normal: true\n    - \n      text: nasal congestion\n      normal: true\n  Ears, Nose, Throat - REPORTS:\n    - \n      text: EAR PAIN\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: TINNITUS\n    - \n      text: NASAL CONGESTION\n    - \n      text: RHINORRHEA\n    - \n      text: NOSE BLEEDING\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n  Respiratory - Denies:\n    - \n      text: shortness of breath\n      normal: true\n    - \n      text: dyspnea on exertion\n      normal: true\n    - \n      text: paroxysmal nocturnal dyspnea\n      normal: true\n    - \n      text: cough\n      normal: true\n  Respiratory - REPORTS:\n    - \n      text: SHORTNESS OF BREATH\n    - \n      text: DYSPNEA ON EXERTION\n    - \n      text: PAROXYSMAL NOCTURNAL DYSPNEA\n    - \n      text: PRODUCTIVE COUGH\n    - \n      text: NON-PRODUCTIVE COUGH\n  Cardiovascular - Denies:\n    - \n      text: chest pain\n      normal: true\n    - \n      text: palpitations\n      normal: true\n    - \n      text: cyanosis\n      normal: true\n    - \n      text: edema\n      normal: true\n  Cardiovascular - REPORTS:\n    - \n      text: CHEST PAIN\n      input: radio\n      options: RIGHT,LEFT,BILATERAL\n    - \n      text: PALPITATIONS\n    - \n      text: CYANOSIS\n    - \n      text: EDEMA\n      input: radio\n      options: UPPER,LOWER,UPPER AND LOWER\n    - \n      text: GENERALIZED EDEMA\n  Gastrointestinal - Denies:\n    - \n      text: nausea\n      normal: true\n    - \n      text: vomiting\n      normal: true\n    - \n      text: abdominal pain\n      normal: true\n    - \n      text: bowel movement changes\n      normal: true\n    - \n      text: jaundice\n      normal: true\n  Gastrointestinal - REPORTS:\n    - \n      text: NAUSEA\n    - \n      text: VOMITING\n    - \n      text: ABDOMINAL PAIN\n      input: radio\n      options: UPPER,LOWER,UPPER AND LOWER\n    - \n      text: GENERALIZED ABDOMINAL PAIN\n    - \n      text: DIARRHEA\n    - \n      text: CONSTIPATION\n    - \n      text: ALTERNATING DIARRHEA AND CONSTIPATION\n    - \n      text: JAUNDICE\n  Genitourinary - Denies:\n    - \n      text: penile discharge\n      normal: true\n      age: m\n    - \n      text: urinary incontinence\n      normal: true\n      age: m\n    - \n      text: hematuria\n      normal: true\n      age: m\n    - \n      text: genital lesions\n      normal: true\n      age: m\n    - \n      text: dysuria\n      normal: true\n      age: m\n    - \n      text: vaginal discharge\n      normal: true\n      age: f\n    - \n      text: urinary incontinence\n      normal: true\n      age: f\n    - \n      text: hematuria\n      normal: true\n      age: f\n    - \n      text: genital lesions\n      normal: true\n      age: f\n    - \n      text: dysuria\n      normal: true\n      age: f\n  Genitourinary - REPORTS:\n    - \n      text: PENILE DISCHARGE\n      age: m\n    - \n      text: URINARY INCONTINENCE\n      age: m\n    - \n      text: HEMATURIA\n      age: m\n    - \n      text: GENITAL LESIONS\n      age: m\n    - \n      text: DYSURIA\n      age: m\n    - \n      text: VAGINAL DISCHARGE\n      age: f\n    - \n      text: URINARY INCONTINENCE\n      age: f\n    - \n      text: HEMATURIA\n      age: f\n    - \n      text: GENITAL LESIONS\n      age: f\n    - \n      text: DYSURIA\n      age: f\n  Musculoskeletal - Denies:\n    - \n      text: joint pain\n      normal: true\n    - \n      text: joint swelling\n      normal: true\n  Musculoskeletal - REPORTS:\n    - \n      text: JOINT PAIN\n    - \n      text: JOINT SWELLING\n  Neurological - Denies:\n    - \n      text: dizziness\n      normal: true\n    - \n      text: localized weakness\n      normal: true\n    - \n      text: parasthesias\n      normal: true\n    - \n      text: loss of sensation\n      normal: true\n    - \n      text: loss of function\n      normal: true\n  Neurological - REPORTS:\n    - \n      text: DIZZINESS\n    - \n      text: LOCALIZED WEAKNESS\n    - \n      text: PARASTHESIAS\n    - \n      text: LOSS OF SENSATION\n    - \n      text: LOSS OF FUNCTION\n  Psychological - Denies:\n    - \n      text: depression\n      normal: true\n    - \n      text: anxiety\n      normal: true\n    - \n      text: hallucinations\n      normal: true\n    - \n      text: mood swings\n      normal: true\n  Psychological - REPORTS:\n    - \n      text: DEPRESSION\n    - \n      text: ANXIETY\n    - \n      text: HALLUCINATIONS\n    - \n      text: MOOD SWINGS\n  Hematological, Lymphatic - Denies:\n    - \n      text: abnormal bleeding\n      normal: true\n    - \n      text: easy bruising\n      normal: true\n    - \n      text: skin lumps\n      normal: true\n  Hematological, Lymphatic - REPORTS:\n    - \n      text: ABNORMAL BLEEDING\n    - \n      text: EASY BRUISING\n    - \n      text: SKIN LUMPS\n  Endocrine - Denies:\n    - \n      text: polyuria\n      normal: true\n    - \n      text: polydipsia\n      normal: true\n    - \n      text: breast discharge\n      normal: true\n  Endocrine - REPORTS:\n    - \n      text: POLYURIA\n    - \n      text: POLYDIPSIA\n    - \n      text: BREAST DISCHARGE\n  Skin - Denies:\n    - \n      text: skin rash\n      normal: true\n    - \n      text: skin itching\n      normal: true\n    - \n      text: skin lumps\n      normal: true\n  Skin - REPORTS:\n    - \n      text: SKIN RASH\n    - \n      text: SKIN ITCHING\n    - \n      text: SKIN LUMPS\n  Well Child Check - Breastfeeding:\n    - \n      text: Minutes per feeding\n      input: text\n      age: child\n    - \n      text: Hours between feeding\n      input: text\n      age: child\n    - \n      text: Feedings per 24 hours\n      input: text\n      age: child\n  Well Child Check - Formula feeding:\n    - \n      text: Ounces per feeding\n      input: text\n      age: child\n    - \n      text: Source of water\n      input: text\n      age: child\n    - \n      text: Vitamins/fluoride\n      input: text\n      age: child\n  Well Child Check - Development 1 month:\n    - \n      text: If upset, able to calm\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Has started to smile\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \"Recognizes parents\' voices:\"\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Follows parent with eyes\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Able to lift head when on tummy\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 2 month:\n    - \n      text: >\n        Lifts head and begins to push up when\n        prone\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Holds head erect for short periods (when\n        held upright)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Diminished newborn reflexes\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Symmetrical movement\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Indicates boredom when no activity\n        change\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Coos\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Different cries for different needs\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Smiles\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Looks at parent\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Self-comfort\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 4 month:\n    - \n      text: Pushes chest up to elbows\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Good head control\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Symmetry in movement\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Begins to roll and reach for objects\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Responds to affection\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Indicates pleasure and displeasure\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Spontaneous expressive babbling\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Social smile\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Elicits social interactions\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Can calm down on own\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 6 month:\n    - \n      text: Sits briefly, leaning forward\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Rolls over\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Uses visual exploration\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Beginning to use oral exploration\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Uses a string of words (ah, eh, oh)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Beginning to recognize own name\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Enjoys vocal turn asking\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Shows pleasure from interactions with\n        parents or others\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 9 month:\n    - \n      text: Sits well\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Crawls\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Pulls to feet with support\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Peekaboo\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Object permanence\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Looks at books\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Imitates sounds\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Points out objects\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Stranger anxiety\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Seeks parent for comfort\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 12 month:\n    - \n      text: Waves bye-bye\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Tries to do what you do\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Cries when you leave\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Plays peekaboo\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Hands you a book to read\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Speaks 1-2 words\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Babbles\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Tries to make the same sounds you do\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Looks at things you are looking at\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Follows simple directions\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Bangs toys together\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Pulls to stand\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Stands alone\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Drinks from a cup\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 15 month:\n    - \n      text: Tries to do what you do\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Helps in the house\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Listens to a story\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Says 2-3 words\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Brings toys over to show you\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Scribbles\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Follows simple commands\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Bends down without falling\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Walks well\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Puts blocks in a cup\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Drinks from a cup with very little\n        spilling\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 18 month:\n    - \n      text: Helps in the house\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Laughs in response to others\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Speaks 6 words\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Knows name of favorite book\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Points to 1 body part\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Stacks 2 small blocks\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Runs\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Walks up steps\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Uses spoon and cup without spilling most\n        of the time\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 2 year:\n    - \n      text: Copies things you do\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Plays pretend\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Plays alongside other children\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: When talking, puts 2 words together\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Names 1 picture\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Follows 2-step commands\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Stacks small blocks\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Kicks a ball\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Walks up and down stairs 1 step at a\n        time alone while holding wall or railing\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Throws a ball overhand\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Jumps up\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Turns book pages 1 at a time\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 2 1/2 year:\n    - \n      text: Plays pretend\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Plays with other children\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: >\n        Other people can understand what your\n        child is saying half of the time\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: When talking, puts 3 or 4 words together\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Points to 6 body parts\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Knows correct animal sounds\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Jumps up and down in place\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Puts on clothes with help\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Washes and dries hands without help\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Brushes teeth with help\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 3 year:\n    - \n      text: Self-care skills\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Imaginative play\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: 2-3 sentences\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Usually understandable\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Names a friend\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Builds tower (6-8 blocks)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Stands on 1 foot\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Throws ball overhead\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Walks upstairs alternating feet\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Copies circle\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Draws person (2 body parts)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Toilet trained during the day\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 4 year:\n    - \n      text: Interactions with peers\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Fantasy play\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Usually understandable\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Knows name, age, gender\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Names 4 colors\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Draws person (3 body parts)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Plays board/card games\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Hops on 1 foot\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Balances on 1 foot for 2 seconds\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Builds tower (8 blocks)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Copies a cross\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Brushes own teeth\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Dresses self\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 5-6 year:\n    - \n      text: Balances on 1 foot\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Hops and skips\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Able to tie knot\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Good articulation/language skills\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Draws person (6+ body parts)\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Prints some letters and numbers\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Copies squares, triangles\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Counts to 10\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Names 4 or more colors\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Follows simple directions\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Listens and attends\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 7-8 year:\n    - \n      text: Grade\n      input: text\n      age: child\n    - \n      text: Social interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Performance\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Behavior\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Attention\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Homework\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Parent/Teacher concerns\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Cooperation\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Parent-child interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Sibling interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Oppositional behavior\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Eats healthy meals and snacks\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Participates in an after-school activity\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Has friends\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Is vigorously active for 1 hour a day\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Is doing well in school\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Does chores when asked\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Gets along with family\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Development 9-10 year:\n    - \n      text: Grade\n      input: text\n      age: child\n    - \n      text: Social interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Performance\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Behavior\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Attention\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Homework\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Parent/Teacher concerns\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Cooperation\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Parent-child interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Sibling interaction\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: Oppositional behavior\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Eats healthy meals and snacks\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Participates in an after-school activity\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Has friends\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Is vigorously active for 1 hour a day\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Has a caring and supportive family\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Is doing well in school\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Is getting chances to make own decisions\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: Feels good about self\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Does an activity really well: ; Describe\'\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Risk Assessment 11-14 year:\n    - \n      text: \'Home - Eats meals with family\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Home - Has family members/adult to turn to for help\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Home - Is permitted and is able to make independent decisions\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Education - Grade\'\n      input: text\n      age: child\n    - \n      text: \'Education - Performance\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Education - Behavior/Attention\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Education - Homework\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Eating - Eats regular meals including adequate fruits and vegetables\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Drinks non-sweetened liquids\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Calcium source\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Has concerns about body or appearance\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Has friends\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - At least 1 hour of physical activity/day\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Screen time (except for homework) less than 2 hours per day\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Has interests/participates in community activities/volunteers\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Drugs - Uses tobacco/alcohol/drugs\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Home is free of violence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Uses safety belts/safety equipment\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Has peer relationships free of violence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Sex - Has had oral sex\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Sex - Has had sexual intercourse (vaginal, anal)\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has ways to cope with stress\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Displays self-confidence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has problems with sleep\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Gets depressed, anxious, or irritable/has mood swings\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has thoughts about hurting self or considered suicide\'\n      input: radio\n      options: yes,no\n      age: child\n  Well Child Check - Risk Assessment 15-21 year:\n    - \n      text: \'Home - Eats meals with family\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Home - Has family members/adult to turn to for help\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Home - Is permitted and is able to make independent decisions\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Education - Grade\'\n      input: text\n      age: child\n    - \n      text: \'Education - Performance\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Education - Behavior/Attention\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Education - Homework\'\n      input: radio\n      options: normal,abnormal\n      age: child\n    - \n      text: \'Eating - Eats regular meals including adequate fruits and vegetables\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Drinks non-sweetened liquids\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Calcium source\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Eating - Has concerns about body or appearance\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Has friends\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - At least 1 hour of physical activity/day\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Screen time (except for homework) less than 2 hours per day\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Activities - Has interests/participates in community activities/volunteers\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Drugs - Uses tobacco/alcohol/drugs\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Home is free of violence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Uses safety belts/safety equipment\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Impaired/Distracted driving\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Safety - Has peer relationships free of violence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Sex - Has had oral sex\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Sex - Has had sexual intercourse (vaginal, anal)\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has ways to cope with stress\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Displays self-confidence\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has problems with sleep\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Gets depressed, anxious, or irritable/has mood swings\'\n      input: radio\n      options: yes,no\n      age: child\n    - \n      text: \'Suicidality/Mental Health - Has thoughts about hurting self or considered suicide\'\n      input: radio\n      options: yes,no\n      age: child\nsituation:\nt_messages_message:\ntp:\nvitals_other:\nreason: [ ]\n','---\nPHQ-9:\n  forms_title: PHQ-9\n  forms_destination: HPI\n  0:\n    input: radio\n    name: >\n      little_interest_or_pleasure_in_doing_things\n    text: >\n      Little interest or pleasure in doing\n      things\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  1:\n    input: radio\n    name: feeling_down_depressed_or_hopeless\n    text: Feeling down, depressed, or hopeless\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  2:\n    input: radio\n    name: >\n      trouble_falling_or_staying_asleep_or_sleeping_too_much\n    text: >\n      Trouble falling or staying asleep, or\n      sleeping too much\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  3:\n    input: radio\n    name: feeling_tired_or_having_little_energy\n    text: Feeling tired or having little energy\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  4:\n    input: radio\n    name: poor_appetite_or_overeating\n    text: Poor appetite or overeating\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  5:\n    input: radio\n    name: >\n      feeling_bad_about_yourself_or_that_you_are_a_failure_or_have_let_yourself_or_your_family_down\n    text: >\n      Feeling bad about yourself or that you\n      are a failure, or have let yourself or\n      your family down\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  6:\n    input: radio\n    name: >\n      trouble_concentrating_on_things_such_as_reading_the_newspaper_or_watching_television\n    text: >\n      Trouble concentrating on things, such as\n      reading the newspaper or watching\n      television\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  7:\n    input: radio\n    name: >\n      moving_or_speaking_so_slowly_that_other_people_could_have_noticed_or_the_opposite_being_so_fidgety_or_restless_that_you_have_been_moving_around_a_lot_more_than_usual\n    text: \'Moving or speaking so slowly that other people could have noticed?  Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual\'\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  8:\n    input: radio\n    name: >\n      thoughts_that_you_would_be_better_off_dead_or_of_hurting_yourself_in_some_way\n    text: >\n      Thoughts that you would be better off\n      dead or of hurting yourself in some way\n    options: >\n      Not at All,Several Days,More Than Half\n      the Days,Nearly Every Day\n  9:\n    input: select\n    name: >\n      how_difficult_have_these_problems_made_it_for_you_to_do_your_work_take_care_of_things_at_home_or_get_along_with_other_people\n    text: >\n      How difficult have these problems made\n      it for you to do your work, take care of\n      things at home, or get along with other\n      people\n    options: >\n      Not difficult at all,Somewhat\n      difficult,Very difficult,Extremely\n      difficult\n  scoring:\n    0-9: Minimal symptoms\n    10-14: Minor depression\n    15-19: Major depression, moderately severe\n    20-27: Major depression, severe\nPast Medical History:\n  forms_title: Past Medical History\n  forms_destination: PMH\n  0:\n    input: radio\n    name: cancer\n    text: Cancer\n    options: No,Yes\n  1:\n    input: radio\n    name: diabetes\n    text: Diabetes\n    options: No,Yes\n  2:\n    input: radio\n    name: hypertension\n    text: Hypertension\n    options: No,Yes\nPast Surgical History:\n  forms_title: Past Surgical History\n  forms_destination: PSH\n  0:\n    input: radio\n    name: appendectomy\n    text: Appendectomy\n    options: No,Yes\n  1:\n    input: radio\n    name: gall_bladder\n    text: Gall bladder\n    options: No,Yes\n  2:\n    input: radio\n    name: lap-band\n    text: Lap-band\n    options: No,Yes\nSocial History:\n  forms_title: Social History\n  forms_destination: SH\n  0:\n    input: radio\n    name: children\n    text: Children\n    options: No,Yes\n  1:\n    input: text\n    name: how_many_children\n    text: How many children?\n  2:\n    input: select\n    name: exercise\n    text: Exercise?\n    options: No,Yes,Partial,Mostly\nFamily History:\n  forms_title: Family History\n  forms_destination: FH\n  0:\n    input: radio\n    name: diabetes\n    text: Diabetes\n    options: No,Yes\n  1:\n    input: radio\n    name: hypertension\n    text: Hypertension\n    options: No,Yes\n  2:\n    input: radio\n    name: cancer\n    text: Cancer\n    options: No,Yes\n  3:\n    input: text\n    name: family_members_with_cancer\n    text: Family members with cancer\nNICHQ Vanderbilt Assessment Scale for Parents, Part 1:\n  forms_title: >\n    NICHQ Vanderbilt Assessment Scale for\n    Parents, Part 1\n  forms_destination: HPI\n  0:\n    input: radio\n    name: >\n      does_not_pay_attention_to_details_or_makes_careless_mistakes_with_for_example_homework\n    text: >\n      Does not pay attention to details or\n      makes careless mistakes with, for\n      example, homework\n    options: Never,Occasionally,Often,Very Often\n  1:\n    input: radio\n    name: >\n      has_difficulty_keeping_attention_to_what_needs_to_be_done\n    text: >\n      Has difficulty keeping attention to what\n      needs to be done\n    options: Never,Occasionally,Often,Very Often\n  2:\n    input: radio\n    name: >\n      does_not_seem_to_listen_when_spoken_to_directly\n    text: >\n      Does not seem to listen when spoken to\n      directly\n    options: Never,Occasionally,Often,Very Often\n  3:\n    input: radio\n    name: >\n      does_not_follow_through_on_instructions_and_fails_to_finish_schoolwork_chores_or_duties\n    text: >\n      Does not follow through on instructions\n      and fails to finish schoolwork, chores,\n      or duties\n    options: Never,Occasionally,Often,Very Often\n  4:\n    input: radio\n    name: >\n      has_difficulty_organizing_tasks_and_activities\n    text: >\n      Has difficulty organizing tasks and\n      activities\n    options: Never,Occasionally,Often,Very Often\n  5:\n    input: radio\n    name: >\n      avoids_dislikes_or_is_reluctant_to_engage_in_tasks_that_require_sustained_mental_effort_e_g_schoolwork_or_homework\n    text: >\n      Avoids, dislikes, or is reluctant to\n      engage in tasks that require sustained\n      mental effort (e.g., schoolwork or\n      homework)\n    options: Never,Occasionally,Often,Very Often\n  6:\n    input: radio\n    name: >\n      loses_things_necessary_for_tasks_or_activities_e_g_toys_school_assignments_pencils_books_or_tools\n    text: >\n      Loses things necessary for tasks or\n      activities (e.g., toys, school\n      assignments, pencils, books, or tools)\n    options: Never,Occasionally,Often,Very Often\n  7:\n    input: radio\n    name: is_distracted_by_extraneous_stimuli\n    text: Is distracted by extraneous stimuli\n    options: Never,Occasionally,Often,Very Often\n  8:\n    input: radio\n    name: is_forgetful_in_daily_activities\n    text: Is forgetful in daily activities\n    options: Never,Occasionally,Often,Very Often\n  scoring:\n    0-11: Minimal symptoms\n    12-27: ADHD, predominantly inattenive type\nNICHQ Vanderbilt Assessment Scale for Parents, Part 2:\n  forms_title: >\n    NICHQ Vanderbilt Assessment Scale for\n    Parents, Part 3\n  forms_destination: HPI\n  0:\n    input: radio\n    name: argues_with_adults\n    text: Argues with adults\n    options: Never,Occasionally,Often,Very Often\n  1:\n    input: radio\n    name: loses_temper\n    text: Loses temper\n    options: Never,Occasionally,Often,Very Often\n  2:\n    input: radio\n    name: deliberately_annoys_people\n    text: Deliberately annoys people\n    options: Never,Occasionally,Often,Very Often\n  3:\n    input: radio\n    name: >\n      blames_others_for_his_or_her_mistakes_or_misbehaviors\n    text: >\n      Blames others for his or her mistakes or\n      misbehaviors\n    options: Never,Occasionally,Often,Very Often\n  4:\n    input: radio\n    name: is_touchy_or_easily_annoyed_by_others\n    text: Is touchy or easily annoyed by others\n    options: Never,Occasionally,Often,Very Often\n  5:\n    input: radio\n    name: is_angry_or_resentful\n    text: Is angry or resentful\n    options: Never,Occasionally,Often,Very Often\n  6:\n    input: radio\n    name: is_spiteful_and_wants_to_get_even\n    text: Is spiteful and wants to get even\n    options: Never,Occasionally,Often,Very Often\n  scoring:\n    0-7: Minimal symptoms\n    8-24: Oppositional Definant Disorder Screen\nHPQ-How is Your Health:\n  forms_title: HPQ-How is Your Health\n  forms_destination: HPI\n  0:\n    input: radio\n    name: head-headaches_or_migraines\n    text: Head-Headaches or Migraines\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect is not severe,Frequently have it,\n      effect is severe\n  1:\n    input: radio\n    name: head-faintness\n    text: Head-Faintness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect is not severe,Frequently have it,\n      effect is severe\n  2:\n    input: radio\n    name: head-dizziness\n    text: Head-Dizziness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  3:\n    input: radio\n    name: head-insomnia\n    text: Head-Insomnia\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  4:\n    input: radio\n    name: eyes-watery_or_itchy_eyes\n    text: Eyes-Watery or itchy eyes\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  5:\n    input: radio\n    name: eyes-swollen,_red_or_sticky_eyes\n    text: Eyes-Swollen, red or sticky eyes\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  6:\n    input: radio\n    name: eyes-bags_or_dark_circles_under_eyes\n    text: Eyes-Bags or dark circles under eyes\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  7:\n    input: radio\n    name: eyes-blurred_or_tunnel_vision\n    text: Eyes-Blurred or tunnel vision\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  8:\n    input: radio\n    name: ears-itchy_ears\n    text: Ears-Itchy ears\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  9:\n    input: radio\n    name: ears-earache,_ear_infection\n    text: Ears-Earache, ear infection\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  10:\n    input: radio\n    name: ears-ear_drainage_or_excessive_wax\n    text: Ears-Ear drainage or excessive wax\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  11:\n    input: radio\n    name: ears-ear_ringing_or_hearing_loss\n    text: Ears-Ear ringing or hearing loss\n    options: >\n      Never or almost never,Occasionally have\n      it, effect is not severe,Occasionally\n      have it, effect is severe,Frequently\n      have it, effect not severe,Frequently\n      have it, effect is severe\n  12:\n    input: radio\n    name: nose-stuffy_nose\n    text: Nose-Stuffy nose\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  13:\n    input: radio\n    name: nose-sinus_problems\n    text: Nose-Sinus problems\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  14:\n    input: radio\n    name: nose-hay_fever\n    text: Nose-Hay fever\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is sever,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  15:\n    input: radio\n    name: nose-sneezing_attacks\n    text: Nose-Sneezing attacks\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  16:\n    input: radio\n    name: nose-excessive_nasal_mucous\n    text: Nose-Excessive nasal mucous\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  17:\n    input: radio\n    name: oral-chronic_cough\n    text: Oral-Chronic cough\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  18:\n    input: radio\n    name: oral-gagging,_clearing_throat\n    text: Oral-Gagging, clearing throat\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  19:\n    input: radio\n    name: oral-sore_throat,_hoarse\n    text: Oral-Sore throat, hoarse\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  20:\n    input: radio\n    name: oral-swollen_tongue,_lips,_gums\n    text: Oral-Swollen tongue, lips, gums\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  21:\n    input: radio\n    name: oral-canker_sores\n    text: Oral-Canker sores\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  22:\n    input: radio\n    name: skin-acne\n    text: Skin-Acne\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  23:\n    input: radio\n    name: skin-hives,_rashes,_dryness\n    text: Skin-Hives, rashes, dryness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  24:\n    input: radio\n    name: skin-hair_loss\n    text: Skin-Hair loss\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  25:\n    input: radio\n    name: skin-flushing,_hot_flashes\n    text: Skin-Flushing, hot flashes\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  26:\n    input: radio\n    name: skin-excessive_sweating\n    text: Skin-Excessive sweating\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  27:\n    input: radio\n    name: heart-irregular,_skipped_beats\n    text: Heart-Irregular, skipped beats\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  28:\n    input: radio\n    name: heart-rapid,_pounding\n    text: Heart-Rapid, pounding\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  29:\n    input: radio\n    name: heart-chest_pain\n    text: Heart-Chest pain\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  30:\n    input: radio\n    name: lungs-chest_congestion\n    text: Lungs-Chest congestion\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  31:\n    input: radio\n    name: lungs-asthma,_bronchitis\n    text: Lungs-Asthma, bronchitis\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  32:\n    input: radio\n    name: lungs-shortness_of_breath\n    text: Lungs-Shortness of breath\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  33:\n    input: radio\n    name: lungs-difficulty_breathing\n    text: Lungs-Difficulty breathing\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  34:\n    input: radio\n    name: other-frequent_illness\n    text: Other-Frequent illness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  35:\n    input: radio\n    name: other-frequent/urgent_urination\n    text: Other-Frequent/urgent urination\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  36:\n    input: radio\n    name: other-genital_itch\n    text: Other-Genital itch\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  37:\n    input: radio\n    name: digestion-nausea,_vomiting\n    text: Digestion-Nausea, Vomiting\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  38:\n    input: radio\n    name: digestion-diarrhea_or_loose_stools\n    text: Digestion-Diarrhea or loose stools\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect is not severe,Frequently have it,\n      effect is severe\n  39:\n    input: radio\n    name: digestion-constipation\n    text: Digestion-Constipation\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  40:\n    input: radio\n    name: digestion-bloated_feeling\n    text: Digestion-Bloated feeling\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  41:\n    input: radio\n    name: digestion-belching,_passing_gas\n    text: Digestion-Belching, passing gas\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  42:\n    input: radio\n    name: digestion-heartburn,_acid_reflux\n    text: Digestion-Heartburn, acid reflux\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  43:\n    input: radio\n    name: digestion-stomach_or_intestinal_pain\n    text: Digestion-Stomach or Intestinal pain\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not sever,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  44:\n    input: radio\n    name: joints/muscle-pain_or_aches_in_joints\n    text: Joints/Muscle-Pain or aches in joints\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  45:\n    input: radio\n    name: joints/muscles-arthritis\n    text: Joints/Muscles-Arthritis\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  46:\n    input: radio\n    name: >\n      joints/muscles-stiffness_or_limited_movement\n    text: >\n      Joints/Muscles-Stiffness or limited\n      movement\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  47:\n    input: radio\n    name: joints/muscles-pain_or_aches_in_muscles\n    text: Joints/Muscles-Pain or aches in muscles\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  48:\n    input: radio\n    name: >\n      joints/muscles-feeling_of_weakness_or_tiredness\n    text: >\n      Joints/Muscles-Feeling of weakness or\n      tiredness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  49:\n    input: radio\n    name: weight-binge_eating/drinking\n    text: Weight-Binge eating/drinking\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  50:\n    input: radio\n    name: weight-craving_certain_foods\n    text: Weight-Craving certain foods\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  51:\n    input: radio\n    name: weight-excess_weight\n    text: Weight-Excess weight\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  52:\n    input: radio\n    name: weight-compulsive_eating\n    text: Weight-Compulsive eating\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  53:\n    input: radio\n    name: weight-water_retention\n    text: Weight-Water retention\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  54:\n    input: radio\n    name: weight-underweight\n    text: Weight-Underweight\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  55:\n    input: radio\n    name: weight-lack_of_appetite\n    text: Weight-Lack of appetite\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  56:\n    input: radio\n    name: energy/activity-fatigue,_sluggishness\n    text: Energy/Activity-Fatigue, sluggishness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  57:\n    input: radio\n    name: energy/activity-apathy,_lethargy\n    text: Energy/Activity-Apathy, lethargy\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  58:\n    input: radio\n    name: energy/activity-hyperactivity\n    text: Energy/Activity-Hyperactivity\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  59:\n    input: radio\n    name: energy/activity-restlessness\n    text: Energy/Activity-Restlessness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  60:\n    input: radio\n    name: mind-poor_memory\n    text: Mind-Poor memory\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  61:\n    input: radio\n    name: mind-confusion,_poor_comprehension\n    text: Mind-Confusion, poor comprehension\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  62:\n    input: radio\n    name: mind-poor_concentration\n    text: Mind-Poor concentration\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  63:\n    input: radio\n    name: mind-poor_physical_coordination\n    text: Mind-Poor physical coordination\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  64:\n    input: radio\n    name: mind-difficulty_making_decisions\n    text: Mind-Difficulty making decisions\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  65:\n    input: radio\n    name: mind-stuttering_or_stammering\n    text: Mind-Stuttering or stammering\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  66:\n    input: radio\n    name: mind-slurred_speach\n    text: Mind-Slurred speach\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  67:\n    input: radio\n    name: mind-learning_disabilities\n    text: Mind-Learning disabilities\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  68:\n    input: radio\n    name: emotions-mood_swings\n    text: Emotions-Mood swings\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  69:\n    input: radio\n    name: emotions-anxiety,_fear,_nervousness\n    text: Emotions-Anxiety, fear, nervousness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  70:\n    input: radio\n    name: >\n      emotions-anger,_irritability,_aggressiveness\n    text: >\n      Emotions-Anger, irritability,\n      aggressiveness\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  71:\n    input: radio\n    name: >\n      emotions-depression,_sadness,_lack_of_joy\n    text: >\n      Emotions-Depression, sadness, lack of\n      joy\n    options: >\n      Never or almost never,Occasionally have\n      it, effect not severe,Occasionally have\n      it, effect is severe,Frequently have it,\n      effect not severe,Frequently have it,\n      effect is severe\n  scoring: >\n    1-15 Low toxic load, 15-49 Moderate\n    toxic load, 50-74 Elevated toxic load,\n    +75 Dangerous toxic levels\nFamily Medical History:\n  forms_title: Family Medical History\n  forms_destination: FH\n  0:\n    input: checkbox\n    name: >\n      please_indicate_if_an_immediate_family_member_has_currently_or_has_been_diagnosed_in_the_past_with_any_of_the_following\n    text: \'Please indicate if an immediate family member has currently or has been diagnosed in the past with any of the following:\'\n    options: >\n      Allergies,Alcoholism,Asthma,Arteriosclerosis,Heart\n      Disease,Hypertension,Auto-immune\n      Disorders,Arthritis,Diabetes,Seizures,Epilepsy,Stroke,Kidney\n      Disease,Mental Illness,Cancer\n  scoring:\n0:\n  scoring:\n    1-10: Pain Level\n',NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine_inventory`
--

DROP TABLE IF EXISTS `vaccine_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccine_inventory` (
  `vaccine_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_purchase` datetime DEFAULT NULL,
  `imm_immunization` varchar(255) DEFAULT NULL,
  `imm_lot` varchar(255) DEFAULT NULL,
  `imm_manufacturer` varchar(255) DEFAULT NULL,
  `imm_expiration` datetime DEFAULT NULL,
  `imm_brand` varchar(255) DEFAULT NULL,
  `imm_cvxcode` varchar(255) DEFAULT NULL,
  `cpt` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vaccine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine_inventory`
--

LOCK TABLES `vaccine_inventory` WRITE;
/*!40000 ALTER TABLE `vaccine_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaccine_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine_temp`
--

DROP TABLE IF EXISTS `vaccine_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccine_temp` (
  `temp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `temp` varchar(100) DEFAULT NULL,
  `action` longtext,
  `practice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine_temp`
--

LOCK TABLES `vaccine_temp` WRITE;
/*!40000 ALTER TABLE `vaccine_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaccine_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitals`
--

DROP TABLE IF EXISTS `vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitals` (
  `eid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter_provider` varchar(255) DEFAULT NULL,
  `vitals_date` datetime DEFAULT NULL,
  `vitals_age` varchar(3) DEFAULT NULL,
  `pedsage` varchar(100) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `headcircumference` varchar(10) DEFAULT NULL,
  `BMI` varchar(10) DEFAULT NULL,
  `temp` varchar(10) DEFAULT NULL,
  `temp_method` varchar(100) DEFAULT NULL,
  `bp_systolic` varchar(10) DEFAULT NULL,
  `bp_diastolic` varchar(10) DEFAULT NULL,
  `bp_position` varchar(100) DEFAULT NULL,
  `pulse` varchar(10) DEFAULT NULL,
  `respirations` varchar(10) DEFAULT NULL,
  `o2_sat` varchar(10) DEFAULT NULL,
  `vitals_other` longtext,
  `wt_percentile` varchar(255) DEFAULT NULL,
  `ht_percentile` varchar(255) DEFAULT NULL,
  `hc_percentile` varchar(255) DEFAULT NULL,
  `wt_ht_percentile` varchar(255) DEFAULT NULL,
  `bmi_percentile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitals`
--

LOCK TABLES `vitals` WRITE;
/*!40000 ALTER TABLE `vitals` DISABLE KEYS */;
INSERT INTO `vitals` VALUES (2,2,NULL,'2019-02-05 14:04:00','12','144.515201675601','7','22','','21','98.6','Oral','115','70','Sitting','58','9','99',' - Desirable','0','0',NULL,'0','NAN'),(4,2,NULL,'2019-02-04 14:30:00','1','12.47186512142061','25','22','','36','','Oral','','','Sitting','','','',' - Obese',NULL,NULL,NULL,NULL,NULL),(8,2,NULL,'2019-02-05 14:04:00','12','144.515201675601','7','22','','21','98.6','Oral','115','70','Sitting','58','9','99',' - Desirable','0','0',NULL,'0','NAN');
/*!40000 ALTER TABLE `vitals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-24 12:52:56
