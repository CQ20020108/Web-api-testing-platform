-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 db_php_run 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_php_run` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_php_run`;

-- 导出  表 db_php_run.course 结构
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.course 的数据：0 rows
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 db_php_run.data 结构
CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) DEFAULT NULL,
  `code` varchar(8000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.data 的数据：0 rows
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;

-- 导出  表 db_php_run.score 结构
CREATE TABLE IF NOT EXISTS `score` (
  `id` int(11) DEFAULT NULL COMMENT '成绩ID',
  `score` int(11) DEFAULT NULL COMMENT '成绩',
  `user_id` int(11) DEFAULT NULL COMMENT '属于哪个用户',
  `code` varchar(50) DEFAULT NULL COMMENT '提交的代码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `submit_time` datetime DEFAULT NULL COMMENT '最后一次提交时间',
  `pass_time` datetime DEFAULT NULL COMMENT '通过时间',
  `desc` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.score 的数据：2 rows
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
REPLACE INTO `score` (`id`, `score`, `user_id`, `code`, `create_time`, `submit_time`, `pass_time`, `desc`, `name`) VALUES
	(NULL, 100, NULL, NULL, NULL, NULL, NULL, '优秀表现', '任务一'),
	(NULL, 98, NULL, NULL, NULL, NULL, NULL, '优秀表现', '任务二');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;

-- 导出  表 db_php_run.task 结构
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `hidden` int(11) DEFAULT NULL COMMENT '是否隐藏',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `path` varchar(50) DEFAULT NULL,
  `doc` varchar(50) DEFAULT NULL COMMENT '任务附件',
  `description` varchar(50) DEFAULT NULL COMMENT '任务描述',
  `code` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL COMMENT '语言',
  `expected` varchar(50) DEFAULT NULL COMMENT '预期值',
  `sign` int(11) DEFAULT NULL COMMENT '标识',
  `test_case` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.task 的数据：8 rows
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
REPLACE INTO `task` (`id`, `user_id`, `name`, `hidden`, `create_time`, `update_time`, `type`, `path`, `doc`, `description`, `code`, `file`, `language`, `expected`, `sign`, `test_case`) VALUES
	(1, 0, '任务一：求余数', NULL, '2023-12-05 21:18:50', '2023-12-05 21:18:50', '1', NULL, '1212', '求15的余数', '2323', NULL, '1', '2332', NULL, '1'),
	(2, 0, '任务二：求加法', NULL, '2023-12-05 21:19:31', '2023-12-05 21:19:31', '1', NULL, 'sc', '求3+5的值', NULL, NULL, 'php', '8', NULL, '8'),
	(3, 0, '任务三：香蕉去皮', NULL, '2023-12-05 21:20:16', '2023-12-05 21:20:16', '默认', NULL, '香蕉去皮', '香蕉去皮', NULL, NULL, 'php', '香蕉去皮', NULL, '香蕉去皮'),
	(4, 0, '任务四：泰山压顶', NULL, '2023-12-05 21:21:13', '2023-12-05 21:21:13', '泰山压顶', NULL, '泰山压顶', '泰山压顶', NULL, NULL, NULL, '泰山压顶', NULL, '泰山压顶'),
	(7, 0, '121', NULL, '2023-12-11 17:17:58', '2023-12-11 17:17:58', '默认', NULL, NULL, '1212', NULL, NULL, 'PHP', '2323', NULL, '232312'),
	(8, 0, '12112', NULL, '2023-12-11 17:18:12', '2023-12-11 17:18:12', '默认', NULL, NULL, '12121212', NULL, NULL, 'PHP', '2323', NULL, '232312'),
	(9, 0, '1211212', NULL, '2023-12-11 17:19:32', '2023-12-11 17:19:32', '默认', NULL, NULL, '12121212', NULL, NULL, 'PHP', '2323', NULL, '232312'),
	(10, 0, '1212', NULL, '2023-12-11 17:21:05', '2023-12-11 17:21:05', '默认', NULL, NULL, '2323', NULL, NULL, 'PHP', '2323', NULL, '2323');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;

-- 导出  表 db_php_run.task_type 结构
CREATE TABLE IF NOT EXISTS `task_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `name` varchar(50) DEFAULT NULL COMMENT '任务类型名称',
  `status` int(11) DEFAULT NULL COMMENT '任务类型状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.task_type 的数据：3 rows
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
REPLACE INTO `task_type` (`id`, `name`, `status`) VALUES
	(2, '12121212', 1),
	(3, '3112', 1),
	(4, '121221', 1);
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;

-- 导出  表 db_php_run.task_user 结构
CREATE TABLE IF NOT EXISTS `task_user` (
  `id` int(11) DEFAULT NULL COMMENT '用户任务ID',
  `task_id` int(11) DEFAULT NULL COMMENT '任务ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `status` int(11) DEFAULT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='用户任务表，记录每个学生的任务情况';

-- 正在导出表  db_php_run.task_user 的数据：0 rows
/*!40000 ALTER TABLE `task_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_user` ENABLE KEYS */;

-- 导出  表 db_php_run.test_case 结构
CREATE TABLE IF NOT EXISTS `test_case` (
  `id` int(11) DEFAULT NULL COMMENT '测试用例ID',
  `name` int(11) DEFAULT NULL COMMENT '名称',
  `case` int(11) DEFAULT NULL COMMENT '用例',
  `expected` int(11) DEFAULT NULL COMMENT '预期值',
  `task_sign` int(11) DEFAULT NULL COMMENT '任务标识'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.test_case 的数据：0 rows
/*!40000 ALTER TABLE `test_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_case` ENABLE KEYS */;

-- 导出  表 db_php_run.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `token` varchar(50) DEFAULT NULL COMMENT '登录token值',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `role` int(11) DEFAULT '1' COMMENT '1为学生，2为老师',
  `sex` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- 正在导出表  db_php_run.user 的数据：16 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `username`, `realname`, `password`, `type`, `token`, `status`, `update_time`, `create_time`, `role`, `sex`, `age`) VALUES
	(1, 'admin', '管理员', 'admin', NULL, '9d743c3463b8569eae035e2536c9237b', NULL, '2023-12-10 00:00:00', '2023-12-10 00:00:00', 1, '男', 21),
	(2, 'teacher', '张三', 'teacher', NULL, '7e51e5a40c8cabd5988ab37595e49887', 1, '2023-12-10 00:00:00', '2023-12-12 02:21:21', 1, '女', 18),
	(3, 'user2', NULL, 'user1', NULL, NULL, NULL, '2023-12-11 16:30:49', '2023-12-11 16:30:52', 1, NULL, NULL),
	(4, 'user3', NULL, 'user3', NULL, NULL, NULL, '2023-12-11 16:30:51', '2023-12-11 16:30:53', 1, NULL, NULL),
	(5, 'user4', NULL, 'user4', NULL, NULL, NULL, '2023-12-11 16:30:52', '2023-12-11 16:30:53', 1, NULL, NULL),
	(6, 'student', '李四', 'student', NULL, '6d73300a60f34146fe9b9df8e981d63b', 1, '2023-12-10 00:00:00', '2023-12-10 03:00:00', 2, '男', 19),
	(10, '2121', '1212', '232323', NULL, NULL, 3232, '2023-12-11 14:07:06', '2023-12-11 14:07:06', 1, NULL, 23),
	(9, '1212', '2323', '', NULL, NULL, 0, '2023-12-11 00:48:34', '2023-12-11 00:48:34', 1, NULL, 0),
	(13, 'wangba', '王八', 'wangba', NULL, NULL, 1, '2023-12-11 16:25:22', '2023-12-11 16:25:14', 2, '男', 343434),
	(14, 'zhangsan', '张三', '212', NULL, NULL, 1, '2023-12-11 16:41:28', '2023-12-11 16:41:14', 2, '男', 12),
	(15, 'libai', '李白', '1212', NULL, NULL, 1, '2023-12-11 16:43:23', '2023-12-11 16:42:54', 2, '男', 12),
	(16, '李逵', '李逵', '2323', NULL, NULL, 1, '2023-12-11 18:02:46', '2023-12-11 18:02:37', 2, '男', 2323),
	(17, '白居易', '白居易', '白居易', NULL, NULL, 1, '2023-12-11 18:03:52', '2023-12-11 18:03:43', 2, '男', 12),
	(18, '张居正', '张居正', '张居正', NULL, 'e385027480fbc5e31e691b8e1d63420d', 1, '2023-12-11 18:04:03', '2023-12-11 18:03:53', 2, '男', 12),
	(19, '万历皇帝', '万历皇帝', '万历皇帝', NULL, NULL, 1, '2023-12-11 18:04:17', '2023-12-11 18:04:04', 2, '男', 12),
	(20, '曹丕', '曹丕', '12', NULL, NULL, 1, '2023-12-11 18:04:38', '2023-12-11 18:04:19', 2, '男', 12);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
