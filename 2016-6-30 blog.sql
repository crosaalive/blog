/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-06-30 14:03:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for z_ad
-- ----------------------------
DROP TABLE IF EXISTS `z_ad`;
CREATE TABLE `z_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` tinyblob,
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_ad
-- ----------------------------

-- ----------------------------
-- Table structure for z_article
-- ----------------------------
DROP TABLE IF EXISTS `z_article`;
CREATE TABLE `z_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recycle` tinyint(1) unsigned DEFAULT '0' COMMENT '1回收站,0非回收站',
  `cat_id` int(11) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `is_show` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_article
-- ----------------------------
INSERT INTO `z_article` VALUES ('1', 'ceshi 1', '&lt;p&gt;\r\n	&lt;strong&gt;HTML内容&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;夜深人静测试&lt;br /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;', null, null, null, null, '1', null, null, null);
INSERT INTO `z_article` VALUES ('2', 'ceshi  2', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;', '1466908918', null, 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('3', '测试 003  测试 003  测试 003  测试 003  ', '&lt;strong&gt; 文章内容测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', '1466913419', null, 'admin', '1', '0', '4', null, '1');
INSERT INTO `z_article` VALUES ('19', '988888', '&lt;img src=&quot;http://localhost/blog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;', '1467073594', '1467202107', 'admin', null, '0', '9', null, '1');
INSERT INTO `z_article` VALUES ('5', '发财啦  发财啦  发财啦  发财啦  发财啦  ', '&lt;p&gt;\r\n	&lt;strong&gt;文章内容发财啦 &amp;nbsp;发财啦 &amp;nbsp;发财啦 &amp;nbsp;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/6.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;\r\n&lt;/p&gt;', '1466913702', null, 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('6', '摸摸哒  摸摸哒  摸摸哒  摸摸哒  ', '&lt;p&gt;\r\n	&lt;strong&gt;文章内容摸摸哒 &amp;nbsp;摸摸哒 &amp;nbsp;摸摸哒 &amp;nbsp;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;\r\n&lt;/p&gt;', '1466913838', null, 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('7', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;', '1466929752', null, 'admin', '1', '1', '0', null, '1');
INSERT INTO `z_article` VALUES ('9', '是事实上事实上事实上事实上事实上事实上', '&lt;strong&gt; 文章内容&lt;/strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '1466931296', null, 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('12', '除非对方', '&lt;a class=&quot;ke-insertfile&quot; href=&quot;/blog/Public/kindeditor/attached/file/20160628/20160628084116_79710.rar&quot; target=&quot;_blank&quot;&gt;/blog/Public/kindeditor/attached/file/20160628/20160628084116_79710.rar&lt;/a&gt;&lt;img src=&quot;http://localhost/blog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;strong&gt; 文章内容&lt;img src=&quot;__URL__/Public/kindeditor/attached/image/20160626/20160626175234_11274.jpg&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', '1466934854', '1467074508', 'admin', '1', '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('11', '对方的仍然', '&lt;strong&gt; 文章内容&lt;/strong&gt;', '1466932521', '1466951907', 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('13', '等等', '&lt;strong&gt; 文章内容&lt;img src=&quot;/Public/kindeditor/attached/image/20160626/20160626175646_70317.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/Public/kindeditor/php/../attached/image/20160626/20160626175855_92128.jpg&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', '1466935143', null, 'admin', '1', '1', '2', null, '1');
INSERT INTO `z_article` VALUES ('14', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈​ ​			', '&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; &lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;strong&gt; \r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;h1&gt;\r\n			&lt;strong&gt;文章内容&lt;/strong&gt; \r\n		&lt;/h1&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;h1&gt;\r\n			&lt;strong&gt;&lt;span style=&quot;background-color:#E56600;&quot;&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/span&gt;&lt;/strong&gt; \r\n		&lt;/h1&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/strong&gt; \r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; &lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;p&gt;\r\n			&lt;strong&gt;文章内容&lt;/strong&gt; \r\n		&lt;/p&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;p&gt;\r\n			&lt;span style=&quot;background-color:#E53333;&quot;&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/span&gt; \r\n		&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;p&gt;\r\n			&lt;br /&gt;\r\n		&lt;/p&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;strong&gt; \r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;/strong&gt;', '1466951109', '1467202000', 'admin', '1', '0', '9', null, '1');
INSERT INTO `z_article` VALUES ('17', '快快快', '&amp;nbsp; 积极急急急急急急', '1467027628', null, null, null, '1', '9', null, '1');
INSERT INTO `z_article` VALUES ('18', '就感觉', '各行', '1467027709', '1467202015', 'admin', null, '0', '4', null, '1');
INSERT INTO `z_article` VALUES ('15', '66666666666		', '&lt;strong&gt; 1111&lt;/strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/10.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;strong&gt;111&lt;/strong&gt;\r\n\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\r\n&quot;&quot;\r\n&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;\'\'&quot;\'', '1466951228', '1467018125', 'admin', '1', '1', '8', null, '1');
INSERT INTO `z_article` VALUES ('16', '0000000000000', '&amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'id\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'title\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'created\']|date=\'Y-m-d h\',###}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'cat_name\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;', '1467025400', '1467202122', null, null, '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('20', '2016-6-29 21:48:14', '2016-6-29 21:48:14', '1467208099', null, 'admin', null, '0', '0', null, '1');

-- ----------------------------
-- Table structure for z_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `z_auth_group`;
CREATE TABLE `z_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_auth_group
-- ----------------------------
INSERT INTO `z_auth_group` VALUES ('1', '管理分组', '1', '1,2,3,4,18,19');
INSERT INTO `z_auth_group` VALUES ('3', '摸摸哒', '0', '');
INSERT INTO `z_auth_group` VALUES ('5', '啊哈哈', '1', '');
INSERT INTO `z_auth_group` VALUES ('6', '顶顶顶顶', '1', '');

-- ----------------------------
-- Table structure for z_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `z_auth_group_access`;
CREATE TABLE `z_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_auth_group_access
-- ----------------------------
INSERT INTO `z_auth_group_access` VALUES ('1', '1');
INSERT INTO `z_auth_group_access` VALUES ('2', '5');
INSERT INTO `z_auth_group_access` VALUES ('3', '1');
INSERT INTO `z_auth_group_access` VALUES ('4', '1');

-- ----------------------------
-- Table structure for z_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `z_auth_rule`;
CREATE TABLE `z_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_auth_rule
-- ----------------------------
INSERT INTO `z_auth_rule` VALUES ('1', 'Admin/Index/index', '后台首页', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('2', 'Admin/Article/index', '文章列表', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('3', 'Admin/Article/addArticle', '添加文章', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('4', 'Admin/Article/editArticle', '编辑文章', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('5', 'Admin/Article/delArticle', '删除文章', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('6', 'Admin/Category/index', '分类列表', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('7', 'Admin/Category/addCategory', '添加分类', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('8', 'Admin/Category/editCategory', '编辑分类', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('9', 'Admin/Category/delCategory', '删除分类', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('10', 'Admin/User/index', '会员列表', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('11', 'Admin/User/addUser', '添加会员', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('12', 'Admin/User/userOff', '禁止会员', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('13', 'Admin/User/userOn', '启用会员', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('14', 'Admin/AuthManager/index', '用户组列表', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('15', 'Admin/AuthManager/ruleList', '规则列表', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('16', 'Admin/AuthManager/addRuleHandle', '添加规则', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('17', 'Admin/AuthManager/addGroup', '添加用户组', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('18', 'Admin/AuthManager/statusOff', '禁止用户组', '1', '1', '');
INSERT INTO `z_auth_rule` VALUES ('19', 'Admin/AuthManager/editGroupHandle', '编辑用户组', '1', '1', '');

-- ----------------------------
-- Table structure for z_cat
-- ----------------------------
DROP TABLE IF EXISTS `z_cat`;
CREATE TABLE `z_cat` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `sort` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_cat
-- ----------------------------
INSERT INTO `z_cat` VALUES ('1', '3', '分类            ', '1');
INSERT INTO `z_cat` VALUES ('2', '3', '323        ', '2');
INSERT INTO `z_cat` VALUES ('3', '8', '速度是多少    ', '3');
INSERT INTO `z_cat` VALUES ('4', '6', '摸摸哒', '6');
INSERT INTO `z_cat` VALUES ('6', '2', '叮叮', '2');
INSERT INTO `z_cat` VALUES ('8', null, '德玛西亚', '0');
INSERT INTO `z_cat` VALUES ('9', null, '知乎', '0');
INSERT INTO `z_cat` VALUES ('0', '8', '111111111    ', '0');
INSERT INTO `z_cat` VALUES ('12', '0', '333333333', '33');

-- ----------------------------
-- Table structure for z_gallery
-- ----------------------------
DROP TABLE IF EXISTS `z_gallery`;
CREATE TABLE `z_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `img_desc` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for z_link
-- ----------------------------
DROP TABLE IF EXISTS `z_link`;
CREATE TABLE `z_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) DEFAULT NULL,
  `link_desc` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_link
-- ----------------------------

-- ----------------------------
-- Table structure for z_mood
-- ----------------------------
DROP TABLE IF EXISTS `z_mood`;
CREATE TABLE `z_mood` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_mood
-- ----------------------------

-- ----------------------------
-- Table structure for z_option
-- ----------------------------
DROP TABLE IF EXISTS `z_option`;
CREATE TABLE `z_option` (
  `icp` varchar(255) DEFAULT NULL COMMENT '备案信息',
  `ad_one` tinytext COMMENT '广告',
  `ad_two` tinytext,
  `ad_three` varchar(255) DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键字',
  `desc` varchar(255) DEFAULT NULL COMMENT '站点描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_option
-- ----------------------------

-- ----------------------------
-- Table structure for z_review
-- ----------------------------
DROP TABLE IF EXISTS `z_review`;
CREATE TABLE `z_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `comment` text,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_review
-- ----------------------------

-- ----------------------------
-- Table structure for z_slide
-- ----------------------------
DROP TABLE IF EXISTS `z_slide`;
CREATE TABLE `z_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `slide_desc` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_slide
-- ----------------------------

-- ----------------------------
-- Table structure for z_user
-- ----------------------------
DROP TABLE IF EXISTS `z_user`;
CREATE TABLE `z_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `statu` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_user
-- ----------------------------
INSERT INTO `z_user` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'sdlfkl@df.cn', '1467108794', '1', '摸摸哒', '1');
INSERT INTO `z_user` VALUES ('2', 'ad', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '1467113693', '5', '测试分组修改', '0');
INSERT INTO `z_user` VALUES ('3', 'khkh', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'sdlfkl@df.cn', '1467113746', '1', null, '1');
INSERT INTO `z_user` VALUES ('4', 'kk', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '1467120782', '1', null, '1');
