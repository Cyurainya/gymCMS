/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50511
Source Host           : localhost:3306
Source Database       : depot

Target Server Type    : MYSQL
Target Server Version : 50511
File Encoding         : 65001

*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `factory`
-- ----------------------------
DROP TABLE IF EXISTS `factory`;
CREATE TABLE `factory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进货商',
  `name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL COMMENT '备注',
  `card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factory
-- ----------------------------
INSERT INTO `factory` VALUES ('1', '上好佳食品', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');
INSERT INTO `factory` VALUES ('2', '王老吉凉茶', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');
INSERT INTO `factory` VALUES ('3', '肉食类专供', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');
INSERT INTO `factory` VALUES ('4', '蛋奶类专供', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');
INSERT INTO `factory` VALUES ('5', '服装类专供', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');
INSERT INTO `factory` VALUES ('6', '日用品专供', '北京市朝阳区朝外大街', '12312341234', '12341234', '1234567891234567891');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pricein` float DEFAULT NULL,
  `priceout` varchar(255) DEFAULT NULL COMMENT '生产日期',
  `store` int(11) DEFAULT '0',
  `sales` int(11) DEFAULT '0',
  `type_id` varchar(255) DEFAULT NULL,
  `factory_id` int(11) DEFAULT NULL COMMENT '进货商',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '上好佳薯片', '2', '4.0', '80', '20', '1', '1');
INSERT INTO `goods` VALUES ('2', '王老吉凉茶', '3', '5', '80', '20', '1', '2');
INSERT INTO `goods` VALUES ('3', '双汇冷鲜肉', '9', '12', '80', '20', '1', '3');
INSERT INTO `goods` VALUES ('4', '咯咯哒鸡蛋', '11', '15', '80', '20', '1', '4');
INSERT INTO `goods` VALUES ('5', '男士牛仔裤', '67', '125', '80', '20', '2', '5');
INSERT INTO `goods` VALUES ('6', '雕牌洗衣粉', '6', '9', '80', '20', '3', '6');

-- ----------------------------
-- Table structure for `grop`
-- ----------------------------
DROP TABLE IF EXISTS `grop`;
CREATE TABLE `grop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grop
-- ----------------------------
INSERT INTO `grop` VALUES ('1', '经理');
INSERT INTO `grop` VALUES ('2', '员工');

-- ----------------------------
-- Table structure for `sell`
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '出货表',
  `amount` int(11) DEFAULT NULL COMMENT '出货数量',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createdate` datetime DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sell
-- ----------------------------
INSERT INTO `sell` VALUES ('1', '20', null, now(), '1', '2');
INSERT INTO `sell` VALUES ('2', '20', null, now(), '2', '2');
INSERT INTO `sell` VALUES ('3', '20', '特殊处理', now(), '3', '2');
INSERT INTO `sell` VALUES ('4', '20', null, now(), '4', '2');
INSERT INTO `sell` VALUES ('5', '20', null, now(), '5', '2');
INSERT INTO `sell` VALUES ('6', '20', null, now(), '6', '2');

-- ----------------------------
-- Table structure for `stock`
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进货表',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createdate` datetime DEFAULT NULL COMMENT '进货日期',
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '100', null, now(), '1', '2');
INSERT INTO `stock` VALUES ('2', '100', '特价', now(), '2', '2');
INSERT INTO `stock` VALUES ('3', '100', null, now(), '3', '2');
INSERT INTO `stock` VALUES ('4', '100', '按斤计价', now(), '4', '2');
INSERT INTO `stock` VALUES ('5', '100', null, now(), '5', '2');
INSERT INTO `stock` VALUES ('6', '100', null, now(), '6', '2');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '食品');
INSERT INTO `type` VALUES ('2', '服饰');
INSERT INTO `type` VALUES ('3', '日用');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `grop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '1');
INSERT INTO `user` VALUES ('2', '2', '2', '2');
