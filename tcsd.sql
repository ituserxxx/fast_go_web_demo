/*
 Navicat Premium Data Transfer

 Source Server         : xt
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 1.14.151.250:3306
 Source Schema         : tcsd

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 28/12/2021 10:21:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tc_post
-- ----------------------------
DROP TABLE IF EXISTS `tc_post`;
CREATE TABLE `tc_post`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `uid` int(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `view_sum` int(0) NULL DEFAULT 0 COMMENT '查看次数',
  `is_anonymous` tinyint(0) NULL DEFAULT 1 COMMENT '是否匿名，默认：1-开放，2-匿名',
  `love_sum` int(0) NULL DEFAULT 0 COMMENT '点赞次数',
  `is_square` tinyint(0) NULL DEFAULT 1 COMMENT '是否投放到广场，默认：1-是，2-否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tc_post
-- ----------------------------
INSERT INTO `tc_post` VALUES (1, 3, '情浓时，海誓山盟;情淡时，形同陌路', '2021-10-25 17:19:18', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (2, 3, '如果一个人影响到了你的情绪，你的焦点应该放在控制自己的情绪上，而不是影响你情绪的人身上。只有这样，才能真正自信起来。', '2021-10-25 17:20:49', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (3, 3, '有的节日都不是为了礼物，而是提醒大家别忘了爱与被爱', '2021-10-25 17:20:51', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (4, 3, '这城市风很大，孤独的人总是晚回家', '2021-10-25 17:20:53', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (5, 3, '那些不经意想起的，总是记忆里最深刻的', '2021-10-25 17:20:54', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (6, 3, '带着面具时你说我虚伪，摘下面具你问我是谁。', '2021-10-25 17:20:57', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (7, 3, '我们都生活在阴沟里，但仍有人仰望星空。', '2021-10-25 17:20:59', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (8, 3, '人的一生注定会遇到两个人，一个惊艳了时光，一个温柔了岁月。', '2021-10-25 17:21:03', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (9, 3, '愿我如星君如月，夜夜流光相皎洁', '2021-10-25 17:21:05', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (10, 3, '喜欢你的眼，里面有我的脸。', '2021-10-25 17:21:10', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (11, 3, '等你跟自己和解了，对的人自然就出现了。你连跟自己都相处不下去，世上便无对的人。', '2021-10-25 17:21:14', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (12, 3, '友情是积累的，爱情是突然的', '2021-10-25 17:21:17', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (13, 3, '就这样与你告别，借万里青山，以之为隔，世世不见。　', '2021-10-25 17:21:20', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (14, 3, '别跟三观不一致的人争执，别向不关心你的人诉苦，别对不喜欢自己的人讨好，真的没有必要。', '2021-10-25 17:23:59', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (15, 3, '因为没有退路，所以义无反顾。', '2021-10-25 17:25:18', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (16, 3, '我们学会了告别，却低估了思念', '2021-10-25 17:27:14', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (17, 3, '别急，会有始料不及的运气，会有突如其来的欢喜。', '2021-10-25 17:27:37', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (18, 3, '有时候，不善于表达的人挺吃亏的，付出多，用情深，却没人说你好。', '2021-10-25 17:28:02', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (19, 3, '得不到的总是挂念，共朝夕的总是厌倦　', '2021-10-25 17:28:48', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (20, 3, '本就是匆匆过客，又何必耿耿于怀。　', '2021-10-25 17:28:59', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (21, 3, '有很多事情你当时想不通，别着急，过一段时间你再想，就想不起来了。', '2021-10-25 17:32:35', 0, 1, 3, 1);
INSERT INTO `tc_post` VALUES (93, 3, '一个阳光灿烂的早晨，一位有钱的富二代穿着他的公主鞋小心翼翼的走在马路上，而一个平凡的小商人正在地摊上买钻石项链，富二代看中了一款5000元的项链，正要付钱时，脚下的公主鞋和商人的布鞋开始争吵了。公主鞋说；布鞋老兄，你长得这么难看，真给我们鞋祖宗丢脸。布鞋不理会他。接着就慢慢离开了。过了3个月后，主人的公主鞋身上亮片全掉了，公主鞋伤心极了。布鞋见了，安慰她说美丽并不只是一种外表，更是一种心态，渐渐的，布鞋和公主鞋成了好朋友，通过这一篇童话故事，让我懂得了，骄傲使人落后，谦虚使人进步。', '2021-12-27 17:34:00', 0, 1, 3, 1);
INSERT INTO `tc_post` VALUES (94, 3, '身体是我们自己的，身体好才有未来，身体坏了，幸福的基础也就随之倒塌了。 年轻是好啊，但是不能挥霍年轻的资本。\n对于年轻人来说熬夜、刷剧、吃外卖应该是比较普遍存在的事情，当年我们在大学里学时这样过来的。 \n烧烤是通过烟熏、高温烤制而成，肉与炭接触时容易产生致癌物质苯并芘，它是高活性间接致癌物质，当这种物质在体内达到一定量时，会对肠胃、肝脏及胰腺造成损害，容易导致胃 癌、肝 癌及胰腺癌。\n 所以上面可以看出，两者单一行为都可以引发癌症的发生更不要说两者结合了，从现在开始，我们要早点睡觉，管好自己的嘴巴。 幸福首先是我们有一个好身体，你认为呢？', '2021-12-27 17:40:56', 0, 1, 2, 1);
INSERT INTO `tc_post` VALUES (95, 3, '身体是我们自己的，身体好才有未来，身体坏了，幸福的基础也就随之倒塌了。 年轻是好啊，但是不能挥霍年轻的资本。\n对于年轻人来说熬夜、刷剧、吃外卖应该是比较普遍存在的事情，当年我们在大学里学时这样过来的。 \n烧烤是通过烟熏、高温烤制而成，肉与炭接触时容易产生致癌物质苯并芘，它是高活性间接致癌物质，当这种物质在体内达到一定量时，会对肠胃、肝脏及胰腺造成损害，容易导致胃 癌、肝 癌及胰腺癌。\n 所以上面可以看出，两者单一行为都可以引发癌症的发生更不要说两者结合了，从现在开始，我们要早点睡觉，管好自己的嘴巴。 幸福首先是我们有一个好身体，你认为呢？', '2021-12-27 17:40:57', 0, 1, 3, 1);
INSERT INTO `tc_post` VALUES (96, 3, '阿斯蒂芬', '2021-12-27 18:28:52', 0, 1, 3, 1);
INSERT INTO `tc_post` VALUES (97, 3, '树洞', '2021-12-28 09:42:45', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (98, 12, '开始你的表演', '2021-12-28 09:45:18', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (99, 12, '开始你的表演', '2021-12-28 09:45:18', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (100, 13, '阿斯蒂芬', '2021-12-28 09:45:31', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (101, 13, '阿斯蒂芬', '2021-12-28 09:45:40', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (102, 14, '啥地方', '2021-12-28 09:45:59', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (103, 12, '你大爷', '2021-12-28 09:49:14', 0, 1, 0, 1);
INSERT INTO `tc_post` VALUES (104, 14, '阿斯蒂芬', '2021-12-28 10:08:16', 0, 1, 0, 1);

-- ----------------------------
-- Table structure for tc_post_love
-- ----------------------------
DROP TABLE IF EXISTS `tc_post_love`;
CREATE TABLE `tc_post_love`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `post_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tc_post_love
-- ----------------------------
INSERT INTO `tc_post_love` VALUES (7, 21, 3, '2021-12-27 17:06:47');
INSERT INTO `tc_post_love` VALUES (9, 93, 3, '2021-12-27 17:34:16');
INSERT INTO `tc_post_love` VALUES (10, 95, 3, '2021-12-27 18:29:02');
INSERT INTO `tc_post_love` VALUES (11, 96, 3, '2021-12-27 18:31:44');
INSERT INTO `tc_post_love` VALUES (12, 96, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (13, 95, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (14, 94, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (15, 93, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (16, 21, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (17, 19, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (18, 20, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (19, 18, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (20, 17, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (21, 16, 9, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (22, 96, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (23, 95, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (24, 94, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (25, 93, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (26, 21, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (27, 20, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (28, 19, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (29, 18, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (30, 17, 8, '2021-12-27 18:39:28');
INSERT INTO `tc_post_love` VALUES (31, 16, 8, '2021-12-27 18:39:28');

-- ----------------------------
-- Table structure for tc_user
-- ----------------------------
DROP TABLE IF EXISTS `tc_user`;
CREATE TABLE `tc_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unionid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` tinyint(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  `session_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` datetime(0) NULL DEFAULT NULL,
  `post_sum` int(0) NULL DEFAULT 0,
  `is_anonymous` tinyint(0) NULL DEFAULT NULL COMMENT '是否匿名，默认：1-开放，2-匿名',
  `is_square` tinyint(0) NULL DEFAULT NULL COMMENT '是否投放到广场，默认：1-是，2-否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tc_user
-- ----------------------------
INSERT INTO `tc_user` VALUES (1, NULL, NULL, NULL, 'RIFYDYDTKKLC', NULL, NULL, '2021-10-25 16:27:46', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (2, NULL, NULL, NULL, 'ooSyt5IN9ruOUKkMqMDG-L8EddYk', NULL, NULL, '2021-10-25 16:43:31', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (3, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/vlBrF1UadszIEGzzePcicuDg2Vic0VdokPiaq7QaSPR5PicafOJLG0BLW8icJOmpt0ey792I4vhRKJzPNOU7sbJFayg/132', '巨石糖果山X³', 'ooSyt5JHV16xP2KuuKXSvL_7Y_941', NULL, NULL, '2021-10-26 14:38:54', 'W0mPUGqhnty6k4/0MCce7A==', '2021-12-28 09:42:41', 13, 1, 1);
INSERT INTO `tc_user` VALUES (7, NULL, NULL, NULL, 'ooSyt5JHV16xP2KuuKXSvL_7Y_94111', NULL, NULL, '2021-12-24 17:28:17', 'uKCCwpDoA7ABv5m6FY/+ww==', '2021-12-27 16:13:08', 3, 1, 1);
INSERT INTO `tc_user` VALUES (8, NULL, NULL, NULL, 'ooSyt5IXQNCPDDKuQvUyH_TlKZd0', NULL, NULL, '2021-12-27 18:39:25', NULL, '2021-12-27 18:39:25', 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (9, NULL, NULL, NULL, 'ooSyt5ICZNxEv7Wj2YwJ2MczvXic', NULL, NULL, '2021-12-27 18:39:25', NULL, '2021-12-27 18:39:25', 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (10, NULL, NULL, NULL, 'ooSyt5MpSA6uagLPv3d2agcW1OAo', NULL, NULL, '2021-12-27 19:15:40', NULL, '2021-12-27 19:15:40', 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (11, NULL, NULL, NULL, 'ooSyt5DReE94zXjgl_45JTkagkIY', NULL, NULL, '2021-12-27 19:16:11', NULL, '2021-12-27 19:16:11', 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (12, NULL, NULL, NULL, 'ooSyt5Kc_kr2fPI2fr7f18seR2BY', NULL, NULL, '2021-12-28 09:44:27', 'fXOpRRz024llD2hKle9l6A==', '2021-12-28 09:49:34', 3, 1, 1);
INSERT INTO `tc_user` VALUES (13, NULL, NULL, NULL, 'ooSyt5JHV16xP2KuuKXSvL_7Y_9412', NULL, NULL, '2021-12-28 09:44:40', 'RV5I8wYYpcxwuz8RI8i++A==', '2021-12-28 09:45:39', 2, 1, 1);
INSERT INTO `tc_user` VALUES (14, NULL, 'https://thirdwx.qlogo.cn/mmopen/vi_32/vlBrF1UadszIEGzzePcicuDg2Vic0VdokPiaq7QaSPR5PicafOJLG0BLW8icJOmpt0ey792I4vhRKJzPNOU7sbJFayg/132', '巨石糖果山X³', 'ooSyt5JHV16xP2KuuKXSvL_7Y_94', NULL, NULL, '2021-12-28 09:45:57', 'NYQaWFjrXHLTgHTAm4gwTQ==', '2021-12-28 10:19:13', 2, NULL, NULL);
INSERT INTO `tc_user` VALUES (15, NULL, NULL, NULL, 'ooSyt5H0gaZzpA7Zl2C2HUM7OpmY', NULL, NULL, '2021-12-28 09:49:10', NULL, '2021-12-28 09:49:10', 0, NULL, NULL);
INSERT INTO `tc_user` VALUES (16, NULL, NULL, NULL, 'ooSyt5HWWjNm7Xg5Phit5HTQSB00', NULL, NULL, '2021-12-28 09:49:10', NULL, '2021-12-28 09:49:10', 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
