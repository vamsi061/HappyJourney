-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 01:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happyjourney`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add city', 7, 'add_city'),
(26, 'Can change city', 7, 'change_city'),
(27, 'Can delete city', 7, 'delete_city'),
(28, 'Can view city', 7, 'view_city'),
(29, 'Can add im pfle', 8, 'add_impfle'),
(30, 'Can change im pfle', 8, 'change_impfle'),
(31, 'Can delete im pfle', 8, 'delete_impfle'),
(32, 'Can view im pfle', 8, 'view_impfle'),
(33, 'Can add data', 9, 'add_data'),
(34, 'Can change data', 9, 'change_data'),
(35, 'Can delete data', 9, 'delete_data'),
(36, 'Can view data', 9, 'view_data'),
(37, 'Can add passenger data', 10, 'add_passengerdata'),
(38, 'Can change passenger data', 10, 'change_passengerdata'),
(39, 'Can delete passenger data', 10, 'delete_passengerdata'),
(40, 'Can view passenger data', 10, 'view_passengerdata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$8qPNVVB4vTpv$DsK8Y12g95Uuq+AGXOd4rwAAKn4zDLVXzkk6LRAJJWM=', '2021-11-12 12:07:22.859121', 0, 'vamsi', 'vamsi', 'vamsi', 'guruvamsi061@gmail.com', 0, 1, '2021-01-04 13:23:34.295122'),
(2, 'pbkdf2_sha256$216000$6MalFCvIzx9w$Hr/uGnuttF/dBpy8QaCN3UKx2NqY/DH87BvdOJzscT4=', '2021-01-07 04:51:34.431551', 1, 'user', 'vamsi', 'vamsi', 'guruvamsi061@gmail.com', 1, 1, '2021-01-04 13:25:42.382361'),
(3, 'pbkdf2_sha256$216000$dNoaBfZDBsSI$xWbef98mRDd+p5ZI8pDeZOxemb/P4UcVnPszI2+oJRU=', '2021-01-07 04:46:28.220478', 0, 'nouser', 'vamsi', 'vamsi', 'guruvamsi06@gmail.com', 0, 1, '2021-01-07 04:46:07.912782');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `busid` varchar(10) NOT NULL,
  `busim` varchar(100) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `cost` varchar(15) DEFAULT NULL,
  `timmings` varchar(30) NOT NULL,
  `busclass` varchar(15) NOT NULL,
  `da` datetime(6) NOT NULL,
  `d_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `source`, `destination`, `busid`, `busim`, `distance`, `cost`, `timmings`, `busclass`, `da`, `d_id`) VALUES
