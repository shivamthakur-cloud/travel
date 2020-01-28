-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table travel_db.auth_group: ~0 rows (approximately)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_group_permissions: ~0 rows (approximately)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_permission: ~24 rows (approximately)
DELETE FROM `auth_permission`;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add group', 3, 'add_group'),
	(8, 'Can change group', 3, 'change_group'),
	(9, 'Can delete group', 3, 'delete_group'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add role details', 7, 'add_roledetails'),
	(20, 'Can change role details', 7, 'change_roledetails'),
	(21, 'Can delete role details', 7, 'delete_roledetails'),
	(22, 'Can add user role', 8, 'add_userrole'),
	(23, 'Can change user role', 8, 'change_userrole'),
	(24, 'Can delete user role', 8, 'delete_userrole');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user: ~1 rows (approximately)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$100000$1u2Pc6t7fHSF$HWyi8RXS/nAzczrssLO57c1WZM4KzVfdV67WDrzkfhQ=', '2020-01-24 10:32:14', 1, 'admin', '', '', '', 1, 1, '2020-01-24 10:31:59');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user_groups: ~0 rows (approximately)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user_user_permissions: ~0 rows (approximately)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping data for table travel_db.backend_app_roledetails: ~2 rows (approximately)
DELETE FROM `backend_app_roledetails`;
/*!40000 ALTER TABLE `backend_app_roledetails` DISABLE KEYS */;
INSERT INTO `backend_app_roledetails` (`name`, `email`, `password`, `mobile`, `gender`, `image`, `is_active`, `otp`, `otp_time`, `verify_link`, `role_id_id`, `address`) VALUES
	('shiva', 'shiva@gmail.com', 'pbkdf2_sha256$100000$II0RUW5FdFMT$AD/3XPKJ2jzZCLew6qdmb4s8oDqFWaMGPgcqYOSK3H0=', 1234567890, 'female', '', 0, '', '', 'pbkdf2_sha256$100000$oYQOqOoEUBLK$9d8RFNd5QjgWQAmjrW8FPpj9cIRjyxP1iEVeOZtWU4M=', 1, ''),
	('viveki', 'shivakalyan3243@gmail.com', 'pbkdf2_sha256$100000$DhhnxIMyG35u$RzekwQDhP79xF1AWWk7TFFWKRjzUkN8z/WYkPzOXy+w=', 98637637307, 'female', '', 1, '', '', '', 1, '');
/*!40000 ALTER TABLE `backend_app_roledetails` ENABLE KEYS */;

-- Dumping data for table travel_db.backend_app_userrole: ~1 rows (approximately)
DELETE FROM `backend_app_userrole`;
/*!40000 ALTER TABLE `backend_app_userrole` DISABLE KEYS */;
INSERT INTO `backend_app_userrole` (`role_id`, `role_name`) VALUES
	(1, 'admin');
/*!40000 ALTER TABLE `backend_app_userrole` ENABLE KEYS */;

-- Dumping data for table travel_db.django_admin_log: ~1 rows (approximately)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2020-01-24 10:32:23', '1', 'UserRole object (1)', 1, '[{"added": {}}]', 8, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping data for table travel_db.django_content_type: ~8 rows (approximately)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'backend_app', 'roledetails'),
	(8, 'backend_app', 'userrole'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping data for table travel_db.django_migrations: ~16 rows (approximately)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-01-24 10:26:51'),
	(2, 'auth', '0001_initial', '2020-01-24 10:26:54'),
	(3, 'admin', '0001_initial', '2020-01-24 10:26:54'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-24 10:26:54'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2020-01-24 10:26:54'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2020-01-24 10:26:55'),
	(7, 'auth', '0003_alter_user_email_max_length', '2020-01-24 10:26:55'),
	(8, 'auth', '0004_alter_user_username_opts', '2020-01-24 10:26:55'),
	(9, 'auth', '0005_alter_user_last_login_null', '2020-01-24 10:26:55'),
	(10, 'auth', '0006_require_contenttypes_0002', '2020-01-24 10:26:55'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2020-01-24 10:26:55'),
	(12, 'auth', '0008_alter_user_username_max_length', '2020-01-24 10:26:55'),
	(13, 'auth', '0009_alter_user_last_name_max_length', '2020-01-24 10:26:56'),
	(14, 'backend_app', '0001_initial', '2020-01-24 10:26:56'),
	(15, 'sessions', '0001_initial', '2020-01-24 10:26:56'),
	(16, 'backend_app', '0002_roledetails_address', '2020-01-24 10:27:47');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping data for table travel_db.django_session: ~0 rows (approximately)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
