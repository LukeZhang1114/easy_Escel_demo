/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.101.156
 Source Server Type    : MySQL
 Source Server Version : 50739
 Source Host           : 192.168.101.156:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50739
 File Encoding         : 65001

 Date: 08/03/2024 17:44:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for etao_user
-- ----------------------------
DROP TABLE IF EXISTS `etao_user`;
CREATE TABLE `etao_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID UUID',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录名 邮箱地址 ',
  `nice_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户显示名称 昵称',
  `passward` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID,对应相关权限',
  `delete_state` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态 0未删除 1已删除',
  `creat_data` datetime NULL DEFAULT NULL COMMENT '用户创建时间',
  `update_data` datetime NULL DEFAULT NULL COMMENT '用户更新时间',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别 0男 1女 3未知',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of etao_user
-- ----------------------------
INSERT INTO `etao_user` VALUES (3, 'test@163.com', '111', 'asdasd', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:23', 0);
INSERT INTO `etao_user` VALUES (4, 'test@163.com', '111', 'dasd', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (5, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (6, 'test@163.com', '111', 'asdsa', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (7, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (8, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (9, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (10, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (11, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (12, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (13, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (14, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (15, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (16, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (17, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (18, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (19, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (20, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (21, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (22, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (23, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (24, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (25, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (26, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (27, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (28, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (29, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (30, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (31, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (32, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (33, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (34, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (35, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (36, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (37, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (38, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (39, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (40, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (41, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (42, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (43, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (44, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (45, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (46, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (47, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (48, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 0);
INSERT INTO `etao_user` VALUES (49, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (50, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (51, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (52, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (53, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (54, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (55, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (56, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (57, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (58, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (59, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (60, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (61, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (62, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (63, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (64, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (65, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (66, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (67, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (68, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (69, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (70, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (71, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (72, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (73, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (74, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (75, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (76, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (77, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (78, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (79, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (80, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (81, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (82, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (83, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (84, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (85, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (86, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (87, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (88, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (89, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (90, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (91, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (92, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (93, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (94, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (95, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (96, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (97, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (98, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (99, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (100, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (101, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (102, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (103, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (104, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (105, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (106, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (107, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (108, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (109, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (110, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:41:29', 1);
INSERT INTO `etao_user` VALUES (111, 'test@163.com', '111', 'asdasd', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (112, 'test@163.com', '111', 'dasd', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (113, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (114, 'test@163.com', '111', 'asdsa', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (115, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (116, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (117, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (118, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (119, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (120, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (121, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (122, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (123, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (124, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (125, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (126, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (127, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (128, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (129, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (130, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (131, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (132, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (133, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (134, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (135, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (136, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (137, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (138, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (139, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (140, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (141, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (142, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (143, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (144, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (145, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (146, 'test@163.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (147, 'test@163.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (148, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (149, 'test@163.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (150, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (151, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (152, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (153, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (154, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (155, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (156, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 0);
INSERT INTO `etao_user` VALUES (157, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (158, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (159, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (160, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (161, 'kaiosdkas@qq.com', '111', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (162, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (163, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (164, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (165, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (166, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (167, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (168, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (169, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (170, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (171, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (172, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (173, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (174, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (175, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (176, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (177, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (178, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (179, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (180, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (181, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (182, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (183, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (184, 'kaiosdkas@qq.com', '222', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (185, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (186, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (187, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (188, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (189, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (190, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (191, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (192, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (193, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (194, 'kaiosdkas@qq.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (195, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (196, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (197, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (198, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (199, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (200, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (201, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (202, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (203, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (204, '8266288asd45@gmail.com', 'asdasfasfasfas', 'dasdas', 1, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (205, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (206, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (207, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (208, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (209, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (210, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (211, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (212, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (213, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (214, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (215, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2024-01-15 15:16:30', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (216, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (217, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-12-12 13:14:33', '2024-03-08 15:42:33', 1);
INSERT INTO `etao_user` VALUES (218, '8266288asd45@gmail.com', 'asdas5d', 'dasdas', 0, 0, '2023-11-01 03:04:33', '2024-03-08 15:42:33', 1);

SET FOREIGN_KEY_CHECKS = 1;
