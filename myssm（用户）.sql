/*
 Navicat Premium Data Transfer

 Source Server         : ssm
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : myssm

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 26/08/2019 10:08:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address`  (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `address_base` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '基本地址，用来保存省市县',
  `address_place` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户手写部分的详细地址，除省市县以外的详细地址',
  `address_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收货人姓名',
  `address_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '收货人电话',
  `address_status` int(1) NULL DEFAULT NULL COMMENT '地址状态，默认地址0,1其它地址',
  `user_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `admin_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `admin_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `admin_role` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart`  (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NULL DEFAULT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `product_quantity` int(10) NULL DEFAULT NULL COMMENT '购买数量',
  `cart_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类别名称',
  `category_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类别描述',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_img
-- ----------------------------
DROP TABLE IF EXISTS `t_img`;
CREATE TABLE `t_img`  (
  `img_id` int(10) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `product_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`img_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  CONSTRAINT `t_img_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_price` double(10, 2) NULL DEFAULT NULL,
  `order_status` int(1) NULL DEFAULT NULL COMMENT '订单状态，1待付款，2待发货，3待收货，4订单完成',
  `order_isdel` int(1) NULL DEFAULT NULL COMMENT '订单是否删除，对用户隐藏(设置标记)，0正常，1删除',
  `order_date` datetime(0) NULL DEFAULT NULL,
  `address_id` int(1) NULL DEFAULT NULL,
  `user_id` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `address_id`(`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `t_address` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_order_product
-- ----------------------------
DROP TABLE IF EXISTS `t_order_product`;
CREATE TABLE `t_order_product`  (
  `order_product_id` int(1) NOT NULL AUTO_INCREMENT,
  `product_id` int(1) NULL DEFAULT NULL,
  `order_id` int(1) NULL DEFAULT NULL,
  `product_quantity` int(10) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`order_product_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_order_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `product_price` double(10, 2) NULL DEFAULT NULL,
  `product_inventory` int(10) NULL DEFAULT NULL COMMENT '商品库存',
  `product_sales` int(10) NULL DEFAULT NULL COMMENT '商品销量',
  `product_describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `product_discount` double(2, 2) NULL DEFAULT NULL COMMENT '商品折扣',
  `product_status` int(1) NULL DEFAULT NULL COMMENT '商品上架下架，0表示上架，1下架',
  `category_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `t_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_birth` date NULL DEFAULT NULL,
  `user_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '123456', 'e10adc3949ba59abbe56e057f20f883e', '13582277842', '2019-08-10', '123456');
INSERT INTO `t_user` VALUES (2, 'user01', 'e10adc3949ba59abbe56e057f20f883e', '13582277842', '2019-08-11', '123456');
INSERT INTO `t_user` VALUES (3, '1234567', 'e10adc3949ba59abbe56e057f20f883e', '13582277842', '2019-08-29', '784569845');

SET FOREIGN_KEY_CHECKS = 1;
