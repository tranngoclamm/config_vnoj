/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dmoj
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add blog post',2,'add_blogpost'),
(6,'Can change blog post',2,'change_blogpost'),
(7,'Can delete blog post',2,'delete_blogpost'),
(8,'Can view blog post',2,'view_blogpost'),
(9,'Edit all posts',2,'edit_all_post'),
(10,'Edit organization posts',2,'edit_organization_post'),
(11,'Mark post as global',2,'mark_global_post'),
(12,'Pin post',2,'pin_post'),
(13,'Can add comment',3,'add_comment'),
(14,'Can change comment',3,'change_comment'),
(15,'Can delete comment',3,'delete_comment'),
(16,'Can view comment',3,'view_comment'),
(17,'View all comments by a user',3,'view_all_user_comment'),
(18,'Can add comment lock',4,'add_commentlock'),
(19,'Can change comment lock',4,'change_commentlock'),
(20,'Can delete comment lock',4,'delete_commentlock'),
(21,'Can view comment lock',4,'view_commentlock'),
(22,'Override comment lock',4,'override_comment_lock'),
(23,'Can add comment vote',5,'add_commentvote'),
(24,'Can change comment vote',5,'change_commentvote'),
(25,'Can delete comment vote',5,'delete_commentvote'),
(26,'Can view comment vote',5,'view_commentvote'),
(27,'Can add contest',6,'add_contest'),
(28,'Can change contest',6,'change_contest'),
(29,'Can delete contest',6,'delete_contest'),
(30,'Can view contest',6,'view_contest'),
(31,'See private contests',6,'see_private_contest'),
(32,'Edit own contests',6,'edit_own_contest'),
(33,'Edit all contests',6,'edit_all_contest'),
(34,'Clone contest',6,'clone_contest'),
(35,'MOSS contest',6,'moss_contest'),
(36,'Rate contests',6,'contest_rating'),
(37,'Contest access codes',6,'contest_access_code'),
(38,'Create private contests',6,'create_private_contest'),
(39,'Change contest visibility',6,'change_contest_visibility'),
(40,'Edit contest problem label script',6,'contest_problem_label'),
(41,'Change lock status of contest',6,'lock_contest'),
(42,'Can add contest participation',7,'add_contestparticipation'),
(43,'Can change contest participation',7,'change_contestparticipation'),
(44,'Can delete contest participation',7,'delete_contestparticipation'),
(45,'Can view contest participation',7,'view_contestparticipation'),
(46,'Can add contest problem',8,'add_contestproblem'),
(47,'Can change contest problem',8,'change_contestproblem'),
(48,'Can delete contest problem',8,'delete_contestproblem'),
(49,'Can view contest problem',8,'view_contestproblem'),
(50,'Can add contest submission',9,'add_contestsubmission'),
(51,'Can change contest submission',9,'change_contestsubmission'),
(52,'Can delete contest submission',9,'delete_contestsubmission'),
(53,'Can view contest submission',9,'view_contestsubmission'),
(54,'Can add contest tag',10,'add_contesttag'),
(55,'Can change contest tag',10,'change_contesttag'),
(56,'Can delete contest tag',10,'delete_contesttag'),
(57,'Can view contest tag',10,'view_contesttag'),
(58,'Can add judge',11,'add_judge'),
(59,'Can change judge',11,'change_judge'),
(60,'Can delete judge',11,'delete_judge'),
(61,'Can view judge',11,'view_judge'),
(62,'Can add language',12,'add_language'),
(63,'Can change language',12,'change_language'),
(64,'Can delete language',12,'delete_language'),
(65,'Can view language',12,'view_language'),
(66,'Can add language-specific resource limit',13,'add_languagelimit'),
(67,'Can change language-specific resource limit',13,'change_languagelimit'),
(68,'Can delete language-specific resource limit',13,'delete_languagelimit'),
(69,'Can view language-specific resource limit',13,'view_languagelimit'),
(70,'Can add license',14,'add_license'),
(71,'Can change license',14,'change_license'),
(72,'Can delete license',14,'delete_license'),
(73,'Can view license',14,'view_license'),
(74,'Can add configuration item',15,'add_miscconfig'),
(75,'Can change configuration item',15,'change_miscconfig'),
(76,'Can delete configuration item',15,'delete_miscconfig'),
(77,'Can view configuration item',15,'view_miscconfig'),
(78,'Can add navigation item',16,'add_navigationbar'),
(79,'Can change navigation item',16,'change_navigationbar'),
(80,'Can delete navigation item',16,'delete_navigationbar'),
(81,'Can view navigation item',16,'view_navigationbar'),
(82,'Can add organization',17,'add_organization'),
(83,'Can change organization',17,'change_organization'),
(84,'Can delete organization',17,'delete_organization'),
(85,'Can view organization',17,'view_organization'),
(86,'Administer organizations',17,'organization_admin'),
(87,'Edit all organizations',17,'edit_all_organization'),
(88,'Change is_open field',17,'change_open_organization'),
(89,'Create organization without limit',17,'spam_organization'),
(90,'Can add organization join request',18,'add_organizationrequest'),
(91,'Can change organization join request',18,'change_organizationrequest'),
(92,'Can delete organization join request',18,'delete_organizationrequest'),
(93,'Can view organization join request',18,'view_organizationrequest'),
(94,'Can add problem',19,'add_problem'),
(95,'Can change problem',19,'change_problem'),
(96,'Can delete problem',19,'delete_problem'),
(97,'Can view problem',19,'view_problem'),
(98,'See hidden problems',19,'see_private_problem'),
(99,'Edit own problems',19,'edit_own_problem'),
(100,'Create organization problem',19,'create_organization_problem'),
(101,'Edit all problems',19,'edit_all_problem'),
(102,'Edit all public problems',19,'edit_public_problem'),
(103,'Suggest new problem',19,'suggest_new_problem'),
(104,'Edit problems with full markup',19,'problem_full_markup'),
(105,'Clone problem',19,'clone_problem'),
(106,'Upload file-type statement',19,'upload_file_statement'),
(107,'Change is_public field',19,'change_public_visibility'),
(108,'Change is_manually_managed field',19,'change_manually_managed'),
(109,'See organization-private problems',19,'see_organization_problem'),
(110,'Import Codeforces Polygon package',19,'import_polygon_package'),
(111,'Edit type and group for all problems',19,'edit_type_group_all_problem'),
(112,'Can add problem clarification',20,'add_problemclarification'),
(113,'Can change problem clarification',20,'change_problemclarification'),
(114,'Can delete problem clarification',20,'delete_problemclarification'),
(115,'Can view problem clarification',20,'view_problemclarification'),
(116,'Can add problem data',21,'add_problemdata'),
(117,'Can change problem data',21,'change_problemdata'),
(118,'Can delete problem data',21,'delete_problemdata'),
(119,'Can view problem data',21,'view_problemdata'),
(120,'Can add problem group',22,'add_problemgroup'),
(121,'Can change problem group',22,'change_problemgroup'),
(122,'Can delete problem group',22,'delete_problemgroup'),
(123,'Can view problem group',22,'view_problemgroup'),
(124,'Can add problem test case',23,'add_problemtestcase'),
(125,'Can change problem test case',23,'change_problemtestcase'),
(126,'Can delete problem test case',23,'delete_problemtestcase'),
(127,'Can view problem test case',23,'view_problemtestcase'),
(128,'Can add problem translation',24,'add_problemtranslation'),
(129,'Can change problem translation',24,'change_problemtranslation'),
(130,'Can delete problem translation',24,'delete_problemtranslation'),
(131,'Can view problem translation',24,'view_problemtranslation'),
(132,'Can add problem type',25,'add_problemtype'),
(133,'Can change problem type',25,'change_problemtype'),
(134,'Can delete problem type',25,'delete_problemtype'),
(135,'Can view problem type',25,'view_problemtype'),
(136,'Can add user profile',26,'add_profile'),
(137,'Can change user profile',26,'change_profile'),
(138,'Can delete user profile',26,'delete_profile'),
(139,'Can view user profile',26,'view_profile'),
(140,'Shows in-progress development stuff',26,'test_site'),
(141,'Edit TOTP settings',26,'totp'),
(142,'Can upload image directly to server via martor',26,'can_upload_image'),
(143,'Can set high problem timelimit',26,'high_problem_timelimit'),
(144,'Can set long contest duration',26,'long_contest_duration'),
(145,'Can create unlimitted number of testcases for a problem',26,'create_mass_testcases'),
(146,'Ban users',26,'ban_user'),
(147,'Can add contest rating',27,'add_rating'),
(148,'Can change contest rating',27,'change_rating'),
(149,'Can delete contest rating',27,'delete_rating'),
(150,'Can view contest rating',27,'view_rating'),
(151,'Can add runtime version',28,'add_runtimeversion'),
(152,'Can change runtime version',28,'change_runtimeversion'),
(153,'Can delete runtime version',28,'delete_runtimeversion'),
(154,'Can view runtime version',28,'view_runtimeversion'),
(155,'Can add solution',29,'add_solution'),
(156,'Can change solution',29,'change_solution'),
(157,'Can delete solution',29,'delete_solution'),
(158,'Can view solution',29,'view_solution'),
(159,'See hidden solutions',29,'see_private_solution'),
(160,'Can add submission',30,'add_submission'),
(161,'Can change submission',30,'change_submission'),
(162,'Can delete submission',30,'delete_submission'),
(163,'Can view submission',30,'view_submission'),
(164,'Abort any submission',30,'abort_any_submission'),
(165,'Rejudge the submission',30,'rejudge_submission'),
(166,'Rejudge a lot of submissions',30,'rejudge_submission_lot'),
(167,'Submit without limit',30,'spam_submission'),
(168,'View all submission',30,'view_all_submission'),
(169,'Resubmit others\' submission',30,'resubmit_other'),
(170,'Change lock status of submission',30,'lock_submission'),
(171,'Can add submission test case',31,'add_submissiontestcase'),
(172,'Can change submission test case',31,'change_submissiontestcase'),
(173,'Can delete submission test case',31,'delete_submissiontestcase'),
(174,'Can view submission test case',31,'view_submissiontestcase'),
(175,'Can add ticket',32,'add_ticket'),
(176,'Can change ticket',32,'change_ticket'),
(177,'Can delete ticket',32,'delete_ticket'),
(178,'Can view ticket',32,'view_ticket'),
(179,'Can add ticket message',33,'add_ticketmessage'),
(180,'Can change ticket message',33,'change_ticketmessage'),
(181,'Can delete ticket message',33,'delete_ticketmessage'),
(182,'Can view ticket message',33,'view_ticketmessage'),
(183,'Can add submission source',34,'add_submissionsource'),
(184,'Can change submission source',34,'change_submissionsource'),
(185,'Can delete submission source',34,'delete_submissionsource'),
(186,'Can view submission source',34,'view_submissionsource'),
(187,'Can add contest moss result',35,'add_contestmoss'),
(188,'Can change contest moss result',35,'change_contestmoss'),
(189,'Can delete contest moss result',35,'delete_contestmoss'),
(190,'Can view contest moss result',35,'view_contestmoss'),
(191,'Can add WebAuthn credential',36,'add_webauthncredential'),
(192,'Can change WebAuthn credential',36,'change_webauthncredential'),
(193,'Can delete WebAuthn credential',36,'delete_webauthncredential'),
(194,'Can view WebAuthn credential',36,'view_webauthncredential'),
(195,'Can add general issue',37,'add_generalissue'),
(196,'Can change general issue',37,'change_generalissue'),
(197,'Can delete general issue',37,'delete_generalissue'),
(198,'Can view general issue',37,'view_generalissue'),
(199,'Can add tag',38,'add_tag'),
(200,'Can change tag',38,'change_tag'),
(201,'Can delete tag',38,'delete_tag'),
(202,'Can view tag',38,'view_tag'),
(203,'Can add tag data',39,'add_tagdata'),
(204,'Can change tag data',39,'change_tagdata'),
(205,'Can delete tag data',39,'delete_tagdata'),
(206,'Can view tag data',39,'view_tagdata'),
(207,'Can add tag group',40,'add_taggroup'),
(208,'Can change tag group',40,'change_taggroup'),
(209,'Can delete tag group',40,'delete_taggroup'),
(210,'Can view tag group',40,'view_taggroup'),
(211,'Can add tag problem',41,'add_tagproblem'),
(212,'Can change tag problem',41,'change_tagproblem'),
(213,'Can delete tag problem',41,'delete_tagproblem'),
(214,'Can view tag problem',41,'view_tagproblem'),
(215,'Can add contest announcement',42,'add_contestannouncement'),
(216,'Can change contest announcement',42,'change_contestannouncement'),
(217,'Can delete contest announcement',42,'delete_contestannouncement'),
(218,'Can view contest announcement',42,'view_contestannouncement'),
(219,'Can add badge',43,'add_badge'),
(220,'Can change badge',43,'change_badge'),
(221,'Can delete badge',43,'delete_badge'),
(222,'Can view badge',43,'view_badge'),
(223,'Can add blog vote',44,'add_blogvote'),
(224,'Can change blog vote',44,'change_blogvote'),
(225,'Can delete blog vote',44,'delete_blogvote'),
(226,'Can view blog vote',44,'view_blogvote'),
(227,'Can add organization monthly usage',45,'add_organizationmonthlyusage'),
(228,'Can change organization monthly usage',45,'change_organizationmonthlyusage'),
(229,'Can delete organization monthly usage',45,'delete_organizationmonthlyusage'),
(230,'Can view organization monthly usage',45,'view_organizationmonthlyusage'),
(231,'Can add permission',46,'add_permission'),
(232,'Can change permission',46,'change_permission'),
(233,'Can delete permission',46,'delete_permission'),
(234,'Can view permission',46,'view_permission'),
(235,'Can add group',47,'add_group'),
(236,'Can change group',47,'change_group'),
(237,'Can delete group',47,'delete_group'),
(238,'Can view group',47,'view_group'),
(239,'Can add user',48,'add_user'),
(240,'Can change user',48,'change_user'),
(241,'Can delete user',48,'delete_user'),
(242,'Can view user',48,'view_user'),
(243,'Can add content type',49,'add_contenttype'),
(244,'Can change content type',49,'change_contenttype'),
(245,'Can delete content type',49,'delete_contenttype'),
(246,'Can view content type',49,'view_contenttype'),
(247,'Can add flat page',50,'add_flatpage'),
(248,'Can change flat page',50,'change_flatpage'),
(249,'Can delete flat page',50,'delete_flatpage'),
(250,'Can view flat page',50,'view_flatpage'),
(251,'Can add session',51,'add_session'),
(252,'Can change session',51,'change_session'),
(253,'Can delete session',51,'delete_session'),
(254,'Can view session',51,'view_session'),
(255,'Can add redirect',52,'add_redirect'),
(256,'Can change redirect',52,'change_redirect'),
(257,'Can delete redirect',52,'delete_redirect'),
(258,'Can view redirect',52,'view_redirect'),
(259,'Can add site',53,'add_site'),
(260,'Can change site',53,'change_site'),
(261,'Can delete site',53,'delete_site'),
(262,'Can view site',53,'view_site'),
(263,'Can add registration profile',54,'add_registrationprofile'),
(264,'Can change registration profile',54,'change_registrationprofile'),
(265,'Can delete registration profile',54,'delete_registrationprofile'),
(266,'Can view registration profile',54,'view_registrationprofile'),
(267,'Can add supervised registration profile',55,'add_supervisedregistrationprofile'),
(268,'Can change supervised registration profile',55,'change_supervisedregistrationprofile'),
(269,'Can delete supervised registration profile',55,'delete_supervisedregistrationprofile'),
(270,'Can view supervised registration profile',55,'view_supervisedregistrationprofile'),
(271,'Can add revision',56,'add_revision'),
(272,'Can change revision',56,'change_revision'),
(273,'Can delete revision',56,'delete_revision'),
(274,'Can view revision',56,'view_revision'),
(275,'Can add version',57,'add_version'),
(276,'Can change version',57,'change_version'),
(277,'Can delete version',57,'delete_version'),
(278,'Can view version',57,'view_version'),
(279,'Can add association',58,'add_association'),
(280,'Can change association',58,'change_association'),
(281,'Can delete association',58,'delete_association'),
(282,'Can view association',58,'view_association'),
(283,'Can add code',59,'add_code'),
(284,'Can change code',59,'change_code'),
(285,'Can delete code',59,'delete_code'),
(286,'Can view code',59,'view_code'),
(287,'Can add nonce',60,'add_nonce'),
(288,'Can change nonce',60,'change_nonce'),
(289,'Can delete nonce',60,'delete_nonce'),
(290,'Can view nonce',60,'view_nonce'),
(291,'Can add user social auth',61,'add_usersocialauth'),
(292,'Can change user social auth',61,'change_usersocialauth'),
(293,'Can delete user social auth',61,'delete_usersocialauth'),
(294,'Can view user social auth',61,'view_usersocialauth'),
(295,'Can add partial',62,'add_partial'),
(296,'Can change partial',62,'change_partial'),
(297,'Can delete partial',62,'delete_partial'),
(298,'Can view partial',62,'view_partial'),
(299,'Can add impersonation log',63,'add_impersonationlog'),
(300,'Can change impersonation log',63,'change_impersonationlog'),
(301,'Can delete impersonation log',63,'delete_impersonationlog'),
(302,'Can view impersonation log',63,'view_impersonationlog');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$36000$eFRRZq4DgktS$md1gk0bBJb7PH/+3YEXkcCW8K+KmiI+y/amqR32G2DY=','2017-12-02 08:34:31.840000',1,'admin','','','',1,1,'2017-12-02 08:34:17.408000'),
(2,'pbkdf2_sha256$260000$1P3CjpSXQQUzADQ4wqUeCe$uQKiY6BzV8u156wc+2U/krPLQNZuAbLIVNj9rLPqPgA=','2025-05-01 04:18:14.503465',1,'dungpt','','','trungdunght2003@gmail.com',1,1,'2025-04-25 06:53:44.382774');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2025-04-30 06:13:35.303524','1','ooo',1,'[{\"added\": {}}]',11,2),
(2,'2025-04-30 06:21:21.419024','1','ooo',2,'[]',11,2),
(3,'2025-05-01 04:27:07.454161','4','Sắp xếp sinh viên',2,'[{\"changed\": {\"fields\": [\"Publicly visible\"]}}]',19,2),
(4,'2025-05-01 04:27:17.306720','4','Sắp xếp sinh viên',2,'[]',19,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(47,'auth','group'),
(46,'auth','permission'),
(48,'auth','user'),
(49,'contenttypes','contenttype'),
(50,'flatpages','flatpage'),
(63,'impersonate','impersonationlog'),
(43,'judge','badge'),
(2,'judge','blogpost'),
(44,'judge','blogvote'),
(3,'judge','comment'),
(4,'judge','commentlock'),
(5,'judge','commentvote'),
(6,'judge','contest'),
(42,'judge','contestannouncement'),
(35,'judge','contestmoss'),
(7,'judge','contestparticipation'),
(8,'judge','contestproblem'),
(9,'judge','contestsubmission'),
(10,'judge','contesttag'),
(37,'judge','generalissue'),
(11,'judge','judge'),
(12,'judge','language'),
(13,'judge','languagelimit'),
(14,'judge','license'),
(15,'judge','miscconfig'),
(16,'judge','navigationbar'),
(17,'judge','organization'),
(45,'judge','organizationmonthlyusage'),
(18,'judge','organizationrequest'),
(19,'judge','problem'),
(20,'judge','problemclarification'),
(21,'judge','problemdata'),
(22,'judge','problemgroup'),
(23,'judge','problemtestcase'),
(24,'judge','problemtranslation'),
(25,'judge','problemtype'),
(26,'judge','profile'),
(27,'judge','rating'),
(28,'judge','runtimeversion'),
(29,'judge','solution'),
(30,'judge','submission'),
(34,'judge','submissionsource'),
(31,'judge','submissiontestcase'),
(38,'judge','tag'),
(39,'judge','tagdata'),
(40,'judge','taggroup'),
(41,'judge','tagproblem'),
(32,'judge','ticket'),
(33,'judge','ticketmessage'),
(36,'judge','webauthncredential'),
(52,'redirects','redirect'),
(54,'registration','registrationprofile'),
(55,'registration','supervisedregistrationprofile'),
(56,'reversion','revision'),
(57,'reversion','version'),
(51,'sessions','session'),
(53,'sites','site'),
(58,'social_django','association'),
(59,'social_django','code'),
(60,'social_django','nonce'),
(62,'social_django','partial'),
(61,'social_django','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_url_41612362` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
INSERT INTO `django_flatpage` VALUES
(1,'/custom_checkers/','Custom checkers','Một số bài tập có thể có nhiều output đúng, vì vậy đôi lúc ta cần phải viết checker để  kiểm tra xem output có đúng hay chưa. \r\n\r\n\r\n# 1. Checker mặc định\r\nVNOJ có hỗ trợ các checker mặc định của DMOJ, các bạn có thể xem ở [đây](https://docs.dmoj.ca/#/problem_format/custom_checkers)\r\n\r\n# 2. Custom Checker (Python)\r\n\r\nMột `checker` được viết bằng Python cần cài đặt một hàm như sau:\r\n```python3\r\ndef check(process_output, judge_output, **kwargs):\r\n    # your code\r\n    \r\n```\r\n\r\nTrong đó:\r\n* `process_output`: output của bài nộp\r\n* `judge_output`: đáp án\r\n \r\n`**kwargs` có thể chứa các biến sau:\r\n\r\n* `submission_source`: source code của bài nộp\r\n* `judge_input`: input của đề bài\r\n* `point_value`: điểm của test đang chấm\r\n* `case_position`: thứ tự của test\r\n* `batch`: batch của test case (với các bài chấm theo subtask), đại đa số các bài ta không cần quan tâm tới biến này.\r\n* `submission_language`: ngôn ngữ của bài nộp\r\n* `execution_time`: thời gian chạy, tính bằng giây\r\n\r\n## Return\r\nHàm `check` có 2 cách return:\r\n\r\n\r\n1. Return bằng True hoặc False, nếu đáp án đúng thì return True, ngược lại return False\r\n2. Return bằng `CheckerResult`, return bằng cách này thì có thể trả về được feedback cho người nộp. Cách dùng như sau: `CheckerResult(passed, points_awarded)`. Trong đó:\r\n    * `passed` là có giá trị True/False tùy vào kết quả có đúng hay không.\r\n    * `points_awarded`: là số điểm nhận được với test đó.\r\n    * `feedback`: thông tin đưa tới người nộp. \r\n\r\n## Ví dụ\r\nDưới đây là checker mẫu cho bài toán [POST - A cộng B](/problem/post).\r\n\r\n```python3\r\nfrom dmoj.result import CheckerResult\r\n\r\ndef check(process_output, judge_output, judge_input, point_value, **kwargs):\r\n    # convert from bytes to texts\r\n    process_output = process_output.decode(\"ascii\")\r\n    judge_output = judge_output.decode(\"ascii\")\r\n    judge_input = judge_input.decode(\"ascii\")\r\n    \r\n    # read data as normal\r\n    a, b = judge_input.split(\' \')\r\n    output_sum = int(process_output)\r\n    if a + b != output_sum:\r\n        return CheckerResult(False, 0, f\"{a} + {b} != {output_sum}\")\r\n    return CheckerResult(True, point_value, \"Ok answer is correct\")\r\n```\r\n\r\n# 3. Custom Checker (C++)\r\n\r\nĐể viết được C++ checker, ta cần viết một chương trình C++ nhận vào 3 tham số dòng lệnh theo thứ tự là `input_file`, `output_file`, `answer_file`, tươn ứng với đường dẫn tới các file input, output, đáp án. \r\n\r\n## Return\r\n\r\nChương trình (hàm main) trả về các giá trị sau:\r\n* 0 nếu AC (100% số điểm)\r\n* 1 nếu WA (0 điểm)\r\n* 7 nếu nhận được điểm thành phần. Khi đó cần in ra `stderr` một số thực trong đoạn `[0, 1]` thể hiện tỷ lệ điểm. Lưu ý rằng điểm phải được in ra ở dòng đầu tiên của `stderr`\r\n* Nếu chương trình trả về giá trị khác (exit code khác 0, hay run time error) thì bài nộp sẽ được 0 điểm (xem như WA).\r\n\r\nNhững thông tin được viết ra `stdout` sẽ được in ra màn hình cho người nộp bài (feedback), nhưng thông tin này chỉ hiển thị được khoản 20 ký tự.\r\nNếu muốn người dùng xem được nhiều feedback hơn, thì in feedback vào stderr (lưu ý in sau khi in điểm ở dòng đầu tiên).\r\n\r\n\r\n## Ví dụ: \r\nChương trình sau dùng để chấm bài toán: Cho ~n~ là một số nguyên dương. In ra hai số tự nhiên ~a~, ~b~ sao cho ~a + b = n~.\r\n\r\nNếu in ra ~a + b = n~ và ~a, b \\ge 0~ thì được ~100\\%~ số điểm, nếu ~a + b = n~ nhưng một trong 2 số ~a, b~ âm thì được ~50\\%~ số điểm.\r\n\r\n```c++\r\n#include <bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main(int argc, char** argv) {\r\n    ifstream inp(argv[1]);\r\n    ifstream out(argv[2]);\r\n    ifstream ans(argv[3]);\r\n\r\n    int n, a, b, c, d;\r\n    \r\n    inp >> n;\r\n    out >> a >> b;\r\n    ans >> c >> d;\r\n\r\n    if (a + b == c + d) {\r\n        cout << a << \" + \" << b << \" = \" << c << \" + \" << d << endl;\r\n            \r\n        if (a >= 0 && b >= 0) {\r\n            cerr << \"This line will be show to the contestants as a extended feedback\";\r\n            return 0; // AC\r\n        }\r\n        else {\r\n            cerr << 0.5 << \'\\n\'; // in ra điểm ở dòng đầu tiên\r\n            cerr << \"Thís line will be show to the contestants as a extended feedback\";\r\n            return 7; // PARTIAL\r\n        }\r\n    }     \r\n    else {\r\n        cout << \"a + b = \" << a + b << \" != \" << n << endl;\r\n        return 1; // WA\r\n    }\r\n}\r\n```\r\n\r\nVNOJ cũng hộ trợ các checker được viết bằng [testlib.h](https://github.com/MikeMirzayanov/testlib/blob/master/testlib.h), tuy nhiên hiện tại chỉ có thể chấm các bài không phải interactive. \r\n\r\nĐây là checker được viết bằng `testlib.h` cho bài toán trên:\r\n\r\n```c++\r\n#include \"testlib.h\"\r\n\r\nusing namespace std;\r\n\r\nint main(int argc, char* argv[]) {\r\n    registerTestlibCmd(argc, argv);\r\n\r\n    int n = inf.readInt();\r\n    int a = ouf.readInt();\r\n    int b = ouf.readInt();\r\n    ensuref(a + b == n, \"%d + %d != %d\", a, b, n);\r\n    if (a < 0) {\r\n        quitf(_points, \"0.5 \\n a = %d < 0\", a);\r\n    }\r\n    if (b < 0) {\r\n        quitf(_points, \"0.5 \\n b = %d < 0\", a);\r\n    }\r\n    quitf(_ok, \"%d + %d = %d\", a, b, n);\r\n}\r\n```',0,'',0),
(2,'/about/','Thông tin','VNOJ - Việt Nam Online Judge là hệ thống online judge chính thức của [VNOI](https://team.vnoi.info/)\r\n\r\n\r\n\r\n\r\n# 1. Todo 1\r\n\r\n# 2. Todo 2',0,'',0);
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` (`site_id`),
  CONSTRAINT `django_flatpage_sites_flatpage_id_078bbc8b_fk_django_flatpage_id` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  CONSTRAINT `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
INSERT INTO `django_flatpage_sites` VALUES
(1,1,1),
(2,2,1);
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2025-04-25 06:50:27.832143'),
(2,'auth','0001_initial','2025-04-25 06:50:28.527662'),
(3,'admin','0001_initial','2025-04-25 06:50:28.674088'),
(4,'admin','0002_logentry_remove_auto_add','2025-04-25 06:50:28.694401'),
(5,'admin','0003_logentry_add_action_flag_choices','2025-04-25 06:50:28.708486'),
(6,'contenttypes','0002_remove_content_type_name','2025-04-25 06:50:28.811777'),
(7,'auth','0002_alter_permission_name_max_length','2025-04-25 06:50:28.873942'),
(8,'auth','0003_alter_user_email_max_length','2025-04-25 06:50:28.920540'),
(9,'auth','0004_alter_user_username_opts','2025-04-25 06:50:28.939619'),
(10,'auth','0005_alter_user_last_login_null','2025-04-25 06:50:28.996514'),
(11,'auth','0006_require_contenttypes_0002','2025-04-25 06:50:29.001810'),
(12,'auth','0007_alter_validators_add_error_messages','2025-04-25 06:50:29.021007'),
(13,'auth','0008_alter_user_username_max_length','2025-04-25 06:50:29.060389'),
(14,'auth','0009_alter_user_last_name_max_length','2025-04-25 06:50:29.104883'),
(15,'auth','0010_alter_group_name_max_length','2025-04-25 06:50:29.150629'),
(16,'auth','0011_update_proxy_permissions','2025-04-25 06:50:29.170217'),
(17,'auth','0012_alter_user_first_name_max_length','2025-04-25 06:50:29.208272'),
(18,'sites','0001_initial','2025-04-25 06:50:29.238177'),
(19,'flatpages','0001_initial','2025-04-25 06:50:29.481773'),
(20,'impersonate','0001_initial','2025-04-25 06:50:29.635814'),
(21,'judge','0001_initial','2025-04-25 06:50:38.826346'),
(22,'judge','0002_license','2025-04-25 06:50:38.832334'),
(23,'judge','0003_license_key','2025-04-25 06:50:38.838781'),
(24,'judge','0004_language_limit','2025-04-25 06:50:38.845159'),
(25,'judge','0005_nav_path_len','2025-04-25 06:50:38.851218'),
(26,'judge','0006_language_extension','2025-04-25 06:50:38.857079'),
(27,'judge','0007_test_site_perm','2025-04-25 06:50:38.862764'),
(28,'judge','0008_contestproblem_order','2025-04-25 06:50:38.868256'),
(29,'judge','0009_solution_problem','2025-04-25 06:50:38.873338'),
(30,'judge','0010_comment_page_index','2025-04-25 06:50:38.877932'),
(31,'judge','0011_organization_is_open','2025-04-25 06:50:38.881760'),
(32,'judge','0012_organization_perms','2025-04-25 06:50:38.885569'),
(33,'judge','0013_private_contests','2025-04-25 06:50:38.889312'),
(34,'judge','0014_multi_organization','2025-04-25 06:50:38.893016'),
(35,'judge','0015_remove_single_organization','2025-04-25 06:50:38.896468'),
(36,'judge','0016_organizationrequest','2025-04-25 06:50:38.900328'),
(37,'judge','0017_edit_public_problem_perm','2025-04-25 06:50:38.904137'),
(38,'judge','0018_django_1_9','2025-04-25 06:50:38.907916'),
(39,'judge','0019_og_images','2025-04-25 06:50:38.916566'),
(40,'judge','0020_profile_user_script','2025-04-25 06:50:38.920424'),
(41,'judge','0021_output_prefix_override','2025-04-25 06:50:38.924101'),
(42,'judge','0022_judge_last_ping','2025-04-25 06:50:38.927578'),
(43,'judge','0023_contest_tag','2025-04-25 06:50:38.931087'),
(44,'judge','0024_submission_judge','2025-04-25 06:50:38.934527'),
(45,'judge','0025_submission_rejudge_flag','2025-04-25 06:50:38.938157'),
(46,'judge','0026_change_public_visibility_perm','2025-04-25 06:50:38.941936'),
(47,'judge','0027_bridge_revert','2025-04-25 06:50:38.945635'),
(48,'judge','0028_judge_ip','2025-04-25 06:50:38.949227'),
(49,'judge','0029_problem_translation','2025-04-25 06:50:38.952737'),
(50,'judge','0030_remove_contest_profile','2025-04-25 06:50:38.956557'),
(51,'judge','0031_judge_versions','2025-04-25 06:50:38.960180'),
(52,'judge','0032_hide_problem_tags_in_contest','2025-04-25 06:50:38.963559'),
(53,'judge','0033_proper_pretest_support','2025-04-25 06:50:38.966913'),
(54,'judge','0034_submission_is_pretested','2025-04-25 06:50:38.970403'),
(55,'judge','0035_contest_spectate_mode','2025-04-25 06:50:38.974076'),
(56,'judge','0036_contest_participation_unique','2025-04-25 06:50:38.977757'),
(57,'judge','0037_user_count_ac_rate_field','2025-04-25 06:50:38.981365'),
(58,'judge','0038_profile_problem_count','2025-04-25 06:50:38.984978'),
(59,'judge','0039_remove_contest_is_external','2025-04-25 06:50:38.988827'),
(60,'judge','0040_profile_math_engine','2025-04-25 06:50:38.992252'),
(61,'judge','0041_virtual_contest_participation','2025-04-25 06:50:38.995735'),
(62,'judge','0042_remove_spectate_field','2025-04-25 06:50:38.999403'),
(63,'judge','0043_contest_user_count','2025-04-25 06:50:39.003107'),
(64,'judge','0044_organization_slots','2025-04-25 06:50:39.007492'),
(65,'judge','0045_organization_access_code','2025-04-25 06:50:39.012198'),
(66,'judge','0046_blogpost_authors','2025-04-25 06:50:39.016953'),
(67,'judge','0047_site_managed_data','2025-04-25 06:50:39.023381'),
(68,'judge','0048_site_managed_checkers','2025-04-25 06:50:39.028797'),
(69,'judge','0049_contest_summary','2025-04-25 06:50:39.034459'),
(70,'judge','0050_problem_tester_field','2025-04-25 06:50:39.040157'),
(71,'judge','0051_was_rejudged_field','2025-04-25 06:50:39.045132'),
(72,'judge','0052_switch_to_durationfield','2025-04-25 06:50:39.053942'),
(73,'judge','0053_opengraph_problems','2025-04-25 06:50:39.058539'),
(74,'judge','0054_tickets','2025-04-25 06:50:39.067248'),
(75,'judge','0055_add_performance_points','2025-04-25 06:50:39.070786'),
(76,'judge','0056_ticket_is_open','2025-04-25 06:50:39.074360'),
(77,'judge','0057_blue_pretests','2025-04-25 06:50:39.082132'),
(78,'judge','0058_problem_curator_field','2025-04-25 06:50:39.085917'),
(79,'judge','0059_problem_is_manually_managed','2025-04-25 06:50:39.093208'),
(80,'judge','0060_contest_clarifications','2025-04-25 06:50:39.101917'),
(81,'judge','0061_language_template','2025-04-25 06:50:39.105872'),
(82,'judge','0062_add_contest_submission_limit','2025-04-25 06:50:39.109616'),
(83,'judge','0063_new_solutions','2025-04-25 06:50:39.113842'),
(84,'judge','0064_unique_solution','2025-04-25 06:50:39.117357'),
(85,'judge','0065_blogpost_perms','2025-04-25 06:50:39.120960'),
(86,'judge','0066_submission_date_index','2025-04-25 06:50:39.131345'),
(87,'judge','0067_contest_access_code','2025-04-25 06:50:39.138405'),
(88,'judge','0068_hide_scoreboard','2025-04-25 06:50:39.147282'),
(89,'judge','0069_judge_blocking','2025-04-25 06:50:39.156248'),
(90,'judge','0070_organization_slug','2025-04-25 06:50:39.160959'),
(91,'judge','0071_organization_private_problems','2025-04-25 06:50:39.165546'),
(92,'judge','0072_contest_logo_override_image','2025-04-25 06:50:39.174376'),
(93,'judge','0073_comment_lock','2025-04-25 06:50:39.179282'),
(94,'judge','0074_totp','2025-04-25 06:50:39.188456'),
(95,'judge','0075_organization_admin_reverse','2025-04-25 06:50:39.197344'),
(96,'judge','0076_problem_statistics','2025-04-25 06:50:39.206036'),
(97,'judge','0077_remove_organization_key','2025-04-25 06:50:39.214636'),
(98,'judge','0078_add_user_notes','2025-04-25 06:50:39.223354'),
(99,'judge','0079_remove_comment_title','2025-04-25 06:50:39.231861'),
(100,'judge','0080_contest_banned_users','2025-04-25 06:50:39.240467'),
(101,'judge','0081_unlisted_users','2025-04-25 06:50:39.249112'),
(102,'judge','0082_remove_profile_name','2025-04-25 06:50:39.258088'),
(103,'judge','0083_extended_feedback','2025-04-25 06:50:39.266948'),
(104,'judge','0084_contest_formats','2025-04-25 06:50:39.275900'),
(105,'judge','0085_submission_source','2025-04-25 06:50:39.457569'),
(106,'judge','0086_rating_ceiling','2025-04-25 06:50:39.547038'),
(107,'judge','0087_problem_resource_limits','2025-04-25 06:50:39.745657'),
(108,'judge','0088_private_contests','2025-04-25 06:50:40.314553'),
(109,'judge','0089_submission_to_contest','2025-04-25 06:50:40.493060'),
(110,'judge','0090_fix_contest_visibility','2025-04-25 06:50:40.500445'),
(111,'judge','0091_compiler_message_ansi2html','2025-04-25 06:50:40.530985'),
(112,'judge','0092_contest_clone','2025-04-25 06:50:40.561051'),
(113,'judge','0093_contest_moss','2025-04-25 06:50:41.031156'),
(114,'judge','0094_submissiontestcase_unique_together','2025-04-25 06:50:41.117069'),
(115,'judge','0095_organization_logo_override','2025-04-25 06:50:41.227671'),
(116,'judge','0096_profile_language_set_default','2025-04-25 06:50:41.497216'),
(117,'judge','0097_participation_is_disqualified','2025-04-25 06:50:41.602936'),
(118,'judge','0098_view_contest_scoreboard','2025-04-25 06:50:41.799287'),
(119,'judge','0099_contest_problem_label','2025-04-25 06:50:41.892215'),
(120,'judge','0100_contest_visiblity_permission','2025-04-25 06:50:41.914826'),
(121,'judge','0101_submission_judged_date','2025-04-25 06:50:41.964281'),
(122,'judge','0102_api_token','2025-04-25 06:50:42.082497'),
(123,'judge','0103_contest_participation_tiebreak_field','2025-04-25 06:50:42.184159'),
(124,'judge','0104_contestproblem_maxsubs','2025-04-25 06:50:42.370680'),
(125,'judge','0105_webauthn','2025-04-25 06:50:42.661243'),
(126,'judge','0106_user_data_download','2025-04-25 06:50:42.743182'),
(127,'judge','0107_submission_lock','2025-04-25 06:50:43.126039'),
(128,'judge','0108_bleach_problems','2025-04-25 06:50:43.227619'),
(129,'judge','0109_scratch_codes','2025-04-25 06:50:43.301045'),
(130,'judge','0110_default_output_prefix_override','2025-04-25 06:50:43.338933'),
(131,'judge','0111_blank_assignees_ticket','2025-04-25 06:50:43.366175'),
(132,'judge','0112_language_extensions','2025-04-25 06:50:43.398105'),
(133,'judge','0113_contest_decimal_points','2025-04-25 06:50:43.563086'),
(134,'judge','0114_add_custom_python_checker','2025-04-25 06:50:44.636455'),
(135,'judge','0115_add_custom_cpp_checker','2025-04-25 06:50:44.709434'),
(136,'judge','0116_add_is_polygon_field','2025-04-25 06:50:44.809288'),
(137,'judge','0117_change_default_timezone','2025-04-25 06:50:44.838158'),
(138,'judge','0118_remove_problem_is_polygon_problem','2025-04-25 06:50:44.890899'),
(139,'judge','0119_remove_py_cpp_checker','2025-04-25 06:50:45.077165'),
(140,'judge','0120_allow_py_cpp_files_in_custom_checker','2025-04-25 06:50:45.094608'),
(141,'judge','0114_remove_org_registrant','2025-04-25 06:50:45.201248'),
(142,'judge','0121_merge_20210410_0643','2025-04-25 06:50:45.205583'),
(143,'judge','0122_allow_underscore_problemcode','2025-04-25 06:50:45.233910'),
(144,'judge','0115_contest_scoreboard_visibility','2025-04-25 06:50:45.393791'),
(145,'judge','0123_merge_20210419_0859','2025-04-25 06:50:45.398751'),
(146,'judge','0124_32char_and_underscore_problem_and_contest_id','2025-04-25 06:50:45.584914'),
(147,'judge','0125_add_problem_pdf_statement','2025-04-25 06:50:45.665609'),
(148,'judge','0126_allow_blank_desscription','2025-04-25 06:50:45.704580'),
(149,'judge','0127_Add_contribution_points_and_misc','2025-04-25 06:50:45.838870'),
(150,'judge','0128_ticket_is_contributive','2025-04-25 06:50:45.925443'),
(151,'judge','0127_add_organization_performance_points','2025-04-25 06:50:46.014127'),
(152,'judge','0129_merge_20210504_1441','2025-04-25 06:50:46.017895'),
(153,'judge','0130_contest_virtual_count','2025-04-25 06:50:46.094113'),
(154,'judge','0116_contest_curator_and_tester','2025-04-25 06:50:46.609777'),
(155,'judge','0117_remove_private_messages','2025-04-25 06:50:46.691002'),
(156,'judge','0118_convert_to_dates','2025-04-25 06:50:47.027546'),
(157,'judge','0131_merge_migration_0130_0118','2025-04-25 06:50:47.033890'),
(158,'judge','0132_organization_member_count','2025-04-25 06:50:47.208254'),
(159,'judge','0133_add_GeneralIssue_model','2025-04-25 06:50:47.230324'),
(160,'judge','0119_hide_problem_authors','2025-04-25 06:50:47.306616'),
(161,'judge','0134_merge_0119_0133','2025-04-25 06:50:47.312981'),
(162,'judge','0135_add_field_source_to_problem','2025-04-25 06:50:47.437397'),
(163,'judge','0136_add_field_csv_ranking_to_contest','2025-04-25 06:50:47.520830'),
(164,'judge','0137_add_field_suggester_to_problem','2025-04-25 06:50:47.702101'),
(165,'judge','0138_alter_field_pdf_url_on_problem','2025-04-25 06:50:47.769828'),
(166,'judge','0139_add_can_upload_image_permission','2025-04-25 06:50:47.800387'),
(167,'judge','0140_problem_banned_judges','2025-04-25 06:50:47.991477'),
(168,'judge','0141_add_model_tag','2025-04-25 06:50:48.690837'),
(169,'judge','0142_add_index','2025-04-25 06:50:48.985394'),
(170,'judge','0143_change_field_name','2025-04-25 06:50:49.121702'),
(171,'judge','0144_add_create_org_problem_permission','2025-04-25 06:50:49.163343'),
(172,'judge','0145_alter_problem_pdf_url','2025-04-25 06:50:49.212805'),
(173,'judge','0146_submit_via_file','2025-04-25 06:50:49.766829'),
(174,'judge','0147_allow_custom_grader','2025-04-25 06:50:50.092130'),
(175,'judge','0148_add_output_only','2025-04-25 06:50:50.166219'),
(176,'judge','0149_totp_no_reuse','2025-04-25 06:50:50.241175'),
(177,'judge','0150_per_problem_sub_access_control','2025-04-25 06:50:50.332178'),
(178,'judge','0151_contest_rating_elo_mmr','2025-04-25 06:50:50.644094'),
(179,'judge','0152_contest_show_short_display','2025-04-25 06:50:50.726796'),
(180,'judge','0153_new_roles','2025-04-25 06:50:50.770879'),
(181,'judge','0154_blog_post_org','2025-04-25 06:50:50.990853'),
(182,'judge','0155_contest_announcement','2025-04-25 06:50:51.172091'),
(183,'judge','0156_always_hidden_scoreboard','2025-04-25 06:50:51.202769'),
(184,'judge','0157_banned_judges_for_contest','2025-04-25 06:50:51.500209'),
(185,'judge','0158_unlisted_org','2025-04-25 06:50:51.628117'),
(186,'judge','0159_create_org','2025-04-25 06:50:51.672212'),
(187,'judge','0160_add_limit_perms','2025-04-25 06:50:51.695822'),
(188,'judge','0161_add_create_mass_testcases_perm','2025-04-25 06:50:51.725474'),
(189,'judge','0162_add_testcase_visibility','2025-04-25 06:50:51.801166'),
(190,'judge','0163_add_ban_reason','2025-04-25 06:50:51.970933'),
(191,'judge','0164_add_frozen_fields','2025-04-25 06:50:52.331389'),
(192,'judge','0165_contest_show_submission_list','2025-04-25 06:50:52.413333'),
(193,'judge','0166_contest_scoreboard_cache_timeout','2025-04-25 06:50:52.504361'),
(194,'judge','0167_profile_username_display_override','2025-04-25 06:50:52.593026'),
(195,'judge','0168_alter_allow_tagging','2025-04-25 06:50:52.723222'),
(196,'judge','0169_alter_contestformat_and_custom_checker','2025-04-25 06:50:52.762513'),
(197,'judge','0170_contest_data_download','2025-04-25 06:50:52.811364'),
(198,'judge','0171_set_default_grader_checker','2025-04-25 06:50:52.844716'),
(199,'judge','0172_contest_disallow_virtual','2025-04-25 06:50:52.917130'),
(200,'judge','0173_add_view_feedback','2025-04-25 06:50:53.087841'),
(201,'judge','0174_model_badge','2025-04-25 06:50:53.495644'),
(202,'judge','0175_model_blogvote','2025-04-25 06:50:53.790454'),
(203,'judge','0176_no_self_vote','2025-04-25 06:50:53.841650'),
(204,'judge','0177_testcase_result_visibility','2025-04-25 06:50:54.017353'),
(205,'judge','0178_add_java_checker','2025-04-25 06:50:54.044831'),
(206,'judge','0179_add_ranking_access_code','2025-04-25 06:50:54.122768'),
(207,'judge','0180_add_problem_data_hints','2025-04-25 06:50:54.378185'),
(208,'judge','0181_disable_judge','2025-04-25 06:50:54.449585'),
(209,'judge','0182_remove_zombie_editorials','2025-04-25 06:50:54.645945'),
(210,'judge','0183_fix_problem_data','2025-04-25 06:50:54.767371'),
(211,'judge','0184_profile_site_theme','2025-04-25 06:50:54.912181'),
(212,'judge','0185_dark_ace_theme','2025-04-25 06:50:54.967786'),
(213,'judge','0186_user_index_refactor','2025-04-25 06:50:55.532114'),
(214,'judge','0187_submission_index_refactor','2025-04-25 06:50:55.997938'),
(215,'judge','0188_submission_extra_index','2025-04-25 06:50:56.324632'),
(216,'judge','0189_comment_revision_count','2025-04-25 06:50:56.451079'),
(217,'judge','0190_contest_problem_rank_index','2025-04-25 06:50:56.577478'),
(218,'judge','0191_submission_index_cleanup','2025-04-25 06:50:57.452109'),
(219,'judge','0192_add_registration_fields','2025-04-25 06:50:57.556164'),
(220,'judge','0193_unique_organization_slug','2025-04-25 06:50:57.736352'),
(221,'judge','0194_ban_permission','2025-04-25 06:50:57.777495'),
(222,'judge','0195_post_pin_global_permissions','2025-04-25 06:50:57.798237'),
(223,'judge','0196_view_all_user_comment_permission','2025-04-25 06:50:57.819375'),
(224,'judge','0197_org_slugs_begin_with_letter','2025-04-25 06:50:57.848084'),
(225,'judge','0198_submission_max_time','2025-04-25 06:50:57.861471'),
(226,'judge','0199_change_min_time_limit','2025-04-25 06:50:57.932287'),
(227,'judge','0200_update_show_submission_list','2025-04-25 06:50:58.013512'),
(228,'judge','0201_update_profile_site_theme','2025-04-25 06:50:58.043347'),
(229,'judge','0202_import_polygon_package','2025-04-25 06:50:58.069503'),
(230,'judge','0203_add_field_vnoj_points','2025-04-25 06:50:58.146553'),
(231,'judge','0204_increase_comment_page_max_length','2025-04-25 06:50:58.234995'),
(232,'judge','0205_ip_based_auth','2025-04-25 06:50:58.361394'),
(233,'judge','0206_monthly_credit','2025-04-25 06:50:58.514473'),
(234,'judge','0207_org_credit','2025-04-25 06:50:58.792450'),
(235,'judge','0208_comment_revision_count_v2','2025-04-25 06:50:58.912703'),
(236,'judge','0209_judge_add_tiers','2025-04-25 06:50:58.985743'),
(237,'judge','0210_clarify_rate_all_desc','2025-04-25 06:50:59.017045'),
(238,'judge','0211_edit_type_group_all_problem','2025-04-25 06:50:59.042535'),
(239,'judge','0212_rename_credit_fields','2025-04-25 06:50:59.217727'),
(240,'redirects','0001_initial','2025-04-25 06:50:59.436680'),
(241,'redirects','0002_alter_redirect_new_path_help_text','2025-04-25 06:50:59.448702'),
(242,'registration','0001_initial','2025-04-25 06:50:59.549139'),
(243,'registration','0002_registrationprofile_activated','2025-04-25 06:50:59.625614'),
(244,'registration','0003_migrate_activatedstatus','2025-04-25 06:50:59.673285'),
(245,'registration','0004_supervisedregistrationprofile','2025-04-25 06:50:59.764229'),
(246,'registration','0005_activation_key_sha256','2025-04-25 06:50:59.836067'),
(247,'reversion','0001_squashed_0004_auto_20160611_1202','2025-04-25 06:51:00.196248'),
(248,'sessions','0001_initial','2025-04-25 06:51:00.267890'),
(249,'sites','0002_alter_domain_unique','2025-04-25 06:51:00.321500'),
(250,'default','0001_initial','2025-04-25 06:51:00.680282'),
(251,'social_auth','0001_initial','2025-04-25 06:51:00.685456'),
(252,'default','0002_add_related_name','2025-04-25 06:51:00.793384'),
(253,'social_auth','0002_add_related_name','2025-04-25 06:51:00.798174'),
(254,'default','0003_alter_email_max_length','2025-04-25 06:51:00.830916'),
(255,'social_auth','0003_alter_email_max_length','2025-04-25 06:51:00.836150'),
(256,'default','0004_auto_20160423_0400','2025-04-25 06:51:00.851505'),
(257,'social_auth','0004_auto_20160423_0400','2025-04-25 06:51:00.855396'),
(258,'social_auth','0005_auto_20160727_2333','2025-04-25 06:51:00.900186'),
(259,'social_django','0006_partial','2025-04-25 06:51:00.974252'),
(260,'social_django','0007_code_timestamp','2025-04-25 06:51:01.080577'),
(261,'social_django','0008_partial_timestamp','2025-04-25 06:51:01.190999'),
(262,'social_django','0009_auto_20191118_0520','2025-04-25 06:51:01.330730'),
(263,'social_django','0010_uid_db_index','2025-04-25 06:51:01.401051'),
(264,'judge','0001_squashed_0084_contest_formats','2025-04-25 06:51:01.416165'),
(265,'social_django','0001_initial','2025-04-25 06:51:01.420350'),
(266,'social_django','0003_alter_email_max_length','2025-04-25 06:51:01.424400'),
(267,'social_django','0005_auto_20160727_2333','2025-04-25 06:51:01.428889'),
(268,'social_django','0004_auto_20160423_0400','2025-04-25 06:51:01.433375'),
(269,'social_django','0002_add_related_name','2025-04-25 06:51:01.437661');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_old_path_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_old_path_c6cc94d3` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('1eykxge1ic5zrs4u8ucjz1ynxlbk1ipj','.eJxVjDsOgzAQBe_iOrIc8I-U6XMGa73rDSSRjTCIIsrdAxIN7cy89xUj1LqWicK45kTixvCp6SICLHMflpqmMGxUNOLEIuA75V3QC_KzSCx5noYo90QetspHofS5H-3poIfab-uooyNotemUM96hxoauzBZJq2YTnVXetqZVDDEyskP22qE3ylo2zovfHxoFQIo:1u8D2x:Vz1YMSi2IiWwUSSdSoc8mG6INDHO9ETu56IwhxB_U_o','2025-05-09 07:00:27.034613'),
('j40ss0bvzh4csrebet8lf23uptrlt98a','.eJxVjDsOgzAQBe_iOrIc8I-U6XMGa73rDSSRjTCIIsrdAxIN7cy89xUj1LqWicK45kTixvCp6SICLHMflpqmMGxUNOLEIuA75V3QC_KzSCx5noYo90QetspHofS5H-3poIfab-uooyNotemUM96hxoauzBZJq2YTnVXetqZVDDEyskP22qE3ylo2zovfHxoFQIo:1u9zGf:bgsJzjtfr3adj5gaksRouwo5z4JLViFVMACl2PI7Uq8','2025-05-14 04:41:57.731819'),
('onlp7zdpl42w93yzbu08gr0f0g1oavyw','.eJxVjDsOgzAQBe_iOrIc8I-U6XMGa73rDSSRjTCIIsrdAxIN7cy89xUj1LqWicK45kTixvCp6SICLHMflpqmMGxUNOLEIuA75V3QC_KzSCx5noYo90QetspHofS5H-3poIfab-uooyNotemUM96hxoauzBZJq2YTnVXetqZVDDEyskP22qE3ylo2zovfHxoFQIo:1u8Q4N:sYwZ5wVRzppLhab8cTkRFqkzuW9trbnSFR7jktatIVI','2025-05-09 20:54:47.736040'),
('yci3j9huglmghy21gngx1y8ulzkrsdl9','.eJxVjDsOgzAQBe_iOrIc8I-U6XMGa73rDSSRjTCIIsrdAxIN7cy89xUj1LqWicK45kTixvCp6SICLHMflpqmMGxUNOLEIuA75V3QC_KzSCx5noYo90QetspHofS5H-3poIfab-uooyNotemUM96hxoauzBZJq2YTnVXetqZVDDEyskP22qE3ylo2zovfHxoFQIo:1uABQL:HHVdeDKx9jtEnlEJ2g1wT2YGvUYt3TLD7f4xnt8pViU','2025-05-14 17:40:45.115904'),
('z98oosftbnddifgnqg54pagjlujz7won','.eJxVjDsOgzAQBe_iOrIc8I-U6XMGa73rDSSRjTCIIsrdAxIN7cy89xUj1LqWicK45kTixvCp6SICLHMflpqmMGxUNOLEIuA75V3QC_KzSCx5noYo90QetspHofS5H-3poIfab-uooyNotemUM96hxoauzBZJq2YTnVXetqZVDDEyskP22qE3ylo2zovfHxoFQIo:1uALNG:5-mnWoCCeGxOc2pE2g0Oh5ZrNGR3-5b68JJtJY69ZUg','2025-05-15 04:18:14.515962');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES
(1,'localhost:8081','VNOJ: Viet Nam Online Judge');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impersonate_impersonationlog`
--

DROP TABLE IF EXISTS `impersonate_impersonationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `impersonate_impersonationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_key` varchar(40) NOT NULL,
  `session_started_at` datetime(6) DEFAULT NULL,
  `session_ended_at` datetime(6) DEFAULT NULL,
  `impersonating_id` int(11) NOT NULL,
  `impersonator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impersonate_imperson_impersonating_id_afd114fc_fk_auth_user` (`impersonating_id`),
  KEY `impersonate_imperson_impersonator_id_1ecfe8ce_fk_auth_user` (`impersonator_id`),
  CONSTRAINT `impersonate_imperson_impersonating_id_afd114fc_fk_auth_user` FOREIGN KEY (`impersonating_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `impersonate_imperson_impersonator_id_1ecfe8ce_fk_auth_user` FOREIGN KEY (`impersonator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impersonate_impersonationlog`
--

LOCK TABLES `impersonate_impersonationlog` WRITE;
/*!40000 ALTER TABLE `impersonate_impersonationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `impersonate_impersonationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_badge`
--

DROP TABLE IF EXISTS `judge_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_badge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `mini` varchar(200) NOT NULL,
  `full_size` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_badge`
--

LOCK TABLES `judge_badge` WRITE;
/*!40000 ALTER TABLE `judge_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_blogpost`
--

DROP TABLE IF EXISTS `judge_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `sticky` tinyint(1) NOT NULL,
  `publish_on` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `summary` longtext NOT NULL,
  `og_image` varchar(150) NOT NULL,
  `global_post` tinyint(1) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_blogpost_slug_eb303bae` (`slug`),
  KEY `judge_blogpost_organization_id_d1eb4e89_fk_judge_organization_id` (`organization_id`),
  CONSTRAINT `judge_blogpost_organization_id_d1eb4e89_fk_judge_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_blogpost`
--

LOCK TABLES `judge_blogpost` WRITE;
/*!40000 ALTER TABLE `judge_blogpost` DISABLE KEYS */;
INSERT INTO `judge_blogpost` VALUES
(1,'Chào mừng bạn đến với VNOJ','welcome-to-vnoj',1,1,'2017-12-02 05:00:00.000000','Chào mừng bạn đến với VNOJ.\r\n\r\nVNOJ - Việt Nam Online Judge - là hệ thống online judge chính thức của [VNOI](https://team.vnoi.info/)','','',1,NULL,0);
/*!40000 ALTER TABLE `judge_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_blogpost_authors`
--

DROP TABLE IF EXISTS `judge_blogpost_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_blogpost_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_blogpost_authors_blogpost_id_profile_id_e53f2daf_uniq` (`blogpost_id`,`profile_id`),
  KEY `judge_blogpost_authors_profile_id_18d1d3e2_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_blogpost_authors_blogpost_id_43745d7c_fk_judge_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `judge_blogpost` (`id`),
  CONSTRAINT `judge_blogpost_authors_profile_id_18d1d3e2_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_blogpost_authors`
--

LOCK TABLES `judge_blogpost_authors` WRITE;
/*!40000 ALTER TABLE `judge_blogpost_authors` DISABLE KEYS */;
INSERT INTO `judge_blogpost_authors` VALUES
(1,1,1);
/*!40000 ALTER TABLE `judge_blogpost_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_blogvote`
--

DROP TABLE IF EXISTS `judge_blogvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_blogvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_blogvote_voter_id_blog_id_ac6e59be_uniq` (`voter_id`,`blog_id`),
  KEY `judge_blogvote_blog_id_9fe4f241_fk_judge_blogpost_id` (`blog_id`),
  CONSTRAINT `judge_blogvote_blog_id_9fe4f241_fk_judge_blogpost_id` FOREIGN KEY (`blog_id`) REFERENCES `judge_blogpost` (`id`),
  CONSTRAINT `judge_blogvote_voter_id_49ace0bf_fk_judge_profile_id` FOREIGN KEY (`voter_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_blogvote`
--

LOCK TABLES `judge_blogvote` WRITE;
/*!40000 ALTER TABLE `judge_blogvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_blogvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_comment`
--

DROP TABLE IF EXISTS `judge_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `page` varchar(34) NOT NULL,
  `score` int(11) NOT NULL,
  `body` longtext NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `lft` int(10) unsigned NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) unsigned NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) unsigned NOT NULL CHECK (`tree_id` >= 0),
  `level` int(10) unsigned NOT NULL CHECK (`level` >= 0),
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `revisions` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_comment_author_id_ec3f8371_fk_judge_profile_id` (`author_id`),
  KEY `judge_comment_page_66eb6c11` (`page`),
  KEY `judge_comment_tree_id_cdde24bd` (`tree_id`),
  KEY `judge_comment_parent_id_e16fe797` (`parent_id`),
  CONSTRAINT `judge_comment_author_id_ec3f8371_fk_judge_profile_id` FOREIGN KEY (`author_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_comment_parent_id_e16fe797_fk_judge_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `judge_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_comment`
--

LOCK TABLES `judge_comment` WRITE;
/*!40000 ALTER TABLE `judge_comment` DISABLE KEYS */;
INSERT INTO `judge_comment` VALUES
(1,'2017-12-02 08:46:54.007000','b:1',0,'This is your first comment!',0,1,2,1,0,1,NULL,1);
/*!40000 ALTER TABLE `judge_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_commentlock`
--

DROP TABLE IF EXISTS `judge_commentlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_commentlock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(34) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_commentlock_page_3aec2c30` (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_commentlock`
--

LOCK TABLES `judge_commentlock` WRITE;
/*!40000 ALTER TABLE `judge_commentlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_commentlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_commentvote`
--

DROP TABLE IF EXISTS `judge_commentvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_commentvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_commentvote_voter_id_comment_id_2fa9cd9b_uniq` (`voter_id`,`comment_id`),
  KEY `judge_commentvote_comment_id_9711d946_fk_judge_comment_id` (`comment_id`),
  CONSTRAINT `judge_commentvote_comment_id_9711d946_fk_judge_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `judge_comment` (`id`),
  CONSTRAINT `judge_commentvote_voter_id_49326699_fk_judge_profile_id` FOREIGN KEY (`voter_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_commentvote`
--

LOCK TABLES `judge_commentvote` WRITE;
/*!40000 ALTER TABLE `judge_commentvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_commentvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest`
--

DROP TABLE IF EXISTS `judge_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `time_limit` bigint(20) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `is_rated` tinyint(1) NOT NULL,
  `use_clarifications` tinyint(1) NOT NULL,
  `rate_all` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `hide_problem_tags` tinyint(1) NOT NULL,
  `run_pretests_only` tinyint(1) NOT NULL,
  `og_image` varchar(150) NOT NULL,
  `logo_override_image` varchar(150) NOT NULL,
  `user_count` int(11) NOT NULL,
  `summary` longtext NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `format_name` varchar(32) NOT NULL,
  `format_config` longtext DEFAULT NULL,
  `rating_ceiling` int(11) DEFAULT NULL,
  `rating_floor` int(11) DEFAULT NULL,
  `is_organization_private` tinyint(1) NOT NULL,
  `problem_label_script` longtext NOT NULL,
  `points_precision` int(11) NOT NULL,
  `scoreboard_visibility` varchar(1) NOT NULL,
  `virtual_count` int(11) NOT NULL,
  `locked_after` datetime(6) DEFAULT NULL,
  `hide_problem_authors` tinyint(1) NOT NULL,
  `csv_ranking` longtext NOT NULL,
  `show_short_display` tinyint(1) NOT NULL,
  `push_announcements` tinyint(1) NOT NULL,
  `frozen_last_minutes` int(11) NOT NULL,
  `show_submission_list` tinyint(1) NOT NULL,
  `scoreboard_cache_timeout` int(10) unsigned NOT NULL CHECK (`scoreboard_cache_timeout` >= 0),
  `data_last_downloaded` datetime(6) DEFAULT NULL,
  `disallow_virtual` tinyint(1) NOT NULL,
  `ranking_access_code` varchar(255) NOT NULL,
  `registration_end` datetime(6) DEFAULT NULL,
  `registration_start` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `judge_contest_name_23b5c29c` (`name`),
  KEY `judge_contest_start_time_8dd80870` (`start_time`),
  KEY `judge_contest_end_time_f0179778` (`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest`
--

LOCK TABLES `judge_contest` WRITE;
/*!40000 ALTER TABLE `judge_contest` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_authors`
--

DROP TABLE IF EXISTS `judge_contest_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_organizers_contest_id_profile_id_35f37708_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_organizers_profile_id_fe54f029_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_organizers_contest_id_266a7461_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_organizers_profile_id_fe54f029_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_authors`
--

LOCK TABLES `judge_contest_authors` WRITE;
/*!40000 ALTER TABLE `judge_contest_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_banned_judges`
--

DROP TABLE IF EXISTS `judge_contest_banned_judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_banned_judges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_banned_judges_contest_id_judge_id_25704a78_uniq` (`contest_id`,`judge_id`),
  KEY `judge_contest_banned_judges_judge_id_27dd8be2_fk_judge_judge_id` (`judge_id`),
  CONSTRAINT `judge_contest_banned_contest_id_9dda648c_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_banned_judges_judge_id_27dd8be2_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_banned_judges`
--

LOCK TABLES `judge_contest_banned_judges` WRITE;
/*!40000 ALTER TABLE `judge_contest_banned_judges` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_banned_judges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_banned_users`
--

DROP TABLE IF EXISTS `judge_contest_banned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_banned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_banned_users_contest_id_profile_id_b0570b33_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_banned_profile_id_ae615b59_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_banned_contest_id_14d2192a_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_banned_profile_id_ae615b59_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_banned_users`
--

LOCK TABLES `judge_contest_banned_users` WRITE;
/*!40000 ALTER TABLE `judge_contest_banned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_banned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_curators`
--

DROP TABLE IF EXISTS `judge_contest_curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_curators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_curators_contest_id_profile_id_6bcc5bc0_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_curators_profile_id_73c4ada2_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_curators_contest_id_06a850b7_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_curators_profile_id_73c4ada2_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_curators`
--

LOCK TABLES `judge_contest_curators` WRITE;
/*!40000 ALTER TABLE `judge_contest_curators` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_organizations`
--

DROP TABLE IF EXISTS `judge_contest_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_organizati_contest_id_organization__f8aafa91_uniq` (`contest_id`,`organization_id`),
  KEY `judge_contest_organi_organization_id_6ccef0d9_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_contest_organi_contest_id_8b6686ce_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_organi_organization_id_6ccef0d9_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_organizations`
--

LOCK TABLES `judge_contest_organizations` WRITE;
/*!40000 ALTER TABLE `judge_contest_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_private_contestants`
--

DROP TABLE IF EXISTS `judge_contest_private_contestants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_private_contestants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_private_co_contest_id_profile_id_ef23dc8d_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_privat_profile_id_34a11bc5_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_privat_contest_id_a30921fe_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_privat_profile_id_34a11bc5_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_private_contestants`
--

LOCK TABLES `judge_contest_private_contestants` WRITE;
/*!40000 ALTER TABLE `judge_contest_private_contestants` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_private_contestants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_rate_exclude`
--

DROP TABLE IF EXISTS `judge_contest_rate_exclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_rate_exclude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_rate_exclude_contest_id_profile_id_2b34d7a9_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_rate_e_profile_id_6c9400fa_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_rate_e_contest_id_30174232_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_rate_e_profile_id_6c9400fa_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_rate_exclude`
--

LOCK TABLES `judge_contest_rate_exclude` WRITE;
/*!40000 ALTER TABLE `judge_contest_rate_exclude` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_rate_exclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_tags`
--

DROP TABLE IF EXISTS `judge_contest_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `contesttag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_tags_contest_id_contesttag_id_eedb695b_uniq` (`contest_id`,`contesttag_id`),
  KEY `judge_contest_tags_contesttag_id_5d9788bd_fk_judge_contesttag_id` (`contesttag_id`),
  CONSTRAINT `judge_contest_tags_contest_id_998f99f7_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_tags_contesttag_id_5d9788bd_fk_judge_contesttag_id` FOREIGN KEY (`contesttag_id`) REFERENCES `judge_contesttag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_tags`
--

LOCK TABLES `judge_contest_tags` WRITE;
/*!40000 ALTER TABLE `judge_contest_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_testers`
--

DROP TABLE IF EXISTS `judge_contest_testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_testers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_testers_contest_id_profile_id_52e96be5_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_testers_profile_id_d62d1c9b_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_testers_contest_id_6122faf2_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_testers_profile_id_d62d1c9b_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_testers`
--

LOCK TABLES `judge_contest_testers` WRITE;
/*!40000 ALTER TABLE `judge_contest_testers` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_view_contest_scoreboard`
--

DROP TABLE IF EXISTS `judge_contest_view_contest_scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_view_contest_scoreboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_view_conte_contest_id_profile_id_5fbd08d1_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_view_c_profile_id_60bb0f4a_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_view_c_contest_id_30aa03fe_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_view_c_profile_id_60bb0f4a_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_view_contest_scoreboard`
--

LOCK TABLES `judge_contest_view_contest_scoreboard` WRITE;
/*!40000 ALTER TABLE `judge_contest_view_contest_scoreboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_view_contest_scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestannouncement`
--

DROP TABLE IF EXISTS `judge_contestannouncement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestannouncement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `contest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_contestannounc_contest_id_164cfbee_fk_judge_con` (`contest_id`),
  CONSTRAINT `judge_contestannounc_contest_id_164cfbee_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestannouncement`
--

LOCK TABLES `judge_contestannouncement` WRITE;
/*!40000 ALTER TABLE `judge_contestannouncement` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestannouncement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestmoss`
--

DROP TABLE IF EXISTS `judge_contestmoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestmoss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `submission_count` int(10) unsigned NOT NULL CHECK (`submission_count` >= 0),
  `url` varchar(200) DEFAULT NULL,
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestmoss_contest_id_problem_id_language_52b59ba8_uniq` (`contest_id`,`problem_id`,`language`),
  KEY `judge_contestmoss_problem_id_5d8c1e4e_fk_judge_problem_id` (`problem_id`),
  CONSTRAINT `judge_contestmoss_contest_id_24908198_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestmoss_problem_id_5d8c1e4e_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestmoss`
--

LOCK TABLES `judge_contestmoss` WRITE;
/*!40000 ALTER TABLE `judge_contestmoss` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestmoss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestparticipation`
--

DROP TABLE IF EXISTS `judge_contestparticipation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestparticipation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime(6) NOT NULL,
  `score` double NOT NULL,
  `cumtime` int(10) unsigned NOT NULL CHECK (`cumtime` >= 0),
  `virtual` int(11) NOT NULL,
  `format_data` longtext DEFAULT NULL,
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_disqualified` tinyint(1) NOT NULL,
  `tiebreaker` double NOT NULL,
  `frozen_cumtime` int(10) unsigned NOT NULL CHECK (`frozen_cumtime` >= 0),
  `frozen_score` double NOT NULL,
  `frozen_tiebreaker` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestparticipati_contest_id_user_id_virtu_dc257b0c_uniq` (`contest_id`,`user_id`,`virtual`),
  KEY `judge_contestparticipation_user_id_5896ee2e_fk_judge_profile_id` (`user_id`),
  KEY `judge_contestparticipation_score_4098b84f` (`score`),
  KEY `judge_contestparticipation_frozen_score_caac9939` (`frozen_score`),
  CONSTRAINT `judge_contestpartici_contest_id_ab097823_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestparticipation_user_id_5896ee2e_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestparticipation`
--

LOCK TABLES `judge_contestparticipation` WRITE;
/*!40000 ALTER TABLE `judge_contestparticipation` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestparticipation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestproblem`
--

DROP TABLE IF EXISTS `judge_contestproblem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestproblem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `is_pretested` tinyint(1) NOT NULL,
  `order` int(10) unsigned NOT NULL CHECK (`order` >= 0),
  `output_prefix_override` int(11) DEFAULT NULL,
  `max_submissions` int(11) DEFAULT NULL,
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestproblem_problem_id_contest_id_4ae77fe0_uniq` (`problem_id`,`contest_id`),
  KEY `judge_contestproblem_contest_id_b28b7107_fk_judge_contest_id` (`contest_id`),
  KEY `judge_contestproblem_order_05ce0638` (`order`),
  CONSTRAINT `judge_contestproblem_contest_id_b28b7107_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestproblem_problem_id_fc63c700_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestproblem`
--

LOCK TABLES `judge_contestproblem` WRITE;
/*!40000 ALTER TABLE `judge_contestproblem` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestproblem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestsubmission`
--

DROP TABLE IF EXISTS `judge_contestsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestsubmission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` double NOT NULL,
  `is_pretest` tinyint(1) NOT NULL,
  `participation_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `submission_id` (`submission_id`),
  KEY `judge_contestsubmiss_participation_id_cf83bbb0_fk_judge_con` (`participation_id`),
  KEY `judge_contestsubmiss_problem_id_1b1240d4_fk_judge_con` (`problem_id`),
  CONSTRAINT `judge_contestsubmiss_participation_id_cf83bbb0_fk_judge_con` FOREIGN KEY (`participation_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_contestsubmiss_problem_id_1b1240d4_fk_judge_con` FOREIGN KEY (`problem_id`) REFERENCES `judge_contestproblem` (`id`),
  CONSTRAINT `judge_contestsubmiss_submission_id_1384e5aa_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestsubmission`
--

LOCK TABLES `judge_contestsubmission` WRITE;
/*!40000 ALTER TABLE `judge_contestsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contesttag`
--

DROP TABLE IF EXISTS `judge_contesttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contesttag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `color` varchar(7) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contesttag`
--

LOCK TABLES `judge_contesttag` WRITE;
/*!40000 ALTER TABLE `judge_contesttag` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contesttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_generalissue`
--

DROP TABLE IF EXISTS `judge_generalissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_generalissue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_generalissue`
--

LOCK TABLES `judge_generalissue` WRITE;
/*!40000 ALTER TABLE `judge_generalissue` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_generalissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge`
--

DROP TABLE IF EXISTS `judge_judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `auth_key` varchar(100) NOT NULL,
  `is_blocked` tinyint(1) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `ping` double DEFAULT NULL,
  `load` double DEFAULT NULL,
  `description` longtext NOT NULL,
  `last_ip` char(39) DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL,
  `tier` int(10) unsigned NOT NULL CHECK (`tier` >= 0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge`
--

LOCK TABLES `judge_judge` WRITE;
/*!40000 ALTER TABLE `judge_judge` DISABLE KEYS */;
INSERT INTO `judge_judge` VALUES
(1,'ooo','2025-04-30 06:13:35.301101','VwqTuG8W5W8cywrzszAyghfV7TODJmRNcJ0qzUic8q0rQbYPEzDJH+foDWB89NTFNajmcJAik6d8xL7waNnS3SHCTKOhUAeZc0Ep',0,1,'2025-05-01 04:16:29.154212',0.0007623036702473959,0.015950520833333332,'','127.0.0.1',0,1);
/*!40000 ALTER TABLE `judge_judge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge_problems`
--

DROP TABLE IF EXISTS `judge_judge_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judge_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_judge_problems_judge_id_problem_id_7cc4b18b_uniq` (`judge_id`,`problem_id`),
  KEY `judge_judge_problems_problem_id_fa0f569c_fk_judge_problem_id` (`problem_id`),
  CONSTRAINT `judge_judge_problems_judge_id_e0c28fa3_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_judge_problems_problem_id_fa0f569c_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge_problems`
--

LOCK TABLES `judge_judge_problems` WRITE;
/*!40000 ALTER TABLE `judge_judge_problems` DISABLE KEYS */;
INSERT INTO `judge_judge_problems` VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(5,1,4);
/*!40000 ALTER TABLE `judge_judge_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge_runtimes`
--

DROP TABLE IF EXISTS `judge_judge_runtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge_runtimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judge_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_judge_runtimes_judge_id_language_id_ececbd6e_uniq` (`judge_id`,`language_id`),
  KEY `judge_judge_runtimes_language_id_9575fc7b_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_judge_runtimes_judge_id_770ad6a5_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_judge_runtimes_language_id_9575fc7b_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge_runtimes`
--

LOCK TABLES `judge_judge_runtimes` WRITE;
/*!40000 ALTER TABLE `judge_judge_runtimes` DISABLE KEYS */;
INSERT INTO `judge_judge_runtimes` VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8),
(9,1,9),
(10,1,10),
(11,1,11),
(12,1,12),
(13,1,13),
(14,1,14),
(15,1,15),
(16,1,16),
(17,1,17),
(18,1,18);
/*!40000 ALTER TABLE `judge_judge_runtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_language`
--

DROP TABLE IF EXISTS `judge_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `common_name` varchar(20) NOT NULL,
  `ace` varchar(20) NOT NULL,
  `pygments` varchar(20) NOT NULL,
  `template` longtext NOT NULL,
  `info` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `extension` varchar(10) NOT NULL,
  `file_only` tinyint(1) NOT NULL,
  `file_size_limit` int(11) NOT NULL,
  `include_in_problem` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_language`
--

LOCK TABLES `judge_language` WRITE;
/*!40000 ALTER TABLE `judge_language` DISABLE KEYS */;
INSERT INTO `judge_language` VALUES
(1,'CPP03','C++03','C++03','C++','c_cpp','cpp','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    ios_base::sync_with_stdio(false);\r\n    cin.tie(NULL);\r\n    \r\n    return 0;\r\n}','','Compile options: `g++ -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','cpp',0,0,1),
(2,'CPP11','C++11','C++11','C++','c_cpp','cpp','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    ios_base::sync_with_stdio(false);\r\n    cin.tie(NULL);\r\n    \r\n    return 0;\r\n}','','Compile options: `g++ -std=c++11 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','cpp',0,0,1),
(3,'CPP14','C++14','C++14','C++','c_cpp','cpp','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    ios_base::sync_with_stdio(false);\r\n    cin.tie(NULL);\r\n    \r\n    return 0;\r\n}','','Compile options: `g++ -std=c++14 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','cpp',0,0,1),
(4,'CPP17','C++17','C++17','C++','c_cpp','cpp','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    ios_base::sync_with_stdio(false);\r\n    cin.tie(NULL);\r\n    \r\n    return 0;\r\n}','','Compile options: `g++ -std=c++17 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','cpp',0,0,1),
(5,'C','C',NULL,'C','c_cpp','c','#include <stdio.h>\r\n\r\nint main() {\r\n    return 0;\r\n}','','Compile options: `gcc -std=c99 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','c',0,0,1),
(6,'C11','C11',NULL,'C','c_cpp','cpp','#include <stdio.h>\r\n\r\nint main() {\r\n    return 0;\r\n}','','Compile options: `gcc -std=c11 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','c',0,0,1),
(7,'PAS','Pascal',NULL,'Pascal','pascal','pascal','','','Compile options: `fpc -Fe/dev/stderr -O2`','pas',0,0,1),
(8,'PY2','Python 2',NULL,'Python','python','python','','','Compile options: `python -m compileall -q`','py',0,0,1),
(9,'PY3','Python 3',NULL,'Python','python','python3','','','Compile options: `python3 -m compileall -q`','py',0,0,1),
(10,'JAVA8','Java 8',NULL,'Java','java','java','import java.io.*;\r\nimport java.util.*;\r\n\r\npublic class Main {\r\n    public static void main(String[] args) {\r\n\r\n    }\r\n}','','Compile options: `javac8 -encoding UTF-8 -profile compact1`','java',0,0,1),
(11,'TEXT','TEXT','TEXT','TEXT','text','text','','','Run options: `cat`','txt',0,0,0),
(12,'SCRATCH','Scratch',NULL,'Scratch','text','text','','','Check options: `scratch-run --check`','sb3',1,1,1),
(13,'OUTPUT','Output Only',NULL,'Output Only','text','text','','','','zip',1,10,0),
(14,'CPP20','C++20','C++20','C++','c_cpp','cpp','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    ios_base::sync_with_stdio(false);\r\n    cin.tie(NULL);\r\n    \r\n    return 0;\r\n}','','Compile options: `g++ -std=c++20 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -s`','cpp',0,0,1),
(15,'KOTLIN','Kotlin',NULL,'Kotlin','kotlin','kotlin','','','Compile options: `kotlinc -include-runtime`','kt',0,0,1),
(16,'PYPY','PyPy 2','PYPY2','PyPy','python','python','','','Compile options: `pypy -m compileall -q`','py',0,0,1),
(17,'PYPY3','PyPy 3',NULL,'PyPy','python','python','','','Compile options: `pypy3 -m compileall -q`','py',0,0,1),
(18,'JAVA','Java 19',NULL,'Java','java','java','import java.io.*;\r\nimport java.util.*;\r\n\r\npublic class Main {\r\n    public static void main(String[] args) {\r\n\r\n    }\r\n}','','Compile options: `javac19 -encoding UTF-8`','java',0,0,1);
/*!40000 ALTER TABLE `judge_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_languagelimit`
--

DROP TABLE IF EXISTS `judge_languagelimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_languagelimit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_limit` double NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_languagelimit_problem_id_language_id_fbd3d3fc_uniq` (`problem_id`,`language_id`),
  KEY `judge_languagelimit_language_id_b81fe043_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_languagelimit_language_id_b81fe043_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_languagelimit_problem_id_bb544679_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_languagelimit`
--

LOCK TABLES `judge_languagelimit` WRITE;
/*!40000 ALTER TABLE `judge_languagelimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_languagelimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_license`
--

DROP TABLE IF EXISTS `judge_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(20) NOT NULL,
  `link` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `display` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_license`
--

LOCK TABLES `judge_license` WRITE;
/*!40000 ALTER TABLE `judge_license` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_miscconfig`
--

DROP TABLE IF EXISTS `judge_miscconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_miscconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_miscconfig_key_bb230360` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_miscconfig`
--

LOCK TABLES `judge_miscconfig` WRITE;
/*!40000 ALTER TABLE `judge_miscconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_miscconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_navigationbar`
--

DROP TABLE IF EXISTS `judge_navigationbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_navigationbar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(10) unsigned NOT NULL CHECK (`order` >= 0),
  `key` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `regex` longtext NOT NULL,
  `lft` int(10) unsigned NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) unsigned NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) unsigned NOT NULL CHECK (`tree_id` >= 0),
  `level` int(10) unsigned NOT NULL CHECK (`level` >= 0),
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `judge_navigationbar_order_48c84306` (`order`),
  KEY `judge_navigationbar_tree_id_e12b3b53` (`tree_id`),
  KEY `judge_navigationbar_parent_id_806f64e3` (`parent_id`),
  CONSTRAINT `judge_navigationbar_parent_id_806f64e3_fk_judge_navigationbar_id` FOREIGN KEY (`parent_id`) REFERENCES `judge_navigationbar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_navigationbar`
--

LOCK TABLES `judge_navigationbar` WRITE;
/*!40000 ALTER TABLE `judge_navigationbar` DISABLE KEYS */;
INSERT INTO `judge_navigationbar` VALUES
(1,1,'problems','PRoblems','/problems/','^/problem',1,2,1,0,NULL),
(2,2,'submit','Submissions','/submissions/','^/submi|^/src/',1,2,2,0,NULL),
(3,3,'user','Users','/users/','^/user',1,2,3,0,NULL),
(4,4,'contest','Contests','/contests/','^/contest',1,2,4,0,NULL),
(5,5,'about','About','/about/','^/about/$',1,8,5,0,NULL),
(6,6,'status','Judges','/status/','^/status/$|^/judge/',2,3,5,1,5),
(7,7,'checkers','Custom Checkers','/custom_checkers/','^/custom_checkers/$',4,5,5,1,5),
(8,8,'github','Github','https://github.com/VNOI-Admin/OJ','^https://github.com/VNOI-Admin/OJ$',6,7,5,1,5);
/*!40000 ALTER TABLE `judge_navigationbar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organization`
--

DROP TABLE IF EXISTS `judge_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `short_name` varchar(20) NOT NULL,
  `about` longtext NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `slots` int(11) DEFAULT NULL,
  `access_code` varchar(7) DEFAULT NULL,
  `logo_override_image` varchar(150) NOT NULL,
  `performance_points` double NOT NULL,
  `member_count` int(11) NOT NULL,
  `is_unlisted` tinyint(1) NOT NULL,
  `available_credit` double NOT NULL,
  `current_consumed_credit` double NOT NULL,
  `monthly_credit` double NOT NULL,
  `monthly_free_credit_limit` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_organization_slug_5e7161c5_uniq` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organization`
--

LOCK TABLES `judge_organization` WRITE;
/*!40000 ALTER TABLE `judge_organization` DISABLE KEYS */;
INSERT INTO `judge_organization` VALUES
(1,'VNOJ: Viet Nam Online Judge','vnoj','VNOJ','This is a sample organization. You can use organizations to split up your user base, host private contests, and more.','2017-12-02 08:50:25.199000',1,NULL,NULL,'',0,0,1,0,0,0,10800);
/*!40000 ALTER TABLE `judge_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organization_admins`
--

DROP TABLE IF EXISTS `judge_organization_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organization_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_organization_admin_organization_id_profile__7528cebe_uniq` (`organization_id`,`profile_id`),
  KEY `judge_organization_a_profile_id_b5559f11_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_organization_a_organization_id_b2125a57_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_organization_a_profile_id_b5559f11_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organization_admins`
--

LOCK TABLES `judge_organization_admins` WRITE;
/*!40000 ALTER TABLE `judge_organization_admins` DISABLE KEYS */;
INSERT INTO `judge_organization_admins` VALUES
(1,1,1);
/*!40000 ALTER TABLE `judge_organization_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organizationmonthlyusage`
--

DROP TABLE IF EXISTS `judge_organizationmonthlyusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organizationmonthlyusage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date NOT NULL,
  `consumed_credit` double NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_organizationmonthl_organization_id_time_2bfbd371_uniq` (`organization_id`,`time`),
  CONSTRAINT `judge_organizationmo_organization_id_df11ac98_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organizationmonthlyusage`
--

LOCK TABLES `judge_organizationmonthlyusage` WRITE;
/*!40000 ALTER TABLE `judge_organizationmonthlyusage` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_organizationmonthlyusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organizationrequest`
--

DROP TABLE IF EXISTS `judge_organizationrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organizationrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `state` varchar(1) NOT NULL,
  `reason` longtext NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_organizationrequest_user_id_b721da81_fk_judge_profile_id` (`user_id`),
  KEY `judge_organizationre_organization_id_e2ab3e9a_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_organizationre_organization_id_e2ab3e9a_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_organizationrequest_user_id_b721da81_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organizationrequest`
--

LOCK TABLES `judge_organizationrequest` WRITE;
/*!40000 ALTER TABLE `judge_organizationrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_organizationrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem`
--

DROP TABLE IF EXISTS `judge_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `time_limit` double NOT NULL,
  `memory_limit` int(10) unsigned NOT NULL,
  `short_circuit` tinyint(1) NOT NULL,
  `points` double NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_manually_managed` tinyint(1) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `og_image` varchar(150) NOT NULL,
  `summary` longtext NOT NULL,
  `user_count` int(11) NOT NULL,
  `ac_rate` double NOT NULL,
  `is_organization_private` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `is_full_markup` tinyint(1) NOT NULL,
  `pdf_url` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `suggester_id` int(11) DEFAULT NULL,
  `submission_source_visibility_mode` varchar(1) NOT NULL,
  `testcase_visibility_mode` varchar(1) NOT NULL,
  `allow_view_feedback` tinyint(1) NOT NULL,
  `testcase_result_visibility_mode` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `judge_problem_group_id_1b7ca650_fk_judge_problemgroup_id` (`group_id`),
  KEY `judge_problem_license_id_32ca8b1a_fk_judge_license_id` (`license_id`),
  KEY `judge_problem_name_c48e19b2` (`name`),
  KEY `judge_problem_is_public_c5da02a8` (`is_public`),
  KEY `judge_problem_is_manually_managed_56d3b634` (`is_manually_managed`),
  KEY `judge_problem_date_f1f729a4` (`date`),
  KEY `judge_problem_source_8a196bf6` (`source`),
  KEY `judge_problem_suggester_id_3f45cefa_fk_judge_profile_id` (`suggester_id`),
  CONSTRAINT `judge_problem_group_id_1b7ca650_fk_judge_problemgroup_id` FOREIGN KEY (`group_id`) REFERENCES `judge_problemgroup` (`id`),
  CONSTRAINT `judge_problem_license_id_32ca8b1a_fk_judge_license_id` FOREIGN KEY (`license_id`) REFERENCES `judge_license` (`id`),
  CONSTRAINT `judge_problem_suggester_id_3f45cefa_fk_judge_profile_id` FOREIGN KEY (`suggester_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_problem_memory_limit_a129f739_check` CHECK (`memory_limit` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem`
--

LOCK TABLES `judge_problem` WRITE;
/*!40000 ALTER TABLE `judge_problem` DISABLE KEYS */;
INSERT INTO `judge_problem` VALUES
(1,'aplusb','A Plus B','Tudor is sitting in math class, on his laptop. Clearly, he is not paying attention in this situation. However, he gets called on by his math teacher to do some problems. Since his math teacher did not expect much from Tudor, he only needs to do some simple addition problems. However, simple for you and I may not be simple for Tudor, so please help him!\n\n## Input Specification\n\nThe first line will contain an integer ~N~ (~1 \\le N \\le 100\\,000~), the number of addition problems Tudor needs to do. The next ~N~ lines will each contain two space-separated integers whose absolute value is less than ~1\\,000\\,000\\,000~, the two integers Tudor needs to add.\n\n## Output Specification\n\nOutput ~N~ lines of one integer each, the solutions to the addition problems in order.\n\n## Sample Input\n\n    2\n    1 1\n    -1 0\n\n## Sample Output\n\n    2\n    -1',2,65536,0,5,1,1,0,'2017-12-02 05:00:00.000000','','',1,100,0,1,NULL,0,'','',NULL,'F','O',0,'A'),
(2,'bbbb','Thu thoi','',1,262144,0,1,1,0,0,'2025-04-30 04:59:59.534362','','',0,0,0,1,NULL,0,'','',NULL,'F','O',0,'A'),
(3,'nddnd','aaaa','aaa',1,262144,0,1,1,0,0,'2025-05-01 04:19:01.972283','','',1,100,0,1,NULL,0,'','',NULL,'F','O',0,'A'),
(4,'beginner_045','Sắp xếp sinh viên','Một sinh viên có các thống số sau:\r\n\r\n* Mã sinh viên (có 8 ký tự số)\r\n* Tên sinh viên (nhiều hơn 5 ký tự và không quá 30 ký tự bao gồm ký tự trắng)\r\n* Điểm GPA (là số thực nằm trong khoảng từ 0 đến 4)\r\n\r\nCho ~n~ thông tin sinh viên đã chuẩn.\r\n\r\nHãy sắp xếp lại danh sách sinh viên theo thứ tự tăng dần của điểm GPA\r\n\r\n## INPUT:\r\n* Một dòng duy nhất chứa số nguyên ~n~.\r\n* Tiếp theo là ~3 * n~ dòng chứa thông tin của n sinh viên. Mỗi thông tin của sinh viên sẽ lưu trên một dòng\r\n\r\n## OUTPUT:\r\n- In ra mã số sinh viên theo điểm GPA tăng dần, nếu GPA giống nhau thì vẫn giữ thứ tự lúc nhận vào\r\n\r\n\r\n## Input:\r\n```plain\r\n2\r\n21223344\r\nNguyen Hoang Duong\r\n2.1\r\n24334475\r\nBui Minh Duc\r\n3.2\r\n```\r\n\r\n## Output:\r\n```plain\r\n21223344 24334475\r\n```\r\n\r\n\r\n## Giới hạn:\r\n* ~0 \\le n \\le 1000~',0.01,262144,0,1,1,1,0,'2025-05-01 04:22:49.000000','','',1,100,0,1,NULL,0,'','',NULL,'F','O',0,'A');
/*!40000 ALTER TABLE `judge_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_allowed_languages`
--

DROP TABLE IF EXISTS `judge_problem_allowed_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_allowed_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_allowed_la_problem_id_language_id_f6265ceb_uniq` (`problem_id`,`language_id`),
  KEY `judge_problem_allowe_language_id_67ad291b_fk_judge_lan` (`language_id`),
  CONSTRAINT `judge_problem_allowe_language_id_67ad291b_fk_judge_lan` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_problem_allowe_problem_id_1020494d_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_allowed_languages`
--

LOCK TABLES `judge_problem_allowed_languages` WRITE;
/*!40000 ALTER TABLE `judge_problem_allowed_languages` DISABLE KEYS */;
INSERT INTO `judge_problem_allowed_languages` VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8),
(9,1,9),
(10,1,10),
(11,2,1),
(12,2,2),
(13,2,3),
(14,2,4),
(15,2,5),
(16,2,6),
(17,2,7),
(18,2,8),
(19,2,9),
(20,2,10),
(21,2,12),
(22,2,14),
(23,2,15),
(24,2,16),
(25,2,17),
(26,2,18),
(27,3,1),
(28,3,2),
(29,3,3),
(30,3,4),
(31,3,5),
(32,3,6),
(33,3,7),
(34,3,8),
(35,3,9),
(36,3,10),
(37,3,12),
(38,3,14),
(39,3,15),
(40,3,16),
(41,3,17),
(42,3,18),
(43,4,1),
(44,4,2),
(45,4,3),
(46,4,4),
(47,4,5),
(48,4,6),
(49,4,7),
(50,4,8),
(51,4,9),
(52,4,10),
(53,4,12),
(54,4,14),
(55,4,15),
(56,4,16),
(57,4,17),
(58,4,18);
/*!40000 ALTER TABLE `judge_problem_allowed_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_authors`
--

DROP TABLE IF EXISTS `judge_problem_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_authors_problem_id_profile_id_4c5741b5_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_authors_profile_id_e9577295_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_authors_problem_id_e7c69267_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_authors_profile_id_e9577295_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_authors`
--

LOCK TABLES `judge_problem_authors` WRITE;
/*!40000 ALTER TABLE `judge_problem_authors` DISABLE KEYS */;
INSERT INTO `judge_problem_authors` VALUES
(1,1,1);
/*!40000 ALTER TABLE `judge_problem_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_banned_users`
--

DROP TABLE IF EXISTS `judge_problem_banned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_banned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_banned_users_problem_id_profile_id_068a01f9_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_banned_profile_id_4dcfff77_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_problem_banned_problem_id_f5f73ac2_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_banned_profile_id_4dcfff77_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_banned_users`
--

LOCK TABLES `judge_problem_banned_users` WRITE;
/*!40000 ALTER TABLE `judge_problem_banned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_banned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_curators`
--

DROP TABLE IF EXISTS `judge_problem_curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_curators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_curators_problem_id_profile_id_daffe335_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_curators_profile_id_46e87efb_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_curators_problem_id_6babca8c_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_curators_profile_id_46e87efb_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_curators`
--

LOCK TABLES `judge_problem_curators` WRITE;
/*!40000 ALTER TABLE `judge_problem_curators` DISABLE KEYS */;
INSERT INTO `judge_problem_curators` VALUES
(1,2,2),
(2,3,2),
(3,4,2);
/*!40000 ALTER TABLE `judge_problem_curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_organizations`
--

DROP TABLE IF EXISTS `judge_problem_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_organizati_problem_id_organization__2745924c_uniq` (`problem_id`,`organization_id`),
  KEY `judge_problem_organi_organization_id_0eb88735_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_problem_organi_organization_id_0eb88735_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_problem_organi_problem_id_d3edc28b_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_organizations`
--

LOCK TABLES `judge_problem_organizations` WRITE;
/*!40000 ALTER TABLE `judge_problem_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_testers`
--

DROP TABLE IF EXISTS `judge_problem_testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_testers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_testers_problem_id_profile_id_3ff28b2a_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_testers_profile_id_dadcfbad_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_testers_problem_id_0796300b_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_testers_profile_id_dadcfbad_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_testers`
--

LOCK TABLES `judge_problem_testers` WRITE;
/*!40000 ALTER TABLE `judge_problem_testers` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_types`
--

DROP TABLE IF EXISTS `judge_problem_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `problemtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_types_problem_id_problemtype_id_db67c44c_uniq` (`problem_id`,`problemtype_id`),
  KEY `judge_problem_types_problemtype_id_f51f1eea_fk_judge_pro` (`problemtype_id`),
  CONSTRAINT `judge_problem_types_problem_id_1c63e65f_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_types_problemtype_id_f51f1eea_fk_judge_pro` FOREIGN KEY (`problemtype_id`) REFERENCES `judge_problemtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_types`
--

LOCK TABLES `judge_problem_types` WRITE;
/*!40000 ALTER TABLE `judge_problem_types` DISABLE KEYS */;
INSERT INTO `judge_problem_types` VALUES
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1);
/*!40000 ALTER TABLE `judge_problem_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemclarification`
--

DROP TABLE IF EXISTS `judge_problemclarification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemclarification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_problemclarifi_problem_id_3d9eb049_fk_judge_pro` (`problem_id`),
  CONSTRAINT `judge_problemclarifi_problem_id_3d9eb049_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemclarification`
--

LOCK TABLES `judge_problemclarification` WRITE;
/*!40000 ALTER TABLE `judge_problemclarification` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemclarification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemdata`
--

DROP TABLE IF EXISTS `judge_problemdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zipfile` varchar(100) DEFAULT NULL,
  `generator` varchar(100) DEFAULT NULL,
  `output_prefix` int(11) DEFAULT NULL,
  `output_limit` int(11) DEFAULT NULL,
  `feedback` longtext NOT NULL,
  `checker` varchar(10) NOT NULL,
  `checker_args` longtext NOT NULL,
  `problem_id` int(11) NOT NULL,
  `custom_checker` varchar(100) DEFAULT NULL,
  `custom_grader` varchar(100) DEFAULT NULL,
  `custom_header` varchar(100) DEFAULT NULL,
  `grader` varchar(30) NOT NULL,
  `grader_args` longtext NOT NULL,
  `nobigmath` tinyint(1) DEFAULT NULL,
  `unicode` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_id` (`problem_id`),
  CONSTRAINT `judge_problemdata_problem_id_d825e6f8_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemdata`
--

LOCK TABLES `judge_problemdata` WRITE;
/*!40000 ALTER TABLE `judge_problemdata` DISABLE KEYS */;
INSERT INTO `judge_problemdata` VALUES
(1,'aplusb/aaa.zip','',NULL,NULL,'','standard','',1,'','','','standard','{}',NULL,NULL),
(2,'bbbb/bbb.zip','',NULL,NULL,'','standard','',2,'','','','standard','{}',NULL,NULL),
(3,'nddnd/Archive.zip','',NULL,NULL,'','standard','',3,'','','','standard','{}',NULL,NULL),
(4,'beginner_045/Archive1.zip','',NULL,NULL,'','standard','',4,'','','','standard','{}',NULL,NULL);
/*!40000 ALTER TABLE `judge_problemdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemgroup`
--

DROP TABLE IF EXISTS `judge_problemgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemgroup`
--

LOCK TABLES `judge_problemgroup` WRITE;
/*!40000 ALTER TABLE `judge_problemgroup` DISABLE KEYS */;
INSERT INTO `judge_problemgroup` VALUES
(1,'Uncategorized','Chưa phân loại');
/*!40000 ALTER TABLE `judge_problemgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtestcase`
--

DROP TABLE IF EXISTS `judge_problemtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtestcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `input_file` varchar(100) NOT NULL,
  `output_file` varchar(100) NOT NULL,
  `generator_args` longtext NOT NULL,
  `points` int(11) DEFAULT NULL,
  `is_pretest` tinyint(1) NOT NULL,
  `output_prefix` int(11) DEFAULT NULL,
  `output_limit` int(11) DEFAULT NULL,
  `checker` varchar(10) NOT NULL,
  `checker_args` longtext NOT NULL,
  `dataset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_problemtestcase_dataset_id_964229fd_fk_judge_problem_id` (`dataset_id`),
  CONSTRAINT `judge_problemtestcase_dataset_id_964229fd_fk_judge_problem_id` FOREIGN KEY (`dataset_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtestcase`
--

LOCK TABLES `judge_problemtestcase` WRITE;
/*!40000 ALTER TABLE `judge_problemtestcase` DISABLE KEYS */;
INSERT INTO `judge_problemtestcase` VALUES
(1,1,'C','aaa /1.in','aaa /1.out','',1,0,NULL,NULL,'','',1),
(2,1,'C','1.in','1.out','',1,0,NULL,NULL,'','',2),
(3,51,'C','1.in','1.out','',1,0,NULL,NULL,'','',3),
(4,52,'C','2.in','2.out','',1,0,NULL,NULL,'','',3),
(5,53,'C','3.in','3.out','',1,0,NULL,NULL,'','',3),
(6,54,'C','4.in','4.out','',1,0,NULL,NULL,'','',3),
(7,55,'C','5.in','5.out','',1,0,NULL,NULL,'','',3),
(8,56,'C','6.in','6.out','',1,0,NULL,NULL,'','',3),
(9,57,'C','7.in','7.out','',1,0,NULL,NULL,'','',3),
(10,58,'C','8.in','8.out','',1,0,NULL,NULL,'','',3),
(11,59,'C','9.in','9.out','',1,0,NULL,NULL,'','',3),
(12,60,'C','10.in','10.out','',1,0,NULL,NULL,'','',3),
(13,61,'C','11.in','11.out','',1,0,NULL,NULL,'','',3),
(14,62,'C','12.in','12.out','',1,0,NULL,NULL,'','',3),
(15,63,'C','13.in','13.out','',1,0,NULL,NULL,'','',3),
(16,64,'C','14.in','14.out','',1,0,NULL,NULL,'','',3),
(17,65,'C','15.in','15.out','',1,0,NULL,NULL,'','',3),
(18,66,'C','16.in','16.out','',1,0,NULL,NULL,'','',3),
(19,67,'C','17.in','17.out','',1,0,NULL,NULL,'','',3),
(20,68,'C','18.in','18.out','',1,0,NULL,NULL,'','',3),
(21,69,'C','19.in','19.out','',1,0,NULL,NULL,'','',3),
(22,70,'C','20.in','20.out','',1,0,NULL,NULL,'','',3),
(23,71,'C','21.in','21.out','',1,0,NULL,NULL,'','',3),
(24,72,'C','22.in','22.out','',1,0,NULL,NULL,'','',3),
(25,73,'C','23.in','23.out','',1,0,NULL,NULL,'','',3),
(26,74,'C','24.in','24.out','',1,0,NULL,NULL,'','',3),
(27,75,'C','25.in','25.out','',1,0,NULL,NULL,'','',3),
(28,76,'C','26.in','26.out','',1,0,NULL,NULL,'','',3),
(29,77,'C','27.in','27.out','',1,0,NULL,NULL,'','',3),
(30,78,'C','28.in','28.out','',1,0,NULL,NULL,'','',3),
(31,79,'C','29.in','29.out','',1,0,NULL,NULL,'','',3),
(32,80,'C','30.in','30.out','',1,0,NULL,NULL,'','',3),
(33,81,'C','31.in','31.out','',1,0,NULL,NULL,'','',3),
(34,82,'C','32.in','32.out','',1,0,NULL,NULL,'','',3),
(35,83,'C','33.in','33.out','',1,0,NULL,NULL,'','',3),
(36,84,'C','34.in','34.out','',1,0,NULL,NULL,'','',3),
(37,85,'C','35.in','35.out','',1,0,NULL,NULL,'','',3),
(38,86,'C','36.in','36.out','',1,0,NULL,NULL,'','',3),
(39,87,'C','37.in','37.out','',1,0,NULL,NULL,'','',3),
(40,88,'C','38.in','38.out','',1,0,NULL,NULL,'','',3),
(41,89,'C','39.in','39.out','',1,0,NULL,NULL,'','',3),
(42,90,'C','40.in','40.out','',1,0,NULL,NULL,'','',3),
(43,91,'C','41.in','41.out','',1,0,NULL,NULL,'','',3),
(44,92,'C','42.in','42.out','',1,0,NULL,NULL,'','',3),
(45,93,'C','43.in','43.out','',1,0,NULL,NULL,'','',3),
(46,94,'C','44.in','44.out','',1,0,NULL,NULL,'','',3),
(47,95,'C','45.in','45.out','',1,0,NULL,NULL,'','',3),
(48,96,'C','46.in','46.out','',1,0,NULL,NULL,'','',3),
(49,97,'C','47.in','47.out','',1,0,NULL,NULL,'','',3),
(50,98,'C','48.in','48.out','',1,0,NULL,NULL,'','',3),
(51,99,'C','49.in','49.out','',1,0,NULL,NULL,'','',3),
(52,100,'C','50.in','50.out','',1,0,NULL,NULL,'','',3),
(53,11,'C','test1.in','test1.out','',1,0,NULL,NULL,'','',4),
(54,12,'C','test2.in','test2.out','',1,0,NULL,NULL,'','',4),
(55,13,'C','test3.in','test3.out','',1,0,NULL,NULL,'','',4),
(56,14,'C','test4.in','test4.out','',1,0,NULL,NULL,'','',4),
(57,15,'C','test5.in','test5.out','',1,0,NULL,NULL,'','',4),
(58,16,'C','test6.in','test6.out','',1,0,NULL,NULL,'','',4),
(59,17,'C','test7.in','test7.out','',1,0,NULL,NULL,'','',4),
(60,18,'C','test8.in','test8.out','',1,0,NULL,NULL,'','',4),
(61,19,'C','test9.in','test9.out','',1,0,NULL,NULL,'','',4),
(62,20,'C','test10.in','test10.out','',1,0,NULL,NULL,'','',4);
/*!40000 ALTER TABLE `judge_problemtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtranslation`
--

DROP TABLE IF EXISTS `judge_problemtranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtranslation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(7) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problemtranslation_problem_id_language_ed6ab873_uniq` (`problem_id`,`language`),
  KEY `judge_problemtranslation_name_3bfcdd8c` (`name`),
  CONSTRAINT `judge_problemtranslation_problem_id_7acb27a7_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtranslation`
--

LOCK TABLES `judge_problemtranslation` WRITE;
/*!40000 ALTER TABLE `judge_problemtranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemtranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtype`
--

DROP TABLE IF EXISTS `judge_problemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtype`
--

LOCK TABLES `judge_problemtype` WRITE;
/*!40000 ALTER TABLE `judge_problemtype` DISABLE KEYS */;
INSERT INTO `judge_problemtype` VALUES
(1,'uncategorized','Chưa phân loại');
/*!40000 ALTER TABLE `judge_problemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_profile`
--

DROP TABLE IF EXISTS `judge_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` longtext DEFAULT NULL,
  `timezone` varchar(50) NOT NULL,
  `points` double NOT NULL,
  `performance_points` double NOT NULL,
  `problem_count` int(11) NOT NULL,
  `ace_theme` varchar(30) NOT NULL,
  `last_access` datetime(6) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `display_rank` varchar(10) NOT NULL,
  `mute` tinyint(1) NOT NULL,
  `is_unlisted` tinyint(1) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `user_script` longtext NOT NULL,
  `math_engine` varchar(4) NOT NULL,
  `is_totp_enabled` tinyint(1) NOT NULL,
  `totp_key` longblob DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `current_contest_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_token` varchar(64) DEFAULT NULL,
  `is_webauthn_enabled` tinyint(1) NOT NULL,
  `data_last_downloaded` datetime(6) DEFAULT NULL,
  `scratch_codes` longblob DEFAULT NULL,
  `contribution_points` int(11) NOT NULL,
  `allow_tagging` tinyint(1) NOT NULL,
  `last_totp_timecode` int(11) NOT NULL,
  `ban_reason` longtext DEFAULT NULL,
  `username_display_override` varchar(100) NOT NULL,
  `display_badge_id` int(11) DEFAULT NULL,
  `site_theme` varchar(10) NOT NULL,
  `vnoj_points` int(11) NOT NULL,
  `ip_auth` char(39) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `current_contest_id` (`current_contest_id`),
  UNIQUE KEY `ip_auth` (`ip_auth`),
  KEY `judge_profile_language_id_87d3cab1_fk_judge_language_id` (`language_id`),
  KEY `judge_profile_display_badge_id_dc30ad34_fk_judge_badge_id` (`display_badge_id`),
  KEY `judge_profi_is_unli_1410d8_idx` (`is_unlisted`,`performance_points` DESC),
  KEY `judge_profi_is_unli_d31e5b_idx` (`is_unlisted`,`contribution_points` DESC),
  KEY `judge_profi_is_unli_bcf16a_idx` (`is_unlisted`,`rating` DESC),
  KEY `judge_profi_is_unli_171bf3_idx` (`is_unlisted`,`problem_count` DESC),
  CONSTRAINT `judge_profile_current_contest_id_ca595142_fk_judge_con` FOREIGN KEY (`current_contest_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_profile_display_badge_id_dc30ad34_fk_judge_badge_id` FOREIGN KEY (`display_badge_id`) REFERENCES `judge_badge` (`id`),
  CONSTRAINT `judge_profile_language_id_87d3cab1_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_profile_user_id_b62d6977_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_profile`
--

LOCK TABLES `judge_profile` WRITE;
/*!40000 ALTER TABLE `judge_profile` DISABLE KEYS */;
INSERT INTO `judge_profile` VALUES
(1,'','Asia/Ho_Chi_Minh',0,0,0,'github','2017-12-02 08:57:10.093000','10.0.2.2','admin',0,0,NULL,'','auto',0,NULL,NULL,NULL,1,1,NULL,0,NULL,NULL,0,1,0,NULL,'',NULL,'light',0,NULL),
(2,NULL,'Asia/Ho_Chi_Minh',6,6.08514,2,'auto','2025-05-01 04:28:19.940044','192.168.1.8','user',0,0,NULL,'','auto',0,NULL,NULL,NULL,4,2,NULL,0,NULL,NULL,0,1,0,NULL,'',NULL,'light',0,NULL);
/*!40000 ALTER TABLE `judge_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_profile_badges`
--

DROP TABLE IF EXISTS `judge_profile_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_profile_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_profile_badges_profile_id_badge_id_5e1e5072_uniq` (`profile_id`,`badge_id`),
  KEY `judge_profile_badges_badge_id_ec2e6035_fk_judge_badge_id` (`badge_id`),
  CONSTRAINT `judge_profile_badges_badge_id_ec2e6035_fk_judge_badge_id` FOREIGN KEY (`badge_id`) REFERENCES `judge_badge` (`id`),
  CONSTRAINT `judge_profile_badges_profile_id_be0cef45_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_profile_badges`
--

LOCK TABLES `judge_profile_badges` WRITE;
/*!40000 ALTER TABLE `judge_profile_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_profile_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_profile_organizations`
--

DROP TABLE IF EXISTS `judge_profile_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_profile_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_value` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_profile_organizati_profile_id_organization__39a6d8b0_uniq` (`profile_id`,`organization_id`),
  KEY `judge_profile_organi_organization_id_da2a4d7d_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_profile_organi_organization_id_da2a4d7d_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_profile_organi_profile_id_6b79e464_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_profile_organizations`
--

LOCK TABLES `judge_profile_organizations` WRITE;
/*!40000 ALTER TABLE `judge_profile_organizations` DISABLE KEYS */;
INSERT INTO `judge_profile_organizations` VALUES
(1,1,1,1);
/*!40000 ALTER TABLE `judge_profile_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_rating`
--

DROP TABLE IF EXISTS `judge_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `last_rated` datetime(6) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `participation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mean` double NOT NULL,
  `performance` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `participation_id` (`participation_id`),
  UNIQUE KEY `judge_rating_user_id_contest_id_461d7897_uniq` (`user_id`,`contest_id`),
  KEY `judge_rating_contest_id_0e97ae8c_fk_judge_contest_id` (`contest_id`),
  KEY `judge_rating_last_rated_65ff05f9` (`last_rated`),
  CONSTRAINT `judge_rating_contest_id_0e97ae8c_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_rating_participation_id_c8cf9d76_fk_judge_con` FOREIGN KEY (`participation_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_rating_user_id_82072996_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_rating`
--

LOCK TABLES `judge_rating` WRITE;
/*!40000 ALTER TABLE `judge_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_runtimeversion`
--

DROP TABLE IF EXISTS `judge_runtimeversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_runtimeversion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `version` varchar(64) NOT NULL,
  `priority` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_runtimeversion_judge_id_96482e9d_fk_judge_judge_id` (`judge_id`),
  KEY `judge_runtimeversion_language_id_3ad8be59_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_runtimeversion_judge_id_96482e9d_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_runtimeversion_language_id_3ad8be59_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_runtimeversion`
--

LOCK TABLES `judge_runtimeversion` WRITE;
/*!40000 ALTER TABLE `judge_runtimeversion` DISABLE KEYS */;
INSERT INTO `judge_runtimeversion` VALUES
(106,'gcc','14.2.0',0,1,5),
(107,'gcc11','14.2.0',0,1,6),
(108,'g++','14.2.0',0,1,1),
(109,'g++11','14.2.0',0,1,2),
(110,'g++14','14.2.0',0,1,3),
(111,'g++17','14.2.0',0,1,4),
(112,'g++20','14.2.0',0,1,14),
(113,'javac','22.0.2',0,1,18),
(114,'javac','1.8.0',0,1,10),
(115,'kotlinc','2.1.20',0,1,15),
(116,'java','22.0.2',1,1,15),
(117,'cat','9.5',0,1,13),
(118,'fpc','3.2.2',0,1,7),
(119,'python','2.7.18',0,1,8),
(120,'python3','3.13.1',0,1,9),
(121,'pypy','7.3.19',0,1,16),
(122,'implementing python','2.7.18',1,1,16),
(123,'pypy3','7.3.19',0,1,17),
(124,'implementing python','3.11.11',1,1,17),
(125,'scratch-run','0.1.5',0,1,12),
(126,'cat','9.5',0,1,11);
/*!40000 ALTER TABLE `judge_runtimeversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_solution`
--

DROP TABLE IF EXISTS `judge_solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_solution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(1) NOT NULL,
  `publish_on` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_id` (`problem_id`),
  CONSTRAINT `judge_solution_problem_id_44bbf556_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_solution`
--

LOCK TABLES `judge_solution` WRITE;
/*!40000 ALTER TABLE `judge_solution` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_solution_authors`
--

DROP TABLE IF EXISTS `judge_solution_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_solution_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `solution_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_solution_authors_solution_id_profile_id_e45470e0_uniq` (`solution_id`,`profile_id`),
  KEY `judge_solution_authors_profile_id_685bd965_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_solution_authors_profile_id_685bd965_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_solution_authors_solution_id_eab0d5e6_fk_judge_solution_id` FOREIGN KEY (`solution_id`) REFERENCES `judge_solution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_solution_authors`
--

LOCK TABLES `judge_solution_authors` WRITE;
/*!40000 ALTER TABLE `judge_solution_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_solution_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submission`
--

DROP TABLE IF EXISTS `judge_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `time` double DEFAULT NULL,
  `memory` double DEFAULT NULL,
  `points` double DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `result` varchar(3) DEFAULT NULL,
  `error` longtext DEFAULT NULL,
  `current_testcase` int(11) NOT NULL,
  `batch` tinyint(1) NOT NULL,
  `case_points` double NOT NULL,
  `case_total` double NOT NULL,
  `is_pretested` tinyint(1) NOT NULL,
  `judged_on_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_object_id` int(11) DEFAULT NULL,
  `judged_date` datetime(6) DEFAULT NULL,
  `locked_after` datetime(6) DEFAULT NULL,
  `rejudged_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_submission_judged_on_id_ef7707ef_fk_judge_judge_id` (`judged_on_id`),
  KEY `judge_submission_date_14094309` (`date`),
  KEY `judge_submission_status_3f629ced` (`status`),
  KEY `judge_submi_problem_8d5e0a_idx` (`problem_id`,`user_id`,`points` DESC,`time` DESC),
  KEY `judge_submi_result_7a005c_idx` (`result`,`id` DESC),
  KEY `judge_submi_result_ba9a62_idx` (`result`,`language_id`,`id` DESC),
  KEY `judge_submi_languag_dfe850_idx` (`language_id`,`id` DESC),
  KEY `judge_submi_result_a77e42_idx` (`result`,`problem_id`),
  KEY `judge_submi_languag_380ab4_idx` (`language_id`,`problem_id`,`result`),
  KEY `judge_submi_problem_49f8ec_idx` (`problem_id`,`result`),
  KEY `judge_submi_user_id_650db3_idx` (`user_id`,`problem_id`,`result`),
  KEY `judge_submi_user_id_ec9a4b_idx` (`user_id`,`result`),
  KEY `judge_submi_contest_59fbe3_idx` (`contest_object_id`,`problem_id`,`user_id`,`points` DESC,`time` DESC),
  CONSTRAINT `judge_submission_contest_object_id_c5586240_fk_judge_contest_id` FOREIGN KEY (`contest_object_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_submission_judged_on_id_ef7707ef_fk_judge_judge_id` FOREIGN KEY (`judged_on_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_submission_language_id_48a75504_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_submission_problem_id_d2fabe38_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_submission_user_id_9764487f_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submission`
--

LOCK TABLES `judge_submission` WRITE;
/*!40000 ALTER TABLE `judge_submission` DISABLE KEYS */;
INSERT INTO `judge_submission` VALUES
(1,'2025-04-30 18:42:53.385273',0.002363631,3288,5,'D','AC','',2,0,1,1,0,1,4,1,2,NULL,'2025-04-30 18:42:53.770438',NULL,NULL),
(2,'2025-05-01 04:20:25.499506',0.002190332,1780,1,'D','AC','',51,0,50,50,0,1,4,3,2,NULL,'2025-05-01 04:20:25.662662',NULL,NULL),
(3,'2025-05-01 04:24:20.570781',0.002222264,1716,1,'D','AC','',11,0,10,10,0,1,4,4,2,NULL,'2025-05-01 04:24:20.708806',NULL,NULL);
/*!40000 ALTER TABLE `judge_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submissionsource`
--

DROP TABLE IF EXISTS `judge_submissionsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submissionsource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` longtext NOT NULL,
  `submission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `submission_id` (`submission_id`),
  CONSTRAINT `judge_submissionsour_submission_id_d4abc888_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submissionsource`
--

LOCK TABLES `judge_submissionsource` WRITE;
/*!40000 ALTER TABLE `judge_submissionsource` DISABLE KEYS */;
INSERT INTO `judge_submissionsource` VALUES
(1,'#include <iostream>\r\nusing namespace std;\r\n\r\nint main(){\r\n    int n;\r\n    cin >> n;\r\n    cout << 2 * n;\r\n    return 0;\r\n}',1),
(2,'#include <stdio.h>\r\n#include <string.h>\r\n\r\nint main() {\r\n    int a[256] = {0};\r\n    char s[100001];\r\n    fgets(s, sizeof(s), stdin);\r\n    s[strcspn(s, \"\\n\")] = \'\\0\';\r\n    int n = strlen(s);\r\n    for(int i = 0; i<n; i++){\r\n        int w = s[i];\r\n        a[w] = 1;\r\n    }\r\n    int p = 0;\r\n    for(int i = 0; i<256; i++){\r\n        if(a[i]){\r\n            ++p;\r\n        }\r\n    }\r\n    printf(\"%d\", p);\r\n    return 0;\r\n}',2),
(3,'#include<stdio.h>\r\n#include<string.h>\r\n\r\nstruct sinhvien{\r\n    char ma[9];\r\n    char ten[31];\r\n    double gpa;\r\n};\r\n\r\nint main(){\r\n    int n;\r\n    scanf(\"%d\",&n);\r\n    struct sinhvien sv[n];\r\n    for(int i=0; i<n; i++){\r\n        scanf(\"%s\",sv[i].ma);\r\n        getchar();\r\n        fgets(sv[i].ten, sizeof(sv[i].ten),stdin);\r\n        sv[i].ten[strcspn(sv[i].ten,\"\\n\")] = \'\\0\';\r\n        scanf(\"%lf\",&sv[i].gpa);\r\n    }\r\n    for(int i=0; i<n; i++){\r\n        for(int j=i+1; j<n; j++){\r\n            if(sv[i].gpa > sv[j].gpa){\r\n                struct sinhvien nho = sv[i];\r\n                sv[i] = sv[j];\r\n                sv[j] = nho;\r\n            }\r\n        }\r\n        printf(\"%s \",sv[i].ma);\r\n    }\r\n}',3);
/*!40000 ALTER TABLE `judge_submissionsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submissiontestcase`
--

DROP TABLE IF EXISTS `judge_submissiontestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submissiontestcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case` int(11) NOT NULL,
  `status` varchar(3) NOT NULL,
  `time` double DEFAULT NULL,
  `memory` double DEFAULT NULL,
  `points` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `feedback` varchar(50) NOT NULL,
  `extended_feedback` longtext NOT NULL,
  `output` longtext NOT NULL,
  `submission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_submissiontestcase_submission_id_case_7aba3b7b_uniq` (`submission_id`,`case`),
  CONSTRAINT `judge_submissiontest_submission_id_a69f2d0e_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submissiontestcase`
--

LOCK TABLES `judge_submissiontestcase` WRITE;
/*!40000 ALTER TABLE `judge_submissiontestcase` DISABLE KEYS */;
INSERT INTO `judge_submissiontestcase` VALUES
(1,1,'AC',0.002363631,3288,1,1,NULL,'','1 token(s)','4',1),
(2,1,'AC',0.001941318,1540,1,1,NULL,'','1 token(s)','59',2),
(3,2,'AC',0.001714132,1668,1,1,NULL,'','1 token(s)','13',2),
(4,3,'AC',0.001721469,1520,1,1,NULL,'','1 token(s)','15',2),
(5,4,'AC',0.00216672,1476,1,1,NULL,'','1 token(s)','14',2),
(6,5,'AC',0.001844357,1540,1,1,NULL,'','1 token(s)','29',2),
(7,6,'AC',0.001749226,1660,1,1,NULL,'','1 token(s)','41',2),
(8,7,'AC',0.00208818,1540,1,1,NULL,'','1 token(s)','36',2),
(9,8,'AC',0.001808122,1536,1,1,NULL,'','1 token(s)','51',2),
(10,9,'AC',0.00172237,1648,1,1,NULL,'','1 token(s)','62',2),
(11,10,'AC',0.001666058,1540,1,1,NULL,'','1 token(s)','15',2),
(12,11,'AC',0.001829881,1568,1,1,NULL,'','1 token(s)','25',2),
(13,12,'AC',0.001707413,1664,1,1,NULL,'','1 token(s)','34',2),
(14,13,'AC',0.001727004,1656,1,1,NULL,'','1 token(s)','49',2),
(15,14,'AC',0.002115925,1644,1,1,NULL,'','1 token(s)','17',2),
(16,15,'AC',0.001727383,1668,1,1,NULL,'','1 token(s)','53',2),
(17,16,'AC',0.001719458,1540,1,1,NULL,'','1 token(s)','22',2),
(18,17,'AC',0.001732476,1536,1,1,NULL,'','1 token(s)','42',2),
(19,18,'AC',0.00182171,1540,1,1,NULL,'','1 token(s)','17',2),
(20,19,'AC',0.001731231,1668,1,1,NULL,'','1 token(s)','40',2),
(21,20,'AC',0.001650876,1660,1,1,NULL,'','1 token(s)','2',2),
(22,21,'AC',0.002061114,1648,1,1,NULL,'','1 token(s)','22',2),
(23,22,'AC',0.001861542,1780,1,1,NULL,'','1 token(s)','6',2),
(24,23,'AC',0.001676998,1656,1,1,NULL,'','1 token(s)','56',2),
(25,24,'AC',0.001682856,1540,1,1,NULL,'','1 token(s)','9',2),
(26,25,'AC',0.001795419,1668,1,1,NULL,'','1 token(s)','41',2),
(27,26,'AC',0.001798363,1540,1,1,NULL,'','1 token(s)','42',2),
(28,27,'AC',0.001811865,1476,1,1,NULL,'','1 token(s)','56',2),
(29,28,'AC',0.002190332,1512,1,1,NULL,'','1 token(s)','59',2),
(30,29,'AC',0.001780523,1516,1,1,NULL,'','1 token(s)','37',2),
(31,30,'AC',0.001766093,1540,1,1,NULL,'','1 token(s)','50',2),
(32,31,'AC',0.002076533,1476,1,1,NULL,'','1 token(s)','38',2),
(33,32,'AC',0.001736655,1516,1,1,NULL,'','1 token(s)','25',2),
(34,33,'AC',0.001671116,1668,1,1,NULL,'','1 token(s)','43',2),
(35,34,'AC',0.001778012,1644,1,1,NULL,'','1 token(s)','10',2),
(36,35,'AC',0.001886581,1528,1,1,NULL,'','1 token(s)','2',2),
(37,36,'AC',0.001673402,1532,1,1,NULL,'','1 token(s)','54',2),
(38,37,'AC',0.001660115,1640,1,1,NULL,'','1 token(s)','18',2),
(39,38,'AC',0.001898092,1524,1,1,NULL,'','1 token(s)','53',2),
(40,39,'AC',0.001738292,1644,1,1,NULL,'','1 token(s)','60',2),
(41,40,'AC',0.001754304,1668,1,1,NULL,'','1 token(s)','57',2),
(42,41,'AC',0.001718232,1604,1,1,NULL,'','1 token(s)','50',2),
(43,42,'AC',0.001826147,1476,1,1,NULL,'','1 token(s)','3',2),
(44,43,'AC',0.001665029,1668,1,1,NULL,'','1 token(s)','25',2),
(45,44,'AC',0.001716695,1568,1,1,NULL,'','1 token(s)','42',2),
(46,45,'AC',0.002064755,1440,1,1,NULL,'','1 token(s)','43',2),
(47,46,'AC',0.001694767,1668,1,1,NULL,'','1 token(s)','45',2),
(48,47,'AC',0.001706266,1440,1,1,NULL,'','1 token(s)','27',2),
(49,48,'AC',0.002063026,1664,1,1,NULL,'','1 token(s)','48',2),
(50,49,'AC',0.001880343,1668,1,1,NULL,'','1 token(s)','7',2),
(51,50,'AC',0.001740815,1668,1,1,NULL,'','1 token(s)','51',2),
(52,1,'AC',0.001824832,1516,1,1,NULL,'','0 token(s)','',3),
(53,2,'AC',0.001814872,1708,1,1,NULL,'','3 token(s)','24001124 24001122 24001123 ',3),
(54,3,'AC',0.002028203,1696,1,1,NULL,'','5 token(s)','21222222 24010203 24112233 24113344 21334455 ',3),
(55,4,'AC',0.001756653,1596,1,1,NULL,'','7 token(s)','20299999 24077777 24188888 00241111 24022222 24133333 24244444 ',3),
(56,5,'AC',0.001674796,1596,1,1,NULL,'','9 token(s)','24010001 24070007 24020002 24040004 24090009 24080008 24050005 00060006 24030003 ',3),
(57,6,'AC',0.001717128,1716,1,1,NULL,'','12 token(s)','24066666 24011111 24077777 24022222 24088888 24033333 24100000 24044444 24111111 24055555 24122222 24099999 ',3),
(58,7,'AC',0.002222264,1660,1,1,NULL,'','18 token(s)','24010001 24070007 24110011 24160016 24020002 24100010 24090009 24130013 24040004 24180018 24080008 24050005 24170017 24120012 24',3),
(59,8,'AC',0.001978525,1540,1,1,NULL,'','25 token(s)','24010001 24070007 24110011 24160016 24200020 24250025 24020002 24100010 24040004 24180018 24090009 24220022 24130013 24120012 24',3),
(60,9,'AC',0.001733419,1708,1,1,NULL,'','20 token(s)','24066666 24123456 24077777 24122222 24177777 24012345 24133333 24088888 24200000 24144444 24098765 24199999 24099999 24100000 24',3),
(61,10,'AC',0.001889427,1716,1,1,NULL,'','10 token(s)','24066666 24011111 24077777 24022222 24088888 24033333 24100000 24044444 24055555 24099999 ',3);
/*!40000 ALTER TABLE `judge_submissiontestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_tag`
--

DROP TABLE IF EXISTS `judge_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `judge_tag_group_id_b1433d7f_fk_judge_taggroup_id` (`group_id`),
  KEY `judge_tag_name_942c3a66` (`name`),
  CONSTRAINT `judge_tag_group_id_b1433d7f_fk_judge_taggroup_id` FOREIGN KEY (`group_id`) REFERENCES `judge_taggroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_tag`
--

LOCK TABLES `judge_tag` WRITE;
/*!40000 ALTER TABLE `judge_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_tagdata`
--

DROP TABLE IF EXISTS `judge_tagdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_tagdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assigner_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_tagdata_tag_id_problem_id_8bea076a_uniq` (`tag_id`,`problem_id`),
  KEY `judge_tagdata_assigner_id_e3c18347_fk_judge_profile_id` (`assigner_id`),
  KEY `judge_tagdata_problem_id_58e0fe06_fk_judge_tagproblem_id` (`problem_id`),
  CONSTRAINT `judge_tagdata_assigner_id_e3c18347_fk_judge_profile_id` FOREIGN KEY (`assigner_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_tagdata_problem_id_58e0fe06_fk_judge_tagproblem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_tagproblem` (`id`),
  CONSTRAINT `judge_tagdata_tag_id_ae307bf9_fk_judge_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `judge_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_tagdata`
--

LOCK TABLES `judge_tagdata` WRITE;
/*!40000 ALTER TABLE `judge_tagdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_tagdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_taggroup`
--

DROP TABLE IF EXISTS `judge_taggroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_taggroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_taggroup`
--

LOCK TABLES `judge_taggroup` WRITE;
/*!40000 ALTER TABLE `judge_taggroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_taggroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_tagproblem`
--

DROP TABLE IF EXISTS `judge_tagproblem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_tagproblem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `judge` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `judge_tagproblem_judge_f9d2c6b5` (`judge`),
  KEY `judge_tagproblem_name_a8e1541e` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_tagproblem`
--

LOCK TABLES `judge_tagproblem` WRITE;
/*!40000 ALTER TABLE `judge_tagproblem` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_tagproblem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticket`
--

DROP TABLE IF EXISTS `judge_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `notes` longtext NOT NULL,
  `object_id` int(10) unsigned NOT NULL CHECK (`object_id` >= 0),
  `is_open` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_contributive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_ticket_content_type_id_376ebcf9_fk_django_content_type_id` (`content_type_id`),
  KEY `judge_ticket_user_id_5a5c0bce_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_ticket_content_type_id_376ebcf9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `judge_ticket_user_id_5a5c0bce_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticket`
--

LOCK TABLES `judge_ticket` WRITE;
/*!40000 ALTER TABLE `judge_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticket_assignees`
--

DROP TABLE IF EXISTS `judge_ticket_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticket_assignees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_ticket_assignees_ticket_id_profile_id_6bdac784_uniq` (`ticket_id`,`profile_id`),
  KEY `judge_ticket_assignees_profile_id_84d298d8_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_ticket_assignees_profile_id_84d298d8_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_ticket_assignees_ticket_id_0fd7b2f7_fk_judge_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `judge_ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticket_assignees`
--

LOCK TABLES `judge_ticket_assignees` WRITE;
/*!40000 ALTER TABLE `judge_ticket_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticket_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticketmessage`
--

DROP TABLE IF EXISTS `judge_ticketmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticketmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `time` datetime(6) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_ticketmessage_ticket_id_5e413158_fk_judge_ticket_id` (`ticket_id`),
  KEY `judge_ticketmessage_user_id_1dbfbfb0_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_ticketmessage_ticket_id_5e413158_fk_judge_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `judge_ticket` (`id`),
  CONSTRAINT `judge_ticketmessage_user_id_1dbfbfb0_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticketmessage`
--

LOCK TABLES `judge_ticketmessage` WRITE;
/*!40000 ALTER TABLE `judge_ticketmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticketmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_webauthncredential`
--

DROP TABLE IF EXISTS `judge_webauthncredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_webauthncredential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cred_id` varchar(255) NOT NULL,
  `public_key` longtext NOT NULL,
  `counter` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cred_id` (`cred_id`),
  KEY `judge_webauthncredential_user_id_8eaad7d2_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_webauthncredential_user_id_8eaad7d2_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_webauthncredential`
--

LOCK TABLES `judge_webauthncredential` WRITE;
/*!40000 ALTER TABLE `judge_webauthncredential` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_webauthncredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_registr_user_id_5fcbf725_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_supervisedregistrationprofile`
--

DROP TABLE IF EXISTS `registration_supervisedregistrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_supervisedregistrationprofile` (
  `registrationprofile_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`registrationprofile_ptr_id`),
  CONSTRAINT `registration_supervi_registrationprofile__0a59f3b2_fk_registrat` FOREIGN KEY (`registrationprofile_ptr_id`) REFERENCES `registration_registrationprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_supervisedregistrationprofile`
--

LOCK TABLES `registration_supervisedregistrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
INSERT INTO `reversion_revision` VALUES
(1,'2025-04-30 04:59:59.468308','Created on site',2),
(2,'2025-04-30 06:13:35.297601','Added.',2),
(3,'2025-04-30 06:21:21.410587','No fields changed.',2),
(4,'2025-05-01 04:19:01.938276','Created on site',2),
(5,'2025-05-01 04:22:49.261756','Created on site',2),
(6,'2025-05-01 04:27:07.392809','Changed Publicly visible.',2),
(7,'2025-05-01 04:27:17.279230','No fields changed.',2);
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
INSERT INTO `reversion_version` VALUES
(1,'2','json','[{\"model\": \"judge.problem\", \"pk\": 2, \"fields\": {\"code\": \"bbbb\", \"name\": \"Thu thoi\", \"pdf_url\": \"\", \"source\": \"\", \"description\": \"\", \"group\": 1, \"time_limit\": 1.0, \"memory_limit\": 262144, \"short_circuit\": false, \"points\": 1.0, \"partial\": true, \"is_public\": false, \"is_manually_managed\": false, \"date\": \"2025-04-30T04:59:59.534Z\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 0, \"ac_rate\": 0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"testcase_visibility_mode\": \"O\", \"testcase_result_visibility_mode\": \"A\", \"is_organization_private\": false, \"suggester\": null, \"allow_view_feedback\": false, \"authors\": [], \"curators\": [2], \"testers\": [], \"types\": [1], \"allowed_languages\": [5, 6, 1, 2, 3, 4, 14, 18, 10, 15, 7, 8, 9, 16, 17, 12], \"banned_users\": [], \"organizations\": []}}]','Thu thoi',19,1,'default'),
(2,'1','json','[{\"model\": \"judge.judge\", \"pk\": 1, \"fields\": {\"name\": \"ooo\", \"created\": \"2025-04-30T06:13:35.301Z\", \"auth_key\": \"VwqTuG8W5W8cywrzszAyghfV7TODJmRNcJ0qzUic8q0rQbYPEzDJH+foDWB89NTFNajmcJAik6d8xL7waNnS3SHCTKOhUAeZc0Ep\", \"description\": \"\"}}]','ooo',11,2,'default'),
(3,'1','json','[{\"model\": \"judge.judge\", \"pk\": 1, \"fields\": {\"name\": \"ooo\", \"created\": \"2025-04-30T06:13:35.301Z\", \"auth_key\": \"VwqTuG8W5W8cywrzszAyghfV7TODJmRNcJ0qzUic8q0rQbYPEzDJH+foDWB89NTFNajmcJAik6d8xL7waNnS3SHCTKOhUAeZc0Ep\", \"description\": \"\"}}]','ooo',11,3,'default'),
(4,'3','json','[{\"model\": \"judge.problem\", \"pk\": 3, \"fields\": {\"code\": \"nddnd\", \"name\": \"aaaa\", \"pdf_url\": \"\", \"source\": \"\", \"description\": \"aaa\", \"group\": 1, \"time_limit\": 1.0, \"memory_limit\": 262144, \"short_circuit\": false, \"points\": 1.0, \"partial\": true, \"is_public\": false, \"is_manually_managed\": false, \"date\": \"2025-05-01T04:19:01.972Z\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 0, \"ac_rate\": 0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"testcase_visibility_mode\": \"O\", \"testcase_result_visibility_mode\": \"A\", \"is_organization_private\": false, \"suggester\": null, \"allow_view_feedback\": false, \"authors\": [], \"curators\": [2], \"testers\": [], \"types\": [1], \"allowed_languages\": [5, 6, 1, 2, 3, 4, 14, 18, 10, 15, 7, 8, 9, 16, 17, 12], \"banned_users\": [], \"organizations\": []}}]','aaaa',19,4,'default'),
(5,'4','json','[{\"model\": \"judge.problem\", \"pk\": 4, \"fields\": {\"code\": \"beginner_045\", \"name\": \"Sắp xếp sinh viên\", \"pdf_url\": \"\", \"source\": \"\", \"description\": \"Một sinh viên có các thống số sau:\\r\\n\\r\\n* Mã sinh viên (có 8 ký tự số)\\r\\n* Tên sinh viên (nhiều hơn 5 ký tự và không quá 30 ký tự bao gồm ký tự trắng)\\r\\n* Điểm GPA (là số thực nằm trong khoảng từ 0 đến 4)\\r\\n\\r\\nCho ~n~ thông tin sinh viên đã chuẩn.\\r\\n\\r\\nHãy sắp xếp lại danh sách sinh viên theo thứ tự tăng dần của điểm GPA\\r\\n\\r\\n## INPUT:\\r\\n* Một dòng duy nhất chứa số nguyên ~n~.\\r\\n* Tiếp theo là ~3 * n~ dòng chứa thông tin của n sinh viên. Mỗi thông tin của sinh viên sẽ lưu trên một dòng\\r\\n\\r\\n## OUTPUT:\\r\\n- In ra mã số sinh viên theo điểm GPA tăng dần, nếu GPA giống nhau thì vẫn giữ thứ tự lúc nhận vào\\r\\n\\r\\n\\r\\n## Input:\\r\\n```plain\\r\\n2\\r\\n21223344\\r\\nNguyen Hoang Duong\\r\\n2.1\\r\\n24334475\\r\\nBui Minh Duc\\r\\n3.2\\r\\n```\\r\\n\\r\\n## Output:\\r\\n```plain\\r\\n21223344 24334475\\r\\n```\\r\\n\\r\\n\\r\\n## Giới hạn:\\r\\n* ~0 \\\\le n \\\\le 1000~\", \"group\": 1, \"time_limit\": 0.01, \"memory_limit\": 262144, \"short_circuit\": false, \"points\": 1.0, \"partial\": true, \"is_public\": false, \"is_manually_managed\": false, \"date\": \"2025-05-01T04:22:49.286Z\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 0, \"ac_rate\": 0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"testcase_visibility_mode\": \"O\", \"testcase_result_visibility_mode\": \"A\", \"is_organization_private\": false, \"suggester\": null, \"allow_view_feedback\": false, \"authors\": [], \"curators\": [2], \"testers\": [], \"types\": [1], \"allowed_languages\": [5, 6, 1, 2, 3, 4, 14, 18, 10, 15, 7, 8, 9, 16, 17, 12], \"banned_users\": [], \"organizations\": []}}]','Sắp xếp sinh viên',19,5,'default'),
(6,'4','json','[{\"model\": \"judge.problem\", \"pk\": 4, \"fields\": {\"code\": \"beginner_045\", \"name\": \"Sắp xếp sinh viên\", \"pdf_url\": \"\", \"source\": \"\", \"description\": \"Một sinh viên có các thống số sau:\\r\\n\\r\\n* Mã sinh viên (có 8 ký tự số)\\r\\n* Tên sinh viên (nhiều hơn 5 ký tự và không quá 30 ký tự bao gồm ký tự trắng)\\r\\n* Điểm GPA (là số thực nằm trong khoảng từ 0 đến 4)\\r\\n\\r\\nCho ~n~ thông tin sinh viên đã chuẩn.\\r\\n\\r\\nHãy sắp xếp lại danh sách sinh viên theo thứ tự tăng dần của điểm GPA\\r\\n\\r\\n## INPUT:\\r\\n* Một dòng duy nhất chứa số nguyên ~n~.\\r\\n* Tiếp theo là ~3 * n~ dòng chứa thông tin của n sinh viên. Mỗi thông tin của sinh viên sẽ lưu trên một dòng\\r\\n\\r\\n## OUTPUT:\\r\\n- In ra mã số sinh viên theo điểm GPA tăng dần, nếu GPA giống nhau thì vẫn giữ thứ tự lúc nhận vào\\r\\n\\r\\n\\r\\n## Input:\\r\\n```plain\\r\\n2\\r\\n21223344\\r\\nNguyen Hoang Duong\\r\\n2.1\\r\\n24334475\\r\\nBui Minh Duc\\r\\n3.2\\r\\n```\\r\\n\\r\\n## Output:\\r\\n```plain\\r\\n21223344 24334475\\r\\n```\\r\\n\\r\\n\\r\\n## Giới hạn:\\r\\n* ~0 \\\\le n \\\\le 1000~\", \"group\": 1, \"time_limit\": 0.01, \"memory_limit\": 262144, \"short_circuit\": false, \"points\": 1.0, \"partial\": true, \"is_public\": true, \"is_manually_managed\": false, \"date\": \"2025-05-01T11:22:49+07:00\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 1, \"ac_rate\": 100.0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"testcase_visibility_mode\": \"O\", \"testcase_result_visibility_mode\": \"A\", \"is_organization_private\": false, \"suggester\": null, \"allow_view_feedback\": false, \"authors\": [], \"curators\": [2], \"testers\": [], \"types\": [1], \"allowed_languages\": [5, 6, 1, 2, 3, 4, 14, 18, 10, 15, 7, 8, 9, 16, 17, 12], \"banned_users\": [], \"organizations\": []}}]','Sắp xếp sinh viên',19,6,'default'),
(7,'4','json','[{\"model\": \"judge.problem\", \"pk\": 4, \"fields\": {\"code\": \"beginner_045\", \"name\": \"Sắp xếp sinh viên\", \"pdf_url\": \"\", \"source\": \"\", \"description\": \"Một sinh viên có các thống số sau:\\r\\n\\r\\n* Mã sinh viên (có 8 ký tự số)\\r\\n* Tên sinh viên (nhiều hơn 5 ký tự và không quá 30 ký tự bao gồm ký tự trắng)\\r\\n* Điểm GPA (là số thực nằm trong khoảng từ 0 đến 4)\\r\\n\\r\\nCho ~n~ thông tin sinh viên đã chuẩn.\\r\\n\\r\\nHãy sắp xếp lại danh sách sinh viên theo thứ tự tăng dần của điểm GPA\\r\\n\\r\\n## INPUT:\\r\\n* Một dòng duy nhất chứa số nguyên ~n~.\\r\\n* Tiếp theo là ~3 * n~ dòng chứa thông tin của n sinh viên. Mỗi thông tin của sinh viên sẽ lưu trên một dòng\\r\\n\\r\\n## OUTPUT:\\r\\n- In ra mã số sinh viên theo điểm GPA tăng dần, nếu GPA giống nhau thì vẫn giữ thứ tự lúc nhận vào\\r\\n\\r\\n\\r\\n## Input:\\r\\n```plain\\r\\n2\\r\\n21223344\\r\\nNguyen Hoang Duong\\r\\n2.1\\r\\n24334475\\r\\nBui Minh Duc\\r\\n3.2\\r\\n```\\r\\n\\r\\n## Output:\\r\\n```plain\\r\\n21223344 24334475\\r\\n```\\r\\n\\r\\n\\r\\n## Giới hạn:\\r\\n* ~0 \\\\le n \\\\le 1000~\", \"group\": 1, \"time_limit\": 0.01, \"memory_limit\": 262144, \"short_circuit\": false, \"points\": 1.0, \"partial\": true, \"is_public\": true, \"is_manually_managed\": false, \"date\": \"2025-05-01T11:22:49+07:00\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 1, \"ac_rate\": 100.0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"testcase_visibility_mode\": \"O\", \"testcase_result_visibility_mode\": \"A\", \"is_organization_private\": false, \"suggester\": null, \"allow_view_feedback\": false, \"authors\": [], \"curators\": [2], \"testers\": [], \"types\": [1], \"allowed_languages\": [5, 6, 1, 2, 3, 4, 14, 18, 10, 15, 7, 8, 9, 16, 17, 12], \"banned_users\": [], \"organizations\": []}}]','Sắp xếp sinh viên',19,7,'default');
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 11:36:49
