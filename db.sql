/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanziliaofenxiang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanziliaofenxiang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanziliaofenxiang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoyuanziliaofenxiang/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoyuanziliaofenxiang/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoyuanziliaofenxiang/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'wenjian_types','文件类型',1,'文件类型1',NULL,NULL,'2022-03-23 15:06:09'),(2,'wenjian_types','文件类型',2,'文件类型2',NULL,NULL,'2022-03-23 15:06:09'),(3,'wenjian_types','文件类型',3,'文件类型3',NULL,NULL,'2022-03-23 15:06:09'),(4,'wenjian_status_types','文件状态',1,'正常',NULL,NULL,'2022-03-23 15:06:09'),(5,'wenjian_status_types','文件状态',2,'私有',NULL,NULL,'2022-03-23 15:06:09'),(6,'biaoshi_status_types','文件标识',1,'一般',NULL,NULL,'2022-03-23 15:06:09'),(7,'biaoshi_status_types','文件标识',2,'重点',NULL,NULL,'2022-03-23 15:06:09'),(8,'wenjian_collection_types','收藏类型',1,'收藏',NULL,NULL,'2022-03-23 15:06:09'),(9,'wenjian_collection_types','收藏类型',2,'赞',NULL,NULL,'2022-03-23 15:06:09'),(10,'wenjian_collection_types','收藏类型',3,'踩',NULL,NULL,'2022-03-23 15:06:09'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-23 15:06:09'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-23 15:06:09'),(13,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-23 15:06:09'),(14,'sex_types','性别',1,'男',NULL,NULL,'2022-03-23 15:06:09'),(15,'sex_types','性别',2,'女',NULL,NULL,'2022-03-23 15:06:09'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-23 15:06:09'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-23 15:06:09');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaoshi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,1,NULL,'发布内容1',NULL,1,'2022-03-23 15:06:25','2022-03-23 15:06:25','2022-03-23 15:06:25'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',NULL,1,'2022-03-23 15:06:25','2022-03-23 15:06:25','2022-03-23 15:06:25'),(3,'帖子标题3',NULL,3,NULL,'发布内容3',NULL,1,'2022-03-23 15:06:25','2022-03-23 15:06:25','2022-03-23 15:06:25'),(4,'帖子标题4',NULL,1,NULL,'发布内容4',NULL,1,'2022-03-23 15:06:25','2022-03-23 15:06:25','2022-03-23 15:06:25'),(5,'帖子标题5',NULL,3,NULL,'发布内容5',NULL,1,'2022-03-23 15:06:25','2022-03-23 15:06:25','2022-03-23 15:06:25'),(6,NULL,1,NULL,NULL,'教师回复',5,2,'2022-03-23 16:28:30',NULL,'2022-03-23 16:28:30'),(7,NULL,NULL,NULL,1,'管理回复',5,2,'2022-03-23 16:29:18',NULL,'2022-03-23 16:29:18'),(8,NULL,NULL,1,NULL,'用户评论',5,2,'2022-03-23 16:31:22',NULL,'2022-03-23 16:31:22');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/xiaoyuanziliaofenxiang/upload/jiaoshi1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-23 15:06:25'),(2,'a2','123456','教师姓名2','http://localhost:8080/xiaoyuanziliaofenxiang/upload/jiaoshi2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-23 15:06:25'),(3,'a3','123456','教师姓名3','http://localhost:8080/xiaoyuanziliaofenxiang/upload/jiaoshi3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-23 15:06:25');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/news1.jpg','2022-03-23 15:06:25','公告详情1','2022-03-23 15:06:25'),(2,'公告标题2',3,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/news2.jpg','2022-03-23 15:06:25','公告详情2','2022-03-23 15:06:25'),(3,'公告标题3',1,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/news3.jpg','2022-03-23 15:06:25','公告详情3','2022-03-23 15:06:25'),(4,'公告标题4',3,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/news4.jpg','2022-03-23 15:06:25','公告详情4','2022-03-23 15:06:25'),(5,'公告标题5',1,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/news5.jpg','2022-03-23 15:06:25','公告详情5','2022-03-23 15:06:25');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','wmv5180vxfi02kn3ur6ppih1ctfi006c','2022-03-23 15:13:06','2022-03-23 17:38:48'),(2,1,'a1','jiaoshi','教师','1wxtq7k6daj9mht3heq89xxgc6zo3z3t','2022-03-23 15:23:15','2022-03-23 17:28:19'),(3,1,'a1','yonghu','用户','cevhe71ul00ljw9b1878fz11f5jm2u6v','2022-03-23 15:36:14','2022-03-23 17:36:05'),(4,2,'a2','yonghu','用户','98w04crwcjop1pdwz17ubugc6sdhjgd5','2022-03-23 16:32:12','2022-03-23 17:32:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `wenjian` */

