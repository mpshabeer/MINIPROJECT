-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 05:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentsdiscussionforum`
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
(25, 'Can add facultyreg', 7, 'add_facultyreg'),
(26, 'Can change facultyreg', 7, 'change_facultyreg'),
(27, 'Can delete facultyreg', 7, 'delete_facultyreg'),
(28, 'Can view facultyreg', 7, 'view_facultyreg'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add login', 9, 'add_login'),
(34, 'Can change login', 9, 'change_login'),
(35, 'Can delete login', 9, 'delete_login'),
(36, 'Can view login', 9, 'view_login'),
(37, 'Can add post', 10, 'add_post'),
(38, 'Can change post', 10, 'change_post'),
(39, 'Can delete post', 10, 'delete_post'),
(40, 'Can view post', 10, 'view_post'),
(41, 'Can add studentreg', 11, 'add_studentreg'),
(42, 'Can change studentreg', 11, 'change_studentreg'),
(43, 'Can delete studentreg', 11, 'delete_studentreg'),
(44, 'Can view studentreg', 11, 'view_studentreg'),
(45, 'Can add topic', 12, 'add_topic'),
(46, 'Can change topic', 12, 'change_topic'),
(47, 'Can delete topic', 12, 'delete_topic'),
(48, 'Can view topic', 12, 'view_topic');

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
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `cid` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `chat` varchar(200) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `tid` int(11) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`cid`, `sender`, `receiver`, `chat`, `topic`, `tid`, `time`) VALUES
(1, '', '', '', 'ms', 10, '00:00:00'),
(2, 'facuality', 'student', 'hello', 'a', 3, '00:00:00'),
(3, 'facuality', 'student', 'hello', 'a', 3, '00:00:00'),
(5, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(6, 'student', 'facuality', 'heelo fa', 'a', 3, '00:00:00'),
(7, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(8, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(9, 'student', 'facuality', 'heelo fa', 'a', 3, '00:00:00'),
(10, 'student', 'facuality', 'welcome\r\nits oke', 'a', 3, '00:00:00'),
(11, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(12, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(13, 'facuality', 'student', 'welcome', 'a', 3, '00:00:00'),
(14, 'facuality', 'student', '', 'a', 5, '11:22:56'),
(15, 'facuality', 'student', '', 'a', 5, '11:23:02'),
(16, 'facuality', 'student', 'helloooo', 'a', 11, '12:03:55'),
(17, 'facuality', 'student', 'Good Morning to all', 'a', 11, '12:04:14'),
(18, 'student', 'facuality', 'h', 'a', 11, '12:05:07'),
(19, 'student', 'facuality', 'hi', 'a', 14, '12:16:05'),
(20, 'student', 'facuality', 'hi', 'a', 14, '12:19:06'),
(21, 'facuality', 'student', 'To day is Holiday', 'a', 11, '12:42:40'),
(22, 'student', 'facuality', 'okay sir ...\r\nthank you .\r\ngood eveninig', 'a', 11, '12:45:51'),
(24, 'facuality', 'student', 'hello ,students .good Morning', 'a', 15, '12:55:01'),
(25, 'student', 'facuality', 'Good Morning sir', 'a', 15, '12:55:23'),
(26, 'facuality', 'student', 'hello ,students .good Morning', 'a', 15, '12:55:28'),
(27, 'facuality', 'student', 'hai', 'a', 15, '20:46:28'),
(28, 'student', 'facuality', 'good evening', 'a', 15, '20:46:50'),
(29, 'facuality', 'student', 'hai', 'a', 15, '20:47:03'),
(30, 'student', 'facuality', 'hello', 'a', 15, '20:48:59');

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
(7, 'facultyreg', 'facultyreg'),
(8, 'feedback', 'feedback'),
(9, 'login', 'login'),
(10, 'post', 'post'),
(6, 'sessions', 'session'),
(11, 'studentreg', 'studentreg'),
(12, 'topic', 'topic');

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
(1, 'contenttypes', '0001_initial', '2022-11-05 07:48:02.613793'),
(2, 'auth', '0001_initial', '2022-11-05 07:48:04.738721'),
(3, 'admin', '0001_initial', '2022-11-05 07:48:14.035461'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-05 07:48:15.597833'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-05 07:48:15.644727'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-05 07:48:16.441550'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-05 07:48:17.316486'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-05 07:48:17.441475'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-05 07:48:17.519580'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-05 07:48:18.300806'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-05 07:48:18.332095'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-05 07:48:18.378916'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-05 07:48:18.535132'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-05 07:48:18.738244'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-05 07:48:18.878874'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-05 07:48:18.910180'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-05 07:48:19.582010'),
(18, 'facultyreg', '0001_initial', '2022-11-05 07:48:19.660129'),
(19, 'feedback', '0001_initial', '2022-11-05 07:48:19.753872'),
(20, 'login', '0001_initial', '2022-11-05 07:48:19.816298'),
(21, 'post', '0001_initial', '2022-11-05 07:48:19.878812'),
(22, 'sessions', '0001_initial', '2022-11-05 07:48:20.206894'),
(23, 'studentreg', '0001_initial', '2022-11-05 07:48:20.519372'),
(24, 'topic', '0001_initial', '2022-11-05 07:48:20.597490');

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
('v1fvx8ayqn2v8raixlmyb0xxivgn056z', 'eyJ1aWQiOjIzfQ:1oubEV:0siW1UhJLalKs_iLlxg6XNgqfgpdqmqn4i-xtajmZAM', '2022-11-28 15:18:47.186368');

-- --------------------------------------------------------

--
-- Table structure for table `facultyreg`
--

CREATE TABLE `facultyreg` (
  `fid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobileno` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facultyreg`
