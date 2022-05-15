CREATE DATABASE /*!32312 IF NOT EXISTS */`shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `shop`;

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu`
(
    `id`          bigint(20)  NOT NULL AUTO_INCREMENT,
    `menu_name`   varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '菜单名',
    `path`        varchar(200)         DEFAULT NULL COMMENT '路由地址',
    `component`   varchar(255)         DEFAULT NULL COMMENT '组件路径',
    `visible`     char(1)              DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
    `status`      char(1)              DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
    `perms`       varchar(100)         DEFAULT NULL COMMENT '权限标识',
    `icon`        varchar(100)         DEFAULT '#' COMMENT '菜单图标',
    `create_by`   bigint(20)           DEFAULT NULL,
    `create_time` datetime             DEFAULT NULL,
    `update_by`   bigint(20)           DEFAULT NULL,
    `update_time` datetime             DEFAULT NULL,
    `del_flag`    int(11)              DEFAULT '0' COMMENT '是否删除（0未删除 1已删除）',
    `remark`      varchar(500)         DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4 COMMENT ='菜单表';

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `name`        varchar(128) DEFAULT NULL,
    `role_key`    varchar(100) DEFAULT NULL COMMENT '角色权限字符串',
    `status`      char(1)      DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
    `del_flag`    int(1)       DEFAULT '0' COMMENT 'del_flag',
    `create_by`   bigint(200)  DEFAULT NULL,
    `create_time` datetime     DEFAULT NULL,
    `update_by`   bigint(200)  DEFAULT NULL,
    `update_time` datetime     DEFAULT NULL,
    `remark`      varchar(500) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4 COMMENT ='角色表';

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu`
(
    `role_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `menu_id` bigint(200) NOT NULL DEFAULT '0' COMMENT '菜单id',
    PRIMARY KEY (`role_id`, `menu_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4;

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user`
(
    `id`          bigint(20)  NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_name`   varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
    `nick_name`   varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
    `password`    varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
    `status`      char(1)              DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
    `email`       varchar(64)          DEFAULT NULL COMMENT '邮箱',
    `phonenumber` varchar(32)          DEFAULT NULL COMMENT '手机号',
    `sex`         char(1)              DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
    `avatar`      varchar(128)         DEFAULT NULL COMMENT '头像',
    `user_type`   char(1)     NOT NULL DEFAULT '1' COMMENT '用户类型（0管理员，1普通用户）',
    `create_by`   bigint(20)           DEFAULT NULL COMMENT '创建人的用户id',
    `create_time` datetime             DEFAULT NULL COMMENT '创建时间',
    `update_by`   bigint(20)           DEFAULT NULL COMMENT '更新人',
    `update_time` datetime             DEFAULT NULL COMMENT '更新时间',
    `del_flag`    int(11)              DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4 COMMENT ='用户表';

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role`
(
    `user_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT '用户id',
    `role_id` bigint(200) NOT NULL DEFAULT '0' COMMENT '角色id',
    PRIMARY KEY (`user_id`, `role_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE `shop`.`shop_classification`
(
    `id`             bigint                                                  NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
    `classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品分类名称',
    PRIMARY KEY (`id`)
);

CREATE TABLE `shop`.`shop_recommended`
(
    `id`         bigint         NOT NULL AUTO_INCREMENT COMMENT '推荐商品id',
    `shop_name`  varchar(255)   NULL COMMENT '商品名称',
    `photo_addr` varchar(255)   NULL COMMENT '商品图片地址',
    `price`      decimal(10, 2) NULL COMMENT '价格',
    PRIMARY KEY (`id`)
);

CREATE TABLE `shop`.`shop_noticeboard`
(
    `id`     bigint       NOT NULL AUTO_INCREMENT COMMENT '公示表id',
    `notice` varchar(255) NULL COMMENT '公式文字',
    PRIMARY KEY (`id`)
);


CREATE TABLE `shop`.`shop_advertising`
(
    `id`             bigint       NOT NULL COMMENT '广告图片id',
    `advertise_addr` varchar(255) NULL COMMENT '广告图片位置',
    PRIMARY KEY (`id`)
);

CREATE TABLE `shop`.`shop_commodities`
(
    `id`              bigint         NOT NULL COMMENT '单个详情商品id',
    `label`           varchar(255)   NULL COMMENT '商品标签',
    `shop_name`       varchar(255)   NULL COMMENT '商品名称+简介',
    `price`           decimal(10, 2) NULL COMMENT '价格',
    `discount_notice` varchar(255)   NULL COMMENT '优惠信息',
    `addr`            varchar(255)   NULL COMMENT '配送地址',
    PRIMARY KEY (`id`)
);

ALTER TABLE `shop`.`shop_recommended`
    ADD COLUMN `mark` int NULL COMMENT '评论' AFTER `price`,
    ADD COLUMN `sell` int NULL COMMENT '月销量' AFTER `mark`;


ALTER TABLE `shop`.`shop_commodities`
    ADD COLUMN `mark` int NULL COMMENT '评论' AFTER `price`,
    ADD COLUMN `sell` int NULL COMMENT '月销量' AFTER `mark`;

ALTER TABLE `shop`.`shop_classification`
    ADD COLUMN `icon` varchar(255) NULL COMMENT '商品图标element' AFTER `classification_name`;


ALTER TABLE `shop`.`shop_commodities`
    MODIFY COLUMN `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品标签' AFTER `id`,
    MODIFY COLUMN `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称+简介' AFTER `label`,
    MODIFY COLUMN `price` decimal(10, 2) NOT NULL COMMENT '价格' AFTER `shop_name`,
    MODIFY COLUMN `addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配送地址' AFTER `discount_notice`,
    MODIFY COLUMN `mark` int NULL COMMENT '评论' AFTER `addr`,
    MODIFY COLUMN `sell` int NULL COMMENT '月销量' AFTER `mark`;
ALTER TABLE `shop`.`shop_commodities`
    MODIFY COLUMN `id` bigint NOT NULL AUTO_INCREMENT COMMENT '单个详情商品id' FIRST;

ALTER TABLE `shop`.`shop_commodities`
    ADD COLUMN `main_photo` varchar(255) NOT NULL COMMENT '主显示图片' AFTER `sell`,
    ADD COLUMN `photo1`     varchar(255) NULL COMMENT '副照片1' AFTER `main_photo`,
    ADD COLUMN `photo2`     varchar(255) NULL COMMENT '副照片2' AFTER `photo1`,
    ADD COLUMN `photo3`     varchar(255) NULL COMMENT '副照片3' AFTER `photo2`,
    ADD COLUMN `photo4`     varchar(255) NULL COMMENT '副照片4' AFTER `photo3`;