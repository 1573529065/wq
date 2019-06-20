<?php
$sql="CREATE TABLE IF NOT EXISTS `ims_hulu_like_active` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_ads` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_chongzhi` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_contact` (
  `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '查看者',
  `contact_openid` varchar(100) NOT NULL COMMENT '被查看者',
  `contact_time` varchar(100) NOT NULL,
  `contact_ip` varchar(100) NOT NULL,
  `contact_container` varchar(100) NOT NULL,
  `contact_os` varchar(100) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_gift` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_join` (
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
CREATE TABLE IF NOT EXISTS `ims_hulu_like_liaodou` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_like` (
  `like_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '暗恋者',
  `like_openid` varchar(100) NOT NULL COMMENT '被暗恋者',
  `like_time` varchar(100) NOT NULL,
  `like_ip` varchar(100) NOT NULL,
  `like_container` varchar(100) NOT NULL,
  `like_os` varchar(100) NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_make` (
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
  PRIMARY KEY (`make_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_member` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_menu` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_money` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_more` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_muban` (
  `muban_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `muban_send_news` varchar(100) NOT NULL,
  PRIMARY KEY (`muban_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_news` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_order` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_picture` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_present` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_request` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_sham` (
  `sham_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `sham_nickname` varchar(100) NOT NULL,
  `sham_content` text NOT NULL,
  PRIMARY KEY (`sham_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_share` (
  `share_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `share_openid` varchar(100) NOT NULL,
  `share_time` varchar(100) NOT NULL,
  `share_ip` varchar(100) NOT NULL,
  `share_container` varchar(100) NOT NULL,
  `share_os` varchar(100) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_system` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_talk` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_talk_pinglun` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_talk_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `talk_id` int(10) NOT NULL,
  `zan_time` varchar(100) NOT NULL,
  `zan_ip` varchar(100) NOT NULL,
  `zan_container` varchar(100) NOT NULL,
  `zan_os` varchar(100) NOT NULL,
  PRIMARY KEY (`zan_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_taocan` (
  `taocan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `taocan_pid` int(10) unsigned NOT NULL DEFAULT '1',
  `taocan_did` int(10) NOT NULL,
  `taocan_liaotian_jinbi` int(10) NOT NULL,
  `taocan_liaotian_person` int(10) NOT NULL,
  `taocan_liaotian_time` int(10) NOT NULL,
  PRIMARY KEY (`taocan_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_tixian` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_user` (
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
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_viewer` (
  `viewer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(100) NOT NULL COMMENT '来访者',
  `viewer_openid` varchar(100) NOT NULL COMMENT '被访问者',
  `viewer_time` varchar(100) NOT NULL,
  `viewer_ip` varchar(100) NOT NULL,
  `viewer_container` varchar(100) NOT NULL,
  `viewer_os` varchar(100) NOT NULL,
  PRIMARY KEY (`viewer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `ims_hulu_like_wxlogin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL,
  `type` varchar(8) NOT NULL COMMENT 'app',
  `token` text NOT NULL,
  `sign` text NOT NULL,
  `openid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
";
pdo_run($sql);
if(!pdo_fieldexists('hulu_like_active',  'active_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_active',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_pid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_active',  'active_title')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_title` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_type` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_boy')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_boy` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_girl')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_girl` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_address')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_address` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_starttime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_starttime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_endtime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_endtime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_wechat')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_wechat` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_tel')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_tel` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_active',  'active_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_active')." ADD `active_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_ads',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_did')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_did` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_title')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_title` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_pic')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_pic` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_link')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_link` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_ads',  'ads_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_ads')." ADD `ads_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_type` int(10) NOT NULL COMMENT '1为充值/2为消费';");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_jinbi')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_jinbi` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'order_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `order_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_chongzhi',  'chongzhi_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_chongzhi')." ADD `chongzhi_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_contact',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_contact',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `openid` varchar(100) NOT NULL COMMENT '查看者';");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_openid` varchar(100) NOT NULL COMMENT '被查看者';");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_contact',  'contact_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_contact')." ADD `contact_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_gift',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_did')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_did` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_name')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_name` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_picture')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_picture` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_gift',  'gift_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_gift')." ADD `gift_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_join',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_pid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_join',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'active_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `active_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_sex')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_sex` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_name')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_name` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_wechat')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_wechat` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_tel')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_tel` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_join',  'join_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_join')." ADD `join_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为未使用/2为使用中/3为已使用';");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_endtime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_endtime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_liaodou',  'liaodou_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_liaodou')." ADD `liaodou_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_like',  'like_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_like',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_like',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `openid` varchar(100) NOT NULL COMMENT '暗恋者';");
}
if(!pdo_fieldexists('hulu_like_like',  'like_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_openid` varchar(100) NOT NULL COMMENT '被暗恋者';");
}
if(!pdo_fieldexists('hulu_like_like',  'like_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_like',  'like_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_like',  'like_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_like',  'like_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_like')." ADD `like_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_make',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_web_title')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_web_title` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_vip_year')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_vip_year` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_vip_quarter')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_vip_quarter` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_vip_month')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_vip_month` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_vip_contact')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_vip_contact` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_vip_freechat')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_vip_freechat` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为付费/2为免费';");
}
if(!pdo_fieldexists('hulu_like_make',  'make_key')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_key` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_secret')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_secret` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_sign')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_sign` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_msgtemplate')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_msgtemplate` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_key_baidu')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_key_baidu` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_key_qq')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_key_qq` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_user_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_user_pid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_make',  'make_active_proportion')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_active_proportion` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_jinbi_name')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_jinbi_name` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_jinbi_bili')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_jinbi_bili` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_liaotian_free')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_liaotian_free` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_liaotian_jinbi')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_liaotian_jinbi` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_liaotian_person')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_liaotian_person` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_liaotian_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_liaotian_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_tuiguang_bili')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_tuiguang_bili` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_bili_gift')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_bili_gift` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_bili_dashang')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_bili_dashang` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_bili_liaotian')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_bili_liaotian` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_bili_zanshang')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_bili_zanshang` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_tixian_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_tixian_time` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_tixian_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_tixian_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_kefu_qrcode')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_kefu_qrcode` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_share_title')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_share_title` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_share_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_share_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_share_picture')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_share_picture` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_authcode')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_authcode` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'make_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `make_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'chat_num_replace')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `chat_num_replace` char(1) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_make',  'look_user_tel_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_make')." ADD `look_user_tel_type` int(1) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_member',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_birthday')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_birthday` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_height')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_height` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_weight')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_weight` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_purpose')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_purpose` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_feeling')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_feeling` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_marry')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_marry` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_wechat')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_wechat` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_tel')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_tel` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_province')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_province` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_city')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_city` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_district')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_district` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_edu')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_edu` int(2) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_salary')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_salary` int(2) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_house')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_house` int(1) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_career')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_career` int(2) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_member',  'member_nation')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_member')." ADD `member_nation` varchar(32) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `id` int(10) NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_menu',  'weid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `weid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'sort')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `sort` int(4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'donot_show')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `donot_show` int(1) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'menu_index')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `menu_index` varchar(32) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'name')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `name` varchar(32) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'pic')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `pic` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_menu',  'link')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD `link` varchar(128) NOT NULL;");
}
if(!pdo_indexexists('hulu_like_menu',  'weid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_menu')." ADD KEY `weid` (`weid`);");
}
if(!pdo_fieldexists('hulu_like_money',  'money_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_money',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功';");
}
if(!pdo_fieldexists('hulu_like_money',  'money_state')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入/4为提成';");
}
if(!pdo_fieldexists('hulu_like_money',  'money_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_type` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_money',  'money_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_money')." ADD `money_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_more',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_real_tel_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_real_tel_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_more',  'more_real_tel')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_real_tel` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_real_code')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_real_code` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_tixian_name')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_tixian_name` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_tixian_tel')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_tixian_tel` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_tixian_wechat')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_tixian_wechat` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_more',  'more_tixian_alipay')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_more')." ADD `more_tixian_alipay` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_muban',  'muban_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_muban')." ADD `muban_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_muban',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_muban')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_muban',  'muban_send_news')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_muban')." ADD `muban_send_news` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_news',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_news',  'news_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_type` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_news',  'news_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_news')." ADD `news_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_order',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_order',  'order_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_type` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_num')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_num` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_starttime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_starttime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_endtime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_endtime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_vip_days')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_vip_days` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_join_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_join_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_gift_receive')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_gift_receive` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_gift_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_gift_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_dashang_receive')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_dashang_receive` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_order',  'order_talk_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_order')." ADD `order_talk_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_picture',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_pid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_type` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_vid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_vid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_url')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_url` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_picture',  'picture_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_picture')." ADD `picture_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_present',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_send')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_send` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'gift_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `gift_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_present',  'present_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_present')." ADD `present_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_request',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_age_small')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_age_small` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_age_big')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_age_big` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_height_small')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_height_small` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_height_big')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_height_big` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_weight_small')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_weight_small` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_weight_big')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_weight_big` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_salary')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_salary` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_education')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_education` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_request',  'request_area')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_request')." ADD `request_area` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_sham',  'sham_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_sham')." ADD `sham_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_sham',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_sham')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_sham',  'sham_nickname')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_sham')." ADD `sham_nickname` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_sham',  'sham_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_sham')." ADD `sham_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_share',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_share',  'share_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_share')." ADD `share_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_system',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功';");
}
if(!pdo_fieldexists('hulu_like_system',  'system_state')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入';");
}
if(!pdo_fieldexists('hulu_like_system',  'system_type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_type` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_system',  'system_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_system')." ADD `system_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_talk',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_pid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_did')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_did` int(11) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_weizhi')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_weizhi` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_address')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_address` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_jingwei')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_jingwei` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk',  'talk_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk')." ADD `talk_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'talk_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `talk_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_pinglun',  'pinglun_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_pinglun')." ADD `pinglun_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'zan_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'talk_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `talk_id` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'zan_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `zan_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'zan_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `zan_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'zan_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `zan_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_talk_zan',  'zan_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_talk_zan')." ADD `zan_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_pid` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_did')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_did` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_liaotian_jinbi')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_liaotian_jinbi` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_liaotian_person')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_liaotian_person` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_taocan',  'taocan_liaotian_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_taocan')." ADD `taocan_liaotian_time` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_pid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_pid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '1为失败/2为审核/3为成功';");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_state')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_state` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1为支出/2为提现/3为收入/4为提成';");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_money')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_money` decimal(10,4) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_content')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_content` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_tixian',  'money_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_tixian')." ADD `money_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'uid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `uid` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_user',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `openid` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'upid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `upid` int(10) unsigned NOT NULL DEFAULT '2';");
}
if(!pdo_fieldexists('hulu_like_user',  'user_jinbi')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `user_jinbi` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'user_share')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `user_share` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_user',  'kefu_if')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `kefu_if` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_user',  'sham')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `sham` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_user',  'vip_endtime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `vip_endtime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'realname')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `realname` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_user',  'sex')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `sex` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'nickname')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `nickname` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'avatar')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `avatar` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'address')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `address` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'user_shangji')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `user_shangji` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'user_liaodou_if')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `user_liaodou_if` int(10) unsigned NOT NULL DEFAULT '1';");
}
if(!pdo_fieldexists('hulu_like_user',  'user_liaodou_endtime')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `user_liaodou_endtime` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'login_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `login_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'login_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `login_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'login_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `login_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'login_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `login_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'reg_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `reg_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'reg_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `reg_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_user',  'set_close')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_user')." ADD `set_close` int(1) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_id` int(10) unsigned NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'uniacid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `uniacid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `openid` varchar(100) NOT NULL COMMENT '来访者';");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_openid` varchar(100) NOT NULL COMMENT '被访问者';");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_time')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_time` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_ip')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_ip` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_container')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_container` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_viewer',  'viewer_os')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_viewer')." ADD `viewer_os` varchar(100) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'id')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `id` int(10) NOT NULL AUTO_INCREMENT;");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'weid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `weid` int(10) NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'type')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `type` varchar(8) NOT NULL COMMENT 'app';");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'token')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `token` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'sign')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `sign` text NOT NULL;");
}
if(!pdo_fieldexists('hulu_like_wxlogin',  'openid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD `openid` varchar(64) NOT NULL;");
}
if(!pdo_indexexists('hulu_like_wxlogin',  'weid')) {
	pdo_query("ALTER TABLE ".tablename('hulu_like_wxlogin')." ADD KEY `weid` (`weid`);");
}

?>