--

INSERT INTO `facultyreg` (`fid`, `name`, `mobileno`, `address`, `mail`, `gender`, `department`, `username`, `password`, `status`) VALUES
(12, 'geevarcz', 4567282, 'cz', 'eevar', 'male', 'MCA', 'geevar', '123', 'approved'),
(14, 'suhail', 73567782, 'suhail mp', 'suhailsuhu', 'male', 'MCA', 'suhailsuhu', 'suhu', 'approved'),
(15, 'munnavar jasim', 897678654, 'mj', 'mj12@', 'male', 'MCA', 'mj1', 'mj1', 'approved'),
(16, 'Febin Aziz', 765644343, 'fe', 'febifebin@gmail.com', 'female', 'MCA', 'febi', 'febi', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feid` int(11) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feid`, `feedback`, `sid`) VALUES
(4, 'no comments\r\n', 1),
(6, 'sha ', 121),
(9, 'very lucky', 1),
(10, 'very lucky', 1),
(11, 'very lucky', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `logi_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`logi_id`, `u_id`, `username`, `password`, `type`, `status`) VALUES
(1, 1, 'admin', 'password', 'admin', 'approved'),
(11, 12, 'geevar', '123', 'faculty', 'approved'),
(15, 14, 'suhailsuhu', 'suhu', 'faculty', 'approved'),
(30, 16, 'febi', 'febi', 'faculty', 'approved'),
(33, 22, 'sha', 'sha', 'student', 'approved'),
(34, 23, 'habe', 'habe', 'student', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `file_id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`file_id`, `tid`, `description`, `file`, `date`, `time`) VALUES
(1, 3, 'ad', 'product key.txt', '2022-11-13', '11:31:02'),
(2, 11, 'About class', 'oop.jpg', '2022-11-13', '12:05:54'),
(3, 15, 'osi seven layers', 'images.jpg', '2022-11-13', '12:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `post` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE `studentreg` (
  `sid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `regno` int(10) NOT NULL,
  `mobileno` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` int(2) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`sid`, `name`, `regno`, `mobileno`, `address`, `mail`, `gender`, `department`, `semester`, `username`, `password`, `status`) VALUES
(22, 'shabeeer', 132, 8246656, 'mpshabeer', 'mpshabeer007', 'male', 'MCA', 1, 'sha', 'sha', 'approved'),
(23, 'habbeb Rahman', 1668, 87878748, 'mpshabeer', 'hbee', 'male', 'MCA', 1, 'habe', 'habe', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `tid` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `semester` int(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`tid`, `topic`, `semester`, `description`, `image`) VALUES
(11, 'Data Science And Machine Learning', 3, 'Program Lab', 'ds.jpg'),
(12, 'OOps', 2, 'Java Basics', 'C.webp'),
(13, 'Android', 1, 'Android Programing', 'android.jpg'),
(14, ' MAD LAB ', 4, 'android', 'android.jpg'),
(15, 'Network ', 1, 'ds', 'C.webp');

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
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`cid`);

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
-- Indexes for table `facultyreg`
--
ALTER TABLE `facultyreg`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`logi_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `studentreg`
--
ALTER TABLE `studentreg`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`tid`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `facultyreg`
--
ALTER TABLE `facultyreg`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `logi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentreg`
--
ALTER TABLE `studentreg`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
