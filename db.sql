/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm29102
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm29102` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm29102`;

/*Table structure for table `bianji` */

DROP TABLE IF EXISTS `bianji`;

CREATE TABLE `bianji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='编辑';

/*Data for the table `bianji` */

insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (41,'2021-04-28 11:17:29','标题1','简介1','内容1','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian1.jpg','账号1','姓名1','2021-04-28 11:17:29',1);
insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (42,'2021-04-28 11:17:29','标题2','简介2','内容2','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian2.jpg','账号2','姓名2','2021-04-28 11:17:29',2);
insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (43,'2021-04-28 11:17:29','标题3','简介3','内容3','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian3.jpg','账号3','姓名3','2021-04-28 11:17:29',3);
insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (44,'2021-04-28 11:17:29','标题4','简介4','内容4','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian4.jpg','账号4','姓名4','2021-04-28 11:17:29',4);
insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (45,'2021-04-28 11:17:29','标题5','简介5','内容5','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian5.jpg','账号5','姓名5','2021-04-28 11:17:29',5);
insert  into `bianji`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (46,'2021-04-28 11:17:29','标题6','简介6','内容6','2021-04-28','http://localhost:8080/ssm29102/upload/bianji_fengmian6.jpg','账号6','姓名6','2021-04-28 11:17:29',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm29102/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm29102/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm29102/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingyuexinxi` */

DROP TABLE IF EXISTS `dingyuexinxi`;

CREATE TABLE `dingyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingyuebianhao` varchar(200) DEFAULT NULL COMMENT '订阅编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `dingyueshijian` datetime DEFAULT NULL COMMENT '订阅时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingyuebianhao` (`dingyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='订阅信息';

/*Data for the table `dingyuexinxi` */

insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (61,'2021-04-28 11:17:29','订阅编号1','标题1','价格1','2021-04-28 11:17:29','备注1','账号1','姓名1','手机1','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian1.jpg','未支付',1);
insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (62,'2021-04-28 11:17:29','订阅编号2','标题2','价格2','2021-04-28 11:17:29','备注2','账号2','姓名2','手机2','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian2.jpg','未支付',2);
insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (63,'2021-04-28 11:17:29','订阅编号3','标题3','价格3','2021-04-28 11:17:29','备注3','账号3','姓名3','手机3','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian3.jpg','未支付',3);
insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (64,'2021-04-28 11:17:29','订阅编号4','标题4','价格4','2021-04-28 11:17:29','备注4','账号4','姓名4','手机4','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian4.jpg','未支付',4);
insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (65,'2021-04-28 11:17:29','订阅编号5','标题5','价格5','2021-04-28 11:17:29','备注5','账号5','姓名5','手机5','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian5.jpg','未支付',5);
insert  into `dingyuexinxi`(`id`,`addtime`,`dingyuebianhao`,`biaoti`,`jiage`,`dingyueshijian`,`beizhu`,`zhanghao`,`xingming`,`shouji`,`fengmian`,`ispay`,`userid`) values (66,'2021-04-28 11:17:29','订阅编号6','标题6','价格6','2021-04-28 11:17:29','备注6','账号6','姓名6','手机6','http://localhost:8080/ssm29102/upload/dingyuexinxi_fengmian6.jpg','未支付',6);

/*Table structure for table `discussbianji` */

DROP TABLE IF EXISTS `discussbianji`;

CREATE TABLE `discussbianji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='编辑评论表';

/*Data for the table `discussbianji` */

insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-28 11:17:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-28 11:17:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-28 11:17:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-28 11:17:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-28 11:17:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussbianji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-28 11:17:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussweizhi` */

DROP TABLE IF EXISTS `discussweizhi`;

