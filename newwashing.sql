/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : newwashing

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-27 22:53:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addresses`
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `heng` decimal(10,0) DEFAULT NULL,
  `zong` decimal(10,0) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES ('1', '北京交通大学', '40', '51', '1', '海淀区洗衣工厂', '2017-04-21 15:26:55', '2017-05-13 03:37:12');
INSERT INTO `addresses` VALUES ('2', '中央财经大学', '40', '50', '1', '海淀区洗衣工厂', '2017-05-13 03:30:28', '2017-05-13 03:42:28');

-- ----------------------------
-- Table structure for `ar_internal_metadata`
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'development', '2017-04-12 12:36:58', '2017-04-12 12:36:58');

-- ----------------------------
-- Table structure for `components`
-- ----------------------------
DROP TABLE IF EXISTS `components`;
CREATE TABLE `components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `s_time` date DEFAULT NULL,
  `e_time` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of components
-- ----------------------------
INSERT INTO `components` VALUES ('1', '1', '母亲节5元优惠券', '5', '2017-05-14', '2018-05-14', '2017-05-14 07:40:06', '2017-05-14 07:55:57');
INSERT INTO `components` VALUES ('2', '2', '母亲节10元优惠券', '10', '2017-05-14', '2018-05-14', '2017-05-14 07:56:28', '2017-05-14 07:56:28');
INSERT INTO `components` VALUES ('3', '3', '母亲节50元优惠券', '50', '2017-05-14', '2018-05-14', '2017-05-14 07:56:58', '2017-05-14 07:56:58');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qishi_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `statues` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('17', '1', '逯衍', '1', '10', '165', '已送达', '2017-04-22 09:29:09', '2017-05-27 01:14:11');
INSERT INTO `orders` VALUES ('27', '1', '逯衍', '1', '5', '100', '已取送', '2017-05-05 13:51:27', '2017-05-13 07:33:55');
INSERT INTO `orders` VALUES ('29', '2', '逯衍', '2', '1', '15', '等待取件', '2017-05-05 14:00:56', '2017-05-05 14:00:56');
INSERT INTO `orders` VALUES ('30', '2', '王姝贤', '3', '1', '15', '等待取件', '2017-05-05 14:00:57', '2017-05-05 14:00:57');
INSERT INTO `orders` VALUES ('31', '2', '王姝贤', '4', '2', '30', '等待取件', '2017-05-05 14:03:37', '2017-05-05 14:03:37');
INSERT INTO `orders` VALUES ('32', '2', '王姝贤', '1', '2', '30', '等待取件', '2017-05-05 14:05:24', '2017-05-05 14:05:24');
INSERT INTO `orders` VALUES ('33', '2', '王姝贤', '1', '2', '30', '等待取件', '2017-05-05 14:08:16', '2017-05-05 14:08:16');
INSERT INTO `orders` VALUES ('34', '2', '王姝贤', '1', '2', '30', '等待取件', '2017-05-05 14:10:52', '2017-05-05 14:10:52');
INSERT INTO `orders` VALUES ('35', '2', '王姝贤', '2', '1', '30', '等待取件', '2017-05-05 14:16:29', '2017-05-05 14:16:29');
INSERT INTO `orders` VALUES ('36', '2', '王姝贤', '3', '1', '30', '等待取件', '2017-05-05 14:17:27', '2017-05-05 14:17:27');
INSERT INTO `orders` VALUES ('37', '3', '杨瑞婷', '1', '5', '100', '等待取件', '2017-05-06 07:55:23', '2017-05-06 07:55:23');
INSERT INTO `orders` VALUES ('38', '3', '杨瑞婷', '2', '10', '100', '等待取件', '2017-05-06 07:56:00', '2017-05-06 07:56:00');
INSERT INTO `orders` VALUES ('39', '3', '杨瑞婷', '3', '3', '50', '等待取件', '2017-05-06 08:14:58', '2017-05-06 08:14:58');
INSERT INTO `orders` VALUES ('42', '1', '王姝贤', '4', '5', '100', '等待取件', '2017-05-13 02:51:58', '2017-05-13 03:04:14');
INSERT INTO `orders` VALUES ('81', '1', '逯衍', '6', '2', '215', '等待取件', '2017-05-26 16:39:31', '2017-05-26 16:39:31');
INSERT INTO `orders` VALUES ('82', '1', '逯衍', '9', '2', '215', '等待取件', '2017-05-26 16:39:34', '2017-05-26 16:39:34');
INSERT INTO `orders` VALUES ('83', '1', '逯衍', '1', '2', '40', '等待取件', '2017-05-27 01:12:50', '2017-05-27 01:12:50');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'T恤', '15', '', '棉质T恤', '2017-04-12 21:00:21', '2017-05-13 07:35:27');
INSERT INTO `products` VALUES ('2', '毛衣', '25', null, '短款毛衣', '2017-04-21 16:46:31', '2017-04-21 16:46:34');
INSERT INTO `products` VALUES ('3', '牛仔', '30', null, '牛仔外套，裤子', '2017-04-21 16:47:13', '2017-04-21 16:47:16');
INSERT INTO `products` VALUES ('4', '羊绒', '50', null, '羊绒大衣', '2017-04-21 16:48:11', '2017-04-21 16:48:15');
INSERT INTO `products` VALUES ('5', '羽绒服', '80', null, '短中长款', '2017-04-21 16:52:00', '2017-04-21 16:52:03');
INSERT INTO `products` VALUES ('6', '皮衣', '150', null, '大衣', '2017-04-21 16:54:13', '2017-04-21 16:54:16');
INSERT INTO `products` VALUES ('7', '包具', '200', null, '箱包', '2017-04-21 16:54:47', '2017-04-21 16:54:51');
INSERT INTO `products` VALUES ('8', '鞋类', '300', null, '运动鞋', '2017-04-21 16:55:14', '2017-04-21 16:55:18');

-- ----------------------------
-- Table structure for `qishis`
-- ----------------------------
DROP TABLE IF EXISTS `qishis`;
CREATE TABLE `qishis` (
  `qishi_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`qishi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qishis
-- ----------------------------
INSERT INTO `qishis` VALUES ('1', '18612365953', null, '2000', '2017-05-05 21:12:46', '2017-05-05 21:13:02');
INSERT INTO `qishis` VALUES ('2', '186692334862', null, '2000', '2017-05-05 21:13:22', '2017-05-05 21:13:27');
INSERT INTO `qishis` VALUES ('3', '1865243992', null, '2000', '2017-05-05 21:13:48', '2017-05-05 21:13:52');
INSERT INTO `qishis` VALUES ('4', '18845935662', null, '2000', '2017-05-05 21:14:14', '2017-05-05 21:14:25');

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20170412121821');
INSERT INTO `schema_migrations` VALUES ('20170412125929');
INSERT INTO `schema_migrations` VALUES ('20170421070944');
INSERT INTO `schema_migrations` VALUES ('20170421072542');
INSERT INTO `schema_migrations` VALUES ('20170421075142');
INSERT INTO `schema_migrations` VALUES ('20170421091751');
INSERT INTO `schema_migrations` VALUES ('20170514073639');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `balance` decimal(10,0) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '逯衍', '15210915668', '666666', '2236', '120', '2017-04-12 20:40:40', '2017-05-07 15:52:12');
INSERT INTO `users` VALUES ('2', '王姝贤', '123', '321', '223', '80', '2017-04-15 15:36:20', '2017-04-15 15:36:23');
INSERT INTO `users` VALUES ('3', '杨瑞婷', '18000000', '666666', '222', '150', '2017-04-15 07:46:38', '2017-04-15 07:46:38');
