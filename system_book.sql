/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.22-log : Database - system_book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`system_book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `system_book`;

/*Table structure for table `system_book_category` */

DROP TABLE IF EXISTS `system_book_category`;

CREATE TABLE `system_book_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` varchar(32) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `system_book_category` */

insert  into `system_book_category`(`id`,`category`) values (10,'仙侠'),(9,'历史'),(13,'小说'),(11,'玄幻');

/*Table structure for table `system_book_info` */

DROP TABLE IF EXISTS `system_book_info`;

CREATE TABLE `system_book_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书编号',
  `bookName` varchar(128) DEFAULT NULL COMMENT '图书名称',
  `author` varchar(128) DEFAULT NULL COMMENT '作者',
  `categoryId` int(11) DEFAULT NULL COMMENT '分类id',
  `publisher` varchar(128) DEFAULT NULL COMMENT '出版社',
  `price` double DEFAULT NULL COMMENT '价格',
  `photo` varchar(128) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `system_book_info` */

insert  into `system_book_info`(`id`,`bookName`,`author`,`categoryId`,`publisher`,`price`,`photo`) values (6,'凡人修仙传','忘语',10,'中国邮政出版社',17,NULL),(7,'动物世界','哈哈',13,'中国邮政出版社',20,NULL),(8,'三国','呵呵',9,'中国历史出版社',30,NULL),(9,'完美世界','嘿嘿',11,'玄幻出版社',16,NULL);

/*Table structure for table `system_book_orders` */

DROP TABLE IF EXISTS `system_book_orders`;

CREATE TABLE `system_book_orders` (
  `oid` varchar(32) NOT NULL COMMENT '订单编号',
  `userId` varchar(64) NOT NULL COMMENT '用户的id',
  `bid` int(11) DEFAULT NULL COMMENT '图书编号',
  `count` double DEFAULT NULL COMMENT '图书数量',
  `curPrice` double DEFAULT NULL COMMENT '单价',
  `date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `system_book_orders` */

insert  into `system_book_orders`(`oid`,`userId`,`bid`,`count`,`curPrice`,`date`) values ('20200413142802580331','lisi',6,2,34,'2020-04-13 14:28:03'),('20200413151701496916','lisi',7,1,20,'2020-04-13 15:17:02');

/*Table structure for table `system_book_user` */

DROP TABLE IF EXISTS `system_book_user`;

CREATE TABLE `system_book_user` (
  `userId` varchar(64) NOT NULL COMMENT '账户',
  `userPsw` varchar(64) NOT NULL COMMENT '密码',
  `userName` varchar(128) DEFAULT NULL COMMENT '姓名',
  `role` int(11) DEFAULT '1' COMMENT '角色',
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `system_book_user` */

insert  into `system_book_user`(`userId`,`userPsw`,`userName`,`role`) values ('21232f297a57a5a743894a0e4a801fc3','21232f297a57a5a743894a0e4a801fc3','管理员',2),('01d7f40760960e7bd9443513f22ab9af','e10adc3949ba59abbe56e057f20f883e','张三',2),('dc3a8f1670d65bea69b7b65048a0ac40','e10adc3949ba59abbe56e057f20f883e','李四',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
