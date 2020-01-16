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

-- Dumping data for table travel_db.auth_permission: ~21 rows (approximately)
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
	(19, 'Can add user role', 7, 'add_userrole'),
	(20, 'Can change user role', 7, 'change_userrole'),
	(21, 'Can delete user role', 7, 'delete_userrole');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user: ~2 rows (approximately)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$100000$IhCcBHoDh9Nb$1Ae0s1VycX5TII+6MkbIolfAGP2twYvU9B/EfEOulhE=', NULL, 1, 'travel_admin', '', '', '', 1, 1, '2020-01-14 10:26:01'),
	(2, 'pbkdf2_sha256$100000$Kp9PyLZ9Iajm$mA5/kxIfTOvHawU0OA4M26IX5pcR0cVprjQrafKLqGo=', '2020-01-16 10:15:46', 1, 'shiva', '', '', '', 1, 1, '2020-01-16 10:15:04');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user_groups: ~0 rows (approximately)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping data for table travel_db.auth_user_user_permissions: ~0 rows (approximately)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping data for table travel_db.django_admin_log: ~3 rows (approximately)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2020-01-16 10:18:07', '1', 'UserRole object (1)', 1, '[{"added": {}}]', 7, 2),
	(2, '2020-01-16 10:18:14', '2', 'UserRole object (2)', 1, '[{"added": {}}]', 7, 2),
	(3, '2020-01-16 10:18:20', '3', 'UserRole object (3)', 1, '[{"added": {}}]', 7, 2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping data for table travel_db.django_content_type: ~7 rows (approximately)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'front_app', 'userrole'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping data for table travel_db.django_migrations: ~15 rows (approximately)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-01-09 09:55:01'),
	(2, 'auth', '0001_initial', '2020-01-09 09:55:04'),
	(3, 'admin', '0001_initial', '2020-01-09 09:55:05'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-09 09:55:05'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2020-01-09 09:55:05'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2020-01-09 09:55:05'),
	(7, 'auth', '0003_alter_user_email_max_length', '2020-01-09 09:55:06'),
	(8, 'auth', '0004_alter_user_username_opts', '2020-01-09 09:55:06'),
	(9, 'auth', '0005_alter_user_last_login_null', '2020-01-09 09:55:06'),
	(10, 'auth', '0006_require_contenttypes_0002', '2020-01-09 09:55:06'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2020-01-09 09:55:06'),
	(12, 'auth', '0008_alter_user_username_max_length', '2020-01-09 09:55:06'),
	(13, 'auth', '0009_alter_user_last_name_max_length', '2020-01-09 09:55:07'),
	(14, 'sessions', '0001_initial', '2020-01-09 09:55:07'),
	(15, 'front_app', '0001_initial', '2020-01-09 10:24:57');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping data for table travel_db.django_session: ~1 rows (approximately)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('7cmo0hy3k1qhwwuoq002o46i3rsbu6ni', 'YjYzNDZkY2I2ZjVjYWM4OWYwM2NlNTRjM2IwYTViNzEzNDIxNzcxYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDhhYjRiNzA5ODE3ZGVmNjg4OGVlNWYzYThiMDc0MjJlZGZjMTMxIn0=', '2020-01-30 10:15:46');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping data for table travel_db.front_app_userrole: ~3 rows (approximately)
DELETE FROM `front_app_userrole`;
/*!40000 ALTER TABLE `front_app_userrole` DISABLE KEYS */;
INSERT INTO `front_app_userrole` (`role_id`, `role_name`) VALUES
	(3, 'admin'),
	(1, 'manager'),
	(2, 'user');
/*!40000 ALTER TABLE `front_app_userrole` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