(1, 'Ananthapuram', 'Banglore', '30102', 'Bus_Image/Express_ZgxMKXy.jpg', '190 KM', '300', '08:20 AM   TO  13:25 PM', 'Express', '2021-01-06 08:26:51.000000', NULL),
(2, 'Bantumilli', 'Gudlavalleru', '30201', 'Bus_Image/TELUGU_VELUGU_WtNuTnV.jpg', '30KM', '30', '08:00 AM   TO  09:00 AM', 'Pallevellugu', '2021-01-06 08:37:03.000000', NULL),
(3, 'Chittor', 'Banglore', '30303', 'Bus_Image/download_rwphHOV.jpg', '180 KM', '200', '10:55 AM   TO  14:45 PM', 'Ultra Deluxe', '2021-01-06 08:45:00.000000', NULL),
(4, 'Dharmavaram', 'Kadiri', '30401', 'Bus_Image/TELUGU_VELUGU_NG8OL36.jpg', '55KM', '60', '09:30 AM   TO  10:35 PM', 'Pallevellugu', '2021-01-06 08:53:37.000000', NULL),
(5, 'Eluru', 'Vijayawada', '30502', 'Bus_Image/Express_P9b6Bmt.jpg', '57 KM', '75', '11:30 AM  TO  13:00 PM', 'Express', '2021-01-06 09:07:03.000000', NULL),
(6, 'Gudivada', 'Gudlavalleru', '30601', 'Bus_Image/TELUGU_VELUGU_8EpxtD5.jpg', '11 KM', '15', '17:30 PM   TO  18:00PM', 'Pallevellugu', '2021-01-06 09:10:30.000000', NULL),
(8, 'Hanuman Junction', 'Machilipatnam', '30701', 'Bus_Image/TELUGU_VELUGU_XDF0qtI.jpg', '65 KM', '70', '07:00 AM  TO  09:00 AM', 'Pallevellugu', '2021-01-06 09:52:28.000000', NULL),
(9, 'Hanuman Junction', 'Machilipatnam', '30802', 'Bus_Image/Express_6sjJeCd.jpg', '70km', '140', '11:00 Am To 13:00', 'Express', '2021-01-06 11:29:27.000000', NULL);

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Travelling', 'city'),
(9, 'Travelling', 'data'),
(8, 'Travelling', 'impfle'),
(10, 'Travelling', 'passengerdata');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-04 13:21:03.249342'),
(2, 'auth', '0001_initial', '2021-01-04 13:21:04.612711'),
(3, 'Travelling', '0001_initial', '2021-01-04 13:21:10.940660'),
(4, 'admin', '0001_initial', '2021-01-04 13:21:12.565281'),
(5, 'admin', '0002_logentry_remove_auto_add', '2021-01-04 13:21:13.736874'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-04 13:21:13.799361'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-01-04 13:21:14.315102'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-01-04 13:21:15.080310'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-01-04 13:21:15.158422'),
(10, 'auth', '0004_alter_user_username_opts', '2021-01-04 13:21:15.205330'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-01-04 13:21:15.689546'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-01-04 13:21:15.705401'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-01-04 13:21:15.752077'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-01-04 13:21:16.142573'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-01-04 13:21:16.236519'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-01-04 13:21:16.408330'),
(17, 'auth', '0011_update_proxy_permissions', '2021-01-04 13:21:16.455002'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-01-04 13:21:16.533345'),
(19, 'sessions', '0001_initial', '2021-01-04 13:21:16.736219'),
(20, 'Travelling', '0002_delete_city', '2021-01-04 14:50:16.399704'),
(21, 'Travelling', '0003_auto_20210104_2158', '2021-01-04 16:28:19.252171'),
(22, 'Travelling', '0004_passengerdata', '2021-01-06 06:43:35.997052'),
(23, 'Travelling', '0005_passengerdata_tcost', '2021-01-06 07:12:12.013905'),
(24, 'Travelling', '0006_auto_20210106_1314', '2021-01-06 07:44:45.810222'),
(25, 'Travelling', '0007_auto_20210106_1816', '2021-01-06 12:46:54.099625'),
(26, 'Travelling', '0008_passengerdata_busid', '2021-01-06 15:31:28.737435'),
(27, 'Travelling', '0009_auto_20210106_2217', '2021-01-06 16:47:21.131959'),
(28, 'Travelling', '0010_remove_passengerdata_charge', '2021-01-06 16:51:18.292900');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1h9pupy8jsc8xwa85aewb38h03qqdwpe', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kwRWb:vqxGASaKb8tNxT5H_ezkdmqyRzMufx_bXCoxSWMofKk', '2021-01-18 15:12:01.610922'),
('3eljgmvszze4f5h4n608judvgvdfrydc', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kx2Ct:yrZ9sA9AkBIfLoA-Z9KjIAoVlHX-aQJkLuITG3rh5UI', '2021-01-20 06:22:07.427369'),
('43jyi899do7ybp0w35thxy0xh1cvfmz7', '.eJxVjMEOwiAQBf-FsyFQlgIevfcbyMKCVA0kpT0Z_9026UGvM_Pem3nc1uK3nhY_E7syyS6_LGB8pnoIemC9Nx5bXZc58CPhp-18apRet7P9OyjYy74eKRi0gNpkl0hYIHARdzQ6acAYVNmSFoNUg5IWVAYNxkVF2qJMwrHPF9YyNvw:1kxUS5:llSN8DVBMglvNhYz6x-REEZMoYr9fAwJHp0SG8xsIOg', '2021-01-21 12:31:41.699941'),
('8kzhlzbkxrqw0a6dbbw167b5ibmia479', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kxNGo:55yjOeem6OlM5EnfC7bFUbjkvrgrF8QuAZnV8eWamI4', '2021-01-21 04:51:34.481419'),
('a4y5kodx2fau842eqfur3qzxmejlkg41', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kwbs7:PbtNpCsvAFqbXI_5e0blzgDcp_HELJhg7cP-t9O_sGc', '2021-01-19 02:14:55.017934'),
('c2malrz99d9d9wz58hvn93y0xwmdr9xc', '.eJxVjMEOwiAQBf-FsyFQlgIevfcbyMKCVA0kpT0Z_9026UGvM_Pem3nc1uK3nhY_E7syyS6_LGB8pnoIemC9Nx5bXZc58CPhp-18apRet7P9OyjYy74eKRi0gNpkl0hYIHARdzQ6acAYVNmSFoNUg5IWVAYNxkVF2qJMwrHPF9YyNvw:1mlVL0:8s1UaXu1L1cXRYsHBMtIyteWxX0L_4ZmmzYFDqmQQ00', '2021-11-26 12:07:22.887930'),
('nbfki2bcbdrpbxvkzn88vuqh1w5j43gf', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kwizq:xAc0Z6AdbsEC8kTjq8IPaOd6kSC1MdtsTrk_DSGkoow', '2021-01-19 09:51:22.815828'),
('usfgb9abdw4cipwvhoaavuvrao08h6q6', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kx3Wx:ONHan1UaEeg6rVW-wgSL6cCVkX3ts_UCdq_ktsAP1rA', '2021-01-20 07:46:55.030890'),
('wtcxs2m29s7b608r0nj60kp94s9facx4', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kwPs0:x6wpulDAqzZMuv_rTxNMoTFmLMLEaa-chis1lhVU3v4', '2021-01-18 13:26:00.113289'),
('xucvvvqhxb01e87ag4qk6w6ospafe9l8', '.eJxVjMEOwiAQBf-FsyFQlgIevfcbyMKCVA0kpT0Z_9026UGvM_Pem3nc1uK3nhY_E7syyS6_LGB8pnoIemC9Nx5bXZc58CPhp-18apRet7P9OyjYy74eKRi0gNpkl0hYIHARdzQ6acAYVNmSFoNUg5IWVAYNxkVF2qJMwrHPF9YyNvw:1kx1nq:kDS83odBbpDPAcUXVOx8XPb2Afbtb_7m2rGpOtO9hjs', '2021-01-20 05:56:14.190993'),
('y5ocrk05arwawj5yv06jgnll473uvaff', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kwTlR:bqiCJbaKISc41WNDdQIh5Z9eAY40vQRH9jzHOn3k0tA', '2021-01-18 17:35:29.639284'),
('yth9xjzjr8pelm1cjzdhhrw3pmq082yi', '.eJxVjEsOwjAMBe-SNYosp5-YJXvOUNlxTQookfpZIe4OlbqA7ZuZ93IDb2setmWch0nd2aE7_W7C6TGWHeidy636VMs6T-J3xR908deq4_NyuH8HmZf8rQHIIqEJKzKSNYYoQGqpCW2nnCAKCQh2jNq3PQIDmEGgEAMSuvcH7Sk3kA:1kx7mo:fjwR6nnpfVubRoaZkO6L0GNrZ0Mo8_cG3uRp-hNk6BQ', '2021-01-20 12:19:34.978032'),
('z2xzoay2wukmpl2ztwlmb31uuukkxave', '.eJxVjMEOwiAQBf-FsyFQlgIevfcbyMKCVA0kpT0Z_9026UGvM_Pem3nc1uK3nhY_E7syyS6_LGB8pnoIemC9Nx5bXZc58CPhp-18apRet7P9OyjYy74eKRi0gNpkl0hYIHARdzQ6acAYVNmSFoNUg5IWVAYNxkVF2qJMwrHPF9YyNvw:1kwg45:wdipiqRUTMsh4MXoyvR3Huj-GCP7XjeqKbfjO8_GLok', '2021-01-19 06:43:33.974742');

-- --------------------------------------------------------

--
-- Table structure for table `travelling_impfle`
--

CREATE TABLE `travelling_impfle` (
  `id` int(11) NOT NULL,
  `im` varchar(100) DEFAULT NULL,
  `Address` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `mb` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travelling_impfle`
--

INSERT INTO `travelling_impfle` (`id`, `im`, `Address`, `date_of_birth`, `mb`, `gender`, `u_id`) VALUES
(1, 'Profile/avatar.jpg', 'Vijayawada', '2021-01-04', '132465', 'Male', 1),
(2, 'Profile/employee_OAzTmQy.png', 'Vijayawada', '2002-06-29', '9182329248', 'Male', 2),
(3, 'Profile/employee_bsSV3ih.png', 'Vijayawada', '2021-01-07', '1315486455', 'Male', 3);

-- --------------------------------------------------------

--
-- Table structure for table `travelling_passengerdata`
--

CREATE TABLE `travelling_passengerdata` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `m_id` int(11) NOT NULL,
  `destnation` varchar(30) DEFAULT NULL,
  `sorce` varchar(30) DEFAULT NULL,
  `bustype` varchar(30) DEFAULT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `busid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travelling_passengerdata`
--

INSERT INTO `travelling_passengerdata` (`id`, `date`, `m_id`, `destnation`, `sorce`, `bustype`, `pname`, `busid`) VALUES
(1, '2021-01-06', 2, 'Banglore', 'Ananthapuram', 'Express', 'vamsi', 30102),
(2, '2021-01-06', 2, 'Gudlavalleru', 'Bantumilli', 'Pallevellugu', 'Raghava', 30201),
(4, '2021-01-07', 1, 'Gudlavalleru', 'Bantumilli', 'Pallevellugu', 'vamsi', 30201),
(5, '2021-01-07', 3, 'Machilipatnam', 'Hanuman Junction', 'Express', 'nouser', 30802),
(6, '2021-09-04', 1, 'Gudlavalleru', 'Bantumilli', 'Pallevellugu', 'vamsi', 30201);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travelling_data_d_id_f0093261_fk_auth_user_id` (`d_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `travelling_impfle`
--
ALTER TABLE `travelling_impfle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_id` (`u_id`);

--
-- Indexes for table `travelling_passengerdata`
--
ALTER TABLE `travelling_passengerdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travelling_passengerdata_m_id_5eb3496c_fk_auth_user_id` (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `travelling_impfle`
--
ALTER TABLE `travelling_impfle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `travelling_passengerdata`
--
ALTER TABLE `travelling_passengerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `Travelling_data_d_id_f0093261_fk_auth_user_id` FOREIGN KEY (`d_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `travelling_impfle`
--
ALTER TABLE `travelling_impfle`
  ADD CONSTRAINT `Travelling_impfle_u_id_8c95564b_fk_auth_user_id` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `travelling_passengerdata`
--
ALTER TABLE `travelling_passengerdata`
  ADD CONSTRAINT `Travelling_passengerdata_m_id_5eb3496c_fk_auth_user_id` FOREIGN KEY (`m_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
