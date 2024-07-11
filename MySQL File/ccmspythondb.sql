-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 04:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccmspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication_addcomputer`
--

CREATE TABLE `authentication_addcomputer` (
  `id` bigint(20) NOT NULL,
  `compname` varchar(200) NOT NULL,
  `comploc` varchar(200) NOT NULL,
  `idadd` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_addcomputer`
--

INSERT INTO `authentication_addcomputer` (`id`, `compname`, `comploc`, `idadd`, `created_at`, `updated_at`) VALUES
(1, 'Acer', 'Cabin101', '127.0.0.06', '2023-12-18 06:39:00.711566', '2023-12-17'),
(2, 'DELL', 'Cabin102', '127.0.0.08', '2023-12-18 06:39:10.121023', '2023-12-17'),
(3, 'Asus Gaming Laptop', 'Cabin103', '127.0.0.2', '2023-12-18 06:39:18.170708', '2023-12-17'),
(4, 'Dell', 'Cabin104', '127.0.0.5', '2023-12-18 06:39:44.870501', '2023-12-17'),
(5, 'Asus Gaming Laptop', 'Cabin109', '127.0.0.09', '2023-12-18 06:39:59.704615', '2023-12-17'),
(6, 'ASUS', 'Cabin109', '127.0.0.9', '2023-12-18 06:40:17.393882', '2023-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_addcyberuser`
--

CREATE TABLE `authentication_addcyberuser` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `computeruse_id_id` bigint(20) NOT NULL,
  `idproof` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `entryid` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_addcyberuser`
--

INSERT INTO `authentication_addcyberuser` (`id`, `name`, `address`, `mobilenumber`, `email`, `computeruse_id_id`, `idproof`, `created_at`, `updated_at`, `entryid`, `fees`, `remark`, `status`) VALUES
(1, 'Rajat Mehta', 'O-908, GHU, Block-7', 2147483647, 'rajat@gmail.com', 1, 'DEF123LO', '2023-12-18 06:42:03.363581', '2023-12-18 06:54:24.825821', 1231, 100, '3 hrs used', 'Checkout'),
(2, 'Shanu Mishra', 'O-901, GHU, Block-8', 2147483647, 'shanu@gmail.com', 5, '77797jkh', '2023-12-15 06:42:43.397748', '2024-01-15 03:12:38.710114', 1232, 100, 'Out', 'Checkout'),
(3, 'Sarita', 'P-908, GHU, Block-9', 2147483647, 'sar@gmail.com', 3, '897987hghghjg', '2023-12-18 06:43:22.139643', '2023-12-18 06:43:22.139643', 123, 0, '0', '0'),
(4, 'John Doe', 'A 123 XYZ New Delhi', 1425362514, 'test@t.com', 2, 'Adhar', '2024-01-14 19:11:44.688523', '2024-01-14 19:12:00.382766', 14253625, 20, 'NA', 'Checkout');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_customuser`
--

CREATE TABLE `authentication_customuser` (
  `id` bigint(20) NOT NULL,
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
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_customuser`
--

INSERT INTO `authentication_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$AAfnFTe32TvNpHNcE7N5Ae$JE1agPLLyAFtZfCnRPTUNOpa0XYHUVQr+ZRY+AAL0mk=', '2024-01-15 15:03:38.158212', 1, 'admin', 'Admin', 'User', 'admin@gmail.com', 1, 1, '2023-12-18 06:37:54.843512', '');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_customuser_groups`
--

CREATE TABLE `authentication_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_customuser_user_permissions`
--

CREATE TABLE `authentication_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add add computer', 7, 'add_addcomputer'),
(26, 'Can change add computer', 7, 'change_addcomputer'),
(27, 'Can delete add computer', 7, 'delete_addcomputer'),
(28, 'Can view add computer', 7, 'view_addcomputer'),
(29, 'Can add add cyber user', 8, 'add_addcyberuser'),
(30, 'Can change add cyber user', 8, 'change_addcyberuser'),
(31, 'Can delete add cyber user', 8, 'delete_addcyberuser'),
(32, 'Can view add cyber user', 8, 'view_addcyberuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(7, 'authentication', 'addcomputer'),
(8, 'authentication', 'addcyberuser'),
(6, 'authentication', 'customuser'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-18 06:31:00.040418'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-12-18 06:31:00.111116'),
(3, 'auth', '0001_initial', '2023-12-18 06:31:00.386578'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-12-18 06:31:00.441797'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-12-18 06:31:00.450774'),
(6, 'auth', '0004_alter_user_username_opts', '2023-12-18 06:31:00.459209'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-12-18 06:31:00.468018'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-12-18 06:31:00.472949'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-12-18 06:31:00.483018'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-12-18 06:31:00.494366'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-12-18 06:31:00.502530'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-12-18 06:31:00.515760'),
(13, 'auth', '0011_update_proxy_permissions', '2023-12-18 06:31:00.525513'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-12-18 06:31:00.532548'),
(15, 'authentication', '0001_initial', '2023-12-18 06:31:00.843245'),
(16, 'admin', '0001_initial', '2023-12-18 06:31:00.961197'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-12-18 06:31:00.973165'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-18 06:31:00.985808'),
(19, 'authentication', '0002_addcomputer', '2023-12-18 06:31:00.999383'),
(20, 'authentication', '0003_addcyberuser', '2023-12-18 06:31:01.062911'),
(21, 'authentication', '0004_rename_computeruse_addcyberuser_computeruse_id', '2023-12-18 06:31:01.076293'),
(22, 'authentication', '0005_alter_addcyberuser_mobilenumber', '2023-12-18 06:31:01.081768'),
(23, 'authentication', '0006_addcyberuser_entryid', '2023-12-18 06:31:01.102911'),
(24, 'authentication', '0007_alter_addcyberuser_computeruse_id', '2023-12-18 06:31:01.208157'),
(25, 'authentication', '0008_addcyberuser_fees_addcyberuser_remark_and_more', '2023-12-18 06:31:01.249689'),
(26, 'authentication', '0009_alter_addcyberuser_updated_at', '2023-12-18 06:31:01.297730'),
(27, 'authentication', '0010_alter_addcyberuser_computeruse_id', '2023-12-18 06:31:04.337444'),
(28, 'authentication', '0011_alter_addcyberuser_computeruse_id', '2023-12-18 06:31:04.449689'),
(29, 'sessions', '0001_initial', '2023-12-18 06:31:04.481370');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s2cn1scsvk9pst9n7icie14cot1cf93g', '.eJxVjEEOwiAQRe_C2hCgIxSX7nsGAsyMVA0kpV0Z765NutDtf-_9lwhxW0vYOi1hRnERWpx-txTzg-oO8B7rrcnc6rrMSe6KPGiXU0N6Xg_376DEXr71WWkGk8Fb71IagZw2IyifgAhZKxh0RjIDq-zZkELjmTGjBbQ8OCXeH9Q-OAY:1rFwq6:56SGh-nXVMnvbFUdY1zeliAlzAR-m8_02bKPRAjYmMA', '2024-01-03 13:42:22.067589'),
('xb86qpbj5o5ycyeqtvjfjylpyccm8adk', '.eJxVjDsOwjAQBe_iGlmsvfGHkj5niNbrNQ4gR8qnQtwdIqWA9s3Me6mBtrUO2yLzMGZ1UaBOv1sifkjbQb5Tu02ap7bOY9K7og-66H7K8rwe7t9BpaV-a-sTGGJwjgwKuizJWsAQAYGC6aRwKGIALSZAducOYmQR77LngqDeH8zaN2o:1rPOV0:yeCr91Zj2cs210jsGq5aJ2xeWzC_jzyvDtrc31_Ah9k', '2024-01-29 15:03:38.160203');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication_addcomputer`
--
ALTER TABLE `authentication_addcomputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication_addcyberuser`
--
ALTER TABLE `authentication_addcyberuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentication_addcyberuser_computeruse_id_id_156e0df4` (`computeruse_id_id`);

--
-- Indexes for table `authentication_customuser`
--
ALTER TABLE `authentication_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `authentication_customuser_groups`
--
ALTER TABLE `authentication_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_customuse_customuser_id_group_id_8a637646_uniq` (`customuser_id`,`group_id`),
  ADD KEY `authentication_custo_group_id_c5ef1d10_fk_auth_grou` (`group_id`);

--
-- Indexes for table `authentication_customuser_user_permissions`
--
ALTER TABLE `authentication_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_customuse_customuser_id_permission_923704b1_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `authentication_custo_permission_id_e47332af_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authentic` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication_addcomputer`
--
ALTER TABLE `authentication_addcomputer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `authentication_addcyberuser`
--
ALTER TABLE `authentication_addcyberuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `authentication_customuser`
--
ALTER TABLE `authentication_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authentication_customuser_groups`
--
ALTER TABLE `authentication_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authentication_customuser_user_permissions`
--
ALTER TABLE `authentication_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentication_addcyberuser`
--
ALTER TABLE `authentication_addcyberuser`
  ADD CONSTRAINT `authentication_addcy_computeruse_id_id_156e0df4_fk_authentic` FOREIGN KEY (`computeruse_id_id`) REFERENCES `authentication_addcomputer` (`id`);

--
-- Constraints for table `authentication_customuser_groups`
--
ALTER TABLE `authentication_customuser_groups`
  ADD CONSTRAINT `authentication_custo_customuser_id_a7d1343c_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authentication_customuser` (`id`),
  ADD CONSTRAINT `authentication_custo_group_id_c5ef1d10_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `authentication_customuser_user_permissions`
--
ALTER TABLE `authentication_customuser_user_permissions`
  ADD CONSTRAINT `authentication_custo_customuser_id_33d2a5f7_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authentication_customuser` (`id`),
  ADD CONSTRAINT `authentication_custo_permission_id_e47332af_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
