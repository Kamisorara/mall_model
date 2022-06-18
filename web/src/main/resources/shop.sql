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

 Date: 17/06/2022 19:11:25
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
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart`  (
  `id` bigint NOT NULL COMMENT '用户购物车id',
  `inventory_id` bigint NULL DEFAULT NULL COMMENT '商品对应库存id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `num` int UNSIGNED NOT NULL COMMENT '收藏的件数',
  `flag` tinyint NULL DEFAULT NULL COMMENT '选中状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
INSERT INTO `shop_cart` VALUES (1534543953435578369, 2, 2, 1, 0);
INSERT INTO `shop_cart` VALUES (1534544063926222849, 3, 3, 1, 0);
INSERT INTO `shop_cart` VALUES (1536984755134791681, 1, 1, 1, 0);
INSERT INTO `shop_cart` VALUES (1536984770293006337, 2, 1, 1, 0);
INSERT INTO `shop_cart` VALUES (1536984785266671618, 3, 1, 1, 0);
INSERT INTO `shop_cart` VALUES (1536985308027944962, 1, 1, 1, 0);
INSERT INTO `shop_cart` VALUES (1536987441657815041, 1, 1, 0, 1);

-- ----------------------------
-- Table structure for shop_classification
-- ----------------------------
DROP TABLE IF EXISTS `shop_classification`;
CREATE TABLE `shop_classification`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `classification_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图标element',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_classification
-- ----------------------------
INSERT INTO `shop_classification` VALUES (1, '食品', 'el-icon-sugar');
INSERT INTO `shop_classification` VALUES (2, '电子产品', 'el-icon-coordinate');
INSERT INTO `shop_classification` VALUES (3, '养生用品', 'el-icon-hot-water');
INSERT INTO `shop_classification` VALUES (4, '服装', 'el-icon-s-custom');
INSERT INTO `shop_classification` VALUES (5, '家电', 'el-icon-takeaway-box');
INSERT INTO `shop_classification` VALUES (6, '医药', 'el-icon-water-cup');
INSERT INTO `shop_classification` VALUES (7, '相机', 'el-icon-film');

-- ----------------------------
-- Table structure for shop_classification_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_classification_detail`;
CREATE TABLE `shop_classification_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品分类再分类对应详情id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品分类再分类对应名称',
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品分类再分类对应img地址',
  `classification_id` bigint NULL DEFAULT NULL COMMENT '对应总分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_classification_detail
