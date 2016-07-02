/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-07-02 22:24:01
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
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recycle` tinyint(1) unsigned DEFAULT '0' COMMENT '1回收站,0非回收站',
  `cat_id` int(11) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `is_show` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_article
-- ----------------------------
INSERT INTO `z_article` VALUES ('1', '轻松快速的下载您所感兴趣的产品', '&lt;p&gt;\r\n	&lt;strong&gt;HTML内容&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;夜深人静测试&lt;br /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;', null, '1467299484', '1467299484', 'admin', '1', '1', '3', null, '1');
INSERT INTO `z_article` VALUES ('2', 'thinkphp异步操作省市区数据库', '&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;strong&gt;HTML&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;内容&lt;/strong&gt;&lt;strong&gt;HTML内容&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;', null, '1466908918', '1467299484', 'admin', '1', '0', '3', '1', '1');
INSERT INTO `z_article` VALUES ('3', '.NET Core 1.0 is now released!', '&lt;strong&gt; 文章内容测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;测试 003 &amp;nbsp;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', null, '1466913419', '1467299484', 'admin', '1', '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('19', 'Welcome to Stack Overflow', '&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/1.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;http://localhost/blog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;', null, '1467073594', '1467299484', 'admin', null, '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('5', '获得各个产品版本的免费试用或最新的产品更新。', '&lt;p&gt;\r\n	&lt;strong&gt;文章内容发财啦 &amp;nbsp;发财啦 &amp;nbsp;发财啦 &amp;nbsp;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/6.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;\r\n&lt;/p&gt;', null, '1466913702', '1467299484', 'admin', '1', '0', '8', null, '1');
INSERT INTO `z_article` VALUES ('6', 'Visual Web Developer 2010 Express', '&lt;p&gt;\r\n	&lt;strong&gt;文章内容摸摸哒 &amp;nbsp;摸摸哒 &amp;nbsp;摸摸哒 &amp;nbsp;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;\r\nBrokered Windows Runtime Components can help enterprise developers build apps with modern, touch-enabled user experiences while leveraging their long-term investments in existing business logic code. This is made possible by allowing side-loaded Universal Windows Platform apps to interoperate with desktop processes outside of the app container. This technology was first introduced with the Windows 8.1 Update. For more info, take a look at Harry Pierson’s talk from Build 2014: Respecting Your Inv...', null, '1466913838', '1467299484', 'admin', '1', '0', '3', '4', '1');
INSERT INTO `z_article` VALUES ('7', 'Team Foundation Server 2015 Update 3 is available', '&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;&lt;/strong&gt;\r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/strong&gt;\r\nBrokered Windows Runtime Components can help enterprise developers build apps with modern, touch-enabled user experiences while leveraging their long-term investments in existing business logic code. This is made possible by allowing side-loaded Universal Windows Platform apps to interoperate with desktop processes outside of the app container. This technology was first introduced with the Windows 8.1 Update. For more info, take a look at Harry Pierson’s talk from Build 2014: Respecting Your Inv...', null, '1466929752', '1467299484', 'admin', '1', '1', '3', null, '1');
INSERT INTO `z_article` VALUES ('9', 'FamilyNotes: Using the camera to detect a user', 'Brokered Windows Runtime Components can help enterprise developers build apps with modern, touch-enabled user experiences while leveraging their long-term investments in existing business logic code. This is made possible by allowing side-loaded Universal Windows Platform apps to interoperate with desktop processes outside of the app container. This technology was first introduced with the Windows 8.1 Update. For more info, take a look at Harry Pierson’s talk from Build 2014: Respecting Your Inv...', null, '1466931296', '1467299484', 'admin', '1', '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('12', '服务器，网页及 Windows 云开发下载', '&lt;a class=&quot;ke-insertfile&quot; href=&quot;/blog/Public/kindeditor/attached/file/20160628/20160628084116_79710.rar&quot; target=&quot;_blank&quot;&gt;/blog/Public/kindeditor/attached/file/20160628/20160628084116_79710.rar&lt;/a&gt;&lt;img src=&quot;http://localhost/blog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;strong&gt; 文章内容&lt;img src=&quot;__URL__/Public/kindeditor/attached/image/20160626/20160626175234_11274.jpg&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', null, '1466934854', '1467074508', 'admin', '1', '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('11', 'Visual Studio 2015 Update 3 Available Now', '&lt;strong&gt; 文章内容&lt;/strong&gt;', null, '1466932521', '1466951907', 'admin', '1', '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('13', 'Developer Tools Blogs', '&lt;strong&gt; 文章内容&lt;img src=&quot;/Public/kindeditor/attached/image/20160626/20160626175646_70317.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/Public/kindeditor/php/../attached/image/20160626/20160626175855_92128.jpg&quot; alt=&quot;&quot; /&gt;&lt;/strong&gt;', null, '1466935143', '1467299484', 'admin', '1', '1', '2', null, '1');
INSERT INTO `z_article` VALUES ('14', 'Visual Studio 2015 Update 3 and .NET Core 1.0 Available Now', '&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt;文章内容&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; &lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;strong&gt; \r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;h1&gt;\r\n			&lt;strong&gt;文章内容&lt;/strong&gt; \r\n		&lt;/h1&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;h1&gt;\r\n			&lt;strong&gt;&lt;span style=&quot;background-color:#E56600;&quot;&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/span&gt;&lt;/strong&gt; \r\n		&lt;/h1&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/strong&gt; \r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; &lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;p&gt;\r\n			&lt;strong&gt;文章内容&lt;/strong&gt; \r\n		&lt;/p&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;p&gt;\r\n			&lt;span style=&quot;background-color:#E53333;&quot;&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/span&gt; \r\n		&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;strong&gt; \r\n		&lt;p&gt;\r\n			&lt;br /&gt;\r\n		&lt;/p&gt;\r\n&lt;/strong&gt; \r\n	&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;strong&gt; \r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;/strong&gt;', null, '1466951109', '1467202000', 'admin', '1', '0', '9', null, '1');
INSERT INTO `z_article` VALUES ('17', 'Browse Code Coverage reports', '&amp;nbsp; 积极急急急急急急', null, '1467027628', '1467299484', 'admin', null, '1', '3', null, '1');
INSERT INTO `z_article` VALUES ('18', 'How Can I Test Stored Procedure Errors in SQL', '&lt;span style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;line-height:24px;background-color:#F2F2F2;&quot;&gt;此函数是该函数的别名：&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;methodname&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;line-height:24px;background-color:#F2F2F2;&quot;&gt;&lt;a href=&quot;http://php.net/manual/zh/datetime.add.php&quot; class=&quot;methodname&quot;&gt;DateTime::add()&lt;/a&gt;&lt;/span&gt;', null, '1467027709', '1467299531', 'admin', null, '0', '3', '2', '1');
INSERT INTO `z_article` VALUES ('15', 'A New Team Services build task to easily extract files', '&lt;strong&gt; 1111&lt;/strong&gt;&lt;img src=&quot;http://blog.com/Public/kindeditor/plugins/emoticons/images/10.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;strong&gt;111&lt;/strong&gt;\r\n\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\'\r\n&quot;&quot;\r\n&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;\'\'&quot;\'', null, '1466951228', '1467018125', 'admin', '1', '1', '3', null, '1');
INSERT INTO `z_article` VALUES ('16', 'Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. ', '&amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'id\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'title\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'created\']|date=\'Y-m-d h\',###}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;td&amp;gt;&amp;lt;{$v[\'cat_name\']}&amp;gt;&amp;lt;/td&amp;gt;&lt;br /&gt;', null, '1467025400', '1467299555', 'admin', null, '0', '3', null, '1');
INSERT INTO `z_article` VALUES ('20', '3D重现经典端游 《传奇永恒》7月7日正式公测', '&lt;p style=&quot;font-size:16px;font-family:&amp;quot;color:#5F5F5F;&quot;&gt;\r\n	虽然近期人事变动不断，但盛大游戏仍然没有将产品的步伐放下。发布会以“烨战沙城”为主题，代言人刘烨亲临现场助阵，除了COS游戏中的展示角色之外，还现场与粉丝、玩家分享游戏心得，并与玩家们限产进行了PK表演赛。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-size:16px;font-family:&amp;quot;color:#5F5F5F;&quot;&gt;\r\n	据盛大官方数据介绍，《传奇永恒》是今年市场表现最为亮眼的大型客户端网游，在2月26日开始的不删档内测中，《传奇永恒》创造了次日留存90%、七日留存85%、30天以上留存率稳定70%的数据，单服最高在线达到15752人\r\n&lt;/p&gt;', null, '1467208099', '1467298891', 'admin', null, '0', '3', '2', '1');
INSERT INTO `z_article` VALUES ('21', '_REQUEST — HTTP Request 变量', '&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:&lt;img src=&quot;http://localhost/xblog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/xblog/upload/image/20160701/20160701230713_41585.jpg&quot; alt=&quot;&quot; width=&quot;66&quot; height=&quot;45&quot; title=&quot;&quot; align=&quot;&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;para&quot;&gt;\r\n		“Superglobal”也称为自动化的全局变量。这就表示其在脚本的所有作用域中都是可用的。不需要在函数或方法中用&lt;span class=&quot;command&quot;&gt;global $variable;&lt;/span&gt;&amp;nbsp;来访问它。\r\n	&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;para&quot;&gt;\r\n		以&lt;a href=&quot;http://php.net/manual/zh/features.commandline.php&quot; class=&quot;link&quot;&gt;命令行&lt;/a&gt;方式运行时，将&lt;em class=&quot;emphasis&quot;&gt;不&lt;/em&gt;包含&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argv.php&quot; class=&quot;link&quot;&gt;argv&lt;/a&gt;&amp;nbsp;和&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argc.php&quot; class=&quot;link&quot;&gt;argc&lt;/a&gt;&amp;nbsp;信息；它们将存在于&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.server.php&quot; class=&quot;classname&quot;&gt;$_SERVER&lt;/a&gt;&amp;nbsp;&lt;span class=&quot;type&quot;&gt;数组&lt;/span&gt;。\r\n	&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;para&quot;&gt;\r\n		由于&amp;nbsp;$_REQUEST&amp;nbsp;中的变量通过 GET，POST 和 COOKIE 输入机制传递给脚本文件，因此可以被远程用户篡改而并不可信。这个数组的项目及其顺序依赖于 PHP 的&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/ini.core.php#ini.variables-order&quot; class=&quot;link&quot;&gt;variables_order&lt;/a&gt;&amp;nbsp;指令的配置。\r\n	&lt;/p&gt;\r\n	&lt;p class=&quot;para&quot;&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:&lt;img src=&quot;http://localhost/xblog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;http://localhost/xblog/upload/image/20160701/20160701230713_41585.jpg&quot; alt=&quot;&quot; width=&quot;66&quot; height=&quot;45&quot; title=&quot;&quot; align=&quot;&quot; /&gt;\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				“Superglobal”也称为自动化的全局变量。这就表示其在脚本的所有作用域中都是可用的。不需要在函数或方法中用&lt;span class=&quot;command&quot;&gt;global $variable;&lt;/span&gt;&amp;nbsp;来访问它。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				以&lt;a href=&quot;http://php.net/manual/zh/features.commandline.php&quot; class=&quot;link&quot;&gt;命令行&lt;/a&gt;方式运行时，将&lt;em class=&quot;emphasis&quot;&gt;不&lt;/em&gt;包含&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argv.php&quot; class=&quot;link&quot;&gt;argv&lt;/a&gt;&amp;nbsp;和&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argc.php&quot; class=&quot;link&quot;&gt;argc&lt;/a&gt;&amp;nbsp;信息；它们将存在于&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.server.php&quot; class=&quot;classname&quot;&gt;$_SERVER&lt;/a&gt;&amp;nbsp;&lt;span class=&quot;type&quot;&gt;数组&lt;/span&gt;。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				由于&amp;nbsp;$_REQUEST&amp;nbsp;中的变量通过 GET，POST 和 COOKIE 输入机制传递给脚本文件，因此可以被远程用户篡改而并不可信。这个数组的项目及其顺序依赖于 PHP 的&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/ini.core.php#ini.variables-order&quot; class=&quot;link&quot;&gt;variables_order&lt;/a&gt;&amp;nbsp;指令的配置。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:&lt;img src=&quot;http://localhost/xblog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;http://localhost/xblog/upload/image/20160701/20160701230713_41585.jpg&quot; alt=&quot;&quot; width=&quot;66&quot; height=&quot;45&quot; title=&quot;&quot; align=&quot;&quot; /&gt;\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				“Superglobal”也称为自动化的全局变量。这就表示其在脚本的所有作用域中都是可用的。不需要在函数或方法中用&lt;span class=&quot;command&quot;&gt;global $variable;&lt;/span&gt;&amp;nbsp;来访问它。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				以&lt;a href=&quot;http://php.net/manual/zh/features.commandline.php&quot; class=&quot;link&quot;&gt;命令行&lt;/a&gt;方式运行时，将&lt;em class=&quot;emphasis&quot;&gt;不&lt;/em&gt;包含&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argv.php&quot; class=&quot;link&quot;&gt;argv&lt;/a&gt;&amp;nbsp;和&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argc.php&quot; class=&quot;link&quot;&gt;argc&lt;/a&gt;&amp;nbsp;信息；它们将存在于&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.server.php&quot; class=&quot;classname&quot;&gt;$_SERVER&lt;/a&gt;&amp;nbsp;&lt;span class=&quot;type&quot;&gt;数组&lt;/span&gt;。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				由于&amp;nbsp;$_REQUEST&amp;nbsp;中的变量通过 GET，POST 和 COOKIE 输入机制传递给脚本文件，因此可以被远程用户篡改而并不可信。这个数组的项目及其顺序依赖于 PHP 的&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/ini.core.php#ini.variables-order&quot; class=&quot;link&quot;&gt;variables_order&lt;/a&gt;&amp;nbsp;指令的配置。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:&lt;img src=&quot;http://localhost/xblog/Public/kindeditor/plugins/emoticons/images/13.gif&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;http://localhost/xblog/upload/image/20160701/20160701230713_41585.jpg&quot; alt=&quot;&quot; width=&quot;66&quot; height=&quot;45&quot; title=&quot;&quot; align=&quot;&quot; /&gt;\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				“Superglobal”也称为自动化的全局变量。这就表示其在脚本的所有作用域中都是可用的。不需要在函数或方法中用&lt;span class=&quot;command&quot;&gt;global $variable;&lt;/span&gt;&amp;nbsp;来访问它。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				以&lt;a href=&quot;http://php.net/manual/zh/features.commandline.php&quot; class=&quot;link&quot;&gt;命令行&lt;/a&gt;方式运行时，将&lt;em class=&quot;emphasis&quot;&gt;不&lt;/em&gt;包含&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argv.php&quot; class=&quot;link&quot;&gt;argv&lt;/a&gt;&amp;nbsp;和&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.argc.php&quot; class=&quot;link&quot;&gt;argc&lt;/a&gt;&amp;nbsp;信息；它们将存在于&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/reserved.variables.server.php&quot; class=&quot;classname&quot;&gt;$_SERVER&lt;/a&gt;&amp;nbsp;&lt;span class=&quot;type&quot;&gt;数组&lt;/span&gt;。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n		&lt;blockquote class=&quot;note&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background:#FFFFFF;&quot;&gt;\r\n			&lt;p&gt;\r\n				&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:\r\n			&lt;/p&gt;\r\n			&lt;p class=&quot;para&quot;&gt;\r\n				由于&amp;nbsp;$_REQUEST&amp;nbsp;中的变量通过 GET，POST 和 COOKIE 输入机制传递给脚本文件，因此可以被远程用户篡改而并不可信。这个数组的项目及其顺序依赖于 PHP 的&amp;nbsp;&lt;a href=&quot;http://php.net/manual/zh/ini.core.php#ini.variables-order&quot; class=&quot;link&quot;&gt;variables_order&lt;/a&gt;&amp;nbsp;指令的配置。\r\n			&lt;/p&gt;\r\n		&lt;/blockquote&gt;\r\n	&lt;/p&gt;\r\n&lt;/blockquote&gt;', null, '1467284449', '1467437552', 'admin', null, '0', '3', '25', '1');
INSERT INTO `z_article` VALUES ('22', 'eeeeeeee', '&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;Tempting as it may seem to use finfo_file() to validate uploaded image files (Check whether a supposed imagefile really contains an image), the results cannot be trusted. It\'s not that hard to wrap harmful executable code in a file identified as a GIF for instance.&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;A better &amp;amp; safer option is to check the result of:&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;if (!$img = @imagecreatefromgif($uploadedfilename)) {&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; trigger_error(\'Not a GIF image!\',E_USER_WARNING);&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp; // do necessary stuff&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;font-family:&amp;quot;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;}&lt;/span&gt;', '/upload/thumb/20160702/5777b70fa018f.gif', '1467463439', '1467463509', 'admin', null, '0', '1', null, '1');
INSERT INTO `z_article` VALUES ('23', '上传文件的命名规则', '&lt;p style=&quot;color:#222222;font-family:&amp;quot;font-size:16px;background-color:#FFFFFF;&quot;&gt;\r\n	上传文件的命名规则（saveName）用于确保文件不会产生冲突或者覆盖的情况。命名规则的定义可以根据你的业务逻辑来调整，不是固定的。例如，如果你采用时间戳的方式来定义命名规范，那么在同时上传多个文件的时候可能产生冲突（因为同一秒内可以上传多个文件），因此你需要根据你的业务需求来设置合适的上传命名规则。这里顺便来说下saveName参数的具体用法。\r\n&lt;/p&gt;\r\n&lt;h3 id=&quot;u91C7u7528u51FDu6570u65B9u5F0F&quot; style=&quot;font-size:1.5em;font-weight:200;color:#222222;font-family:&amp;quot;background-color:#FFFFFF;&quot;&gt;\r\n	采用函数方式\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#222222;font-family:&amp;quot;font-size:16px;background-color:#FFFFFF;&quot;&gt;\r\n	如果传入的字符串是一个函数名，那么表示采用函数动态生成上传文件名（不包括文件后缀），例如：\r\n&lt;/p&gt;', '/upload/thumb/20160702/5777b82860259.gif', '1467463720', null, 'admin', null, '0', '0', null, '1');
INSERT INTO `z_article` VALUES ('24', 'Contributing to PHP', '&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background-color:#F2F2F2;&quot;&gt;\r\n	Anybody who programs in PHP can be a contributing member of the community that develops and deploys it; the task of deploying PHP, documentation and associated websites is a never ending one. With every release, or release candidate comes a wave of work, which takes a lot of organization and co-ordination.\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;background-color:#F2F2F2;&quot;&gt;\r\n	With the introduction of release managers comes a smoother release process, but help is still needed: testing release candidates, finding and squashing bugs in tests, documentation, and sources.\r\n&lt;/p&gt;', '/upload/thumb/20160702/5777b9e9af6b5.gif', '1467464169', null, 'admin', null, '0', '2', null, '1');
INSERT INTO `z_article` VALUES ('25', 'Public\\thumb', 'Public\\thumb', '20160702/5777c7f888516.gif', '1467465183', '1467467768', 'admin', null, '0', '2', null, '1');
INSERT INTO `z_article` VALUES ('26', 'seemingly does not.', '&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	&lt;span class=&quot;note&quot; style=&quot;font-size:1.125rem;&quot;&gt;Note&lt;/span&gt;:&amp;nbsp;&lt;span&gt;Possible gotcha: removing middle characters&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;para&quot; style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	Because&amp;nbsp;&lt;span class=&quot;function&quot;&gt;&lt;span&gt;trim()&lt;/span&gt;&lt;/span&gt;&amp;nbsp;trims characters from the beginning and end of a&amp;nbsp;&lt;span class=&quot;type&quot;&gt;&lt;a href=&quot;http://php.net/manual/zh/language.types.string.php&quot; class=&quot;type string&quot;&gt;string&lt;/a&gt;&lt;/span&gt;, it may be confusing when characters are (or are not) removed from the middle.&amp;nbsp;&lt;em&gt;trim(\'abc\', \'bad\')&lt;/em&gt;&amp;nbsp;removes both \'a\' and \'b\' because it trims \'a\' thus moving \'b\' to the beginning to also be trimmed. So, this is why it &quot;works&quot; whereas&amp;nbsp;&lt;em&gt;trim(\'abc\', \'b\')&lt;/em&gt;&amp;nbsp;seemingly does not.\r\n&lt;/p&gt;', '20160702/5777c7b626f49.gif', '1467465302', '1467467702', 'admin', null, '0', '2', null, '1');
INSERT INTO `z_article` VALUES ('27', 'Newsgroups', '&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	The PHP language newsgroup is comp.lang.php, available on any news server around the globe. In addition to this many of our mailing lists are also reflected onto the news server at&amp;nbsp;&lt;a href=&quot;news://news.php.net&quot;&gt;news://news.php.net/&lt;/a&gt;. The server also has a read only web interface at&amp;nbsp;&lt;a href=&quot;http://news.php.net/&quot;&gt;http://news.php.net/&lt;/a&gt;.\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	Mailing list messages are transfered to newsgroup posts and newsgroup posts are sent to the mailing lists. Please note that these newsgroups are only available on this server.\r\n&lt;/p&gt;', '20160702/5777c7a6d2dc6.jpg', '1467466432', '1467467686', 'admin', null, '0', '2', null, '1');
INSERT INTO `z_article` VALUES ('28', 'The PHP language newsgroup is comp.lang.php, ', '&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	The PHP language newsgroup is comp.lang.php, available on any news server around the globe. In addition to this many of our mailing lists are also reflected onto the news server at&amp;nbsp;&lt;a href=&quot;news://news.php.net&quot;&gt;news://news.php.net/&lt;/a&gt;. The server also has a read only web interface at&amp;nbsp;&lt;a href=&quot;http://news.php.net/&quot;&gt;http://news.php.net/&lt;/a&gt;.\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:&amp;quot;font-size:16px;&quot;&gt;\r\n	Mailing list messages are transfered to newsgroup posts and newsgroup posts are sent to the mailing lists. Please note that these newsgroups are only available on this server.\r\n&lt;/p&gt;', '20160702/5777c7925f573.gif', '1467466470', '1467467666', 'admin', null, '0', '2', null, '1');
INSERT INTO `z_article` VALUES ('29', './Public/thumb/', './Public/thumb/', '20160702/5777c37361f15.gif', '1467466611', null, 'admin', null, '0', '4', null, '1');

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
INSERT INTO `z_auth_group_access` VALUES ('2', '3');
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
INSERT INTO `z_cat` VALUES ('1', '3', 'Python', '1');
INSERT INTO `z_cat` VALUES ('2', '3', 'PHP', '2');
INSERT INTO `z_cat` VALUES ('3', '8', 'HTML', '3');
INSERT INTO `z_cat` VALUES ('4', '3', 'Ajax', '6');
INSERT INTO `z_cat` VALUES ('6', '3', 'MySQL', '2');
INSERT INTO `z_cat` VALUES ('8', null, 'Life', '0');
INSERT INTO `z_cat` VALUES ('7', '3', 'github', '0');
INSERT INTO `z_cat` VALUES ('12', '0', 'CSS', '33');

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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_link
-- ----------------------------
INSERT INTO `z_link` VALUES ('1', 'http://www.php.net/', 'PHP', '11');
INSERT INTO `z_link` VALUES ('5', 'github.com', 'github.com', '11');
INSERT INTO `z_link` VALUES ('3', 'http://www.jb51.net/', '51', '2');
INSERT INTO `z_link` VALUES ('4', 'http://botee.cn/', 'botee', '0');
INSERT INTO `z_link` VALUES ('6', 'github.com', 'git', '0');
INSERT INTO `z_link` VALUES ('7', 'http://botee.cn/', '测试', '0');
INSERT INTO `z_link` VALUES ('8', 'http://botee.cn/', '德玛西亚', '0');

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
-- Table structure for z_nav
-- ----------------------------
DROP TABLE IF EXISTS `z_nav`;
CREATE TABLE `z_nav` (
  `nid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '备注',
  `name` varchar(255) DEFAULT NULL,
  `sort` tinyint(255) unsigned DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_nav
-- ----------------------------
INSERT INTO `z_nav` VALUES ('1', 'http://botee.cn/', '首页', '10');
INSERT INTO `z_nav` VALUES ('6', 'http://botee.cn/', '动态', '5');
INSERT INTO `z_nav` VALUES ('3', 'http://botee.cn/', '胡言乱语', '4');
INSERT INTO `z_nav` VALUES ('4', 'http://botee.cn/', '相册', '3');
INSERT INTO `z_nav` VALUES ('5', 'http://botee.cn/', 'GITHUB', '2');
INSERT INTO `z_nav` VALUES ('7', 'http://botee.cn/', '关于我', '0');

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
  `group_id` int(11) unsigned DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `statu` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_user
-- ----------------------------
INSERT INTO `z_user` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'sdlfkl@df.cn', '1', '1467108794', '1');
INSERT INTO `z_user` VALUES ('2', 'ad', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '3', '1467113693', '0');
INSERT INTO `z_user` VALUES ('3', 'khkh', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'sdlfkl@df.cn', null, '1467113746', '1');
INSERT INTO `z_user` VALUES ('4', 'kk', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', null, '1467120782', '1');
