/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1g489
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1g489` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1g489`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1g489/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm1g489/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm1g489/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `diaoxiushenqing` */

DROP TABLE IF EXISTS `diaoxiushenqing`;

CREATE TABLE `diaoxiushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diaoxiubianhao` varchar(200) DEFAULT NULL COMMENT '调休编号',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `diaoxiuyuanyou` longtext COMMENT '调休缘由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diaoxiubianhao` (`diaoxiubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='调休申请';

/*Data for the table `diaoxiushenqing` */

insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (51,'2021-04-26 17:22:13','调休编号1','2021-04-26','工号1','姓名1','手机1','调休缘由1','是','');
insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (52,'2021-04-26 17:22:13','调休编号2','2021-04-26','工号2','姓名2','手机2','调休缘由2','是','');
insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (53,'2021-04-26 17:22:13','调休编号3','2021-04-26','工号3','姓名3','手机3','调休缘由3','是','');
insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (54,'2021-04-26 17:22:13','调休编号4','2021-04-26','工号4','姓名4','手机4','调休缘由4','是','');
insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (55,'2021-04-26 17:22:13','调休编号5','2021-04-26','工号5','姓名5','手机5','调休缘由5','是','');
insert  into `diaoxiushenqing`(`id`,`addtime`,`diaoxiubianhao`,`riqi`,`gonghao`,`xingming`,`shouji`,`diaoxiuyuanyou`,`sfsh`,`shhf`) values (56,'2021-04-26 17:22:13','调休编号6','2021-04-26','工号6','姓名6','手机6','调休缘由6','是','');

/*Table structure for table `gangweidiaodong` */

DROP TABLE IF EXISTS `gangweidiaodong`;