DROP TABLE IF EXISTS `wenjian`;

CREATE TABLE `wenjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenjian_name` varchar(200) DEFAULT NULL COMMENT '文件名称 Search111 ',
  `wenjian_types` int(11) DEFAULT NULL COMMENT '文件类型 Search111',
  `wenjian_photo` varchar(200) DEFAULT NULL COMMENT '文件图片',
  `wenjian_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `wenjian_jifen_number` int(11) DEFAULT NULL COMMENT '下载积分',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenjian_status_types` int(11) DEFAULT NULL COMMENT '文件状态 Search111',
  `biaoshi_status_types` int(11) DEFAULT NULL COMMENT '文件标识',
  `wenjian_content` text COMMENT '文件详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文件信息';

/*Data for the table `wenjian` */

insert  into `wenjian`(`id`,`wenjian_name`,`wenjian_types`,`wenjian_photo`,`wenjian_file`,`wenjian_jifen_number`,`zan_number`,`cai_number`,`yonghu_id`,`wenjian_status_types`,`biaoshi_status_types`,`wenjian_content`,`insert_time`,`create_time`) values (1,'文件名称1',2,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/1648020020357.jpeg','http://localhost:8080/xiaoyuanziliaofenxiang/upload/file.rar',10,154,134,2,1,1,'<p>文件详情1</p>','2022-03-23 15:06:25','2022-03-23 15:06:25'),(2,'文件名称2',2,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/1648020011864.jpeg','http://localhost:8080/xiaoyuanziliaofenxiang/upload/file.rar',20,461,401,1,1,1,'<p>文件详情2</p>','2022-03-23 15:06:25','2022-03-23 15:06:25'),(3,'文件名称3',2,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/1648020001838.jpeg','http://localhost:8080/xiaoyuanziliaofenxiang/upload/file.rar',30,223,131,2,1,2,'<p>文件详情3</p>','2022-03-23 15:06:25','2022-03-23 15:06:25'),(4,'文件名称4',1,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/1648019991854.jpeg','http://localhost:8080/xiaoyuanziliaofenxiang/upload/file.rar',40,312,413,1,1,2,'<p>文件详情4</p>','2022-03-23 15:06:25','2022-03-23 15:06:25'),(5,'文件名称5',1,'http://localhost:8080/xiaoyuanziliaofenxiang/upload/1648019983114.jpeg','http://localhost:8080/xiaoyuanziliaofenxiang/upload/file.rar',50,301,460,3,1,2,'<p>文件详情5</p>','2022-03-23 15:06:25','2022-03-23 15:06:25');

/*Table structure for table `wenjian_collection` */

DROP TABLE IF EXISTS `wenjian_collection`;

CREATE TABLE `wenjian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenjian_id` int(11) DEFAULT NULL COMMENT '文件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenjian_collection_types` int(11) DEFAULT NULL COMMENT '收藏类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文件收藏';

/*Data for the table `wenjian_collection` */

insert  into `wenjian_collection`(`id`,`wenjian_id`,`yonghu_id`,`wenjian_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-03-23 15:06:25','2022-03-23 15:06:25'),(2,2,2,1,'2022-03-23 15:06:25','2022-03-23 15:06:25'),(3,3,3,1,'2022-03-23 15:06:25','2022-03-23 15:06:25'),(4,4,1,1,'2022-03-23 15:06:25','2022-03-23 15:06:25'),(5,5,2,1,'2022-03-23 15:06:25','2022-03-23 15:06:25');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_jifen_number` int(11) DEFAULT '0' COMMENT '积分',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_jifen_number`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xiaoyuanziliaofenxiang/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',0,1,'2022-03-23 15:06:25'),(2,'a2','123456','用户姓名2','http://localhost:8080/xiaoyuanziliaofenxiang/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',100,1,'2022-03-23 15:06:25'),(3,'a3','123456','用户姓名3','http://localhost:8080/xiaoyuanziliaofenxiang/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',100,1,'2022-03-23 15:06:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
