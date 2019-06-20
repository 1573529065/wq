/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : www_ulxwtf23361_

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-05-24 15:57:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'uRr8qvQV', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for ims_account_aliapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_aliapp`;
CREATE TABLE `ims_account_aliapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `key` varchar(16) NOT NULL,
  PRIMARY KEY (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_aliapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_phoneapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_phoneapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_webapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_webapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', 'tw2Qw9lxLycY7JuOwxBFvTYms2195UxcgmDQZkqymU2', '4', '乐享定制', '1426312850@qq.com', 'gh_340f87163ef9', '', '', '', '', '', '', '0', 'wx0bd07a52e3e9a425', '02a64cd9b52ecdaaf6579046d51167a0', '1', '', '');

-- ----------------------------
-- Table structure for ims_account_wxapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wxapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_xzapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_xzapp`;
CREATE TABLE `ims_account_xzapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original` varchar(50) NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `xzapp_id` varchar(30) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `key` varchar(80) NOT NULL,
  `secret` varchar(80) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_xzapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_comment`;
CREATE TABLE `ims_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleid` (`articleid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_attachment_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------
INSERT INTO `ims_basic_reply` VALUES ('3', '9', '/玫瑰/玫瑰你好欢迎来到 乐享定制/玫瑰/玫瑰 \n祝你在这里找到自己心爱的人 \n唯一客服电话 18021206077  \n微信：LXDZ006[U+1F33A][U+1F33A]');
INSERT INTO `ims_basic_reply` VALUES ('2', '10', '你好欢迎您 来到乐享定制  客服微信：LXDZ006   电话：18021206077');

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------
INSERT INTO `ims_core_attachment` VALUES ('1', '1', '1', 'qrcode_for_gh_340f87163ef9_258.jpg', 'images/1/2019/03/PsYD4S4vIVLiDi1Lx99ri19i1oMsgO.jpg', '1', '1553501171', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('2', '1', '1', '微信图片_20181228022253.jpg', 'images/1/2019/03/kOyqbqshhFeqgTObqTzgGiyoEGCIQx.jpg', '1', '1553602971', '', '0');
INSERT INTO `ims_core_attachment` VALUES ('3', '1', '1', '微信图片_20181228073118.jpg', 'images/1/2019/03/pJayjrR2S0EnYW2nw7s6WjsW206WwZ.jpg', '1', '1553602980', '', '0');
INSERT INTO `ims_core_attachment` VALUES ('4', '1', '1', '微信图片_20181228073154.jpg', 'images/1/2019/03/WQGWY1Gf2yTuNtNyon3Ul2tLTFZQTT.jpg', '1', '1553603041', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('5', '1', '1', '92598d04-05b5-4447-9c89-d58cc751fd7c.png', 'images/1/2019/03/dUnDc8NDDW2bctoy21CRbT55tOzBby.png', '1', '1553656114', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('6', '1', '1', 'fb665caf-9e6d-41d5-beb9-58c9b1bf6325.png', 'images/1/2019/03/vkTijgLoKG0lwio10BtT0wFD8fzIS0.png', '1', '1553656626', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('7', '1', '1', 'timg.gif', 'images/1/2019/03/a1BL6XzL6la1W6xUClUV5bb1LL5fl6.gif', '1', '1553658570', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('8', '1', '1', 'bf036ffe-b9d4-4ea0-8382-32881dd0261c.png', 'images/1/2019/03/Q9s0rm3mKvRU7a88km97vIz47WK088.png', '1', '1553658649', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('9', '1', '1', 'timg (2).gif', 'images/1/2019/03/mYpQ70lFXpYYPUOWYAaLoYoPtqTxy9.gif', '1', '1553659421', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('10', '1', '1', 'timg (4).gif', 'images/1/2019/03/Q1VNV7CH3ahET7m7nMml7NK7k3t4ZC.gif', '1', '1553662601', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('11', '1', '1', 'timg (5).gif', 'images/1/2019/03/Mp4Pi6tpm7zVL4l6zG6g4SL61SAlL6.gif', '1', '1553671223', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('12', '1', '1', 'timg (7).gif', 'images/1/2019/03/iy89ZqB3zc3c0h6807CC7YeQ7ZXHBj.gif', '1', '1553671571', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('13', '1', '1', 'u=1599749478,658482535&fm=26&gp=0.jpg', 'images/1/2019/03/rsjm70JA5SAS444CfXMGj0f10J4rXS.jpg', '1', '1553671670', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('14', '1', '1', 'timg (9).gif', 'images/1/2019/03/xjjImAHftXEui049BVU0xJe7FBt7VT.gif', '1', '1553671829', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('15', '1', '1', 'timg (8).gif', 'images/1/2019/03/YD48ebc4rHC82fd2zfBu2b5C80c3B3.gif', '1', '1553671892', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('16', '1', '1', 'ad9eea616d42ce94f0c07b79a7a51bb.png', 'images/1/2019/03/i7ZXk72i7gz4m75xRGaV9vG454m4rK.png', '1', '1553672296', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('17', '1', '1', 'timg (10).gif', 'images/1/2019/03/yJ95j9YuYM827mjz8yYJ92G8Yy8A2r.gif', '1', '1553672466', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('18', '1', '1', 'timg (11).gif', 'images/1/2019/03/hF2MTtwvoTXxxUX55wWO84FM5z545X.gif', '1', '1553672644', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('19', '1', '1', 'timg (13).gif', 'images/1/2019/03/W8FTzT6AeTH4tkCEt6TT8v6FXE68ww.gif', '1', '1553672957', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('20', '1', '1', 'timg (14).gif', 'images/1/2019/03/V9ojf33JzkDN3363DzGk9J2kD63iJF.gif', '1', '1553673133', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('21', '1', '1', 'timg (15).gif', 'images/1/2019/03/a5ll6b885maEbpc3667mQG686K3RZD.gif', '1', '1553673208', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('22', '1', '1', 'timg (17).gif', 'images/1/2019/03/f70LYSlLjwYpDwS17wNDPxNSA1Ul1N.gif', '1', '1553673413', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('23', '1', '1', 'timg (19).gif', 'images/1/2019/03/M566V6gd6Kd665g5gUeRG5EBuvj5zG.gif', '1', '1553674044', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('24', '1', '1', 'timg (18).gif', 'images/1/2019/03/gN3TT9iRt2H4NItrkninDLyYycINIY.gif', '1', '1553674214', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('25', '1', '1', 'timg (22).gif', 'images/1/2019/03/eJE866jmkj8OHM0Ba8Hak4j2CEB6HH.gif', '1', '1553676345', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('26', '1', '1', 'timg (21).gif', 'images/1/2019/03/REVSOzEVhc2cqoqFSEcx2s2FvxXSfq.gif', '1', '1553676421', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('27', '1', '1', 'timg (24).gif', 'images/1/2019/03/CZ271ltB7BkNZ2ttQyqN9N7lNbY152.gif', '1', '1553676969', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('28', '1', '1', 'timg (25).gif', 'images/1/2019/03/lPlwh70zA0WY766hpkw7AJpDA0Z0Lp.gif', '1', '1553677123', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('29', '1', '1', 'timg (26).gif', 'images/1/2019/03/OzsuVyPpaZ7yyp7SpTpYZsV2ayAyjy.gif', '1', '1553677770', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('30', '1', '1', 'timg (27).gif', 'images/1/2019/03/Mn68yKY26Y2Edy35KS3s38m5YuKE6K.gif', '1', '1553678000', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('31', '1', '1', '51ddf9d6-f64d-4439-8a6a-63e7eb489495.png', 'images/1/2019/03/N7a7f179YZ77Z1AnCAfoA7ZcqJ9asA.png', '1', '1554020037', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('32', '1', '1', 'b44bf5bf-3fa4-487e-a131-0988f21873be.png', 'images/1/2019/03/qAr59s54W1AawRa24So1EavUMu2242.png', '1', '1554020220', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('33', '1', '1', '1554022197(1)_副本.png', 'images/1/2019/03/CM9445Tx83z896D447kOGD58XUxr4O.png', '1', '1554023514', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('34', '1', '1', '779f60d9-6c29-424f-8bf1-679d5849e75a.png', 'images/1/2019/04/vW3N15EQ1fzde4S8rE6QR16MQw6481.png', '1', '1554090837', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('35', '1', '1', '1554022197(1)_副本.png', 'images/1/2019/04/o268jEb2J726bJ39922z737G263Su2.png', '1', '1554091789', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('36', '1', '1', '2BJZ`E@)2J{9P3AP{07PPJC.png', 'images/1/2019/04/nG55X6VpGw5Xd44DVUZTww4O5wOG34.png', '1', '1554101169', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('37', '1', '1', '5bafd084-981f-44d9-bdf6-749b4d9860d9_副本.png', 'images/1/2019/04/kz8j3x3M488a3OjEaOaojq3MSDdOdx.png', '1', '1554198436', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('38', '1', '1', '0b320bb33629f8c9f4a7b1818b62365_副本.jpg', 'images/1/2019/04/JkDvY1DGmyMDn1DMSkA8czN3dN1g11.jpg', '1', '1554198656', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('39', '1', '1', '45c47644-b3a1-49d9-9e9d-c4097f72a559.png', 'images/1/2019/04/ZvniVD8rrVZTnwiAVaqgmw2G1wQsqn.png', '1', '1554198857', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('40', '1', '1', 'a6e989af-5974-4347-b83a-2048f9f7c3d0.png', 'images/1/2019/04/oh949QlQhLl9s4PJ5L6295c6LIi9sJ.png', '1', '1554280940', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('41', '1', '1', 'IMG_2547.JPG', 'images/1/2019/04/cO9VUzCx6qV7CT6olxVq79QGOTZcVX.jpg', '1', '1554911196', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('42', '1', '1', '3099da3e-e1c3-40bf-bb5d-97162e834cb1.png', 'images/1/2019/05/trtLEY1FqeFMEzZeFFEDuebe4i0tID.png', '1', '1557250323', '', '-1');

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:6:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:9:\"store_pay\";a:1:{s:6:\"wechat\";a:4:{s:6:\"switch\";i:2;s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:7:\"signkey\";s:0:\"\";}}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"VgNEjAtnQj4gNxDMKnJnTjRZPaEQKajA\";s:14:\"encodingaeskey\";s:43:\"Ry924y5AC94268jcOa55Cyrc9A9afOC6FTJ6z264RFY\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:0', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:setting', 'a:4:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:userbasefields', 'a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:usersfields', 'a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_receive_enable', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:store', 'a:32:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/store/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/store/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:32:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://www.ulxwtf23361.cn/addons/wxcard/icon.jpg?v=1553499961\";s:7:\"preview\";s:51:\"http://www.ulxwtf23361.cn/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:32:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/chats/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:32:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/voice/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:32:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/video/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:32:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://www.ulxwtf23361.cn/addons/images/icon.jpg?v=1553499961\";s:7:\"preview\";s:51:\"http://www.ulxwtf23361.cn/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:32:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://www.ulxwtf23361.cn/addons/custom/icon.jpg?v=1553499961\";s:7:\"preview\";s:51:\"http://www.ulxwtf23361.cn/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:32:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:63:\"http://www.ulxwtf23361.cn/addons/recharge/icon.jpg?v=1553499961\";s:7:\"preview\";s:53:\"http://www.ulxwtf23361.cn/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:32:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:62:\"http://www.ulxwtf23361.cn/addons/userapi/icon.jpg?v=1553499961\";s:7:\"preview\";s:52:\"http://www.ulxwtf23361.cn/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:32:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/music/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:32:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://www.ulxwtf23361.cn/addons/news/icon.jpg?v=1553499961\";s:7:\"preview\";s:49:\"http://www.ulxwtf23361.cn/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:32:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://www.ulxwtf23361.cn/addons/basic/icon.jpg?v=1553499961\";s:7:\"preview\";s:50:\"http://www.ulxwtf23361.cn/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:1', 'a:37:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:43:\"tw2Qw9lxLycY7JuOwxBFvTYms2195UxcgmDQZkqymU2\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:12:\"乐享定制\";s:7:\"account\";s:17:\"1426312850@qq.com\";s:8:\"original\";s:15:\"gh_340f87163ef9\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx0bd07a52e3e9a425\";s:6:\"secret\";s:32:\"02a64cd9b52ecdaaf6579046d51167a0\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wx0bd07a52e3e9a425\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"1\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:9:\"type_sign\";s:7:\"account\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:30:\"你好欢迎来到乐享定制\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:11:{s:6:\"switch\";s:1:\"1\";s:7:\"account\";s:1:\"1\";s:10:\"has_config\";s:4:\"true\";s:12:\"recharge_set\";s:4:\"true\";s:11:\"support_set\";s:4:\"true\";s:7:\"version\";s:1:\"2\";s:5:\"mchid\";s:10:\"1508863801\";s:6:\"apikey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:7:\"signkey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:1;}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"5\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:66:\"http://www.ulxwtf23361.cn/attachment/headimg_1.jpg?time=1554734572\";s:6:\"qrcode\";s:65:\"http://www.ulxwtf23361.cn/attachment/qrcode_1.jpg?time=1554734572\";s:9:\"type_name\";s:9:\"公众号\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:uC70w', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account_type', 's:7:\"account\";');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:1', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"hulu_like\";a:1:{s:4:\"name\";s:9:\"hulu_like\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:basic:1', 'a:1:{s:6:\"module\";s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:news:1', 'a:1:{s:6:\"module\";s:4:\"news\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:music:1', 'a:1:{s:6:\"module\";s:5:\"music\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:userapi:1', 'a:1:{s:6:\"module\";s:7:\"userapi\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:recharge:1', 'a:1:{s:6:\"module\";s:8:\"recharge\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:custom:1', 'a:1:{s:6:\"module\";s:6:\"custom\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:images:1', 'a:1:{s:6:\"module\";s:6:\"images\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:video:1', 'a:1:{s:6:\"module\";s:5:\"video\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:voice:1', 'a:1:{s:6:\"module\";s:5:\"voice\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:chats:1', 'a:1:{s:6:\"module\";s:5:\"chats\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:wxcard:1', 'a:1:{s:6:\"module\";s:6:\"wxcard\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:store:1', 'a:1:{s:6:\"module\";s:5:\"store\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:hulu_like', 'a:32:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:9:\"hulu_like\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"相亲交友\";s:7:\"version\";s:5:\"5.3.0\";s:7:\"ability\";s:12:\"相亲交友\";s:11:\"description\";s:12:\"相亲交友\";s:6:\"author\";s:30:\"乐坊科技微信号：rscmwl\";s:3:\"url\";s:32:\"https://shop285989266.taobao.com\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"X\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"1\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:64:\"http://www.ulxwtf23361.cn/addons/hulu_like/icon.jpg?v=1553499980\";s:7:\"preview\";s:54:\"http://www.ulxwtf23361.cn/addons/hulu_like/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:hulu_like:1', 'a:1:{s:6:\"module\";s:9:\"hulu_like\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:stat_todaylock:1', 'a:1:{s:6:\"expire\";i:1558584694;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:1', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:1', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"hulu_like\";a:1:{s:4:\"name\";s:9:\"hulu_like\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:13:{s:9:\"hulu_like\";s:3:\"all\";s:5:\"store\";s:3:\"all\";s:6:\"wxcard\";s:3:\"all\";s:5:\"chats\";s:3:\"all\";s:5:\"voice\";s:3:\"all\";s:5:\"video\";s:3:\"all\";s:6:\"images\";s:3:\"all\";s:6:\"custom\";s:3:\"all\";s:8:\"recharge\";s:3:\"all\";s:7:\"userapi\";s:3:\"all\";s:5:\"music\";s:3:\"all\";s:4:\"news\";s:3:\"all\";s:5:\"basic\";s:3:\"all\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:0:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"hulu_like\";a:1:{s:4:\"name\";s:9:\"hulu_like\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:g8k33', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:0', 's:1:\"0\";');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:6:1', 'i:0;');
INSERT INTO `ims_core_cache` VALUES ('we7:accesstoken:1', 'a:2:{s:5:\"token\";s:136:\"21_j-_NaL1g2kfl1aVtnSqYaOTDOO49hoL0MyGB6SY83xoytCw_ITbd7GZvqxDHUWxTYx1lv-tiA7Qf5OBaA8dERnLn4mI-2uUV-miR2RBHzim41dNu1KOn7GMT834JFRdAJADZL\";s:6:\"expire\";i:1558672191;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules_binding:1', 'a:1:{s:9:\"hulu_like\";a:4:{s:4:\"name\";s:9:\"hulu_like\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"相亲交友\";s:7:\"entries\";a:5:{s:5:\"cover\";a:5:{i:0;a:4:{s:5:\"title\";s:6:\"我的\";s:2:\"do\";s:2:\"my\";s:3:\"url\";s:29:\"./index.php?i=1&c=entry&eid=1\";s:4:\"from\";s:6:\"define\";}i:1;a:4:{s:5:\"title\";s:6:\"说说\";s:2:\"do\";s:4:\"talk\";s:3:\"url\";s:29:\"./index.php?i=1&c=entry&eid=2\";s:4:\"from\";s:6:\"define\";}i:2;a:4:{s:5:\"title\";s:6:\"聊天\";s:2:\"do\";s:4:\"chat\";s:3:\"url\";s:29:\"./index.php?i=1&c=entry&eid=3\";s:4:\"from\";s:6:\"define\";}i:3;a:4:{s:5:\"title\";s:6:\"活动\";s:2:\"do\";s:6:\"active\";s:3:\"url\";s:29:\"./index.php?i=1&c=entry&eid=4\";s:4:\"from\";s:6:\"define\";}i:4;a:4:{s:5:\"title\";s:6:\"封面\";s:2:\"do\";s:8:\"fengmian\";s:3:\"url\";s:29:\"./index.php?i=1&c=entry&eid=5\";s:4:\"from\";s:6:\"define\";}}s:4:\"home\";a:1:{i:0;a:4:{s:5:\"title\";s:6:\"首页\";s:2:\"do\";s:6:\"shouye\";s:3:\"url\";s:30:\"./index.php?i=1&c=entry&eid=33\";s:4:\"from\";s:6:\"define\";}}s:7:\"profile\";a:1:{i:0;a:4:{s:5:\"title\";s:6:\"个人\";s:2:\"do\";s:5:\"geren\";s:3:\"url\";s:30:\"./index.php?i=1&c=entry&eid=34\";s:4:\"from\";s:6:\"define\";}}s:8:\"shortcut\";a:1:{i:0;a:4:{s:5:\"title\";s:6:\"快捷\";s:2:\"do\";s:7:\"kuaijie\";s:3:\"url\";s:30:\"./index.php?i=1&c=entry&eid=35\";s:4:\"from\";s:6:\"define\";}}s:8:\"function\";a:1:{i:0;a:4:{s:5:\"title\";s:6:\"独立\";s:2:\"do\";s:4:\"duli\";s:3:\"url\";s:30:\"./index.php?i=1&c=entry&eid=35\";s:4:\"from\";s:6:\"define\";}}}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:jsticket:1', 'a:2:{s:6:\"ticket\";s:86:\"HoagFKDcsGMVCIY2vOjf9tiOQdCkv21z1_ihfJJqmHs8ux6sOGcYrXV2rJJ80zoCJzNPV7dmE9JUuY_QIaSIdQ\";s:6:\"expire\";i:1558672191;}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:2', 'a:53:{s:3:\"uid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"3af0cc49a4b03e26540ad12c5490e799@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"hZXf5B3g\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553503367\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:0:\"\";s:6:\"avatar\";s:137:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuODZboVaqic8E3wujX626rDs0iav1THrBvIawZh71Vrv5yUyoOt3yVTCUWicmdibEYEpdG0TpRy0RMrmw/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"南京市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:1', 'a:53:{s:3:\"uid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"2f2948d4224cd559d880ecb6c59aff4e@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"S1GXzIwc\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553501730\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:24:\"App小程序网站开发\";s:6:\"avatar\";s:138:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlMrSiaf1GarnhKIWrniakfJMyMZ54PicVL3qLdcsicmB5iaNvXZT4klss8VmiaFUKOsZWkZqUr8hC0ebD8W2XlKNCjs5J/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"四川省\";s:10:\"residecity\";s:9:\"成都市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:hrr7e', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:fCv2C', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:3', 'a:53:{s:3:\"uid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"613fc73de6e1093fc71744a8707955d2@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"uzHA2Ap4\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553600802\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:7:\"A栩哥\";s:6:\"avatar\";s:145:\"http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4L44VQuXMrrZSicZxW81kLXZrUEnqf6ibhS5DF8QKtWGYkoCHUT46pCW1m3pOaqL5ZvvtWrxhicNo0anzwqK95JyobvFkpMfQRKM/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"0\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:0:\"\";s:14:\"resideprovince\";s:3:\"省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:uni_groups', 'a:1:{i:1;a:12:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:1:{i:0;s:9:\"hulu_like\";}s:9:\"templates\";a:0:{}s:7:\"uniacid\";s:1:\"0\";s:3:\"uid\";s:1:\"0\";s:6:\"aliapp\";a:0:{}s:5:\"xzapp\";a:0:{}s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:mll09', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:proxy_wechatpay_account', 'a:2:{s:7:\"service\";a:0:{}s:6:\"borrow\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:1', 'a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:30:\"你好欢迎来到乐享定制\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:11:{s:6:\"switch\";s:1:\"1\";s:7:\"account\";s:1:\"1\";s:10:\"has_config\";s:4:\"true\";s:12:\"recharge_set\";s:4:\"true\";s:11:\"support_set\";s:4:\"true\";s:7:\"version\";s:1:\"2\";s:5:\"mchid\";s:10:\"1508863801\";s:6:\"apikey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:7:\"signkey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:1;}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"5\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";d:137;}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_accounts:wechats:1', 'a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:4:\"name\";s:12:\"乐享定制\";s:4:\"type\";s:1:\"1\";s:5:\"level\";s:1:\"4\";s:3:\"key\";s:18:\"wx0bd07a52e3e9a425\";s:6:\"secret\";s:32:\"02a64cd9b52ecdaaf6579046d51167a0\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:1:1', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:site_store_buy:5:1', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:f99nI', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:B7CU7', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:Ikuuz', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:5', 'a:53:{s:3:\"uid\";s:1:\"5\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"983bdab53ddddd472709295a2ca7fb14@we7.cc\";s:8:\"password\";s:32:\"f34bc4edc1ece05abdc367c45b1c7df0\";s:4:\"salt\";s:8:\"XuTti95l\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553677222\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:12:\"生如夏花\";s:6:\"avatar\";s:133:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW3BXGAF9H2Dqx2gxq33NJD6jQgZPsO24GztqZpHJEaejV7nmQwKickK34OQebFIC1xpzLsAvs3E4C/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"0\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:0:\"\";s:14:\"resideprovince\";s:3:\"省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:P1Ykg', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:6', 'a:53:{s:3:\"uid\";s:1:\"6\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"c20727c4d292f3be1c90c430c4aad035@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"xQNpo003\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553758658\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:12:\"海阔天空\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlM8Hk65uWbzTFA8ydicSCCLUBYaZHmiaukb9Dd9OCHsYA90HhZzZwicMTHcMFoYn063reoh9qmmk0VYmyBicT1f1h1G/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:24:\"阿拉伯联合酋长国\";s:14:\"resideprovince\";s:15:\"阿布扎比省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:dGUfD', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:7', 'a:53:{s:3:\"uid\";s:1:\"7\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"bda77d2b588a48a2f151472a57769514@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"UFJAlf7v\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553783888\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:7:\"A栩哥\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW1ibuJw2C9zEs4X8RGL4nJtJQKaJoysIX3StdJed971QdSh45yibwNbxtvczQdyicUiaDP5p6fXq136b/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"南京市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:VxPpP', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:Kg5Xv', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:NJgFw', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:8', 'a:53:{s:3:\"uid\";s:1:\"8\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"2b337532f19854dd7ce7fd1296371fd2@we7.cc\";s:8:\"password\";s:32:\"3da9c1a21c997ce2942a4b96ae2d00e5\";s:4:\"salt\";s:8:\"hSgO3cSZ\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554015417\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:9:\"艾丽丝\";s:6:\"avatar\";s:134:\"http://thirdwx.qlogo.cn/mmopen/VO28ycSYFYRaWophZhMFREzibzAQctnlz3WEwGsE4VqNibHOuD516PMMhWVBdQI4yxHptJ4MmjB06fC1peedZMwzDia1Zq7D9fX/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:0:\"\";s:14:\"resideprovince\";s:3:\"省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:G7eSf', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:RFtMy', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:10', 'a:53:{s:3:\"uid\";s:2:\"10\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"bd0167d3d906934f84faf6600ad809c5@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"gIS97U0s\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554200382\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:15:\"天边的云\";s:6:\"avatar\";s:134:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKeTvqghLxoGRAlppWV6cxOkaYRcD9TqNS8IibPicyRXDd3v2E2qhIujEq8w4KwyO9nZF41VKZwB5gMwu6FSB5k2q/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"泰州市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:12', 'a:53:{s:3:\"uid\";s:2:\"12\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"5b533b21095b5b9efb08e72371d0fb7c@we7.cc\";s:8:\"password\";s:32:\"ddfb0f5893b6bc517f8515af3cec4ab5\";s:4:\"salt\";s:8:\"xHKfKkKm\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554247531\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:5:\"Sunny\";s:6:\"avatar\";s:125:\"http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKvibwQDp3pNXEvQibjY4OmWA7a4k4wEvWNSwcacF8G1eBBso8okwo6XKLUbdTjv2lLx2onAuic7NwIw/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"南通市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:16', 'a:53:{s:3:\"uid\";s:2:\"16\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"0afe1a0800e944280d24d42c33bbaf98@we7.cc\";s:8:\"password\";s:32:\"bc15cbbb8bf7ebaa7b8411c3b44bc1e3\";s:4:\"salt\";s:8:\"sd3tj23q\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554291095\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:9:\"小笨笨\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlPLlZoTHcYJvKmwa3OsYKEuVvQryDFtH0zhP9dTg00JOuiaTXSE0miaDEJkeOfnFSV5Bw2ia9KIic7vgO6YM5FR2JSc/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"0\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:0:\"\";s:14:\"resideprovince\";s:3:\"省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:UgSv8', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:17', 'a:53:{s:3:\"uid\";s:2:\"17\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"7409b2a0b28b48062025a97275a42dc3@we7.cc\";s:8:\"password\";s:32:\"3c2f339b61f8babcf9ab4f9beaedfac4\";s:4:\"salt\";s:8:\"B5V3QZcI\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554307846\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:6:\"初夏\";s:6:\"avatar\";s:126:\"http://thirdwx.qlogo.cn/mmopen/iaRlzG8zy7BsA4WXv52Ef6MibIXyu9OOicdVcoPJ7jT4oX6JDcgrF2vDh0J7Il8DdicVIAzcIggVlDcnfBk2icL84qQ/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"法国\";s:14:\"resideprovince\";s:9:\"巴黎省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:Lo0BH', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:kD2M0', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:y75xZ', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:14', 'a:53:{s:3:\"uid\";s:2:\"14\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"839bf1be8109369929b88fd5296a4e5f@we7.cc\";s:8:\"password\";s:32:\"6428c92d4fc952cd9011c83ebc6301cb\";s:4:\"salt\";s:8:\"IDZg0qeP\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554259908\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:12:\"奶油小生\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW6aGIgS0uZWl3Jicqc2zMoSUadvmpSMYnAgYCAfiahlvyVAXKWfszdrqt42kdFfic8rLExgVJoDv7iaP/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"上海省\";s:10:\"residecity\";s:9:\"闵行市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:13', 'a:53:{s:3:\"uid\";s:2:\"13\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"a87369ea43b34c1b08aa1260e9c01ce3@we7.cc\";s:8:\"password\";s:32:\"a173de3cb8649d5f6201432ae29f0a24\";s:4:\"salt\";s:8:\"m57bAEul\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554249836\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:6:\"安之\";s:6:\"avatar\";s:135:\"http://thirdwx.qlogo.cn/mmopen/uJX0EDf9pUQwzFt7TLI9KXAwypYWVfuEq9qDicBQFY8X4Z1xls7ktFia0nYVxfjBWEXxazicUqkicZB4NLTgHbAkVwwBDmFXLwSQ/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"南通市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:9', 'a:53:{s:3:\"uid\";s:1:\"9\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"5c877b35193a4f77a000a543acdbbef4@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"fyTk5sfK\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554185312\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:3:\"匡\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/D7B0GmFiayibmL7aUaWiagabn6MWFiaoNGzL9w6QNcjBqCU2z49Qn5FZtqtAUsE3huHG2bHqofYhpgGicG8wzwdCfa2mQYZ4XKa5a/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:3:\"省\";s:10:\"residecity\";s:3:\"市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:defaultgroupid:1', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:4', 'a:53:{s:3:\"uid\";s:1:\"4\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"a935b8373c76b10aef01de9370838a02@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"SconRYy9\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1553608213\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:4:\"K哥\";s:6:\"avatar\";s:134:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKKsQCD9qQ9yQY0GR8ZSzXCyOPk3CUCficjRdiahWeDJ95PRVOLXEF5dfbHhUueXzdepB7sB6PfkEcTVkvALZ2N0N/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"上海省\";s:10:\"residecity\";s:9:\"闵行市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:bSY5q', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:18', 'a:53:{s:3:\"uid\";s:2:\"18\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"03c7ff944648b45ed9dc52e75c99c572@we7.cc\";s:8:\"password\";s:32:\"1e2d6e9dc238061a3afec07bd36119e7\";s:4:\"salt\";s:8:\"L4FSFsBH\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554880934\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:4:\"A迪\";s:6:\"avatar\";s:134:\"http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAL2qSDicSaIics5rGlHfdLHHGQlabqe5gC8HmCjzdhQvHibyosp64mS8zuv3JCt1KNW0CW2H0nP2Shu/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"香港省\";s:10:\"residecity\";s:15:\"九龙城区市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:20', 'a:53:{s:3:\"uid\";s:2:\"20\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"8f447bb4d369bebc45fd930d56e7e21b@we7.cc\";s:8:\"password\";s:32:\"92763ec2543e59822e1dab3fd5ccf080\";s:4:\"salt\";s:8:\"V3KyzsBZ\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554903466\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:8:\"luckydog\";s:6:\"avatar\";s:140:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RIGEVKnmia2l9y5iauoXNndWCahHMiaric4YKqOkWibHGciaWEaThOe9pP2VTtvfuJSSnU1nBjxgLnwgUibeA4icbdOZwNt/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"福建省\";s:10:\"residecity\";s:9:\"厦门市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:RKVQ3', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:19', 'a:53:{s:3:\"uid\";s:2:\"19\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"298147bcc62b51ad454cf558c443edbf@we7.cc\";s:8:\"password\";s:32:\"42016e2b59c2e714268ddee6a32f5f57\";s:4:\"salt\";s:8:\"ZT8BZdBm\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554903458\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:12:\"Mr.李Angeja\";s:6:\"avatar\";s:134:\"http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAB2tPH6elS76uuFRfA3TdnIaDTzzLmRCLeMXkMw4Idic0xgK8kAFia66ZgnBcea55punZyTJbI8tiau/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"上海省\";s:10:\"residecity\";s:9:\"黄浦市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:22', 'a:53:{s:3:\"uid\";s:2:\"22\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"3ff3d515ab6d8948e973cd5f281c8f66@we7.cc\";s:8:\"password\";s:32:\"40cc12ebc1b5500e3b1be090c47bb56b\";s:4:\"salt\";s:8:\"LJ29uNF6\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1554944876\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:9:\"月子酱\";s:6:\"avatar\";s:146:\"http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4ZE6B6HUnp5k0AqRicYqK0ewib1bmZQZdyfAtwxvWvvwUqiaKQ2YMUZHnowveEBaXwJD11XVib0Wjzy4mB23VSNh6QGujITcWLV0w/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"上海省\";s:10:\"residecity\";s:9:\"长宁市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:CS3Qs', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:23', 'a:53:{s:3:\"uid\";s:2:\"23\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"20b9d3f7e1e7754c5553fd18a6cd2b61@we7.cc\";s:8:\"password\";s:32:\"40e5bb2a695528b2358625835172b9aa\";s:4:\"salt\";s:8:\"yQS2b1Aa\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1556121656\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:18:\"不一样的烟火\";s:6:\"avatar\";s:124:\"http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAmiawU45pRx6oNq3XDfSjKIZsibiauwNkdNXp5Mjqjma4wxlcu6yESzfpse6oMV443K4TZzI8gI7GZg/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"江苏省\";s:10:\"residecity\";s:9:\"常州市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:24', 'a:53:{s:3:\"uid\";s:2:\"24\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"0469590113e9a5e2b06dbc54b3da7b32@we7.cc\";s:8:\"password\";s:32:\"03347649ea75a71d4feeaf038e6c8817\";s:4:\"salt\";s:8:\"Ogu5cfwc\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1556858234\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:1:\"k\";s:6:\"avatar\";s:137:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuOGclAicQu316Frxqd9kyAicJr9cTlHWy33D7qamrpDX7VlUAicebBQicGRvJs9KnTEAZtKYm5LjCjZGE/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:12:\"澳大利亚\";s:14:\"resideprovince\";s:15:\"维多利亚省\";s:10:\"residecity\";s:12:\"墨尔本市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:AA355', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:Uz0se', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:25', 'a:53:{s:3:\"uid\";s:2:\"25\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"c686801b069c7b905daa1919a44d1910@we7.cc\";s:8:\"password\";s:32:\"46ff3bb4df50bf97c39e7193afbd4ece\";s:4:\"salt\";s:8:\"fZCiBigD\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1557325075\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:4:\"Rong\";s:6:\"avatar\";s:136:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuONInNMGrldvqlpqVqw4V5gAEbeBqF3GiboxzGo06dZBaqwLJF8Ccqe0IicrrREldicoLPmKpSUlHWLG/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"1\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"河南省\";s:10:\"residecity\";s:9:\"信阳市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:WvXz9', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:memberinfo:26', 'a:53:{s:3:\"uid\";s:2:\"26\";s:7:\"uniacid\";s:1:\"1\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:39:\"46d5d5d325d65d39ecd4af0f5f69630a@we7.cc\";s:8:\"password\";s:32:\"821e531f0ae280b2c29568d7b31aad85\";s:4:\"salt\";s:8:\"U00sD5O5\";s:7:\"groupid\";s:1:\"1\";s:7:\"credit1\";d:0;s:7:\"credit2\";d:0;s:7:\"credit3\";d:0;s:7:\"credit4\";d:0;s:7:\"credit5\";d:0;s:7:\"credit6\";d:0;s:10:\"createtime\";s:10:\"1557329235\";s:8:\"realname\";s:0:\"\";s:8:\"nickname\";s:3:\"陈\";s:6:\"avatar\";s:139:\"http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuONe9Xqb8ubZfia4QoVnPMhMias21UGnlibibPxaZOqSm279Iib8rBbAEhO4yrt6IOUTfUconF2iax74hjJ/132\";s:2:\"qq\";s:0:\"\";s:3:\"vip\";s:1:\"0\";s:6:\"gender\";s:1:\"2\";s:9:\"birthyear\";s:1:\"0\";s:10:\"birthmonth\";s:1:\"0\";s:8:\"birthday\";s:1:\"0\";s:13:\"constellation\";s:0:\"\";s:6:\"zodiac\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:6:\"idcard\";s:0:\"\";s:9:\"studentid\";s:0:\"\";s:5:\"grade\";s:0:\"\";s:7:\"address\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:11:\"nationality\";s:6:\"中国\";s:14:\"resideprovince\";s:9:\"湖北省\";s:10:\"residecity\";s:9:\"武汉市\";s:10:\"residedist\";s:0:\"\";s:14:\"graduateschool\";s:0:\"\";s:7:\"company\";s:0:\"\";s:9:\"education\";s:0:\"\";s:10:\"occupation\";s:0:\"\";s:8:\"position\";s:0:\"\";s:7:\"revenue\";s:0:\"\";s:15:\"affectivestatus\";s:0:\"\";s:10:\"lookingfor\";s:0:\"\";s:9:\"bloodtype\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"weight\";s:0:\"\";s:6:\"alipay\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:6:\"taobao\";s:0:\"\";s:4:\"site\";s:0:\"\";s:3:\"bio\";s:0:\"\";s:8:\"interest\";s:0:\"\";s:12:\"pay_password\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:Lp27f', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:wKRtS', 'i:1;');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------
INSERT INTO `ims_core_paylog` VALUES ('1', '', '1', '1', '', '', '2019032621343256495352', '248.00', '0', 'hulu_like', '', '0', '0', '', '248.00', '');
INSERT INTO `ims_core_paylog` VALUES ('2', '', '1', '1', '', '', '2019032622535551485256', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('3', '', '1', '1', '', '', '2019032622542099489851', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('4', '', '1', '1', '', '', '2019032622543810110157', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('5', '', '1', '1', '2', '', '2019032622595810197101', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('6', '', '1', '1', '2', '', '2019032623023497495752', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('7', '', '1', '1', '', '', '2019032623232710253535', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('8', '', '1', '1', '', '', '2019032623253951559998', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('9', '', '1', '1', '', '', '2019032623342110010157', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('10', '', '1', '1', '', '', '2019032623544957995299', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('11', '', '1', '1', '', '', '2019032700131598535798', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('12', '', '1', '1', '', '', '2019032700272949495510', '388.00', '0', 'hulu_like', '', '0', '0', '', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('13', '', '1', '1', '', '', '2019032700274751505710', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('14', '', '1', '1', '', '', '2019032700284297489849', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('15', '', '1', '1', '', '', '2019032700293648989710', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('16', '', '1', '1', '', '', '2019032700302953525310', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('17', '', '1', '1', '', '', '2019032700332250519950', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('18', '', '1', '1', '', '', '2019032700430697985753', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('19', '', '1', '1', '', '', '2019032700455753501001', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('20', '', '1', '1', '', '', '2019032700465951579849', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('21', '', '1', '1', '', '', '2019032700485656501019', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('22', '', '1', '1', '', '', '2019032700491054100535', '388.00', '0', 'hulu_like', '', '0', '0', '', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('23', '', '1', '1', '', '', '2019032700560250535151', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('24', '', '1', '1', '', '', '2019032701001299495610', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('25', '', '1', '1', '2', '', '2019032701023699985152', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('26', '', '1', '1', '', '', '2019032701052250515397', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('27', '', '1', '1', '', '', '2019032701062210151505', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('28', '', '1', '1', '', '', '2019032701071551525398', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('29', '', '1', '1', '', '', '2019032701115910253545', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('30', '', '1', '1', '', '', '2019032701134557571029', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('31', '', '1', '1', '', '', '2019032701185648555248', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('32', '', '1', '1', '', '', '2019032701333510210110', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('33', '', '1', '1', '2', '', '2019032701370953531015', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('34', '', '1', '1', '', '', '2019032701403248981005', '0.01', '0', 'hulu_like', '', '0', '0', '', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('35', 'wechat', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '2019032701410100001348024717', '2019032701405998579753', '0.01', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";N;}', '0', '0', '0', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('36', 'wechat', '1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '2019032701420100001388624206', '2019032701415854101565', '0.01', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"2\";}', '0', '0', '0', '0.01', '');
INSERT INTO `ims_core_paylog` VALUES ('37', '', '1', '1', '2', '', '2019032715320553995757', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('38', '', '1', '1', '2', '', '2019032715324510053995', '10.00', '0', 'hulu_like', '', '0', '0', '', '10.00', '');
INSERT INTO `ims_core_paylog` VALUES ('39', '', '1', '1', '2', '', '2019032715574557515454', '20000.00', '0', 'hulu_like', '', '0', '0', '', '20000.00', '');
INSERT INTO `ims_core_paylog` VALUES ('40', '', '1', '1', '2', '', '2019032715580157974910', '10.00', '0', 'hulu_like', '', '0', '0', '', '10.00', '');
INSERT INTO `ims_core_paylog` VALUES ('41', 'wechat', '1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '2019032715581500001337214093', '2019032715581353101555', '10.00', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"2\";}', '0', '0', '0', '10.00', '');
INSERT INTO `ims_core_paylog` VALUES ('42', '', '1', '1', '2', '', '2019032715590254565610', '1888.00', '0', 'hulu_like', '', '0', '0', '', '1888.00', '');
INSERT INTO `ims_core_paylog` VALUES ('43', '', '1', '1', '4', '', '2019032717181151545310', '10.00', '0', 'hulu_like', '', '0', '0', '', '10.00', '');
INSERT INTO `ims_core_paylog` VALUES ('44', '', '1', '1', '2', '', '2019032719375854984951', '100.00', '0', 'hulu_like', '', '0', '0', '', '100.00', '');
INSERT INTO `ims_core_paylog` VALUES ('45', '', '1', '1', '2', '', '2019032719383598569850', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('46', '', '1', '1', '2', '', '2019032722070153515552', '100.00', '0', 'hulu_like', '', '0', '0', '', '100.00', '');
INSERT INTO `ims_core_paylog` VALUES ('47', '', '1', '1', '2', '', '2019032722070910054485', '68.00', '0', 'hulu_like', '', '0', '0', '', '68.00', '');
INSERT INTO `ims_core_paylog` VALUES ('48', '', '1', '1', '2', '', '2019032722073656515655', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('49', '', '1', '1', '2', '', '2019032722074310210151', '10.00', '0', 'hulu_like', '', '0', '0', '', '10.00', '');
INSERT INTO `ims_core_paylog` VALUES ('50', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019032822403100001388661336', '2019032822402356485054', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000293201903288085836609\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('51', '', '1', '1', '3', '', '2019032822415955985510', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('52', 'wechat', '1', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2019032822422100001315262942', '2019032822421998565198', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:14:\"transaction_id\";s:28:\"4200000302201903283321201548\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('53', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019032822453100001366621188', '2019032822452452975051', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000303201903286868733837\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('54', '', '1', '1', '3', '', '2019032822455955971029', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('55', 'wechat', '1', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2019032822461200001346634148', '2019032822460949100505', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:14:\"transaction_id\";s:28:\"4200000290201903280430185627\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('56', 'wechat', '1', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2019032822492900001344812462', '2019032822492755995251', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:14:\"transaction_id\";s:28:\"4200000301201903283182014523\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('57', '', '1', '1', '2', '', '2019032822512610110151', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('58', '', '1', '1', '3', '', '2019032823032848515198', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('59', 'wechat', '1', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2019032903454800001305444648', '2019032903454697535798', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:14:\"transaction_id\";s:28:\"4200000305201903297820192557\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('60', 'wechat', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '2019033021310500001324144172', '2019033021310254509999', '1.00', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"4\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('61', '', '1', '1', '4', '', '2019033021312157499855', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('62', 'wechat', '1', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2019033021314700001386462988', '2019033021314448535057', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"3\";s:14:\"transaction_id\";s:28:\"4200000307201903308020720093\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('63', '', '1', '1', '3', '', '2019033021320250535599', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('64', '', '1', '1', '', '', '2019033122362355549897', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('65', '', '1', '1', '', '', '2019033122371155505150', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('66', '', '1', '1', '', '', '2019033122372351515097', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('67', '', '1', '1', '', '', '2019040100262099989997', '100.00', '0', 'hulu_like', '', '0', '0', '', '100.00', '');
INSERT INTO `ims_core_paylog` VALUES ('68', '', '1', '1', '', '', '2019040101202153521025', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('69', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040113375000001349983286', '2019040113374697575256', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000295201904018936575211\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('70', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040113393400001342362262', '2019040113393151100555', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000289201904016380276622\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('71', '', '1', '1', '6', '', '2019040214073252491005', '388.00', '0', 'hulu_like', '', '0', '0', '', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('72', 'wechat', '1', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '2019040214142900001397604880', '2019040214133098484848', '388.00', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"6\";}', '0', '0', '0', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('73', '', '1', '1', '6', '', '2019040214170549565298', '388.00', '0', 'hulu_like', '', '0', '0', '', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('74', '', '1', '1', '6', '', '2019040214193656539810', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('75', 'wechat', '1', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '2019040214291800001377252636', '2019040214223910252555', '388.00', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"6\";}', '0', '0', '0', '388.00', '');
INSERT INTO `ims_core_paylog` VALUES ('76', 'wechat', '1', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '2019040400151700001393326866', '2019040400151248525651', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:2:\"17\";s:14:\"transaction_id\";s:28:\"4200000308201904048777150702\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('77', '', '1', '1', '7', '', '2019040400563955491015', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('78', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040400570500001346776924', '2019040400570210152565', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000307201904048443004411\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('79', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401030100001381122723', '2019040401025850535351', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000306201904044146643838\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('80', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401071100001312782277', '2019040401070899535398', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000304201904048635086321\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('81', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401091400001350565258', '2019040401091256575253', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000308201904040577153653\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('82', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401160200001364236580', '2019040401155910210099', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000295201904040095827848\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('83', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401290900001386670139', '2019040401290448525099', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000303201904041095378959\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('84', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401354100001361444424', '2019040401353998495453', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000296201904045063884778\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('85', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401423600001386914016', '2019040401423357102511', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000307201904047081351050\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('86', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401480400001351958466', '2019040401480149101551', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000307201904047758412548\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('87', 'wechat', '1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2019040401514100001322395632', '2019040401513998499810', '1.00', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"7\";s:14:\"transaction_id\";s:28:\"4200000302201904042688038803\";}', '0', '0', '0', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('88', '', '1', '1', '17', '', '2019041022170852485253', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('89', 'wechat', '1', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '2019041022191300001334328544', '2019041022190899100539', '9.90', '1', 'hulu_like', 'a:3:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:2:\"17\";s:14:\"transaction_id\";s:28:\"4200000300201904106312342357\";}', '0', '0', '0', '9.90', '');
INSERT INTO `ims_core_paylog` VALUES ('90', '', '1', '1', '18', '', '2019041102212654101539', '1.00', '0', 'hulu_like', '', '0', '0', '', '1.00', '');
INSERT INTO `ims_core_paylog` VALUES ('91', '', '1', '1', '4', '', '2019042800015551509956', '288.00', '0', 'hulu_like', '', '0', '0', '', '288.00', '');
INSERT INTO `ims_core_paylog` VALUES ('92', 'wechat', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '2019052105510200001397427366', '2019052105505951485652', '198.00', '0', 'hulu_like', 'a:2:{s:4:\"acid\";s:1:\"1\";s:3:\"uid\";s:1:\"4\";}', '0', '0', '0', '198.00', '');

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('50e8c1cd745e83b2f0efb681e2eaf6a6', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-23\";s:5:\"times\";i:3;}', '1558578963');
INSERT INTO `ims_core_sessions` VALUES ('9f22a5b3668b98d8a1188cd0e65562d1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-24\";s:5:\"times\";i:1;}', '1558668790');
INSERT INTO `ims_core_sessions` VALUES ('6720611e713f619e8abdf1ece1b81aee', '1', '101.89.239.230', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q77E\";i:1558665260;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1558668860');
INSERT INTO `ims_core_sessions` VALUES ('10527043f5ee2145ab89eaeaeb860c3e', '1', '49.94.23.33', 'acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"T6Y7\";i:1558665190;s:4:\"nVXh\";i:1558665191;s:4:\"fH2Z\";i:1558665192;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1558668793');
INSERT INTO `ims_core_sessions` VALUES ('dfd50fc9faecb78cbdfb096e679c7027', '1', '61.129.6.174', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bT5k\";i:1558591036;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dfengmian%26m%3Dhulu_like\";', '1558594636');
INSERT INTO `ims_core_sessions` VALUES ('e3c2c8ba56a1efdf3747ea9769b30b8e', '1', '61.151.178.236', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iGoG\";i:1558591009;}dest_url|s:142:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3Dadd%26picture_type%3Dshow%26do%3Ddownload_video%26m%3Dhulu_like\";', '1558594609');
INSERT INTO `ims_core_sessions` VALUES ('e97c9e8b7983eabe5383b4e6e5e56eea', '1', '61.151.178.166', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tl1t\";i:1558590971;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dpicture_video%26m%3Dhulu_like\";', '1558594571');
INSERT INTO `ims_core_sessions` VALUES ('39308f394512ca463fcc16ffc32a46e7', '1', '101.91.60.109', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YTkE\";i:1558577655;}dest_url|s:100:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dpicture%26m%3Dhulu_like\";', '1558581255');
INSERT INTO `ims_core_sessions` VALUES ('1647e5fc7607936dae296a17cd705810', '1', '61.129.6.147', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iwq0\";i:1558577729;}dest_url|s:96:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dvip%26m%3Dhulu_like\";', '1558581329');
INSERT INTO `ims_core_sessions` VALUES ('f1be53dc9c4481c251c40f78d776a28b', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yEFR\";i:1558577733;}dest_url|s:141:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26openid%3DoUozg0pUnypDz4bsX3N5JwU0zh4A%26do%3Dliaotian%26m%3Dhulu_like\";', '1558581333');
INSERT INTO `ims_core_sessions` VALUES ('688079b8e206943e6fb768935b6e7370', '1', '122.96.42.154', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"K6jK\";i:1557331615;s:4:\"re46\";i:1557331616;s:4:\"K9b9\";i:1557331618;s:4:\"MRk1\";i:1557331630;s:4:\"S416\";i:1557331634;s:4:\"qJ4x\";i:1557331634;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";uid|s:1:\"4\";', '1557335234');
INSERT INTO `ims_core_sessions` VALUES ('7a8ab59b4700adc777fa4553eea7aa58', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DUUs\";i:1557330974;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1557334574');
INSERT INTO `ims_core_sessions` VALUES ('423c02eba78137d89a5cac32fa3503b8', '1', '101.89.239.238', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y08Q\";i:1557330984;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D37%26do%3Dview%26m%3Dhulu_like\";', '1557334584');
INSERT INTO `ims_core_sessions` VALUES ('d89a12252d6b7b2e91f3c622d72b1432', '1', '101.91.62.65', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"F3jG\";i:1557331124;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D35%26do%3Dview%26m%3Dhulu_like\";', '1557334724');
INSERT INTO `ims_core_sessions` VALUES ('a7fc92b5ce041ec2b2864b635832d756', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RhZU\";i:1557331675;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dreal%26m%3Dhulu_like\";', '1557335275');
INSERT INTO `ims_core_sessions` VALUES ('0ea9b902a9216685c4e9e7d17ed9c190', '1', '117.136.45.185', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"jGG6\";i:1557333801;s:4:\"Z4FH\";i:1557333814;s:4:\"gQnY\";i:1557333847;s:4:\"XbNT\";i:1557333855;s:4:\"P6mR\";i:1557333956;s:4:\"t6nk\";i:1557333957;}dest_url|s:110:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like%26subscene%3D0\";oauth_openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";uid|s:2:\"26\";', '1557337557');
INSERT INTO `ims_core_sessions` VALUES ('cca629849311b60e4fc58082780c4804', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JY4y\";i:1557333551;}dest_url|s:114:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3Dnew%26do%3Dfengmian%26m%3Dhulu_like\";', '1557337151');
INSERT INTO `ims_core_sessions` VALUES ('c99977ec4ee70a235d67211079a3ce6e', '1', '61.151.178.174', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"orC9\";i:1557332950;}dest_url|s:110:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like%26subscene%3D0\";', '1557336550');
INSERT INTO `ims_core_sessions` VALUES ('816a2f3d9757be82927cc8369b5d0ee5', '1', '61.151.178.174', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vZf1\";i:1557332955;}dest_url|s:137:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like%26subscene%3D0%26wxref%3Dmp.weixin.qq.com\";', '1557336555');
INSERT INTO `ims_core_sessions` VALUES ('dd69db8cd530b407f0ebd2655d80b777', '1', '61.151.179.84', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qsbz\";i:1557332976;}dest_url|s:94:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26subscene%3D0\";', '1557336576');
INSERT INTO `ims_core_sessions` VALUES ('3e368040b2e87f46938c4168c97dde52', '1', '117.136.45.187', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"tqXv\";i:1557333703;s:4:\"BV4b\";i:1557333732;s:4:\"NYOa\";i:1557333734;s:4:\"v6We\";i:1557333737;s:4:\"kqna\";i:1557333864;s:4:\"BTZA\";i:1557333876;}dest_url|s:134:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26share%3DoUozg0obtLh2h-w8noEIfiq9dXfs%26do%3Dmy%26m%3Dhulu_like\";oauth_openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";uid|s:2:\"27\";', '1557337477');
INSERT INTO `ims_core_sessions` VALUES ('3cc7cf47d4f67c421ccae4d3225c0762', '1', '101.91.62.99', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oNsK\";i:1557333221;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D26%26do%3Dview%26m%3Dhulu_like\";', '1557336821');
INSERT INTO `ims_core_sessions` VALUES ('d4b6291671db345f3f251691e09fdeb9', '1', '101.89.239.216', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C8VA\";i:1557333240;}dest_url|s:141:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26openid%3DoUozg0joRwFEuLmn3abHY3NYAN6g%26do%3Dliaotian%26m%3Dhulu_like\";', '1557336840');
INSERT INTO `ims_core_sessions` VALUES ('b409d0743f076d2ed061c64e8032d506', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', 'openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";__reply_times|a:3:{s:7:\"content\";s:69:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&do=my&m=hulu_like\";s:4:\"date\";s:10:\"2019-05-19\";s:5:\"times\";i:1;}', '1558238531');
INSERT INTO `ims_core_sessions` VALUES ('0bf4f3ddfec2aef32ea96009621a6567', '1', '101.91.62.99', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CzJ3\";i:1557333625;}dest_url|s:141:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26openid%3DoUozg0n4h9bf4OdTGCmsxfUfDevs%26do%3Dliaotian%26m%3Dhulu_like\";', '1557337225');
INSERT INTO `ims_core_sessions` VALUES ('1ce53333d4298c870e381d709141f0c3', '1', '101.89.29.92', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oCI0\";i:1557333750;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D28%26do%3Dview%26m%3Dhulu_like\";', '1557337350');
INSERT INTO `ims_core_sessions` VALUES ('be4a42bd53746306b87b75cb5d2ceb08', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"krq9\";i:1557333810;}dest_url|s:104:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtixian_info%26m%3Dhulu_like\";', '1557337410');
INSERT INTO `ims_core_sessions` VALUES ('5af86a7d52e5d8db295ec1bbd81b1c2d', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'openid|s:28:\"oUozg0obtLh2h-w8noEIfiq9dXfs\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-13\";s:5:\"times\";i:1;}', '1557742362');
INSERT INTO `ims_core_sessions` VALUES ('3c75b7c93ca9ab7eeeb69b73d404619a', '1', '222.71.223.168', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"R0mF\";i:1557738763;s:4:\"TPU4\";i:1557738764;s:4:\"bFum\";i:1557738766;s:4:\"pP4T\";i:1557738777;s:4:\"DPxt\";i:1557738786;s:4:\"Y5Li\";i:1557738799;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0obtLh2h-w8noEIfiq9dXfs\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0obtLh2h-w8noEIfiq9dXfs\";uid|s:2:\"25\";', '1557742399');
INSERT INTO `ims_core_sessions` VALUES ('385367b3a03610cf41b73c712e58edd8', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ztJa\";i:1557417219;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1557420819');
INSERT INTO `ims_core_sessions` VALUES ('ba8f9c9bab660fc3d06419c3d5f3c132', '1', '180.97.118.223', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A89q\";i:1557335497;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1557339097');
INSERT INTO `ims_core_sessions` VALUES ('5e493d4c810e80f13b7a296f135e71cb', '1', '117.136.45.185', 'acid|s:1:\"1\";uniacid|i:1;token|a:5:{s:4:\"qT9i\";i:1557375198;s:4:\"K09H\";i:1557375199;s:4:\"yX2U\";i:1557375200;s:4:\"uruD\";i:1557375235;s:4:\"Qalo\";i:1557375243;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";uid|s:2:\"26\";', '1557378843');
INSERT INTO `ims_core_sessions` VALUES ('5cbe05eecd332a3b147d384bbbefedb0', '1', '49.94.201.48', 'acid|s:1:\"1\";uniacid|i:1;token|a:2:{s:4:\"WpDp\";i:1557330588;s:4:\"ep5q\";i:1557330604;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1557334205');
INSERT INTO `ims_core_sessions` VALUES ('01f986db51295250aa5d4b6945f1318b', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cMhh\";i:1557330664;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D30%26do%3Dview%26m%3Dhulu_like\";', '1557334264');
INSERT INTO `ims_core_sessions` VALUES ('004f325368b36690c37baffa8ec9a16a', '1', '61.129.6.159', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QRRo\";i:1558577652;}dest_url|s:100:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dpicture%26m%3Dhulu_like\";', '1558581252');
INSERT INTO `ims_core_sessions` VALUES ('4d23b34d253cc2ecff2a584ac141400a', '1', '180.97.118.219', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J888\";i:1558577021;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D33%26do%3Dview%26m%3Dhulu_like\";', '1558580621');
INSERT INTO `ims_core_sessions` VALUES ('b779435c77191419c03d457223ddb0a0', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y0Uz\";i:1558577037;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk%26m%3Dhulu_like\";', '1558580637');
INSERT INTO `ims_core_sessions` VALUES ('38bb718bdc7eaa0edf87bf5b672ff3c5', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'openid|s:28:\"oUozg0rFl8x9oA3RiP4qkXD6pX5Q\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-23\";s:5:\"times\";i:1;}', '1558581151');
INSERT INTO `ims_core_sessions` VALUES ('4f15ace27d599bd5b26a153577f075fc', '1', '117.90.83.220', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"vEu0\";i:1558577570;s:4:\"LVAb\";i:1558577572;s:4:\"ZSC2\";i:1558577574;s:4:\"vOR9\";i:1558577577;s:4:\"Dvwp\";i:1558577579;s:4:\"ve1H\";i:1558577582;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0rFl8x9oA3RiP4qkXD6pX5Q\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0rFl8x9oA3RiP4qkXD6pX5Q\";uid|s:1:\"3\";', '1558581182');
INSERT INTO `ims_core_sessions` VALUES ('050d9dc23e7607b1295adc54cd156796', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KmBz\";i:1558577629;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D37%26do%3Dview%26m%3Dhulu_like\";', '1558581229');
INSERT INTO `ims_core_sessions` VALUES ('108e4a4aefabe277bb5eaecc35c30a99', '1', '101.89.239.238', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cp4X\";i:1558577635;}dest_url|s:141:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26openid%3DoUozg0pUnypDz4bsX3N5JwU0zh4A%26do%3Dliaotian%26m%3Dhulu_like\";', '1558581235');
INSERT INTO `ims_core_sessions` VALUES ('4fc7c10b5b55d1b2012cc3ed07c7e81d', '1', '117.90.83.220', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"nkMI\";i:1558577949;s:4:\"P6js\";i:1558577950;s:4:\"QyaA\";i:1558577951;s:4:\"MNXN\";i:1558577952;s:4:\"GpZM\";i:1558577960;s:4:\"FHHZ\";i:1558577963;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0qV2OiY7uJmPzQ67SuWO3Ow\";oauth_acid|s:1:\"1\";userinfo|s:844:\"YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwcVYyT2lZN3VKbVB6UTY3U3VXTzNPdyI7czo4OiJuaWNrbmFtZSI7czoxNToi5oms5Lit55u45Lqy572RIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLplYfmsZ8iO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1RJTG5UM0FJZ3FKMjVtMEREZ1ljQUtQMW05YUFXMkpTNGZzTTFYb0lVTGdGWVBQaWFpYXlsMjRQS0JsRFdvRjJqcTRtdW5vclFiWFVCVDFTbVJDSWljcGRYQjNpYVFHd2ljRlBkLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUzMjc5MTE1OTtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9USUxuVDNBSWdxSjI1bTBERGdZY0FLUDFtOWFBVzJKUzRmc00xWG9JVUxnRllQUGlhaWF5bDI0UEtCbERXb0YyanE0bXVub3JRYlhVQlQxU21SQ0lpY3BkWEIzaWFRR3dpY0ZQZC8xMzIiO30=\";uid|s:2:\"29\";openid|s:28:\"oUozg0qV2OiY7uJmPzQ67SuWO3Ow\";', '1558581564');
INSERT INTO `ims_core_sessions` VALUES ('83959dc8256e211eab53a084d2ace8bc', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', 'openid|s:28:\"oUozg0qV2OiY7uJmPzQ67SuWO3Ow\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-23\";s:5:\"times\";i:1;}', '1558581241');
INSERT INTO `ims_core_sessions` VALUES ('cc4f030d4ecfb0b7ada861c6ced87af2', '1', '61.129.8.179', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cnNg\";i:1558576975;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D17%26do%3Dview%26m%3Dhulu_like\";', '1558580575');
INSERT INTO `ims_core_sessions` VALUES ('ccb440eed6055979ae82a1ad2ebc1341', '1', '101.89.239.216', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yhJP\";i:1558576992;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D37%26do%3Dview%26m%3Dhulu_like\";', '1558580592');
INSERT INTO `ims_core_sessions` VALUES ('ca4103f9c37c0a58ff11fa7e50e8d2c5', '1', '61.129.6.174', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Be2s\";i:1558576999;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D36%26do%3Dview%26m%3Dhulu_like\";', '1558580599');
INSERT INTO `ims_core_sessions` VALUES ('a4f0463dd70c739aa2c67e225a723726', '1', '101.227.139.178', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yI77\";i:1558575443;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D7%26do%3Dview%26m%3Dhulu_like\";', '1558579043');
INSERT INTO `ims_core_sessions` VALUES ('c97b8f34ddea4baf2a1bb3a9cbc78bad', '1', '61.151.178.236', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f3Ki\";i:1558576927;}dest_url|s:137:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26sex%3D0%26age%3D0%26marry%3D0%26city%3D%26do%3Dso%26m%3Dhulu_like\";', '1558580527');
INSERT INTO `ims_core_sessions` VALUES ('8906b7047db4915c71939cc9da06f0e9', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aB53\";i:1558576946;}dest_url|s:282:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26sex%3D0%26age%3D0%26marry%3D0%26city%3D%25E7%25A6%258F%25E5%25BB%25BA%25E7%259C%2581%257C%25E5%258E%25A6%25E9%2597%25A8%25E5%25B8%2582%257C%25E6%25B5%25B7%25E6%25B2%25A7%25E5%258C%25BA%26do%3Dso%26m%3Dhulu_like\";', '1558580546');
INSERT INTO `ims_core_sessions` VALUES ('920cc90b9b3d5195485d69e864eeb240', '1', '101.91.62.99', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S1uR\";i:1558576955;}dest_url|s:282:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26sex%3D1%26age%3D0%26marry%3D0%26city%3D%25E7%25A6%258F%25E5%25BB%25BA%25E7%259C%2581%257C%25E5%258E%25A6%25E9%2597%25A8%25E5%25B8%2582%257C%25E6%25B5%25B7%25E6%25B2%25A7%25E5%258C%25BA%26do%3Dso%26m%3Dhulu_like\";', '1558580555');
INSERT INTO `ims_core_sessions` VALUES ('a13119d6df1f4fba55742e85e4e25ac8', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MyZu\";i:1558576966;}dest_url|s:282:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26sex%3D1%26age%3D1%26marry%3D0%26city%3D%25E7%25A6%258F%25E5%25BB%25BA%25E7%259C%2581%257C%25E5%258E%25A6%25E9%2597%25A8%25E5%25B8%2582%257C%25E6%25B5%25B7%25E6%25B2%25A7%25E5%258C%25BA%26do%3Dso%26m%3Dhulu_like\";', '1558580566');
INSERT INTO `ims_core_sessions` VALUES ('94cc98653fac0db76ba6d92dd2601bca', '1', '61.151.207.141', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tF8L\";i:1558590965;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1558594565');
INSERT INTO `ims_core_sessions` VALUES ('f13305e34cb344433c9c0333e8240b5f', '1', '61.129.6.147', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FO0E\";i:1558577780;}dest_url|s:96:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26m%3Dhulu_like%26do%3Dvip\";', '1558581380');
INSERT INTO `ims_core_sessions` VALUES ('5da1176da27c0c95efa714161e2ca9e7', '1', '101.91.60.109', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mY0Q\";i:1557329860;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1557333460');
INSERT INTO `ims_core_sessions` VALUES ('6d7701b9af91b3e25230977bd8d68363', '1', '101.227.139.178', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XQ35\";i:1557329853;}dest_url|s:152:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3D1%26receive%3DoUozg0pUnypDz4bsX3N5JwU0zh4A%26do%3Ddashang%26m%3Dhulu_like\";', '1557333453');
INSERT INTO `ims_core_sessions` VALUES ('d14900fba17adda78a08adf77c1c238a', '1', '101.89.239.216', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TsXB\";i:1558575338;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dinfo%26m%3Dhulu_like\";', '1558578938');
INSERT INTO `ims_core_sessions` VALUES ('47203e59692cb1fd56250f630f2d7f9a', '1', '49.94.41.231', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"jWgq\";i:1558590954;s:4:\"Lu35\";i:1558590958;s:4:\"rfFs\";i:1558590973;s:4:\"qegX\";i:1558590974;s:4:\"vc8m\";i:1558590976;s:4:\"P9R4\";i:1558590995;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1558594595');
INSERT INTO `ims_core_sessions` VALUES ('614bf13a75d3ded495b73ef4db30ec8b', '1', '117.136.45.185', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"ggou\";i:1557329788;s:4:\"n8PO\";i:1557329793;s:4:\"L98T\";i:1557329801;s:4:\"ujWa\";i:1557329806;s:4:\"Un3L\";i:1557329810;s:4:\"wI7P\";i:1557329812;}dest_url|s:134:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26share%3DoUozg0obtLh2h-w8noEIfiq9dXfs%26do%3Dmy%26m%3Dhulu_like\";oauth_openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";uid|s:2:\"26\";', '1557333413');
INSERT INTO `ims_core_sessions` VALUES ('c3d618f7895725fa64e6314be4453c18', '1', '61.129.6.147', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mRkg\";i:1558567525;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dfengmian%26m%3Dhulu_like\";', '1558571125');
INSERT INTO `ims_core_sessions` VALUES ('78009bf331c355ee6c0618a0701817c4', '1', '61.151.207.141', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ABEB\";i:1558567376;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1558570976');
INSERT INTO `ims_core_sessions` VALUES ('6ea3149bbb2f7001d35211d2f475b7c9', '1', '119.254.239.253', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sN76\";i:1558567325;}', '1558570925');
INSERT INTO `ims_core_sessions` VALUES ('20864b0097ca618b6189a638a87b4af1', '1', '119.254.239.253', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o26I\";i:1558567326;}', '1558570926');
INSERT INTO `ims_core_sessions` VALUES ('c1fbee605dab4e6ef0b0f99d355f794c', '1', '101.91.60.107', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Z9KO\";i:1558567306;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk_add%26m%3Dhulu_like\";', '1558570906');
INSERT INTO `ims_core_sessions` VALUES ('e736d238c49e020eb827572f35d6663d', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'openid|s:28:\"oUozg0pUnypDz4bsX3N5JwU0zh4A\";__reply_times|a:3:{s:7:\"content\";s:69:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&do=my&m=hulu_like\";s:4:\"date\";s:10:\"2019-05-09\";s:5:\"times\";i:1;}', '1557378842');
INSERT INTO `ims_core_sessions` VALUES ('3abc9a57cda0b2770630ad9968b73a30', '1', '101.89.29.94', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oEsf\";i:1557333560;}dest_url|s:114:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3Dboy%26do%3Dfengmian%26m%3Dhulu_like\";', '1557337160');
INSERT INTO `ims_core_sessions` VALUES ('29f94a61f12f2bc1c192cfb34e695b8d', '1', '101.91.60.107', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q4uw\";i:1557375250;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1557378850');
INSERT INTO `ims_core_sessions` VALUES ('bbc93239a48dcd2a16385777e9a8d11a', '1', '101.89.19.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1F1\";i:1557375295;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D28%26do%3Dview%26m%3Dhulu_like\";', '1557378895');
INSERT INTO `ims_core_sessions` VALUES ('1e9cded030b3c9c5cb4d38b9a8dfcede', '1', '117.136.45.187', 'acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"KCTY\";i:1557386914;s:4:\"F6HH\";i:1557386915;s:4:\"kI1P\";i:1557386917;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";uid|s:2:\"27\";', '1557390518');
INSERT INTO `ims_core_sessions` VALUES ('d5e8b919d455c187a8ef1417e896b88a', '1', '61.129.6.227', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v31i\";i:1557461159;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1557464759');
INSERT INTO `ims_core_sessions` VALUES ('565b74949878be31cc32eaccbd52b5df', '1', '49.95.146.12', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"WP8B\";i:1557676101;s:4:\"b8RW\";i:1557676103;s:4:\"fI4j\";i:1557676113;s:4:\"k1ve\";i:1557676118;s:4:\"YaJh\";i:1557676121;s:4:\"xXSs\";i:1557676133;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1557679733');
INSERT INTO `ims_core_sessions` VALUES ('9a21033c21b5bb00a5539b92fcead36a', '1', '61.151.178.166', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qzqP\";i:1557676028;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1557679628');
INSERT INTO `ims_core_sessions` VALUES ('dd63b9021cde4036e1964cc6371be712', '1', '101.227.139.161', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KD9Y\";i:1557676071;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D6%26do%3Dview%26m%3Dhulu_like\";', '1557679671');
INSERT INTO `ims_core_sessions` VALUES ('86b4e669fc5633c79a2fe8711eab744a', '1', '61.151.178.163', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uI0P\";i:1557676083;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D7%26do%3Dview%26m%3Dhulu_like\";', '1557679683');
INSERT INTO `ims_core_sessions` VALUES ('e947368740b7226ef53d0e4040914d2c', '1', '101.91.60.106', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YTWw\";i:1557676090;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D5%26do%3Dview%26m%3Dhulu_like\";', '1557679690');
INSERT INTO `ims_core_sessions` VALUES ('8aa598dd4acca0866dc01bccb83d5817', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OWat\";i:1557676097;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D9%26do%3Dview%26m%3Dhulu_like\";', '1557679697');
INSERT INTO `ims_core_sessions` VALUES ('37e19ff1f7edab31ff662416a516493f', '1', '61.151.207.141', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LG3y\";i:1557676105;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D8%26do%3Dview%26m%3Dhulu_like\";', '1557679705');
INSERT INTO `ims_core_sessions` VALUES ('466dc8ed23152c6fc367e6db94e2ab80', '1', '61.151.178.177', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oono\";i:1557676126;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D4%26do%3Dview%26m%3Dhulu_like\";', '1557679726');
INSERT INTO `ims_core_sessions` VALUES ('1f8bc465eb563072bbf8551f69be13fb', '1', '101.89.239.216', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CyKd\";i:1557676147;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dchat%26m%3Dhulu_like\";', '1557679747');
INSERT INTO `ims_core_sessions` VALUES ('097c0568454df9e035092d49135806be', '1', '101.89.29.86', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JPAV\";i:1557676151;}dest_url|s:141:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26openid%3DoUozg0jH6-V9WEIg4HOR903amdjA%26do%3Dliaotian%26m%3Dhulu_like\";', '1557679751');
INSERT INTO `ims_core_sessions` VALUES ('ab6d2da29f9d5fcaedb51745bf48a44f', '1', '61.151.207.205', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"btKx\";i:1557676173;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D30%26do%3Dview%26m%3Dhulu_like\";', '1557679773');
INSERT INTO `ims_core_sessions` VALUES ('14adb9604cd93c0ab5c47b67323feb1f', '1', '49.95.146.12', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"s57K\";i:1557699318;s:4:\"QRHL\";i:1557699322;s:4:\"Axns\";i:1557699338;s:4:\"s4Jf\";i:1557699341;s:4:\"qClk\";i:1557699345;s:4:\"rjgu\";i:1557699349;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1557702949');
INSERT INTO `ims_core_sessions` VALUES ('6690252baaabe1e2534e4e15df87d05d', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AfJC\";i:1557698865;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1557702465');
INSERT INTO `ims_core_sessions` VALUES ('39a7923cf78576bb7331c719bd570d33', '1', '61.129.8.179', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rxAA\";i:1557698918;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1557702518');
INSERT INTO `ims_core_sessions` VALUES ('15cd947e3401b232abae514640e1ab59', '1', 'oUozg0hZ0EowmL72nvYJ1BLaVRaU', 'openid|s:28:\"oUozg0hZ0EowmL72nvYJ1BLaVRaU\";__reply_times|a:3:{s:7:\"content\";s:30:\"你好欢迎来到乐享定制\";s:4:\"date\";s:10:\"2019-05-13\";s:5:\"times\";i:1;}', '1557707821');
INSERT INTO `ims_core_sessions` VALUES ('844c2536dfb70adc040ae54d026f1cea', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k39Y\";i:1557738821;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1557742421');
INSERT INTO `ims_core_sessions` VALUES ('15c6369471f9bcbb4893377eaace0311', '1', '101.89.29.97', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D0o0\";i:1557738827;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1557742427');
INSERT INTO `ims_core_sessions` VALUES ('57eb033a6249423dbb72771f4c9b00fc', '1', '61.151.207.205', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"juE5\";i:1557738837;}dest_url|s:115:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3Dgirl%26do%3Dfengmian%26m%3Dhulu_like\";', '1557742437');
INSERT INTO `ims_core_sessions` VALUES ('bbc04dc2a4e1198eaadebfdab822c2a9', '1', '101.89.239.120', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"azso\";i:1557738847;}dest_url|s:114:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3Dboy%26do%3Dfengmian%26m%3Dhulu_like\";', '1557742447');
INSERT INTO `ims_core_sessions` VALUES ('6deb33fb23c44f1efc26c846678166e7', '1', '122.96.41.215', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"mRW8\";i:1558009667;s:4:\"Crx8\";i:1558009683;s:4:\"U9SL\";i:1558009691;s:4:\"iCSd\";i:1558009700;s:4:\"D00E\";i:1558009710;s:4:\"Ws75\";i:1558009715;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0nDymxiB0QyypleJpNDGudw\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0nDymxiB0QyypleJpNDGudw\";uid|s:1:\"7\";', '1558013315');
INSERT INTO `ims_core_sessions` VALUES ('dd78911c3123762c4a77ab20c2cc4cef', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'openid|s:28:\"oUozg0nDymxiB0QyypleJpNDGudw\";__reply_times|a:3:{s:7:\"content\";s:57:\"http://www.ulxwtf23361.cn/app/index.php?i=1&c=entry&eid=5\";s:4:\"date\";s:10:\"2019-05-16\";s:5:\"times\";i:1;}', '1558013261');
INSERT INTO `ims_core_sessions` VALUES ('9ba2fd6703827c9578e069c9ec77316d', '1', '61.129.8.179', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S655\";i:1558009712;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558013312');
INSERT INTO `ims_core_sessions` VALUES ('f1ae3da0da307e6d87f0049379fa3160', '1', '61.151.178.177', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J62r\";i:1558009717;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1558013317');
INSERT INTO `ims_core_sessions` VALUES ('6afaed4ae781dddf848655828de70d3f', '1', '58.247.206.148', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hYU8\";i:1558009743;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D10%26do%3Dview%26m%3Dhulu_like\";', '1558013343');
INSERT INTO `ims_core_sessions` VALUES ('6a75419a2747ba596c0f4b649a8b74ed', '1', '122.192.12.26', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Le41\";i:1558572035;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";uid|s:1:\"4\";', '1558575637');
INSERT INTO `ims_core_sessions` VALUES ('ac3832e3dbe82449ac9dbe5f8e042dac', '1', '117.90.83.220', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"kykZ\";i:1558577591;s:4:\"oiKB\";i:1558577593;s:4:\"iKeU\";i:1558577595;s:4:\"uL7l\";i:1558577597;s:4:\"t5aD\";i:1558577599;s:4:\"m5B1\";i:1558577601;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0lRytzTodqiNPMZCz4hFBPo\";uid|s:1:\"4\";', '1558581201');
INSERT INTO `ims_core_sessions` VALUES ('b95f444c7e1e807d2a8d8774270366e8', '1', '58.247.206.153', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"waC7\";i:1558388909;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558392509');
INSERT INTO `ims_core_sessions` VALUES ('bcb64146a918cb0eafff9335afcf4af2', '1', '101.227.139.161', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sg5x\";i:1558210569;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558214169');
INSERT INTO `ims_core_sessions` VALUES ('3626eeb59455e24408b3c83c4fe4902d', '1', '101.89.29.92', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MIi3\";i:1558210573;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1558214173');
INSERT INTO `ims_core_sessions` VALUES ('1fc774680b21e4804afc4108262f5ea5', '1', '101.227.139.161', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"K2I0\";i:1558210593;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk%26m%3Dhulu_like\";', '1558214193');
INSERT INTO `ims_core_sessions` VALUES ('c1ec2c977a6bd8c248cb5ed9149fef33', '1', '101.89.29.86', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DhTf\";i:1558210611;}dest_url|s:99:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dactive%26m%3Dhulu_like\";', '1558214211');
INSERT INTO `ims_core_sessions` VALUES ('643061a896e3f523d70a5146c6b883ac', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gL16\";i:1558210620;}dest_url|s:120:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26active_id%3D1%26do%3Dactive_view%26m%3Dhulu_like\";', '1558214220');
INSERT INTO `ims_core_sessions` VALUES ('730f566a7115f7564e725e08b1f091ab', '1', '61.151.178.236', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HSy3\";i:1558210629;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1558214229');
INSERT INTO `ims_core_sessions` VALUES ('1e27fa8e6e567e26e410a2f99b9e9412', '1', '101.89.239.238', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xiew\";i:1558210636;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dfengmian%26m%3Dhulu_like\";', '1558214236');
INSERT INTO `ims_core_sessions` VALUES ('f254c7a4be984d4fd84695501d683c73', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mh3q\";i:1558210721;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D22%26do%3Dview%26m%3Dhulu_like\";', '1558214321');
INSERT INTO `ims_core_sessions` VALUES ('38654af013a3f3b9db1eb9c7a3badfad', '1', '61.129.8.179', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vHto\";i:1558210746;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D7%26do%3Dview%26m%3Dhulu_like\";', '1558214346');
INSERT INTO `ims_core_sessions` VALUES ('a78a993f75e891f1c1a6443a24b7727d', '1', '180.97.118.219', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XVke\";i:1558210780;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D34%26do%3Dview%26m%3Dhulu_like\";', '1558214380');
INSERT INTO `ims_core_sessions` VALUES ('a29d9af8d755f5aa4f800bf5edbc6043', '1', '61.129.6.227', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bzVo\";i:1558210793;}dest_url|s:107:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D2%26do%3Dview%26m%3Dhulu_like\";', '1558214393');
INSERT INTO `ims_core_sessions` VALUES ('5d6a6d296eba96ea75ac733c3817755b', '1', '61.129.6.159', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t3My\";i:1558210827;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D37%26do%3Dview%26m%3Dhulu_like\";', '1558214427');
INSERT INTO `ims_core_sessions` VALUES ('30d4cabd1767be354ef91b266d44773b', '1', '101.89.239.216', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cqx8\";i:1558214337;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D26%26do%3Dview%26m%3Dhulu_like\";', '1558217937');
INSERT INTO `ims_core_sessions` VALUES ('19808745cfcde95974ea5ecbc64bbb03', '1', '101.91.60.107', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ao4N\";i:1558214338;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D26%26do%3Dview%26m%3Dhulu_like\";', '1558217938');
INSERT INTO `ims_core_sessions` VALUES ('3d3c3580d4f16e242390211b5c0d06bd', '1', '61.129.6.151', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l4U6\";i:1558214796;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk_add%26m%3Dhulu_like\";', '1558218396');
INSERT INTO `ims_core_sessions` VALUES ('f347834beb1d9c6f0c684ef6adb1df19', '1', '223.104.247.178', 'acid|s:1:\"1\";uniacid|i:1;token|a:5:{s:4:\"WM96\";i:1558234923;s:4:\"sHn6\";i:1558234924;s:4:\"SF4M\";i:1558234925;s:4:\"gx0k\";i:1558234927;s:4:\"suE3\";i:1558234932;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";oauth_openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0n4h9bf4OdTGCmsxfUfDevs\";uid|s:2:\"27\";', '1558238533');
INSERT INTO `ims_core_sessions` VALUES ('5eee73e22c2c3c9471430842855f6ac2', '1', '101.89.29.92', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p4R3\";i:1558234985;}dest_url|s:122:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like%26wxref%3Dmp.weixin.qq.com\";', '1558238585');
INSERT INTO `ims_core_sessions` VALUES ('f93965823f8c7b61873eed6376aac544', '1', '61.129.6.159', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IXy2\";i:1558234991;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dinfo%26m%3Dhulu_like\";', '1558238591');
INSERT INTO `ims_core_sessions` VALUES ('2d2b1bd54c2ebc2213f39fa81f220ec4', '1', '61.129.6.227', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Rr0Z\";i:1558388909;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558392509');
INSERT INTO `ims_core_sessions` VALUES ('807fdd03cdea5b1258428e86eafc9f41', '1', '180.97.118.219', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KX8a\";i:1558388913;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1558392513');
INSERT INTO `ims_core_sessions` VALUES ('5ea4eac2852bba4fffd2630c6bb025a2', '1', '61.129.7.235', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lk21\";i:1558389096;}dest_url|s:95:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dmy%26m%3Dhulu_like\";', '1558392696');
INSERT INTO `ims_core_sessions` VALUES ('4e8a78026391531ac9d92d7402eb4b06', '1', '101.91.60.106', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rYQy\";i:1558389104;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk%26m%3Dhulu_like\";', '1558392704');
INSERT INTO `ims_core_sessions` VALUES ('b37198c6133002b8777db0dbb8f9b045', '1', '61.129.6.151', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sDzN\";i:1558389110;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26type%3D1%26do%3Dlike%26m%3Dhulu_like\";', '1558392710');
INSERT INTO `ims_core_sessions` VALUES ('91f24595518f35363fe5410daf3b2054', '1', '61.151.178.197', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HhwA\";i:1558389122;}dest_url|s:370:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D1%26auth%3D7136a56477ae7cbaa88e7c61d20f981d8ec1a331%26ps%3DeyJ0aWQiOiI5MiIsInVuaW9udGlkIjoiMjAxOTA1MjEwNTUxMDIwMDAwMTM5NzQyNzM2NiIsInVzZXIiOiJvVW96ZzBsUnl0elRvZHFpTlBNWkN6NGhGQlBvIiwiZmVlIjoiMTk4LjAwIiwidGl0bGUiOiIlRTclOUIlQjglRTQlQkElQjIlRTQlQkElQTQlRTUlOEYlOEJWSVAlRTUlODUlODUlRTUlODAlQkMifQ%253D%253D\";', '1558392722');
INSERT INTO `ims_core_sessions` VALUES ('0a60c6fa07317473bbe72ab5d9c1acc7', '1', '180.97.118.223', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v6mh\";i:1558389122;}dest_url|s:91:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dmc%26a%3Dcash%26do%3Dwechat\";', '1558392722');
INSERT INTO `ims_core_sessions` VALUES ('ffd5b18cf1cb0f27fb2d42510375f7c6', '1', '101.91.60.109', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"opy0\";i:1558389134;}dest_url|s:101:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dfengmian%26m%3Dhulu_like\";', '1558392734');
INSERT INTO `ims_core_sessions` VALUES ('f4e1d3dd0e6600dbf5f0ae69fe933f3d', '1', '180.97.118.223', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jk6K\";i:1558389157;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D37%26do%3Dview%26m%3Dhulu_like\";', '1558392757');
INSERT INTO `ims_core_sessions` VALUES ('9a4e8efa62fdb78f93cae66739489149', '1', '61.151.178.164', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T7Ur\";i:1558389169;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D36%26do%3Dview%26m%3Dhulu_like\";', '1558392769');
INSERT INTO `ims_core_sessions` VALUES ('47951565439e5234d83983ffe745c7a6', '1', '61.129.8.179', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GpY5\";i:1558389187;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D31%26do%3Dview%26m%3Dhulu_like\";', '1558392787');
INSERT INTO `ims_core_sessions` VALUES ('0d45b26236fe2851dac7ee934b64be4f', '1', '101.89.239.232', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vghw\";i:1558389210;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D27%26do%3Dview%26m%3Dhulu_like\";', '1558392810');
INSERT INTO `ims_core_sessions` VALUES ('92b44abb716f30f0bc7ed539e409806c', '1', '101.89.239.232', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b7Az\";i:1558389223;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D25%26do%3Dview%26m%3Dhulu_like\";', '1558392823');
INSERT INTO `ims_core_sessions` VALUES ('51da236456812925c80b561889fa774b', '1', '61.151.178.166', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"er12\";i:1558389239;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D32%26do%3Dview%26m%3Dhulu_like\";', '1558392839');
INSERT INTO `ims_core_sessions` VALUES ('aa4e1a66949fe1dece16deecae414bad', '1', '61.129.6.251', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"giLl\";i:1558389247;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D34%26do%3Dview%26m%3Dhulu_like\";', '1558392847');
INSERT INTO `ims_core_sessions` VALUES ('1b227aa65a402a3c9fa8a7bac0b8ef68', '1', '180.98.25.17', 'acid|s:1:\"1\";uniacid|i:1;token|a:3:{s:4:\"zjah\";i:1558499040;s:4:\"Eidi\";i:1558499041;s:4:\"D51l\";i:1558499042;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";oauth_openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";oauth_acid|s:1:\"1\";openid|s:28:\"oUozg0pTQOoJq4VMMCLt42Do7Q2A\";uid|s:1:\"2\";', '1558502644');
INSERT INTO `ims_core_sessions` VALUES ('7bc7e04c3a37d2540c8ab199c903707a', '1', '61.151.178.166', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"COgX\";i:1558530202;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558533802');
INSERT INTO `ims_core_sessions` VALUES ('b70240d88ef3db45622bdca780266276', '1', '101.91.60.104', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sPHS\";i:1558530207;}dest_url|s:106:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5%26wxref%3Dmp.weixin.qq.com\";', '1558533807');
INSERT INTO `ims_core_sessions` VALUES ('812e54319d2b99bc0c35da80f622a339', '1', '58.247.206.150', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dx6B\";i:1558530223;}dest_url|s:97:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26do%3Dtalk%26m%3Dhulu_like\";', '1558533823');
INSERT INTO `ims_core_sessions` VALUES ('a1c95bd1caae7b1902304107b021636c', '1', '61.151.179.84', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fOOW\";i:1558530253;}dest_url|s:108:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26vid%3D30%26do%3Dview%26m%3Dhulu_like\";', '1558533853');
INSERT INTO `ims_core_sessions` VALUES ('328208814e403c4471ae94601bda06d5', '1', '61.151.178.165', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Bb5I\";i:1558567282;}dest_url|s:79:\"http%3A%2F%2Fwww.ulxwtf23361.cn%2Fapp%2Findex.php%3Fi%3D1%26c%3Dentry%26eid%3D5\";', '1558570882');

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}');
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('store_pay', 'a:1:{s:6:\"wechat\";a:4:{s:6:\"switch\";i:2;s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:7:\"signkey\";s:0:\"\";}}');
INSERT INTO `ims_core_settings` VALUES ('platform', 'a:5:{s:5:\"token\";s:32:\"VgNEjAtnQj4gNxDMKnJnTjRZPaEQKajA\";s:14:\"encodingaeskey\";s:43:\"Ry924y5AC94268jcOa55Cyrc9A9afOC6FTJ6z264RFY\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES ('1', '1', '0', '7', 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES ('2', '1', '1', '8', 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_active`;
CREATE TABLE `ims_hulu_like_active` (
  `active_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `active_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `active_title` varchar(100) NOT NULL,
  `active_type` int(10) NOT NULL,
  `active_boy` int(10) NOT NULL,
  `active_girl` int(10) NOT NULL,
  `active_money` decimal(10,4) NOT NULL,
  `active_address` text NOT NULL,
  `active_starttime` varchar(100) NOT NULL,
  `active_endtime` varchar(100) NOT NULL,
  `active_wechat` varchar(100) NOT NULL,
  `active_tel` varchar(100) NOT NULL,
  `active_content` text NOT NULL,
  `active_time` varchar(100) NOT NULL,
  `active_ip` varchar(100) NOT NULL,
  `active_container` varchar(100) NOT NULL,
  `active_os` varchar(100) NOT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_active
-- ----------------------------
INSERT INTO `ims_hulu_like_active` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'Ktv ', '3', '66', '66', '100.0000', 'Hhjjj ', '1553604480', '1553690880', '19000000000', '19000000000', 'Ggjjjjhhhjj', '1553604572', '49.92.114.39', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_ads
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_ads`;
CREATE TABLE `ims_hulu_like_ads` (
  `ads_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `ads_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `ads_did` int(10) NOT NULL,
  `ads_title` varchar(100) NOT NULL,
  `ads_pic` text NOT NULL,
  `ads_link` text NOT NULL,
  `ads_time` varchar(100) NOT NULL,
  `ads_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`ads_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_ads
-- ----------------------------
INSERT INTO `ims_hulu_like_ads` VALUES ('5', '1', '1', '0', '1', 'images/1/2019/04/oh949QlQhLl9s4PJ5L6295c6LIi9sJ.png', 'https://mp.weixin.qq.com/s/TfEX2C6ovqb0psepgoR8dw', '1554280946', '183.213.195.98');
INSERT INTO `ims_hulu_like_ads` VALUES ('15', '1', '1', '56', '54', 'images/1/2019/04/vW3N15EQ1fzde4S8rE6QR16MQw6481.png', 'https://mp.weixin.qq.com/s/8Cg_M2kE1tUJ3MduwM760A', '1554199321', '183.213.197.37');
INSERT INTO `ims_hulu_like_ads` VALUES ('13', '1', '1', '2', '001', 'images/1/2019/05/trtLEY1FqeFMEzZeFFEDuebe4i0tID.png', 'https://mp.weixin.qq.com/s/Pz_-oya8bHJI6B7Cd8J1Ow', '1557252335', '183.211.179.89');
INSERT INTO `ims_hulu_like_ads` VALUES ('16', '1', '1', '0', '', 'images/1/2019/03/a1BL6XzL6la1W6xUClUV5bb1LL5fl6.gif', 'https://mp.weixin.qq.com/s/egnPYCCxBApmFmQtrhL1Dg', '1554199412', '183.213.197.37');
INSERT INTO `ims_hulu_like_ads` VALUES ('14', '1', '1', '0', '56', 'images/1/2019/04/o268jEb2J726bJ39922z737G263Su2.png', '', '1554091794', '183.211.181.140');

-- ----------------------------
-- Table structure for ims_hulu_like_chongzhi
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_chongzhi`;
CREATE TABLE `ims_hulu_like_chongzhi` (
  `chongzhi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `chongzhi_type` int(10) NOT NULL COMMENT '1为充值/2为消费',
  `chongzhi_jinbi` int(10) NOT NULL,
  `order_money` decimal(10,4) NOT NULL,
  `chongzhi_time` varchar(100) NOT NULL,
  `chongzhi_ip` varchar(100) NOT NULL,
  `chongzhi_container` varchar(100) NOT NULL,
  `chongzhi_os` varchar(100) NOT NULL,
  PRIMARY KEY (`chongzhi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_chongzhi
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_contact
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_contact`;
CREATE TABLE `ims_hulu_like_contact` (
  `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '查看者',
  `contact_openid` varchar(100) NOT NULL COMMENT '被查看者',
  `contact_time` varchar(100) NOT NULL,
  `contact_ip` varchar(100) NOT NULL,
  `contact_container` varchar(100) NOT NULL,
  `contact_os` varchar(100) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_contact
-- ----------------------------
INSERT INTO `ims_hulu_like_contact` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1553686749', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd3', '1553686773', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('3', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd1', '1553686789', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554978250', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1554978273', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554978291', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('7', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554978302', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('8', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557076242', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('9', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jS_EoO1PppZKHjm5391lho', '1557254136', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('10', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557254145', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('11', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557254162', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('12', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '1557254359', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('13', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '1557300521', '114.229.176.61', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('14', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557326412', '49.94.201.48', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('15', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557327249', '122.96.42.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('16', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1557676074', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('17', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd4', '1557699349', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('18', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558210783', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('19', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1558214287', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('20', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1558389143', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('21', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1558389155', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('22', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jS_EoO1PppZKHjm5391lho', '1558389167', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_contact` VALUES ('23', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558576932', '49.94.41.231', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_gift`;
CREATE TABLE `ims_hulu_like_gift` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `gift_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `gift_did` int(10) NOT NULL,
  `gift_name` varchar(100) NOT NULL,
  `gift_picture` text NOT NULL,
  `gift_money` decimal(10,4) NOT NULL,
  `gift_time` varchar(100) NOT NULL,
  `gift_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_gift
-- ----------------------------
INSERT INTO `ims_hulu_like_gift` VALUES ('1', '1', '1', '2', '玫瑰花', 'images/1/2019/03/Mp4Pi6tpm7zVL4l6zG6g4SL61SAlL6.gif', '10.0000', '1553681425', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('2', '1', '1', '12', '蓝色妖姬', 'images/1/2019/03/iy89ZqB3zc3c0h6807CC7YeQ7ZXHBj.gif', '100.0000', '1553681578', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('3', '1', '1', '11', '一束玫瑰', 'images/1/2019/03/rsjm70JA5SAS444CfXMGj0f10J4rXS.jpg', '100.0000', '1553681564', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('4', '1', '1', '95', '小火箭', 'images/1/2019/03/xjjImAHftXEui049BVU0xJe7FBt7VT.gif', '600.0000', '1553680832', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('5', '1', '1', '96', '大火箭', 'images/1/2019/03/YD48ebc4rHC82fd2zfBu2b5C80c3B3.gif', '1888.0000', '1553680845', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('6', '1', '1', '8', '金话筒', 'images/1/2019/03/i7ZXk72i7gz4m75xRGaV9vG454m4rK.png', '58.0000', '1553681518', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('9', '1', '1', '92', '跑车', 'images/1/2019/03/hF2MTtwvoTXxxUX55wWO84FM5z545X.gif', '888.0000', '1553680789', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('14', '1', '1', '5', '奶茶', 'images/1/2019/03/M566V6gd6Kd665g5gUeRG5EBuvj5zG.gif', '18.0000', '1553681469', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('10', '1', '1', '93', '豪华游艇', 'images/1/2019/03/W8FTzT6AeTH4tkCEt6TT8v6FXE68ww.gif', '1588.0000', '1553680812', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('12', '1', '1', '97', '直升机', 'images/1/2019/03/a5ll6b885maEbpc3667mQG686K3RZD.gif', '9999.0000', '1553680868', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('13', '1', '1', '99', '海景别墅', 'images/1/2019/03/f70LYSlLjwYpDwS17wNDPxNSA1Ul1N.gif', '20000.0000', '1553680887', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('15', '1', '1', '7', '手磨咖啡', 'images/1/2019/03/gN3TT9iRt2H4NItrkninDLyYycINIY.gif', '38.0000', '1553681502', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('16', '1', '1', '6', '啤酒', 'images/1/2019/03/eJE866jmkj8OHM0Ba8Hak4j2CEB6HH.gif', '28.0000', '1553681487', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('17', '1', '1', '9', '外卖', 'images/1/2019/03/REVSOzEVhc2cqoqFSEcx2s2FvxXSfq.gif', '68.0000', '1553681535', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('18', '1', '1', '90', '夜宵', 'images/1/2019/03/CZ271ltB7BkNZ2ttQyqN9N7lNbY152.gif', '288.0000', '1553680708', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('19', '1', '1', '10', '电影票', 'images/1/2019/03/lPlwh70zA0WY766hpkw7AJpDA0Z0Lp.gif', '80.0000', '1553681550', '183.213.197.198');
INSERT INTO `ims_hulu_like_gift` VALUES ('20', '1', '1', '1', '飞吻', 'images/1/2019/03/OzsuVyPpaZ7yyp7SpTpYZsV2ayAyjy.gif', '1.0000', '1553783977', '183.213.192.53');
INSERT INTO `ims_hulu_like_gift` VALUES ('21', '1', '1', '3', 'love', 'images/1/2019/03/Mn68yKY26Y2Edy35KS3s38m5YuKE6K.gif', '10.0000', '1553681447', '183.213.197.198');

-- ----------------------------
-- Table structure for ims_hulu_like_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_join`;
CREATE TABLE `ims_hulu_like_join` (
  `join_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `join_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `openid` varchar(100) NOT NULL,
  `active_id` int(10) NOT NULL,
  `join_sex` int(10) NOT NULL,
  `join_name` varchar(100) NOT NULL,
  `join_wechat` varchar(100) NOT NULL,
  `join_tel` varchar(100) NOT NULL,
  `join_time` varchar(100) NOT NULL,
  `join_ip` varchar(100) NOT NULL,
  `join_container` varchar(100) NOT NULL,
  `join_os` varchar(100) NOT NULL,
  PRIMARY KEY (`join_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_join
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_liaodou
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_liaodou`;
CREATE TABLE `ims_hulu_like_liaodou` (
  `liaodou_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `liaodou_pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为未使用/2为使用中/3为已使用',
  `liaodou_openid` varchar(100) NOT NULL,
  `liaodou_endtime` varchar(100) NOT NULL,
  `liaodou_time` varchar(100) NOT NULL,
  `liaodou_ip` varchar(100) NOT NULL,
  `liaodou_container` varchar(100) NOT NULL,
  `liaodou_os` varchar(100) NOT NULL,
  PRIMARY KEY (`liaodou_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_liaodou
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_like`;
CREATE TABLE `ims_hulu_like_like` (
  `like_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '暗恋者',
  `like_openid` varchar(100) NOT NULL COMMENT '被暗恋者',
  `like_time` varchar(100) NOT NULL,
  `like_ip` varchar(100) NOT NULL,
  `like_container` varchar(100) NOT NULL,
  `like_os` varchar(100) NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_like
-- ----------------------------
INSERT INTO `ims_hulu_like_like` VALUES ('1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1553681727', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_like` VALUES ('2', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557333553', '117.136.45.185', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_make
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_make`;
CREATE TABLE `ims_hulu_like_make` (
  `make_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `make_web_title` text NOT NULL,
  `make_vip_year` decimal(10,4) NOT NULL,
  `make_vip_quarter` decimal(10,4) NOT NULL,
  `make_vip_month` decimal(10,4) NOT NULL,
  `make_vip_contact` int(10) NOT NULL,
  `make_vip_freechat` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为付费/2为免费',
  `make_key` varchar(100) NOT NULL,
  `make_secret` varchar(100) NOT NULL,
  `make_sign` varchar(100) NOT NULL,
  `make_msgtemplate` varchar(100) NOT NULL,
  `make_key_baidu` varchar(100) NOT NULL,
  `make_key_qq` varchar(100) NOT NULL,
  `make_user_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `make_active_proportion` decimal(10,4) NOT NULL,
  `make_jinbi_name` varchar(100) NOT NULL,
  `make_jinbi_bili` int(10) NOT NULL,
  `make_liaotian_free` int(10) NOT NULL,
  `make_liaotian_jinbi` int(10) NOT NULL,
  `make_liaotian_person` int(10) NOT NULL,
  `make_liaotian_time` varchar(100) NOT NULL,
  `make_tuiguang_bili` decimal(10,4) NOT NULL,
  `make_bili_gift` decimal(10,4) NOT NULL,
  `make_bili_dashang` decimal(10,4) NOT NULL,
  `make_bili_liaotian` decimal(10,4) NOT NULL,
  `make_bili_zanshang` decimal(10,4) NOT NULL,
  `make_tixian_time` int(10) NOT NULL,
  `make_tixian_money` decimal(10,4) NOT NULL,
  `make_kefu_qrcode` text NOT NULL,
  `make_share_title` text NOT NULL,
  `make_share_content` text NOT NULL,
  `make_share_picture` text NOT NULL,
  `make_authcode` varchar(100) NOT NULL,
  `make_time` varchar(100) NOT NULL,
  `make_ip` varchar(100) NOT NULL,
  `chat_num_replace` char(1) NOT NULL,
  `look_user_tel_type` int(1) NOT NULL,
  `make_sj_bl` decimal(10,4) NOT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_make
-- ----------------------------
INSERT INTO `ims_hulu_like_make` VALUES ('1', '1', '乐享定制 交友相亲', '198.0000', '58.0000', '19.9000', '1000', '2', '', '', '', '', 'eH7Tr4Lh7XNU9lI8OXLXy1WW8dQjyYPM', 'KDQBZ-XPG3X-UMB4T-7V7CM-GT7UJ-D6FHA', '3', '0.1000', '乐豆', '1', '10000', '100', '300', '31', '0.0500', '0.5000', '0.5000', '0.5000', '0.5000', '1', '1.0000', 'images/1/2019/04/ZvniVD8rrVZTnwiAVaqgmw2G1wQsqn.png', '泰州同城交友相亲平台', '泰州同城交友相亲平台', 'images/1/2019/04/cO9VUzCx6qV7CT6olxVq79QGOTZcVX.jpg', '', '1557077046', '183.213.192.154', '', '0', '0.3000');

-- ----------------------------
-- Table structure for ims_hulu_like_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_member`;
CREATE TABLE `ims_hulu_like_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `member_birthday` varchar(100) NOT NULL,
  `member_height` varchar(100) NOT NULL,
  `member_weight` varchar(100) NOT NULL,
  `member_purpose` int(10) NOT NULL,
  `member_feeling` int(10) NOT NULL,
  `member_marry` int(10) NOT NULL,
  `member_wechat` varchar(100) NOT NULL,
  `member_tel` varchar(100) NOT NULL,
  `member_province` varchar(100) NOT NULL,
  `member_city` varchar(100) NOT NULL,
  `member_district` varchar(100) NOT NULL,
  `member_content` text NOT NULL,
  `member_edu` int(2) NOT NULL,
  `member_salary` int(2) NOT NULL,
  `member_house` int(1) NOT NULL,
  `member_career` int(2) NOT NULL,
  `member_nation` varchar(32) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_member
-- ----------------------------
INSERT INTO `ims_hulu_like_member` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1553529600', '120', '30', '1', '1', '1', 'Hhhghjk', '13455555555', '北京', '北京市', '东城区', 'jjkjj', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('3', '1', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1553529600', '144', '39', '1', '1', '1', '255559', '13336688566', '', '', '', '？？？？？？？？', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('5', '1', 'abcd1', '782809380', '161', '119', '3', '3', '2', 'uCXSTWgCfT', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('6', '1', 'abcd2', '902524533', '164', '114', '3', '3', '2', 'MrzYR4784p', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('7', '1', 'abcd3', '857938357', '167', '115', '2', '2', '2', 'TxJ64I4f1H', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('8', '1', 'abcd4', '909399935', '161', '100', '1', '3', '2', 'Xak9KIg7Ak', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('9', '1', 'abcd5', '974073373', '167', '109', '3', '3', '1', 'ikteP7kK6j', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('10', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1553961600', '120', '30', '1', '1', '1', 'iodjhoijd', '18888888885', '北京', '北京市', '东城区', '7fgyfyfuv', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('11', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1553961600', '120', '32', '1', '1', '1', '223655', '13666666666', '北京', '北京市', '其它区', '？？？？？', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('31', '1', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '839606400', '155', '95', '1', '1', '1', '13275929587', '13275929587', '江苏省', '常州市', '金坛区', '随缘', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('13', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('14', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('15', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('16', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '674924400', '182', '72', '1', '1', '1', '15260656961', '15260656961', '福建省', '泉州市', '洛江区', '放宽心态，清风自来', '6', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('17', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('18', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '', '', '', '1', '1', '1', '！！！！！', '1366685566', '', '', '', '？？！！！', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('19', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('20', '1', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('21', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('22', '1', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('23', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('24', '1', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('25', '1', 'oUozg0jS_EoO1PppZKHjm5391lho', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('26', '1', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1554220800', '173', '65', '1', '1', '1', '13817494414', '13817494414', '江苏省', '泰州市', '海陵区', '谈一场不离不弃的恋爱', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('27', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('28', '1', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('29', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('30', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '860083200', '165', '42', '1', '1', '1', '18852678149', '18852678149', '江苏省', '泰州市', '海陵区', '你会是我等的那个人吗？', '2', '2', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('32', '1', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('33', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('34', '1', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('35', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '698601600', '120', '110', '1', '1', '1', '15221393892', '15221393892', '江苏省', '泰州市', '海陵区', '我不相信缘分，我只相信眼缘', '8', '9', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('36', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '', '', '', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '');
INSERT INTO `ims_hulu_like_member` VALUES ('37', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '647362800', '159', '45', '1', '1', '1', '18817428590', '18817428590', '江苏省', '泰州市', '海陵区', 'Hhjjhghjj', '7', '7', '1', '1', '汉族');
INSERT INTO `ims_hulu_like_member` VALUES ('38', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', '927388800', '168', '53', '1', '1', '1', '7766', '6677', '江苏省', '镇江市', '扬中市', '深夜不在孤獨', '2', '2', '1', '1', '汉族');

-- ----------------------------
-- Table structure for ims_hulu_like_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_menu`;
CREATE TABLE `ims_hulu_like_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `sort` int(4) NOT NULL,
  `donot_show` int(1) NOT NULL,
  `menu_index` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_menu
-- ----------------------------
INSERT INTO `ims_hulu_like_menu` VALUES ('1', '1', '1', '0', 'fengmian', '首页', '../addons/hulu_like/public/images/bottom_menu_1.png', './index.php?i=1&c=entry&do=fengmian&m=hulu_like');
INSERT INTO `ims_hulu_like_menu` VALUES ('2', '1', '2', '0', 'chat', '聊天', '../addons/hulu_like/public/images/bottom_menu_2.png', './index.php?i=1&c=entry&do=chat&m=hulu_like');
INSERT INTO `ims_hulu_like_menu` VALUES ('3', '1', '3', '0', 'active', '活动', '../addons/hulu_like/public/images/bottom_menu_3.png', './index.php?i=1&c=entry&do=active&m=hulu_like');
INSERT INTO `ims_hulu_like_menu` VALUES ('4', '1', '4', '0', 'talk', '说说', '../addons/hulu_like/public/images/bottom_menu_4.png', './index.php?i=1&c=entry&do=talk&m=hulu_like');
INSERT INTO `ims_hulu_like_menu` VALUES ('5', '1', '5', '0', 'my', '我的', '../addons/hulu_like/public/images/bottom_menu_5.png', './index.php?i=1&c=entry&do=my&m=hulu_like');

-- ----------------------------
-- Table structure for ims_hulu_like_money
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_money`;
CREATE TABLE `ims_hulu_like_money` (
  `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `money_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功',
  `money_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入/4为提成',
  `money_type` int(10) NOT NULL,
  `money_money` decimal(10,4) NOT NULL,
  `money_time` varchar(100) NOT NULL,
  `money_ip` varchar(100) NOT NULL,
  `money_container` varchar(100) NOT NULL,
  `money_os` varchar(100) NOT NULL,
  PRIMARY KEY (`money_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_money
-- ----------------------------
INSERT INTO `ims_hulu_like_money` VALUES ('1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '1', '-1.0000', '1553784040', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '1', '0.5000', '1553784040', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('3', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '0.5000', '1553784150', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '4', '-1.0000', '1553784150', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.5000', '1553784150', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('6', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '1', '-1.0000', '1553784339', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('7', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '1', '0.5000', '1553784339', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('8', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '0.0500', '1553784382', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('9', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '5', '-1.0000', '1553784382', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('10', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.5000', '1553784382', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('11', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '0.0500', '1553784577', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('12', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '4', '-1.0000', '1553784577', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('13', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.5000', '1553784577', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('14', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '0.5000', '1553802359', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('15', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '4', '-1.0000', '1553802359', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('16', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.4000', '1553802359', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('17', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '3', '4', '0.5000', '1553952718', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('18', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '4', '-1.0000', '1553952718', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('19', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.4000', '1553952718', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('20', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '4', '0.5000', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('21', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '3', '4', '0.0500', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('22', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '4', '-1.0000', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('23', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.0500', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('24', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554097183', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('25', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554097183', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('26', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554097183', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('27', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '1', '1', '-1.0000', '1554308124', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('28', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '4', '0.5000', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('29', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '3', '4', '0.0500', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('30', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '4', '-1.0000', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('31', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.0500', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('32', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554310989', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('33', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554310989', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('34', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554310989', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('35', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554311241', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('36', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554311241', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('37', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554311241', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('38', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '4', '0.5000', '1554311362', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('39', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '3', '4', '0.0100', '1554311362', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('40', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '4', '-1.0000', '1554311362', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('41', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '4', '0.0500', '1554311362', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('42', '1', '', '3', '3', '6', '0.5000', '1554311770', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('43', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '6', '-1.0000', '1554311770', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('44', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '6', '0.0500', '1554311770', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('45', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554312557', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('46', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554312557', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('47', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554312557', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('48', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554312949', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('49', '0', '0', '3', '3', '5', '0.0100', '1554312949', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('50', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554312949', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('51', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554312949', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('52', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554313365', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('53', '0', '', '3', '3', '5', '0.0100', '1554313365', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('54', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554313365', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('55', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554313365', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('56', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554313691', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('57', '0', '', '3', '3', '5', '0.0100', '1554313691', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('58', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554313691', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('59', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554313691', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('60', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '3', '5', '0.5000', '1554313909', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('61', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '3', '5', '0.0100', '1554313909', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('62', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '1', '5', '-1.0000', '1554313909', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('63', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '4', '5', '0.0500', '1554313909', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_money` VALUES ('64', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '1', '1', '-9.9000', '1554905961', '103.7.30.104', 'unknown', 'windows');

-- ----------------------------
-- Table structure for ims_hulu_like_more
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_more`;
CREATE TABLE `ims_hulu_like_more` (
  `more_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `more_real_tel_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `more_real_tel` varchar(100) NOT NULL,
  `more_real_code` varchar(100) NOT NULL,
  `more_tixian_name` varchar(100) NOT NULL,
  `more_tixian_tel` varchar(100) NOT NULL,
  `more_tixian_wechat` varchar(100) NOT NULL,
  `more_tixian_alipay` varchar(100) NOT NULL,
  PRIMARY KEY (`more_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_more
-- ----------------------------
INSERT INTO `ims_hulu_like_more` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '', '678', '13098009999', '在一起是', '不：');
INSERT INTO `ims_hulu_like_more` VALUES ('3', '1', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('5', '1', 'abcd1', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('6', '1', 'abcd2', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('7', '1', 'abcd3', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('8', '1', 'abcd4', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('9', '1', 'abcd5', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('10', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '2', '18749528034', '300006', 'zhana', '18888888888', 'aavdsvsd', 'svsdvxvsv');
INSERT INTO `ims_hulu_like_more` VALUES ('11', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '17605219229', '771127', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('31', '1', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('13', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('14', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('15', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('16', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('17', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('18', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('19', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('20', '1', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('21', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('22', '1', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('23', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('24', '1', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('25', '1', 'oUozg0jS_EoO1PppZKHjm5391lho', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('26', '1', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('27', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('28', '1', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('29', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('30', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '2', '18852678149', '675299', '张倩', '18852678149', '18852678149', '18852678149');
INSERT INTO `ims_hulu_like_more` VALUES ('32', '1', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('33', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('34', '1', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('35', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('36', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('37', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1', '', '', '', '', '', '');
INSERT INTO `ims_hulu_like_more` VALUES ('38', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', '1', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ims_hulu_like_muban
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_muban`;
CREATE TABLE `ims_hulu_like_muban` (
  `muban_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `muban_send_news` varchar(100) NOT NULL,
  PRIMARY KEY (`muban_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_muban
-- ----------------------------
INSERT INTO `ims_hulu_like_muban` VALUES ('1', '1', '');

-- ----------------------------
-- Table structure for ims_hulu_like_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_news`;
CREATE TABLE `ims_hulu_like_news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `news_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `news_type` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `news_openid` varchar(100) NOT NULL,
  `news_content` text NOT NULL,
  `news_time` varchar(100) NOT NULL,
  `news_ip` varchar(100) NOT NULL,
  `news_container` varchar(100) NOT NULL,
  `news_os` varchar(100) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_news
-- ----------------------------
INSERT INTO `ims_hulu_like_news` VALUES ('1', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在一起…。', '1553601866', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('2', '1', '2', '4', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'images/1/2019/03/Rq3yFMz_UWlhIaboBSgbvuGcW2NwA4snt74YPJHSdW2VBA8Ak-PJsCRtRUz_dQZH.jpg', '1553601910', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('3', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在线：', '1553601919', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('4', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '不：不会去皮洗净即', '1553601926', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('5', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '一切皆好累我', '1553601933', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('6', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '1553601998', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('7', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '我', '1553602002', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('8', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '我', '1553602006', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('9', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '我', '1553602009', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('10', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '：', '1553602014', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('11', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在一起是', '1553602019', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('12', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '不能', '1553602022', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('13', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '不会太太', '1553602026', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('14', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '但没办法控制不了', '1553602031', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('15', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '但没关系，', '1553602036', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('16', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '但没办法', '1553602040', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('17', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '我会努力的方向', '1553602044', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('18', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '但没关系……我', '1553602049', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('19', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '不能容忍了', '1553602054', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('20', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '不过现在我', '1553602059', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('21', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在', '1553602541', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('22', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在线', '1553602549', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('23', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在', '1553602555', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('24', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '在', '1553602570', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('25', '1', '1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0hH2YlEVT6_UAIE63yBED14', '在', '1553695677', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('26', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0nDymxiB0QyypleJpNDGudw', '11', '1554045241', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('27', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0nDymxiB0QyypleJpNDGudw', '11', '1554045241', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('28', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '222', '1554045267', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('29', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0hH2YlEVT6_UAIE63yBED14', '22', '1554045342', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('30', '1', '2', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '22', '1554045354', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('31', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '222', '1554045363', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('32', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '', '1554045807', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('33', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '！！', '1554045818', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('34', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '你好', '1554045831', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('35', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '什么时候', '1554045842', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('36', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '', '1554045849', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('37', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '4556', '1554045856', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('38', '1', '1', '4', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', 'images/1/2019/03/8oiR9wyCffVcGCNPqugLQ43DDnFvKMaYCGG2G1Xbk3f2JYijmbR2nmWNgVWQ_bBn.jpg', '1554045866', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('39', '1', '1', '4', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', 'images/1/2019/03/wmjGYeHNV4-mMB1DCUg-7YyZuhpaRkqCNfr4EO-dJJnSfeRRq2GdbfpPlgMlspn9.jpg', '1554045891', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('40', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '？？', '1554045969', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('41', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '？？', '1554045972', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('42', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你好', '1554045985', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('43', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你好', '1554045987', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('44', '1', '2', '4', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'images/1/2019/03/nt4rnSH6z3dmUWGi0hRg6jGl8gbaMuwGgjfczWeHWwaywcmBUDqG0Kvh8H39u0GV.jpg', '1554046014', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('45', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'images/1/2019/03/nt4rnSH6z3dmUWGi0hRg6jGl8gbaMuwGgjfczWeHWwaywcmBUDqG0Kvh8H39u0GV.jpg', '1554046017', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('46', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你的', '1554046032', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('47', '1', '2', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你的', '1554046035', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('48', '1', '1', '4', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', 'images/1/2019/04/TVHeTz0qpKu_8h7Zw-DYXo8pZGG9pGB6BiTc-7yfCtD-k7v6QEqX8DVwPzUuLrE4.jpg', '1554210580', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('49', '1', '1', '4', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', 'images/1/2019/04/SEiEovpLiNcmS1VOH1e_mjWfL-Ygkrqhf8R1YS0sOOPnNHI57sLWHllAL8eZ0NFy.jpg', '1554210589', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('50', '1', '1', '4', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0hH2YlEVT6_UAIE63yBED14', 'images/1/2019/04/_kAKOX4ZZ5JirHrHVgdN72ld1qnkwtai87j91pUSosLFSFRUqk5LcU7EjVydGZg_.jpg', '1554212899', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('51', '1', '2', '4', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'images/1/2019/04/xzO-q7T99nOtv5jTr1BCBPMjY1ykXglWIyv0k-TOZ5ma8cN7MoB5G-gq7Yq6023x.jpg', '1554306236', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('52', '1', '1', '4', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'images/1/2019/04/Ox3ArU-VOUcGF767_-XdaWux2W8LT0UPOkD2_ycillpTk2Y-AWf15SScIAkNO8HE.jpg', '1554306238', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('53', '1', '2', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '1554308447', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('54', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '2', '1554309282', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('55', '1', '1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1', '1554309303', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('56', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '这', '1554309332', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('57', '1', '2', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你好', '1554905708', '223.104.146.170', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('58', '1', '1', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '你好', '1554905717', '223.104.146.170', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('59', '1', '2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '好', '1554911035', '183.211.182.52', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('60', '1', '2', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '你好呀', '1554993626', '180.122.249.30', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('61', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '你好！', '1557076361', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('62', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '在不？', '1557254892', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('63', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '', '1557254899', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_news` VALUES ('64', '1', '1', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '', '1557254918', '122.96.40.35', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_order`;
CREATE TABLE `ims_hulu_like_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `order_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `order_type` int(10) NOT NULL,
  `order_num` varchar(100) NOT NULL,
  `order_money` decimal(10,4) NOT NULL,
  `order_starttime` varchar(100) NOT NULL,
  `order_endtime` varchar(100) NOT NULL,
  `order_ip` varchar(100) NOT NULL,
  `order_container` varchar(100) NOT NULL,
  `order_os` varchar(100) NOT NULL,
  `order_vip_days` int(10) NOT NULL,
  `order_join_id` int(10) NOT NULL,
  `order_gift_receive` varchar(100) NOT NULL,
  `order_gift_id` int(10) NOT NULL,
  `order_dashang_receive` varchar(100) NOT NULL,
  `order_talk_id` int(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_order
-- ----------------------------
INSERT INTO `ims_hulu_like_order` VALUES ('1', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032621343256495352', '248.0000', '1553607271', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('2', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032622535551485256', '0.0100', '1553612034', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('3', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032622542099489851', '0.0100', '1553612059', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('4', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032622543810110157', '0.0100', '1553612078', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '1', '2019032622595810197101', '0.0100', '1553612398', '', '49.92.114.39', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '5', '2019032623023497495752', '1.0000', '1553612553', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('7', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032623232710253535', '0.0100', '1553613807', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('8', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1', '1', '2019032623253951559998', '0.0100', '1553613939', '', '117.34.136.34', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('9', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032623342110010157', '0.0100', '1553614461', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('10', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '3', '2019032623544957995299', '1.0000', '1553615689', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('11', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700131598535798', '0.0100', '1553616794', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('12', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700272949495510', '388.0000', '1553617648', '', '59.63.204.204', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('13', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700274751505710', '0.0100', '1553617666', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('14', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700284297489849', '0.0100', '1553617721', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('15', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700293648989710', '0.0100', '1553617776', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('16', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700302953525310', '0.0100', '1553617828', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('17', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700332250519950', '0.0100', '1553618001', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('18', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700430697985753', '0.0100', '1553618586', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('19', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700455753501001', '0.0100', '1553618756', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('20', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700465951579849', '0.0100', '1553618819', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('21', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700485656501019', '0.0100', '1553618935', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('22', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700491054100535', '388.0000', '1553618950', '', '59.63.204.204', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('23', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032700560250535151', '0.0100', '1553619362', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('24', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701001299495610', '0.0100', '1553619611', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('25', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '1', '2019032701023699985152', '0.0100', '1553619756', '', '49.92.114.39', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('26', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701052250515397', '0.0100', '1553619921', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('27', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701062210151505', '0.0100', '1553619981', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('28', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701071551525398', '0.0100', '1553620034', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('29', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701115910253545', '0.0100', '1553620319', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('30', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701134557571029', '0.0100', '1553620425', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('31', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701185648555248', '0.0100', '1553620736', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('32', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701333510210110', '0.0100', '1553621615', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('33', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '1', '2019032701370953531015', '0.0100', '1553621829', '', '49.92.114.39', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('34', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701403248981005', '0.0100', '1553622032', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('35', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', '2019032701405998579753', '0.0100', '1553622059', '', '59.63.204.204', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('36', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '1', '2019032701415854101565', '0.0100', '1553622118', '', '49.92.114.39', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('37', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '5', '2019032715320553995757', '1.0000', '1553671925', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('38', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032715324510053995', '10.0000', '1553671965', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('39', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032715574557515454', '20000.0000', '1553673464', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '13', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('40', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032715580157974910', '10.0000', '1553673481', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('41', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032715581353101555', '10.0000', '1553673493', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('42', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032715590254565610', '1888.0000', '1553673542', '', '183.211.181.169', 'wechat', 'mobile', '0', '0', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '5', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('43', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '4', '2019032717181151545310', '10.0000', '1553678291', '', '183.213.197.198', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '21', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('44', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032719375854984951', '100.0000', '1553686678', '', '183.213.197.198', 'wechat', 'mobile', '0', '0', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '3', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('45', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '5', '2019032719383598569850', '1.0000', '1553686715', '', '183.213.197.198', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('46', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032722070153515552', '100.0000', '1553695620', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '3', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('47', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032722070910054485', '68.0000', '1553695629', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '17', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('48', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '5', '2019032722073656515655', '1.0000', '1553695655', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('49', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032722074310210151', '10.0000', '1553695663', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('50', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '1', '2019032822402356485054', '1.0000', '1553784023', '1553784040', '183.213.192.53', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('51', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '4', '2019032822415955985510', '1.0000', '1553784119', '', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('52', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2', '4', '2019032822421998565198', '1.0000', '1553784139', '1553784150', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('53', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '1', '2019032822452452975051', '1.0000', '1553784324', '1553784339', '183.213.192.53', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('54', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '4', '2019032822455955971029', '1.0000', '1553784359', '', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('55', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2', '5', '2019032822460949100505', '1.0000', '1553784369', '1553784382', '183.213.192.53', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('56', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '5', '2019032822461151495155', '1.0000', '1553784370', '', '183.213.192.53', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('57', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2', '4', '2019032822492755995251', '1.0000', '1553784567', '1553784577', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('58', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '4', '2019032822512610110151', '1.0000', '1553784686', '', '49.92.114.39', 'wechat', 'mobile', '0', '0', 'oUozg0gA22aw-zuBzin6yNcIQelI', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('59', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '4', '2019032823032848515198', '1.0000', '1553785407', '', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('60', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2', '4', '2019032903454697535798', '1.0000', '1553802346', '1553802359', '183.213.192.53', 'wechat', 'mobile', '0', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('61', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '4', '2019033021310254509999', '1.0000', '1553952661', '', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('62', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '4', '2019033021312157499855', '1.0000', '1553952680', '', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('63', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '2', '4', '2019033021314448535057', '1.0000', '1553952704', '1553952718', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('64', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1', '4', '2019033021320250535599', '1.0000', '1553952722', '', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('65', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '6', '2019033122362355549897', '1.0000', '1554042983', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('66', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '6', '2019033122362456511025', '1.0000', '1554042983', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('67', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '4', '2019033122371155505150', '1.0000', '1554043030', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('68', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '4', '2019033122372351515097', '1.0000', '1554043042', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('69', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '3', '2019040100262099989997', '100.0000', '1554049580', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('70', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '5', '2019040101202153521025', '1.0000', '1554052820', '', '59.63.204.204', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0nDymxiB0QyypleJpNDGudw', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('71', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '4', '2019040113374697575256', '1.0000', '1554097066', '1554097079', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('72', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040113393151100555', '1.0000', '1554097171', '1554097183', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('73', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '1', '2019040214073252491005', '388.0000', '1554185251', '', '123.7.54.9', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('74', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '1', '2019040214133098484848', '388.0000', '1554185610', '', '123.7.54.9', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('75', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '1', '2019040214170549565298', '388.0000', '1554185825', '', '123.7.54.9', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('76', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '1', '2019040214193656539810', '1.0000', '1554185976', '', '123.7.54.9', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('77', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1', '1', '2019040214223910252555', '388.0000', '1554186158', '', '123.7.54.9', 'wechat', 'mobile', '365', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('78', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '2', '1', '2019040400151248525651', '1.0000', '1554308111', '1554308124', '223.104.146.189', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('79', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '1', '4', '2019040400563955491015', '1.0000', '1554310598', '', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('80', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '4', '2019040400570210152565', '1.0000', '1554310621', '1554310633', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('81', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401025850535351', '1.0000', '1554310977', '1554310989', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('82', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401070899535398', '1.0000', '1554311227', '1554311241', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('83', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '4', '2019040401091256575253', '1.0000', '1554311352', '1554311362', '122.96.42.245', 'wechat', 'mobile', '0', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '20', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('84', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '6', '2019040401155910210099', '1.0000', '1554311759', '1554311770', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('85', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401290448525099', '1.0000', '1554312543', '1554312557', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('86', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401353998495453', '1.0000', '1554312938', '1554312949', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('87', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401423357102511', '1.0000', '1554313353', '1554313365', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('88', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401480149101551', '1.0000', '1554313681', '1554313691', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('89', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '2', '5', '2019040401513998499810', '1.0000', '1554313898', '1554313909', '122.96.42.245', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('90', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1', '5', '2019041022170852485253', '1.0000', '1554905827', '', '223.104.146.170', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0jH6-V9WEIg4HOR903amdjA', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('91', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '2', '1', '2019041022190899100539', '9.9000', '1554905948', '1554905961', '223.104.146.170', 'wechat', 'mobile', '31', '0', '', '0', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('92', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '1', '5', '2019041102212654101539', '1.0000', '1554920486', '', '221.192.179.56', 'wechat', 'mobile', '0', '0', '', '0', 'oUozg0jH6-V9WEIg4HOR903amdjA', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('93', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '4', '2019042800015551509956', '288.0000', '1556380914', '', '122.96.41.73', 'wechat', 'mobile', '0', '0', 'oUozg0jH6-V9WEIg4HOR903amdjA', '18', '', '0');
INSERT INTO `ims_hulu_like_order` VALUES ('94', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1', '1', '2019052105505951485652', '198.0000', '1558389058', '', '122.96.41.215', 'wechat', 'mobile', '365', '0', '', '0', '', '0');

-- ----------------------------
-- Table structure for ims_hulu_like_picture
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_picture`;
CREATE TABLE `ims_hulu_like_picture` (
  `picture_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `picture_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `picture_type` varchar(100) NOT NULL,
  `picture_vid` int(10) NOT NULL,
  `picture_url` text NOT NULL,
  `picture_time` varchar(100) NOT NULL,
  `picture_ip` varchar(100) NOT NULL,
  `picture_container` varchar(100) NOT NULL,
  `picture_os` varchar(100) NOT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_picture
-- ----------------------------
INSERT INTO `ims_hulu_like_picture` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '1', 'images/1/2019/03/k1YyuhoCbrZv7DOG_dD35srRjY83KGRYP_oJkyxQ0bmcCCoyUQGqW6-7DMiNomut.jpg', '1553504791', '114.229.183.162', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'news', '0', 'images/1/2019/03/Rq3yFMz_UWlhIaboBSgbvuGcW2NwA4snt74YPJHSdW2VBA8Ak-PJsCRtRUz_dQZH.jpg', '1553601906', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('3', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'show', '0', 'images/1/2019/03/8aNE_P-7O6iE4I3pgFEhCh0qyxdOXxnpQNg4MnskiJWe02c2tUATbUSLs1sTfLt2.jpg', '1553678378', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'show', '0', 'images/1/2019/03/pok4rszkr8AIbrv5J0PnBt0Rlda25qkEOwthzx7lr7EOpWbu1TXPKfoqUcLiIb3k.jpg', '1553678365', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'show', '0', 'images/1/2019/03/KEpEDBrfbqJ2h_eqgYXUL3VqdMFXZTH4HQVCgmYChJIfXiAXaGI7NI34RyPtjIFo.jpg', '1553678396', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '2', 'images/1/2019/03/iUB6xU9dvyglzYJgy3aD1OpcfPdUcgPU6B2QajbW2B8VwrFt3DTBe6DHQXkgF6W7.jpg', '1553690364', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('7', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '4', 'images/1/2019/03/_SC98AGojO6n8BF6bj63lrEgkC55V-IpstoeT0C8iXoWi2tbIzqc9GE8W6nZSzEb.jpg', '1553702035', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('8', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '5', 'images/1/2019/03/4dz07nOKA7TEYCRNir1uquTgggs9FBAcpnxwbhD99wciN7tRnOw2Sbx0rCHnSLuf.jpg', '1553842534', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('9', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '6', 'images/1/2019/03/Rl1sPVLFzwuXDBIjNW34r5yYrm8M03KWlQna2FzHRGfhtu8H3ts_TLt3RBWMBLmH.jpg', '1553870638', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('11', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '7', 'images/1/2019/03/RTc_qm4nKsKd9ckKslsSZ06r2PuDTBuHryimuOhYSPFnK7Mt2ir-8-eP0qbYLulI.jpg', '1553879481', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('12', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '8', 'images/1/2019/03/hmZCJHYDWHeseFViSEvIsNkTkWPGChJBVtXI4Ni7_mODPV-EzAy-SF19VfTjsVOf.jpg', '1553879727', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('14', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'talk', '9', 'images/1/2019/03/kaA6apvxwAfLXyzfyIOEt1IR_dCldWI0JcuFXH7i5MvWk1fJ29yr9sA2fNNBg26K.jpg', '1553939145', '183.213.192.229', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('15', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', 'talk', '12', 'images/1/2019/03/iozgN9vN7BWA3sFVcG2xy-nictSyyt0-p4DHwRX1m3X8YVC_yrp6tKd80bOU3QS6.jpg', '1554010617', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('17', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'news', '0', 'images/1/2019/03/8oiR9wyCffVcGCNPqugLQ43DDnFvKMaYCGG2G1Xbk3f2JYijmbR2nmWNgVWQ_bBn.jpg', '1554045863', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('18', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'news', '0', 'images/1/2019/03/wmjGYeHNV4-mMB1DCUg-7YyZuhpaRkqCNfr4EO-dJJnSfeRRq2GdbfpPlgMlspn9.jpg', '1554045889', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('19', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'news', '0', 'images/1/2019/03/nt4rnSH6z3dmUWGi0hRg6jGl8gbaMuwGgjfczWeHWwaywcmBUDqG0Kvh8H39u0GV.jpg', '1554046008', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('21', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '3', 'news', '0', 'images/1/2019/04/TVHeTz0qpKu_8h7Zw-DYXo8pZGG9pGB6BiTc-7yfCtD-k7v6QEqX8DVwPzUuLrE4.jpg', '1554210578', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('22', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '3', 'news', '0', 'images/1/2019/04/SEiEovpLiNcmS1VOH1e_mjWfL-Ygkrqhf8R1YS0sOOPnNHI57sLWHllAL8eZ0NFy.jpg', '1554210587', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('23', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'news', '0', 'images/1/2019/04/_kAKOX4ZZ5JirHrHVgdN72ld1qnkwtai87j91pUSosLFSFRUqk5LcU7EjVydGZg_.jpg', '1554212893', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('24', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '3', 'talk', '13', 'images/1/2019/04/wAcdPUJgNJt4EMMbncLFJOZ6MbIuvtbcwOmXh5y3Wg8g94YMl2Gkx7dtOqHZJ8-a.jpg', '1554221074', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('25', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'talk', '14', 'images/1/2019/04/IriLSNgcd6lrpxfAWxQU0fgUsTO2yJuZCTrtN4sjFmRPgOYBSnxM8qgsDeBwawsr.jpg', '1554279721', '183.213.195.98', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('26', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'talk', '16', 'images/1/2019/04/mAYG4kMHtPY8Rt9w8W38sCHvk8p37tyahOschcPSQiuCdCSQtL1zR48juScP_BGJ.jpg', '1554305004', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('27', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'news', '0', 'images/1/2019/04/xzO-q7T99nOtv5jTr1BCBPMjY1ykXglWIyv0k-TOZ5ma8cN7MoB5G-gq7Yq6023x.jpg', '1554306234', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('28', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '2', 'news', '0', 'images/1/2019/04/Ox3ArU-VOUcGF767_-XdaWux2W8LT0UPOkD2_ycillpTk2Y-AWf15SScIAkNO8HE.jpg', '1554306235', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('31', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', 'show', '0', 'images/1/2019/04/oyUHQ3tidzovYJ3_d6P-kypzeZPNCgROIyD58u3J5eNLGycFSi8aCcUVvsaOoGm2.jpg', '1554905628', '180.122.249.30', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('30', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', 'talk', '17', 'images/1/2019/04/WYzHmyiiW-e3yULj9Q_uN50qZa96CilphXIaionIA-Rfi7jtY7AuantQQU18B57C.jpg', '1554311617', '183.213.195.98', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('32', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', 'show', '0', 'images/1/2019/04/NbS0ni0JibyzVR2d8vvjRi7YPEJOjWvqfw_M93BZTEW_cQkkUpR_ng42J1xOQZ-J.jpg', '1554905640', '180.122.249.30', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('33', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', 'talk', '18', 'images/1/2019/04/Tif6XNeb5L5H3aprxsies_imGDi1oKMIVqAwZj8DVQK7Bd7StAzDvns0sNUQFLto.jpg', '1554905856', '223.104.146.170', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture` VALUES ('35', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', 'talk', '19', 'images/1/2019/05/34Dsuxv4QSuIqAnOTKpiCQQf7eF5DXAmTeU0wbuu5BojBmqLBC2faYQs00RT-GdU.jpg', '1558567305', '122.192.12.26', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_picture_video
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_picture_video`;
CREATE TABLE `ims_hulu_like_picture_video` (
  `picture_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `picture_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `picture_type` varchar(100) NOT NULL,
  `picture_vid` int(10) NOT NULL,
  `picture_url` text NOT NULL,
  `picture_time` varchar(100) NOT NULL,
  `picture_ip` varchar(100) NOT NULL,
  `picture_container` varchar(100) NOT NULL,
  `picture_os` varchar(100) NOT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_picture_video
-- ----------------------------
INSERT INTO `ims_hulu_like_picture_video` VALUES ('21', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '2', 'show', '0', 'video/1554217417.mp4', '1554217417', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture_video` VALUES ('22', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '3', 'show', '0', 'video/1554222251.mp4', '1554222251', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture_video` VALUES ('23', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', 'show', '0', 'video/1554225603.mp4', '1554225602', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_picture_video` VALUES ('24', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '2', 'show', '0', 'video/1558590954.mp4', '1558590954', '49.94.41.231', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_present
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_present`;
CREATE TABLE `ims_hulu_like_present` (
  `present_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `present_send` varchar(100) NOT NULL,
  `gift_id` int(10) NOT NULL,
  `present_time` varchar(100) NOT NULL,
  `present_ip` varchar(100) NOT NULL,
  `present_container` varchar(100) NOT NULL,
  `present_os` varchar(100) NOT NULL,
  PRIMARY KEY (`present_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_present
-- ----------------------------
INSERT INTO `ims_hulu_like_present` VALUES ('1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '20', '1553784150', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('2', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '20', '1553784577', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('3', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '20', '1553802359', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '20', '1553952718', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('5', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('6', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_present` VALUES ('7', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0nDymxiB0QyypleJpNDGudw', '20', '1554311362', '103.7.30.104', 'unknown', 'windows');

-- ----------------------------
-- Table structure for ims_hulu_like_request
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_request`;
CREATE TABLE `ims_hulu_like_request` (
  `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `request_age_small` varchar(100) NOT NULL,
  `request_age_big` varchar(100) NOT NULL,
  `request_height_small` varchar(100) NOT NULL,
  `request_height_big` varchar(100) NOT NULL,
  `request_weight_small` varchar(100) NOT NULL,
  `request_weight_big` varchar(100) NOT NULL,
  `request_salary` int(10) NOT NULL,
  `request_education` int(10) NOT NULL,
  `request_area` int(10) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_request
-- ----------------------------
INSERT INTO `ims_hulu_like_request` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '18', '26', '160', '170', '100', '120', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('3', '1', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '12', '22', '12', '55', '55', '55', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('5', '1', 'abcd1', '25', '43', '173', '188', '137', '101', '2', '1', '7');
INSERT INTO `ims_hulu_like_request` VALUES ('6', '1', 'abcd2', '30', '44', '196', '153', '96', '139', '4', '3', '3');
INSERT INTO `ims_hulu_like_request` VALUES ('7', '1', 'abcd3', '40', '35', '218', '155', '68', '75', '8', '10', '5');
INSERT INTO `ims_hulu_like_request` VALUES ('8', '1', 'abcd4', '44', '24', '167', '188', '101', '59', '6', '4', '7');
INSERT INTO `ims_hulu_like_request` VALUES ('9', '1', 'abcd5', '44', '25', '176', '211', '76', '132', '12', '1', '3');
INSERT INTO `ims_hulu_like_request` VALUES ('10', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '112', '222', '11', '222', '11', '222', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('11', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '22', '33', '158', '172', '95', '120', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('31', '1', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '18', '50', '160', '185', '100', '150', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('13', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('14', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('15', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('16', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '22', '29', '160', '170', '85', '110', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('17', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('18', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '22', '33', '33', '666', '552', '556', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('19', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('20', '1', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('21', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('22', '1', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('23', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('24', '1', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('25', '1', 'oUozg0jS_EoO1PppZKHjm5391lho', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('26', '1', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '22', '30', '158', '170', '45', '55', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('27', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('28', '1', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('29', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('30', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '30', '35', '175', '180', '60', '70', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('32', '1', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('33', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('34', '1', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('35', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '18', '35', '150', '180', '70', '120', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('36', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `ims_hulu_like_request` VALUES ('37', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '18', '38', '168', '188', '120', '160', '1', '1', '1');
INSERT INTO `ims_hulu_like_request` VALUES ('38', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', '21', '29', '170', '185', '50', '80', '1', '1', '1');

-- ----------------------------
-- Table structure for ims_hulu_like_sham
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_sham`;
CREATE TABLE `ims_hulu_like_sham` (
  `sham_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `sham_nickname` varchar(100) NOT NULL,
  `sham_content` text NOT NULL,
  PRIMARY KEY (`sham_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_sham
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_share`;
CREATE TABLE `ims_hulu_like_share` (
  `share_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `share_openid` varchar(100) NOT NULL,
  `share_time` varchar(100) NOT NULL,
  `share_ip` varchar(100) NOT NULL,
  `share_container` varchar(100) NOT NULL,
  `share_os` varchar(100) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_share
-- ----------------------------
INSERT INTO `ims_hulu_like_share` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1553600803', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('2', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1553608514', '183.211.182.82', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('3', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1553754399', '49.95.215.249', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '1553757103', '202.109.239.123', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1553758660', '123.7.54.9', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0nDymxiB0QyypleJpNDGudw', '1553783889', '183.213.192.53', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('7', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557325754', '117.136.45.187', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_share` VALUES ('8', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1557328235', '117.136.45.185', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_system
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_system`;
CREATE TABLE `ims_hulu_like_system` (
  `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `system_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功',
  `system_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入',
  `system_type` int(10) NOT NULL,
  `system_money` decimal(10,4) NOT NULL,
  `system_time` varchar(100) NOT NULL,
  `system_ip` varchar(100) NOT NULL,
  `system_container` varchar(100) NOT NULL,
  `system_os` varchar(100) NOT NULL,
  PRIMARY KEY (`system_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_system
-- ----------------------------
INSERT INTO `ims_hulu_like_system` VALUES ('1', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '1', '1.0000', '1553784040', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('2', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '3', '4', '1.0000', '1553784150', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('3', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '1', '1.0000', '1553784339', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '3', '5', '1.0000', '1553784382', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('5', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '3', '4', '1.0000', '1553784577', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('6', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '3', '4', '1.0000', '1553802359', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('7', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '3', '4', '1.0000', '1553952718', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('8', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '1.0000', '1554097079', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('9', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554097183', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('10', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '3', '1', '1.0000', '1554308124', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('11', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '1.0000', '1554310633', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('12', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554310989', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('13', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554311241', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('14', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '4', '1.0000', '1554311362', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('15', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '6', '1.0000', '1554311770', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('16', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554312557', '103.7.30.104', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('17', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554312949', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('18', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554313365', '103.7.30.71', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('19', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554313691', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('20', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '3', '5', '1.0000', '1554313909', '103.7.30.70', 'unknown', 'windows');
INSERT INTO `ims_hulu_like_system` VALUES ('21', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '3', '1', '9.9000', '1554905961', '103.7.30.104', 'unknown', 'windows');

-- ----------------------------
-- Table structure for ims_hulu_like_talk
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_talk`;
CREATE TABLE `ims_hulu_like_talk` (
  `talk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `talk_pid` int(10) unsigned NOT NULL DEFAULT '2',
  `talk_did` int(11) NOT NULL,
  `talk_content` text NOT NULL,
  `talk_weizhi` int(10) unsigned NOT NULL DEFAULT '1',
  `talk_address` text NOT NULL,
  `talk_jingwei` varchar(100) NOT NULL,
  `talk_time` varchar(100) NOT NULL,
  `talk_ip` varchar(100) NOT NULL,
  `talk_container` varchar(100) NOT NULL,
  `talk_os` varchar(100) NOT NULL,
  PRIMARY KEY (`talk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_talk
-- ----------------------------
INSERT INTO `ims_hulu_like_talk` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '来自全国各地', '1', '', '32.23481,119.8076', '1553504791', '114.229.183.162', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '2', '', '32.23513,119.8077', '1553690364', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('3', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '1', '', '32.23482,119.8109', '1553696401', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '2', '', '32.23499,119.8078', '1553702035', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('5', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '测试', '1', '', '32.23493,119.808', '1553842534', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '1', '', '32.23507,119.8076', '1553870638', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('7', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '1', '扬中市明珠园山庄(扬子西路南150米)', '32.23523,119.8076', '1553879481', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('8', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '约会', '1', '扬中市明珠园山庄(扬子西路南150米)', '32.23519,119.8077', '1553879727', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('9', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', '1', '？？？。。', '1', '扬中市新世界花苑(扬子西路南)', '32.235016,119.80767', '1553939145', '183.213.192.229', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('16', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1', '', '2', '扬中市新世界花苑(扬子西路南)', '32.23499,119.8077', '1554305004', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('13', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '3', '1', ':D', '1', '海陵区凤城国际梅兰芳大剧院东南(敬亭路)', '32.47461,119.91539', '1554221074', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('12', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '3', '1', '测试', '2', '扬中市新世界花苑(扬子西路南)', '32.234993,119.80765', '1554010617', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('14', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '3', '1', '？？？？', '2', '扬中市新世界花苑(扬子西路南)', '32.234985,119.80764', '1554279721', '183.213.195.98', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('15', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1', '1', 'fshhhhhhhhhhhhhhh', '1', '', '', '1554301997', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('17', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '1', '！', '1', '', '0.0,0.0', '1554311617', '183.213.195.98', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('18', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '3', '1', '有来聊天的人呢？？', '1', '海陵区东明花园北150米(南园路南)', '32.4736,119.907265', '1554905856', '223.104.146.170', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk` VALUES ('19', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '2', '1', '！！', '1', '扬中市新世界花苑(扬子西路南)', '32.23505,119.80765', '1558567305', '122.192.12.26', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_talk_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_talk_pinglun`;
CREATE TABLE `ims_hulu_like_talk_pinglun` (
  `pinglun_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `talk_id` int(10) NOT NULL,
  `pinglun_content` text NOT NULL,
  `pinglun_time` varchar(100) NOT NULL,
  `pinglun_ip` varchar(100) NOT NULL,
  `pinglun_container` varchar(100) NOT NULL,
  `pinglun_os` varchar(100) NOT NULL,
  PRIMARY KEY (`pinglun_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_talk_pinglun
-- ----------------------------
INSERT INTO `ims_hulu_like_talk_pinglun` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '一！一定', '1553702065', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_pinglun` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '5', '不、一样，不知道为什么最近这么大呢、一定的哥哥们儿都匀、不过：不知道为什么这么贵人缘运的胳肢窝……不能用时的照片……不会去往另一个小孩的世界很开心……不过你也来回哪去了十年前的自己……不要去皮洗净切成块、不会去往另一个好处多多指教……不知道为什么最近这么好的朋友可以加我微信打招呼啦、一下这么久远、不能用力向来了……不要去皮洗净切成块……不', '1553842603', '49.92.114.39', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_talk_zan
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_talk_zan`;
CREATE TABLE `ims_hulu_like_talk_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `talk_id` int(10) NOT NULL,
  `zan_time` varchar(100) NOT NULL,
  `zan_ip` varchar(100) NOT NULL,
  `zan_container` varchar(100) NOT NULL,
  `zan_os` varchar(100) NOT NULL,
  PRIMARY KEY (`zan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_talk_zan
-- ----------------------------
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '1553702057', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '4', '1553702058', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('3', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '8', '1554043080', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('4', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '9', '1554229241', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('5', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '18', '1554920540', '221.192.179.56', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_talk_zan` VALUES ('6', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '17', '1556191506', '122.192.12.148', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_taocan
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_taocan`;
CREATE TABLE `ims_hulu_like_taocan` (
  `taocan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `taocan_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `taocan_did` int(10) NOT NULL,
  `taocan_liaotian_jinbi` int(10) NOT NULL,
  `taocan_liaotian_person` int(10) NOT NULL,
  `taocan_liaotian_time` int(10) NOT NULL,
  PRIMARY KEY (`taocan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_taocan
-- ----------------------------

-- ----------------------------
-- Table structure for ims_hulu_like_tixian
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_tixian`;
CREATE TABLE `ims_hulu_like_tixian` (
  `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `money_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功',
  `money_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入/4为提成',
  `money_money` decimal(10,4) NOT NULL,
  `money_content` text NOT NULL,
  `money_time` varchar(100) NOT NULL,
  `money_ip` varchar(100) NOT NULL,
  `money_container` varchar(100) NOT NULL,
  `money_os` varchar(100) NOT NULL,
  PRIMARY KEY (`money_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_tixian
-- ----------------------------
INSERT INTO `ims_hulu_like_tixian` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '3', '2', '2.5000', '', '1553790695', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_tixian` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '2', '2', '1.3000', '', '1554092292', '183.211.181.140', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_user`;
CREATE TABLE `ims_hulu_like_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `upid` int(10) unsigned NOT NULL DEFAULT '2',
  `user_jinbi` int(10) NOT NULL,
  `user_share` int(10) unsigned NOT NULL DEFAULT '1',
  `kefu_if` int(10) unsigned NOT NULL DEFAULT '1',
  `sham` int(10) unsigned NOT NULL DEFAULT '1',
  `vip_endtime` varchar(100) NOT NULL,
  `realname` int(10) unsigned NOT NULL DEFAULT '1',
  `sex` int(10) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `avatar` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `user_shangji` varchar(100) NOT NULL,
  `user_liaodou_if` int(10) unsigned NOT NULL DEFAULT '1',
  `user_liaodou_endtime` varchar(100) NOT NULL,
  `login_time` varchar(100) NOT NULL,
  `login_ip` varchar(100) NOT NULL,
  `login_container` varchar(100) NOT NULL,
  `login_os` varchar(100) NOT NULL,
  `reg_time` varchar(100) NOT NULL,
  `reg_ip` varchar(100) NOT NULL,
  `set_close` int(1) NOT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  `is_mz` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_user
-- ----------------------------
INSERT INTO `ims_hulu_like_user` VALUES ('32', '1', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '3', '0', '1', '1', '1', '', '1', '1', '月子酱', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4ZE6B6HUnp5k0AqRicYqK0ewib1bmZQZdyfAtwxvWvvwUqiaKQ2YMUZHnowveEBaXwJD11XVib0Wjzy4mB23VSNh6QGujITcWLV0w/132', '121.39373,31.2083', '', '1', '', '1554945009', '114.87.91.213', 'wechat', 'mobile', '1554944929', '114.87.91.213', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '4', '0', '2', '2', '1', '1870271016', '1', '1', '不：不', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuODZboVaqic8E3wujX626rDs0iav1THrBvIawZh71Vrv5yUyoOt3yVTCUWicmdibEYEpdG0TpRy0RMrmw/132', '119.8079,32.23495', '', '1', '', '1558590973', '49.94.41.231', 'wechat', 'mobile', '1553504740', '114.229.183.162', '0', 'images/1/2019/03/S9kt50z5hQQlhG5_prrponDjSsqDI4LU5l_BVYRN-rehSmi2UEqPoMzh-NChpzp_.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('3', '1', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '3', '0', '1', '1', '1', '', '1', '1', '沈渝冰 ', 'http://thirdwx.qlogo.cn/mmopen/vi_32/1mA3IHLeWVicYZGxRQPSKJeXAPjVcGAvo0GNQaJWfNpdRicra2cqFHHKxanPmMDGt3Dj6nAN69N7TTocrCAHuP0A/132', '108.8762,34.24294', '', '1', '', '1553515929', '218.26.54.61', 'wechat', 'mobile', '1553515771', '218.26.54.61', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('4', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '4', '0', '1', '1', '1', '1872436100', '1', '1', 'A哥', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4L44VQuXMrrZSicZxW81kLXZrUEnqf6ibhS5DF8QKtWGYkoCHUT46pCW1m3pOaqL5ZvvtWrxhicNo0anzwqK95JyobvFkpMfQRKM/132', '119.80765,32.23505', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '1558577582', '117.90.83.220', 'wechat', 'mobile', '1553600803', '122.96.42.245', '0', 'images/1/2019/03/1ZhWnZIB-fb_49zVh0Z3pzEO4vny9VbA-tMMAvcqYENOrmI7kugKnVJJNur3t6GC.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('5', '1', 'abcd1', '3', '0', '1', '1', '2', '', '2', '2', '', '../addons/hulu_like/public/avatar/1.jpg', '', '', '1', '', '', '183.211.182.82', 'wechat', 'mobile', '1553601267', '183.211.182.82', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('6', '1', 'abcd2', '3', '0', '1', '1', '2', '', '1', '2', '', '../addons/hulu_like/public/avatar/2.jpg', '', '', '1', '', '', '183.211.182.82', 'wechat', 'mobile', '1553601267', '183.211.182.82', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('7', '1', 'abcd3', '3', '0', '1', '1', '2', '', '1', '2', '', '../addons/hulu_like/public/avatar/3.jpg', '', '', '1', '', '', '183.211.182.82', 'wechat', 'mobile', '1553601267', '183.211.182.82', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('8', '1', 'abcd4', '3', '0', '1', '1', '2', '', '2', '2', '', '../addons/hulu_like/public/avatar/4.jpg', '', '', '1', '', '', '183.211.182.82', 'wechat', 'mobile', '1553601267', '183.211.182.82', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('9', '1', 'abcd5', '3', '0', '1', '2', '2', '', '2', '2', '', '../addons/hulu_like/public/avatar/5.jpg', '', '', '1', '', '', '183.211.182.82', 'wechat', 'mobile', '1553601267', '183.211.182.82', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('10', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '3', '0', '2', '1', '1', '1869667143', '2', '1', 'null', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKprgQnx5VG9EoBnhbr175NQhmRkPVTubUeDicwKpCOGnV5XUqFLbVDMG1Xhtzh8PMhJ8M268J8rTw/132', '121.34049224853516,31.149986267089844', '', '1', '', '1557327711', '115.238.229.39', 'wechat', 'mobile', '1553607258', '59.63.204.204', '0', 'images/1/2019/03/M-tv-7phUZP_rIISVAN_f250_S8-IEC-TQposdqlWdfnijYkwo5r3PDQWkPWS4vE.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('11', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '4', '0', '2', '1', '1', '1872436126', '1', '1', 'K哥', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKKsQCD9qQ9yQY0GR8ZSzXCyOPk3CUCficjRdiahWeDJ95PRVOLXEF5dfbHhUueXzdepB7sB6PfkEcTVkvALZ2N0N/132', '119.807655,32.23503', '', '1', '', '1558577599', '117.90.83.220', 'wechat', 'mobile', '1553608222', '122.96.42.245', '0', 'images/1/2019/03/0uuHe3XN0YOG5tUUaiVsDjldFz2NFGUTFq0Miqw-kcvnj9VwLfetlFgYt0-7oyF3.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('13', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '3', '0', '1', '1', '1', '', '1', '1', '大毛丶', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLwQEKO0zW4FibO7w8VSeYPmGQXm0sndlDYvAyDiceZlstMuXupV2P7KicKBpeHGwXnotp2h5qgicFGKA/132', '', '', '1', '', '1553613939', '117.34.136.34', 'wechat', 'mobile', '1553613920', '117.34.136.34', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('14', '1', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '3', '0', '1', '1', '1', '', '1', '0', '', '', '', '', '1', '', '1553613939', '117.34.136.34', 'wechat', 'mobile', '1553613910', '117.34.136.34', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('15', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '3', '0', '1', '1', '1', '', '1', '2', '靓。', 'http://thirdwx.qlogo.cn/mmopen/vi_32/8s5Bjjp6uicUQ88mQLOicl8iaRpHAPFS65a9bOT4HgO89bZ6H3M1RdicibQbDMbQvsWJyDO2aah8JuETY3wSLS0SjNg/132', '0.0,0.0', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '1554311918', '183.213.195.98', 'wechat', 'mobile', '1553754399', '49.95.215.249', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('16', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '3', '0', '1', '1', '1', '', '1', '1', 'WWJ', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJPXDw7FHXZf5bIVBJ3LibVt5J3JRWVI82jufDw7DEiaolL7hRTuYmGbo6ibIgxRk4TicckkfR4sv4YEg/132', '117.65286,24.528261', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '1553870231', '112.5.248.148', 'wechat', 'mobile', '1553757103', '202.109.239.123', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('17', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', '3', '0', '1', '1', '1', '', '1', '2', '海阔天空', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlM8Hk65uWbzTFA8ydicSCCLUBYaZHmiaukb9Dd9OCHsYA90HhZzZwicMTHcMFoYn063reoh9qmmk0VYmyBicT1f1h1G/132', '112.33104,34.683624', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '1554186753', '123.7.54.9', 'wechat', 'mobile', '1553758660', '123.7.54.9', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('18', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', '3', '0', '1', '1', '1', '1559140840', '1', '2', 'A栩哥', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW1ibuJw2C9zEs4X8RGL4nJtJQKaJoysIX3StdJed971QdSh45yibwNbxtvczQdyicUiaDP5p6fXq136b/132', '119.80764,32.235016', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1', '', '1557254831', '122.96.40.35', 'wechat', 'mobile', '1553783889', '183.213.192.53', '0', 'images/1/2019/03/9nOQwHppbBdly8_e0-hgC9lfCxTRLK8Ov9OrG1ReSJSVZgzYUTE5Lhwb5hCVb2KC.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('33', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '3', '0', '1', '1', '1', '', '1', '1', '不一样的烟火', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAmiawU45pRx6oNq3XDfSjKIZsibiauwNkdNXp5Mjqjma4wxlcu6yESzfpse6oMV443K4TZzI8gI7GZg/132', '', '', '1', '', '1556121834', '117.136.45.191', 'wechat', 'mobile', '1556121688', '117.136.45.191', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('19', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '3', '0', '1', '1', '1', '', '1', '1', '天边的云', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKeTvqghLxoGRAlppWV6cxOkaYRcD9TqNS8IibPicyRXDd3v2E2qhIujEq8w4KwyO9nZF41VKZwB5gMwu6FSB5k2q/132', '119.957565,32.472713', '', '1', '', '1557155595', '49.71.200.89', 'wechat', 'mobile', '1554200417', '49.78.44.5', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('20', '1', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '3', '0', '1', '1', '1', '', '1', '1', '余生请多赐教', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLQ885TKuNOeyzxPmDB8ZK7wsaC6wHHKFiagY3xIFR3MKbic5S83bqRvOicDH8EWBsHSibZYqvtGI1epg/132', '114.40589,30.499756', '', '1', '', '1554204099', '117.136.81.203', 'wechat', 'mobile', '1554201737', '59.175.215.138', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('21', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '3', '0', '1', '1', '1', '', '1', '1', 'A迪', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL4KiajJIiafLzq0b8y4OxnVPqBWweUzw2IXh0yZcMBVSdL4lCqAiacsRd6UHx273K9OSj6bOZo2SHDw/132', '119.91539,32.47445', '', '1', '', '1554920636', '221.192.179.56', 'wechat', 'mobile', '1554205922', '117.94.109.104', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('31', '1', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '3', '0', '1', '1', '1', '', '1', '2', 'luckydog', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RIGEVKnmia2l9y5iauoXNndWCahHMiaric4YKqOkWibHGciaWEaThOe9pP2VTtvfuJSSnU1nBjxgLnwgUibeA4icbdOZwNt/132', '119.60672,31.730083', '', '1', '', '1557325329', '122.192.14.229', 'wechat', 'mobile', '1554903549', '112.24.200.45', '0', 'images/1/2019/05/cnciI3KerIPQsahK7NIfu2v1o05dZGgGveYhfDp0Ok0HKPRfItFcL7Py0wjFoEgP.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('22', '1', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '3', '0', '1', '1', '1', '', '1', '1', '李杰', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epSwGtJC2SyKJWMxEq1ibSEke4LFZvdt51rtXOpcJsgwkRhdsYNs1Hg7bxibx1FXf3fy00jJupUG7ow/132', '121.40699,31.233313', '', '1', '', '1556008019', '114.86.82.144', 'wechat', 'mobile', '1554206719', '112.65.48.167', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('23', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', '3', '0', '1', '1', '1', '', '1', '1', '97年的老男人', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKicuBrWpm4PdmicmJJbVGW3gBa0sIpqa05FDLSxHa9P9LIM2UlRvH4l9Zew1QrQTteOlQkUYLNKxwg/132', '118.06968,37.279236', '', '1', '', '1554257775', '36.23.72.79', 'wechat', 'mobile', '1554211683', '36.23.207.134', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('24', '1', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '3', '0', '1', '1', '1', '', '1', '1', 'A个人 | 企业贷款经理 金善阳', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6NlT9ONTT8hZJvCalASkHPkic1ImTic2bhKaic0yxRoicEn7GjeoLygiczgWV8vaDp93ChD2ZkemelBuIDc7icZeG3hw/132', '121.5641860961914,31.25353240966797', '', '1', '', '1554212265', '183.192.13.207', 'wechat', 'mobile', '1554212259', '183.192.13.207', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('25', '1', 'oUozg0jS_EoO1PppZKHjm5391lho', '3', '0', '1', '1', '1', '', '1', '2', '叶子青', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eraWhlDoSrhziboFzt3uVWgqDRkWeSwIeQ8zibfSAUkPico4Z3COJSibibCNibfXJhzyWwZsNLK3DunVetQ/132', '120.50334930419922,31.239809036254883', '', '1', '', '1554221474', '153.37.205.154', 'wechat', 'mobile', '1554221469', '153.37.205.154', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('26', '1', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '3', '0', '1', '1', '1', '', '1', '1', '夏至未至', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJuu62b1ZvC4lgh4v3fHFx762dX1ZAdqRrRI8MLKVoSsBYBNlzibJ1icibsX7yxug1YZ6URILBfItxJw/132', '119.91532,32.474552', '', '1', '', '1554222406', '117.94.109.104', 'wechat', 'mobile', '1554222123', '117.94.109.104', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('27', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '3', '0', '1', '1', '1', '', '1', '2', '安之', 'http://thirdwx.qlogo.cn/mmopen/uJX0EDf9pUQwzFt7TLI9KXAwypYWVfuEq9qDicBQFY8X4Z1xls7ktFia0nYVxfjBWEXxazicUqkicZB4NLTgHbAkVwwBDmFXLwSQ/132', '106.30450439453125,29.6021785736084', '', '1', '', '1554250158', '183.228.48.242', 'wechat', 'mobile', '1554250143', '183.228.48.242', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('28', '1', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '3', '0', '1', '1', '1', '', '1', '1', '钱多多', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIoJgHcOaGUz8AibqqicZvba9CibmJiaqU8Z50MicF22C5l0whZG42MWS2TicCgvJ5PC93hVgkbcckxBD0A/132', '', '', '1', '', '1554269655', '112.22.62.191', 'wechat', 'mobile', '1554269651', '112.22.62.191', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('29', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '3', '0', '1', '1', '1', '', '1', '0', '小笨笨', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlPLlZoTHcYJvKmwa3OsYKEuVvQryDFtH0zhP9dTg00JOuiaTXSE0miaDEJkeOfnFSV5Bw2ia9KIic7vgO6YM5FR2JSc/132', '', '', '1', '', '1554291184', '222.90.14.92', 'wechat', 'mobile', '1554291184', '222.90.14.92', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('30', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', '4', '0', '1', '1', '1', '1559664924', '2', '2', '初夏', 'http://thirdwx.qlogo.cn/mmopen/iaRlzG8zy7BsA4WXv52Ef6MibIXyu9OOicdVcoPJ7jT4oX6JDcgrF2vDh0J7Il8DdicVIAzcIggVlDcnfBk2icL84qQ/132', '119.90747,32.473522', '', '1', '', '1554993666', '180.122.249.30', 'wechat', 'mobile', '1554307857', '223.104.146.189', '0', 'images/1/2019/04/QDN_g9aknFrJ9BXDviOS24XY5ajJwNziU3Xi5UGXmx_vmvWFtqRdfqePN83nHAGh.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('34', '1', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '3', '0', '1', '1', '1', '', '1', '1', '匡', 'http://thirdwx.qlogo.cn/mmopen/D7B0GmFiayibmL7aUaWiagabn6MWFiaoNGzL9w6QNcjBqCU2z49Qn5FZtqtAUsE3huHG2bHqofYhpgGicG8wzwdCfa2mQYZ4XKa5a/132', '', '', '1', '', '1557279346', '49.90.178.229', 'wechat', 'mobile', '1557279346', '49.90.178.229', '0', null, '0');
INSERT INTO `ims_hulu_like_user` VALUES ('35', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '3', '0', '2', '1', '1', '', '1', '1', 'Rong', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuONInNMGrldvqlpqVqw4V5gAEbeBqF3GiboxzGo06dZBaqwLJF8Ccqe0IicrrREldicoLPmKpSUlHWLG/132', '119.915695,32.474358', '', '1', '', '1557371588', '117.136.19.21', 'wechat', 'mobile', '1557325093', '117.136.19.21', '0', null, '1');
INSERT INTO `ims_hulu_like_user` VALUES ('36', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '3', '0', '2', '1', '1', '', '1', '2', 'SOQl复合能量', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIUjwG8sgPOQYv1LbxSNkkBWbquUaicppEFef2IGCUicKdng2fPPtPgVCfSG1dNh4fcOoDVYEN4r1hw/132', '117.20184326171875,29.281248092651367', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '1', '', '1558234932', '223.104.247.178', 'wechat', 'mobile', '1557325754', '117.136.45.187', '0', 'images/1/2019/05/7JeOZBOTs5oXsr2HqMQslkUfhTIIBl4Eei-NzPIj9XDXr-aiGQSijXBEeMz5NsF8.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('37', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '3', '0', '2', '1', '1', '', '1', '2', '陈', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKib0xISwXuoiaYwicd0aFkXcOwQuc9KNF4RxicMrnEKug0DnvxfL1Q17P0XibyXnT8sDKLy5l5f6LbkvA/132', '119.9159164428711,32.47455596923828', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '1', '', '1557375243', '117.136.45.185', 'wechat', 'mobile', '1557328235', '117.136.45.185', '0', 'images/1/2019/05/_qchfqFPpdajKHDGfQjntYQbybVLWh40q-BS0sd4PzCFOttWpFMND98HT7hwtIUo.jpg', '1');
INSERT INTO `ims_hulu_like_user` VALUES ('38', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', '3', '0', '1', '1', '1', '', '1', '2', '美人魚', 'http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAKP1m9aAW2JS4fsM1XoIULgFYPPiaiayl24PKBlDWoF2jq4munorQbXUBT1SmRCIicpdXB3iaQGwicFPd/132', '119.80767059326172,32.23500061035156', '', '1', '', '1558577950', '117.90.83.220', 'wechat', 'mobile', '1558577660', '117.90.83.220', '0', 'images/1/2019/05/y9hkDHmFP_rugBuoGL_XNi-EDiLvsHLqR0H70QJF5abTI1p_4AsIfFzKu4HjnVvq.jpg', '1');

-- ----------------------------
-- Table structure for ims_hulu_like_viewer
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_viewer`;
CREATE TABLE `ims_hulu_like_viewer` (
  `viewer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '来访者',
  `viewer_openid` varchar(100) NOT NULL COMMENT '被访问者',
  `viewer_time` varchar(100) NOT NULL,
  `viewer_ip` varchar(100) NOT NULL,
  `viewer_container` varchar(100) NOT NULL,
  `viewer_os` varchar(100) NOT NULL,
  PRIMARY KEY (`viewer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_viewer
-- ----------------------------
INSERT INTO `ims_hulu_like_viewer` VALUES ('1', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '1553601364', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('2', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd4', '1557699345', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('3', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1557676066', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('4', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0oxNcYufC4EOP8iUhxBmQOM', '1553601377', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('5', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'abcd5', '1553607225', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('6', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1554016260', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('7', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1554015974', '183.211.182.238', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('15', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1553758744', '123.7.54.9', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('8', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1554016242', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('9', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1554279109', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('10', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1554794381', '122.194.3.133', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('11', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1558210734', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('12', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'abcd2', '1553682923', '183.213.197.198', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('13', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd3', '1557699308', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('14', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd1', '1557699338', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('16', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '1553947987', '49.92.114.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('17', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0nDymxiB0QyypleJpNDGudw', '1557254459', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('18', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1558576915', '49.94.41.231', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('19', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd2', '1557676012', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('20', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554978299', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('21', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1553870158', '112.5.248.148', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('22', '1', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', 'oUozg0nDymxiB0QyypleJpNDGudw', '1553870222', '112.5.248.148', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('23', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1553879856', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('24', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '1554045358', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('25', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0oxNcYufC4EOP8iUhxBmQOM', '1553950873', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('26', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1557254478', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('27', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554129690', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('28', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554045494', '49.92.241.239', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('29', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '1554045297', '49.92.241.239', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('30', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '1554015538', '49.92.241.239', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('170', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558576929', '49.94.41.231', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('31', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1554045337', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('32', '1', 'oUozg0l0wIfmspLX4CggCHCUvL-4', 'abcd4', '1554016327', '49.92.241.239', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('33', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0nDymxiB0QyypleJpNDGudw', '1556191386', '122.192.12.148', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('34', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554978287', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('35', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1554045314', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('36', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1554045154', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('37', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1554045349', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('38', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554313894', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('39', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1554101011', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('40', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554185911', '123.7.54.9', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('41', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1554200435', '49.78.44.5', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('42', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '1557254948', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('43', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '1554964297', '122.194.3.133', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('44', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'abcd3', '1554205716', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('45', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1554205765', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('46', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '1554205818', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('47', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0r3Y-ypKXYWpjGHoyk5Bkow', '1554205877', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('48', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554205917', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('49', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '1554220809', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('50', '1', 'oUozg0i4KdCJUvw3jiK6Tr1LBew8', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1554210352', '113.194.200.179', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('51', '1', 'oUozg0lpeLJY33ofVq65An6s5xco', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '1554210466', '223.107.200.17', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('52', '1', 'oUozg0iy-vNEPs2XwPMdBE0PQEUs', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '1554210481', '112.64.68.119', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('53', '1', 'oUozg0iy-vNEPs2XwPMdBE0PQEUs', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554210512', '112.64.68.119', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('54', '1', 'oUozg0lX5oVOs0IIrjRlj90GCgRg', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554211039', '117.136.8.229', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('55', '1', 'oUozg0j7SxJihEh5cxmvoCBzmduI', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554211224', '221.192.179.242', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('56', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', 'abcd1', '1554211722', '36.23.207.134', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('57', '1', 'oUozg0rcrl_6S3v2FdaQgqHZ7e5Q', 'abcd2', '1554212300', '223.104.212.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('58', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0uc2VhThQASbpiKZBOjyiXw', '1558210662', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('59', '1', 'oUozg0jQNXRxgkjJh9Htyq4g8xU0', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554214466', '101.86.243.182', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('60', '1', 'oUozg0hMia3GtHIcsuFSMofpV3hI', 'abcd2', '1554214613', '49.90.151.74', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('61', '1', 'oUozg0kZY007qe1guxmUXpBZQu2Y', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554215120', '223.11.25.20', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('62', '1', 'oUozg0rKjLzHnZY-C5CCHbv1Mlik', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554215927', '1.180.4.94', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('63', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1554221517', '117.94.109.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('64', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1554222987', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('65', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1558214278', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('66', '1', 'oUozg0hMia3GtHIcsuFSMofpV3hI', 'abcd5', '1554247476', '180.120.161.34', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('67', '1', 'oUozg0ovjVpe77JLVbk5db0JbPPo', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1554247899', '49.67.243.71', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('68', '1', 'oUozg0umc-uxQlkkFzlj_TibItGs', 'oUozg0k7i_p_8jSW6iTWfZgSpV7o', '1554248699', '182.101.59.207', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('69', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '1554248723', '117.94.193.111', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('70', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554249802', '183.228.48.242', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('71', '1', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1554250075', '183.228.48.242', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('72', '1', 'oUozg0jmwVrRtXCEtQeRr3dPFSyU', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '1554257789', '36.23.72.79', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('73', '1', 'oUozg0vmH8la1ygu9E4ott1UXN8Y', 'oUozg0hH2YlEVT6_UAIE63yBED14', '1554259845', '222.93.138.104', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('74', '1', 'oUozg0ll_07bomjvPGew9PjuT9Uk', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1554264127', '223.104.210.159', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('75', '1', 'oUozg0oQI0LX9u6vrrp9Yv4AG1Mw', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554269042', '60.168.32.101', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('76', '1', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554269645', '112.22.62.191', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('77', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1554276839', '49.94.158.120', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('78', '1', 'oUozg0mbAAemIXf_c8l__YXUnVHc', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1554287041', '124.79.240.118', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('79', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', 'abcd2', '1554291156', '222.90.14.92', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('80', '1', 'oUozg0muZGLNMzGvXSco_PJMw8ao', 'abcd5', '1554291176', '222.90.14.92', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('81', '1', 'oUozg0l627ARqfL8htVRafSi980Y', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554305941', '223.104.4.141', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('82', '1', 'oUozg0l627ARqfL8htVRafSi980Y', 'abcd2', '1554305953', '223.104.4.141', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('83', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1554306281', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('84', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '1554308853', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('85', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554311079', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('86', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557676133', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('87', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1554309446', '59.63.204.204', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('88', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '1554311994', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('89', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1554313667', '122.96.42.245', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('90', '1', 'oUozg0gA22aw-zuBzin6yNcIQelI', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554348266', '123.7.54.9', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('91', '1', 'oUozg0vOiakTlOq8wf5tVugGUjtc', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1554485979', '211.97.131.88', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('92', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', '1554788717', '122.194.3.133', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('93', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1558530193', '122.192.12.26', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('94', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jS_EoO1PppZKHjm5391lho', '1558389163', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('95', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0kv5o2GAVIdI0X4ixDPw7jI', '1557076476', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('96', '1', 'oUozg0qYE8hmwoCgmvJChLPgOiDY', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554881638', '114.87.102.5', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('97', '1', 'oUozg0qcmb9wQInQtQtLrx8f-w4o', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554881861', '223.66.193.72', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('98', '1', 'oUozg0laLWDJY7ZlQzWNEu4uk02E', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1554883358', '117.136.66.84', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('99', '1', 'oUozg0laLWDJY7ZlQzWNEu4uk02E', 'abcd4', '1554883437', '117.136.66.84', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('100', '1', 'oUozg0sT3NIkaZEcY5EDNxajRgC8', 'oUozg0gA22aw-zuBzin6yNcIQelI', '1554889727', '101.64.179.202', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('101', '1', 'oUozg0iTTKBe7oHft9Scqaa9rss0', 'abcd5', '1554890300', '223.104.212.67', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('102', '1', 'oUozg0iTTKBe7oHft9Scqaa9rss0', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554890324', '223.104.212.67', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('103', '1', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1554903803', '112.24.200.45', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('104', '1', 'oUozg0jH6-V9WEIg4HOR903amdjA', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '1554905496', '180.122.249.30', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('105', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1558389128', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('106', '1', 'oUozg0kO69VubfqnXG9uvm3oFB3g', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554907363', '223.104.1.109', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('107', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557324837', '49.94.201.48', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('108', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554920641', '221.192.179.56', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('109', '1', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1554920693', '221.192.179.56', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('110', '1', 'oUozg0giyBFVm-yFJ-RyDfXkvTPg', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554926455', '36.60.61.216', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('111', '1', 'oUozg0k9puXfkB1dLc3lzZvM1ZWo', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1554930763', '117.94.209.94', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('112', '1', 'oUozg0r9TaDo0QCUANu4WYnUB-8A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554938571', '49.85.186.5', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('113', '1', 'oUozg0r9TaDo0QCUANu4WYnUB-8A', 'abcd3', '1554938643', '49.85.186.5', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('114', '1', 'oUozg0oOC50lQjKTAG8lH_o6JyYI', 'oUozg0nDymxiB0QyypleJpNDGudw', '1554944029', '121.230.16.28', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('115', '1', 'oUozg0geK_Uo9BVBykzsUU6mDrdA', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1554944554', '223.104.212.172', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('116', '1', 'oUozg0geK_Uo9BVBykzsUU6mDrdA', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1554944623', '223.104.212.172', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('117', '1', 'oUozg0ovjVpe77JLVbk5db0JbPPo', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554948176', '117.136.68.161', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('118', '1', 'oUozg0ovjVpe77JLVbk5db0JbPPo', 'abcd1', '1554948193', '117.136.68.161', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('119', '1', 'oUozg0jjVVepowA-0jymhjqnbI5I', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554960548', '221.227.155.47', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('120', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '1554978186', '183.213.193.62', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('121', '1', 'oUozg0vU4k4_aEVg6j3jY-WxlE-o', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1554974392', '117.136.67.129', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('122', '1', 'oUozg0vU4k4_aEVg6j3jY-WxlE-o', 'abcd3', '1554974427', '117.136.67.129', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('123', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0i_6flQiuxmI-EiCB_Orsrs', '1554991390', '122.194.3.133', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('124', '1', 'oUozg0mR4YGWBMXRNruSXXtomm7s', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1555154877', '222.223.101.238', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('125', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', '1556023110', '122.96.40.143', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('126', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'abcd5', '1557076504', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('127', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1556121858', '117.136.45.191', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('128', '1', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', 'oUozg0jS_EoO1PppZKHjm5391lho', '1556121805', '117.136.45.191', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('129', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '1556191349', '122.192.12.148', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('130', '1', 'oUozg0iyZNoHHyWmv8l5rZTGNEfo', 'abcd1', '1556313718', '223.104.4.128', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('131', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0j5BxKHkKOKpdacfuBvCfIg', '1556382810', '122.96.41.73', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('132', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1556464220', '183.213.195.155', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('133', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1556465339', '183.213.195.155', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('134', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1557075832', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('135', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1557075972', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('136', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '1557088482', '183.213.192.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('137', '1', 'oUozg0hh-GYlNbclkm_0GDqBhy44', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557155698', '49.71.200.89', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('138', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557254111', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('139', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jS_EoO1PppZKHjm5391lho', '1557254133', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('140', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557254233', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('141', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557254392', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('142', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '1557254371', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('143', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1557254463', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('144', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0lRytzTodqiNPMZCz4hFBPo', '1557254470', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('145', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557254712', '122.96.40.35', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('146', '1', 'oUozg0oxNcYufC4EOP8iUhxBmQOM', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '1557255867', '110.184.202.119', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('147', '1', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', 'abcd5', '1557278800', '49.90.178.229', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('148', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '1558533122', '122.192.12.26', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('149', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0jS_EoO1PppZKHjm5391lho', '1557324781', '49.94.201.48', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('150', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557328787', '117.136.19.21', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('151', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '1557325966', '117.136.19.21', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('152', '1', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557326072', '115.238.229.39', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('153', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1558576940', '49.94.41.231', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('154', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1558389109', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('155', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1557417175', '117.136.45.180', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('156', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558577601', '117.90.83.220', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('157', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0obtLh2h-w8noEIfiq9dXfs', '1557331064', '122.96.42.154', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('158', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', '1557333792', '117.136.45.185', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('159', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1557333091', '117.136.45.185', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('160', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'oUozg0joRwFEuLmn3abHY3NYAN6g', '1557333161', '117.136.45.185', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('161', '1', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', 'oUozg0hke7HG6VVGW0BQgV4B2hWU', '1557375235', '117.136.45.185', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('162', '1', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1557333703', '117.136.45.187', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('163', '1', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', '1557371584', '117.136.19.21', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('164', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'abcd5', '1557676050', '49.95.146.12', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('165', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'oUozg0gcTW1eBbM5tQSQxbwP5U1o', '1558009683', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('166', '1', 'oUozg0nDymxiB0QyypleJpNDGudw', 'abcd2', '1558009710', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('167', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'abcd3', '1558575383', '122.192.12.26', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('168', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '1558389150', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('169', '1', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '1558389180', '122.96.41.215', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('171', '1', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '1558576958', '49.94.41.231', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('172', '1', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558577570', '117.90.83.220', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('173', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '1558577960', '117.90.83.220', 'wechat', 'mobile');
INSERT INTO `ims_hulu_like_viewer` VALUES ('174', '1', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', 'oUozg0jH6-V9WEIg4HOR903amdjA', '1558577692', '117.90.83.220', 'wechat', 'mobile');

-- ----------------------------
-- Table structure for ims_hulu_like_wxlogin
-- ----------------------------
DROP TABLE IF EXISTS `ims_hulu_like_wxlogin`;
CREATE TABLE `ims_hulu_like_wxlogin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `type` varchar(8) NOT NULL COMMENT 'app',
  `token` text NOT NULL,
  `sign` text NOT NULL,
  `openid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_hulu_like_wxlogin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_job`;
CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------
INSERT INTO `ims_mc_fans_groups` VALUES ('1', '1', '1', 'a:1:{i:2;a:3:{s:2:\"id\";i:2;s:4:\"name\";s:9:\"星标组\";s:5:\"count\";i:0;}}');

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES ('1', '1', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(60) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------
INSERT INTO `ims_mc_mapping_fans` VALUES ('1', '1', '1', '1', 'oUozg0oxNcYufC4EOP8iUhxBmQOM', 'App小程序网站开发', '', 'V5vLn2S6', '1', '1544541865', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1Vvemcwb3hOY1l1ZkM0RU9QOGlVaHhCbVFPTSI7czo4OiJuaWNrbmFtZSI7czoyNDoiQXBw5bCP56iL5bqP572R56uZ5byA5Y+RIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLmiJDpg70iO3M6ODoicHJvdmluY2UiO3M6Njoi5Zub5bedIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzODoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsTXJTaWFmMUdhcm5oS0lXcm5pYWtmSk15TVo1NFBpY1ZMM3FMZGNzaWNtQjVpYU52WFpUNGtsc3M4Vm1pYUZVS09zWldrWnFVcjhoQzBlYkQ4VzJYbEtOQ2pzNUovMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTQ0NTQxODY1O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzODoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsTXJTaWFmMUdhcm5oS0lXcm5pYWtmSk15TVo1NFBpY1ZMM3FMZGNzaWNtQjVpYU52WFpUNGtsc3M4Vm1pYUZVS09zWldrWnFVcjhoQzBlYkQ4VzJYbEtOQ2pzNUovMTMyIjt9', '1553501730', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('2', '1', '1', '2', 'oUozg0pTQOoJq4VMMCLt42Do7Q2A', '', '', 'pHW8H3xu', '1', '1532716353', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwcFRRT29KcTRWTU1DTHQ0MkRvN1EyQSI7czo4OiJuaWNrbmFtZSI7czoxMjoi8J+agPCfmoDwn5qAIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljZfkuqwiO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNzoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSTEFsa2JiaWJtenVPRFpib1ZhcWljOEUzd3VqWDYyNnJEczBpYXYxVEhyQnZJYXdaaDcxVnJ2NXlVeW9PdDN5VlRDVVdpY21kaWJFWUVwZEcwVHBSeTBSTXJtdy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MzI3MTYzNTM7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM3OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JMQWxrYmJpYm16dU9EWmJvVmFxaWM4RTN3dWpYNjI2ckRzMGlhdjFUSHJCdklhd1poNzFWcnY1eVV5b090M3lWVENVV2ljbWRpYkVZRXBkRzBUcFJ5MFJNcm13LzEzMiI7fQ==', '1553503367', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('3', '1', '1', '3', 'oUozg0rFl8x9oA3RiP4qkXD6pX5Q', 'A栩哥', '', 'OkAJZF1d', '1', '1532853686', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwckZsOHg5b0EzUmlQNHFrWEQ2cFg1USI7czo4OiJuaWNrbmFtZSI7czo3OiJB5qCp5ZOlIjtzOjM6InNleCI7aTowO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6MDoiIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjE0NToiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek00TDQ0VlF1WE1yclpTaWNaeFc4MWtMWFpyVUVucWY2aWJoUzVERjhRS3RXR1lrb0NIVVQ0NnBDVzFtM3BPYXFMNVp2dnRXcnhoaWNObzBhbnp3cUs5NUp5b2J2RmtwTWZRUktNLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUzMjg1MzY4NjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxNDU6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9RM2F1SGd6d3pNNEw0NFZRdVhNcnJaU2ljWnhXODFrTFhaclVFbnFmNmliaFM1REY4UUt0V0dZa29DSFVUNDZwQ1cxbTNwT2FxTDVadnZ0V3J4aGljTm8wYW56d3FLOTVKeW9idkZrcE1mUVJLTS8xMzIiO30=', '1553600802', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('4', '1', '1', '4', 'oUozg0lRytzTodqiNPMZCz4hFBPo', 'K哥', '', 'E1I0uJnF', '1', '1554734762', '1554734754', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbFJ5dHpUb2RxaU5QTVpDejRoRkJQbyI7czo4OiJuaWNrbmFtZSI7czo0OiJL5ZOlIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLpl7XooYwiO3M6ODoicHJvdmluY2UiO3M6Njoi5LiK5rW3IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNDoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSS0tzUUNEOXFROXlRWTBHUjhaU3pYQ3lPUGszQ1VDZmljalJkaWFoV2VESjk1UFJWT0xYRUY1ZGZiSGhVdWVYemRlcEI3c0I2UGZrRWNUVmt2QUxaMk4wTi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTQ3MzQ3NjI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM0OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JLS3NRQ0Q5cVE5eVFZMEdSOFpTelhDeU9QazNDVUNmaWNqUmRpYWhXZURKOTVQUlZPTFhFRjVkZmJIaFV1ZVh6ZGVwQjdzQjZQZmtFY1RWa3ZBTFoyTjBOLzEzMiI7fQ==', '1553608213', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('5', '1', '1', '5', 'oUozg0qF86_CixuZtUb0AqMJWPTE', '生如夏花', '', 'I2nwCRm9', '1', '1553677222', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwcUY4Nl9DaXh1WnRVYjBBcU1KV1BURSI7czo4OiJuaWNrbmFtZSI7czoxMjoi55Sf5aaC5aSP6IqxIjtzOjM6InNleCI7aTowO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6MDoiIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMzoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsT0NoSk9qcW5iY1czQlhHQUY5SDJEcXgyZ3hxMzNOSkQ2alFnWlBzTzI0R3p0cVpwSEpFYWVqVjdubVF3S2lja0szNE9RZWJGSUMxeHB6THNBdnMzRTRDLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1MzY3NzIxNjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzM6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi84UFRqaWN0bXlUbE9DaEpPanFuYmNXM0JYR0FGOUgyRHF4Mmd4cTMzTkpENmpRZ1pQc08yNEd6dHFacEhKRWFlalY3bm1Rd0tpY2tLMzRPUWViRklDMXhwekxzQXZzM0U0Qy8xMzIiO30=', '1553677222', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('6', '1', '1', '6', 'oUozg0gA22aw-zuBzin6yNcIQelI', '海阔天空', '', 'khjJHOOK', '1', '1532701354', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwZ0EyMmF3LXp1QnppbjZ5TmNJUWVsSSI7czo4OiJuaWNrbmFtZSI7czoxMjoi5rW36ZiU5aSp56m6IjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MTI6IumYv+W4g+aJjuavlCI7czo3OiJjb3VudHJ5IjtzOjI0OiLpmL/mi4nkvK/ogZTlkIjphYvplb/lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vOFBUamljdG15VGxNOEhrNjV1V2J6VEZBOHlkaWNTQ0NMVUJZYVpIbWlhdWtiOURkOU9DSHNZQTkwSGhaelp3aWNNVEhjTUZvWW4wNjNyZW9oOXFtbWswVllteUJpY1QxZjFoMUcvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTMyNzAxMzU0O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsTThIazY1dVdielRGQTh5ZGljU0NDTFVCWWFaSG1pYXVrYjlEZDlPQ0hzWUE5MEhoWnpad2ljTVRIY01Gb1luMDYzcmVvaDlxbW1rMFZZbXlCaWNUMWYxaDFHLzEzMiI7fQ==', '1553758658', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('7', '1', '1', '7', 'oUozg0nDymxiB0QyypleJpNDGudw', 'A栩哥', '', 'uKCjzLsZ', '1', '1532700750', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbkR5bXhpQjBReXlwbGVKcE5ER3VkdyI7czo4OiJuaWNrbmFtZSI7czo3OiJB5qCp5ZOlIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljZfkuqwiO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsT0NoSk9qcW5iY1cxaWJ1SncyQzl6RXM0WDhSR0w0bkp0SlFLYUpveXNJWDNTdGRKZWQ5NzFRZFNoNDV5aWJ3TmJ4dHZjelFkeWljVWlhRFA1cDZmWHExMzZiLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUzMjcwMDc1MDtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi84UFRqaWN0bXlUbE9DaEpPanFuYmNXMWlidUp3MkM5ekVzNFg4UkdMNG5KdEpRS2FKb3lzSVgzU3RkSmVkOTcxUWRTaDQ1eWlid05ieHR2Y3pRZHlpY1VpYURQNXA2ZlhxMTM2Yi8xMzIiO30=', '1553783888', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('8', '1', '1', '8', 'oUozg0l0wIfmspLX4CggCHCUvL-4', '艾丽丝', '', 'E49tL4V1', '1', '1554015417', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbDB3SWZtc3BMWDRDZ2dDSENVdkwtNCI7czo4OiJuaWNrbmFtZSI7czo5OiLoib7kuL3kuJ0iO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czowOiIiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM0OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vVk8yOHljU1lGWVJhV29waFpoTUZSRXppYnpBUWN0bmx6M1dFd0dzRTRWcU5pYkhPdUQ1MTZQTU1oV1ZCZFFJNHl4SHB0SjRNbWpCMDZmQzFwZWVkWk13ekRpYTFacTdEOWZYLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NDAxNTQxMTtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzQ6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9WTzI4eWNTWUZZUmFXb3BoWmhNRlJFemliekFRY3RubHozV0V3R3NFNFZxTmliSE91RDUxNlBNTWhXVkJkUUk0eXhIcHRKNE1takIwNmZDMXBlZWRaTXd6RGlhMVpxN0Q5ZlgvMTMyIjt9', '1554015417', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('9', '1', '1', '9', 'oUozg0lf5ncgXDikvbw4iLRCZAHI', '匡', '', 'Ibmdv4bD', '1', '1533197038', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbGY1bmNnWERpa3ZidzRpTFJDWkFISSI7czo4OiJuaWNrbmFtZSI7czozOiLljKEiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vRDdCMEdtRmlheWlibUw3YVVhV2lhZ2FibjZNV0ZpYW9OR3pMOXc2UU5jakJxQ1UyejQ5UW41Rlp0cXRBVXNFM2h1SEcyYkhxb2ZZaHBnR2ljRzh3endkQ2ZhMm1RWVo0WEthNWEvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTMzMTk3MDM4O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL0Q3QjBHbUZpYXlpYm1MN2FVYVdpYWdhYm42TVdGaWFvTkd6TDl3NlFOY2pCcUNVMno0OVFuNUZadHF0QVVzRTNodUhHMmJIcW9mWWhwZ0dpY0c4d3p3ZENmYTJtUVlaNFhLYTVhLzEzMiI7fQ==', '1554185312', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('10', '1', '1', '10', 'oUozg0hh-GYlNbclkm_0GDqBhy44', '天边的云', '', 'X5Otop5U', '1', '1535038019', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwaGgtR1lsTmJjbGttXzBHRHFCaHk0NCI7czo4OiJuaWNrbmFtZSI7czoxNToi7oSd5aSp6L6555qE5LqRIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLms7Dlt54iO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNDoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSS2VUdnFnaEx4b0dSQWxwcFdWNmN4T2thWVJjRDlUcU5TOElpYlBpY3lSWERkM3YyRTJxaEl1akVxOHc0S3d5TzluWkY0MVZLWndCNWdNd3U2RlNCNWsycS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MzUwMzgwMTk7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM0OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JLZVR2cWdoTHhvR1JBbHBwV1Y2Y3hPa2FZUmNEOVRxTlM4SWliUGljeVJYRGQzdjJFMnFoSXVqRXE4dzRLd3lPOW5aRjQxVktad0I1Z013dTZGU0I1azJxLzEzMiI7fQ==', '1554200382', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('11', '1', '1', '11', 'oUozg0lr66TgN8Y3noe-UVOPvIew', '宝地~耐用滑动门', '', 'lRziZ55X', '0', '1554244537', '1554244571', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbHI2NlRnTjhZM25vZS1VVk9QdklldyI7czo4OiJuaWNrbmFtZSI7czoyMjoi5a6d5ZywfuiAkOeUqOa7keWKqOmXqCI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5ZCI6IKlIjtzOjg6InByb3ZpbmNlIjtzOjY6IuWuieW+vSI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9EN0IwR21GaWF5aWJtTDdhVWFXaWFnYWJvQU5uUmljSHRRY0h4RHhnZ29WNlFKeE9YS3lFTllVS1lFMURlM3A5WTd5TnNJS2VkQlV3THgwZ0pXZXc2NHVpY253MTIyTFNRM0lRcS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTQyNDQ1MzU7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vRDdCMEdtRmlheWlibUw3YVVhV2lhZ2Fib0FOblJpY0h0UWNIeER4Z2dvVjZRSnhPWEt5RU5ZVUtZRTFEZTNwOVk3eU5zSUtlZEJVd0x4MGdKV2V3NjR1aWNudzEyMkxTUTNJUXEvMTMyIjt9', '1554244537', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('12', '1', '1', '12', 'oUozg0hMia3GtHIcsuFSMofpV3hI', 'Sunny', '', 'SBfDDbZ9', '1', '1554247531', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwaE1pYTNHdEhJY3N1RlNNb2ZwVjNoSSI7czo4OiJuaWNrbmFtZSI7czo1OiJTdW5ueSI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5Y2X6YCaIjtzOjg6InByb3ZpbmNlIjtzOjY6Iuaxn+iLjyI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMjU6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9QaWFqeFNxQlJhRUt2aWJ3UURwM3BOWEV2UWlialk0T21XQTdhNGs0d0V2V05Td2NhY0Y4RzFlQkJzbzhva3dvNlhLTFViZFRqdjJsTHgyb25BdWljN053SXcvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTU0MjQ3NTMxO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyNToiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFS3ZpYndRRHAzcE5YRXZRaWJqWTRPbVdBN2E0azR3RXZXTlN3Y2FjRjhHMWVCQnNvOG9rd282WEtMVWJkVGp2MmxMeDJvbkF1aWM3TndJdy8xMzIiO30=', '1554247531', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('13', '1', '1', '13', 'oUozg0ta3jEoDjuf9nLP7PVFOpFE', '安之', '', 'QTH4T22j', '1', '1554249836', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwdGEzakVvRGp1ZjluTFA3UFZGT3BGRSI7czo4OiJuaWNrbmFtZSI7czo2OiLlronkuYsiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWNl+mAmiI7czo4OiJwcm92aW5jZSI7czo2OiLmsZ/oi48iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM1OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vdUpYMEVEZjlwVVF3ekZ0N1RMSTlLWEF3eXBZV1ZmdUVxOXFEaWNCUUZZOFg0WjF4bHM3a3RGaWEwbllWeGZqQldFWHhhemljVXFraWNaQjROTFRnSGJBa1Z3d0JEbUZYTHdTUS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTQyNDk4Mjc7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM1OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vdUpYMEVEZjlwVVF3ekZ0N1RMSTlLWEF3eXBZV1ZmdUVxOXFEaWNCUUZZOFg0WjF4bHM3a3RGaWEwbllWeGZqQldFWHhhemljVXFraWNaQjROTFRnSGJBa1Z3d0JEbUZYTHdTUS8xMzIiO30=', '1554249836', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('14', '1', '1', '14', 'oUozg0rCotjEFLB4lV6jJi0yaxH8', '奶油小生', '', 's077bVVy', '1', '1554259908', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwckNvdGpFRkxCNGxWNmpKaTB5YXhIOCI7czo4OiJuaWNrbmFtZSI7czoxMjoi5aW25rK55bCP55SfIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLpl7XooYwiO3M6ODoicHJvdmluY2UiO3M6Njoi5LiK5rW3IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsT0NoSk9qcW5iY1c2YUdJZ1MwdVpXbDNKaWNxYzJ6TW9TVWFkdm1wU01ZbkFnWUNBZmlhaGx2eVZBWEtXZnN6ZHJxdDQya2RGZmljOHJMRXhnVkpvRHY3aWFQLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NDI1OTkwODtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi84UFRqaWN0bXlUbE9DaEpPanFuYmNXNmFHSWdTMHVaV2wzSmljcWMyek1vU1VhZHZtcFNNWW5BZ1lDQWZpYWhsdnlWQVhLV2ZzemRycXQ0MmtkRmZpYzhyTEV4Z1ZKb0R2N2lhUC8xMzIiO30=', '1554259908', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('15', '1', '1', '15', 'oUozg0gQEolArlUCZbK1OhkhBThQ', '欧克', '', 'o4mEnXEh', '0', '1532875522', '1554275231', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwZ1FFb2xBcmxVQ1piSzFPaGtoQlRoUSI7czo4OiJuaWNrbmFtZSI7czo2OiLmrKflhYsiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuaWh+WxsSI7czo4OiJwcm92aW5jZSI7czo2OiLkupHljZciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM3OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JLZ1ZFRUpDTDY5aWE5QXFpYzJadFhpYWlhdjJSRGljWGFKcEZjYlJYRFV5cXFoMzBOYXVWVVM5eXBvc2haa1V2ZHYxRm11ejhDSGdUZlNWZEZJdHNhS1VZY2dELzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUzMjg3NTUyMjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzc6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9rR3plcXlHaWIzUktnVkVFSkNMNjlpYTlBcWljMlp0WGlhaWF2MlJEaWNYYUpwRmNiUlhEVXlxcWgzME5hdVZVUzl5cG9zaFprVXZkdjFGbXV6OENIZ1RmU1ZkRkl0c2FLVVljZ0QvMTMyIjt9', '1554275215', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('16', '1', '1', '16', 'oUozg0muZGLNMzGvXSco_PJMw8ao', '小笨笨', '', 'nwQmJ6d8', '1', '1554291095', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbXVaR0xOTXpHdlhTY29fUEpNdzhhbyI7czo4OiJuaWNrbmFtZSI7czo5OiLlsI/nrKjnrKgiO3M6Mzoic2V4IjtpOjA7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czowOiIiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vOFBUamljdG15VGxQTGxab1RIY1lKdkttd2EzT3NZS0V1VnZRcnlERnRIMHpoUDlkVGcwMEpPdWlhVFhTRTBtaWFERUprZU9mbkZTVjVCdzJpYTlLSWljN3ZnTzZZTTVGUjJKU2MvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTU0MjkxMDk2O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuLzhQVGppY3RteVRsUExsWm9USGNZSnZLbXdhM09zWUtFdVZ2UXJ5REZ0SDB6aFA5ZFRnMDBKT3VpYVRYU0UwbWlhREVKa2VPZm5GU1Y1QncyaWE5S0lpYzd2Z082WU01RlIySlNjLzEzMiI7fQ==', '1554291095', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('17', '1', '1', '17', 'oUozg0jH6-V9WEIg4HOR903amdjA', '初夏', '', 'luAGy8Q7', '1', '1554307846', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1Vvemcwakg2LVY5V0VJZzRIT1I5MDNhbWRqQSI7czo4OiJuaWNrbmFtZSI7czo2OiLliJ3lpI8iO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czo2OiLlt7Tpu44iO3M6NzoiY291bnRyeSI7czo2OiLms5Xlm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vaWFSbHpHOHp5N0JzQTRXWHY1MkVmNk1pYklYeXU5T09pY2RWY29QSjdqVDRvWDZKRGNnckYydkRoMEo3SWw4RGRpY1ZJQXpjSWdnVmxEY25mQmsyaWNMODRxUS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTQzMDc4NDg7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTI2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vaWFSbHpHOHp5N0JzQTRXWHY1MkVmNk1pYklYeXU5T09pY2RWY29QSjdqVDRvWDZKRGNnckYydkRoMEo3SWw4RGRpY1ZJQXpjSWdnVmxEY25mQmsyaWNMODRxUS8xMzIiO30=', '1554307846', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('18', '1', '1', '18', 'oUozg0kJJY6x55xIW6_HJqMlsN5w', 'A迪', '', 'nyy9h772', '1', '1554880934', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1Vvemcwa0pKWTZ4NTV4SVc2X0hKcU1sc041dyI7czo4OiJuaWNrbmFtZSI7czo0OiJB6L+qIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czoxMjoi5Lmd6b6Z5Z+O5Yy6IjtzOjg6InByb3ZpbmNlIjtzOjY6Iummmea4ryI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMzQ6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9USUxuVDNBSWdxSjI1bTBERGdZY0FMMnFTRGljU2FJaWNzNXJHbEhmZExISEdRbGFicWU1Z0M4SG1DanpkaFF2SGlieW9zcDY0bVM4enV2M0pDdDFLTlcwQ1cySDBuUDJTaHUvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTU0ODgwOTM2O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzNDoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1RJTG5UM0FJZ3FKMjVtMEREZ1ljQUwycVNEaWNTYUlpY3M1ckdsSGZkTEhIR1FsYWJxZTVnQzhIbUNqemRoUXZIaWJ5b3NwNjRtUzh6dXYzSkN0MUtOVzBDVzJIMG5QMlNodS8xMzIiO30=', '1554880934', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('19', '1', '1', '19', 'oUozg0lpeLJY33ofVq65An6s5xco', 'Mr.李Angeja', '', 'ejErb222', '1', '1554903445', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbHBlTEpZMzNvZlZxNjVBbjZzNXhjbyI7czo4OiJuaWNrbmFtZSI7czoxNToiTXIuICAg5p2OQW5nZWphIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLpu4TmtaYiO3M6ODoicHJvdmluY2UiO3M6Njoi5LiK5rW3IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNDoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1RJTG5UM0FJZ3FKMjVtMEREZ1ljQUIydFBINmVsUzc2dXVGUmZBM1RkbklhRFR6ekxtUkNMZU1Ya013NElkaWMweGdLOGtBRmlhNjZaZ25CY2VhNTVwdW5aeVRKYkk4dGlhdS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTQ5MDM0NDU7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTM0OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vVElMblQzQUlncUoyNW0wRERnWWNBQjJ0UEg2ZWxTNzZ1dUZSZkEzVGRuSWFEVHp6TG1SQ0xlTVhrTXc0SWRpYzB4Z0s4a0FGaWE2NlpnbkJjZWE1NXB1blp5VEpiSTh0aWF1LzEzMiI7fQ==', '1554903453', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('20', '1', '1', '20', 'oUozg0uniAbH1Ml6eOMz1lqM5eds', 'luckydog', '', 'wWs2A2aB', '1', '1554903465', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwdW5pQWJIMU1sNmVPTXoxbHFNNWVkcyI7czo4OiJuaWNrbmFtZSI7czoxMDoibHVja3kgIGRvZyI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5Y6m6ZeoIjtzOjg6InByb3ZpbmNlIjtzOjY6Iuemj+W7uiI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxNDA6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9rR3plcXlHaWIzUklHRVZLbm1pYTJsOXk1aWF1b1hObmRXQ2FoSE1pYXJpYzRZS3FPa1dpYkhHY2lhV0VhVGhPZTlwUDJWVHR2ZnVKU1NuVTFuQmp4Z0xud2dVaWJlQTRpY2JkT1p3TnQvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTU0OTAzNDY1O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjE0MDoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSSUdFVktubWlhMmw5eTVpYXVvWE5uZFdDYWhITWlhcmljNFlLcU9rV2liSEdjaWFXRWFUaE9lOXBQMlZUdHZmdUpTU25VMW5CanhnTG53Z1VpYmVBNGljYmRPWndOdC8xMzIiO30=', '1554903462', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('21', '1', '1', '21', 'oUozg0giyBFVm-yFJ-RyDfXkvTPg', '无痛而寡', '', 'RsGYP0gN', '1', '1554926510', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwZ2l5QkZWbS15RkotUnlEZlhrdlRQZyI7czo4OiJuaWNrbmFtZSI7czoxMjoi5peg55eb6ICM5a+hIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLpu4TlsbEiO3M6ODoicHJvdmluY2UiO3M6Njoi5a6J5b69IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMzoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1RJTG5UM0FJZ3FKMjVtMEREZ1ljQUdNcG9NdU5aUTdWVlNoVjZsN1dSRGZuNUcwWjVXbjdqeVRraWJkRmxZbjR0T3A3MGNCcmljMVlOMDhENHhxVk1NTzZIemY3OVBRZ2NDLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NDkyNjUxMDtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzM6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9USUxuVDNBSWdxSjI1bTBERGdZY0FHTXBvTXVOWlE3VlZTaFY2bDdXUkRmbjVHMFo1V243anlUa2liZEZsWW40dE9wNzBjQnJpYzFZTjA4RDR4cVZNTU82SHpmNzlQUWdjQy8xMzIiO30=', '1554926510', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('22', '1', '1', '22', 'oUozg0jdjKy0ga-HfqPszn9xsrlQ', '月子酱', '', 'NAIMAylM', '1', '1554944876', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwamRqS3kwZ2EtSGZxUHN6bjl4c3JsUSI7czo4OiJuaWNrbmFtZSI7czo5OiLmnIjlrZDphbEiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IumVv+WugSI7czo4OiJwcm92aW5jZSI7czo2OiLkuIrmtbciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTQ2OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vUTNhdUhnend6TTRaRTZCNkhVbnA1azBBcVJpY1lxSzBld2liMWJtWlFaZHlmQXR3eHZXdnZ3VXFpYUtRMllNVVpIbm93dmVFQmFYd0pEMTFYVmliMFdqenk0bUIyM1ZTTmg2UUd1aklUY1dMVjB3LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NDk0NDg3NjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxNDY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9RM2F1SGd6d3pNNFpFNkI2SFVucDVrMEFxUmljWXFLMGV3aWIxYm1aUVpkeWZBdHd4dld2dndVcWlhS1EyWU1VWkhub3d2ZUVCYVh3SkQxMVhWaWIwV2p6eTRtQjIzVlNOaDZRR3VqSVRjV0xWMHcvMTMyIjt9', '1554944876', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('23', '1', '1', '23', 'oUozg0hpvXrXuN1AFFhhOJXzW4fk', '不一样的烟火', '', 'uAQl3LFf', '1', '1556121656', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwaHB2WHJYdU4xQUZGaGhPSlh6VzRmayI7czo4OiJuaWNrbmFtZSI7czoyMjoi5LiN5LiA5qC355qE54Of54Gr8J+OhiI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5bi45beeIjtzOjg6InByb3ZpbmNlIjtzOjY6Iuaxn+iLjyI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMjQ6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9hak5WZHFIWkxMQW1pYXdVNDVwUng2b05xM1hEZlNqS0lac2liaWF1d05rZE5YcDVNanFqbWE0d3hsY3U2eUVTemZwc2U2b01WNDQzSzRUWnpJOGdJN0daZy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTYxMjE2NTA7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTI0OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vYWpOVmRxSFpMTEFtaWF3VTQ1cFJ4Nm9OcTNYRGZTaktJWnNpYmlhdXdOa2ROWHA1TWpxam1hNHd4bGN1NnlFU3pmcHNlNm9NVjQ0M0s0VFp6SThnSTdHWmcvMTMyIjt9', '1556121656', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('24', '1', '1', '24', 'oUozg0sBIsNRItdwScu1LgeXxNZg', 'k', '', 'nTi7GSS3', '1', '1556858232', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1Vvemcwc0JJc05SSXRkd1NjdTFMZ2VYeE5aZyI7czo4OiJuaWNrbmFtZSI7czoxOiJrIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo5OiLloqjlsJTmnKwiO3M6ODoicHJvdmluY2UiO3M6MTI6Iue7tOWkmuWIqeS6miI7czo3OiJjb3VudHJ5IjtzOjEyOiLmvrPlpKfliKnkupoiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM3OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JMQWxrYmJpYm16dU9HY2xBaWNRdTMxNkZyeHFkOWt5QWljSnI5Y1RsSFd5MzNEN3FhbXJwRFg3VmxVQWljZWJCUWljR1J2SnM5S25URUFadEtZbTVMakNqWkdFLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1Njg1ODIzMjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzc6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9rR3plcXlHaWIzUkxBbGtiYmlibXp1T0djbEFpY1F1MzE2RnJ4cWQ5a3lBaWNKcjljVGxIV3kzM0Q3cWFtcnBEWDdWbFVBaWNlYkJRaWNHUnZKczlLblRFQVp0S1ltNUxqQ2paR0UvMTMyIjt9', '1556858234', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('25', '1', '1', '25', 'oUozg0obtLh2h-w8noEIfiq9dXfs', 'Rong', '', 'uoCoC1Vx', '1', '1557325075', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1Vvemcwb2J0TGgyaC13OG5vRUlmaXE5ZFhmcyI7czo4OiJuaWNrbmFtZSI7czo0OiJSb25nIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLkv6HpmLMiO3M6ODoicHJvdmluY2UiO3M6Njoi5rKz5Y2XIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSTEFsa2JiaWJtenVPTkluTk1HcmxkdnFscHFWcXc0VjVnQUViZUJxRjNHaWJveHpHbzA2ZFpCYXF3TEpGOENjcWUwSWljcnJSRWxkaWNvTFBtS3BTVWxIV0xHLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NzMyNTA4OTtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9rR3plcXlHaWIzUkxBbGtiYmlibXp1T05Jbk5NR3JsZHZxbHBxVnF3NFY1Z0FFYmVCcUYzR2lib3h6R28wNmRaQmFxd0xKRjhDY3FlMElpY3JyUkVsZGljb0xQbUtwU1VsSFdMRy8xMzIiO30=', '1557325075', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('26', '1', '1', '26', 'oUozg0pUnypDz4bsX3N5JwU0zh4A', '陈', '', 'T3Dtk2Wt', '1', '1557329235', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwcFVueXBEejRic1gzTjVKd1Uwemg0QSI7czo4OiJuaWNrbmFtZSI7czozOiLpmYgiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuatpuaxiSI7czo4OiJwcm92aW5jZSI7czo2OiLmuZbljJciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTM5OiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4va0d6ZXF5R2liM1JMQWxrYmJpYm16dU9OZTlYcWI4dWJaZmlhNFFvVm5QTWhNaWFzMjFVR25saWJpYlB4YVpPcVNtMjc5SWliOHJCYkFFaE80eXJ0NklPVVRmVWNvbkYyaWF4NzRoakovMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTU3MzI5MjQ5O3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzOToiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSTEFsa2JiaWJtenVPTmU5WHFiOHViWmZpYTRRb1ZuUE1oTWlhczIxVUdubGliaWJQeGFaT3FTbTI3OUlpYjhyQmJBRWhPNHlydDZJT1VUZlVjb25GMmlheDc0aGpKLzEzMiI7fQ==', '1557329235', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('27', '1', '1', '27', 'oUozg0n4h9bf4OdTGCmsxfUfDevs', 'SOQl复合能量', '', 'MN8tm6Rx', '0', '1557333431', '1558234942', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwbjRoOWJmNE9kVEdDbXN4ZlVmRGV2cyI7czo4OiJuaWNrbmFtZSI7czoxNjoiU09RbOWkjeWQiOiDvemHjyI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5Y2X5bK4IjtzOjg6InByb3ZpbmNlIjtzOjY6IumHjeW6hiI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMzM6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9WTzI4eWNTWUZZU3FMS1UwTjNhZE9hOTZPanRaNGFOYXVOaDlJWmVEMkpvaWNrUVNVMEV4SjAxNnEyenptclptd29hTWJIUlkzNkFtc2Vnb3pwcHFmOGlienBxUjFWYnFObC8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1NTczMzM0NDU7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMzOiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vVk8yOHljU1lGWVNxTEtVME4zYWRPYTk2T2p0WjRhTmF1Tmg5SVplRDJKb2lja1FTVTBFeEowMTZxMnp6bXJabXdvYU1iSFJZMzZBbXNlZ296cHBxZjhpYnpwcVIxVmJxTmwvMTMyIjt9', '1557333431', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('28', '1', '1', '28', 'oUozg0hZ0EowmL72nvYJ1BLaVRaU', '原味少女', '', 'm908pO70', '1', '1557704221', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwaFowRW93bUw3Mm52WUoxQkxhVlJhVSI7czo4OiJuaWNrbmFtZSI7czoxMjoi5Y6f5ZGz5bCR5aWzIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL2tHemVxeUdpYjNSTDVzV2tRNmhUdHhpYmozT2Rrb3RVcncwU3RhMU5aczBpYTRRaWEwMkhpYUZBU3BJQzU3N21NVFFWTGFwZkM4ZlY1clVFNEhEMjBid2tBVXhwVFdrQksxS091LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTU1NzcwNDIwMztzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9rR3plcXlHaWIzUkw1c1drUTZoVHR4aWJqM09ka290VXJ3MFN0YTFOWnMwaWE0UWlhMDJIaWFGQVNwSUM1NzdtTVRRVkxhcGZDOGZWNXJVRTRIRDIwYndrQVV4cFRXa0JLMUtPdS8xMzIiO30=', '1557704221', '');
INSERT INTO `ims_mc_mapping_fans` VALUES ('29', '1', '1', '29', 'oUozg0qV2OiY7uJmPzQ67SuWO3Ow', '扬中相亲网', '', 'c6MccIo3', '1', '1532791159', '0', 'YToxMzp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1VvemcwcVYyT2lZN3VKbVB6UTY3U3VXTzNPdyI7czo4OiJuaWNrbmFtZSI7czoxNToi5oms5Lit55u45Lqy572RIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLplYfmsZ8iO3M6ODoicHJvdmluY2UiO3M6Njoi5rGf6IuPIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzNjoiaHR0cDovL3RoaXJkd3gucWxvZ28uY24vbW1vcGVuL1RJTG5UM0FJZ3FKMjVtMEREZ1ljQUtQMW05YUFXMkpTNGZzTTFYb0lVTGdGWVBQaWFpYXlsMjRQS0JsRFdvRjJqcTRtdW5vclFiWFVCVDFTbVJDSWljcGRYQjNpYVFHd2ljRlBkLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUzMjc5MTE1OTtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzY6Imh0dHA6Ly90aGlyZHd4LnFsb2dvLmNuL21tb3Blbi9USUxuVDNBSWdxSjI1bTBERGdZY0FLUDFtOWFBVzJKUzRmc00xWG9JVUxnRllQUGlhaWF5bDI0UEtCbERXb0YyanE0bXVub3JRYlhVQlQxU21SQ0lpY3BkWEIzaWFRR3dpY0ZQZC8xMzIiO30=', '1558577641', '');

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------
INSERT INTO `ims_mc_members` VALUES ('1', '1', '', '2f2948d4224cd559d880ecb6c59aff4e@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'S1GXzIwc', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553501730', '', 'App小程序网站开发', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlMrSiaf1GarnhKIWrniakfJMyMZ54PicVL3qLdcsicmB5iaNvXZT4klss8VmiaFUKOsZWkZqUr8hC0ebD8W2XlKNCjs5J/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '四川省', '成都市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('2', '1', '', '3af0cc49a4b03e26540ad12c5490e799@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'hZXf5B3g', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553503367', '', '', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuODZboVaqic8E3wujX626rDs0iav1THrBvIawZh71Vrv5yUyoOt3yVTCUWicmdibEYEpdG0TpRy0RMrmw/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '南京市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('3', '1', '', '613fc73de6e1093fc71744a8707955d2@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'uzHA2Ap4', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553600802', '', 'A栩哥', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4L44VQuXMrrZSicZxW81kLXZrUEnqf6ibhS5DF8QKtWGYkoCHUT46pCW1m3pOaqL5ZvvtWrxhicNo0anzwqK95JyobvFkpMfQRKM/132', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('4', '1', '', 'a935b8373c76b10aef01de9370838a02@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'SconRYy9', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553608213', '', 'K哥', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKKsQCD9qQ9yQY0GR8ZSzXCyOPk3CUCficjRdiahWeDJ95PRVOLXEF5dfbHhUueXzdepB7sB6PfkEcTVkvALZ2N0N/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '上海省', '闵行市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('5', '1', '', '983bdab53ddddd472709295a2ca7fb14@we7.cc', 'f34bc4edc1ece05abdc367c45b1c7df0', 'XuTti95l', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553677222', '', '生如夏花', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW3BXGAF9H2Dqx2gxq33NJD6jQgZPsO24GztqZpHJEaejV7nmQwKickK34OQebFIC1xpzLsAvs3E4C/132', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('6', '1', '', 'c20727c4d292f3be1c90c430c4aad035@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'xQNpo003', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553758658', '', '海阔天空', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlM8Hk65uWbzTFA8ydicSCCLUBYaZHmiaukb9Dd9OCHsYA90HhZzZwicMTHcMFoYn063reoh9qmmk0VYmyBicT1f1h1G/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '阿拉伯联合酋长国', '阿布扎比省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('7', '1', '', 'bda77d2b588a48a2f151472a57769514@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'UFJAlf7v', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1553783888', '', 'A栩哥', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW1ibuJw2C9zEs4X8RGL4nJtJQKaJoysIX3StdJed971QdSh45yibwNbxtvczQdyicUiaDP5p6fXq136b/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '南京市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('8', '1', '', '2b337532f19854dd7ce7fd1296371fd2@we7.cc', '3da9c1a21c997ce2942a4b96ae2d00e5', 'hSgO3cSZ', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554015417', '', '艾丽丝', 'http://thirdwx.qlogo.cn/mmopen/VO28ycSYFYRaWophZhMFREzibzAQctnlz3WEwGsE4VqNibHOuD516PMMhWVBdQI4yxHptJ4MmjB06fC1peedZMwzDia1Zq7D9fX/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('9', '1', '', '5c877b35193a4f77a000a543acdbbef4@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'fyTk5sfK', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554185312', '', '匡', 'http://thirdwx.qlogo.cn/mmopen/D7B0GmFiayibmL7aUaWiagabn6MWFiaoNGzL9w6QNcjBqCU2z49Qn5FZtqtAUsE3huHG2bHqofYhpgGicG8wzwdCfa2mQYZ4XKa5a/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('10', '1', '', 'bd0167d3d906934f84faf6600ad809c5@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'gIS97U0s', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554200382', '', '天边的云', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKeTvqghLxoGRAlppWV6cxOkaYRcD9TqNS8IibPicyRXDd3v2E2qhIujEq8w4KwyO9nZF41VKZwB5gMwu6FSB5k2q/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '泰州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('11', '1', '', '69f06be065ac0e4f75eb8f81f3c3367e@we7.cc', '2fe6a435040e399b7d5c41cda1c4c884', 'JwZ5K8iZ', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554244537', '', '宝地~耐用滑动门', 'http://thirdwx.qlogo.cn/mmopen/D7B0GmFiayibmL7aUaWiagaboANnRicHtQcHxDxggoV6QJxOXKyENYUKYE1De3p9Y7yNsIKedBUwLx0gJWew64uicnw122LSQ3IQq/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '安徽省', '合肥市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('12', '1', '', '5b533b21095b5b9efb08e72371d0fb7c@we7.cc', 'ddfb0f5893b6bc517f8515af3cec4ab5', 'xHKfKkKm', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554247531', '', 'Sunny', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKvibwQDp3pNXEvQibjY4OmWA7a4k4wEvWNSwcacF8G1eBBso8okwo6XKLUbdTjv2lLx2onAuic7NwIw/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '南通市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('13', '1', '', 'a87369ea43b34c1b08aa1260e9c01ce3@we7.cc', 'a173de3cb8649d5f6201432ae29f0a24', 'm57bAEul', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554249836', '', '安之', 'http://thirdwx.qlogo.cn/mmopen/uJX0EDf9pUQwzFt7TLI9KXAwypYWVfuEq9qDicBQFY8X4Z1xls7ktFia0nYVxfjBWEXxazicUqkicZB4NLTgHbAkVwwBDmFXLwSQ/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '南通市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('14', '1', '', '839bf1be8109369929b88fd5296a4e5f@we7.cc', '6428c92d4fc952cd9011c83ebc6301cb', 'IDZg0qeP', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554259908', '', '奶油小生', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlOChJOjqnbcW6aGIgS0uZWl3Jicqc2zMoSUadvmpSMYnAgYCAfiahlvyVAXKWfszdrqt42kdFfic8rLExgVJoDv7iaP/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '上海省', '闵行市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('15', '1', '', 'ee7ded4d2e9be2c0e91335914a599741@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'o3O7ICk4', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554275215', '', '欧克', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RKgVEEJCL69ia9Aqic2ZtXiaiav2RDicXaJpFcbRXDUyqqh30NauVUS9yposhZkUvdv1Fmuz8CHgTfSVdFItsaKUYcgD/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '云南省', '文山市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('16', '1', '', '0afe1a0800e944280d24d42c33bbaf98@we7.cc', 'bc15cbbb8bf7ebaa7b8411c3b44bc1e3', 'sd3tj23q', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554291095', '', '小笨笨', 'http://thirdwx.qlogo.cn/mmopen/8PTjictmyTlPLlZoTHcYJvKmwa3OsYKEuVvQryDFtH0zhP9dTg00JOuiaTXSE0miaDEJkeOfnFSV5Bw2ia9KIic7vgO6YM5FR2JSc/132', '', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('17', '1', '', '7409b2a0b28b48062025a97275a42dc3@we7.cc', '3c2f339b61f8babcf9ab4f9beaedfac4', 'B5V3QZcI', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554307846', '', '初夏', 'http://thirdwx.qlogo.cn/mmopen/iaRlzG8zy7BsA4WXv52Ef6MibIXyu9OOicdVcoPJ7jT4oX6JDcgrF2vDh0J7Il8DdicVIAzcIggVlDcnfBk2icL84qQ/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '法国', '巴黎省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('18', '1', '', '03c7ff944648b45ed9dc52e75c99c572@we7.cc', '1e2d6e9dc238061a3afec07bd36119e7', 'L4FSFsBH', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554880934', '', 'A迪', 'http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAL2qSDicSaIics5rGlHfdLHHGQlabqe5gC8HmCjzdhQvHibyosp64mS8zuv3JCt1KNW0CW2H0nP2Shu/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '香港省', '九龙城区市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('19', '1', '', '298147bcc62b51ad454cf558c443edbf@we7.cc', '42016e2b59c2e714268ddee6a32f5f57', 'ZT8BZdBm', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554903458', '', 'Mr.李Angeja', 'http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAB2tPH6elS76uuFRfA3TdnIaDTzzLmRCLeMXkMw4Idic0xgK8kAFia66ZgnBcea55punZyTJbI8tiau/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '上海省', '黄浦市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('20', '1', '', '8f447bb4d369bebc45fd930d56e7e21b@we7.cc', '92763ec2543e59822e1dab3fd5ccf080', 'V3KyzsBZ', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554903466', '', 'luckydog', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RIGEVKnmia2l9y5iauoXNndWCahHMiaric4YKqOkWibHGciaWEaThOe9pP2VTtvfuJSSnU1nBjxgLnwgUibeA4icbdOZwNt/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('21', '1', '', '73dfd72c295d0693c4c695e47b2c57a8@we7.cc', '5bd25ce10bc63309bbb36dfe77b872f3', 'RwumzQ3f', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554926510', '', '无痛而寡', 'http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAGMpoMuNZQ7VVShV6l7WRDfn5G0Z5Wn7jyTkibdFlYn4tOp70cBric1YN08D4xqVMMO6Hzf79PQgcC/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '安徽省', '黄山市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('22', '1', '', '3ff3d515ab6d8948e973cd5f281c8f66@we7.cc', '40cc12ebc1b5500e3b1be090c47bb56b', 'LJ29uNF6', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1554944876', '', '月子酱', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4ZE6B6HUnp5k0AqRicYqK0ewib1bmZQZdyfAtwxvWvvwUqiaKQ2YMUZHnowveEBaXwJD11XVib0Wjzy4mB23VSNh6QGujITcWLV0w/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '上海省', '长宁市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('23', '1', '', '20b9d3f7e1e7754c5553fd18a6cd2b61@we7.cc', '40e5bb2a695528b2358625835172b9aa', 'yQS2b1Aa', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1556121656', '', '不一样的烟火', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAmiawU45pRx6oNq3XDfSjKIZsibiauwNkdNXp5Mjqjma4wxlcu6yESzfpse6oMV443K4TZzI8gI7GZg/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '常州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('24', '1', '', '0469590113e9a5e2b06dbc54b3da7b32@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'Ogu5cfwc', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1556858234', '', 'k', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuOGclAicQu316Frxqd9kyAicJr9cTlHWy33D7qamrpDX7VlUAicebBQicGRvJs9KnTEAZtKYm5LjCjZGE/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '澳大利亚', '维多利亚省', '墨尔本市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('25', '1', '', 'c686801b069c7b905daa1919a44d1910@we7.cc', '46ff3bb4df50bf97c39e7193afbd4ece', 'fZCiBigD', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1557325075', '', 'Rong', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuONInNMGrldvqlpqVqw4V5gAEbeBqF3GiboxzGo06dZBaqwLJF8Ccqe0IicrrREldicoLPmKpSUlHWLG/132', '', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '河南省', '信阳市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('26', '1', '', '46d5d5d325d65d39ecd4af0f5f69630a@we7.cc', '821e531f0ae280b2c29568d7b31aad85', 'U00sD5O5', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1557329235', '', '陈', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RLAlkbbibmzuONe9Xqb8ubZfia4QoVnPMhMias21UGnlibibPxaZOqSm279Iib8rBbAEhO4yrt6IOUTfUconF2iax74hjJ/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '湖北省', '武汉市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('27', '1', '', '91db23085a15eca29aa4e851abbf8c92@we7.cc', 'cd5d6d8fa1b6f2b2ac713e8cfe2062ba', 'Qy3l0LY3', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1557333431', '', 'SOQl复合能量', 'http://thirdwx.qlogo.cn/mmopen/VO28ycSYFYSqLKU0N3adOa96OjtZ4aNauNh9IZeD2JoickQSU0ExJ016q2zzmrZmwoaMbHRY36Amsegozppqf8ibzpqR1VbqNl/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '重庆省', '南岸市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('28', '1', '', 'cd7f4a35ede4b9b9feeac4c9fd7a7b53@we7.cc', '0157ee61b3c6e0efd5a54ce5e3a7956b', 'Dsr5SM89', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1557704221', '', '原味少女', 'http://thirdwx.qlogo.cn/mmopen/kGzeqyGib3RL5sWkQ6hTtxibj3OdkotUrw0Sta1NZs0ia4Qia02HiaFASpIC577mMTQVLapfC8fV5rUE4HD20bwkAUxpTWkBK1KOu/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `ims_mc_members` VALUES ('29', '1', '', '5767ac2fcb18c23b96e1c8471f39c193@we7.cc', '03347649ea75a71d4feeaf038e6c8817', 'lTzJYYJK', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1558577641', '', '扬中相亲网', 'http://thirdwx.qlogo.cn/mmopen/TILnT3AIgqJ25m0DDgYcAKP1m9aAW2JS4fsM1XoIULgFYPPiaiayl24PKBlDWoF2jq4munorQbXUBT1SmRCIicpdXB3iaQGwicFPd/132', '', '0', '2', '0', '0', '0', '', '', '', '', '', '', '', '', '中国', '江苏省', '镇江市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_property
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_property
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for ims_message_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_message_notice_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('6', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('7', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('8', 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('9', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('10', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('11', 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('12', 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '1', '1', '1', '0', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('13', 'hulu_like', 'business', '相亲交友', '5.3.0', '相亲交友', '相亲交友', '乐坊科技微信号：rscmwl', 'https://shop285989266.taobao.com', '1', 'a:0:{}', 'a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}', '1', '0', '0', '0', 'N;', 'X', '1', '1', '1', '1', '1', '2', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES ('1', 'hulu_like', 'cover', '', '我的', 'my', '我的', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('2', 'hulu_like', 'cover', '', '说说', 'talk', '说说', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('3', 'hulu_like', 'cover', '', '聊天', 'chat', '聊天', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('4', 'hulu_like', 'cover', '', '活动', 'active', '活动', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('5', 'hulu_like', 'cover', '', '封面', 'fengmian', '封面', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('6', 'hulu_like', 'rule', '', '规则', 'guize', '规则', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('7', 'hulu_like', 'menu', '', '操作数据库', 'dealsql', '操作数据库', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('8', 'hulu_like', 'menu', '', '喜欢', 'like', '喜欢', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('9', 'hulu_like', 'menu', '', '访客', 'viewer', '访客', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('10', 'hulu_like', 'menu', '', '推广记录', 'share', '推广记录', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('11', 'hulu_like', 'menu', '', '提现管理', 'tixian', '提现管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('12', 'hulu_like', 'menu', '', '说说管理', 'talk', '说说管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('13', 'hulu_like', 'menu', '', '说说评论管理', 'talk_pinglun', '说说评论管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('14', 'hulu_like', 'menu', '', '礼物管理', 'gift', '礼物管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('15', 'hulu_like', 'menu', '', '获赠礼物记录', 'present', '获赠礼物记录', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('16', 'hulu_like', 'menu', '', '聊天权限', 'liaodou', '聊天权限', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('17', 'hulu_like', 'menu', '', '模板消息', 'muban', '模板消息', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('18', 'hulu_like', 'menu', '', '资金明细', 'money', '资金明细', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('19', 'hulu_like', 'menu', '', '充值记录', 'chongzhi', '充值记录', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('20', 'hulu_like', 'menu', '', '活动报名', 'join', '活动报名', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('21', 'hulu_like', 'menu', '', '聊天记录', 'chat', '聊天记录', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('22', 'hulu_like', 'menu', '', '活动管理', 'active', '活动管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('23', 'hulu_like', 'menu', '', '模拟会员', 'moni', '模拟', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('24', 'hulu_like', 'menu', '', '广告管理', 'ads', '广告管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('25', 'hulu_like', 'menu', '', '系统收支', 'system', '系统收支', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('26', 'hulu_like', 'menu', '', '订单管理', 'order', '订单管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('27', 'hulu_like', 'menu', '', '查看联系方式', 'contact', '查看联系方式', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('28', 'hulu_like', 'menu', '', '会员管理', 'user', '会员管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('29', 'hulu_like', 'menu', '', '照片管理', 'picture', '照片管理', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('30', 'hulu_like', 'menu', '', '网站设置', 'make', '网站设置', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('31', 'hulu_like', 'menu', '', '聊天套餐', 'taocan', '聊天套餐', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('32', 'hulu_like', 'menu', '', '自定义菜单', 'menu', '', '0', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('33', 'hulu_like', 'home', '', '首页', 'shouye', '首页', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('34', 'hulu_like', 'profile', '', '个人', 'geren', '个人', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('35', 'hulu_like', 'shortcut', '', '快捷', 'kuaijie', '快捷', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('36', 'hulu_like', 'function', '', '独立', 'duli', '独立', '1', '', 'fa fa-puzzle-piece', '0');
INSERT INTO `ims_modules_bindings` VALUES ('37', 'hulu_like', 'menu', '', '视频管理', 'picture_video', '视频管理', '0', '', 'fa fa-puzzle-piece', '0');

-- ----------------------------
-- Table structure for ims_modules_cloud
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_cloud`;
CREATE TABLE `ims_modules_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) NOT NULL,
  `main_module_logo` varchar(100) NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `lastupdatetime` (`lastupdatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_cloud
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_ignore
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_ignore`;
CREATE TABLE `ims_modules_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_ignore
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_rank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `modulename` (`modulename`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_phoneapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_phoneapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('8', '1', '微擎团队入口设置', 'cover', '0', '1', '', '0');
INSERT INTO `ims_rule` VALUES ('9', '1', '', 'reply', '0', '1', 'basic,', '0');
INSERT INTO `ims_rule` VALUES ('10', '1', '', 'reply', '0', '1', 'basic,', '0');

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('15', '9', '1', 'reply', '你好欢迎来到乐享定制', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('14', '10', '1', 'reply', '你好  有人吗  客服  会员 交友', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微擎团队', '1', '', '1', '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_create_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_create_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group` int(10) NOT NULL,
  `user_group_price` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', '0');

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES ('1', '1', '0', '0', '65', '20190324');
INSERT INTO `ims_stat_fans` VALUES ('2', '1', '1', '0', '65', '20190323');
INSERT INTO `ims_stat_fans` VALUES ('3', '1', '0', '0', '64', '20190322');
INSERT INTO `ims_stat_fans` VALUES ('4', '1', '0', '0', '64', '20190321');
INSERT INTO `ims_stat_fans` VALUES ('5', '1', '0', '0', '64', '20190320');
INSERT INTO `ims_stat_fans` VALUES ('6', '1', '0', '0', '64', '20190319');
INSERT INTO `ims_stat_fans` VALUES ('7', '1', '0', '0', '0', '20190318');
INSERT INTO `ims_stat_fans` VALUES ('8', '1', '0', '0', '65', '20190325');
INSERT INTO `ims_stat_fans` VALUES ('9', '1', '0', '0', '65', '20190326');
INSERT INTO `ims_stat_fans` VALUES ('10', '1', '1', '0', '66', '20190327');
INSERT INTO `ims_stat_fans` VALUES ('11', '1', '0', '0', '66', '20190328');
INSERT INTO `ims_stat_fans` VALUES ('12', '1', '0', '0', '66', '20190330');
INSERT INTO `ims_stat_fans` VALUES ('13', '1', '0', '0', '66', '20190329');
INSERT INTO `ims_stat_fans` VALUES ('14', '1', '1', '0', '67', '20190331');
INSERT INTO `ims_stat_fans` VALUES ('15', '1', '0', '2', '65', '20190402');
INSERT INTO `ims_stat_fans` VALUES ('16', '1', '0', '0', '67', '20190401');
INSERT INTO `ims_stat_fans` VALUES ('17', '1', '6', '2', '69', '20190403');
INSERT INTO `ims_stat_fans` VALUES ('18', '1', '1', '2', '68', '20190404');
INSERT INTO `ims_stat_fans` VALUES ('19', '1', '0', '1', '67', '20190406');
INSERT INTO `ims_stat_fans` VALUES ('20', '1', '0', '0', '67', '20190407');
INSERT INTO `ims_stat_fans` VALUES ('21', '1', '0', '0', '68', '20190405');
INSERT INTO `ims_stat_fans` VALUES ('22', '1', '0', '0', '68', '20190405');
INSERT INTO `ims_stat_fans` VALUES ('23', '1', '0', '0', '68', '20190405');
INSERT INTO `ims_stat_fans` VALUES ('24', '1', '8', '4', '0', '20190408');
INSERT INTO `ims_stat_fans` VALUES ('25', '1', '6', '0', '0', '20190410');
INSERT INTO `ims_stat_fans` VALUES ('26', '1', '2', '0', '0', '20190411');
INSERT INTO `ims_stat_fans` VALUES ('27', '1', '0', '1', '0', '20190415');
INSERT INTO `ims_stat_fans` VALUES ('28', '1', '1', '0', '0', '20190425');
INSERT INTO `ims_stat_fans` VALUES ('29', '1', '1', '0', '73', '20190503');
INSERT INTO `ims_stat_fans` VALUES ('30', '1', '0', '0', '73', '20190505');
INSERT INTO `ims_stat_fans` VALUES ('31', '1', '0', '0', '73', '20190504');
INSERT INTO `ims_stat_fans` VALUES ('32', '1', '0', '0', '72', '20190502');
INSERT INTO `ims_stat_fans` VALUES ('33', '1', '0', '0', '72', '20190501');
INSERT INTO `ims_stat_fans` VALUES ('34', '1', '0', '0', '72', '20190430');
INSERT INTO `ims_stat_fans` VALUES ('35', '1', '0', '0', '72', '20190429');
INSERT INTO `ims_stat_fans` VALUES ('36', '1', '0', '0', '73', '20190507');
INSERT INTO `ims_stat_fans` VALUES ('37', '1', '0', '0', '73', '20190506');
INSERT INTO `ims_stat_fans` VALUES ('38', '1', '2', '1', '0', '20190508');
INSERT INTO `ims_stat_fans` VALUES ('39', '1', '1', '0', '0', '20190509');
INSERT INTO `ims_stat_fans` VALUES ('40', '1', '1', '0', '0', '20190513');
INSERT INTO `ims_stat_fans` VALUES ('41', '1', '0', '2', '74', '20190519');
INSERT INTO `ims_stat_fans` VALUES ('42', '1', '0', '0', '74', '20190522');
INSERT INTO `ims_stat_fans` VALUES ('43', '1', '0', '0', '74', '20190521');
INSERT INTO `ims_stat_fans` VALUES ('44', '1', '0', '0', '74', '20190520');
INSERT INTO `ims_stat_fans` VALUES ('45', '1', '0', '0', '76', '20190518');
INSERT INTO `ims_stat_fans` VALUES ('46', '1', '0', '0', '76', '20190517');
INSERT INTO `ims_stat_fans` VALUES ('47', '1', '0', '0', '76', '20190516');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------
INSERT INTO `ims_stat_visit` VALUES ('2', '0', '', '19', '20190325', 'web');
INSERT INTO `ims_stat_visit` VALUES ('3', '1', 'we7_account', '43', '20190325', 'web');
INSERT INTO `ims_stat_visit` VALUES ('4', '1', 'we7_api', '12', '20190325', 'web');
INSERT INTO `ims_stat_visit` VALUES ('5', '1', 'hulu_like', '26', '20190325', 'app');
INSERT INTO `ims_stat_visit` VALUES ('6', '1', 'we7_api', '54', '20190326', 'web');
INSERT INTO `ims_stat_visit` VALUES ('7', '1', 'hulu_like', '144', '20190326', 'app');
INSERT INTO `ims_stat_visit` VALUES ('8', '1', 'we7_account', '181', '20190326', 'web');
INSERT INTO `ims_stat_visit` VALUES ('9', '1', 'we7_account', '290', '20190327', 'web');
INSERT INTO `ims_stat_visit` VALUES ('10', '1', 'hulu_like', '225', '20190327', 'app');
INSERT INTO `ims_stat_visit` VALUES ('11', '1', 'wesite', '1', '20190327', 'app');
INSERT INTO `ims_stat_visit` VALUES ('12', '1', 'we7_api', '47', '20190327', 'web');
INSERT INTO `ims_stat_visit` VALUES ('13', '1', 'we7_api', '25', '20190328', 'web');
INSERT INTO `ims_stat_visit` VALUES ('14', '1', 'hulu_like', '106', '20190328', 'app');
INSERT INTO `ims_stat_visit` VALUES ('15', '1', 'we7_account', '29', '20190328', 'web');
INSERT INTO `ims_stat_visit` VALUES ('16', '1', 'wesite', '8', '20190328', 'app');
INSERT INTO `ims_stat_visit` VALUES ('17', '1', 'we7_api', '31', '20190329', 'web');
INSERT INTO `ims_stat_visit` VALUES ('18', '1', 'hulu_like', '159', '20190329', 'app');
INSERT INTO `ims_stat_visit` VALUES ('19', '1', 'we7_account', '77', '20190329', 'web');
INSERT INTO `ims_stat_visit` VALUES ('20', '1', 'wesite', '2', '20190329', 'app');
INSERT INTO `ims_stat_visit` VALUES ('21', '1', 'hulu_like', '373', '20190330', 'app');
INSERT INTO `ims_stat_visit` VALUES ('22', '1', 'we7_api', '52', '20190330', 'web');
INSERT INTO `ims_stat_visit` VALUES ('23', '1', 'we7_account', '17', '20190330', 'web');
INSERT INTO `ims_stat_visit` VALUES ('24', '1', 'wesite', '4', '20190330', 'app');
INSERT INTO `ims_stat_visit` VALUES ('25', '1', 'hulu_like', '525', '20190331', 'app');
INSERT INTO `ims_stat_visit` VALUES ('26', '1', 'we7_api', '46', '20190331', 'web');
INSERT INTO `ims_stat_visit` VALUES ('27', '1', 'we7_account', '96', '20190331', 'web');
INSERT INTO `ims_stat_visit` VALUES ('28', '1', 'wesite', '18', '20190331', 'app');
INSERT INTO `ims_stat_visit` VALUES ('29', '1', 'we7_account', '51', '20190401', 'web');
INSERT INTO `ims_stat_visit` VALUES ('30', '1', 'hulu_like', '174', '20190401', 'app');
INSERT INTO `ims_stat_visit` VALUES ('31', '1', 'wesite', '9', '20190401', 'app');
INSERT INTO `ims_stat_visit` VALUES ('32', '1', 'we7_api', '12', '20190401', 'web');
INSERT INTO `ims_stat_visit` VALUES ('33', '1', 'hulu_like', '467', '20190402', 'app');
INSERT INTO `ims_stat_visit` VALUES ('34', '1', 'wesite', '20', '20190402', 'app');
INSERT INTO `ims_stat_visit` VALUES ('35', '1', 'we7_api', '62', '20190402', 'web');
INSERT INTO `ims_stat_visit` VALUES ('36', '1', 'we7_account', '67', '20190402', 'web');
INSERT INTO `ims_stat_visit` VALUES ('37', '1', 'hulu_like', '354', '20190403', 'app');
INSERT INTO `ims_stat_visit` VALUES ('38', '1', 'wesite', '15', '20190403', 'app');
INSERT INTO `ims_stat_visit` VALUES ('39', '1', 'we7_account', '96', '20190403', 'web');
INSERT INTO `ims_stat_visit` VALUES ('40', '1', 'we7_api', '28', '20190403', 'web');
INSERT INTO `ims_stat_visit` VALUES ('41', '1', 'hulu_like', '192', '20190404', 'app');
INSERT INTO `ims_stat_visit` VALUES ('42', '1', 'we7_api', '10', '20190404', 'web');
INSERT INTO `ims_stat_visit` VALUES ('43', '1', 'wesite', '31', '20190404', 'app');
INSERT INTO `ims_stat_visit` VALUES ('44', '1', 'we7_account', '73', '20190404', 'web');
INSERT INTO `ims_stat_visit` VALUES ('45', '1', 'hulu_like', '17', '20190405', 'app');
INSERT INTO `ims_stat_visit` VALUES ('46', '1', 'wesite', '1', '20190405', 'app');
INSERT INTO `ims_stat_visit` VALUES ('47', '1', '', '13', '20190405', 'web');
INSERT INTO `ims_stat_visit` VALUES ('48', '1', 'we7_account', '11', '20190405', 'web');
INSERT INTO `ims_stat_visit` VALUES ('49', '1', 'we7_api', '4', '20190405', 'web');
INSERT INTO `ims_stat_visit` VALUES ('50', '1', 'hulu_like', '101', '20190406', 'app');
INSERT INTO `ims_stat_visit` VALUES ('51', '1', 'we7_api', '5', '20190406', 'web');
INSERT INTO `ims_stat_visit` VALUES ('52', '1', 'wesite', '2', '20190406', 'app');
INSERT INTO `ims_stat_visit` VALUES ('53', '1', 'we7_api', '3', '20190407', 'web');
INSERT INTO `ims_stat_visit` VALUES ('54', '1', 'hulu_like', '5', '20190407', 'app');
INSERT INTO `ims_stat_visit` VALUES ('55', '1', 'hulu_like', '76', '20190408', 'app');
INSERT INTO `ims_stat_visit` VALUES ('56', '1', 'we7_api', '66', '20190408', 'web');
INSERT INTO `ims_stat_visit` VALUES ('57', '1', 'wesite', '6', '20190408', 'app');
INSERT INTO `ims_stat_visit` VALUES ('58', '1', 'we7_account', '75', '20190408', 'web');
INSERT INTO `ims_stat_visit` VALUES ('59', '1', 'we7_api', '11', '20190409', 'web');
INSERT INTO `ims_stat_visit` VALUES ('60', '1', 'hulu_like', '22', '20190409', 'app');
INSERT INTO `ims_stat_visit` VALUES ('61', '1', 'wesite', '2', '20190409', 'app');
INSERT INTO `ims_stat_visit` VALUES ('62', '1', 'we7_account', '28', '20190409', 'web');
INSERT INTO `ims_stat_visit` VALUES ('63', '1', 'we7_api', '27', '20190410', 'web');
INSERT INTO `ims_stat_visit` VALUES ('64', '1', 'hulu_like', '150', '20190410', 'app');
INSERT INTO `ims_stat_visit` VALUES ('65', '1', 'wesite', '7', '20190410', 'app');
INSERT INTO `ims_stat_visit` VALUES ('66', '1', 'we7_account', '22', '20190410', 'web');
INSERT INTO `ims_stat_visit` VALUES ('67', '1', 'we7_api', '21', '20190411', 'web');
INSERT INTO `ims_stat_visit` VALUES ('68', '1', 'hulu_like', '114', '20190411', 'app');
INSERT INTO `ims_stat_visit` VALUES ('69', '1', 'wesite', '2', '20190411', 'app');
INSERT INTO `ims_stat_visit` VALUES ('70', '1', 'we7_account', '5', '20190411', 'web');
INSERT INTO `ims_stat_visit` VALUES ('71', '1', 'hulu_like', '7', '20190412', 'app');
INSERT INTO `ims_stat_visit` VALUES ('72', '1', 'we7_api', '2', '20190412', 'web');
INSERT INTO `ims_stat_visit` VALUES ('73', '1', 'hulu_like', '8', '20190413', 'app');
INSERT INTO `ims_stat_visit` VALUES ('74', '1', 'we7_api', '1', '20190413', 'web');
INSERT INTO `ims_stat_visit` VALUES ('75', '1', 'hulu_like', '2', '20190414', 'app');
INSERT INTO `ims_stat_visit` VALUES ('76', '1', 'we7_api', '2', '20190415', 'web');
INSERT INTO `ims_stat_visit` VALUES ('77', '1', 'hulu_like', '5', '20190415', 'app');
INSERT INTO `ims_stat_visit` VALUES ('78', '1', 'we7_api', '7', '20190416', 'web');
INSERT INTO `ims_stat_visit` VALUES ('79', '1', 'hulu_like', '11', '20190416', 'app');
INSERT INTO `ims_stat_visit` VALUES ('80', '1', 'wesite', '1', '20190416', 'app');
INSERT INTO `ims_stat_visit` VALUES ('81', '1', 'we7_api', '2', '20190417', 'web');
INSERT INTO `ims_stat_visit` VALUES ('82', '1', 'hulu_like', '1', '20190417', 'app');
INSERT INTO `ims_stat_visit` VALUES ('83', '1', 'we7_api', '3', '20190420', 'web');
INSERT INTO `ims_stat_visit` VALUES ('84', '1', 'hulu_like', '1', '20190420', 'app');
INSERT INTO `ims_stat_visit` VALUES ('85', '1', 'hulu_like', '1', '20190422', 'app');
INSERT INTO `ims_stat_visit` VALUES ('86', '1', 'hulu_like', '16', '20190423', 'app');
INSERT INTO `ims_stat_visit` VALUES ('87', '1', 'we7_api', '4', '20190423', 'web');
INSERT INTO `ims_stat_visit` VALUES ('88', '1', 'we7_api', '16', '20190425', 'web');
INSERT INTO `ims_stat_visit` VALUES ('89', '1', 'hulu_like', '50', '20190425', 'app');
INSERT INTO `ims_stat_visit` VALUES ('90', '1', 'wesite', '1', '20190425', 'app');
INSERT INTO `ims_stat_visit` VALUES ('91', '1', 'hulu_like', '12', '20190427', 'app');
INSERT INTO `ims_stat_visit` VALUES ('92', '1', 'we7_api', '2', '20190427', 'web');
INSERT INTO `ims_stat_visit` VALUES ('93', '1', 'wesite', '1', '20190427', 'app');
INSERT INTO `ims_stat_visit` VALUES ('94', '1', 'hulu_like', '28', '20190428', 'app');
INSERT INTO `ims_stat_visit` VALUES ('95', '1', 'wesite', '4', '20190428', 'app');
INSERT INTO `ims_stat_visit` VALUES ('96', '1', 'we7_api', '4', '20190428', 'web');
INSERT INTO `ims_stat_visit` VALUES ('97', '1', 'hulu_like', '2', '20190429', 'app');
INSERT INTO `ims_stat_visit` VALUES ('98', '1', 'we7_api', '1', '20190501', 'web');
INSERT INTO `ims_stat_visit` VALUES ('99', '1', 'we7_api', '4', '20190503', 'web');
INSERT INTO `ims_stat_visit` VALUES ('100', '1', 'hulu_like', '2', '20190503', 'app');
INSERT INTO `ims_stat_visit` VALUES ('101', '1', 'we7_api', '2', '20190504', 'web');
INSERT INTO `ims_stat_visit` VALUES ('102', '1', 'hulu_like', '12', '20190504', 'app');
INSERT INTO `ims_stat_visit` VALUES ('103', '1', 'wesite', '1', '20190504', 'app');
INSERT INTO `ims_stat_visit` VALUES ('104', '1', 'we7_api', '1', '20190505', 'web');
INSERT INTO `ims_stat_visit` VALUES ('105', '1', 'hulu_like', '17', '20190505', 'app');
INSERT INTO `ims_stat_visit` VALUES ('106', '0', '', '2', '20190506', 'web');
INSERT INTO `ims_stat_visit` VALUES ('107', '1', 'we7_account', '39', '20190506', 'web');
INSERT INTO `ims_stat_visit` VALUES ('108', '1', 'we7_api', '6', '20190506', 'web');
INSERT INTO `ims_stat_visit` VALUES ('109', '1', 'hulu_like', '53', '20190506', 'app');
INSERT INTO `ims_stat_visit` VALUES ('110', '1', 'wesite', '1', '20190506', 'app');
INSERT INTO `ims_stat_visit` VALUES ('111', '1', 'we7_api', '62', '20190508', 'web');
INSERT INTO `ims_stat_visit` VALUES ('112', '1', 'hulu_like', '247', '20190508', 'app');
INSERT INTO `ims_stat_visit` VALUES ('113', '1', 'we7_account', '29', '20190508', 'web');
INSERT INTO `ims_stat_visit` VALUES ('114', '1', 'wesite', '10', '20190508', 'app');
INSERT INTO `ims_stat_visit` VALUES ('115', '1', 'we7_api', '19', '20190509', 'web');
INSERT INTO `ims_stat_visit` VALUES ('116', '1', 'hulu_like', '75', '20190509', 'app');
INSERT INTO `ims_stat_visit` VALUES ('117', '1', 'wesite', '4', '20190509', 'app');
INSERT INTO `ims_stat_visit` VALUES ('118', '1', 'we7_api', '1', '20190510', 'web');
INSERT INTO `ims_stat_visit` VALUES ('119', '1', 'hulu_like', '1', '20190510', 'app');
INSERT INTO `ims_stat_visit` VALUES ('120', '1', 'hulu_like', '12', '20190512', 'app');
INSERT INTO `ims_stat_visit` VALUES ('121', '1', 'we7_api', '1', '20190512', 'web');
INSERT INTO `ims_stat_visit` VALUES ('122', '1', 'we7_api', '3', '20190513', 'web');
INSERT INTO `ims_stat_visit` VALUES ('123', '1', 'hulu_like', '10', '20190513', 'app');
INSERT INTO `ims_stat_visit` VALUES ('124', '1', 'hulu_like', '3', '20190516', 'app');
INSERT INTO `ims_stat_visit` VALUES ('125', '1', 'we7_api', '1', '20190516', 'web');
INSERT INTO `ims_stat_visit` VALUES ('126', '1', 'hulu_like', '29', '20190519', 'app');
INSERT INTO `ims_stat_visit` VALUES ('127', '1', 'we7_api', '5', '20190519', 'web');
INSERT INTO `ims_stat_visit` VALUES ('128', '1', 'hulu_like', '23', '20190521', 'app');
INSERT INTO `ims_stat_visit` VALUES ('129', '1', 'we7_api', '41', '20190521', 'web');
INSERT INTO `ims_stat_visit` VALUES ('130', '1', 'we7_account', '44', '20190521', 'web');
INSERT INTO `ims_stat_visit` VALUES ('131', '1', 'hulu_like', '6', '20190522', 'app');
INSERT INTO `ims_stat_visit` VALUES ('132', '1', 'we7_api', '3', '20190522', 'web');
INSERT INTO `ims_stat_visit` VALUES ('133', '1', 'we7_api', '13', '20190523', 'web');
INSERT INTO `ims_stat_visit` VALUES ('134', '1', 'hulu_like', '72', '20190523', 'app');
INSERT INTO `ims_stat_visit` VALUES ('135', '1', 'wesite', '4', '20190523', 'app');
INSERT INTO `ims_stat_visit` VALUES ('136', '1', 'we7_account', '9', '20190523', 'web');
INSERT INTO `ims_stat_visit` VALUES ('137', '1', 'we7_api', '1', '20190524', 'web');
INSERT INTO `ims_stat_visit` VALUES ('138', '1', 'hulu_like', '1', '20190524', 'app');

-- ----------------------------
-- Table structure for ims_system_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_system_stat_visit
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '-1', '乐享定制', '一个朝气蓬勃的团队', '1', null, 'W');

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------
INSERT INTO `ims_uni_account_menus` VALUES ('1', '1', '0', '1', '默认菜单_1', '0', '-1', '0', '', 'YToxOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YTozOntzOjQ6Im5hbWUiO3M6MTI6IuS4quS6uuS4reW/gyI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjY5OiJodHRwOi8vd3d3LnVseHd0ZjIzMzYxLmNuL2FwcC9pbmRleC5waHA/aT0xJmM9ZW50cnkmZG89bXkmbT1odWx1X2xpa2UiO31pOjE7YTozOntzOjQ6Im5hbWUiO3M6MTI6IuS6pOWPi+mmlumhtSI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjU3OiJodHRwOi8vd3d3LnVseHd0ZjIzMzYxLmNuL2FwcC9pbmRleC5waHA/aT0xJmM9ZW50cnkmZWlkPTUiO31pOjI7YTozOntzOjQ6Im5hbWUiO3M6MTI6Iui9r+S7tuS7i+e7jSI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjQ5OiJodHRwczovL21wLndlaXhpbi5xcS5jb20vcy9UZkVYMkM2b3ZxYjBwc2VwZ29SOGR3Ijt9fX0=', '1', '1554733660', '0');

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('1', '0', '体验套餐服务', 'a:5:{s:7:\"modules\";a:1:{i:0;s:9:\"hulu_like\";}s:5:\"wxapp\";a:1:{i:0;s:9:\"hulu_like\";}s:6:\"webapp\";a:1:{i:0;s:9:\"hulu_like\";}s:5:\"xzapp\";a:1:{i:0;s:9:\"hulu_like\";}s:8:\"phoneapp\";a:1:{i:0;s:9:\"hulu_like\";}}', 'N;', '0', '0');

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) NOT NULL,
  `attachment_limit` int(11) DEFAULT NULL,
  `attachment_size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', '0', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '你好欢迎来到乐享定制', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:11:{s:6:\"switch\";s:1:\"1\";s:7:\"account\";s:1:\"1\";s:10:\"has_config\";s:4:\"true\";s:12:\"recharge_set\";s:4:\"true\";s:11:\"support_set\";s:4:\"true\";s:7:\"version\";s:1:\"2\";s:5:\"mchid\";s:10:\"1508863801\";s:6:\"apikey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:7:\"signkey\";s:32:\"m1wn4l2raajy2dgisp24sgzysga05iwg\";s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:1;}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', '1', '0', '', '', '0', '', '0', '0', '', '', '', '0', '5', '', null, null);

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '0', '1', '0', 'admin', '876c35b03981bdc715c5f725dddc34bdd66db68e', '6592a938', '0', '0', '1553499946', '', '1558575688', '117.90.83.220', '', '0', '0', '0', '', '0', '0');

-- ----------------------------
-- Table structure for ims_users_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_bind
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_founder_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_founder_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------
INSERT INTO `ims_wechat_attachment` VALUES ('1', '1', '1', '0', '', '', '', '0', '0', 'news', 'local', '', '1554732701', '', null);
INSERT INTO `ims_wechat_attachment` VALUES ('2', '1', '1', '0', '', '', '', '0', '0', 'news', 'local', '', '1554732812', '', null);

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------
INSERT INTO `ims_wechat_news` VALUES ('1', '1', '1', '', 'http://www.ulxwtf23361.cn/attachment/images/1/2019/04/ZvniVD8rrVZTnwiAVaqgmw2G1wQsqn.png', '联系客服', '', '', '', '', '0', '', '0');
INSERT INTO `ims_wechat_news` VALUES ('2', '1', '2', '', 'http://www.ulxwtf23361.cn/attachment/images/1/2019/04/ZvniVD8rrVZTnwiAVaqgmw2G1wQsqn.png', '联系客服', '', '', '', '', '0', '', '0');

-- ----------------------------
-- Table structure for ims_wxapp_general_analysis
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_general_analysis
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  `redirect` varchar(300) NOT NULL,
  `connection` varchar(1000) NOT NULL,
  `last_modules` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------