CREATE TABLE `gangweidiaodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `ruzhishijian` varchar(200) DEFAULT NULL COMMENT '入职时间',
  `yuanzhixinzi` int(11) DEFAULT NULL COMMENT '原职薪资',
  `diaorubumen` varchar(200) DEFAULT NULL COMMENT '调入部门',
  `diaorugangwei` varchar(200) DEFAULT NULL COMMENT '调入岗位',
  `diaodongshuoming` longtext COMMENT '调动说明',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `gangweixinchou` int(11) DEFAULT NULL COMMENT '岗位薪酬',
  `shengxiaoriqi` date DEFAULT NULL COMMENT '生效日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='岗位调动';

/*Data for the table `gangweidiaodong` */

insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (71,'2021-04-26 17:22:13','工号1','姓名1','部门1','职位1','入职时间1',1,'调入部门1','调入岗位1','调动说明1','2021-04-26',1,'2021-04-26');
insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (72,'2021-04-26 17:22:13','工号2','姓名2','部门2','职位2','入职时间2',2,'调入部门2','调入岗位2','调动说明2','2021-04-26',2,'2021-04-26');
insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (73,'2021-04-26 17:22:13','工号3','姓名3','部门3','职位3','入职时间3',3,'调入部门3','调入岗位3','调动说明3','2021-04-26',3,'2021-04-26');
insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (74,'2021-04-26 17:22:13','工号4','姓名4','部门4','职位4','入职时间4',4,'调入部门4','调入岗位4','调动说明4','2021-04-26',4,'2021-04-26');
insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (75,'2021-04-26 17:22:13','工号5','姓名5','部门5','职位5','入职时间5',5,'调入部门5','调入岗位5','调动说明5','2021-04-26',5,'2021-04-26');
insert  into `gangweidiaodong`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`ruzhishijian`,`yuanzhixinzi`,`diaorubumen`,`diaorugangwei`,`diaodongshuoming`,`shenqingriqi`,`gangweixinchou`,`shengxiaoriqi`) values (76,'2021-04-26 17:22:13','工号6','姓名6','部门6','职位6','入职时间6',6,'调入部门6','调入岗位6','调动说明6','2021-04-26',6,'2021-04-26');

/*Table structure for table `gongzidan` */

DROP TABLE IF EXISTS `gongzidan`;

CREATE TABLE `gongzidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gudingyuexin` int(11) DEFAULT NULL COMMENT '固定月薪',
  `jixiaojiangjin` int(11) DEFAULT NULL COMMENT '绩效奖金',
  `suodeshui` int(11) DEFAULT NULL COMMENT '所得税',
  `shebao` int(11) DEFAULT NULL COMMENT '社保',
  `gongjijin` int(11) DEFAULT NULL COMMENT '公积金',
  `yingfagongzi` int(11) DEFAULT NULL COMMENT '应发工资',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='工资单';

/*Data for the table `gongzidan` */

insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (61,'2021-04-26 17:22:13','工号1','姓名1',1,1,1,1,1,1,1,'2021-04-26 17:22:13');
insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (62,'2021-04-26 17:22:13','工号2','姓名2',2,2,2,2,2,2,2,'2021-04-26 17:22:13');
insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (63,'2021-04-26 17:22:13','工号3','姓名3',3,3,3,3,3,3,3,'2021-04-26 17:22:13');
insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (64,'2021-04-26 17:22:13','工号4','姓名4',4,4,4,4,4,4,4,'2021-04-26 17:22:13');
insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (65,'2021-04-26 17:22:13','工号5','姓名5',5,5,5,5,5,5,5,'2021-04-26 17:22:13');
insert  into `gongzidan`(`id`,`addtime`,`gonghao`,`xingming`,`gudingyuexin`,`jixiaojiangjin`,`suodeshui`,`shebao`,`gongjijin`,`yingfagongzi`,`shifagongzi`,`fabushijian`) values (66,'2021-04-26 17:22:13','工号6','姓名6',6,6,6,6,6,6,6,'2021-04-26 17:22:13');

/*Table structure for table `kaoqindaka` */

DROP TABLE IF EXISTS `kaoqindaka`;

CREATE TABLE `kaoqindaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dakaleixing` varchar(200) DEFAULT NULL COMMENT '打卡类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='考勤打卡';

/*Data for the table `kaoqindaka` */

insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (31,'2021-04-26 17:22:13','2021-04-26','工号1','姓名1','性别1','上班','2021-04-26 17:22:13',1,1,'宇宙银河系地球1号');
insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (32,'2021-04-26 17:22:13','2021-04-26','工号2','姓名2','性别2','上班','2021-04-26 17:22:13',2,2,'宇宙银河系地球2号');
insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (33,'2021-04-26 17:22:13','2021-04-26','工号3','姓名3','性别3','上班','2021-04-26 17:22:13',3,3,'宇宙银河系地球3号');
insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (34,'2021-04-26 17:22:13','2021-04-26','工号4','姓名4','性别4','上班','2021-04-26 17:22:13',4,4,'宇宙银河系地球4号');
insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (35,'2021-04-26 17:22:13','2021-04-26','工号5','姓名5','性别5','上班','2021-04-26 17:22:13',5,5,'宇宙银河系地球5号');
insert  into `kaoqindaka`(`id`,`addtime`,`riqi`,`gonghao`,`xingming`,`xingbie`,`dakaleixing`,`dakashijian`,`longitude`,`latitude`,`fulladdress`) values (36,'2021-04-26 17:22:13','2021-04-26','工号6','姓名6','性别6','上班','2021-04-26 17:22:13',6,6,'宇宙银河系地球6号');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统消息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-26 17:22:13','标题1','简介1','http://localhost:8080/ssm1g489/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-26 17:22:13','标题2','简介2','http://localhost:8080/ssm1g489/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-26 17:22:13','标题3','简介3','http://localhost:8080/ssm1g489/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-26 17:22:13','标题4','简介4','http://localhost:8080/ssm1g489/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-26 17:22:13','标题5','简介5','http://localhost:8080/ssm1g489/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-26 17:22:13','标题6','简介6','http://localhost:8080/ssm1g489/upload/news_picture6.jpg','内容6');

/*Table structure for table `putongyuangong` */

DROP TABLE IF EXISTS `putongyuangong`;

CREATE TABLE `putongyuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='普通员工';

/*Data for the table `putongyuangong` */

insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (21,'2021-04-26 17:22:13','普通员工1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian1.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (22,'2021-04-26 17:22:13','普通员工2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian2.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (23,'2021-04-26 17:22:13','普通员工3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian3.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (24,'2021-04-26 17:22:13','普通员工4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian4.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (25,'2021-04-26 17:22:13','普通员工5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian5.jpg');
insert  into `putongyuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (26,'2021-04-26 17:22:13','普通员工6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm1g489/upload/putongyuangong_zhaopian6.jpg');

/*Table structure for table `renshiguanliyuan` */

DROP TABLE IF EXISTS `renshiguanliyuan`;

CREATE TABLE `renshiguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='人事管理员';

/*Data for the table `renshiguanliyuan` */

insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-26 17:22:13','人事管理员1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian1.jpg');
insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (12,'2021-04-26 17:22:13','人事管理员2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian2.jpg');
insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (13,'2021-04-26 17:22:13','人事管理员3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian3.jpg');
insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (14,'2021-04-26 17:22:13','人事管理员4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian4.jpg');
insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (15,'2021-04-26 17:22:13','人事管理员5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian5.jpg');
insert  into `renshiguanliyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (16,'2021-04-26 17:22:13','人事管理员6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm1g489/upload/renshiguanliyuan_zhaopian6.jpg');

/*Table structure for table `ruzhixinxi` */

DROP TABLE IF EXISTS `ruzhixinxi`;

CREATE TABLE `ruzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `xiangguanziliao` varchar(200) DEFAULT NULL COMMENT '相关资料',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='入职信息';

/*Data for the table `ruzhixinxi` */

insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (81,'2021-04-26 17:22:13','工号1','姓名1','部门1','职位1','2021-04-26','','备注1','账号1','是','');
insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (82,'2021-04-26 17:22:13','工号2','姓名2','部门2','职位2','2021-04-26','','备注2','账号2','是','');
insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (83,'2021-04-26 17:22:13','工号3','姓名3','部门3','职位3','2021-04-26','','备注3','账号3','是','');
insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (84,'2021-04-26 17:22:13','工号4','姓名4','部门4','职位4','2021-04-26','','备注4','账号4','是','');
insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (85,'2021-04-26 17:22:13','工号5','姓名5','部门5','职位5','2021-04-26','','备注5','账号5','是','');
insert  into `ruzhixinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shijian`,`xiangguanziliao`,`beizhu`,`zhanghao`,`sfsh`,`shhf`) values (86,'2021-04-26 17:22:13','工号6','姓名6','部门6','职位6','2021-04-26','','备注6','账号6','是','');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'人事管理员1','renshiguanliyuan','人事管理员','vx3vnrqks8xi8ind1ct0rm5g0ocqutd8','2021-04-26 17:23:15','2021-04-26 18:23:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 17:22:13');

/*Table structure for table `yuangongpeixun` */

DROP TABLE IF EXISTS `yuangongpeixun`;

CREATE TABLE `yuangongpeixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `zhouqi` varchar(200) DEFAULT NULL COMMENT '周期',
  `jiangshi` varchar(200) DEFAULT NULL COMMENT '讲师',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `jiaoxuefankui` longtext COMMENT '教学反馈',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='员工培训';

/*Data for the table `yuangongpeixun` */

insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (91,'2021-04-26 17:22:13','2021-04-26','周期1','讲师1','课程1','教学反馈1');
insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (92,'2021-04-26 17:22:13','2021-04-26','周期2','讲师2','课程2','教学反馈2');
insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (93,'2021-04-26 17:22:13','2021-04-26','周期3','讲师3','课程3','教学反馈3');
insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (94,'2021-04-26 17:22:13','2021-04-26','周期4','讲师4','课程4','教学反馈4');
insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (95,'2021-04-26 17:22:13','2021-04-26','周期5','讲师5','课程5','教学反馈5');
insert  into `yuangongpeixun`(`id`,`addtime`,`shijian`,`zhouqi`,`jiangshi`,`kecheng`,`jiaoxuefankui`) values (96,'2021-04-26 17:22:13','2021-04-26','周期6','讲师6','课程6','教学反馈6');

/*Table structure for table `yuangongxinxi` */

DROP TABLE IF EXISTS `yuangongxinxi`;

CREATE TABLE `yuangongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shangji` varchar(200) DEFAULT NULL COMMENT '上级',
  `bangongdidian` varchar(200) DEFAULT NULL COMMENT '办公地点',
  `ruzhishijian` datetime DEFAULT NULL COMMENT '入职时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='员工信息';

/*Data for the table `yuangongxinxi` */

insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (41,'2021-04-26 17:22:13','工号1','姓名1','部门1','职位1','上级1','办公地点1','2021-04-26 17:22:13');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (42,'2021-04-26 17:22:13','工号2','姓名2','部门2','职位2','上级2','办公地点2','2021-04-26 17:22:13');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (43,'2021-04-26 17:22:13','工号3','姓名3','部门3','职位3','上级3','办公地点3','2021-04-26 17:22:13');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (44,'2021-04-26 17:22:13','工号4','姓名4','部门4','职位4','上级4','办公地点4','2021-04-26 17:22:13');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (45,'2021-04-26 17:22:13','工号5','姓名5','部门5','职位5','上级5','办公地点5','2021-04-26 17:22:13');
insert  into `yuangongxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`bumen`,`zhiwei`,`shangji`,`bangongdidian`,`ruzhishijian`) values (46,'2021-04-26 17:22:13','工号6','姓名6','部门6','职位6','上级6','办公地点6','2021-04-26 17:22:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