-- ----------------------------
INSERT INTO `shop_classification_detail` VALUES (2, '键帽', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/774963415/O1CN01Q5Ns4t1b67JoikARi_!!774963415.jpg_580x580Q90.jpg_.webp', 2);
INSERT INTO `shop_classification_detail` VALUES (3, 'cpu', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2549841410/O1CN01yEbNwT1MHpC5EOHIs_!!2549841410-0-tmgimage.jpg_580x580Q90.jpg_.webp', 2);
INSERT INTO `shop_classification_detail` VALUES (4, '显卡', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2210835472380/O1CN01ClW4RQ1TS5OM4lf7r_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 2);
INSERT INTO `shop_classification_detail` VALUES (5, '小零食', 'https://picasso.alicdn.com/imgextra/822c2c/O1CNA1Pimgrender822c2cO1CN016DlAE91Pwzf6sIS3P_!!0-item_pic.jpg?backup_url=O1CN016DlAE91Pwzf6sIS3P_!!0-item_pic.jpg&p_context=eyJiaXoiOiJtYWMiLCJidWNrZXRJZCI6IkMiLCJjaGFubmVsIjoid3NlYXJjaGljb24taXRlbSIsIml0ZW1JZCI6IjU3MjUzMjkzNTQ5MCIsInBpY1R5cGUiOiJwMTEiLCJyZW5kZXJDb25kaXRpb24iOnt9LCJyZW5kZXJEYXRhIjp7fX0-&sign=822c2c0c5c452237997b1ddec2e1319f&v=4.0_580x580Q90.jpg_.webp', 1);
INSERT INTO `shop_classification_detail` VALUES (6, '糖果', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/1791258654/O1CN01FU5n8i2DnaJPlsFpq_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 1);
INSERT INTO `shop_classification_detail` VALUES (7, '老年保健', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2549841410/O1CN01UqEXw11MHpDBfF3tI_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 3);
INSERT INTO `shop_classification_detail` VALUES (8, '健身', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/765321201/O1CN01jgemfu1Kk6R1YmEMB_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 3);
INSERT INTO `shop_classification_detail` VALUES (9, 'cosPlay', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/2206639124825/O1CN01Fbaojv1lVticPVTHI_!!2206639124825.jpg_580x580Q90.jpg_.webp', 4);
INSERT INTO `shop_classification_detail` VALUES (10, '冰箱', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1714128138/O1CN01hIe59a29zFwdC0MTr-1714128138.jpg_580x580Q90.jpg_.webp', 5);
INSERT INTO `shop_classification_detail` VALUES (11, '热水器', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/201749140/O1CN01cMoOpS2HOAngxDkEl_!!2-item_pic.png_580x580Q90.jpg_.webp', 5);
INSERT INTO `shop_classification_detail` VALUES (12, '洗衣机', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/3671431043/O1CN01VqyOzM1JZjr7LvVm3_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 5);
INSERT INTO `shop_classification_detail` VALUES (13, '空调', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/4163961290/O1CN01vswYms1LOrga2Lsj3_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 5);

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
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属于的类别',
  `pinkage` int NULL DEFAULT NULL COMMENT '是否包邮(0不包邮,1包邮)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_commodities
-- ----------------------------
INSERT INTO `shop_commodities` VALUES (1, '官方', 'MSI/微星RTX 3060', 3599.00, '暂无优惠', '火星送往地球', 999, 999, 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i4/2114030042/O1CN01aQzPdw1CBHGO1rFPo_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01cdBULA1CBHGUvLCnS_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01lyoFTB1CBHHsIC4bF_!!2114030042.jpg_60x60q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_60x60q90.jpg', 1, '电子产品', 1);
INSERT INTO `shop_commodities` VALUES (2, '官方', 'RTX3090', 3333.33, '暂无优惠', '地球送往火星', 111, 111, 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 'https://img.alicdn.com/imgextra/i1/2114030042/O1CN01VxaRe41CBHNfA3wqa_!!2114030042.jpg_430x430q90.jpg', 2, '电子产品', 1);

-- ----------------------------
-- Table structure for shop_commodity_inventory
-- ----------------------------
DROP TABLE IF EXISTS `shop_commodity_inventory`;
CREATE TABLE `shop_commodity_inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id(对应商品库存)',
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对应商品型号名称',
  `shop_img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '对应商品图片地址',
  `shop_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '对应商品价格',
  `commodity_id` bigint NULL DEFAULT NULL COMMENT '对应商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_commodity_inventory
-- ----------------------------
INSERT INTO `shop_commodity_inventory` VALUES (1, '螺蛳粉（中杯）', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3015107655/O1CN01nMBnQd26Q2dAB0bf4_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 99.00, 1);
INSERT INTO `shop_commodity_inventory` VALUES (2, '螺蛳粉（中包）', 'https://img.alicdn.com/imgextra/i2/725677994/O1CN01UxJZJi28vIjn5fsQh_!!725677994.jpg_430x430q90.jpg', 199.00, 1);
INSERT INTO `shop_commodity_inventory` VALUES (3, '螺蛳粉（特大包）', 'https://img.alicdn.com/imgextra/i2/725677994/O1CN01XHRwiw28vIfeh5mkk_!!725677994.jpg_430x430q90.jpg', 1999.00, 1);

-- ----------------------------
-- Table structure for shop_noticeboard
-- ----------------------------
DROP TABLE IF EXISTS `shop_noticeboard`;
CREATE TABLE `shop_noticeboard`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公示表id',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公式文字',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签对应地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_noticeboard
-- ----------------------------
INSERT INTO `shop_noticeboard` VALUES (1, '天空日记：3000多张照片记录8年蓝天之增', 'https://www.163.com/news/article/H9BAJDEV000189FH.html');
INSERT INTO `shop_noticeboard` VALUES (2, '两男子开玩笑把朋友往阳台外丢 护栏断裂致其十级伤残', 'https://www.163.com/dy/article/H98QQ83B0534P59R.html');
INSERT INTO `shop_noticeboard` VALUES (3, '\r\n高考数学难上热搜 学生出考场就哭:3年来做的最难考卷', 'https://www.163.com/dy/article/H99H0SD405129QAF.html');
INSERT INTO `shop_noticeboard` VALUES (4, '乌内政部顾问：美国正在研拟计划 准备摧毁俄黑海舰队', 'https://www.163.com/dy/article/H9B14M7R0515CCSC.html');
INSERT INTO `shop_noticeboard` VALUES (5, '特斯拉裁员中国区未受影响 上海员工上4休2每班12小时', 'https://www.163.com/dy/article/H99HS4B60519APGA.html');

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `shop_recommended` VALUES (11, '佳能EOS 6D Mark ', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/1980515220/O1CN01YJGaIZ1oQoDvDho3z_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 3800.00, 111, 111, 1);
INSERT INTO `shop_recommended` VALUES (12, '全新佳能850D单反', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/664692165/O1CN01S3JlLN1RrcF8R5U4u_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 5589.00, 222, 333, 1);
INSERT INTO `shop_recommended` VALUES (13, '佳能EOS 200D2 II二代', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2070649490/O1CN01geyKzG2JyTQBoUWJl_!!2070649490.jpg_580x580Q90.jpg_.webp', 4048.00, 123, 123, 1);
INSERT INTO `shop_recommended` VALUES (14, 'Nikon/尼康D850', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1980515220/O1CN01y0bAsX1oQoDzFs4rl_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 7395.00, 444, 444, 1);
INSERT INTO `shop_recommended` VALUES (15, '【自营】索尼（SONY）', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/2549841410/O1CN01uJxfes1MHpD9AZ2aM_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 20099.00, 123, 123, 1);
INSERT INTO `shop_recommended` VALUES (16, 'Sony/索尼a7m4 ILCE-7M4', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/61561169/O1CN01Fxu7Kg1KVRkAT7Jru_!!61561169.png_580x580Q90.jpg_.webp', 16500.00, 1245, 4343, 1);

-- ----------------------------
-- Table structure for shop_seller
-- ----------------------------
DROP TABLE IF EXISTS `shop_seller`;
CREATE TABLE `shop_seller`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '卖家店铺id',
  `seller_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卖家店铺名称',
  `seller_mark1` float(2, 1) NOT NULL COMMENT '描述分',
  `seller_mark2` float(2, 1) NOT NULL COMMENT '服务分',
  `seller_mark3` float(2, 1) NOT NULL COMMENT '物流分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_seller
-- ----------------------------
INSERT INTO `shop_seller` VALUES (1, 'Kamisora官方店', 4.0, 4.0, 4.0);
INSERT INTO `shop_seller` VALUES (2, '官方自营店', 3.0, 4.0, 4.0);
INSERT INTO `shop_seller` VALUES (3, 'Kamisora的犬舍', 5.0, 5.0, 5.0);

-- ----------------------------
-- Table structure for shop_uniapp_classification
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_classification`;
CREATE TABLE `shop_uniapp_classification`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'uniapp分类',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品分类名称',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品分类图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_classification
-- ----------------------------
INSERT INTO `shop_uniapp_classification` VALUES (1, '充值中心', 'https://cdn.uviewui.com/uview/menu/8.png');
INSERT INTO `shop_uniapp_classification` VALUES (2, '天猫购物', 'https://cdn.uviewui.com/uview/menu/11.png');
INSERT INTO `shop_uniapp_classification` VALUES (3, '海鲜市场', 'https://cdn.uviewui.com/uview/menu/4.png');
INSERT INTO `shop_uniapp_classification` VALUES (4, '大众点评', 'https://cdn.uviewui.com/uview/menu/7.png');
INSERT INTO `shop_uniapp_classification` VALUES (5, '会员中心', 'https://cdn.uviewui.com/uview/menu/6.png');
INSERT INTO `shop_uniapp_classification` VALUES (6, '天猫国际', 'https://cdn.uviewui.com/uview/menu/17.png');

-- ----------------------------
-- Table structure for shop_uniapp_comment
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_comment`;
CREATE TABLE `shop_uniapp_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户评论id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户Id',
  `user_head` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户评论（100字以内）',
  `picutre1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户上床头像1',
  `picture2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户上传图片2',
  `picutre3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户上传图片3',
  `commodity_id` bigint NULL DEFAULT NULL COMMENT '用户评论对应商品id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_comment
-- ----------------------------
INSERT INTO `shop_uniapp_comment` VALUES (1, 1, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F24%2F20160824122502_cUTnE.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656342760&t=9f5863d974fee908ba697a0e622dea97', '还可以这狗做饭真好吃哈哈哈', 'https://img0.baidu.com/it/u=2279399525,1346771052&fm=253&fmt=auto&app=138&f=PNG?w=472&h=474', 'https://img1.baidu.com/it/u=529831172,1180613810&fm=253&fmt=auto&app=120&f=JPEG?w=421&h=240', NULL, 1, 'Kamisora');
INSERT INTO `shop_uniapp_comment` VALUES (2, 2, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201608%2F24%2F20160824122502_cUTnE.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656342760&t=9f5863d974fee908ba697a0e622dea97', '还可以这狗做饭真好吃哈哈哈', 'https://img0.baidu.com/it/u=2279399525,1346771052&fm=253&fmt=auto&app=138&f=PNG?w=472&h=474', NULL, NULL, 1, 'wyf');

-- ----------------------------
-- Table structure for shop_uniapp_commodities
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_commodities`;
CREATE TABLE `shop_uniapp_commodities`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'uniapp首页商品id',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签（官方或非官方）',
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `discount_notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠信息',
  `original_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `mark` int NULL DEFAULT NULL COMMENT '评价数量',
  `sell` int NULL DEFAULT NULL COMMENT '出售数量',
  `main_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主图片地址',
  `photo1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '附图片地址',
  `seller_id` int NULL DEFAULT NULL COMMENT '卖家id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品类型',
  `pinkage` int NULL DEFAULT NULL COMMENT '(0不包邮,1包邮)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1534910604526084098 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_uniapp_commodities
-- ----------------------------
INSERT INTO `shop_uniapp_commodities` VALUES (1, '官方', '正宗螺霸王螺蛳粉广西柳州螺狮粉罗霸王速食食品官方螺丝粉旗舰店', '3元无门槛优惠券', 199.00, 99.00, '室女座超星系团 银河系 太阳系 地球', 999, 111, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/3015107655/O1CN01nMBnQd26Q2dAB0bf4_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (2, '官方', '黑麦全麦面包整箱吐司健康代餐饱腹低0无糖精早餐零食品脂肪热量', NULL, 49.00, 19.00, NULL, 222, 333, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3160935493/O1CN01ffFCI51qRqLRl9Mwd_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (3, '官方', '佳能EOS 5D Mark IV单机身套机5D4全画幅专业高清数码单反相机5D3', NULL, 4222.88, 2222.88, NULL, 222, 444, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2697452977/O1CN01hR5ds61XrVqV16Yz3_!!2697452977.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-相机-单反相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (4, '官方', '荷美尔风干牛肉干片薄切原味35g*3+香辣35g*3包零食休闲食品礼物', NULL, 129.00, 99.00, NULL, 234, 2234, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/6000000004296/O1CN01WyrIi61hbcFwzuro0_!!6000000004296-0-picassoopen.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (5, '官方', '沃隆750g每日坚果30包混合坚果仁零食小吃休闲儿童食品成人款', NULL, 177.69, 88.88, NULL, 345, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/6000000006740/O1CN01VCqO1S1zeyF5fm2RM_!!6000000006740-0-picassoopen.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (6, '官方', '江中猴姑米稀原味15天装养胃早餐麦片速溶老年食品代餐囤货非猴菇', NULL, 99.90, 12.12, NULL, 456, 456, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2012793042/O1CN01z6IYMa1YLHaM1dM7N_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (7, '官方', '黑芝麻糊核桃黑豆代餐粉饱腹营养早餐食品即食速食冲饮黑米桑葚髮', NULL, 38.90, 19.90, NULL, 123, 556, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/3686870312/O1CN01EzAV9G1EAwFcPlqpb_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (8, '官方', '江中猴姑饼干酥性20天装养胃囤货猴头菇饼干猴菇食品上班族小零食', NULL, 12.90, 9.99, NULL, 234, 6564, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2012793042/O1CN01t3nufZ1YLHae3z8HQ_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '食品', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (9, '官方', '苹果Mac Mini迷你电脑主机2018款TR2 i7版2014 EN2 EQ2新款M1家用', NULL, 2116.00, 2115.00, NULL, 234, 234, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/58118147/O1CN01aCAQHM2A3NQLTXoOy_!!58118147.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (10, '官方', 'intel酷睿i7/GTX1660台式电脑主机全套32G组装机台式机整机高配独显电竞游戏型设计', NULL, 1298.00, 1296.00, NULL, 234, 234, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2081280514/O1CN018E4qUr1FfSKotegmH_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (11, '官方', '【领劵立减】Lenovo/联想台式机电脑天逸510S 天逸510pro主机十代酷睿六核i5四核', NULL, 1798.00, 1710.00, NULL, 111, 111, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/459462135/O1CN01iwrSeE1RdsMBZYC1x_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (12, '官方', '超频三蜂鸟便携式电脑主机I3 10100办公主机i5 10400F/11400F游戏吃鸡DIY独显', NULL, 2299.00, 2211.00, NULL, 11, 111, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1049122653/O1CN01VJweNR1VT7U2asIxt_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (13, '官方', '华硕i7 12700F/RTX3070/3080TI电脑主机台式水冷高配游戏直播整机', NULL, 8999.00, 8910.00, NULL, 223, 2323, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/210209508/O1CN019fx3Dn2K6iX5bARpV_!!210209508.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (14, '官方', '工控一体机嵌入式13.3/15.6/17/19英寸电容屏触摸工控主机mes车间壁挂组态plc工业安', NULL, 1380.00, 1310.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2207750912998/O1CN01KUdIaM1Y189H2n2YK_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, 1, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (15, '官方', '酷睿i7电脑台式全套 高配1060组装家用网吧游戏直播电竞吃鸡主机', NULL, 2599.00, 2510.00, NULL, 2323, 123, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/131218572/O1CN01NoVd9Q2DC1pcq96Et_!!131218572.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (16, '官方', 'Intel英特尔酷睿i5 12600KF独显高端高配水冷吃鸡网咖电竞游戏直播设计家用办公组装', NULL, 866.00, 840.00, NULL, 232, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2206722632063/O1CN011ifEFo1R6tq6ymfGG_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (17, '官方', '现货 索尼PS5 ps5主机 Playstation5家用游戏机光驱日版港版国行', NULL, 4169.00, 4149.00, NULL, 23, 2323, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/83080929/O1CN01Py5Rff1IjWbW9y3Am_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑游戏主机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (18, '官方', '索尼PS5主机 PlayStation5家用电视游戏机 高清8k 国行光驱版现货', NULL, 3039.00, 3029.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2212868842607/O1CN01v09GSi1V83IZM4VVf_!!2212868842607.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (19, '官方', '【现货】索尼PS5国行光驱版 PlayStation5高清蓝光8K 数字版游戏主机 官方固态硬盘', NULL, 4499.00, 4439.00, NULL, 123, 1434, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/3962388920/O1CN01djFX932FlPfEzEafV_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-游戏主机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (20, '官方', '国行索尼PS5主机PlayStation电视游戏机光驱数字版高清蓝光8K日版', NULL, 3739.00, 3239.00, NULL, 123, 34343, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/59942246/O1CN01AxIPAa1SSiGHWvRju_!!59942246.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-游戏主机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (21, '官方', '任天堂switch NS游戏 怪物猎人 崛起 曙光DLC破晓 特典 中文6月30', NULL, 248.00, 241.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/139311098/O1CN011GHHLu1JyvcmfOhmw_!!139311098.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-游戏卡带', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (22, '官方', '全新任天堂switch游戏NS暗黑破坏神3 永恒之战版大菠萝暗黑3 卡带', NULL, 258.00, 248.00, NULL, 3434, 123, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2139403888/O1CN01QE8EFj1eakeJftiYg_!!2139403888.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-游戏卡带', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (23, '官方', '现货中文任天堂Switch游戏卡带 NS 星露谷物语 中文牧场 模拟经营', NULL, 190.00, 120.00, NULL, 3434, 343, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/880042366/O1CN01jSudQS1TLfqhDW8An_!!880042366-0-picasso.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-游戏卡带', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (24, '官方', '2021新款Apple/苹果 iPhone 13 Pro Max苹果13Pro Max手机6.7英寸', NULL, 5568.00, 5518.00, NULL, 23, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/100340983/O1CN01fjVyXQ1J8G5JtqP9G_!!100340983.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (25, NULL, '12代英特尔I5 10400/F 12400/F12490F盒装搭华硕B660M主板CPU套装', NULL, 2299.00, 2219.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1652528654/O1CN01sDBTUQ2DnaJQ0ijOi_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (26, NULL, '12代英特尔酷睿i7 12700F/KF盒装搭华硕B660/Z690主板CPU套装超频', NULL, 3529.00, 3129.00, NULL, 333, 333, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1652528654/O1CN01NWgYBt2DnaJS7C6EC_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (27, NULL, '【立减300元】Canon/佳能M50二代微单相机佳能m50mark2相机入门', NULL, 5588.00, 5588.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/664692165/O1CN01qG6g0J1RrcF9LCzk0_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (28, NULL, '【自营】佳能（Canon）200d二代200Dii数码单反相机18-55入门级', NULL, 5499.00, 5499.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2549841410/O1CN01mqIpYW1MHpDGwh7m2_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (29, NULL, '全新三星内存条16G DDR4 2666 3200笔记本电脑内存条兼2400 4G 8G', NULL, 385.00, 385.00, NULL, 123, 333, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/60557505/O1CN01D58toR25JLDAQd14E_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-内存条', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (30, NULL, '三星笔记本内存条8G 16G DDR4 2133 2400 2666 3200 兼容2667正品', NULL, 209.00, 209.00, NULL, 333, 333, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2200817555504/O1CN01beCJSE1qWshC2vKWa_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-内存条', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (31, NULL, '三星笔记本内存条DDR4 2666 3200 8g 16g 32G运行内存samsung全新', NULL, 209.00, 209.00, NULL, 555, 555, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2209313780157/O1CN01AM0YEl1D1wwJMNvkY_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-内存条', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (32, NULL, '全新三星正品DDR4 4G 8G 16G 2133 2400 2666笔记本电脑内存条', NULL, 78.00, 78.00, NULL, 654, 533, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/836796427/O1CN01AaqPHg1xLc7Vg8k73_!!836796427.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-内存条', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (33, NULL, '金士顿骇客神条DDR4 2400 2666 8G内存条四代台式机兼容16G 2133', NULL, 123.00, 123.00, NULL, 123, 534, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2925066730/O1CN01SYiUKX1zaODEvODAB_!!2925066730.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-内存条', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (34, NULL, 'Fujifilm/富士立拍立得相机mini7+ 男女学生款便宜7c/s升级胶片机', NULL, 349.00, 349.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/645423784/O1CN01avwmr11dp7TKNYHXw_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (35, NULL, 'GoPro HERO10/9运动相机路亚户外骑行拍摄 go pro9钓鱼摄像机狗10', NULL, 2648.00, 2648.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/930204718/O1CN01cpEDjc1kitOndMt6p_!!930204718-0-picasso.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (36, NULL, '技嘉RTX3060 TI 超级雕/大雕/魔鹰 台式电脑电竞游戏显卡锁算力版', NULL, 3079.00, 3079.00, NULL, 999, 999, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2200559406385/O1CN01jcvXr11x2NdYA9N5Z_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (37, NULL, 'MSI微星RTX 3070/Ti超龙魔龙主机电竞游戏台式机电脑全新独立显卡', NULL, 5799.00, 5799.00, NULL, 22, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/671257335/O1CN01I0Nt5a243TsPq52PK_!!2-item_pic.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (38, NULL, '显卡rx6650xt/6750xt/6500xt/6800xt/3050樱瞳花嫁全新电脑游戏', NULL, 999.00, 999.00, NULL, 12, 232, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/677387971/O1CN01dIynai28klnaZqyT8_!!677387971.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (39, NULL, 'AMD撼讯RX6600/6650XT红魔暗黑犬全新台式电脑游戏独立显卡A卡', NULL, 2399.00, 2399.00, NULL, 123, 123, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2209674045101/O1CN01yel5cO1nYJ5kPAbKj_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (40, NULL, 'WD西部数据SN570 1T蓝盘SN550固态硬盘M.2 NVMe SSD 1TB PCIe 2T', NULL, 579.00, 579.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/908568069/O1CN01MxnZZo29Tec703TOf_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-硬盘', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (41, NULL, 'WD西部数据SN570固态硬盘1t笔记本SSD可高达3500MB/s电脑台式机', NULL, 929.00, 929.00, NULL, 123, 454, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2037117585/O1CN01j4kYli25tyv2huKkb_!!2037117585.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-硬盘', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (42, NULL, 'WD/西部数据 蓝盘 SN550 SN570 1T 2TB M.2 NVMe SSD固态硬盘', NULL, 575.00, 575.00, NULL, 234, 776, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/1946009268/O1CN015yrFIn2IKnU6YOrgJ_!!1946009268.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-硬盘', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (43, NULL, '三星PM9A1固态硬盘1TB/512G/256G PCIe4.0 M.2 NVMe SSD 2T全新', NULL, 279.00, 279.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/908568069/O1CN01zWfazr29TebxSQZv3_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-硬盘', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (44, NULL, '三星980Pro 500G/1T/2T SSD固态硬盘PCIe4.0 高速游戏黑盘华硕ROG', NULL, 2599.00, 2599.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/654519625/O1CN01gGCOq62KyItGy4ZWk_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-硬盘', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (45, NULL, '华南金牌X99-BD3/BD4主板CPU套装台式电脑吃鸡游戏2676v3 2678v3', NULL, 368.00, 368.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/42849776/O1CN01ZETxYu2M5ShQZsk5z_!!42849776-0-picasso.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (46, NULL, 'intel/英特尔i7 12700K/KF盒装处理器搭微星B660 Z690主板CPU套装', NULL, 4159.00, 4159.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/671257335/O1CN01VRUERz243Ttzc2lFS_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (47, NULL, '英特尔 i5 12400F i512400F散片CPU主板套装搭微星H610/B660/Z690', NULL, 1032.00, 1032.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2200793455700/O1CN01i5xuz81ryeKgGmi2A_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (48, NULL, 'intel/英特尔12代i5-12600K/KF搭华硕Z690吹雪主板 B660M板U套装', NULL, 2599.00, 2599.00, NULL, 123, 454, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2578685019/O1CN01LWhgE91mwkbz69iXQ_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-电脑-主板', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (49, NULL, '儿童数码照相机可拍照可打印男女孩卡通玩具宝宝生日礼物六一礼品', NULL, 58.00, 58.00, NULL, 123, 123, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i4/46082807/O1CN01ahcku71WbeVUij21f_!!0-saturn_solar.jpg_230x230.jpg', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (50, NULL, 'Nikon/尼康D850 D750 d780单机身专业全画幅高清数码单反相机D810', NULL, 7395.00, 7395.00, NULL, 123, 123, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1980515220/O1CN01y0bAsX1oQoDzFs4rl_!!0-item_pic.jpg_230x230.jpg', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (51, NULL, '【下单有礼】DJI大疆Pocket2灵眸口袋云台相机轻巧智能4K高清云台增稳', NULL, 2499.00, 2499.00, NULL, 123, 123, 'https://picasso.alicdn.com/imgextra/O1CNA1bDdmd12MZgpxqHnSQ_!!2955869842-0-psf.jpg_230x230.jpg', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (52, NULL, '大疆 DJI Action 2 Osmo灵眸磁吸运动相机 数码摄像机 手持vlog相机录像机', NULL, 2299.00, 2299.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/1773095659/O1CN01i9LrGQ1rfs66FDmWY_!!0-item_pic.jpg_230x230.jpg', NULL, NULL, '电子产品-相机-特殊相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (53, NULL, '二手Sony/索尼A6100L A6400微单入门级vlog高清旅游数码微单相机', NULL, 4950.00, 4950.00, NULL, 222, 333, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1047259797/O1CN01dZ5DgP2MF50vCX4dJ_!!1047259797.jpg_230x230.jpg', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (54, NULL, '全新各品牌RTX3070/3070TI8G微星七彩虹影驰猛禽火神超龙独立显卡', NULL, 3749.00, 3749.00, NULL, 45, 454, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/44976209/O1CN01GCmrds1vjlvRZySSo_!!44976209.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (55, NULL, '微星/七彩虹RTX3080TI/3080 12G技嘉影驰索泰耕升火神电脑显卡10G', NULL, 5049.00, 5049.00, NULL, 123, 333, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2127951430/O1CN01rL2Bmb1MQz70dhNhQ_!!2127951430.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (56, NULL, 'AMD蓝宝石 RX6600XT/RX6650XT 8G 白金/超白金 游戏吃鸡独立显卡', NULL, 2299.00, 2299.00, NULL, 123, 232, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/3703329893/O1CN01ohJkn02Mx32PAr3Nh_!!0-item_pic.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (57, NULL, '撼讯RX6700XT/6750XT红魔全新AMD台式机电脑电竞游戏独立显卡', NULL, 3899.00, 3899.00, NULL, 123, 333, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2209674045101/O1CN01GuNgX81nYJ5foTbv8_!!0-item_pic.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-显卡', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (58, NULL, '华南金牌X99主板cpu套装多开工作室双路电脑e5 2676 2673 2678v3', NULL, 368.00, 368.00, NULL, 232, 232, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/imgextra/i3/47018986/O1CN01Y1Qyhq2GFdfQKumTM_!!0-saturn_solar.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (59, NULL, '12代i5 12400f散片i512490f 12600kf微星B660主板CPU套装i512600k', NULL, 1469.00, 1469.00, NULL, 123, 123, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/36054738/O1CN01k5IUXA1ks3IFOmvG3_!!36054738.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (60, NULL, '英特尔I7 12700K/i712700KF散片搭华硕微星Z690/B660主板CPU套装', NULL, 2189.00, 2189.00, NULL, 123, 545, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2752302812/O1CN01D3UjAc1WdwUjsTmJG_!!2752302812.jpg_230x230.jpg_.webp', NULL, NULL, '电子产品-电脑-CPU', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (61, NULL, '全新佳能850D单反相机套机eos专业高清旅游照相机入门级数码学生\r\n全新佳能850D单反相机套机eos专业高清旅游照相机入门级数码学生', NULL, 5589.00, 5589.00, NULL, 123, 343, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/664692165/O1CN01S3JlLN1RrcF8R5U4u_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (62, NULL, 'Canon/佳能850d 旗舰店 蚂蚁摄影 高清数码 佳能入门级单反相机', NULL, 6299.00, 6299.00, NULL, 123, 343, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2495829718/O1CN01rAStoh2Letj8iPvNt_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (63, NULL, '佳能200D二代单反相机数码高清旅游照相机学生入门级摄像机200d2', NULL, 4588.00, 4588.00, NULL, 233, 232, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/409679289/O1CN0132rGMp2IUPoTyXlkM_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (64, NULL, '佳能200d二代单反相机200d2 旗舰店女学生款入门级高清数码旅游', NULL, 4499.00, 4499.00, NULL, 123, 123, 'https://picasso.alicdn.com/imgextra/O1CNA1QuKpOI2MZgqE4QuVB_!!2955869842-0-psf.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (65, NULL, '单反相机 佳能600D 550D 700D 750D 760D 二手 入门级 数码照相机', NULL, 750.00, 750.00, NULL, 123, 123, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/682452795/O1CN01fNx8Z81WW9lMAVIaK_!!682452795-0-picasso.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (66, NULL, '佳能60D 70D 80D二手专业中端高清 Vlog照相机 数码相机 单反相机', NULL, 800.00, 800.00, NULL, 344, 344, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/682452795/O1CN01mhFGls1WW9lTaRGX8_!!682452795-0-picasso.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (67, NULL, '佳能EOS 200D2 II二代 800D 850D 高清旅游入门级单反数码照相机', NULL, 3599.00, 3599.00, NULL, 343, 353, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/2561011408/O1CN01nBVtyo1MGuQAGyZYN_!!2561011408.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (68, NULL, 'Canon佳能EOS 6D Mark II单机身6d2全画幅专业高清数码单反相机6D', NULL, 7480.00, 7480.00, NULL, 123, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/1589207606/O1CN01qTFvV8263bEjodNO0_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (69, NULL, '佳能EOS 70D 80D 60D 77D 90D二手单反高清中端数码照相机 旅游', NULL, 1469.00, 1469.00, NULL, 123, 456, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1047259797/O1CN01t601Yc2MF50zgCZ67_!!1047259797.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (70, NULL, '原装佳能 EOS 90D 80D 77D 专业高清数码入门级单反相机家用旅游', NULL, 7538.00, 7538.00, NULL, 123, 456, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/27788638/O1CN01Xj2oy42DgFyLJHKGA_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (71, NULL, '佳能550D 700D 600D 650D 750D 200D 800D二手入门级单反相机100D', NULL, 1200.00, 1200.00, NULL, 123, 345, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/354583536/O1CN01LcPOUR1bzXBVGy5Z0_!!354583536.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (72, NULL, '二手佳能单反照相机200D 600d 700d 750d 800D入门级高清数码旅游', NULL, 1899.00, 1899.00, NULL, 345, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/103289319/O1CN01Ak5Mt92Ii9XjiBe6a_!!103289319.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-单反相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (73, NULL, 'Canon/佳能 PowerShot G7X Mark III数码相机g7x3卡片入门级', NULL, 4008.00, 4008.00, NULL, 456, 234, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2070649490/O1CN01e4nHHE2JyTQBoVKCt_!!2070649490.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (74, NULL, 'Sony/索尼 ZV-1 Vlog相机 学生相机入门/拍照', NULL, 4599.00, 4599.00, NULL, 123, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/782731205/O1CN019kIigC1Klw1FQEpdp_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (75, NULL, '【自营】佳能（Canon）g7x2数码相机学生高清旅游入门级vlog相机', NULL, 4599.00, 4599.00, NULL, 123, 345, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2549841410/O1CN01nSIZH21MHpDIMGPaZ_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (76, NULL, '【GRowING礼盒版】Ricoh/理光GR3/GRIII数码相机gr2升级版gr3相机', NULL, 5999.00, 5999.00, NULL, 123, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1579872924/O1CN01uMwOv71XTEr95M0cX_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (77, NULL, 'Canon/佳能PowerShot G7X Mark II III 数码相机卡片机 g7x3 g7x2', NULL, 4019.00, 4019.00, NULL, 345, 456, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/712156420/O1CN01uwde9U1xIPUyoIWWN_!!712156420.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (78, NULL, 'Canon/佳能 PowerShot G7 X Mark III G7X2数码相机g7xmark2 G7X3', NULL, 4028.00, 4028.00, NULL, 123, 343, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/1732799885/O1CN01Z7DzSF2MtNrozEfnN_!!1732799885.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (79, NULL, '现货发 Sony/索尼 ZV-1蚂蚁摄影数码ZV1vlog相机微单外观索尼zv1', NULL, 5399.00, 5399.00, NULL, 563, 453, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2495829718/O1CN019cdjQg2LetjEUDd54_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (80, NULL, 'Ricoh/理光 GR3x APS-C画幅数码相机 GRIIIx 40mm 街拍小型卡片机', NULL, 6199.00, 6199.00, NULL, 124, 676, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1579872924/O1CN01oBrIgz1XTEr9XMqYL_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (81, NULL, 'Canon/佳能 PowerShot G7 X Mark III G7X2数码相机g7xmark2 g7x3', NULL, 4039.00, 4039.00, NULL, 463, 275, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/712156420/O1CN016lUGOA1xIPVBIblLD_!!712156420.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (82, NULL, 'Canon/佳能PowerShot G7 X Mark II数码相机g7x2mark 2卡片机G7X3', NULL, 4048.00, 4048.00, NULL, 136, 844, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/1732799885/O1CN01aZlfBQ2MtNrwjav95_!!1732799885.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (83, NULL, '佳能G7X Mark III vlog高清旅游数码相机g7x3学生入门级卡片机', NULL, 5909.00, 5909.00, NULL, 135, 844, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/409679289/O1CN01mxY5892IUPodjyvCE_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (84, NULL, '佳能g7x3 4K视频Vlog美颜自拍数码相机学生入门级g7x mark3卡片机', NULL, 5199.00, 5199.00, NULL, 567, 457, 'https://picasso.alicdn.com/imgextra/O1CNA1exqgZ81NkVd8QZLrD_!!2237461608-0-psf.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (85, NULL, '[旗舰店]Canon/佳能 PowerShot G7 X Mark II 小型 网红相机 VLOG', NULL, 4099.00, 4099.00, NULL, 865, 356, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2134802284/O1CN012jjkah1Sk7NEBHYm6_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (86, NULL, 'Canon/佳能 PowerShot G7 X Mark III G7X2数码相机g7xmark2 g7x3', NULL, 3999.00, 3999.00, NULL, 634, 654, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/2561011408/O1CN01R0eOJE1MGuQBWPUQf_!!2561011408.jpg_580x580Q90.jpg_.webp', NULL, NULL, '1电子产品-相机-数码相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (87, NULL, '日本富士立拍立得胶卷相机instax mini11男女学生可爱迷你礼物盒', NULL, 699.00, 699.00, NULL, 123, 345, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/664326059/O1CN01Rt99201ud4WV1A9k6_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (88, NULL, 'instax富士拍立得mini11自带美颜相机mini7+儿童迷你mini9学生款8', NULL, 599.00, 599.00, NULL, 123, 534, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/642644306/O1CN01Umwj4C1hgCDUrN09R_!!642644306.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (89, NULL, '富士立拍立得mini90相机 一次成像立拍得instax mini90复古照相机', NULL, 799.00, 799.00, NULL, 345, 756, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/214204209/O1CN01doPutn1gxldxb5Ytt_!!214204209.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (90, NULL, '富士instax mini11一次成像拍立得相机自带美颜迷你相机7/9升级款', NULL, 639.00, 639.00, NULL, 366, 645, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2201313836522/O1CN01koYlgi1y37tuBSBrG_!!2-item_pic.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (91, NULL, 'Fujifilm/富士立拍立得相机mini40 迷你40傻瓜相机复古款生日90', NULL, 799.00, 799.00, NULL, 745, 764, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/645423784/O1CN01qV641c1dp7TCWDtuf_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (92, NULL, '富士拍立得相机mini11 男女学生款7+/8/9升级可爱一次成像相机', NULL, 499.00, 499.00, NULL, 745, 764, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/24848250/O1CN01pWaY3e2AoYImLEykV_!!24848250.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (93, NULL, '富士instax mini11拍立得相机学生款拍立得相机迷你7/9/25升级款', NULL, 599.00, 599.00, NULL, 123, 534, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/4255988369/O1CN01SszmUM2Bh3PKtOH4h_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (94, NULL, '富士立拍立得相机 instax mini11 男女学生傻瓜可爱迷你11礼盒8/9', NULL, 599.00, 599.00, NULL, 234, 634, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/4143440782/O1CN010KOd4Q1HeCU4f8HN2_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (95, NULL, 'Fujifilm/富士立拍立得相机instax mini11迷你11男女学生可爱相机', NULL, 749.00, 749.00, NULL, 234, 645, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/645423784/O1CN01hXlpnG1dp7TOBP6Um_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (96, NULL, '富士instax mini40 含拍立得相纸复古迷你傻瓜胶片相机mini90 evo', NULL, 799.00, 799.00, NULL, 254, 765, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/664326059/O1CN01JPeiNL1ud4WJh4SCa_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (98, NULL, '富士相机mini7+套餐含立拍立得相纸便宜7/7c升级男女学生儿童礼物', NULL, 499.00, 499.00, NULL, 246, 254, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1019803011/O1CN01Ab1Tvk1Y75JUozK64_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (99, NULL, 'Fujifilm富士instax拍立得mini90相机一次成像复古迷你高端旗舰机', NULL, 999.00, 999.00, NULL, 764, 235, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/4143440782/O1CN01Gpv3Au1HeCTvcvGVE_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (100, NULL, '富士mini11自带美颜傻瓜相机拍立得学生款新款上市便宜套餐含相纸', NULL, 599.00, 599.00, NULL, 755, 522, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/3343015075/O1CN013knNpG1nMOg5igTxS_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (101, NULL, 'Fujifilm/富士instax mini Evo数模一次成像mini相机立拍立得迷你', NULL, 1499.00, 1499.00, NULL, 323, 535, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2201227385672/O1CN01e759mD1rlpFFWV6Qi_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (102, NULL, 'Fujifilm/富士instax mini11拍立得相机mini9 mini7升级 官方授权', NULL, 549.00, 549.00, NULL, 124, 673, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1019803011/O1CN01UVLZTS1Y75JJOztGk_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (103, NULL, '预售5天 富士instax mini90拍立得胶片相机文艺傻瓜复古一次成像', NULL, 1299.00, 1299.00, NULL, 124, 235, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/3343015075/O1CN01qiZErk1nMOdMUnVBF_!!3343015075.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-拍立得', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (800, NULL, 'Canon/佳能ixus105高清数码相机复古ccd索尼wx学生便携式自拍vlog', NULL, 236.00, 236.00, NULL, 243, 235, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2212950945415/O1CN01mkaG9m1ps7RK2UPBN_!!2212950945415.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (801, NULL, '包邮日系插画富士柯达一次性胶片相机彩色胶卷傻瓜机带闪24张全新', NULL, 79.00, 79.00, NULL, 346, 346, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1880614560/O1CN01Y92L461jYWo9Hklia_!!1880614560.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (802, NULL, '奥林巴斯U1 U2 ZOOM 80 105 115 140 OZ120庄达菲款胶卷胶片相机', NULL, 838.00, 838.00, NULL, 642, 643, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/62713710/O1CN011rNv9J1dHE9lIJQ4Y_!!62713710.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (803, NULL, 'Canon/佳能ixus980数码相机复古卡片机入门学生CCD便携自拍vlog', NULL, 225.00, 225.00, NULL, 653, 645, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2210854261934/O1CN01tnoOdC1Q9okOnSgVP_!!2210854261934.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (804, NULL, '网红插画傻瓜胶卷相机复古胶片机傻瓜机非一次性相机带闪光灯礼物', NULL, 153.00, 153.00, NULL, 643, 245, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2542212315/O1CN01WFqnpg1SyJdwZrcaF_!!2542212315.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (805, NULL, '全新德国VIBE 501F相机非一次性复古胶片相机135胶卷傻瓜带闪光灯', NULL, 168.00, 168.00, NULL, 746, 624, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/848874428/O1CN018nDQ6R1ia4Rekf8oK_!!848874428.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (806, NULL, 'Leica/徕卡MP经典胶片旁轴相机胶卷相机黑10302银10301莱卡mp现货', NULL, 36000.00, 36000.00, NULL, 643, 656, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/1122187574/O1CN0125DLBs25owSeokPwY_!!1122187574.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (807, NULL, '日本Ninoco NF-1全画幅礼盒装网红复古傻瓜入门胶卷相机胶片相机', NULL, 288.00, 288.00, NULL, 213, 323, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2224017219/O1CN01vAKAnt23CLthRB1kt_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (808, NULL, '135Ninoco傻瓜半格胶卷相机复古胶片柯达m35奥林巴斯非一次性相机', NULL, 288.00, 288.00, NULL, 646, 463, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2542212315/O1CN015KQ8Lp1SyJeECdPz1_!!2542212315.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (809, NULL, 'Canon/佳能A4000 A1数码相机复古CCD可录视频便携学生党索尼WX300', NULL, 259.00, 259.00, NULL, 643, 346, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2965253974/O1CN01UC9rYq1fE8hxl8pEm_!!2965253974.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (810, NULL, '全新 德国VIBE 501F相机 非一次性复古胶片相机 135胶卷 礼物怀旧', NULL, 173.00, 173.00, NULL, 653, 346, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/1950543054/O1CN01bby94h1YQmGMmVA1D_!!1950543054.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (811, NULL, '金典二手Fujifilm富士XS10 X-S10复古文艺微单相机Vlog美颜高清', NULL, 7300.00, 7300.00, NULL, 235, 633, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/48943953/O1CN01U4th7D1f4WL0RXSQv_!!48943953.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (812, NULL, 'Canon/佳能ixus960数码相机复古CCD索尼学生自拍vlog便携卡片机', NULL, 225.00, 225.00, NULL, 464, 453, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2211013908619/O1CN01i0DzRt2DXYRuYbnC6_!!2211013908619.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (813, NULL, '【365天更换保障】佳能EOS7 7s 胶片相机 EF卡口 自动对焦 EOS30', NULL, 650.00, 650.00, NULL, 141, 235, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/1013290572/TB1SLQ9GVXXXXblaXXXXXXXXXXX_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (814, NULL, 'Canon/佳能ixus95is沈月同款数码相机复古CCD学生便携式自拍vlog', NULL, 215.00, 215.00, NULL, 647, 865, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1743327947/O1CN011rDjPV28ZmI9BgISZ_!!1743327947.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (815, NULL, '【365天保障】佳能EOS Kiss2 New Kiss 胶片相机 自动 EF口 1 2 3', NULL, 248.00, 248.00, NULL, 755, 234, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1013290572/TB2nEhRdl8lpuFjy0FnXXcZyXXa_!!1013290572.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-旁轴相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (816, NULL, 'Canon佳能EOS R5单机 eosr5 EOS R6全画幅高清8k专业数码微单相机', NULL, 14585.00, 14585.00, NULL, 234, 534, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1980515220/O1CN01M0GVJl1oQoDvEEu1x_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (817, NULL, '现货Sony索尼ILCE-7M4单机身A7M4 A7R4a7r3a数码微单相机Alpha7IV', NULL, 16849.00, 16849.00, NULL, 534, 534, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1980515220/O1CN01B3urZi1oQoDrPs3km_!!2-item_pic.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (818, NULL, 'Sony/索尼Alpha 7C 全画幅微单相机7C/A7C/α7c', NULL, 14158.00, 14158.00, NULL, 411, 412, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/782731205/O1CN0182i9U71Klw1Bn97Rd_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (819, NULL, '【自营】佳能（Canon）EOS R6全画幅微单相机高清专业数码单机身', NULL, 15999.00, 15999.00, NULL, 422, 412, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2549841410/O1CN01CcvTux1MHpDGwRoeW_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (820, NULL, 'Sony/索尼 ZV-E10 ZV-E10L vlog微单相机', NULL, 6958.00, 6958.00, NULL, 523, 634, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/782731205/O1CN01lrTY7D1Klw1FRUAiJ_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (821, NULL, '【自营】 索尼 SONY Alpha 7C 单机身全画幅微单数码相机A7c国行', NULL, 12799.00, 12799.00, NULL, 134, 634, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2213026174672/O1CN01P72qbY1kNpAxfaaq3_!!2213026174672-0-scmitem1000.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (822, NULL, '【官旗】松下S5KGK 20-60套机 s5k全画幅微单S5视频4K防抖照相机', NULL, 13198.00, 13198.00, NULL, 134, 874, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2849757508/O1CN01ibI1xu25KiQHyIq4x_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (823, NULL, '佳能EOS R eos rp单机身专业级全画幅数码微单相机eosr eosrp套机\r\n', NULL, 11150.00, 11150.00, NULL, 134, 466, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1589207606/O1CN01Lgpfbm263bEl5k5GK_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (824, NULL, 'Sony索尼ILCE-7M4单机身A7M4 A7R4a7r3a高清数码微单相机Alpha7IV', NULL, 16849.00, 16849.00, NULL, 134, 435, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1589207606/O1CN014QVeUI263bEj1pYg0_!!2-item_pic.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (825, NULL, '二手Sony/索尼A6100L A6400微单入门级vlog高清旅游数码微单相机', NULL, 4950.00, 4950.00, NULL, 757, 523, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1047259797/O1CN01dZ5DgP2MF50vCX4dJ_!!1047259797.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (826, NULL, '现货速发】Fujifilm富士X-T30II微单相机数码4k高清旅游xt30二代', NULL, 7780.00, 7780.00, NULL, 234, 542, 'https://picasso.alicdn.com/imgextra/O1CNA1McZHvx2MZgpzvIWjN_!!2955869842-0-psf.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (827, NULL, '【现货】富士X-T30二代单电复古4K高清视频微单文艺xt30S数码相机', NULL, 7190.00, 7190.00, NULL, 423, 523, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/103209408/O1CN011Imx4l2JMuwevGJVJ_!!103209408.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (828, NULL, '【24期免息】佳能r6 全画幅专业级微单4K视频高清数码eos r6相机', NULL, 15999.00, 15999.00, NULL, 533, 523, 'https://picasso.alicdn.com/imgextra/O1CNA17Oyod61NkVdFbIBkQ_!!2237461608-0-psf.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (829, NULL, '现货Sony/索尼ILCE-7M4 全画幅微单相机 A7M4 Alpha 7 IV a7m4', NULL, 16249.00, 16249.00, NULL, 535, 234, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1646111836/O1CN01lVvP1T1PQvw6a6IRR_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (830, NULL, '佳能 M50 M6二代 入门级女学生 数码高清旅游vlog 微单反相机M200', NULL, 4788.00, 4788.00, NULL, 635, 234, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i2/1732799885/O1CN01uJi7Cz2MtNroHZfyo_!!1732799885.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (831, NULL, 'Sony/索尼 ZV-E10 高清旅游直播自拍美颜vlog微单相机 索尼zve10', NULL, 6299.00, 6299.00, NULL, 123, 142, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2955869842/O1CN01pGk8OM2MZgq48fAa5_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (832, NULL, '现货Sony/索尼ILCE-7M4 a7m4全画幅微单相机 索尼a7m4 a7s3 a7r4a', NULL, 16280.00, 16280.00, NULL, 123, 523, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2202960551/O1CN01Hl47if1FwOwXbobwT_!!2202960551.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (833, NULL, '顺丰包邮！ RETO 3D相机135胶卷 reto3d复古胶片立体三格傻瓜相机', NULL, 580.00, 580.00, NULL, 252, 235, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i3/305573742/O1CN01F1BtNY1dVsntXH0vO_!!305573742.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (834, NULL, 'Simple Use 即开即用非一次性相机可重复使用傻瓜lomo相机135胶卷', NULL, 135.00, 135.00, NULL, 123, 124, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/305573742/O1CN01YBNE6z1dVsfttSiN0_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-微单', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (835, NULL, '高清红外感应相机户外防盗贼夜视拍照录像摄像机野外果园鱼塘监控', NULL, 399.00, 399.00, NULL, 345, 655, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2212520842314/O1CN017FBVnq1SxrE2VPtTv_!!2-item_pic.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (836, NULL, '三网通版BL480LP夜视摄像机红外相机户外野外监控森林防盗高清', NULL, 680.00, 680.00, NULL, 345, 786, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/747901879/O1CN01STG1zG1PkcsS3mVwT_!!747901879.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (837, NULL, '4G版三网通红外夜视摄像机BL480LP红外相机户外野外监控森林防盗', NULL, 680.00, 680.00, NULL, 345, 645, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/494311765/O1CN01h2JlPE1OuPgT9bJRL_!!494311765.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (838, NULL, '4K高清红外相机H982夜视森林监控相机户外工地防盗野外养殖场动物', NULL, 390.00, 390.00, NULL, 345, 745, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/494311765/O1CN01yZ7vg61OuPebgZTX8_!!494311765.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (839, NULL, '野外相机太阳能电池8000毫安和铁盒', NULL, 280.00, 280.00, NULL, 34, 634, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i4/2212520842314/O1CN01g6G8BX1SxrFK2hAeH_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (840, NULL, '4K高清户外红外相机H982夜视森林监控户外工地安防野外相机摄像头', NULL, 380.00, 380.00, '', 654, 645, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1852147952/O1CN01E9WYRn28c4DqsAuJG_!!1852147952.png_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (841, NULL, '小鸡彩虹comicam咔漫启蒙儿童玩具漫画相机拍立得相机儿童节礼物', NULL, 209.00, 209.00, NULL, 745, 745, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/2201259730091/O1CN01tMmt6z1CXiedjLmCk_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (842, NULL, '现货包邮 lomo相机 lomokino 胶片摄像机35mm手摇定格电影录相机', NULL, 390.00, 390.00, NULL, 767, 457, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/2501222636/O1CN01Pizzkx1VLKg1l7WXJ_!!2501222636.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (843, NULL, '4K高清H982红外相机户外监控摄像机山林果园池塘仓库防盗感应拍照', NULL, 541.00, 541.00, NULL, 745, 745, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/709089761/O1CN01oR03bZ2LyakBfODqd_!!709089761.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (844, NULL, '姜昇润 RETO 3D菲林相机135胶卷 reto3d立体三格傻瓜相机', NULL, 650.00, 650.00, NULL, 124, 124, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/2206602314801/O1CN01KGqDNd1lKuGkjJa7E_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (845, NULL, '日本YAMA相机 135胶卷相机复古可换胶片傻瓜相机带闪光灯YAMAFILM', NULL, 258.00, 258.00, NULL, 423, 533, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/1950543054/O1CN01TeY8o81YQmECRnysP_!!1950543054.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (846, NULL, 'H881户外防水打猎相机Hunting Camera红外摄像机夜视监控野外防盗', NULL, 350.00, 350.00, NULL, 533, 523, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/3313260876/O1CN01Ot7fjT1ILFUKqFjzz_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (847, NULL, '【奇妙商店】DIY双镜头组装35MM胶卷照相机 复古双反胶片菲林相机', NULL, 69.00, 69.00, NULL, 114, 424, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i1/2206789303163/O1CN01tOBO3c1ZEhR12eIno_!!2206789303163.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (848, NULL, 'BL480LP红外线摄像机野外监控相机4G三网通森林工地防盗安防监控', NULL, 680.00, 680.00, NULL, 412, 4334, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2501222636/O1CN01ewrm3A1VLKefOXBgr_!!2501222636.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (849, NULL, '户外果园野外养殖防贼相机人体感应高清监控摄像头红外夜视不发光', NULL, 208.00, 208.00, NULL, 122, 244, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/1852147952/O1CN01UGLz4I28c4E2rKn54_!!1852147952.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (850, NULL, '618儿童拍立得数码照相机可拍照打印WIFI便携小单反男女生日礼物', NULL, 59.00, 59.00, NULL, 673, 566, 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i2/1134365774/O1CN01E8e5gx1sWXZiOhmPa_!!1134365774.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (851, NULL, '大人科学复古相机双反135胶卷照相机diy组装送同学送朋友生日礼物', NULL, 49.00, 49.00, NULL, 645, 977, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/1071726/O1CN01Rd0c0H1OcYCX6waY2_!!1071726.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (852, NULL, '佳能防爆相机ZHS2420化工厂石油拍照专用本安型单反数码照相机器', NULL, 8800.00, 8800.00, NULL, 345, 534, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/1936607233/O1CN0123IlCcZSwxVKWvi_!!1936607233.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', 1);
INSERT INTO `shop_uniapp_commodities` VALUES (853, NULL, '儿童动物32G卡通相机数码迷小相机单反双摄高清拍照录像生日礼物', NULL, 58.00, 58.00, NULL, 534, 345, 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/1134365774/O1CN01RWKJ8v1sWXXd3IbZE_!!1134365774.jpg_580x580Q90.jpg_.webp', NULL, NULL, '电子产品-相机-特殊相机', NULL);
INSERT INTO `shop_uniapp_commodities` VALUES (854, NULL, '王小卤虎皮凤爪爆款零食小吃 休闲食品鸡爪子卤味熟食解馋小零食', NULL, 99.80, 99.80, NULL, 123, 433, 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/2200805933721/O1CN01rJZd7I1dMGWKU4rB0_!!0-item_pic.jpg_580x580Q90.jpg_.webp', NULL, NULL, '食品', NULL);

-- ----------------------------
-- Table structure for shop_uniapp_picture
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_picture`;
CREATE TABLE `shop_uniapp_picture`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品轮播图id',
  `picture` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品轮播图地址',
  `shop_id` bigint NULL DEFAULT NULL COMMENT '商品图对应商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_picture
-- ----------------------------
INSERT INTO `shop_uniapp_picture` VALUES (1, 'https://img.alicdn.com/imgextra/i1/725677994/O1CN01MkLwYM28vInpLnvN7_!!725677994.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_uniapp_picture` VALUES (2, 'https://img.alicdn.com/imgextra/i3/725677994/O1CN01ZruIZT28vInf13iI1_!!725677994.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_uniapp_picture` VALUES (3, 'https://img.alicdn.com/imgextra/i2/725677994/O1CN01UxJZJi28vIjn5fsQh_!!725677994.jpg_430x430q90.jpg', 1);
INSERT INTO `shop_uniapp_picture` VALUES (4, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i3/3897644613/O1CN01VW3J8X1jwnntxf8UG_!!3897644613.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_uniapp_picture` VALUES (5, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/3897644613/O1CN0134ponn1jwnnvy3PHS_!!3897644613.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_uniapp_picture` VALUES (6, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/3897644613/O1CN01HuLRi61jwnnmMYx6B_!!3897644613.jpg_430x430q90.jpg', 2);
INSERT INTO `shop_uniapp_picture` VALUES (7, 'https://img.alicdn.com/bao/uploaded/i1/1980515220/O1CN01YxoK0D1oQoDzCKgcV_!!1980515220.jpg', 3);

-- ----------------------------
-- Table structure for shop_uniapp_question
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_question`;
CREATE TABLE `shop_uniapp_question`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `user_ask` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户问题',
  `shop_id` bigint NULL DEFAULT NULL COMMENT '用户评论对应商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_question
-- ----------------------------
INSERT INTO `shop_uniapp_question` VALUES (1, 'Kamisora', 1, '这个粉好吃吗', 1);

-- ----------------------------
-- Table structure for shop_uniapp_recommended
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_recommended`;
CREATE TABLE `shop_uniapp_recommended`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'uniapp首页商品推荐id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '推荐名称',
  `picture` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_recommended
-- ----------------------------
INSERT INTO `shop_uniapp_recommended` VALUES (1, '数码产品', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i3/2213026174672/O1CN01xHisdS1kNpB3NZsXc_!!2213026174672-0-scmitem1000.jpg_580x580Q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (2, '排行榜', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/1773095659/O1CN01zF2tqf1rfs5hvciUJ_!!0-item_pic.jpg_580x580Q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (3, '每日特价', 'https://gw.alicdn.com/bao/uploaded/i1/2023486475/O1CN01nr6qrl1xhb6QULbMO_!!0-item_pic.jpg_300x300q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (4, '新品首发', 'https://g-search2.alicdn.com/img/bao/uploaded/i4/i1/92688455/O1CN019LQfcg2CKRUWFNnsw_!!92688455.jpg_580x580Q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (5, '史低特惠', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1714128138/O1CN011UNEOH29zFwLV8gzs_!!0-item_pic.jpg_580x580Q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (6, '进口特惠', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i4/6000000005938/O1CN012becmd1tjeaxmCtfY_!!6000000005938-0-picassoopen.jpg_580x580Q90.jpg_.webp');
INSERT INTO `shop_uniapp_recommended` VALUES (7, '火热周边', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2014-9%2F14108335036320921.gif&refer=http%3A%2F%2Fpic.qqtn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656069950&t=f0f220ef469a340b308c6f855baf4d64');
INSERT INTO `shop_uniapp_recommended` VALUES (8, '现时秒杀', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2534651412/O1CN017BOcpT1MIjx49Rb4X_!!2534651412.jpg_580x580Q90.jpg_.webp');

-- ----------------------------
-- Table structure for shop_uniapp_seller
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_seller`;
CREATE TABLE `shop_uniapp_seller`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商户id',
  `seller_head` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商户头像',
  `seller_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商户名称',
  `seller_rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商户等级',
  `mark1` float(2, 1) NULL DEFAULT NULL COMMENT '宝贝描述等级',
  `mark2` float(2, 1) NULL DEFAULT NULL COMMENT '卖家服务等级',
  `mark3` float(2, 1) NULL DEFAULT NULL COMMENT '物流服务等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_seller
-- ----------------------------
INSERT INTO `shop_uniapp_seller` VALUES (1, '', 'Kamisora的犬舍', '初来乍到的卖家', 5.0, 5.0, 5.0);

-- ----------------------------
-- Table structure for shop_uniapp_swiper
-- ----------------------------
DROP TABLE IF EXISTS `shop_uniapp_swiper`;
CREATE TABLE `shop_uniapp_swiper`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '首页轮播图id',
  `picture` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_uniapp_swiper
-- ----------------------------
INSERT INTO `shop_uniapp_swiper` VALUES (1, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F016d6b598171faa8012156032e9ccf.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656070265&t=7d49279ebe4c159e0c072977057f9b5b');
INSERT INTO `shop_uniapp_swiper` VALUES (2, 'https://img0.baidu.com/it/u=1580501121,1764394585&fm=253&fmt=auto&app=138&f=JPEG?w=552&h=295');
INSERT INTO `shop_uniapp_swiper` VALUES (3, 'https://img2.baidu.com/it/u=269171909,3813664891&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333');
INSERT INTO `shop_uniapp_swiper` VALUES (4, 'https://img2.baidu.com/it/u=3416303271,3248961455&fm=253&fmt=auto&app=120&f=JPEG?w=727&h=500');
INSERT INTO `shop_uniapp_swiper` VALUES (5, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp8.itc.cn%2Fimages01%2F20201108%2F6db2849e128c4d3fbaafcba1f9247630.gif&refer=http%3A%2F%2Fp8.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656070265&t=dba14308057173059635dc87d4dc5a64');
INSERT INTO `shop_uniapp_swiper` VALUES (6, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202006%2F22%2F20200622105855_lqhmv.thumb.1000_0.gif&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656070265&t=a46b846978c74cb0da4b5ccda38491c5');

-- ----------------------------
-- Table structure for sys_head
-- ----------------------------
DROP TABLE IF EXISTS `sys_head`;
CREATE TABLE `sys_head`  (
  `id` bigint NOT NULL COMMENT '用户头像id',
  `user_head` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像url地址',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `status` int NULL DEFAULT NULL COMMENT '0启用 1不启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_head
-- ----------------------------
INSERT INTO `sys_head` VALUES (1, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/06/12/8154a208-ec87-4ec7-a227-422dff441914.jpg', 1, 0);
INSERT INTO `sys_head` VALUES (1535808087187795969, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/06/12/e22baa33-df30-46d4-81bf-e6dcb44cb148.png', 2, 0);
INSERT INTO `sys_head` VALUES (1535823417859764226, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/06/12/2c0cbe2f-1143-40c8-a346-a7c1eb0b761f.png', 1524762184922480645, 1);
INSERT INTO `sys_head` VALUES (1535823590774140930, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/06/14/5cfaef66-f490-453c-a373-24479ec78e91.webp', 1524762184922480645, 0);

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
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `del_flag` int NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, '添加商品', NULL, NULL, '0', '0', 'sys:shop:add', '#', NULL, NULL, NULL, NULL, 0, NULL);

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
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '系统管理员', 'admin', '0', 0, NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO `sys_role_menu` VALUES (1, 2);

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
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int NULL DEFAULT 0 COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1533824747383656451 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'Kamisora', '小卡', '$2a$10$THVL/RRLI5kjYiaUZBqX1e0vH5OBd5sYfVMP1XBYNbWsV3kllTx3y', '0', '1210281722@qq.com', '15906877873', '男', NULL, '1', NULL, '2020-04-10 09:40:33', NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (2, 'wyf', 'wyf', '$2a$10$hFfulETdfxaBlJRj.hZtx..Fu0aQbql0nnmcdGghZbBFr2XPbXRBa', '0', '1210281722@qq.com', '15906877873', '女', NULL, '1', NULL, '2020-04-10 09:40:33', NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (3, 'Kamisora123123', 'NULL', '$2a$10$xjAFjcgvF/37Fos66MVUX.a9uBU3t98TF5npCJpe/JSeT2Pp4Y8sq', '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (1524762184922480645, '哈哈哈', 'kakakaka', '$2a$10$bMiP.2HfGiXZWGNPiIkBkOrlFv4obDLDxZDdskIpaXDHsTe/dx1u6', '0', 'Kamisora2020@163.com', '15906877873', '女', NULL, '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (1533824747383656450, '这里是小卡', '小卡', '$2a$10$jIhR63Q/S87nJRLAwJafD.2RcvQrZ3jXxRcGMIMIQr9nHAVRsD8M2', '0', '1210281722@qq.com', '15906877873', '女', NULL, '1', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_user_addr
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_addr`;
CREATE TABLE `sys_user_addr`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户地址',
  `user_id` bigint NULL DEFAULT NULL COMMENT '对应用户唯一id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1533824747383656452 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_addr
-- ----------------------------
INSERT INTO `sys_user_addr` VALUES (1, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/codeing.zip', 1);
INSERT INTO `sys_user_addr` VALUES (4, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/codeing.zip', 1524762184922480645);
INSERT INTO `sys_user_addr` VALUES (1533824747383656451, 'https://kamisora-bucker-1.oss-cn-hangzhou.aliyuncs.com/2022/codeing.zip', 1533824747383656450);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `role_id` bigint NOT NULL DEFAULT 0 COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;
