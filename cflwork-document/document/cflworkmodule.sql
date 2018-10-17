/*
Navicat MySQL Data Transfer

Source Server         : 39.106.119.1
Source Server Version : 50638
Source Host           : 39.106.119.1:3306
Source Database       : hotelmanager

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-10-17 18:01:10
*/
create datebase cflworkmodule;
use cflworkmodule;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for house_fact_pay
-- ----------------------------
DROP TABLE IF EXISTS `house_fact_pay`;
CREATE TABLE `house_fact_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '房租缴纳费用',
  `house_rent_id` bigint(20) NOT NULL COMMENT '房租id',
  `pay_money` double NOT NULL COMMENT '支付金额',
  `create_time` datetime NOT NULL COMMENT '支付时间',
  `status` int(11) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house_fact_pay
-- ----------------------------

-- ----------------------------
-- Table structure for t_businessman
-- ----------------------------
DROP TABLE IF EXISTS `t_businessman`;
CREATE TABLE `t_businessman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `tel` varchar(20) DEFAULT NULL COMMENT '酒店联系方式',
  `nickname` varchar(20) DEFAULT NULL COMMENT '微信名称',
  `hotel_sin_name` varchar(6) DEFAULT NULL COMMENT '酒店简称',
  `hotel_name` varchar(255) DEFAULT NULL COMMENT '酒店全称',
  `wxopenid` varchar(50) DEFAULT NULL COMMENT '微信的openid',
  `remark` varchar(2000) DEFAULT NULL COMMENT '酒店的签名',
  `is_active` tinyint(4) DEFAULT NULL COMMENT '酒店状态',
  `create_time` datetime DEFAULT NULL COMMENT '酒店创建时间',
  `type` int(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `face_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='商户基本信息';

-- ----------------------------
-- Records of t_businessman
-- ----------------------------
INSERT INTO `t_businessman` VALUES ('41', 'REYLAN', '15563906390', '0532-85696999', null, '瑞蓝公寓', '瑞蓝海景度假公寓', null, '', '0', '2018-03-26 19:34:25', '0', '1c63129ae9db9c60c3e8aa94d3e00495', '/upload/9948127549772885.jpg');
INSERT INTO `t_businessman` VALUES ('43', 'Adimin', '13061324160', '13061324160', null, '客服管理', '公寓联盟平台管理员', 'oRTN8wojpwGQ3-tAW0u9V2tpPcm4', '', '0', '2018-03-26 19:35:22', '0', null, '/upload/10009611984376658.jpg');
INSERT INTO `t_businessman` VALUES ('44', '絮落锦乡', null, null, null, '未填写', '未填写', 'oRTN8woiP_lrVfpwY_p6u6k-Cqcc', null, '1', '2018-03-26 20:25:49', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/oI2sGr1W8ZnlmvSGu89ia7NMKqx5J1ib2NO0QdRIP2ShhiazlHb6icibMXNDX3iap1c5tN6e3kRZp8fqFgMn7jibHwurg/132');
INSERT INTO `t_businessman` VALUES ('45', '17663982567', '17663982567', '13356895653', null, '记忆旅行', '青岛记忆旅行精品度假公寓', null, '', '0', '2018-03-26 21:57:30', '0', 'b0ae3aceee0c03c86f04a072544d44f0', '/upload/9941705988834954.jpeg');
INSERT INTO `t_businessman` VALUES ('47', '18661750395', '18661750395', '82855333', null, '聆海铂月', '青岛聆海铂悦海景度假公寓', null, '', '0', '2018-03-26 22:17:07', '0', '34e33dacb7dc218eeea369bf71b528de', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('48', '韩培', null, null, null, '未填写', '未填写', 'oRTN8wmZFuq67X6ja8x2aLIxF0g0', null, '0', '2018-03-27 15:34:00', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJPpziaqOoIpGp1ZZQ50pmY6xBLnhkcwhicvuMHbDYGVkSxYxY5gsNkIECEpLcsqk7lz2T2zse54bgA/132');
INSERT INTO `t_businessman` VALUES ('49', '孙晓黎', null, null, null, '未填写', '未填写', 'oRTN8wmtsS7N89W0horMuU3FT9vs', null, '0', '2018-03-27 15:35:29', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLHtezkm2QCpRxiacPEu2fKLaaVvz6L25JOEoTow8FbwkvVfecKxF0lTOaQz0KGwciag4PEsWpicnJTw/132');
INSERT INTO `t_businessman` VALUES ('50', '15732871261', '15732871261', '0532-67757091', null, '四季精选酒店', '四季精选酒店', null, '', '0', '2018-03-27 15:36:28', '0', '77b0a80a79f26471ef47d18d2416dc16', '/upload/10005978708724801.jpg');
INSERT INTO `t_businessman` VALUES ('51', '普罗米修斯', null, null, null, '未填写', '未填写', 'oRTN8wr4Nq49899-hcDPj8qDDkGc', null, '0', '2018-03-27 15:36:56', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLAWPtxUgRnc8wWaUJG88eXZwC98l73CBHdKrqNu3OQ1XkvsLq8mj9dq11EfdBerPGhWeWWRYib7mw/132');
INSERT INTO `t_businessman` VALUES ('52', '13964291753', '13964291753', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 15:37:20', '0', '8fd6b67b946d904eff14366f0cf2bab4', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('53', '不扯淡的stark', null, null, null, '未填写', '未填写', 'oRTN8wnP8y2MDnfIEehlsZqFvRxI', null, '0', '2018-03-27 15:38:05', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLrIcw03ibKkklcPWyes827YRCQ3nCQvB0RHMicU7Tw41604Z2V0mwEhDib3yr5PreaOcibX60T7iaJwlw/132');
INSERT INTO `t_businessman` VALUES ('54', '15762281999', '15762281999', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 15:38:40', '0', '756acbc9fa35ba3a6376373fde52fd31', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('55', '13905324650', '13905324650', '13165029811', null, '住友公寓', '未填写', null, '', '0', '2018-03-27 15:38:47', '0', 'cea625d00aeea23e71f5f48a28c4bfc0', '/upload/10005919610716638.jpg');
INSERT INTO `t_businessman` VALUES ('56', '13964829703', '13964829703', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 15:39:10', '0', '3e007ee2b1780c2d1414e7d110c75cfb', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('57', '青岛老李', null, null, null, '未填写', '未填写', 'oRTN8wsmCnadM8NER_CFB17gali8', null, '0', '2018-03-27 15:41:09', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIPsbt7BibERGwst3ibiaFqORibu9bsuZ0ZuD5ZB7IZWcFibu1K0ObnaQ0LBg50uJqybicEneh065WlI8HA/132');
INSERT INTO `t_businessman` VALUES ('58', '18660283586', '18660283586', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 15:46:02', '0', '68b86080f99521ab4470ed9d7b021abe', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('59', '13255555858', '13255555858', '15666423221', null, '梦途公寓', '梦途海景度假公寓', null, '', '0', '2018-03-27 15:52:49', '0', '7e58af19094ad172ccf68be33bf7b09c', '/upload/10006513697577910.jpeg');
INSERT INTO `t_businessman` VALUES ('60', '擎', null, null, null, '未填写', '未填写', 'oRTN8wiHXT6sAlPULa2PJyF6l4c0', null, '0', '2018-03-27 15:53:30', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eogrnzaYfkyfwQeXTJqQ9Qm5QpYMAOu4HT0yibtwR7cvIPia5F9SMqwaUv22yfPbR0FzRWhlVAC3SiaA/132');
INSERT INTO `t_businessman` VALUES ('61', '18210153568', '18210153568', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 15:56:23', '0', 'cb657a369e1338c686a9c513a5ed269f', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('62', '李志科', '17663911222', '82880088', null, '四季海岸公寓', '青岛四季海岸海景度假公寓', null, '', '0', '2018-03-27 16:08:10', '0', 'de1310a03387db5df4d4f44917ca5a6f', '/upload/10019675399281981.jpeg');
INSERT INTO `t_businessman` VALUES ('63', '18253201000', '18253201000', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 17:14:03', '0', '4c30f3d857728c2ba265484e3ffa6dc8', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('64', 'K.', null, null, null, '未填写', '未填写', 'oRTN8wutOSaK3PSa9etYLlx1HrJU', null, '0', '2018-03-27 17:14:38', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ersiacCECZbGgVXQM5RFEhFMdicWrVcyQyGsaC9VQUBcJibsGeX9UKmYfL60yLJtwqy2DGMvpY01yicOQ/132');
INSERT INTO `t_businessman` VALUES ('65', '李彦', '15606484555', '15606484555', null, '瑞奇', '未填写', 'oRTN8wi-VxZUI2_fmIn63cGSf_88', '', '0', '2018-03-27 17:34:01', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJIeia5AcUvc17zxovJPCQibGpHOG0GVzJ0pib6wMusekGzHelqNkDU1ucTDNj7YgicgA1eZzyvg9wZVA/132');
INSERT INTO `t_businessman` VALUES ('66', '13255588997', '13255588997', '13255588997', null, '铂悦公寓', '青岛铂悦海景度假公寓', null, '', '0', '2018-03-27 17:41:29', '0', '1c63129ae9db9c60c3e8aa94d3e00495', '/upload/10012835107243532.jpeg');
INSERT INTO `t_businessman` VALUES ('67', '13953205332', '13953205332', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 17:50:54', '0', '5cb50eae6681f0e786cac913b6836c84', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('68', '13361235830', '13361235830', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 18:15:36', '0', '670b14728ad9902aecba32e22fa4f6bd', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('69', '18953635456', '18953635456', null, null, '未填写', '未填写', null, null, '0', '2018-03-27 18:21:28', '0', 'e2fc714c4727ee9395f324cd2e7f331f', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('70', '15315323788', '15315323788', '18561738787', null, '海蓝阳光', '未填写', null, '', '0', '2018-03-27 18:29:16', '0', '2d025cc2431cef69febd02ebd73090fc', '/upload/face.gif');
INSERT INTO `t_businessman` VALUES ('71', '13256884777', '13256884777', '13256884777', null, '中联邮海栈桥', '中联邮海栈桥', null, '', '0', '2018-03-27 18:29:42', '0', 'caf14e0bb0abf08f2389aae6008ef254', '/upload/11130499517217166.jpg');
INSERT INTO `t_businessman` VALUES ('72', '海蓝阳光海景度假公寓', null, null, null, '未填写', '未填写', 'oRTN8wry7WG6rY2k0QE_tbv8sE4c', null, '0', '2018-03-27 18:30:14', '0', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI9B4YicCEXEBXPXRPL8y1904e4Zvk7keYxNY0FTxI34GXrC0ib5icsk2vpZkh80RGg4upHUEGvkP72A/132');

-- ----------------------------
-- Table structure for t_cash_accounts
-- ----------------------------
DROP TABLE IF EXISTS `t_cash_accounts`;
CREATE TABLE `t_cash_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `account_type` tinyint(4) NOT NULL,
  `account_time` datetime NOT NULL,
  `account_time_end` datetime DEFAULT NULL,
  `total_pay` decimal(18,2) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_cash` tinyint(4) DEFAULT NULL,
  `cash_status` tinyint(4) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `hander` bigint(20) DEFAULT NULL,
  `day_pay` double(255,0) DEFAULT NULL,
  `pay_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `subject_id` (`subject_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='现金流水表';

-- ----------------------------
-- Records of t_cash_accounts
-- ----------------------------
INSERT INTO `t_cash_accounts` VALUES ('1', '1', '2', '0', '2017-12-03 22:56:17', '2018-02-01 18:47:34', '500.00', '1', '采购牙刷', '采购牙刷', '2017-12-03 22:56:56', '0', '1', '1', '审核通过', '7', '30', '1');
INSERT INTO `t_cash_accounts` VALUES ('2', '1', '2', '0', '2017-12-05 09:25:09', '2018-02-01 18:47:34', '900.00', '1', '牙刷进货', '暂无批注', '2017-12-05 21:27:48', '1', '0', '2', '不通过', '6', '30', '2');
INSERT INTO `t_cash_accounts` VALUES ('3', '1', '-1', '1', '2017-12-05 00:00:00', '2018-02-01 23:59:59', '800.00', '2', '被套支出', '账单无误', '2017-12-05 21:33:25', '0', '1', '1', '审核通过', '7', '14', '3');
INSERT INTO `t_cash_accounts` VALUES ('4', '1', '-1', '1', '2018-01-04 18:40:57', '2018-02-01 18:47:34', '3000.00', '4', '房租缴纳', '暂无批注', '2018-01-04 18:44:21', '1', '0', '0', '未审核', null, '30', '4');
INSERT INTO `t_cash_accounts` VALUES ('6', '1', '4', '1', '2018-01-01 00:00:00', '2018-01-31 23:59:59', '3000.00', '1', '牙刷支出总费用', '暂无批注', '2018-01-04 18:59:54', '0', '0', '0', '未审核', null, '100', '2');
INSERT INTO `t_cash_accounts` VALUES ('7', '1', '4', '1', '2018-01-01 00:00:00', '2018-01-31 23:59:59', '3000.00', '2', '被套支出', '很好喔', '2018-01-04 19:02:36', '0', '1', '1', '', '6', '100', '3');
INSERT INTO `t_cash_accounts` VALUES ('8', '1', '-1', '0', '2018-01-17 00:00:00', '2018-02-15 23:59:59', '8000.00', '1', '收入', '暂无批注', '2018-01-29 17:11:19', '0', '1', '0', '未审核', null, '276', '1');
INSERT INTO `t_cash_accounts` VALUES ('9', '1', '-1', '0', '2018-01-16 00:00:00', '2018-02-21 23:59:59', '90.00', '2', '收入', '暂无批注', '2018-01-29 17:29:40', '0', '1', '0', '未审核', null, '2', '1');
INSERT INTO `t_cash_accounts` VALUES ('10', '1', '-1', '0', '2018-01-01 00:00:00', '2018-01-31 23:59:59', '90.00', '2', '收入', '收入无误', '2018-01-29 17:43:21', '0', '0', '2', '不通过', '6', '3', '1');
INSERT INTO `t_cash_accounts` VALUES ('11', '1', '2', '0', '2018-01-17 00:00:00', '2018-01-31 23:59:59', '800.00', '2', '收入', '审核通过神核通过审核通过神核通过审核通过神核通过审核通过神核通过审核通过神核通过审核通过神核通过审核通过神核通过', '2018-01-29 23:04:26', '0', '1', '0', '未审核', null, '57', '1');
INSERT INTO `t_cash_accounts` VALUES ('12', '1', '4', '0', '2018-01-01 00:00:00', '2018-01-31 23:59:59', '820.00', '4', '房租收入', '暂无审核暂无审核暂无审核暂无审核暂无审核暂无审核暂无审核暂无审核', '2018-01-29 23:33:20', '0', '1', '1', '审核通过', '6', '27', '4');

-- ----------------------------
-- Table structure for t_cash_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_cash_subject`;
CREATE TABLE `t_cash_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='现金科目表';

-- ----------------------------
-- Records of t_cash_subject
-- ----------------------------
INSERT INTO `t_cash_subject` VALUES ('1', '牙刷', '牙刷', '2017-11-30 22:10:13', '1', '0');
INSERT INTO `t_cash_subject` VALUES ('2', '被套', '被套', '2017-11-30 22:16:34', '1', '0');
INSERT INTO `t_cash_subject` VALUES ('3', '押金', '押金', '2017-12-10 21:30:10', '1', '0');
INSERT INTO `t_cash_subject` VALUES ('4', '房费缴纳', '房费缴纳', '2017-12-10 21:30:23', '1', '0');

-- ----------------------------
-- Table structure for t_char
-- ----------------------------
DROP TABLE IF EXISTS `t_char`;
CREATE TABLE `t_char` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `businessman_id` bigint(20) DEFAULT NULL,
  `content` text,
  `is_active` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_char
-- ----------------------------
INSERT INTO `t_char` VALUES ('42', '43', '       大家好！欢迎来到【中联公寓同盟会】，我简单简述一下我们这个同盟会存在的意义，和同盟平台如何来帮助大家在一定程度上缓解提不起价格的中联魔咒问题，大家为什么总说价格底，归根到底是因为大家缺乏一个行业规则，咱们的订单可以说98％源自于OTA，大家都明白OTA客源大部分的选择习惯是同一个楼内价低者优先，这就驱使咱们永远都要跟底价OTA端口看齐，金牌特牌之类的端口，为了保住优势就要跟低价血拼，流量本来就不好的端口更要降价为了挣流量，最后导致在这种低价的环境中，一批流量较好的端口以迫于无奈的低价优先满房后，摇身一变成为了炒房投机者，他们会再以这种低价甚至更低的价格吞噬中联其他商家房源，目标是能赚点更好不能赚起码也保持OTA端口的流量优势，这是一种畸形的行业形态。\n         这种畸形的行业形态直接导致的问题有两点，第一、满房的只要感觉还能借到房就一定不提价，而空房的只要没满房也绝不敢提价。\n         第二、受第一条的影响中联这个市场没有价格曲线，什么叫价格曲线呢？我相信大家也会遇到过这样的尴尬情况，就是OTA上看看大家的价格都标到了一二百元甚至是300＋，再看看自己房态的订单价格百分之八九十以上都是几十块钱进的，或者更低的价格借给了别人，对吧？这叫什么事儿？按道理来说从七八十元到一二百元应该有个过程，而我们应该在这个过程中把房价平均拉开，不说是300＋吧，怎么这均价也要有个一百二三吧，总不至于均价不到100元吧，为什么呢？其原因就是我们刚才提到的第一条，有一部分人只要感觉我还能低价拿到房间绝对不提价，而另一部分人只要看到自己没满房就一定会低价把房子处理给同行，与此同时我们的信息又相对闭塞，我们不能像看股票一样及时了解到楼内的价格走势，你的信息大多还是来自与你走动比较频繁的商家，以及你自己在OTA上看到的外网卖价，结果是走动比较频繁的商家就是满了房也不调价的低价主导者，而你也就成为了低价主导者的帮凶，也可以说是无辜的牺牲品，如此往复当你突然发现自己没房了，而借房者也发现找你借不到房了，这才去把OTA价格标高，其不知为时已晚，明明可以提高价格的好时机已然错过，剩下的就是那几个残留房源待价而沽，沽好了发笔小横财沽不好砸手里，剩下的就是大家耳熟能详的一次又一次的，因为中联房价低而愤愤不平的呼声！\n        而正确的行业形态应该是怎样呢？我觉得应该是从两个方面来看待，第一种情况是客少房多的时候，这个时候价格低就对了，应该低大家七八十的外网标价属于正常现象，内部更低的价格借房也是可以理解的，市场嘛就应该这样不是吗？当然我觉得再低也应该先把账算明白，卖了就比空着强是不假，但前提是卖了要比停业挣多点才划算，咱们一味的为了卖出去而降价，最后算算还不如一千多块包出去，毕竟长包出去你除了房租外没有任何成本了，算一下一套房租金减去长包回款最多赔个千八百的，但是坚持低价卖房一个月下来一套房营业额也就是个两千多，算一算租金一扣已经负数，你还要再搭上人工、水电、物业、供暖、洗布草、消耗品、和你因为熬夜而日渐憔悴的身体等等，真的合得来吗？有人说你说错了，不单是为了钱重要的是为了做好OTA，那这个事儿我是这么看的，OTA流量做的好与不好主要是为了淡季能多进订单少赔点成本，而旺季OTA好坏并不明显，只要你开着房傻子都满房，所以你流量做得天好却卖不出能赚钱的价格，那就只能是恶性循环单越多赔越多。\n       第二种是客多房少的时候，这就有故事了，我们应该是随行就市逐渐把价格由低到高的提上来，在这个提价的过程中大家都多赚点钱，拉出价格曲线，而不是还像客少房多那样，玩了命的低价挣流量，最后导致低价满房后，才以直线形式提高价格，这个高价格已经没有任何意义了不是吗？\n         所以要解决这些事儿总要有个合理的办法，你要说大家都不要借房了各卖各的满了关房，这固然是个好办法，但真要各家做的到也是个不太现实的事儿，或者有人说可以限制外网售价不低于一定数额，我认为这是个不太合理的政策，举个例子同一个OTA平台就有流量好和流量不好的两种端口，如果限制了一个底价，那么我相信只要流量好的端口压在这个底线上，其他端口就很难进单，这时候就会出现一边倒的局面流量好的优先满房，然后又来我们上边提到的那一套，仍然坚持底价不提高然后以更低的价格吞噬空房的其他商家房源，而空房商家为了优先甩空自己房源，势必会相互压低出房价，要不了多久就会有坚持不下去的商家主动调低OTA价格，大家也必会竞相随从最后土崩瓦解。\n       我认为最好的办法不是限制外网卖价，而是大家共同建立一个可以互通信息的平台，制订一个可以随着行情随时变化的内部借房价格，这样一来大家以这个价格为基础，空房多的你OTA上随便卖，当你差不多快满的时候你肯定会调高价格因为你价格再低的话借不到房了，而借房的价格随着剩余房量越来越少也会越来越高，如此不管你是OTA卖了还是内部消化了都能拿到一个相对较高的价格。\n       但问题来了这个价格怎么定呢？谁来定？我觉得最好的办法不是某个人来定，而是大家伙各自根据自家房态情况来出价，然后我们以均价作为标准来执行，比如房量及交易价格的透明化，让每家都能随时了解到当前各家的库存量和出房价，这样空房多的可以报价低一点，空房少的可以报价高一点，随着空房越来越少这个均价也会越来越高，当然大家做到坚持均价交易的愿景虽然美好，但总会有个别不按套路出牌的事实存在，毕竟共产主义只是一个客观存在的梦而已，但我想就算是大家因为某些原因，促使不能做到按照均价有序交易，但只要大家把各自的价格报到明处，咱们做到出房价及库存量的透明化，那些空房比较多出价比较低的商家自然也会更快的减少空房量，而且其出房价也一定会参照各家价格制订，而不是原来那种由已满房的投机者来定价的方式，届时我相信他随着空房越来越少价格自然会提高，毕竟看着人家都卖的价格高自己也很羡慕，人又不是傻子非要便宜卖对吧，这样一来我们等于有了一个正常态的市场，碰上客多房少的情况咱们能快速的随行就市，价格水涨船高，碰上客少房多的时候也能及时给大家一个信息反馈，该降价降价争取更多流量，都说团结就是力量，这一点咱们北方人跟南方人相比差的太多，同样都是某一行业的聚集区，咱们看看人家福建卖茶叶的、看看温州搞皮鞋的等等，人家总能做到内部市场井然有序，对外凝心聚气让每个人都赚取到不错的收益，而我们在一起呢？总是自己人折腾自己人，折腾来折腾去每个人都没赚到便宜，不是吗？\n        说的各家报价及库存，总是需要一个统计的方法吧，在这里我们为大家设计并开发了这个平台，我们考虑了所有刚才所说的功能，大家可以随时维护自家的报价与库存，系统将自动为大家抓取数据计算出平均值，大家也随时可以看到各家的实时库存和报价，咱不说这一定能解决中联现在的窘态，但我觉得这个平台作为一款工具，也至少可以让你知道你现在需要多少钱才能借到房，或者说你的房现在能卖到多少钱，这样那些抱着反正能低价借房，而房满不提价格的投机者，将不得不像市场妥协提高价格或关房，而没满房的商家将会因为市场趋势的影响而获得更多的收益，所以只要大家及时维护好平台的数据，保证他的实时性和真实性，我们肯定能在一定程度上缓解提不起房价的中联魔咒！\n        我不知道这些观点对与不对，我胡乱说大家凑合着听，如有不对或不周之处望大家海涵！若感觉有兴趣可以点击上边标题下的“瑞蓝团队”关注公众号，并在公众号内注册成为平台成员，注册成功后可以私信我为你开通报价权限，谢谢大家！', '0', '2018-03-27 16:49:40', null);

-- ----------------------------
-- Table structure for t_char_say
-- ----------------------------
DROP TABLE IF EXISTS `t_char_say`;
CREATE TABLE `t_char_say` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `char_id` bigint(20) DEFAULT NULL,
  `businessman_id` bigint(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_char_say
-- ----------------------------

-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `code` int(11) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `end_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_code
-- ----------------------------

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `represent` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '青岛瑞蓝铂悦酒店管理有限公司', '陈闯', '15679760329', '0532-85696999', '山东省青岛市市北区新疆路8号中联自由港湾A座 2829', '瑞蓝瑞蓝瑞蓝瑞蓝瑞蓝瑞蓝瑞蓝', '2017-11-14 20:41:17', '0');
INSERT INTO `t_company` VALUES ('2', '瑞蓝酒店1', '陈闯', '15563906390', '15563906390', '山东省青岛市', '瑞蓝酒店是一个大型具有24个连锁酒店的公司，规模宏大	', '2017-11-14 20:41:17', '0');

-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `master_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `contract_contract` varchar(500) NOT NULL,
  `contract_years` int(11) NOT NULL,
  `contract_date` date NOT NULL,
  `contract_no` varchar(100) NOT NULL,
  `min_profit` decimal(18,2) NOT NULL,
  `profit_rate` double NOT NULL,
  `month_pay` decimal(18,2) NOT NULL,
  `pay_date` date DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `master_id` (`master_id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contract
-- ----------------------------
INSERT INTO `t_contract` VALUES ('1', '1', '1', '瑞蓝酒店房租', '3', '2017-11-17', '房租合同1号', '1000.00', '10', '3000.00', '2017-11-17', '2017-11-17 22:22:59', '0');
INSERT INTO `t_contract` VALUES ('2', '3', '2', '瑞蓝酒店房租1', '3', '2017-11-17', '房租合同3号', '2000.00', '10', '3000.00', '2017-11-17', '2017-11-17 22:24:12', '0');
INSERT INTO `t_contract` VALUES ('3', '1', '1', '青岛市', '4', '2017-11-21', '666666', '1000.00', '10', '2000.00', '2017-11-21', '2017-11-21 21:22:09', '0');

-- ----------------------------
-- Table structure for t_contract_master
-- ----------------------------
DROP TABLE IF EXISTS `t_contract_master`;
CREATE TABLE `t_contract_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account_name` varchar(50) DEFAULT NULL,
  `bank_account_no` varchar(18) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contract_master
-- ----------------------------
INSERT INTO `t_contract_master` VALUES ('1', '中国银行', '皓月', '1111111111', '2017-11-16 22:50:16', '0', '1', '15679760322', '96e79218965eb72c92a549dd5a330112', '1111111111');
INSERT INTO `t_contract_master` VALUES ('3', '中国建设银行', '心空', '222222', '2017-11-16 23:18:56', '0', '2', '1567960322', '96e79218965eb72c92a549dd5a330112', null);
INSERT INTO `t_contract_master` VALUES ('4', '农村信用社', '信用', '33333', '2017-11-18 22:50:40', '0', '1', '15679760322', '96e79218965eb72c92a549dd5a330112', '11111111');
INSERT INTO `t_contract_master` VALUES ('5', '中国银行', '李四', '1111111111111', '2018-01-03 21:19:50', '0', '1', '15679760320', 'e10adc3949ba59abbe56e057f20f883e', '222222');

-- ----------------------------
-- Table structure for t_cooperation_accounts
-- ----------------------------
DROP TABLE IF EXISTS `t_cooperation_accounts`;
CREATE TABLE `t_cooperation_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `account_type` tinyint(4) NOT NULL,
  `account_time` datetime NOT NULL,
  `total_pay` decimal(18,2) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `cooperation_company_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_cash` tinyint(4) DEFAULT NULL,
  `cash_status` tinyint(4) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `hander` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `subject_id` (`subject_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cooperation_accounts
-- ----------------------------
INSERT INTO `t_cooperation_accounts` VALUES ('1', '1', '4', '0', '2017-12-06 22:08:41', '700.00', '1', '借牙刷总费用收入情况', '无批注', '1', '2017-12-06 22:09:23', '0', '0', '2', '审核不通过', '7');
INSERT INTO `t_cooperation_accounts` VALUES ('2', '1', '4', '1', '2017-12-06 06:05:02', '500.00', '1', '茅台进货总费用', '账目有异议', '1', '2017-12-06 23:05:32', '0', '1', '1', '通过', '7');
INSERT INTO `t_cooperation_accounts` VALUES ('3', '1', '-1', '0', '2018-01-30 08:30:00', '1000.00', '1', '收入总费用', '通过', '6', '2018-01-30 12:54:17', '0', '0', '0', '未审核', null);
INSERT INTO `t_cooperation_accounts` VALUES ('4', '1', '-1', '1', '2018-01-30 08:30:00', '1000.00', '1', '费用总收入', '账目无误', '7', '2018-01-30 13:00:30', '0', '0', '0', '未审核', null);

-- ----------------------------
-- Table structure for t_cooperation_company
-- ----------------------------
DROP TABLE IF EXISTS `t_cooperation_company`;
CREATE TABLE `t_cooperation_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cooperation_company
-- ----------------------------
INSERT INTO `t_cooperation_company` VALUES ('1', '1', '2', '茅台', '茅台', '茅台酒家', '13237675702', '13237675702', '茅台酒香', '2017-12-06 21:28:15', '0');
INSERT INTO `t_cooperation_company` VALUES ('2', '1', '2', '章贡王', '江西赣州章贡区', '章贡王', '13609090909', '13609090909', '章贡王', '2017-12-06 22:04:05', '0');
INSERT INTO `t_cooperation_company` VALUES ('5', '1', '-1', '茅台酒家', '茅台酒家', '茅台酒家', '511-200-555', '15679589216', '茅台酒家', '2018-01-18 13:39:58', '0');
INSERT INTO `t_cooperation_company` VALUES ('6', '1', '-1', '餐具商家', '餐具商家', '餐具商家', '400-200-200', '15679235626', '餐具商家', '2018-01-18 13:54:58', '0');
INSERT INTO `t_cooperation_company` VALUES ('7', '1', '-1', '众联', '众联', '众联', '200-500-600', '18966666666', '众联', '2018-01-19 17:25:14', '0');
INSERT INTO `t_cooperation_company` VALUES ('8', '1', '2', '布草商家', '江西赣州', '布草商家', '455-5545', '15679712351', '布草商家', '2018-01-20 18:28:21', '0');
INSERT INTO `t_cooperation_company` VALUES ('9', '1', '2', '布草商家1', '江西赣州', '布草商家1', '455-5545', '15679712351', '布草商家1', '2018-01-20 18:29:14', '0');
INSERT INTO `t_cooperation_company` VALUES ('10', '1', '-1', '轻松', '轻松轻松轻松', '轻松', '5656-656', '19679762058', '轻松轻松轻松轻松', '2018-01-20 18:37:51', '0');
INSERT INTO `t_cooperation_company` VALUES ('11', '1', '-1', '阿萨德1', '江西赣州', '阿萨德1', '500-200-00', '18370940766', '阿萨德', '2018-01-20 18:44:46', '0');
INSERT INTO `t_cooperation_company` VALUES ('12', '1', '4', '三大范式', '江西赣州', '三大范式', '500-100', '15679705110', '江西赣州', '2018-01-20 18:46:04', '0');
INSERT INTO `t_cooperation_company` VALUES ('13', '1', '-1', '人', '赣州', '15679763333', '15679763333', '15679763333', '', '2018-02-10 14:36:07', '0');

-- ----------------------------
-- Table structure for t_cooperation_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_cooperation_subject`;
CREATE TABLE `t_cooperation_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cooperation_subject
-- ----------------------------
INSERT INTO `t_cooperation_subject` VALUES ('1', '被单', '被单', '2017-11-30 22:13:11', '1', '0');
INSERT INTO `t_cooperation_subject` VALUES ('2', '送客', '送客', '2017-12-10 21:30:49', '1', '0');

-- ----------------------------
-- Table structure for t_cooperation_website
-- ----------------------------
DROP TABLE IF EXISTS `t_cooperation_website`;
CREATE TABLE `t_cooperation_website` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cooperation_website
-- ----------------------------
INSERT INTO `t_cooperation_website` VALUES ('1', '携程网', '携程网', '2017-11-15 12:40:19', '0', '1');
INSERT INTO `t_cooperation_website` VALUES ('2', '途牛', '途牛', '2017-11-30 21:43:48', '0', '1');
INSERT INTO `t_cooperation_website` VALUES ('3', '线下入住', '线下入住', '2017-12-10 21:25:13', '0', '1');
INSERT INTO `t_cooperation_website` VALUES ('4', '去哪旅行', '去哪旅行', '2017-12-10 21:27:43', '0', '1');
INSERT INTO `t_cooperation_website` VALUES ('5', '58同城', '', '2018-01-19 13:44:19', '0', '1');

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `shop_manager_id` bigint(20) NOT NULL,
  `house_id` bigint(20) NOT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_identity` varchar(200) NOT NULL,
  `customer_phone` varchar(11) NOT NULL,
  `customer_gender` varchar(20) DEFAULT NULL,
  `customer_from` tinyint(4) DEFAULT NULL,
  `website_id` bigint(20) DEFAULT NULL,
  `unit_price` decimal(18,2) DEFAULT NULL,
  `total_days` tinyint(4) NOT NULL,
  `house_pay` decimal(18,2) NOT NULL,
  `service_pay` decimal(18,2) DEFAULT '0.00',
  `deposit` decimal(18,2) DEFAULT NULL,
  `total_pay` decimal(18,2) DEFAULT NULL,
  `actual_return` decimal(18,2) DEFAULT NULL,
  `payment_type_id` bigint(20) NOT NULL,
  `checkin_time` datetime NOT NULL,
  `checkout_time` datetime NOT NULL,
  `checkout_max_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `check_remark` varchar(500) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `hander` bigint(20) DEFAULT NULL,
  `is_cash` tinyint(4) DEFAULT '0',
  `other_hotel` bigint(20) DEFAULT NULL,
  `other_hotel_money` decimal(10,0) DEFAULT NULL,
  `other_hotel_money_type` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `shop_manager_id` (`shop_manager_id`) USING BTREE,
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `contract_id` (`contract_id`) USING BTREE,
  KEY `website_id` (`website_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
INSERT INTO `t_customer_order` VALUES ('1', '1', '2', '7', '2', '1', '张三', '36730199712200611', '15679760320', '男', '2', '1', '200.00', '2', '400.00', '0.00', '100.00', '500.00', '100.00', '1', '2017-12-07 21:36:21', '2017-12-09 21:36:23', '2017-12-09 21:36:24', '客户入住', '0', '2017-12-09 21:37:23', '0', '无误', '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('6', '1', '2', '7', '8', '1', '214', '1421', '14214', null, null, '1', null, '4', '800.00', null, null, '500.00', null, '1', '2017-12-15 21:50:57', '2017-12-19 21:50:57', null, '', '0', '2017-12-15 21:54:13', '0', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('7', '1', '2', '7', '11', '1', '23424', '4242', '234242', null, null, '1', null, '4', '500.00', null, null, '500.00', null, '-1', '2017-12-15 21:55:10', '2017-12-19 21:55:10', null, '入住', '0', '2017-12-15 21:59:40', '0', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('9', '1', '2', '7', '15', '1', '23424', '4242', '234242', null, null, '1', null, '4', '500.00', null, null, '500.00', null, '-1', '2017-12-15 21:55:10', '2017-12-19 21:55:10', null, '入住', '0', '2017-12-15 21:59:40', '0', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('11', '1', '2', '7', '3', '1', '343434', '434343', '34343', null, null, '4', null, '4', '1000.00', null, null, null, null, '-1', '2017-12-17 10:20:27', '2017-12-21 10:20:27', null, '43525', '0', '2017-12-17 10:24:54', '0', null, '0', null, '0', null, null, null, '1', '0');
INSERT INTO `t_customer_order` VALUES ('13', '1', '2', '7', '7', '1', '345345', '3535353', '345345', null, null, '1', null, '3', '800.00', null, null, null, null, '-1', '2017-12-17 12:50:12', '2017-12-20 12:50:12', null, '订单入住', '0', '2017-12-17 12:50:45', '0', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('16', '1', '2', '7', '4', '1', '4141', '12431241', '1414', null, null, '1', null, '2', '600.00', null, null, null, null, '-1', '2017-12-19 22:30:21', '2017-12-21 22:30:21', null, 'aefdsf', '0', '2017-12-19 22:30:49', '1', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('17', '1', '2', '7', '9', '1', '2324', '3535', '243', null, null, '1', null, '4', '1000.00', null, null, null, null, '-1', '2017-12-22 20:30:38', '2017-12-26 20:30:38', null, '12345678', '0', '2017-12-22 20:33:27', '0', null, '0', null, '0', null, null, null, '0', '0');
INSERT INTO `t_customer_order` VALUES ('18', '1', '2', '7', '2', '1', '商家送客', '1111111', '15679760321', null, null, '1', null, '4', '1200.00', null, null, null, null, '1', '2017-12-22 20:30:25', '2017-12-26 20:30:25', null, '商家送客', '0', '2017-12-22 20:37:41', '0', null, '0', null, '0', '4', null, null, '0', '1');
INSERT INTO `t_customer_order` VALUES ('19', '1', '2', '7', '4', '1', '商家送客来了', '131313', '1321313', null, null, '1', null, '5', '14000.00', null, null, null, null, '3', '2017-12-22 20:55:09', '2017-12-27 20:55:09', null, '商家送客来了', '0', '2017-12-22 20:58:59', '0', null, '0', null, '1', null, null, null, '0', '1');
INSERT INTO `t_customer_order` VALUES ('20', '1', '2', '7', '6', '1', '订单', '414131', '13131', null, null, '1', null, '5', '2000.00', null, null, null, null, '4', '2017-12-22 21:00:15', '2017-12-27 21:00:15', null, '', '0', '2017-12-22 21:04:12', '0', null, '0', null, '1', '4', '0', '-1', '0', '1');

-- ----------------------------
-- Table structure for t_customer_order_ota
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order_ota`;
CREATE TABLE `t_customer_order_ota` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `order_no` varchar(200) DEFAULT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `house_name` varchar(100) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `website_name` varchar(20) DEFAULT NULL,
  `website_id` bigint(20) DEFAULT NULL,
  `unit_price` decimal(18,2) DEFAULT NULL,
  `total_days` tinyint(4) NOT NULL,
  `total_pay` decimal(18,2) NOT NULL,
  `ota_commission` decimal(18,2) DEFAULT NULL,
  `actual_money` decimal(18,2) DEFAULT NULL,
  `checkin_time` datetime DEFAULT NULL,
  `checkout_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_order_ota
-- ----------------------------
INSERT INTO `t_customer_order_ota` VALUES ('1', '1', '20180101', '酒店1', '房间1', '2018-01-01 00:00:00', '小明', '携程网', null, null, '1', '200.00', '0.00', '200.00', '2018-01-02 00:00:00', '2018-01-03 00:00:00', null, '2018-01-09 11:45:52', '0');
INSERT INTO `t_customer_order_ota` VALUES ('2', '1', '20180101', '酒店2', '房间2', '2018-01-01 00:00:00', '小华', '去哪儿网', null, null, '2', '400.00', '0.00', '400.00', '2018-01-03 00:00:00', '2018-01-05 00:00:00', null, '2018-01-09 11:45:52', '0');
INSERT INTO `t_customer_order_ota` VALUES ('3', '1', '20180101', '酒店1', '房间1', '2018-01-01 00:00:00', '小明', '携程网', null, null, '1', '200.00', '0.00', '200.00', '2018-01-02 00:00:00', '2018-01-03 00:00:00', null, '2018-01-09 12:51:01', '0');
INSERT INTO `t_customer_order_ota` VALUES ('4', '1', null, null, null, null, null, null, null, null, '0', '0.00', '0.00', '0.00', null, null, null, '2018-01-09 12:51:01', '0');
INSERT INTO `t_customer_order_ota` VALUES ('5', '1', '20180101', '酒店2', '房间2', '2018-01-01 00:00:00', '小华', '去哪儿网', null, null, '2', '400.00', '0.00', '400.00', '2018-01-03 00:00:00', '2018-01-05 00:00:00', null, '2018-01-09 12:51:01', '0');

-- ----------------------------
-- Table structure for t_customer_service
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_service`;
CREATE TABLE `t_customer_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `house_id` bigint(20) DEFAULT NULL,
  `house_card_title` varchar(50) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `account_type` tinyint(4) NOT NULL,
  `account_time` datetime NOT NULL,
  `total_pay` decimal(18,2) NOT NULL,
  `is_pay` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `check_remark` varchar(500) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `subject_id` (`subject_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_service
-- ----------------------------

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('17', '1', '2', '7', '27');
INSERT INTO `t_employee` VALUES ('18', '1', '2', '7', '28');
INSERT INTO `t_employee` VALUES ('19', '1', '-1', '6', '29');
INSERT INTO `t_employee` VALUES ('20', '1', '-1', '6', '30');

-- ----------------------------
-- Table structure for t_hotel
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel`;
CREATE TABLE `t_hotel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_manager_id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `provice` varchar(20) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `town` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_hotel_title_uindex` (`title`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `hotel_manager_id` (`hotel_manager_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hotel
-- ----------------------------
INSERT INTO `t_hotel` VALUES ('2', '1', '6', '红古轩酒店', '15679760322', '2017-11-21 20:56:03', '0', '河北省', '石家庄市', '长安区', '河北省唐山市路北区');
INSERT INTO `t_hotel` VALUES ('4', '1', '7', '800', '800-800-800', '2017-11-21 22:18:47', '0', '河北省', '石家庄市', '长安区', '河北省唐山市路北区');
INSERT INTO `t_hotel` VALUES ('5', '1', '31', '801', '800-800-800', '2017-11-21 22:18:47', '0', '河北省', '石家庄市', '长安区', '河北省唐山市路北区');

-- ----------------------------
-- Table structure for t_hotel_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_employee`;
CREATE TABLE `t_hotel_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hotel_employee
-- ----------------------------

-- ----------------------------
-- Table structure for t_hotel_type
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_type`;
CREATE TABLE `t_hotel_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_hotel_type
-- ----------------------------
INSERT INTO `t_hotel_type` VALUES ('10', '特价大床', '特价大床', '0', '2018-03-19 11:25:28');
INSERT INTO `t_hotel_type` VALUES ('11', '城景大床', '城景大床', '0', '2018-03-19 11:28:37');
INSERT INTO `t_hotel_type` VALUES ('12', '城景双床', '城景双床', '0', '2018-03-19 11:28:37');
INSERT INTO `t_hotel_type` VALUES ('13', '海景大床', '海景大床', '0', '2018-03-19 11:28:38');
INSERT INTO `t_hotel_type` VALUES ('14', '海景双床', '海景双床', '0', '2018-03-19 11:28:38');
INSERT INTO `t_hotel_type` VALUES ('15', '城景套房', '城景套房', '0', '2018-03-19 11:28:38');
INSERT INTO `t_hotel_type` VALUES ('16', '海景套房', '海景套房', '0', '2018-03-19 11:28:38');

-- ----------------------------
-- Table structure for t_house
-- ----------------------------
DROP TABLE IF EXISTS `t_house`;
CREATE TABLE `t_house` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_title` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `description` text,
  `hotel_id` bigint(20) NOT NULL,
  `house_status` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `leave_time` datetime DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `house_type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house
-- ----------------------------
INSERT INTO `t_house` VALUES ('2', '101', '3', '大床房', '2', '1', '2017-11-23 22:36:29', '0', '2017-12-26 20:30:25', '1', '0');
INSERT INTO `t_house` VALUES ('3', '111', '3', '大床房', '2', '1', '2017-11-26 15:42:15', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('4', '112', '3', '大床房', '2', '1', '2017-11-26 15:42:15', '0', '2017-12-27 20:55:09', '1', '0');
INSERT INTO `t_house` VALUES ('5', '113', '3', '大床房', '2', '1', '2017-11-26 16:51:00', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('6', '114', '3', '大床房', '2', '1', '2017-11-26 16:51:00', '0', '2017-12-27 21:00:15', '1', '0');
INSERT INTO `t_house` VALUES ('7', '106', '3', '大床房', '2', '0', '2017-11-26 16:52:10', '0', '2017-12-20 12:50:12', '1', '0');
INSERT INTO `t_house` VALUES ('8', '109', '3', '大床房', '2', '0', '2017-11-26 16:59:09', '0', '2017-12-19 21:50:57', '1', '0');
INSERT INTO `t_house` VALUES ('9', '220', '3', '大床房', '2', '0', '2017-11-26 16:59:09', '0', '2017-12-26 20:30:38', '1', '0');
INSERT INTO `t_house` VALUES ('10', '201', '3', '大床房', '4', '0', '2017-11-26 17:05:15', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('11', '202', '3', '大床房', '2', '0', '2017-11-26 17:05:15', '0', '2017-12-22 20:34:13', '1', '0');
INSERT INTO `t_house` VALUES ('12', '103', '3', '大床房', '2', '1', '2017-11-26 18:11:06', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('13', '102', '3', '大床房', '2', '0', '2017-11-26 18:11:06', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('14', '108', '3', '大床房', '2', '0', '2017-11-29 23:02:17', '0', '2017-12-21 22:30:21', '1', '0');
INSERT INTO `t_house` VALUES ('15', '107', '3', '大床房', '2', '0', '2017-11-29 23:02:17', '0', '2017-12-19 21:55:10', '1', '0');
INSERT INTO `t_house` VALUES ('16', '101', '4', '天鼎酒店', '5', '0', '2018-01-14 21:07:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('17', '102', '4', '天鼎酒店', '5', '0', '2018-01-14 21:07:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('18', '103', '4', '天鼎酒店', '5', '0', '2018-01-14 21:07:24', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('19', '104', '4', '天鼎酒店', '5', '0', '2018-01-14 21:07:25', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('20', '202', '4', '202', '4', '0', '2018-01-14 21:45:00', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('21', '610', '9', '暗示法发顺丰', '8', '0', '2018-01-15 13:01:12', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('22', '815', '13', '而玩儿玩儿玩儿', '8', '0', '2018-01-15 13:02:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('23', '930', '13', '而玩儿玩儿玩儿', '8', '0', '2018-01-15 13:02:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('24', '1018', '13', '而玩儿玩儿玩儿', '8', '0', '2018-01-15 13:02:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('25', '1008', '13', '而玩儿玩儿玩儿', '8', '0', '2018-01-15 13:02:23', '0', null, '1', '0');
INSERT INTO `t_house` VALUES ('26', '610', '14', '1123123123', '2', '0', '2018-01-15 14:45:54', '1', null, '1', '0');
INSERT INTO `t_house` VALUES ('27', '815', '14', '1123123123', '2', '0', '2018-01-15 14:45:54', '1', null, '1', '0');

-- ----------------------------
-- Table structure for t_house_fact_pay
-- ----------------------------
DROP TABLE IF EXISTS `t_house_fact_pay`;
CREATE TABLE `t_house_fact_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '房租缴纳费用',
  `house_rent_id` bigint(20) NOT NULL COMMENT '房租id',
  `pay_money` double NOT NULL COMMENT '支付金额',
  `create_time` datetime NOT NULL COMMENT '支付时间',
  `status` int(11) NOT NULL COMMENT '状态',
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_fact_pay
-- ----------------------------

-- ----------------------------
-- Table structure for t_house_fact_pay_copy
-- ----------------------------
DROP TABLE IF EXISTS `t_house_fact_pay_copy`;
CREATE TABLE `t_house_fact_pay_copy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '房租缴纳费用',
  `house_rent_id` bigint(20) NOT NULL COMMENT '房租id',
  `pay_money` double NOT NULL COMMENT '支付金额',
  `create_time` datetime NOT NULL COMMENT '支付时间',
  `status` int(11) NOT NULL COMMENT '状态',
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_fact_pay_copy
-- ----------------------------
INSERT INTO `t_house_fact_pay_copy` VALUES ('1', '24', '500', '2018-01-03 20:13:13', '0', '1');
INSERT INTO `t_house_fact_pay_copy` VALUES ('2', '24', '500', '2018-01-03 20:14:59', '0', '1');
INSERT INTO `t_house_fact_pay_copy` VALUES ('3', '24', '500', '2018-01-03 20:15:37', '0', '1');
INSERT INTO `t_house_fact_pay_copy` VALUES ('4', '24', '500', '2018-01-03 20:16:58', '0', '1');

-- ----------------------------
-- Table structure for t_house_others_item
-- ----------------------------
DROP TABLE IF EXISTS `t_house_others_item`;
CREATE TABLE `t_house_others_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `house_id` bigint(20) DEFAULT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `pay_money` decimal(10,0) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `is_cash` tinyint(4) DEFAULT NULL,
  `hander` bigint(20) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_others_item
-- ----------------------------
INSERT INTO `t_house_others_item` VALUES ('1', '1', '2', '2', '5', '100', '2017-12-17 15:08:03', '0', null, '已结算', '2017-12-24 18:48:17');
INSERT INTO `t_house_others_item` VALUES ('2', '1', '2', '2', '5', '100', '2017-12-17 15:08:06', '0', null, '已结算', '2017-12-24 18:48:17');
INSERT INTO `t_house_others_item` VALUES ('3', '1', '2', '2', '5', '100', '2017-12-17 15:08:06', '0', null, '已结算', '2017-12-24 18:48:17');
INSERT INTO `t_house_others_item` VALUES ('4', '1', '2', '2', '5', '211', '2017-12-17 15:08:07', '0', null, '1231', '2017-12-24 18:48:17');
INSERT INTO `t_house_others_item` VALUES ('5', '1', '2', '6', '5', '100', '2017-12-24 20:23:46', '0', null, '123456', '2017-12-24 20:23:46');
INSERT INTO `t_house_others_item` VALUES ('6', '1', '2', '6', '4', '300', '2017-12-24 20:35:56', '1', null, '旅游包车', '2017-12-24 20:35:56');

-- ----------------------------
-- Table structure for t_house_rent_pay
-- ----------------------------
DROP TABLE IF EXISTS `t_house_rent_pay`;
CREATE TABLE `t_house_rent_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `master_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `total_pay` decimal(18,2) NOT NULL,
  `fact_pay_time_start` date DEFAULT NULL,
  `fact_pay_time_end` date DEFAULT NULL,
  `facted_pay_time_end` date DEFAULT NULL,
  `facted_pay_time_start` date DEFAULT NULL,
  `fact_pay` double(255,0) DEFAULT NULL,
  `pay_count` int(255) DEFAULT NULL,
  `pay_time` int(11) NOT NULL,
  `pay_type` int(11) NOT NULL,
  `spare_money` double(255,0) DEFAULT NULL,
  `pay_fact_time` int(11) DEFAULT NULL,
  `pay_period_start` date NOT NULL,
  `pay_period_end` date NOT NULL,
  `is_cash` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `house_name` varchar(30) NOT NULL,
  `first_pay` double DEFAULT NULL,
  `first_pay_time` date DEFAULT NULL,
  `sum_pay` double(255,0) DEFAULT NULL,
  `day_pay` double(255,0) DEFAULT NULL,
  `month_pay` double(255,0) DEFAULT NULL,
  `area` double(255,0) DEFAULT NULL COMMENT '面积',
  `house_count` int(255) DEFAULT NULL,
  `shuidian` int(255) DEFAULT NULL,
  `kongtiao` int(255) DEFAULT NULL,
  `gongnuan` int(255) DEFAULT NULL,
  `wuye` double(255,0) DEFAULT NULL,
  `yajin` double(255,0) DEFAULT NULL,
  `bucaofei` double(255,0) DEFAULT NULL,
  `buzhiqi` int(255) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `zhuangxiu` int(255) DEFAULT NULL,
  `qixian` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `master_id` (`master_id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_rent_pay
-- ----------------------------
INSERT INTO `t_house_rent_pay` VALUES ('42', '1', '2', '1', '12000.00', '2018-01-01', '2019-01-01', '2018-06-01', '2018-08-01', '12000', '1', '1', '1', '1000', '1', '2018-01-01', '2019-01-01', '0', '暂无说明', '2018-03-05 14:28:02', '0', 'A101', '1000', '2018-01-01', '11000', '33', '1000', '10', '2', '0', '0', '0', null, null, null, null, '4f3b5b9b-b200-4fda-9c07-0dbde01d3594', '0', '2018-01-01,2018-02-01,2018-03-01,2018-04-01,2018-05-01,2018-06-01,2018-07-01,2018-08-01,2018-09-01,2018-10-01,2018-11-01,2018-12-01');

-- ----------------------------
-- Table structure for t_house_type
-- ----------------------------
DROP TABLE IF EXISTS `t_house_type`;
CREATE TABLE `t_house_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `price` double DEFAULT '0',
  `hotel_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_type
-- ----------------------------
INSERT INTO `t_house_type` VALUES ('14', '御筑大床房', '御筑大床房', '2018-01-15 14:38:48', '0', '1', '800', '2');
INSERT INTO `t_house_type` VALUES ('16', '800', '800酒店', '2018-01-15 19:13:30', '1', '1', '800', '2');
INSERT INTO `t_house_type` VALUES ('17', '总统套房', '总统套房', '2018-01-17 19:35:33', '0', '1', '500', '2');
INSERT INTO `t_house_type` VALUES ('19', '总统套房', '总统套房', '2018-01-24 11:57:45', '0', '1', '800', '4');

-- ----------------------------
-- Table structure for t_income
-- ----------------------------
DROP TABLE IF EXISTS `t_income`;
CREATE TABLE `t_income` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收入编号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司编号',
  `hotel_id` bigint(20) DEFAULT NULL COMMENT '酒店编号',
  `subject_id` bigint(20) DEFAULT NULL COMMENT '收入科目编号',
  `incomme_name` varchar(50) DEFAULT NULL COMMENT '收入名称',
  `remark` varchar(300) DEFAULT NULL COMMENT '收入备注',
  `start_time` date DEFAULT NULL COMMENT '开始收入时间',
  `end_time` date DEFAULT NULL COMMENT '结束收入时间',
  `money` double(20,2) DEFAULT NULL COMMENT '收入总金额',
  `day_money` double(20,2) DEFAULT NULL COMMENT '日收入金额',
  `income_status` tinyint(4) DEFAULT NULL COMMENT '收入状态',
  `is_active` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店的收入表，记录哪个公司旗下的哪个酒店，的收入明细\r\n';

-- ----------------------------
-- Records of t_income
-- ----------------------------
INSERT INTO `t_income` VALUES ('1', '1', '2', '1', '123', '1', '2018-09-01', '2018-09-30', '10545.00', '363.62', '1', '1', '2018-09-17 16:24:31');
INSERT INTO `t_income` VALUES ('2', '1', '2', '1', '123', '返回', '2018-09-11', '2018-09-28', '77777.00', '4575.12', '0', '0', '2018-09-21 14:14:42');

-- ----------------------------
-- Table structure for t_leave
-- ----------------------------
DROP TABLE IF EXISTS `t_leave`;
CREATE TABLE `t_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `hotel_manager_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_days` tinyint(4) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `check_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leave
-- ----------------------------
INSERT INTO `t_leave` VALUES ('1', '1', '-1', '6', '6', '3', '回家相亲', '2017-12-17 16:05:39', '2017-12-17 12:51:14', '1', '0', '');
INSERT INTO `t_leave` VALUES ('2', '1', '-1', '7', '7', '4', 'eee', '2017-12-17 15:21:10', '2017-12-17 15:21:10', '1', '1', '审核通过');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(500) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1', '6', 'admin', '退出登录', '3', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@7d5e77fb\"', '127.0.0.1', '2018-09-29 17:15:50');
INSERT INTO `t_log` VALUES ('2', '6', 'admin', '登录', '2024', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-09-29 17:22:00');
INSERT INTO `t_log` VALUES ('3', '6', 'admin', '用户登录', '2313', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-09-29 17:45:19');
INSERT INTO `t_log` VALUES ('4', '6', 'admin', '用户登录', '2185', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-09-30 18:08:40');
INSERT INTO `t_log` VALUES ('5', '6', 'admin', '用户登录', '4839', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-02 21:45:09');
INSERT INTO `t_log` VALUES ('6', '6', 'admin', '用户登录', '2120', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 15:44:34');
INSERT INTO `t_log` VALUES ('7', '6', 'admin', '退出登录', '3', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@2dff38cf\"', '127.0.0.1', '2018-10-08 15:46:13');
INSERT INTO `t_log` VALUES ('8', '6', 'admin', '用户登录', '2179', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:02:08');
INSERT INTO `t_log` VALUES ('9', '6', 'admin', '用户登录', '2041', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:05:57');
INSERT INTO `t_log` VALUES ('10', '6', 'admin', '用户登录', '2132', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:09:05');
INSERT INTO `t_log` VALUES ('11', '6', 'admin', '用户登录', '2020', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:13:32');
INSERT INTO `t_log` VALUES ('12', '6', 'admin', '用户登录', '2143', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:15:57');
INSERT INTO `t_log` VALUES ('13', '6', 'admin', '用户登录', '2075', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:22:20');
INSERT INTO `t_log` VALUES ('14', '6', 'admin', '用户登录', '2166', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:43:56');
INSERT INTO `t_log` VALUES ('15', '6', 'admin', '用户登录', '2063', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:47:22');
INSERT INTO `t_log` VALUES ('16', '6', 'admin', '用户登录', '2148', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:50:17');
INSERT INTO `t_log` VALUES ('17', '6', 'admin', '用户登录', '2156', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 17:58:41');
INSERT INTO `t_log` VALUES ('18', '6', 'admin', '用户登录', '2126', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:05:36');
INSERT INTO `t_log` VALUES ('19', '6', 'admin', '用户登录', '2124', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:06:44');
INSERT INTO `t_log` VALUES ('20', '6', 'admin', '用户登录', '2166', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:09:48');
INSERT INTO `t_log` VALUES ('21', '6', 'admin', '用户登录', '2048', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:11:20');
INSERT INTO `t_log` VALUES ('22', '6', 'admin', '用户登录', '2082', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:21:58');
INSERT INTO `t_log` VALUES ('23', '6', 'admin', '用户登录', '2384', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:24:51');
INSERT INTO `t_log` VALUES ('24', '6', 'admin', '用户登录', '2133', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:28:45');
INSERT INTO `t_log` VALUES ('25', '6', 'admin', '用户登录', '2134', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:33:46');
INSERT INTO `t_log` VALUES ('26', '6', 'admin', '用户登录', '2192', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:43:50');
INSERT INTO `t_log` VALUES ('27', '6', 'admin', '用户登录', '2102', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-08 18:52:14');
INSERT INTO `t_log` VALUES ('28', '6', 'admin', '用户登录', '2131', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 09:24:23');
INSERT INTO `t_log` VALUES ('29', '6', 'admin', '查看成本接口', '211', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@65393c1e\"', '127.0.0.1', '2018-10-09 09:25:17');
INSERT INTO `t_log` VALUES ('30', '6', 'admin', '用户登录', '2054', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 09:36:48');
INSERT INTO `t_log` VALUES ('31', '6', 'admin', '用户登录', '2179', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 10:01:36');
INSERT INTO `t_log` VALUES ('32', '6', 'admin', '用户登录', '2181', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 10:05:29');
INSERT INTO `t_log` VALUES ('33', '6', 'admin', '用户登录', '2118', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 11:57:05');
INSERT INTO `t_log` VALUES ('34', '6', 'admin', '用户登录', '2089', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 14:09:20');
INSERT INTO `t_log` VALUES ('35', '6', 'admin', '用户登录', '2089', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 14:18:47');
INSERT INTO `t_log` VALUES ('36', '6', 'admin', '用户登录', '2749', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:04:12');
INSERT INTO `t_log` VALUES ('37', '6', 'admin', '用户登录', '346', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:04:53');
INSERT INTO `t_log` VALUES ('38', '6', 'admin', '用户登录', '2265', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:07:01');
INSERT INTO `t_log` VALUES ('39', '6', 'admin', '用户登录', '323', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:07:37');
INSERT INTO `t_log` VALUES ('40', '6', 'admin', '用户登录', '335', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:08:55');
INSERT INTO `t_log` VALUES ('41', '6', 'admin', '用户登录', '300', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:09:16');
INSERT INTO `t_log` VALUES ('42', '6', 'admin', '用户登录', '303', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:09:59');
INSERT INTO `t_log` VALUES ('43', '6', 'admin', '用户登录', '335', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:11:36');
INSERT INTO `t_log` VALUES ('44', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:12:12');
INSERT INTO `t_log` VALUES ('45', '6', 'admin', '退出登录', '144', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:14:03');
INSERT INTO `t_log` VALUES ('46', '6', 'admin', '退出登录', '5', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:14:23');
INSERT INTO `t_log` VALUES ('47', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:14:34');
INSERT INTO `t_log` VALUES ('48', '6', 'admin', '退出登录', '3', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:14:49');
INSERT INTO `t_log` VALUES ('49', '6', 'admin', '退出登录', '2', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:15:15');
INSERT INTO `t_log` VALUES ('50', '6', 'admin', '退出登录', '6', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:15:27');
INSERT INTO `t_log` VALUES ('51', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:15:46');
INSERT INTO `t_log` VALUES ('52', '6', 'admin', '退出登录', '7', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:15:56');
INSERT INTO `t_log` VALUES ('53', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:16:15');
INSERT INTO `t_log` VALUES ('54', '6', 'admin', '退出登录', '0', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:16:23');
INSERT INTO `t_log` VALUES ('55', '6', 'admin', '退出登录', '0', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:16:33');
INSERT INTO `t_log` VALUES ('56', '6', 'admin', '退出登录', '0', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:17:18');
INSERT INTO `t_log` VALUES ('57', '6', 'admin', '退出登录', '4', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:17:45');
INSERT INTO `t_log` VALUES ('58', '6', 'admin', '退出登录', '44', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:17:54');
INSERT INTO `t_log` VALUES ('59', '6', 'admin', '退出登录', '8', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:18:39');
INSERT INTO `t_log` VALUES ('60', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:18:55');
INSERT INTO `t_log` VALUES ('61', '6', 'admin', '退出登录', '0', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:22:24');
INSERT INTO `t_log` VALUES ('62', '6', 'admin', '退出登录', '0', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:22:39');
INSERT INTO `t_log` VALUES ('63', '6', 'admin', '退出登录', '2', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:22:55');
INSERT INTO `t_log` VALUES ('64', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:23:09');
INSERT INTO `t_log` VALUES ('65', '6', 'admin', '用户登录', '298', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:23:42');
INSERT INTO `t_log` VALUES ('66', '6', 'admin', '退出登录', '4', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:23:45');
INSERT INTO `t_log` VALUES ('67', '6', 'admin', '退出登录', '6', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@76b4201c\"', '127.0.0.1', '2018-10-09 15:25:28');
INSERT INTO `t_log` VALUES ('68', '6', 'admin', '用户登录', '366', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 15:26:59');
INSERT INTO `t_log` VALUES ('69', '6', 'admin', '用户登录', '358', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 16:11:54');
INSERT INTO `t_log` VALUES ('70', '6', 'admin', '退出登录', '3', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 16:19:52');
INSERT INTO `t_log` VALUES ('71', '6', 'admin', '退出登录', '5', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 16:19:56');
INSERT INTO `t_log` VALUES ('72', '6', 'admin', '退出登录', '6', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 16:20:06');
INSERT INTO `t_log` VALUES ('73', '6', 'admin', '退出登录', '27', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 16:20:46');
INSERT INTO `t_log` VALUES ('74', '6', 'admin', '用户登录', '385', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-09 16:28:02');
INSERT INTO `t_log` VALUES ('75', '6', 'admin', '查看成本接口', '201', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 17:06:45');
INSERT INTO `t_log` VALUES ('76', '6', 'admin', '查看成本接口', '185', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 17:07:22');
INSERT INTO `t_log` VALUES ('77', '6', 'admin', '查看成本接口', '233', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 17:08:39');
INSERT INTO `t_log` VALUES ('78', '6', 'admin', '查看成本接口', '215', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@687e0345\"', '127.0.0.1', '2018-10-09 17:08:46');
INSERT INTO `t_log` VALUES ('79', '6', 'admin', '用户登录', '2120', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 09:35:26');
INSERT INTO `t_log` VALUES ('80', '6', 'admin', '用户登录', '2085', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 10:27:44');
INSERT INTO `t_log` VALUES ('81', '6', 'admin', '用户登录', '2138', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 11:27:13');
INSERT INTO `t_log` VALUES ('82', '6', 'admin', '查看成本接口', '210', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@3e135fec\"', '127.0.0.1', '2018-10-10 11:27:21');
INSERT INTO `t_log` VALUES ('83', '6', 'admin', '查看成本接口', '201', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@3e135fec\"', '127.0.0.1', '2018-10-10 11:29:28');
INSERT INTO `t_log` VALUES ('84', '6', 'admin', '用户登录', '349', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 14:07:17');
INSERT INTO `t_log` VALUES ('86', '6', 'admin', '用户登录', '2057', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 14:21:23');
INSERT INTO `t_log` VALUES ('90', '6', 'admin', '用户登录', '670', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '218.106.117.210', '2018-10-10 14:57:21');
INSERT INTO `t_log` VALUES ('91', '6', 'admin', '用户登录', '56', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '123.234.73.229', '2018-10-10 14:58:43');
INSERT INTO `t_log` VALUES ('94', '6', 'admin', '用户登录', '2141', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 15:07:04');
INSERT INTO `t_log` VALUES ('95', '6', 'admin', '用户登录', '2100', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 15:12:14');
INSERT INTO `t_log` VALUES ('96', '6', 'admin', '用户登录', '2079', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 15:52:22');
INSERT INTO `t_log` VALUES ('97', '6', 'admin', '用户登录', '346', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 16:53:46');
INSERT INTO `t_log` VALUES ('98', '6', 'admin', '用户登录', '307', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 16:54:43');
INSERT INTO `t_log` VALUES ('99', '6', 'admin', '用户登录', '2049', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 17:06:33');
INSERT INTO `t_log` VALUES ('100', '6', 'admin', '用户登录', '2016', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 17:11:52');
INSERT INTO `t_log` VALUES ('101', '6', 'admin', '用户登录', '2058', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-10 17:13:28');
INSERT INTO `t_log` VALUES ('102', '6', 'admin', '用户登录', '2406', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 11:40:54');
INSERT INTO `t_log` VALUES ('103', '6', 'admin', '用户登录', '571', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 15:48:39');
INSERT INTO `t_log` VALUES ('104', '6', 'admin', '用户登录', '430', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 16:20:53');
INSERT INTO `t_log` VALUES ('105', '6', 'admin', '用户登录', '396', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 16:21:57');
INSERT INTO `t_log` VALUES ('106', '6', 'admin', '用户登录', '2067', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 16:46:00');
INSERT INTO `t_log` VALUES ('107', '6', 'admin', '用户登录', '2103', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 16:49:11');
INSERT INTO `t_log` VALUES ('108', '6', 'admin', '用户登录', '2111', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 17:24:05');
INSERT INTO `t_log` VALUES ('109', '6', 'admin', '用户登录', '1921', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 17:28:04');
INSERT INTO `t_log` VALUES ('110', '6', 'admin', '用户登录', '2028', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 17:30:39');
INSERT INTO `t_log` VALUES ('111', '6', 'admin', '用户登录', '1958', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-11 17:33:47');
INSERT INTO `t_log` VALUES ('112', '6', 'admin', '用户登录', '2477', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-12 09:53:20');
INSERT INTO `t_log` VALUES ('113', '6', 'admin', '用户登录', '3399', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 09:10:36');
INSERT INTO `t_log` VALUES ('114', '6', 'admin', '用户登录', '2712', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 09:26:50');
INSERT INTO `t_log` VALUES ('115', '6', 'admin', '用户登录', '360', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 09:27:02');
INSERT INTO `t_log` VALUES ('116', '6', 'admin', '查看成本接口', '213', 'top.cflwork.controller.IncomeController.incomeList()', '\"->10->1->->org.apache.catalina.session.StandardSessionFacade@203bbedd\"', '127.0.0.1', '2018-10-15 09:30:06');
INSERT INTO `t_log` VALUES ('117', '6', 'admin', '用户登录', '2373', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 15:57:47');
INSERT INTO `t_log` VALUES ('118', '6', 'admin', '用户登录', '353', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:02:35');
INSERT INTO `t_log` VALUES ('119', '6', 'admin', '用户登录', '1939', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:07:21');
INSERT INTO `t_log` VALUES ('120', '6', 'admin', '用户登录', '346', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:19:02');
INSERT INTO `t_log` VALUES ('121', '6', 'admin', '用户登录', '338', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:42:44');
INSERT INTO `t_log` VALUES ('122', '6', 'admin', '用户登录', '2110', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:47:06');
INSERT INTO `t_log` VALUES ('123', '6', 'admin', '用户登录', '2117', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 16:52:00');
INSERT INTO `t_log` VALUES ('124', '6', 'admin', '用户登录', '392', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:02:08');
INSERT INTO `t_log` VALUES ('125', '6', 'admin', '用户登录', '375', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:17:39');
INSERT INTO `t_log` VALUES ('126', '6', 'admin', '用户登录', '360', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:29:49');
INSERT INTO `t_log` VALUES ('127', '6', 'admin', '用户登录', '353', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:48:27');
INSERT INTO `t_log` VALUES ('128', '6', 'admin', '用户登录', '382', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:55:25');
INSERT INTO `t_log` VALUES ('129', '6', 'admin', '用户登录', '348', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 17:59:29');
INSERT INTO `t_log` VALUES ('130', '6', 'admin', '用户登录', '360', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-15 18:00:47');
INSERT INTO `t_log` VALUES ('131', '6', 'admin', '用户登录', '2321', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 10:32:28');
INSERT INTO `t_log` VALUES ('132', '6', 'admin', '用户登录', '2006', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 10:47:34');
INSERT INTO `t_log` VALUES ('133', '6', 'admin', '用户登录', '2092', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 10:51:31');
INSERT INTO `t_log` VALUES ('134', '6', 'admin', '用户登录', '1993', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 10:52:55');
INSERT INTO `t_log` VALUES ('135', '6', 'admin', '用户登录', '2422', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 10:54:33');
INSERT INTO `t_log` VALUES ('136', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 10:54:43');
INSERT INTO `t_log` VALUES ('137', '6', 'admin', '用户登录', '2163', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 11:00:45');
INSERT INTO `t_log` VALUES ('138', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:00:50');
INSERT INTO `t_log` VALUES ('139', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:01:38');
INSERT INTO `t_log` VALUES ('140', '6', 'admin', '添加菜单', '5', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:04:41');
INSERT INTO `t_log` VALUES ('141', '6', 'admin', '添加菜单', '4', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:05:16');
INSERT INTO `t_log` VALUES ('142', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:05:27');
INSERT INTO `t_log` VALUES ('143', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:07:21');
INSERT INTO `t_log` VALUES ('144', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:07:57');
INSERT INTO `t_log` VALUES ('145', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:09:52');
INSERT INTO `t_log` VALUES ('146', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:10:16');
INSERT INTO `t_log` VALUES ('147', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:15:59');
INSERT INTO `t_log` VALUES ('148', '6', 'admin', '保存菜单', '173', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=102, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:00');
INSERT INTO `t_log` VALUES ('149', '6', 'admin', '保存菜单', '153', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=103, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:02');
INSERT INTO `t_log` VALUES ('150', '6', 'admin', '保存菜单', '162', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=104, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:03');
INSERT INTO `t_log` VALUES ('151', '6', 'admin', '保存菜单', '159', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=105, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:04');
INSERT INTO `t_log` VALUES ('152', '6', 'admin', '保存菜单', '155', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=106, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:05');
INSERT INTO `t_log` VALUES ('153', '6', 'admin', '保存菜单', '157', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=107, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:07');
INSERT INTO `t_log` VALUES ('154', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:16:21');
INSERT INTO `t_log` VALUES ('155', '6', 'admin', '保存菜单', '156', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=108, parentId=0, name=, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:16:24');
INSERT INTO `t_log` VALUES ('156', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:17:53');
INSERT INTO `t_log` VALUES ('157', '6', 'admin', '保存菜单', '154', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=109, parentId=0, name=添加权限, url=/permission/add, perms=permission, type=null, icon=fa fa-bath, orderNum=1, createTime=null, updateTime=null)\"', '127.0.0.1', '2018-10-16 11:18:28');
INSERT INTO `t_log` VALUES ('158', '6', 'admin', '用户登录', '1956', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 11:27:04');
INSERT INTO `t_log` VALUES ('159', '6', 'admin', '退出登录', '1', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@4c6920ce\"', '127.0.0.1', '2018-10-16 11:29:51');
INSERT INTO `t_log` VALUES ('160', '6', 'admin', '用户登录', '322', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 11:29:58');
INSERT INTO `t_log` VALUES ('161', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:31:17');
INSERT INTO `t_log` VALUES ('162', '6', 'admin', '用户登录', '2042', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 11:32:44');
INSERT INTO `t_log` VALUES ('163', '6', 'admin', '添加菜单', '157', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=109, pName=添加权限}->109\"', '127.0.0.1', '2018-10-16 11:33:14');
INSERT INTO `t_log` VALUES ('164', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->{pId=0, pName=根目录}->0\"', '127.0.0.1', '2018-10-16 11:34:06');
INSERT INTO `t_log` VALUES ('165', '6', 'admin', '用户登录', '2124', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 11:40:47');
INSERT INTO `t_log` VALUES ('166', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 11:57:01');
INSERT INTO `t_log` VALUES ('167', '6', 'admin', '用户登录', '411', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 14:48:33');
INSERT INTO `t_log` VALUES ('168', '6', 'admin', '用户登录', '507', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 15:25:03');
INSERT INTO `t_log` VALUES ('169', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:25:58');
INSERT INTO `t_log` VALUES ('170', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:26:32');
INSERT INTO `t_log` VALUES ('171', '6', 'admin', '用户登录', '370', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 15:27:26');
INSERT INTO `t_log` VALUES ('172', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:27:39');
INSERT INTO `t_log` VALUES ('173', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:28:00');
INSERT INTO `t_log` VALUES ('174', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:28:17');
INSERT INTO `t_log` VALUES ('175', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:28:54');
INSERT INTO `t_log` VALUES ('176', '6', 'admin', '添加菜单', '209', 'top.cflwork.controller.PermissionController.add()', '\"->109\"', '127.0.0.1', '2018-10-16 15:29:01');
INSERT INTO `t_log` VALUES ('177', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:29:04');
INSERT INTO `t_log` VALUES ('178', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:29:45');
INSERT INTO `t_log` VALUES ('179', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:31:45');
INSERT INTO `t_log` VALUES ('180', '6', 'admin', '保存菜单', '252', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=110, parentId=0, name=asdga, url=, perms=, type=null, icon=fa fa-battery-4, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:31:52');
INSERT INTO `t_log` VALUES ('181', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:39:03');
INSERT INTO `t_log` VALUES ('182', '6', 'admin', '保存菜单', '151', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=111, parentId=0, name=21323, url=, perms=, type=null, icon=fa fa-archive, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:39:11');
INSERT INTO `t_log` VALUES ('183', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:42:05');
INSERT INTO `t_log` VALUES ('184', '6', 'admin', '保存菜单', '149', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=112, parentId=0, name=阿萨德发郭德纲, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:42:09');
INSERT INTO `t_log` VALUES ('185', '6', 'admin', '用户登录', '349', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 15:42:42');
INSERT INTO `t_log` VALUES ('186', '6', 'admin', '添加菜单', '5', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:42:48');
INSERT INTO `t_log` VALUES ('187', '6', 'admin', '保存菜单', '160', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=113, parentId=0, name=asdfasd, url=, perms=, type=null, icon=, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:42:51');
INSERT INTO `t_log` VALUES ('188', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:43:31');
INSERT INTO `t_log` VALUES ('189', '6', 'admin', '保存菜单', '153', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=114, parentId=0, name=asdfa, url=, perms=, type=null, icon=fa fa-asterisk, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:43:35');
INSERT INTO `t_log` VALUES ('190', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:43:38');
INSERT INTO `t_log` VALUES ('191', '6', 'admin', '保存菜单', '159', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=115, parentId=0, name=asdfawetdwert, url=, perms=, type=null, icon=fa fa-asterisk, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:43:43');
INSERT INTO `t_log` VALUES ('192', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:45:10');
INSERT INTO `t_log` VALUES ('193', '6', 'admin', '保存菜单', '167', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=116, parentId=0, name=etrt, url=, perms=, type=null, icon=fa fa-archive, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:45:16');
INSERT INTO `t_log` VALUES ('194', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:45:25');
INSERT INTO `t_log` VALUES ('195', '6', 'admin', '保存菜单', '159', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=117, parentId=0, name=etrtsdfs, url=, perms=, type=null, icon=fa fa-archive, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:45:29');
INSERT INTO `t_log` VALUES ('196', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:56:38');
INSERT INTO `t_log` VALUES ('197', '6', 'admin', '保存菜单', '157', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=118, parentId=0, name=阿斯顿发送到, url=, perms=, type=null, icon=fa fa-asterisk, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:56:44');
INSERT INTO `t_log` VALUES ('198', '6', 'admin', '添加菜单', '4', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:57:36');
INSERT INTO `t_log` VALUES ('199', '6', 'admin', '保存菜单', '159', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=119, parentId=0, name=阿斯顿发送到, url=, perms=, type=null, icon=fa fa-barcode, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:57:41');
INSERT INTO `t_log` VALUES ('200', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:58:37');
INSERT INTO `t_log` VALUES ('201', '6', 'admin', '保存菜单', '153', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=120, parentId=0, name=阿斯蒂芬, url=, perms=, type=null, icon=fa fa-bars, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:58:41');
INSERT INTO `t_log` VALUES ('202', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 15:58:45');
INSERT INTO `t_log` VALUES ('203', '6', 'admin', '保存菜单', '158', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=121, parentId=0, name=费大幅度, url=, perms=, type=null, icon=fa fa-battery-3, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 15:58:50');
INSERT INTO `t_log` VALUES ('204', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 16:06:34');
INSERT INTO `t_log` VALUES ('205', '6', 'admin', '保存菜单', '158', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=122, parentId=0, name=asdfa, url=, perms=, type=null, icon=fa fa-battery-4, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 16:06:39');
INSERT INTO `t_log` VALUES ('206', '6', 'admin', '用户登录', '2393', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 16:52:37');
INSERT INTO `t_log` VALUES ('207', '6', 'admin', '用户登录', '229', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->1111\"', '127.0.0.1', '2018-10-16 17:22:31');
INSERT INTO `t_log` VALUES ('208', '6', 'admin', '用户登录', '372', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 17:22:52');
INSERT INTO `t_log` VALUES ('209', '6', 'admin', '用户登录', '380', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 17:34:18');
INSERT INTO `t_log` VALUES ('210', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 18:04:03');
INSERT INTO `t_log` VALUES ('211', '6', 'admin', '用户登录', '402', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 18:17:50');
INSERT INTO `t_log` VALUES ('212', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 18:18:38');
INSERT INTO `t_log` VALUES ('213', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 18:18:58');
INSERT INTO `t_log` VALUES ('214', '6', 'admin', '保存菜单', '180', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=123, parentId=0, name=sdddd, url=, perms=, type=null, icon=fa fa-bell, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 18:19:04');
INSERT INTO `t_log` VALUES ('215', '6', 'admin', '用户登录', '2094', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 18:48:07');
INSERT INTO `t_log` VALUES ('216', '6', 'admin', '删除菜单', '151', 'top.cflwork.controller.PermissionController.remove()', '\"->123\"', '127.0.0.1', '2018-10-16 18:48:17');
INSERT INTO `t_log` VALUES ('217', '6', 'admin', '删除菜单', '164', 'top.cflwork.controller.PermissionController.remove()', '\"->122\"', '127.0.0.1', '2018-10-16 18:48:20');
INSERT INTO `t_log` VALUES ('218', '6', 'admin', '添加菜单', '4', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 18:51:25');
INSERT INTO `t_log` VALUES ('219', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 18:52:27');
INSERT INTO `t_log` VALUES ('220', '6', 'admin', '保存菜单', '189', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=124, parentId=0, name=11111, url=, perms=, type=null, icon=fa fa-bar-chart-o, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 18:52:33');
INSERT INTO `t_log` VALUES ('221', '6', 'admin', '用户登录', '2040', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 18:54:00');
INSERT INTO `t_log` VALUES ('222', '6', 'admin', '用户登录', '2050', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-16 18:56:01');
INSERT INTO `t_log` VALUES ('223', '6', 'admin', '编辑菜单', '143', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 18:56:08');
INSERT INTO `t_log` VALUES ('224', '6', 'admin', '编辑菜单', '170', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 18:58:50');
INSERT INTO `t_log` VALUES ('225', '6', 'admin', '编辑菜单', '170', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 18:59:14');
INSERT INTO `t_log` VALUES ('226', '6', 'admin', '更新菜单', '148', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=124, parentId=0, name=333333, url=, perms=, type=null, icon=fa fa-bar-chart-o, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 18:59:23');
INSERT INTO `t_log` VALUES ('227', '6', 'admin', '编辑菜单', '153', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 18:59:25');
INSERT INTO `t_log` VALUES ('228', '6', 'admin', '更新菜单', '127', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=124, parentId=0, name=333333, url=, perms=, type=null, icon=fa fa-bar-chart-o, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 18:59:30');
INSERT INTO `t_log` VALUES ('229', '6', 'admin', '编辑菜单', '167', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 18:59:36');
INSERT INTO `t_log` VALUES ('230', '6', 'admin', '更新菜单', '148', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=124, parentId=0, name=333333, url=, perms=, type=null, icon=fa fa-bar-chart-o, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 18:59:41');
INSERT INTO `t_log` VALUES ('231', '6', 'admin', '编辑菜单', '159', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 19:00:06');
INSERT INTO `t_log` VALUES ('232', '6', 'admin', '更新菜单', '128', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=124, parentId=0, name=333333, url=11111111, perms=111, type=null, icon=fa fa-bar-chart-o, orderNum=11, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:00:10');
INSERT INTO `t_log` VALUES ('233', '6', 'admin', '编辑菜单', '170', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->124\"', '127.0.0.1', '2018-10-16 19:00:13');
INSERT INTO `t_log` VALUES ('234', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:01:25');
INSERT INTO `t_log` VALUES ('235', '6', 'admin', '保存菜单', '170', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=125, parentId=0, name=2222, url=22, perms=2222, type=null, icon=fa fa-battery-4, orderNum=22222, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 19:01:31');
INSERT INTO `t_log` VALUES ('236', '6', 'admin', '删除菜单', '148', 'top.cflwork.controller.PermissionController.remove()', '\"->125\"', '127.0.0.1', '2018-10-16 19:04:03');
INSERT INTO `t_log` VALUES ('237', '6', 'admin', '删除菜单', '125', 'top.cflwork.controller.PermissionController.remove()', '\"->124\"', '127.0.0.1', '2018-10-16 19:04:07');
INSERT INTO `t_log` VALUES ('238', '6', 'admin', '删除菜单', '147', 'top.cflwork.controller.PermissionController.remove()', '\"->109\"', '127.0.0.1', '2018-10-16 19:04:11');
INSERT INTO `t_log` VALUES ('239', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:04:12');
INSERT INTO `t_log` VALUES ('240', '6', 'admin', '保存菜单', '127', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=126, parentId=0, name=333333, url=, perms=, type=null, icon=fa fa-battery-4, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 19:04:18');
INSERT INTO `t_log` VALUES ('241', '6', 'admin', '编辑菜单', '167', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:05:12');
INSERT INTO `t_log` VALUES ('242', '6', 'admin', '更新菜单', '145', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=126, parentId=0, name=333333, url=, perms=, type=0, icon=fa fa-battery-4, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:05:15');
INSERT INTO `t_log` VALUES ('243', '6', 'admin', '编辑菜单', '145', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:05:17');
INSERT INTO `t_log` VALUES ('244', '6', 'admin', '更新菜单', '128', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=126, parentId=0, name=333333, url=, perms=, type=2, icon=fa fa-battery-4, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:05:20');
INSERT INTO `t_log` VALUES ('245', '6', 'admin', '编辑菜单', '171', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:05:23');
INSERT INTO `t_log` VALUES ('246', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:05:34');
INSERT INTO `t_log` VALUES ('247', '6', 'admin', '添加菜单', '3', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:06:42');
INSERT INTO `t_log` VALUES ('248', '6', 'admin', '编辑菜单', '165', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:08:04');
INSERT INTO `t_log` VALUES ('249', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:08:17');
INSERT INTO `t_log` VALUES ('250', '6', 'admin', '编辑菜单', '173', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:08:58');
INSERT INTO `t_log` VALUES ('251', '6', 'admin', '添加菜单', '4', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:09:05');
INSERT INTO `t_log` VALUES ('252', '6', 'admin', '编辑菜单', '167', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:09:33');
INSERT INTO `t_log` VALUES ('253', '6', 'admin', '编辑菜单', '169', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:10:08');
INSERT INTO `t_log` VALUES ('254', '6', 'admin', '编辑菜单', '165', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:11:39');
INSERT INTO `t_log` VALUES ('255', '6', 'admin', '更新菜单', '144', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=126, parentId=0, name=333333, url=, perms=, type=2, icon=fa fa-at, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:11:47');
INSERT INTO `t_log` VALUES ('256', '6', 'admin', '编辑菜单', '140', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->126\"', '127.0.0.1', '2018-10-16 19:11:50');
INSERT INTO `t_log` VALUES ('257', '6', 'admin', '更新菜单', '120', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=126, parentId=0, name=333333, url=, perms=, type=2, icon=fa fa-asterisk, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:11:53');
INSERT INTO `t_log` VALUES ('258', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:14:59');
INSERT INTO `t_log` VALUES ('259', '6', 'admin', '保存菜单', '153', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=127, parentId=0, name=sadfd, url=, perms=, type=0, icon=fa fa-bars, orderNum=null, createTime=null, updateTime=null, pName=根目录)\"', '127.0.0.1', '2018-10-16 19:15:06');
INSERT INTO `t_log` VALUES ('260', '6', 'admin', '编辑菜单', '143', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->127\"', '127.0.0.1', '2018-10-16 19:15:16');
INSERT INTO `t_log` VALUES ('261', '6', 'admin', '编辑菜单', '140', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->127\"', '127.0.0.1', '2018-10-16 19:15:46');
INSERT INTO `t_log` VALUES ('262', '6', 'admin', '编辑菜单', '145', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->127\"', '127.0.0.1', '2018-10-16 19:16:03');
INSERT INTO `t_log` VALUES ('263', '6', 'admin', '更新菜单', '126', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=127, parentId=0, name=sadfd, url=, perms=, type=0, icon=fa fa-bell, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:16:07');
INSERT INTO `t_log` VALUES ('264', '6', 'admin', '编辑菜单', '174', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->127\"', '127.0.0.1', '2018-10-16 19:16:10');
INSERT INTO `t_log` VALUES ('265', '6', 'admin', '添加菜单', '0', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:16:12');
INSERT INTO `t_log` VALUES ('266', '6', 'admin', '添加菜单', '2', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:16:14');
INSERT INTO `t_log` VALUES ('267', '6', 'admin', '添加菜单', '172', 'top.cflwork.controller.PermissionController.add()', '\"->127\"', '127.0.0.1', '2018-10-16 19:16:59');
INSERT INTO `t_log` VALUES ('268', '6', 'admin', '编辑菜单', '173', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->127\"', '127.0.0.1', '2018-10-16 19:17:04');
INSERT INTO `t_log` VALUES ('269', '6', 'admin', '编辑菜单', '343', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->98\"', '127.0.0.1', '2018-10-16 19:17:09');
INSERT INTO `t_log` VALUES ('270', '6', 'admin', '更新菜单', '143', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=98, parentId=97, name=百度图表, url=/chart/graph_echarts.html, perms=, type=1, icon=fa fa-area-chart, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:17:22');
INSERT INTO `t_log` VALUES ('271', '6', 'admin', '添加菜单', '149', 'top.cflwork.controller.PermissionController.add()', '\"->127\"', '127.0.0.1', '2018-10-16 19:18:03');
INSERT INTO `t_log` VALUES ('272', '6', 'admin', '保存菜单', '579', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=128, parentId=127, name=, url=, perms=, type=2, icon=fa fa-bell, orderNum=null, createTime=null, updateTime=null, pName=sadfd)\"', '127.0.0.1', '2018-10-16 19:18:19');
INSERT INTO `t_log` VALUES ('273', '6', 'admin', '编辑菜单', '338', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->128\"', '127.0.0.1', '2018-10-16 19:18:25');
INSERT INTO `t_log` VALUES ('274', '6', 'admin', '更新菜单', '146', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=128, parentId=127, name=胜多负少的, url=, perms=, type=2, icon=fa fa-bell, orderNum=null, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-16 19:18:28');
INSERT INTO `t_log` VALUES ('275', '6', 'admin', '添加菜单', '1', 'top.cflwork.controller.PermissionController.add()', '\"->0\"', '127.0.0.1', '2018-10-16 19:19:34');
INSERT INTO `t_log` VALUES ('276', '6', 'admin', '删除菜单', '152', 'top.cflwork.controller.PermissionController.remove()', '\"->127\"', '127.0.0.1', '2018-10-16 19:19:39');
INSERT INTO `t_log` VALUES ('277', '6', 'admin', '删除菜单', '120', 'top.cflwork.controller.PermissionController.remove()', '\"->126\"', '127.0.0.1', '2018-10-16 19:19:43');
INSERT INTO `t_log` VALUES ('278', '6', 'admin', '编辑菜单', '332', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->98\"', '127.0.0.1', '2018-10-16 19:19:48');
INSERT INTO `t_log` VALUES ('279', '6', 'admin', '编辑菜单', '336', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->95\"', '127.0.0.1', '2018-10-16 19:20:01');
INSERT INTO `t_log` VALUES ('280', '6', 'admin', '用户登录', '2401', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:08:40');
INSERT INTO `t_log` VALUES ('281', '6', 'admin', '用户登录', '384', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:16:50');
INSERT INTO `t_log` VALUES ('282', '6', 'admin', '用户登录', '338', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:37:38');
INSERT INTO `t_log` VALUES ('283', '6', 'admin', '用户登录', '360', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:38:17');
INSERT INTO `t_log` VALUES ('284', '6', 'admin', '用户登录', '391', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:40:03');
INSERT INTO `t_log` VALUES ('285', '6', 'admin', '用户登录', '386', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:41:22');
INSERT INTO `t_log` VALUES ('286', '6', 'admin', '用户登录', '380', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:43:48');
INSERT INTO `t_log` VALUES ('287', '6', 'admin', '用户登录', '375', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:46:28');
INSERT INTO `t_log` VALUES ('288', '6', 'admin', '用户登录', '386', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:48:34');
INSERT INTO `t_log` VALUES ('289', '6', 'admin', '用户登录', '385', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:51:00');
INSERT INTO `t_log` VALUES ('290', '6', 'admin', '用户登录', '388', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 11:59:54');
INSERT INTO `t_log` VALUES ('291', '6', 'admin', '用户登录', '375', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 12:37:25');
INSERT INTO `t_log` VALUES ('292', '6', 'admin', '用户登录', '384', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 12:41:54');
INSERT INTO `t_log` VALUES ('293', '6', 'admin', '用户登录', '2086', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 13:16:56');
INSERT INTO `t_log` VALUES ('294', '6', 'admin', '用户登录', '2573', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 13:50:18');
INSERT INTO `t_log` VALUES ('295', '6', 'admin', '用户登录', '2080', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 13:51:57');
INSERT INTO `t_log` VALUES ('296', '6', 'admin', '用户登录', '2143', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 13:54:03');
INSERT INTO `t_log` VALUES ('297', '6', 'admin', '用户登录', '2401', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 13:56:22');
INSERT INTO `t_log` VALUES ('298', '6', 'admin', '用户登录', '2047', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:00:54');
INSERT INTO `t_log` VALUES ('299', '6', 'admin', '用户登录', '2096', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:03:57');
INSERT INTO `t_log` VALUES ('300', '6', 'admin', '用户登录', '2409', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:07:40');
INSERT INTO `t_log` VALUES ('301', '6', 'admin', '用户登录', '2010', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:14:46');
INSERT INTO `t_log` VALUES ('302', '6', 'admin', '用户登录', '2543', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:17:48');
INSERT INTO `t_log` VALUES ('303', '6', 'admin', '用户登录', '2073', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:26:52');
INSERT INTO `t_log` VALUES ('304', '6', 'admin', '用户登录', '2329', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:30:07');
INSERT INTO `t_log` VALUES ('305', '6', 'admin', '用户登录', '2170', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:32:21');
INSERT INTO `t_log` VALUES ('306', '6', 'admin', '用户登录', '2015', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:35:47');
INSERT INTO `t_log` VALUES ('307', '6', 'admin', '用户登录', '2144', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:40:09');
INSERT INTO `t_log` VALUES ('308', '6', 'admin', '用户登录', '2086', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:41:27');
INSERT INTO `t_log` VALUES ('309', '6', 'admin', '用户登录', '2186', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:44:39');
INSERT INTO `t_log` VALUES ('310', '6', 'admin', '用户登录', '2092', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:47:33');
INSERT INTO `t_log` VALUES ('311', '6', 'admin', '用户登录', '2332', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:52:42');
INSERT INTO `t_log` VALUES ('312', '6', 'admin', '用户登录', '2068', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:55:16');
INSERT INTO `t_log` VALUES ('313', '6', 'admin', '用户登录', '2180', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 14:58:30');
INSERT INTO `t_log` VALUES ('314', '6', 'admin', '用户登录', '393', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 16:26:20');
INSERT INTO `t_log` VALUES ('315', '6', 'admin', '用户登录', '380', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 17:09:30');
INSERT INTO `t_log` VALUES ('316', '6', 'admin', '用户登录', '2021', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 17:13:51');
INSERT INTO `t_log` VALUES ('317', '6', 'admin', '编辑菜单', '172', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->1\"', '127.0.0.1', '2018-10-17 17:15:08');
INSERT INTO `t_log` VALUES ('318', '6', 'admin', '编辑菜单', '382', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->128\"', '127.0.0.1', '2018-10-17 17:15:16');
INSERT INTO `t_log` VALUES ('319', '6', 'admin', '编辑菜单', '172', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->1\"', '127.0.0.1', '2018-10-17 17:15:19');
INSERT INTO `t_log` VALUES ('320', '6', 'admin', '编辑菜单', '189', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->1\"', '127.0.0.1', '2018-10-17 17:16:30');
INSERT INTO `t_log` VALUES ('321', '6', 'admin', '更新菜单', '142', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=1, parentId=0, name=基本信息, url=, perms=, type=0, icon=fa fa-user, orderNum=0, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-17 17:17:10');
INSERT INTO `t_log` VALUES ('322', '6', 'admin', '删除菜单', '144', 'top.cflwork.controller.PermissionController.remove()', '\"->78\"', '127.0.0.1', '2018-10-17 17:17:47');
INSERT INTO `t_log` VALUES ('323', '6', 'admin', '删除菜单', '143', 'top.cflwork.controller.PermissionController.remove()', '\"->83\"', '127.0.0.1', '2018-10-17 17:18:10');
INSERT INTO `t_log` VALUES ('324', '6', 'admin', '删除菜单', '130', 'top.cflwork.controller.PermissionController.remove()', '\"->81\"', '127.0.0.1', '2018-10-17 17:18:14');
INSERT INTO `t_log` VALUES ('325', '6', 'admin', '删除菜单', '140', 'top.cflwork.controller.PermissionController.remove()', '\"->80\"', '127.0.0.1', '2018-10-17 17:18:16');
INSERT INTO `t_log` VALUES ('326', '6', 'admin', '删除菜单', '135', 'top.cflwork.controller.PermissionController.remove()', '\"->79\"', '127.0.0.1', '2018-10-17 17:18:20');
INSERT INTO `t_log` VALUES ('327', '6', 'admin', '删除菜单', '139', 'top.cflwork.controller.PermissionController.remove()', '\"->128\"', '127.0.0.1', '2018-10-17 17:18:23');
INSERT INTO `t_log` VALUES ('328', '6', 'admin', '编辑菜单', '299', 'top.cflwork.controller.PermissionController.edit()', '\"->{}->71\"', '127.0.0.1', '2018-10-17 17:18:29');
INSERT INTO `t_log` VALUES ('329', '6', 'admin', '更新菜单', '133', 'top.cflwork.controller.PermissionController.update()', '\"->PermissionVo(id=71, parentId=1, name=公司信息, url=/company/updateCompanyPage, perms=company:updateCompanyPage, type=1, icon=, orderNum=2, createTime=null, updateTime=null, pName=null)\"', '127.0.0.1', '2018-10-17 17:19:29');
INSERT INTO `t_log` VALUES ('330', '6', 'admin', '添加菜单', '167', 'top.cflwork.controller.PermissionController.add()', '\"->1\"', '127.0.0.1', '2018-10-17 17:19:37');
INSERT INTO `t_log` VALUES ('331', '6', 'admin', '保存菜单', '166', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=129, parentId=1, name=个人信息, url=/user/bossInfoPage, perms=user:bossInfoPage, type=0, icon=, orderNum=null, createTime=null, updateTime=null, pName=基本信息)\"', '127.0.0.1', '2018-10-17 17:20:16');
INSERT INTO `t_log` VALUES ('332', '6', 'admin', '添加菜单', '153', 'top.cflwork.controller.PermissionController.add()', '\"->1\"', '127.0.0.1', '2018-10-17 17:20:21');
INSERT INTO `t_log` VALUES ('333', '6', 'admin', '保存菜单', '138', 'top.cflwork.controller.PermissionController.save()', '\"->PermissionVo(id=130, parentId=1, name=安全退出, url=/user/exit, perms=user:exit, type=0, icon=, orderNum=null, createTime=null, updateTime=null, pName=基本信息)\"', '127.0.0.1', '2018-10-17 17:20:40');
INSERT INTO `t_log` VALUES ('334', '6', 'admin', '退出登录', '2', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@13c5bd60\"', '127.0.0.1', '2018-10-17 17:21:04');
INSERT INTO `t_log` VALUES ('335', '6', 'admin', '用户登录', '335', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 17:21:11');
INSERT INTO `t_log` VALUES ('336', '6', 'admin', '退出登录', '4', 'top.cflwork.controller.UserController.exit()', '\"->org.apache.catalina.session.StandardSessionFacade@13c5bd60\"', '127.0.0.1', '2018-10-17 17:25:22');
INSERT INTO `t_log` VALUES ('337', '6', 'admin', '用户登录', '306', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 17:25:29');
INSERT INTO `t_log` VALUES ('338', '6', 'admin', '用户登录', '2288', 'top.cflwork.controller.UserController.getInfo()', '\"->admin->111111\"', '127.0.0.1', '2018-10-17 18:00:05');

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_module
-- ----------------------------

-- ----------------------------
-- Table structure for t_outcome
-- ----------------------------
DROP TABLE IF EXISTS `t_outcome`;
CREATE TABLE `t_outcome` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支出编号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司编号',
  `hotel_id` bigint(20) DEFAULT NULL COMMENT '酒店编号',
  `subject_id` bigint(20) DEFAULT NULL COMMENT '支出科目编号',
  `outcomme_name` varchar(50) DEFAULT NULL COMMENT '支出名称',
  `remark` varchar(300) DEFAULT NULL COMMENT '支出备注',
  `start_time` date DEFAULT NULL COMMENT '开始支出时间',
  `end_time` date DEFAULT NULL COMMENT '结束支出时间',
  `money` double(20,2) DEFAULT NULL COMMENT '支出总金额',
  `day_money` double(20,2) DEFAULT NULL COMMENT '日支出金额',
  `outcome_status` tinyint(4) DEFAULT NULL COMMENT '支出结算状态',
  `is_active` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='酒店的支出表，记录哪个公司旗下的哪个酒店，的支出明细';

-- ----------------------------
-- Records of t_outcome
-- ----------------------------
INSERT INTO `t_outcome` VALUES ('1', '1', '2', '1', '1', '1', '2018-09-11', '2018-09-21', '8545.00', '854.50', '1', '0', '2018-09-11 16:10:21');
INSERT INTO `t_outcome` VALUES ('2', '1', '4', '1', '1', '1', '2018-09-12', '2018-10-30', '45435.00', '946.56', '0', '0', '2018-09-18 17:04:30');
INSERT INTO `t_outcome` VALUES ('3', '1', '2', '2', '1', '支出', '2018-09-20', '2018-09-30', '10545.00', '1054.50', '1', '0', '2018-09-18 17:33:59');
INSERT INTO `t_outcome` VALUES ('4', '1', '2', '1', '1231', '从VB小', '2018-09-10', '2018-09-20', '453.00', '45.30', '0', '0', '2018-09-18 17:25:56');
INSERT INTO `t_outcome` VALUES ('5', '1', '2', '1', '1231', '如果符合地方', '2018-09-10', '2018-09-20', '4666.00', '466.60', '0', '1', '2018-09-18 17:32:23');

-- ----------------------------
-- Table structure for t_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `t_payment_type`;
CREATE TABLE `t_payment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_payment_type
-- ----------------------------
INSERT INTO `t_payment_type` VALUES ('1', '支付宝', '支付宝支付', '2018-01-17 20:09:24', '0', '1');
INSERT INTO `t_payment_type` VALUES ('2', '微信', '微信支付', '2018-01-17 20:09:33', '0', '1');
INSERT INTO `t_payment_type` VALUES ('3', '银联', '银联支付', '2018-01-17 20:09:45', '0', '1');
INSERT INTO `t_payment_type` VALUES ('4', '现金', '现金支付', '2018-01-17 20:09:58', '0', '1');
INSERT INTO `t_payment_type` VALUES ('5', '通联', '通联支付', '2018-01-19 13:56:13', '0', '1');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '0', '基本信息', '', '', '0', 'fa fa-user', '0', '2017-08-09 22:49:47', null);
INSERT INTO `t_permission` VALUES ('2', '3', '系统菜单', 'sys/menu/', 'sys:menu:menu', '1', 'fa fa-th-list', '2', '2017-08-09 22:55:15', null);
INSERT INTO `t_permission` VALUES ('3', '0', '系统管理', null, null, '0', 'fa fa-desktop', '1', '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `t_permission` VALUES ('6', '3', '用户管理', 'sys/user/', 'sys:user:user', '1', 'fa fa-user', '0', '2017-08-10 14:12:11', null);
INSERT INTO `t_permission` VALUES ('7', '3', '角色管理', 'sys/role', 'sys:role:role', '1', 'fa fa-paw', '1', '2017-08-10 14:13:19', null);
INSERT INTO `t_permission` VALUES ('12', '6', '新增', '', 'sys:user:add', '2', '', '0', '2017-08-14 10:51:35', null);
INSERT INTO `t_permission` VALUES ('13', '6', '编辑', '', 'sys:user:edit', '2', '', '0', '2017-08-14 10:52:06', null);
INSERT INTO `t_permission` VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '0', '2017-08-14 10:52:24', null);
INSERT INTO `t_permission` VALUES ('15', '7', '新增', '', 'sys:role:add', '2', '', '0', '2017-08-14 10:56:37', null);
INSERT INTO `t_permission` VALUES ('20', '2', '新增', '', 'sys:menu:add', '2', '', '0', '2017-08-14 10:59:32', null);
INSERT INTO `t_permission` VALUES ('21', '2', '编辑', '', 'sys:menu:edit', '2', '', '0', '2017-08-14 10:59:56', null);
INSERT INTO `t_permission` VALUES ('22', '2', '删除', '', 'sys:menu:remove', '2', '', '0', '2017-08-14 11:00:26', null);
INSERT INTO `t_permission` VALUES ('24', '6', '批量删除', '', 'sys:user:batchRemove', '2', '', '0', '2017-08-14 17:27:18', null);
INSERT INTO `t_permission` VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '0', '2017-08-14 17:27:43', null);
INSERT INTO `t_permission` VALUES ('26', '6', '重置密码', '', 'sys:user:resetPwd', '2', '', '0', '2017-08-14 17:28:34', null);
INSERT INTO `t_permission` VALUES ('27', '91', '系统日志', 'common/log', 'common:log', '1', 'fa fa-warning', '0', '2017-08-14 22:11:53', null);
INSERT INTO `t_permission` VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '0', '2017-08-14 22:30:22', null);
INSERT INTO `t_permission` VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '0', '2017-08-14 22:30:43', null);
INSERT INTO `t_permission` VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '0', '2017-08-14 22:31:02', null);
INSERT INTO `t_permission` VALUES ('48', '77', '代码生成', 'common/generator', 'common:generator', '1', 'fa fa-code', '3', null, null);
INSERT INTO `t_permission` VALUES ('49', '0', '博客管理', '', '', '0', 'fa fa-rss', '6', null, null);
INSERT INTO `t_permission` VALUES ('50', '49', '文章列表', 'blog/bContent', 'blog:bContent:bContent', '1', 'fa fa-file-image-o', '1', null, null);
INSERT INTO `t_permission` VALUES ('51', '50', '新增', '', 'blog:bContent:add', '2', '', null, null, null);
INSERT INTO `t_permission` VALUES ('55', '7', '编辑', '', 'sys:role:edit', '2', '', null, null, null);
INSERT INTO `t_permission` VALUES ('56', '7', '删除', '', 'sys:role:remove', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('57', '91', '运行监控', '/druid/index.html', '', '1', 'fa fa-caret-square-o-right', '1', null, null);
INSERT INTO `t_permission` VALUES ('58', '50', '编辑', '', 'blog:bContent:edit', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('59', '50', '删除', '', 'blog:bContent:remove', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('60', '50', '批量删除', '', 'blog:bContent:batchRemove', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('61', '2', '批量删除', '', 'sys:menu:batchRemove', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('62', '7', '批量删除', '', 'sys:role:batchRemove', '2', null, null, null, null);
INSERT INTO `t_permission` VALUES ('68', '49', '发布文章', '/blog/bContent/add', 'blog:bContent:add', '1', 'fa fa-edit', '0', null, null);
INSERT INTO `t_permission` VALUES ('71', '1', '公司信息', '/company/updateCompanyPage', 'company:updateCompanyPage', '1', '', '2', null, null);
INSERT INTO `t_permission` VALUES ('72', '77', '计划任务', 'common/job', 'common:taskScheduleJob', '1', 'fa fa-hourglass-1', '4', null, null);
INSERT INTO `t_permission` VALUES ('73', '3', '部门管理', '/system/sysDept', 'system:sysDept:sysDept', '1', 'fa fa-users', '3', null, null);
INSERT INTO `t_permission` VALUES ('74', '73', '增加', '/system/sysDept/add', 'system:sysDept:add', '2', null, '1', null, null);
INSERT INTO `t_permission` VALUES ('75', '73', '刪除', 'system/sysDept/remove', 'system:sysDept:remove', '2', null, '2', null, null);
INSERT INTO `t_permission` VALUES ('76', '73', '编辑', '/system/sysDept/edit', 'system:sysDept:edit', '2', null, '3', null, null);
INSERT INTO `t_permission` VALUES ('77', '0', '系统工具', '', '', '0', 'fa fa-gear', '4', null, null);
INSERT INTO `t_permission` VALUES ('84', '0', '办公管理', '', '', '0', 'fa fa-laptop', '5', null, null);
INSERT INTO `t_permission` VALUES ('85', '84', '通知公告', 'oa/notify', 'oa:notify:notify', '1', 'fa fa-pencil-square', null, null, null);
INSERT INTO `t_permission` VALUES ('86', '85', '新增', 'oa/notify/add', 'oa:notify:add', '2', 'fa fa-plus', '1', null, null);
INSERT INTO `t_permission` VALUES ('87', '85', '编辑', 'oa/notify/edit', 'oa:notify:edit', '2', 'fa fa-pencil-square-o', '2', null, null);
INSERT INTO `t_permission` VALUES ('88', '85', '删除', 'oa/notify/remove', 'oa:notify:remove', '2', 'fa fa-minus', null, null, null);
INSERT INTO `t_permission` VALUES ('89', '85', '批量删除', 'oa/notify/batchRemove', 'oa:notify:batchRemove', '2', '', null, null, null);
INSERT INTO `t_permission` VALUES ('90', '84', '我的通知', 'oa/notify/selfNotify', '', '1', 'fa fa-envelope-square', null, null, null);
INSERT INTO `t_permission` VALUES ('91', '0', '系统监控', '', '', '0', 'fa fa-video-camera', '5', null, null);
INSERT INTO `t_permission` VALUES ('92', '91', '在线用户', 'sys/online', '', '1', 'fa fa-user', null, null, null);
INSERT INTO `t_permission` VALUES ('93', '0', '工作流程', '', '', '0', 'fa fa-print', '6', null, null);
INSERT INTO `t_permission` VALUES ('94', '93', '模型管理', 'activiti/model', '', '1', 'fa fa-sort-amount-asc', null, null, null);
INSERT INTO `t_permission` VALUES ('95', '94', '全部权限', '', 'activiti:model', '2', '', null, null, null);
INSERT INTO `t_permission` VALUES ('96', '93', '流程管理', 'activiti/process', '', '1', 'fa fa-flag', null, null, null);
INSERT INTO `t_permission` VALUES ('97', '0', '图表管理', '', '', '0', 'fa fa-bar-chart', '7', null, null);
INSERT INTO `t_permission` VALUES ('98', '97', '百度图表', '/chart/graph_echarts.html', '', '1', 'fa fa-area-chart', null, null, null);
INSERT INTO `t_permission` VALUES ('99', '96', '所有权限', '', 'act:process', '2', '', null, null, null);
INSERT INTO `t_permission` VALUES ('101', '93', '待办任务', 'activiti/task/todo', '', '1', '', null, null, null);
INSERT INTO `t_permission` VALUES ('129', '1', '个人信息', '/user/bossInfoPage', 'user:bossInfoPage', '0', '', null, '2018-10-17 17:20:15', null);
INSERT INTO `t_permission` VALUES ('130', '1', '安全退出', '/user/exit', 'user:exit', '0', '', null, '2018-10-17 17:20:39', null);

-- ----------------------------
-- Table structure for t_price_item
-- ----------------------------
DROP TABLE IF EXISTS `t_price_item`;
CREATE TABLE `t_price_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `businessman_id` bigint(20) DEFAULT NULL,
  `hotel_type_id` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_price_item
-- ----------------------------
INSERT INTO `t_price_item` VALUES ('170', '41', '10', '140', '0', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('171', '41', '11', '160', '0', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('172', '41', '12', '185', '0', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('173', '41', '13', '190', '0', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('174', '41', '14', '220', '2', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('175', '41', '10', '140', '1', '0', '2018-03-26');
INSERT INTO `t_price_item` VALUES ('176', '41', '11', '200', '0', '0', '2018-03-26');
INSERT INTO `t_price_item` VALUES ('177', '41', '12', '220', '0', '0', '2018-03-26');
INSERT INTO `t_price_item` VALUES ('178', '41', '13', '240', '0', '0', '2018-03-26');
INSERT INTO `t_price_item` VALUES ('179', '41', '14', '260', '0', '0', '2018-03-26');
INSERT INTO `t_price_item` VALUES ('183', '50', '10', '170', '1', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('184', '50', '10', '170', '1', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('187', '41', '12', '100', '6', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('188', '41', '13', '150', '1', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('189', '41', '14', '180', '3', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('190', '66', '14', '180', '2', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('191', '66', '14', '180', '2', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('194', '45', '13', '100', '0', '0', '2018-03-27');
INSERT INTO `t_price_item` VALUES ('196', '41', '11', '90', '1', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('197', '66', '11', '100', '2', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('198', '66', '11', '100', '2', '0', '2018-03-29');
INSERT INTO `t_price_item` VALUES ('199', '66', '12', '130', '2', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('200', '66', '12', '130', '2', '0', '2018-03-29');
INSERT INTO `t_price_item` VALUES ('201', '66', '13', '160', '2', '0', '2018-03-28');
INSERT INTO `t_price_item` VALUES ('202', '66', '13', '160', '2', '0', '2018-03-29');
INSERT INTO `t_price_item` VALUES ('203', '66', '14', '180', '2', '0', '2018-03-29');
INSERT INTO `t_price_item` VALUES ('208', '66', '10', '260', '1', '0', '2018-03-30');
INSERT INTO `t_price_item` VALUES ('209', '66', '10', '260', '1', '0', '2018-03-31');
INSERT INTO `t_price_item` VALUES ('210', '66', '11', '280', '1', '0', '2018-03-30');
INSERT INTO `t_price_item` VALUES ('211', '66', '11', '280', '1', '0', '2018-03-31');

-- ----------------------------
-- Table structure for t_process
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `path` varchar(36) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_deploy` tinyint(4) NOT NULL,
  `deploy_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_process
-- ----------------------------

-- ----------------------------
-- Table structure for t_rent_pay
-- ----------------------------
DROP TABLE IF EXISTS `t_rent_pay`;
CREATE TABLE `t_rent_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `master_id` bigint(20) DEFAULT NULL COMMENT '业主编号',
  `hotel_id` bigint(20) NOT NULL COMMENT '酒店编号',
  `company_id` bigint(20) NOT NULL COMMENT '公司编号',
  `baodi_pay` decimal(18,2) NOT NULL COMMENT '保底金额',
  `pay_time` int(11) NOT NULL COMMENT '支付时间周期',
  `pay_type` int(11) NOT NULL COMMENT '支付类型',
  `fact_pay_time_start` date DEFAULT NULL COMMENT '合同开始时间',
  `fact_pay_time_end` date DEFAULT NULL COMMENT '合同结束时间',
  `pay_period_start` date NOT NULL COMMENT '当前期支付开始时间',
  `pay_period_end` date NOT NULL COMMENT '当前期支付结束时间',
  `is_cash` int(11) NOT NULL COMMENT '是否结算',
  `description` varchar(500) DEFAULT NULL COMMENT '说明',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_active` tinyint(4) NOT NULL COMMENT '是否激活',
  `house_id` varchar(30) NOT NULL COMMENT '房间编号',
  `sum_pay` double(20,2) DEFAULT NULL COMMENT '总额',
  `area` double(20,2) DEFAULT NULL COMMENT '房间总面积',
  `pay_money_type` int(255) DEFAULT NULL COMMENT '支付方式，有成本，或者无成本',
  `pay_proportion` float(10,2) DEFAULT NULL COMMENT '分成比例',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `hotel_id` (`hotel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rent_pay
-- ----------------------------
INSERT INTO `t_rent_pay` VALUES ('1', '1', '2', '1', '0.00', '3', '1', '2018-09-27', '2021-09-27', '2018-09-27', '2018-10-27', '0', '房源结算总数', '2018-09-27 10:53:02', '0', '7', '0.00', '30.00', '0', '0.25');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '总管理员', '总管理员', '2017-11-15 12:39:18', '0');
INSERT INTO `t_role` VALUES ('2', '店长', '店长', '2017-11-15 12:41:53', '0');
INSERT INTO `t_role` VALUES ('3', '录入员', '录入员', '2017-11-15 12:42:01', '0');
INSERT INTO `t_role` VALUES ('5', '审核员', '审核员', '2017-11-27 22:26:53', '0');
INSERT INTO `t_role` VALUES ('6', '管理员', '管理员', '2018-01-16 20:25:33', '0');
INSERT INTO `t_role` VALUES ('7', '酒店审核员', '酒店审核员', '2018-01-16 20:54:00', '0');
INSERT INTO `t_role` VALUES ('8', '酒店录入员', '酒店录入员', '2018-01-17 21:20:30', '0');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `permission_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  `is_active` tinyint(255) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3140 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('367', '44', '1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('368', '44', '32', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('369', '44', '33', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('370', '44', '34', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('371', '44', '35', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('372', '44', '28', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('373', '44', '29', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('374', '44', '30', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('375', '44', '38', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('376', '44', '4', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('377', '44', '27', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('378', '45', '38', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('379', '46', '3', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('380', '46', '20', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('381', '46', '21', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('382', '46', '22', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('383', '46', '23', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('384', '46', '11', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('385', '46', '12', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('386', '46', '13', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('387', '46', '14', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('388', '46', '24', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('389', '46', '25', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('390', '46', '26', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('391', '46', '15', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('392', '46', '2', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('393', '46', '6', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('394', '46', '7', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('598', '50', '38', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('632', '38', '42', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('737', '51', '38', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('738', '51', '39', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('739', '51', '40', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('740', '51', '41', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('741', '51', '4', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('742', '51', '32', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('743', '51', '33', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('744', '51', '34', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('745', '51', '35', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('746', '51', '27', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('747', '51', '28', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('748', '51', '29', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('749', '51', '30', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('750', '51', '1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1064', '54', '53', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1095', '55', '2', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1096', '55', '6', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1097', '55', '7', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1098', '55', '3', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1099', '55', '50', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1100', '55', '49', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1101', '55', '1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1856', '53', '28', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1857', '53', '29', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1858', '53', '30', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1859', '53', '27', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1860', '53', '57', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1861', '53', '71', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1862', '53', '48', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1863', '53', '72', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1864', '53', '1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1865', '53', '7', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1866', '53', '55', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1867', '53', '56', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1868', '53', '62', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1869', '53', '15', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1870', '53', '2', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1871', '53', '61', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1872', '53', '20', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1873', '53', '21', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('1874', '53', '22', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2084', '56', '68', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2085', '56', '60', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2086', '56', '59', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2087', '56', '58', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2088', '56', '51', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2089', '56', '50', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2090', '56', '49', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2243', '48', '72', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2247', '63', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2248', '63', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2249', '63', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2250', '63', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2251', '63', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2252', '64', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2253', '64', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2254', '64', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2255', '64', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2256', '64', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2257', '64', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2258', '65', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2259', '65', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2260', '65', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2262', '67', '48', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2263', '68', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2264', '68', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2265', '69', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2266', '69', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2267', '69', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2268', '69', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2269', '69', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2270', '69', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2271', '70', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2272', '70', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2273', '70', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2274', '70', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2275', '70', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2276', '70', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2277', '71', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2278', '72', '59', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2279', '73', '48', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2280', '74', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2281', '74', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2282', '75', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2283', '75', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2284', '76', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2285', '76', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2286', '76', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2287', '76', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2288', '76', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2289', '76', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2292', '78', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2293', '78', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2294', '78', null, '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2295', '78', null, '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2296', '78', null, '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2308', '80', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2309', '80', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2310', '80', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2311', '80', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2312', '80', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2328', '79', '72', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2329', '79', '48', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2330', '79', '77', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2331', '79', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2332', '79', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2333', '79', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2334', '79', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2335', '79', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2336', '79', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2337', '79', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2338', '77', '89', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2339', '77', '88', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2340', '77', '87', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2341', '77', '86', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2342', '77', '85', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2343', '77', '84', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2344', '77', '72', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2345', '77', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2346', '77', '77', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2974', '57', '93', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2975', '57', '99', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2976', '57', '95', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2977', '57', '101', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2978', '57', '96', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2979', '57', '94', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2980', '57', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2981', '58', '93', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2982', '58', '99', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2983', '58', '95', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2984', '58', '101', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2985', '58', '96', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2986', '58', '94', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('2987', '58', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3050', '2', '97', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3051', '2', '98', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3052', '2', '93', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3053', '2', '99', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3054', '2', '95', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3055', '2', '101', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3056', '2', '96', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3057', '2', '94', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3058', '2', '91', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3059', '2', '30', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3060', '2', '29', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3061', '2', '28', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3062', '2', '92', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3063', '2', '57', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3064', '2', '27', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3065', '2', '-1', '0', '2018-10-17 13:16:33');
INSERT INTO `t_role_permission` VALUES ('3069', '23', '98', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3070', '23', '97', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3071', '23', '93', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3072', '23', '99', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3073', '23', '95', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3074', '23', '101', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3075', '23', '96', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3076', '23', '94', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3077', '23', '-1', '0', '2018-10-17 14:59:24');
INSERT INTO `t_role_permission` VALUES ('3078', '1', '98', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3079', '1', '101', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3080', '1', '99', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3081', '1', '95', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3082', '1', '92', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3083', '1', '57', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3084', '1', '30', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3085', '1', '29', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3086', '1', '28', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3087', '1', '90', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3088', '1', '89', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3089', '1', '88', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3090', '1', '87', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3091', '1', '86', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3092', '1', '72', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3093', '1', '48', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3094', '1', '68', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3095', '1', '60', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3096', '1', '59', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3097', '1', '58', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3098', '1', '51', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3099', '1', '76', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3100', '1', '75', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3101', '1', '74', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3102', '1', '62', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3103', '1', '56', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3104', '1', '55', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3105', '1', '15', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3106', '1', '26', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3107', '1', '25', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3108', '1', '24', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3109', '1', '14', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3110', '1', '13', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3111', '1', '12', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3112', '1', '61', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3113', '1', '22', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3114', '1', '21', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3115', '1', '20', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3116', '1', '83', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3117', '1', '81', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3118', '1', '80', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3119', '1', '79', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3120', '1', '71', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3121', '1', '97', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3122', '1', '96', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3123', '1', '94', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3124', '1', '93', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3125', '1', '27', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3126', '1', '91', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3127', '1', '85', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3128', '1', '84', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3129', '1', '77', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3130', '1', '50', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3131', '1', '49', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3132', '1', '73', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3133', '1', '7', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3134', '1', '6', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3135', '1', '2', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3136', '1', '3', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3137', '1', '78', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3138', '1', '1', '0', '2018-10-17 17:09:43');
INSERT INTO `t_role_permission` VALUES ('3139', '1', '-1', '0', '2018-10-17 17:09:43');

-- ----------------------------
-- Table structure for t_service_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_service_subject`;
CREATE TABLE `t_service_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_service_subject
-- ----------------------------
INSERT INTO `t_service_subject` VALUES ('1', '旅游', '旅游增值科目', '2018-01-17 20:29:19', '0', '1');
INSERT INTO `t_service_subject` VALUES ('2', '包车', '包车增值科目', '2018-01-17 20:29:29', '0', '1');
INSERT INTO `t_service_subject` VALUES ('3', '饮料消费', '饮料消费增值科目', '2018-01-17 20:29:46', '0', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `identity` varchar(18) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `alipay` varchar(100) DEFAULT NULL,
  `qq_openid` varchar(100) DEFAULT NULL,
  `weibo_openid` varchar(100) DEFAULT NULL,
  `wechat_openid` varchar(100) DEFAULT NULL,
  `headicon` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `account_name` (`account_name`) USING BTREE,
  UNIQUE KEY `qq_openid` (`qq_openid`) USING BTREE,
  UNIQUE KEY `weibo_openid` (`weibo_openid`) USING BTREE,
  UNIQUE KEY `wechat_openid` (`wechat_openid`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('6', '275300091@qq.com', '15679760329', 'admin', '96e79218965eb72c92a549dd5a330112', 'admin', '360706199712200618', 'admin', '0', '2017-11-26', '21', '江西赣州章贡区宁都县', '275300091', 'xljx_888888', null, null, null, null, '/upload/5000513618783.jpg', null, '2017-11-15 12:45:01', '1', '0');
INSERT INTO `t_user` VALUES ('7', '275300090@qq.com', '15679760321', 'test', '96e79218965eb72c92a549dd5a330112', '15679760321', '360730199712200617', 'test', '0', '2017-11-26', '21', '江西赣州章贡区', '275300091', 'xljx#_888888', null, null, null, null, 'static/img/face.gif', null, '2017-11-21 21:02:57', '1', '0');
INSERT INTO `t_user` VALUES ('27', null, '15679760323', null, '96e79218965eb72c92a549dd5a330112', '15679760323', '11111111111', '酒店审核员', null, null, null, null, null, null, null, null, null, null, 'static/img/face.gif', null, '2018-01-17 21:37:11', '1', '0');
INSERT INTO `t_user` VALUES ('28', null, '15679760324', null, '96e79218965eb72c92a549dd5a330112', '15679760324', '111111111', '酒店录入员', null, null, null, null, null, null, null, null, null, null, 'static/img/face.gif', null, '2018-01-17 21:37:45', '1', '0');
INSERT INTO `t_user` VALUES ('29', null, '15679760325', null, '96e79218965eb72c92a549dd5a330112', '15679760325', '11111111', '录入员', null, null, null, null, null, null, null, null, null, null, 'static/img/face.gif', null, '2018-01-17 21:39:36', '1', '0');
INSERT INTO `t_user` VALUES ('30', null, '15679760000', null, '96e79218965eb72c92a549dd5a330112', '15679760000', '360730199712200666', '管理员', null, null, null, null, null, null, null, null, null, null, 'static/img/face.gif', null, '2018-02-06 20:00:14', '1', '0');
INSERT INTO `t_user` VALUES ('31', '27530009@qq.com', '15679760322', 'test1', '96e79218965eb72c92a549dd5a330112', '15679760321', '360730199712200617', 'test1', '0', '2017-11-26', '21', '江西赣州章贡区', '275300091', 'xljx#_888888', null, null, null, null, 'static/img/face.gif', null, '2017-11-21 21:02:57', '1', '0');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '6', '1', '2017-11-15 12:45:01', '0');
INSERT INTO `t_user_role` VALUES ('2', '7', '2', '2017-11-21 21:02:57', '0');
INSERT INTO `t_user_role` VALUES ('19', '27', '7', '2018-01-17 21:37:11', '0');
INSERT INTO `t_user_role` VALUES ('20', '28', '8', '2018-01-17 21:37:45', '0');
INSERT INTO `t_user_role` VALUES ('21', '29', '3', '2018-01-17 21:39:36', '0');
INSERT INTO `t_user_role` VALUES ('22', '30', '6', '2018-02-06 20:00:14', '0');

-- ----------------------------
-- Table structure for t_verifcode
-- ----------------------------
DROP TABLE IF EXISTS `t_verifcode`;
CREATE TABLE `t_verifcode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `code` varchar(6) NOT NULL COMMENT '验证码',
  `msg` varchar(200) DEFAULT NULL COMMENT '内容',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT '0' COMMENT '短信状态',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_verifcode
-- ----------------------------
INSERT INTO `t_verifcode` VALUES ('41', '18370940755', '985219', '【瑞蓝酒店】注册验证码，你的验证码是：985219', '2018-03-19 11:57:14', '0', '2018-03-19 11:52:14');
INSERT INTO `t_verifcode` VALUES ('42', '15563906390', '702435', '【瑞蓝酒店】注册验证码，你的验证码是：702435', '2018-03-19 12:17:41', '1', '2018-03-19 12:12:41');
INSERT INTO `t_verifcode` VALUES ('43', '18370940755', '330411', '【瑞蓝酒店】注册验证码，你的验证码是：330411', '2018-03-19 13:06:20', '0', '2018-03-19 13:01:20');
INSERT INTO `t_verifcode` VALUES ('44', '15563906390', '762188', '【瑞蓝酒店】注册验证码，你的验证码是：762188', '2018-03-19 13:38:53', '1', '2018-03-19 13:33:53');
INSERT INTO `t_verifcode` VALUES ('45', '15563906390', '181000', '【瑞蓝酒店】找回密码，你的验证码是：181000', '2018-03-19 13:43:08', '1', '2018-03-19 13:38:08');
INSERT INTO `t_verifcode` VALUES ('46', '13061324160', '723194', '【瑞蓝酒店】注册验证码，你的验证码是：723194', '2018-03-19 16:50:58', '1', '2018-03-19 16:45:58');
INSERT INTO `t_verifcode` VALUES ('47', '13061324160', '188551', '【瑞蓝酒店】找回密码，你的验证码是：188551', '2018-03-19 17:02:26', '1', '2018-03-19 16:57:26');
INSERT INTO `t_verifcode` VALUES ('48', '13061324160', '404486', '【瑞蓝酒店】注册验证码，你的验证码是：404486', '2018-03-19 20:01:52', '1', '2018-03-19 19:56:52');
INSERT INTO `t_verifcode` VALUES ('49', '13861324160', '587746', '【瑞蓝酒店】注册验证码，你的验证码是：587746', '2018-03-19 20:05:05', '0', '2018-03-19 20:00:05');
INSERT INTO `t_verifcode` VALUES ('50', '18370940755', '838898', '【瑞蓝酒店】注册验证码，你的验证码是：838898', '2018-03-19 20:45:28', '1', '2018-03-19 20:40:28');
INSERT INTO `t_verifcode` VALUES ('51', '18370940755', '939746', '【瑞蓝酒店】注册验证码，你的验证码是：939746', '2018-03-19 20:49:12', '1', '2018-03-19 20:44:12');
INSERT INTO `t_verifcode` VALUES ('52', '13061324160', '979883', '【瑞蓝酒店】注册验证码，你的验证码是：979883', '2018-03-19 20:49:21', '1', '2018-03-19 20:44:21');
INSERT INTO `t_verifcode` VALUES ('53', '18661750395', '690105', '【瑞蓝酒店】注册验证码，你的验证码是：690105', '2018-03-20 13:36:44', '1', '2018-03-20 13:31:44');
INSERT INTO `t_verifcode` VALUES ('54', '13255588997', '373967', '【瑞蓝酒店】注册验证码，你的验证码是：373967', '2018-03-23 14:28:49', '1', '2018-03-23 14:23:49');
INSERT INTO `t_verifcode` VALUES ('55', '15563906390', '444220', '【瑞蓝酒店】找回密码，你的验证码是：444220', '2018-03-25 14:59:23', '1', '2018-03-25 14:54:23');
INSERT INTO `t_verifcode` VALUES ('56', '15563906390', '493763', '【瑞蓝软件】找回密码，你的验证码是：493763', '2018-03-25 15:27:14', '1', '2018-03-25 15:22:14');
INSERT INTO `t_verifcode` VALUES ('57', '15563906390', '926739', '【瑞蓝软件】找回密码，你的验证码是：926739', '2018-03-25 15:33:17', '1', '2018-03-25 15:28:17');
INSERT INTO `t_verifcode` VALUES ('58', '13061324160', '821602', '【瑞蓝软件】注册验证码，你的验证码是：821602', '2018-03-25 16:31:24', '1', '2018-03-25 16:26:24');
INSERT INTO `t_verifcode` VALUES ('59', '15563906390', '240553', '【瑞蓝软件】注册验证码，你的验证码是：240553', '2018-03-26 12:31:11', '1', '2018-03-26 12:26:11');
INSERT INTO `t_verifcode` VALUES ('60', '13061324160', '453233', '【瑞蓝软件】注册验证码，你的验证码是：453233', '2018-03-26 14:42:24', '1', '2018-03-26 14:37:24');
INSERT INTO `t_verifcode` VALUES ('61', '13061324160', '232136', '【瑞蓝软件】注册验证码，你的验证码是：232136，请妥善保管5分钟内有效。', '2018-03-26 16:01:01', '1', '2018-03-26 15:56:01');
INSERT INTO `t_verifcode` VALUES ('62', '15563906390', '410729', '【瑞蓝软件】注册验证码，你的验证码是：410729，请妥善保管5分钟内有效。', '2018-03-26 19:38:43', '1', '2018-03-26 19:33:43');
INSERT INTO `t_verifcode` VALUES ('63', '17663982567', '472256', '【瑞蓝软件】注册验证码，你的验证码是：472256，请妥善保管5分钟内有效。', '2018-03-26 22:02:04', '1', '2018-03-26 21:57:04');
INSERT INTO `t_verifcode` VALUES ('64', '18661750395', '303323', '【瑞蓝软件】注册验证码，你的验证码是：303323，请妥善保管5分钟内有效。', '2018-03-26 22:21:48', '1', '2018-03-26 22:16:48');
INSERT INTO `t_verifcode` VALUES ('65', '15732871261', '805133', '【瑞蓝软件】注册验证码，你的验证码是：805133，请妥善保管5分钟内有效。', '2018-03-27 15:40:49', '1', '2018-03-27 15:35:49');
INSERT INTO `t_verifcode` VALUES ('66', '13964291753', '478305', '【瑞蓝软件】注册验证码，你的验证码是：478305，请妥善保管5分钟内有效。', '2018-03-27 15:41:59', '1', '2018-03-27 15:36:59');
INSERT INTO `t_verifcode` VALUES ('67', '15762281999', '187900', '【瑞蓝软件】注册验证码，你的验证码是：187900，请妥善保管5分钟内有效。', '2018-03-27 15:42:55', '1', '2018-03-27 15:37:55');
INSERT INTO `t_verifcode` VALUES ('68', '13905324650', '786375', '【瑞蓝软件】注册验证码，你的验证码是：786375，请妥善保管5分钟内有效。', '2018-03-27 15:43:08', '1', '2018-03-27 15:38:08');
INSERT INTO `t_verifcode` VALUES ('69', '13964829703', '948691', '【瑞蓝软件】注册验证码，你的验证码是：948691，请妥善保管5分钟内有效。', '2018-03-27 15:43:29', '1', '2018-03-27 15:38:29');
INSERT INTO `t_verifcode` VALUES ('70', '18660283586', '676065', '【瑞蓝软件】注册验证码，你的验证码是：676065，请妥善保管5分钟内有效。', '2018-03-27 15:50:33', '1', '2018-03-27 15:45:33');
INSERT INTO `t_verifcode` VALUES ('71', '13255555858', '341977', '【瑞蓝软件】注册验证码，你的验证码是：341977，请妥善保管5分钟内有效。', '2018-03-27 15:57:25', '1', '2018-03-27 15:52:25');
INSERT INTO `t_verifcode` VALUES ('72', '18210153568', '105167', '【瑞蓝软件】注册验证码，你的验证码是：105167，请妥善保管5分钟内有效。', '2018-03-27 16:00:24', '1', '2018-03-27 15:55:24');
INSERT INTO `t_verifcode` VALUES ('73', '17663911222', '673800', '【瑞蓝软件】注册验证码，你的验证码是：673800，请妥善保管5分钟内有效。', '2018-03-27 16:12:43', '1', '2018-03-27 16:07:43');
INSERT INTO `t_verifcode` VALUES ('74', '18253201000', '458356', '【瑞蓝软件】注册验证码，你的验证码是：458356，请妥善保管5分钟内有效。', '2018-03-27 17:18:44', '1', '2018-03-27 17:13:44');
INSERT INTO `t_verifcode` VALUES ('75', '13255588997', '712402', '【瑞蓝软件】注册验证码，你的验证码是：712402，请妥善保管5分钟内有效。', '2018-03-27 17:46:03', '1', '2018-03-27 17:41:03');
INSERT INTO `t_verifcode` VALUES ('76', '13953205332', '432629', '【瑞蓝软件】注册验证码，你的验证码是：432629，请妥善保管5分钟内有效。', '2018-03-27 17:55:18', '1', '2018-03-27 17:50:18');
INSERT INTO `t_verifcode` VALUES ('77', '13361235830', '267515', '【瑞蓝软件】注册验证码，你的验证码是：267515，请妥善保管5分钟内有效。', '2018-03-27 18:20:09', '1', '2018-03-27 18:15:09');
INSERT INTO `t_verifcode` VALUES ('78', '18953635456', '556838', '【瑞蓝软件】注册验证码，你的验证码是：556838，请妥善保管5分钟内有效。', '2018-03-27 18:25:44', '1', '2018-03-27 18:20:44');
INSERT INTO `t_verifcode` VALUES ('79', '15315323788', '711881', '【瑞蓝软件】注册验证码，你的验证码是：711881，请妥善保管5分钟内有效。', '2018-03-27 18:33:49', '1', '2018-03-27 18:28:49');
INSERT INTO `t_verifcode` VALUES ('80', '13256884777', '735699', '【瑞蓝软件】注册验证码，你的验证码是：735699，请妥善保管5分钟内有效。', '2018-03-27 18:34:21', '1', '2018-03-27 18:29:21');
INSERT INTO `t_verifcode` VALUES ('81', '13061324160', '980628', '【瑞蓝软件】找回密码，你的验证码是：980628，请妥善保管5分钟内有效。', '2018-03-27 19:17:28', '0', '2018-03-27 19:12:28');