CREATE TABLE `discussweizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='未知评论表';

/*Data for the table `discussweizhi` */

insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-28 11:17:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-04-28 11:17:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-04-28 11:17:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-04-28 11:17:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-04-28 11:17:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussweizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-04-28 11:17:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619580093048 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-28 11:17:29','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (72,'2021-04-28 11:17:29','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (73,'2021-04-28 11:17:29','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (74,'2021-04-28 11:17:29','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (75,'2021-04-28 11:17:29','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (76,'2021-04-28 11:17:29','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619580093047,'2021-04-28 11:21:32','发胜多负少的fsd',' 发送到发送到发送到发送到防守打法收到',0,1619580060205,'11','开放');

/*Table structure for table `leixingxinxi` */

DROP TABLE IF EXISTS `leixingxinxi`;

CREATE TABLE `leixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixingxinxi` varchar(200) DEFAULT NULL COMMENT '类型信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='类型信息';

/*Data for the table `leixingxinxi` */

insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (31,'2021-04-28 11:17:29','类型信息1');
insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (32,'2021-04-28 11:17:29','类型信息2');
insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (33,'2021-04-28 11:17:29','类型信息3');
insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (34,'2021-04-28 11:17:29','类型信息4');
insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (35,'2021-04-28 11:17:29','类型信息5');
insert  into `leixingxinxi`(`id`,`addtime`,`leixingxinxi`) values (36,'2021-04-28 11:17:29','类型信息6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619580060205,'11','yonghu','用户','u6qzzbkkr1jxw1vjo6fsn2bepg92y3jv','2021-04-28 11:21:04','2021-04-28 12:21:05');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-28 11:17:29');

/*Table structure for table `weizhi` */

DROP TABLE IF EXISTS `weizhi`;

CREATE TABLE `weizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='未知';

/*Data for the table `weizhi` */

insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (21,'2021-04-28 11:17:29','标题1','类型1',1,'内容1','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian1.jpg','2021-04-28 11:17:29',1);
insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (22,'2021-04-28 11:17:29','标题2','类型2',2,'内容2','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian2.jpg','2021-04-28 11:17:29',2);
insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (23,'2021-04-28 11:17:29','标题3','类型3',3,'内容3','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian3.jpg','2021-04-28 11:17:29',3);
insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (24,'2021-04-28 11:17:29','标题4','类型4',4,'内容4','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian4.jpg','2021-04-28 11:17:29',4);
insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (25,'2021-04-28 11:17:29','标题5','类型5',5,'内容5','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian5.jpg','2021-04-28 11:17:29',5);
insert  into `weizhi`(`id`,`addtime`,`biaoti`,`leixing`,`jiage`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (26,'2021-04-28 11:17:29','标题6','类型6',6,'内容6','2021-04-28','http://localhost:8080/ssm29102/upload/weizhi_fengmian6.jpg','2021-04-28 11:17:29',6);

/*Table structure for table `xiaoxitixing` */

DROP TABLE IF EXISTS `xiaoxitixing`;

CREATE TABLE `xiaoxitixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tixingbiaoti` varchar(200) DEFAULT NULL COMMENT '提醒标题',
  `tixingneirong` longtext COMMENT '提醒内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `tixingshijian` date DEFAULT NULL COMMENT '提醒时间',
  `fasongrenzhanghao` varchar(200) DEFAULT NULL COMMENT '发送人账号',
  `fasongrenxingming` varchar(200) DEFAULT NULL COMMENT '发送人姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='消息提醒';

/*Data for the table `xiaoxitixing` */

insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (51,'2021-04-28 11:17:29','提醒标题1','提醒内容1','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian1.jpg','2021-04-28','发送人账号1','发送人姓名1','账号1','姓名1',1);
insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (52,'2021-04-28 11:17:29','提醒标题2','提醒内容2','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian2.jpg','2021-04-28','发送人账号2','发送人姓名2','账号2','姓名2',2);
insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (53,'2021-04-28 11:17:29','提醒标题3','提醒内容3','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian3.jpg','2021-04-28','发送人账号3','发送人姓名3','账号3','姓名3',3);
insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (54,'2021-04-28 11:17:29','提醒标题4','提醒内容4','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian4.jpg','2021-04-28','发送人账号4','发送人姓名4','账号4','姓名4',4);
insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (55,'2021-04-28 11:17:29','提醒标题5','提醒内容5','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian5.jpg','2021-04-28','发送人账号5','发送人姓名5','账号5','姓名5',5);
insert  into `xiaoxitixing`(`id`,`addtime`,`tixingbiaoti`,`tixingneirong`,`fengmian`,`tixingshijian`,`fasongrenzhanghao`,`fasongrenxingming`,`zhanghao`,`xingming`,`userid`) values (56,'2021-04-28 11:17:29','提醒标题6','提醒内容6','http://localhost:8080/ssm29102/upload/xiaoxitixing_fengmian6.jpg','2021-04-28','发送人账号6','发送人姓名6','账号6','姓名6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619580060206 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-04-28 11:17:29','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm29102/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-04-28 11:17:29','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm29102/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-04-28 11:17:29','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm29102/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-04-28 11:17:29','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm29102/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-04-28 11:17:29','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm29102/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-04-28 11:17:29','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm29102/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1619580060205,'2021-04-28 11:21:00','11','11','待支付','11','女','11112222111',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
