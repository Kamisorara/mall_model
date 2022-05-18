/*
 Navicat Premium Data Transfer

 Source Server         : linux数据库本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 192.168.36.100:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 18/05/2022 15:48:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shop_advertising
-- ----------------------------
DROP TABLE IF EXISTS `shop_advertising`;
CREATE TABLE `shop_advertising`  (
  `id` bigint NOT NULL COMMENT '广告图片id',
  `advertise_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '广告图片位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for shop_classification
-- ----------------------------
DROP TABLE IF EXISTS `shop_classification`;
CREATE TABLE `shop_classification`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `classification_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图标element',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_classification
-- ----------------------------
INSERT INTO `shop_classification` VALUES (1, '零食', 'el-icon-sugar');
INSERT INTO `shop_classification` VALUES (2, '电子产品', 'el-icon-coordinate');
INSERT INTO `shop_classification` VALUES (3, '养生用品', 'el-icon-hot-water');
INSERT INTO `shop_classification` VALUES (4, '服装', 'el-icon-s-custom');
INSERT INTO `shop_classification` VALUES (5, '家电', 'el-icon-takeaway-box');
INSERT INTO `shop_classification` VALUES (6, '医药', 'el-icon-water-cup');

-- ----------------------------
-- Table structure for shop_commodities
-- ----------------------------
DROP TABLE IF EXISTS `shop_commodities`;
CREATE TABLE `shop_commodities`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '单个详情商品id',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品标签',
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称+简介',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `discount_notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠信息',
  `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配送地址',
  `mark` int NULL DEFAULT NULL COMMENT '评论',
  `sell` int NULL DEFAULT NULL COMMENT '月销量',
  `main_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主显示图片',
  `photo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '副照片1',
  `photo2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '副照片2',
  `photo3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '副照片3',
  `photo4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '副照片4',
  `seller_id` int NOT NULL COMMENT '销售店家id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_commodities
-- ----------------------------
INSERT INTO `shop_commodities` VALUES (1, '官方', 'MSI/微星RTX 3060', 3599.00, '暂无优惠', '火星送往地球', 999, 999, 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i4/2114030042/O1CN01aQzPdw1CBHGO1rFPo_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01cdBULA1CBHGUvLCnS_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01lyoFTB1CBHHsIC4bF_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_60x60q90.jpg', 1);
INSERT INTO `shop_commodities` VALUES (2, '官方', 'RTX3090', 3333.33, '暂无优惠', '地球送往火星', 111, 111, 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 2);

-- ----------------------------
-- Table structure for shop_noticeboard
-- ----------------------------
DROP TABLE IF EXISTS `shop_noticeboard`;
CREATE TABLE `shop_noticeboard`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公示表id',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公式文字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_noticeboard
-- ----------------------------
INSERT INTO `shop_noticeboard` VALUES (1, '今日新闻，xxx被xxx...');
INSERT INTO `shop_noticeboard` VALUES (2, '今日新闻，xxx被xxx...');
INSERT INTO `shop_noticeboard` VALUES (3, '今日新闻，xxx被xxx...');
INSERT INTO `shop_noticeboard` VALUES (4, '今日新闻，xxx被xxx...');

-- ----------------------------
-- Table structure for shop_recommended
-- ----------------------------
DROP TABLE IF EXISTS `shop_recommended`;
CREATE TABLE `shop_recommended`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '推荐商品id',
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `photo_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `mark` int NULL DEFAULT NULL COMMENT '评论',
  `sell` int NULL DEFAULT NULL COMMENT '月销量',
  `seller_id` int NOT NULL COMMENT '对应的店家id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_recommended
-- ----------------------------
INSERT INTO `shop_recommended` VALUES (1, 'MSI/微星RTX 3060', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/654519625/O1CN01L4xb8s2KyIt2aPRJL_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 3599.00, 999, 999, 1);
INSERT INTO `shop_recommended` VALUES (2, '七彩虹RTX3060/3060TI', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/3918712328/O1CN01Dgtlcp1T4GnUp8kXu_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 3499.00, 333, 444, 2);
INSERT INTO `shop_recommended` VALUES (3, '华硕ROG猛禽RTX3060', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2210835472380/O1CN01VreFtP1TS5OMe5Eio_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 2849.00, 444, 444, 1);
INSERT INTO `shop_recommended` VALUES (4, '七彩虹RTX3080/', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2133729733/O1CN01Bd2jO02LllfAvf7vU_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 9199.00, 333, 333, 2);
INSERT INTO `shop_recommended` VALUES (5, '影驰RTX3080/Ti', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2651871058/O1CN01ytqlo91JgbmPyVHqN_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 9300.00, 444, 444, 1);
INSERT INTO `shop_recommended` VALUES (6, '七彩虹RTX3070/Ti', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2133729733/O1CN01eYLZYr2Lllf7DLy2W_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 4599.00, 555, 555, 2);
INSERT INTO `shop_recommended` VALUES (7, '猛禽RTX3090/3090TI', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/654519625/O1CN01izYfVL2KyIt19oPoC_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 12999.00, 111, 1111, 1);
INSERT INTO `shop_recommended` VALUES (8, '英伟达NVIDIA公版无锁', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/3971128232/O1CN01MXBMol2AgJ67nn97y_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 7299.00, 111, 111, 2);
INSERT INTO `shop_recommended` VALUES (9, '影驰RTX3090名人堂', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2681126335/O1CN01jwyrX21wfTpYDl0oN_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 6899.00, 333, 333, 1);
INSERT INTO `shop_recommended` VALUES (10, '电竞叛客RTX3060', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/3690358924/O1CN010WKGeb2FnFFGkwI0L_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 2799.00, 555, 555, 2);

-- ----------------------------
-- Table structure for shop_seller
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller`;
CREATE TABLE `shop_seller`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '卖家店铺id',
  `seller_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卖家店铺名称',
  `seller_mark1` float(1, 1) NOT NULL COMMENT '描述分',
  `seller_mark2` float(1, 1) NOT NULL COMMENT '服务分',
  `seller_mark3` float(1, 1) NOT NULL COMMENT '物流分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_seller
-- ----------------------------
INSERT INTO `shop_seller` VALUES (1, 'Kamisora官方店', 4.0, 4.0, 4.0);
INSERT INTO `shop_seller` VALUES (2, '官方自营店', 3.0, 4.0, 4.0);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '菜单名',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` bigint NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `del_flag` int NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色权限字符串',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  `del_flag` int NULL DEFAULT 0 COMMENT 'del_flag',
  `create_by` bigint NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `menu_id` bigint NOT NULL DEFAULT 0 COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户性别',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '用户类型（0管理员，1普通用户）',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int NULL DEFAULT 0 COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1524762184922480642 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'Kamisora', '卡卡', '$2a$10$THVL/RRLI5kjYiaUZBqX1e0vH5OBd5sYfVMP1XBYNbWsV3kllTx3y', '0', '1210281722@qq.com', '15906877873', '男', NULL, '1', NULL, '2020-04-10 09:40:33', NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (2, 'wyf', 'NULL', '$2a$10$hFfulETdfxaBlJRj.hZtx..Fu0aQbql0nnmcdGghZbBFr2XPbXRBa', '0', NULL, NULL, NULL, NULL, '1', NULL, '2020-04-10 09:40:33', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_user_addr
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_addr`;
CREATE TABLE `sys_user_addr`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户地址',
  `user_id` bigint NULL DEFAULT NULL COMMENT '对应用户唯一id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_addr
-- ----------------------------
INSERT INTO `sys_user_addr` VALUES (1, '浙江省温州市永嘉县三江街道三江立体城盛景园3-3902', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `role_id` bigint NOT NULL DEFAULT 0 COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
