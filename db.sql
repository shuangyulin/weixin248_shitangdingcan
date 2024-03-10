/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shitangdingcanxiaochengxu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shitangdingcanxiaochengxu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shitangdingcanxiaochengxu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(2,2,'收货人2','17703786902','地址2',1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(3,3,'收货人3','17703786903','地址3',1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(5,1,'收货人5','17703786905','地址5',1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`shangjia_id`,`caipin_uuid_number`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`caipin_content`,`shangxia_types`,`caipin_delete`,`create_time`) values (1,2,'165097557862618','商品名称1','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin1.jpg',1,101,'789.83','202.07',491,'商品介绍1',1,1,'2022-04-26 20:19:38'),(2,3,'165097557862618','商品名称2','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin2.jpg',1,101,'536.29','490.06',396,'商品介绍2',1,1,'2022-04-26 20:19:38'),(3,3,'16509755786261','商品名称3','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin3.jpg',2,102,'876.19','359.52',108,'商品介绍3',1,1,'2022-04-26 20:19:38'),(4,3,'165097557862697','商品名称4','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin4.jpg',2,104,'827.56','354.35',79,'商品介绍4',1,1,'2022-04-26 20:19:38'),(5,2,'165097557862660','商品名称5','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin5.jpg',3,102,'949.95','76.02',492,'商品介绍5',1,1,'2022-04-26 20:19:38');

/*Table structure for table `caipin_collection` */

DROP TABLE IF EXISTS `caipin_collection`;

CREATE TABLE `caipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `caipin_collection` */

insert  into `caipin_collection`(`id`,`caipin_id`,`yonghu_id`,`caipin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-26 20:19:38','2022-04-26 20:19:38'),(2,2,3,1,'2022-04-26 20:19:38','2022-04-26 20:19:38'),(3,3,2,1,'2022-04-26 20:19:38','2022-04-26 20:19:38'),(4,4,1,1,'2022-04-26 20:19:38','2022-04-26 20:19:38'),(5,5,3,1,'2022-04-26 20:19:38','2022-04-26 20:19:38'),(7,2,1,1,'2022-04-26 21:51:32','2022-04-26 21:51:32');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-04-26 20:19:38','回复信息1','2022-04-26 20:19:38','2022-04-26 20:19:38'),(2,2,3,'评价内容2','2022-04-26 20:19:38','回复信息2','2022-04-26 20:19:38','2022-04-26 20:19:38'),(3,3,1,'评价内容3','2022-04-26 20:19:38','回复信息3','2022-04-26 20:19:38','2022-04-26 20:19:38'),(4,4,2,'评价内容4','2022-04-26 20:19:38','回复信息4','2022-04-26 20:19:38','2022-04-26 20:19:38'),(5,5,3,'评价内容5','2022-04-26 20:19:38','回复信息5','2022-04-26 20:19:38','2022-04-26 20:19:38');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_status_types` int(11) DEFAULT NULL COMMENT '取餐类型',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`address_id`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_status_types`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (1,'1650980149624',NULL,5,1,1,1,'76.02',3,1,'2022-04-26 21:35:50','2022-04-26 21:35:50'),(2,'1650980602299',5,3,1,1,2,'359.52',1,1,'2022-04-26 21:43:22','2022-04-26 21:43:22'),(3,'1650980602299',5,2,1,1,2,'490.06',1,1,'2022-04-26 21:43:22','2022-04-26 21:43:22'),(4,'1650980602299',5,5,1,1,2,'76.02',5,1,'2022-04-26 21:43:22','2022-04-26 21:43:22'),(5,'1650981127083',NULL,4,1,1,1,'354.35',2,1,'2022-04-26 21:52:07','2022-04-26 21:52:07'),(6,'1650981127083',NULL,5,1,1,1,'76.02',1,1,'2022-04-26 21:52:07','2022-04-26 21:52:07');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `caipin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shitangdingcanxiaochengxu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/shitangdingcanxiaochengxu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/shitangdingcanxiaochengxu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonglue_types','攻略类型',1,'攻略类型1',NULL,NULL,'2022-04-26 20:19:27'),(2,'gonglue_types','攻略类型',2,'攻略类型2',NULL,NULL,'2022-04-26 20:19:27'),(3,'gonglue_types','攻略类型',3,'攻略类型3',NULL,NULL,'2022-04-26 20:19:27'),(4,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2022-04-26 20:19:27'),(5,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2022-04-26 20:19:27'),(6,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2022-04-26 20:19:27'),(7,'caipin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-04-26 20:19:27'),(8,'caipin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-04-26 20:19:27'),(9,'caipin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-04-26 20:19:27'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-26 20:19:27'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-26 20:19:27'),(12,'caipin_order_status_types','取餐类型',1,'自取',NULL,NULL,'2022-04-26 20:19:27'),(13,'caipin_order_status_types','取餐类型',2,'外送',NULL,NULL,'2022-04-26 20:19:27'),(14,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-26 20:19:27'),(15,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-26 20:19:27'),(16,'caipin_order_types','订单类型',3,'已发货',NULL,NULL,'2022-04-26 20:19:27'),(17,'caipin_order_types','订单类型',4,'已收货',NULL,NULL,'2022-04-26 20:19:27'),(18,'caipin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-26 20:19:27'),(19,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-26 20:19:27'),(20,'caipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-26 20:19:28'),(21,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-26 20:19:28'),(22,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-26 20:19:28'),(23,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-26 20:19:28'),(24,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-26 20:19:28'),(25,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-26 20:19:28'),(26,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-26 20:19:28'),(27,'news_types','公告类型',3,'活动信息',NULL,NULL,'2022-04-26 20:19:28'),(28,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-26 20:19:28'),(29,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-26 20:19:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
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

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',NULL,1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',NULL,1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',NULL,1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',NULL,1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',NULL,1,'2022-04-26 20:19:38','2022-04-26 20:19:38','2022-04-26 20:19:38'),(6,NULL,NULL,2,NULL,'商家评论12',5,2,'2022-04-26 21:44:21',NULL,'2022-04-26 21:44:21'),(7,NULL,NULL,NULL,1,'管理评论',5,2,'2022-04-26 21:45:09',NULL,'2022-04-26 21:45:09'),(8,NULL,1,NULL,NULL,'用户评论12',5,2,'2022-04-26 21:51:54',NULL,'2022-04-26 21:51:54');

/*Table structure for table `gonglue` */

DROP TABLE IF EXISTS `gonglue`;

CREATE TABLE `gonglue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonglue_name` varchar(200) DEFAULT NULL COMMENT '攻略名称  Search111 ',
  `gonglue_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `gonglue_types` int(11) DEFAULT NULL COMMENT '攻略类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gonglue_content` text COMMENT '攻略介绍 ',
  `gonglue_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='攻略信息';

/*Data for the table `gonglue` */

insert  into `gonglue`(`id`,`gonglue_name`,`gonglue_photo`,`gonglue_types`,`yonghu_id`,`gonglue_content`,`gonglue_delete`,`create_time`) values (1,'攻略名称1','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin1.jpg',3,1,'攻略介绍1',1,'2022-04-26 20:19:38'),(2,'攻略名称2','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin2.jpg',1,2,'攻略介绍2',1,'2022-04-26 20:19:38'),(3,'攻略名称3','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin3.jpg',1,2,'攻略介绍3',1,'2022-04-26 20:19:38'),(4,'攻略名称4','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin4.jpg',2,3,'攻略介绍4',1,'2022-04-26 20:19:38'),(5,'攻略名称5','http://localhost:8080/shitangdingcanxiaochengxu/upload/caipin5.jpg',2,2,'攻略介绍5',1,'2022-04-26 20:19:38');

/*Table structure for table `gonglue_liuyan` */

DROP TABLE IF EXISTS `gonglue_liuyan`;

CREATE TABLE `gonglue_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonglue_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gonglue_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='攻略评论';

/*Data for the table `gonglue_liuyan` */

insert  into `gonglue_liuyan`(`id`,`gonglue_id`,`yonghu_id`,`gonglue_liuyan_text`,`insert_time`,`create_time`) values (1,1,2,'评论内容1','2022-04-26 20:19:38','2022-04-26 20:19:38'),(2,2,2,'评论内容2','2022-04-26 20:19:38','2022-04-26 20:19:38'),(3,3,3,'评论内容3','2022-04-26 20:19:38','2022-04-26 20:19:38'),(4,4,2,'评论内容4','2022-04-26 20:19:38','2022-04-26 20:19:38'),(5,5,3,'评论内容5','2022-04-26 20:19:38','2022-04-26 20:19:38');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/shitangdingcanxiaochengxu/upload/news1.jpg','2022-04-26 20:19:38','公告详情1','2022-04-26 20:19:38'),(2,'公告标题2',1,'http://localhost:8080/shitangdingcanxiaochengxu/upload/news2.jpg','2022-04-26 20:19:38','公告详情2','2022-04-26 20:19:38'),(3,'公告标题3',1,'http://localhost:8080/shitangdingcanxiaochengxu/upload/news3.jpg','2022-04-26 20:19:38','公告详情3','2022-04-26 20:19:38'),(4,'公告标题4',2,'http://localhost:8080/shitangdingcanxiaochengxu/upload/news4.jpg','2022-04-26 20:19:38','公告详情4','2022-04-26 20:19:38'),(5,'公告标题5',2,'http://localhost:8080/shitangdingcanxiaochengxu/upload/news5.jpg','2022-04-26 20:19:38','公告详情5','2022-04-26 20:19:38');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','http://localhost:8080/shitangdingcanxiaochengxu/upload/shangjia1.jpg',2,'370.36','商家简介1',1,'2022-04-26 20:19:38'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','http://localhost:8080/shitangdingcanxiaochengxu/upload/shangjia2.jpg',2,'471.79','商家简介2',1,'2022-04-26 20:19:38'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','http://localhost:8080/shitangdingcanxiaochengxu/upload/shangjia3.jpg',3,'1211.03','商家简介3',1,'2022-04-26 20:19:38');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','byzcnpl6omzc7bmoxpg7l3g2d5yji6ta','2022-04-26 20:41:17','2022-04-26 22:57:37'),(2,1,'a1','yonghu','用户','t275lszkjj6gqtwhrqxx9oyxyiu52nah','2022-04-26 20:55:05','2022-04-26 22:54:10'),(3,1,'a1','shangjia','商家','9n8hp96aen0gxodm5is63vkzxu815103','2022-04-26 21:43:43','2022-04-26 22:43:44'),(4,2,'a2','shangjia','商家','k9ugl300fnf5mhi87p9kt4cgaw4oc3od','2022-04-26 21:43:53','2022-04-26 22:43:53');

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

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/shitangdingcanxiaochengxu/upload/yonghu1.jpg',2,'1@qq.com','899269.00','2022-04-26 20:19:38'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/shitangdingcanxiaochengxu/upload/yonghu2.jpg',1,'2@qq.com','409.80','2022-04-26 20:19:38'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/shitangdingcanxiaochengxu/upload/yonghu3.jpg',1,'3@qq.com','17.86','2022-04-26 20:19:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
