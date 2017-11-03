-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: resthub
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `api_api`
--

LOCK TABLES `api_api` WRITE;
/*!40000 ALTER TABLE `api_api` DISABLE KEYS */;
INSERT INTO `api_api` VALUES ('2017-10-23 09:56:58','2017-10-25 17:42:38',0,'f46fac114c83416e8d4ac5835a863bb2','查询汽车票','查询汽车票1','9b13e15488404dc793420c3f18ba450f');
/*!40000 ALTER TABLE `api_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_apigroup`
--

LOCK TABLES `api_apigroup` WRITE;
/*!40000 ALTER TABLE `api_apigroup` DISABLE KEYS */;
INSERT INTO `api_apigroup` VALUES ('2017-10-25 15:45:07','2017-10-30 15:12:24',0,'886d2af7bc0a4f88942cee21df7df5f6','行云机票','行云机票','bccc83464e7c42a9ad86e922bc5f8def'),('2017-10-19 10:37:43','2017-10-30 15:12:13',0,'9b13e15488404dc793420c3f18ba450f','行云支付','行云支付','bccc83464e7c42a9ad86e922bc5f8def');
/*!40000 ALTER TABLE `api_apigroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_apiversion`
--

LOCK TABLES `api_apiversion` WRITE;
/*!40000 ALTER TABLE `api_apiversion` DISABLE KEYS */;
INSERT INTO `api_apiversion` VALUES ('2017-10-23 10:00:46','2017-11-01 17:21:21',0,'查询汽车票2','/xingyun/v2/cars','http://api.qianbao.com/echo',1,1,1,1,0,1,1,1,1,1,1,0,0,'60d07b5644b745efa03d05155bb9056e','f46fac114c83416e8d4ac5835a863bb2'),('2017-10-23 09:57:40','2017-11-01 17:27:06',0,'查询汽车票1','/xingyun/v1/cars','http://api.qianbao.com/echo',1,1,1,1,1,1,1,1,1,1,0,0,0,'dd99e690fe4040708ad86ced672bb589','f46fac114c83416e8d4ac5835a863bb2');
/*!40000 ALTER TABLE `api_apiversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_apiversionextruntime`
--

LOCK TABLES `api_apiversionextruntime` WRITE;
/*!40000 ALTER TABLE `api_apiversionextruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_apiversionextruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_apiversionhistory`
--

LOCK TABLES `api_apiversionhistory` WRITE;
/*!40000 ALTER TABLE `api_apiversionhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_apiversionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_apiversionruntime`
--

LOCK TABLES `api_apiversionruntime` WRITE;
/*!40000 ALTER TABLE `api_apiversionruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_apiversionruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_corporation`
--

LOCK TABLES `api_corporation` WRITE;
/*!40000 ALTER TABLE `api_corporation` DISABLE KEYS */;
INSERT INTO `api_corporation` VALUES ('2017-11-02 13:37:18','2017-11-02 13:37:18',0,'92204420f2b142f282ca0aced97d53d0','钱包金服','钱包金服','qianbao.com','http://www.baidu.com','return true','apis.qianbao.com');
/*!40000 ALTER TABLE `api_corporation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_developer`
--

LOCK TABLES `api_developer` WRITE;
/*!40000 ALTER TABLE `api_developer` DISABLE KEYS */;
INSERT INTO `api_developer` VALUES ('2017-11-02 13:37:51','2017-11-02 13:37:51',0,'9bd390e00c874e6fbf48e6f58e507237','xutao@qianbao.com','92204420f2b142f282ca0aced97d53d0'),('2017-11-02 13:37:36','2017-11-02 13:37:36',0,'a6b21d67a29f48db88c5ed48fe61dfb3','zhangzheng@qianbao.com','92204420f2b142f282ca0aced97d53d0');
/*!40000 ALTER TABLE `api_developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_edge`
--

LOCK TABLES `api_edge` WRITE;
/*!40000 ALTER TABLE `api_edge` DISABLE KEYS */;
INSERT INTO `api_edge` VALUES ('2017-11-02 13:47:41','2017-11-02 13:47:41',0,'3333435246634b61903cd5f78c47de7a','1.1.1.1',8080,8081,'92204420f2b142f282ca0aced97d53d0','8f35846ec48344e2ab3bcd60ca74f3d9'),('2017-11-02 13:48:23','2017-11-02 13:48:23',0,'50fae4d5f6c64f4e862695ed30418489','2.2.2.2',8080,8081,'92204420f2b142f282ca0aced97d53d0','c23ffed9642242c9988d3b78dad6c120'),('2017-11-02 13:48:38','2017-11-02 13:48:38',0,'d6098b6df62f49b0abaeb203bdf889df','3.3.3.3',8080,8081,'92204420f2b142f282ca0aced97d53d0','c23ffed9642242c9988d3b78dad6c120'),('2017-11-02 13:48:50','2017-11-02 13:48:50',0,'fd3699017d184bc89d97524e7947de99','4.4.4.4',8080,8081,'92204420f2b142f282ca0aced97d53d0','bb74508a4e304b5d87cffa06043ebfc3');
/*!40000 ALTER TABLE `api_edge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_environment`
--

LOCK TABLES `api_environment` WRITE;
/*!40000 ALTER TABLE `api_environment` DISABLE KEYS */;
INSERT INTO `api_environment` VALUES ('2017-11-02 13:36:35','2017-11-02 13:36:35',0,'1c63438554b94ea793de022648c0fd04','pre','预发环境'),('2017-11-02 13:36:20','2017-11-02 13:36:20',0,'8f35846ec48344e2ab3bcd60ca74f3d9','dev','开发环境'),('2017-11-02 13:36:42','2017-11-02 13:36:42',0,'bb74508a4e304b5d87cffa06043ebfc3','pro','生产环境'),('2017-11-02 13:36:27','2017-11-02 13:36:27',0,'c23ffed9642242c9988d3b78dad6c120','sit','测试环境');
/*!40000 ALTER TABLE `api_environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_event`
--

LOCK TABLES `api_event` WRITE;
/*!40000 ALTER TABLE `api_event` DISABLE KEYS */;
INSERT INTO `api_event` VALUES ('2017-11-02 13:51:51','2017-11-02 13:51:51',0,'2cd045b569864b49ab87bff695f2bc59','update','e71dbf88d041494ebdc85d915fbc0bc7','server_runtimes',0,0);
/*!40000 ALTER TABLE `api_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_globalplugin`
--

LOCK TABLES `api_globalplugin` WRITE;
/*!40000 ALTER TABLE `api_globalplugin` DISABLE KEYS */;
INSERT INTO `api_globalplugin` VALUES ('2017-11-02 13:49:08','2017-11-02 13:49:08',0,'4ace368ff0844c878cbd60d693fdf7f9','http-log','http-log');
/*!40000 ALTER TABLE `api_globalplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_globalpluginpolicy`
--

LOCK TABLES `api_globalpluginpolicy` WRITE;
/*!40000 ALTER TABLE `api_globalpluginpolicy` DISABLE KEYS */;
INSERT INTO `api_globalpluginpolicy` VALUES ('2017-11-02 13:49:25','2017-11-02 13:49:25',0,'0eecaf9b33e446a799b76cb2144ab12a','http-log-policy','http-log-policy','4ace368ff0844c878cbd60d693fdf7f9');
/*!40000 ALTER TABLE `api_globalpluginpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_globalpluginpolicyconfigruntime`
--

LOCK TABLES `api_globalpluginpolicyconfigruntime` WRITE;
/*!40000 ALTER TABLE `api_globalpluginpolicyconfigruntime` DISABLE KEYS */;
INSERT INTO `api_globalpluginpolicyconfigruntime` VALUES ('2017-11-02 13:49:40','2017-11-02 13:49:40',0,'e367689910ee4589978bdb1d2ac753f6','http-log-policy-key-1','http-log-policy-val-1','0eecaf9b33e446a799b76cb2144ab12a');
/*!40000 ALTER TABLE `api_globalpluginpolicyconfigruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_globalpluginpolicyextruntime`
--

LOCK TABLES `api_globalpluginpolicyextruntime` WRITE;
/*!40000 ALTER TABLE `api_globalpluginpolicyextruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_globalpluginpolicyextruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_globalpluginpolicyruntime`
--

LOCK TABLES `api_globalpluginpolicyruntime` WRITE;
/*!40000 ALTER TABLE `api_globalpluginpolicyruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_globalpluginpolicyruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_localplugin`
--

LOCK TABLES `api_localplugin` WRITE;
/*!40000 ALTER TABLE `api_localplugin` DISABLE KEYS */;
INSERT INTO `api_localplugin` VALUES ('2017-11-02 13:49:53','2017-11-02 13:49:53',0,'da00420cd2db456c834268e32e81294d','acl','acl');
/*!40000 ALTER TABLE `api_localplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_localpluginpolicy`
--

LOCK TABLES `api_localpluginpolicy` WRITE;
/*!40000 ALTER TABLE `api_localpluginpolicy` DISABLE KEYS */;
INSERT INTO `api_localpluginpolicy` VALUES ('2017-11-02 13:50:07','2017-11-02 13:50:07',0,'4c4fa9f605ca4f4485c7737fc8a6e166','acl-policy','acl-policy','da00420cd2db456c834268e32e81294d');
/*!40000 ALTER TABLE `api_localpluginpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_localpluginpolicyconfigruntime`
--

LOCK TABLES `api_localpluginpolicyconfigruntime` WRITE;
/*!40000 ALTER TABLE `api_localpluginpolicyconfigruntime` DISABLE KEYS */;
INSERT INTO `api_localpluginpolicyconfigruntime` VALUES ('2017-11-02 13:50:25','2017-11-02 13:50:25',0,'92a0ba0447664f8787c07ecade41d90f','acl-policy-key-1','acl-policy-val-1','4c4fa9f605ca4f4485c7737fc8a6e166');
/*!40000 ALTER TABLE `api_localpluginpolicyconfigruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_localpluginpolicyextruntime`
--

LOCK TABLES `api_localpluginpolicyextruntime` WRITE;
/*!40000 ALTER TABLE `api_localpluginpolicyextruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_localpluginpolicyextruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_localpluginpolicyruntime`
--

LOCK TABLES `api_localpluginpolicyruntime` WRITE;
/*!40000 ALTER TABLE `api_localpluginpolicyruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_localpluginpolicyruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_serverextruntime`
--

LOCK TABLES `api_serverextruntime` WRITE;
/*!40000 ALTER TABLE `api_serverextruntime` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_serverextruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_serverruntime`
--

LOCK TABLES `api_serverruntime` WRITE;
/*!40000 ALTER TABLE `api_serverruntime` DISABLE KEYS */;
INSERT INTO `api_serverruntime` VALUES ('2017-11-02 13:51:51','2017-11-02 13:51:51',0,'e71dbf88d041494ebdc85d915fbc0bc7',0,'1.1.1.1',8080,1,'1','8f35846ec48344e2ab3bcd60ca74f3d9','a296ccca91ac40c2b99b5a31350ad570');
/*!40000 ALTER TABLE `api_serverruntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_upstream`
--

LOCK TABLES `api_upstream` WRITE;
/*!40000 ALTER TABLE `api_upstream` DISABLE KEYS */;
INSERT INTO `api_upstream` VALUES ('2017-11-02 13:51:21','2017-11-02 13:51:21',0,'a296ccca91ac40c2b99b5a31350ad570','aliPay','支付宝','rr','9b13e15488404dc793420c3f18ba450f');
/*!40000 ALTER TABLE `api_upstream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Api',7,'add_api'),(20,'Can change Api',7,'change_api'),(21,'Can delete Api',7,'delete_api'),(22,'Can add ApiGroup',8,'add_apigroup'),(23,'Can change ApiGroup',8,'change_apigroup'),(24,'Can delete ApiGroup',8,'delete_apigroup'),(25,'Can add ApiVersion',9,'add_apiversion'),(26,'Can change ApiVersion',9,'change_apiversion'),(27,'Can delete ApiVersion',9,'delete_apiversion'),(28,'Can add ApiVersionExtRuntime',10,'add_apiversionextruntime'),(29,'Can change ApiVersionExtRuntime',10,'change_apiversionextruntime'),(30,'Can delete ApiVersionExtRuntime',10,'delete_apiversionextruntime'),(31,'Can add ApiVersionHistory',11,'add_apiversionhistory'),(32,'Can change ApiVersionHistory',11,'change_apiversionhistory'),(33,'Can delete ApiVersionHistory',11,'delete_apiversionhistory'),(34,'Can add ApiVersionRuntime',12,'add_apiversionruntime'),(35,'Can change ApiVersionRuntime',12,'change_apiversionruntime'),(36,'Can delete ApiVersionRuntime',12,'delete_apiversionruntime'),(37,'Can add Corporation',13,'add_corporation'),(38,'Can change Corporation',13,'change_corporation'),(39,'Can delete Corporation',13,'delete_corporation'),(40,'Can add Developer',14,'add_developer'),(41,'Can change Developer',14,'change_developer'),(42,'Can delete Developer',14,'delete_developer'),(43,'Can add Edge',15,'add_edge'),(44,'Can change Edge',15,'change_edge'),(45,'Can delete Edge',15,'delete_edge'),(46,'Can add Environment',16,'add_environment'),(47,'Can change Environment',16,'change_environment'),(48,'Can delete Environment',16,'delete_environment'),(49,'Can add Event',17,'add_event'),(50,'Can change Event',17,'change_event'),(51,'Can delete Event',17,'delete_event'),(52,'Can add GlobalPlugin',18,'add_globalplugin'),(53,'Can change GlobalPlugin',18,'change_globalplugin'),(54,'Can delete GlobalPlugin',18,'delete_globalplugin'),(55,'Can add GlobalPluginPolicy',19,'add_globalpluginpolicy'),(56,'Can change GlobalPluginPolicy',19,'change_globalpluginpolicy'),(57,'Can delete GlobalPluginPolicy',19,'delete_globalpluginpolicy'),(58,'Can add GlobalPluginPolicyConfigRuntime',20,'add_globalpluginpolicyconfigruntime'),(59,'Can change GlobalPluginPolicyConfigRuntime',20,'change_globalpluginpolicyconfigruntime'),(60,'Can delete GlobalPluginPolicyConfigRuntime',20,'delete_globalpluginpolicyconfigruntime'),(61,'Can add GlobalPluginPolicyExtRuntime',21,'add_globalpluginpolicyextruntime'),(62,'Can change GlobalPluginPolicyExtRuntime',21,'change_globalpluginpolicyextruntime'),(63,'Can delete GlobalPluginPolicyExtRuntime',21,'delete_globalpluginpolicyextruntime'),(64,'Can add GlobalPluginPolicyRuntime',22,'add_globalpluginpolicyruntime'),(65,'Can change GlobalPluginPolicyRuntime',22,'change_globalpluginpolicyruntime'),(66,'Can delete GlobalPluginPolicyRuntime',22,'delete_globalpluginpolicyruntime'),(67,'Can add LocalPlugin',23,'add_localplugin'),(68,'Can change LocalPlugin',23,'change_localplugin'),(69,'Can delete LocalPlugin',23,'delete_localplugin'),(70,'Can add LocalPluginPolicy',24,'add_localpluginpolicy'),(71,'Can change LocalPluginPolicy',24,'change_localpluginpolicy'),(72,'Can delete LocalPluginPolicy',24,'delete_localpluginpolicy'),(73,'Can add LocalPluginPolicyConfigRuntime',25,'add_localpluginpolicyconfigruntime'),(74,'Can change LocalPluginPolicyConfigRuntime',25,'change_localpluginpolicyconfigruntime'),(75,'Can delete LocalPluginPolicyConfigRuntime',25,'delete_localpluginpolicyconfigruntime'),(76,'Can add LocalPluginPolicyExtRuntime',26,'add_localpluginpolicyextruntime'),(77,'Can change LocalPluginPolicyExtRuntime',26,'change_localpluginpolicyextruntime'),(78,'Can delete LocalPluginPolicyExtRuntime',26,'delete_localpluginpolicyextruntime'),(79,'Can add LocalPluginPolicyRuntime',27,'add_localpluginpolicyruntime'),(80,'Can change LocalPluginPolicyRuntime',27,'change_localpluginpolicyruntime'),(81,'Can delete LocalPluginPolicyRuntime',27,'delete_localpluginpolicyruntime'),(82,'Can add ServerExtRuntime',28,'add_serverextruntime'),(83,'Can change ServerExtRuntime',28,'change_serverextruntime'),(84,'Can delete ServerExtRuntime',28,'delete_serverextruntime'),(85,'Can add ServerRuntime',29,'add_serverruntime'),(86,'Can change ServerRuntime',29,'change_serverruntime'),(87,'Can delete ServerRuntime',29,'delete_serverruntime'),(88,'Can add Upstream',30,'add_upstream'),(89,'Can change Upstream',30,'change_upstream'),(90,'Can delete Upstream',30,'delete_upstream'),(91,'Can add cors model',31,'add_corsmodel'),(92,'Can change cors model',31,'change_corsmodel'),(93,'Can delete cors model',31,'delete_corsmodel'),(94,'Can add Token',32,'add_token'),(95,'Can change Token',32,'change_token'),(96,'Can delete Token',32,'delete_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$iC5fwO42Gfpr$B9ihpgjkV8G+6wmh+/OrF2WKVKI2iziAC0powWLbIds=',NULL,1,'admin','','','admin@admin.com',1,1,'2017-11-02 13:47:08');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api','api'),(8,'api','apigroup'),(9,'api','apiversion'),(10,'api','apiversionextruntime'),(11,'api','apiversionhistory'),(12,'api','apiversionruntime'),(13,'api','corporation'),(14,'api','developer'),(15,'api','edge'),(16,'api','environment'),(17,'api','event'),(18,'api','globalplugin'),(19,'api','globalpluginpolicy'),(20,'api','globalpluginpolicyconfigruntime'),(21,'api','globalpluginpolicyextruntime'),(22,'api','globalpluginpolicyruntime'),(23,'api','localplugin'),(24,'api','localpluginpolicy'),(25,'api','localpluginpolicyconfigruntime'),(26,'api','localpluginpolicyextruntime'),(27,'api','localpluginpolicyruntime'),(28,'api','serverextruntime'),(29,'api','serverruntime'),(30,'api','upstream'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(32,'authtoken','token'),(5,'contenttypes','contenttype'),(31,'corsheaders','corsmodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-02 13:46:44'),(2,'auth','0001_initial','2017-11-02 13:46:45'),(3,'admin','0001_initial','2017-11-02 13:46:45'),(4,'admin','0002_logentry_remove_auto_add','2017-11-02 13:46:45'),(5,'api','0001_initial','2017-11-02 13:46:46'),(6,'contenttypes','0002_remove_content_type_name','2017-11-02 13:46:46'),(7,'auth','0002_alter_permission_name_max_length','2017-11-02 13:46:46'),(8,'auth','0003_alter_user_email_max_length','2017-11-02 13:46:46'),(9,'auth','0004_alter_user_username_opts','2017-11-02 13:46:46'),(10,'auth','0005_alter_user_last_login_null','2017-11-02 13:46:46'),(11,'auth','0006_require_contenttypes_0002','2017-11-02 13:46:46'),(12,'auth','0007_alter_validators_add_error_messages','2017-11-02 13:46:46'),(13,'auth','0008_alter_user_username_max_length','2017-11-02 13:46:46'),(14,'authtoken','0001_initial','2017-11-02 13:46:46'),(15,'authtoken','0002_auto_20160226_1747','2017-11-02 13:46:46'),(16,'sessions','0001_initial','2017-11-02 13:46:46');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-02 13:52:56
