/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : luffycms

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-02-16 16:06:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aricle
-- ----------------------------
DROP TABLE IF EXISTS `aricle`;
CREATE TABLE `aricle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '所属分类',
  `title` varchar(255) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `content` text,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) NOT NULL DEFAULT '255' COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of aricle
-- ----------------------------
INSERT INTO `aricle` VALUES ('2', '3', '日本2015年向中国人发签证数猛增85% 创历史新高', '', '\r\n	环球网报道记者 王欢】 日本外务省6月6日发布统计结果称，2015年面向中国人的签证发放数量比上年约增加85%，达到378.08万份，刷新此前最高纪录。在旅游签证发放条件放宽和日元贬值的背景下，', '\\static\\aricle-thumbnail\\20160607\\c83886962ffa2e23f42118be7d54cd25.jpg', '<p style=\"text-indent:28px;font-size:14px;text-align:justify;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;background-color:#FFFFFF;\">\r\n	环球网报道记者 王欢】 日本外务省6月6日发布统计结果称，2015年面向中国人的签证发放数量比上年约增加85%，达到378.08万份，刷新此前最高纪录。在<a href=\"http://travel.ifeng.com/\" target=\"_blank\">旅游</a>签证发放条件放宽和日元贬值的背景下，团体和个人游客都有大幅增加。以所有外国人为对象的签证发放数为476.83万份，同样创新高。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;text-align:justify;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;background-color:#FFFFFF;\">\r\n	日本共同社6月6日报道说，向中国人发放的签证数占总数的8成左右，占据绝对多数。虽然2012年和2013年该数据因中日围绕钓鱼岛问题引发对立而有所减少，但随着两国关系趋于恢复，签证发放数也日渐增多。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;text-align:justify;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;background-color:#FFFFFF;\">\r\n	2015年统计显示，继中国之后排在第二的是菲律宾的225,676份，比上年增加约38%;第三是印度尼西亚的16.23万份，约增15%。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;text-align:justify;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;background-color:#FFFFFF;\">\r\n	日本外务省6日还发布了2015年10月1日的“在外日侨人数”。在海外居住3个月以上者与永住者合计131.71万人，比上年增长2.1%，创新高。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;text-align:justify;color:#2B2B2B;font-family:simsun, arial, helvetica, clean, sans-serif;background-color:#FFFFFF;\">\r\n	按所在国来分，最多的是美国的41.96万人，其次是中国的13.12万人，再次是<a href=\"http://app.travel.ifeng.com/country_76\" target=\"_blank\">澳大利亚</a>的8.91万人。在中国的日本人比上年减少约2%，自2012年达到峰值后已连减三年。\r\n</p>', '1', '255', '1465288220', '1465288220');

-- ----------------------------
-- Table structure for ariclecategory
-- ----------------------------
DROP TABLE IF EXISTS `ariclecategory`;
CREATE TABLE `ariclecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `description` varchar(255) DEFAULT '' COMMENT '简介',
  `keyword` varchar(100) DEFAULT NULL COMMENT '关键词',
  `sort` int(11) NOT NULL DEFAULT '255' COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ariclecategory
-- ----------------------------
INSERT INTO `ariclecategory` VALUES ('1', '0', '体育', '体育,shan,mqq', '体育,shan,mqq', '255', '1465203618', '1465204885');
INSERT INTO `ariclecategory` VALUES ('3', '1', '篮球', '篮球,科比,詹姆斯', '篮球,科比,詹姆斯', '255', '1465265950', '1465265950');

-- ----------------------------
-- Table structure for backstage_log
-- ----------------------------
DROP TABLE IF EXISTS `backstage_log`;
CREATE TABLE `backstage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '登录用户id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简单说明',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `create_time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `userId` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of backstage_log
-- ----------------------------

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL COMMENT '焦点图所属位置',
  `title` varchar(100) NOT NULL COMMENT '焦点图标题',
  `url` varchar(255) NOT NULL COMMENT '焦点图链接地址',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `remark` tinytext COMMENT '焦点图说明',
  `status` tinyint(4) NOT NULL COMMENT '是否可用',
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='焦点图';

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES ('2', '1', '国庆促销1', 'http://www.qiny.com', '\\static\\focus_image\\2016-06-01\\5ed9acec0f3270cf6c07c37417c38097.png', '国庆促销', '1', '255', '1464767431', '1465701862');

-- ----------------------------
-- Table structure for focus_position
-- ----------------------------
DROP TABLE IF EXISTS `focus_position`;
CREATE TABLE `focus_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL COMMENT '调用代码',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='焦点图位置';

-- ----------------------------
-- Records of focus_position
-- ----------------------------
INSERT INTO `focus_position` VALUES ('1', 'index_1', '首页第一p', '1464751294', '1464753131');

-- ----------------------------
-- Table structure for images_info
-- ----------------------------
DROP TABLE IF EXISTS `images_info`;
CREATE TABLE `images_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(20) NOT NULL COMMENT '文件目录',
  `remark` varchar(255) NOT NULL COMMENT '说明',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '高度(为0时不限制)',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '长度(为0时不限制)',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '最大(为0时不限制) 单位kb',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='图片控制';

-- ----------------------------
-- Records of images_info
-- ----------------------------
INSERT INTO `images_info` VALUES ('1', 'head', '头像', '100', '100', '100');
INSERT INTO `images_info` VALUES ('2', 'editor', '编辑器', '0', '0', '500');
INSERT INTO `images_info` VALUES ('3', 'links_logo', '友情链接LOGO', '0', '0', '50');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL COMMENT 'logo',
  `linker` varchar(255) DEFAULT NULL COMMENT '联系人说明',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1 开启 0 关闭',
  `sort` int(10) NOT NULL DEFAULT '255' COMMENT '排序 ',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='友情 链接';

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', '京东', 'http://www.sino.com', '\\static\\links_logo\\2016-06-01\\8672b9290390e6e026fe570cd145647d.png', 'QQ:36363636', '1', '23', '1464745978', '1464747196');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `description` varchar(255) DEFAULT '' COMMENT '简介',
  `keyword` varchar(100) DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `status` tinyint(255) NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='单页面';

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', '公司介绍', '', '公司介绍', '<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司介绍\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司成立于2008年9月，是一家拥有自主知识产权的高新企业。</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司长期专注于WEB应用框架、应用平台和企业解决方案的研究，公司的核心技术框架ThinkPHP由创始人刘晨于2006年创立，经过7年多的精心打造和发展，具有广泛的用户基础和良好的业内口碑，已经成长为国内领先和最具影响力的WEB应用开发框架，国外同比也具有相当大的优势。其应用领域分布于各个行业，在门户、社区和电子商务领域有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！</span><br />\r\n<br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司总部位于上海，由从事互联网和用户体验研究达10年的资深专家领军，拥有一批专业的策划、设计和技术团队以及广泛的社区技术力量。公司长期以来凭借业内的影响力、良好的客户和合作关系，邀请了众多安全和项目专家作为顾问，有力得保证了客户项目的开发和实施。公司还拥有一支资深用户体验和设计研究队伍，针对不同用户量身定做用户体验流程，有着良好的产品设计和设计概念。</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司理念\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司理念：专业源于专注，细节决定成败。</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">我们的口号是：WE CAN DO IT ,JUST THINK !</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司服务\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">专业网站策划开发</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">企业业务系统定制</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">为企业应用提供一系列的解决方案</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">ThinkPHP认证培训</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司优势\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">ThinkPHP 6年的用户基础和口碑</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">日益增加的典型案例</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">具有技术优势的团队</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">广泛的合作资源，包括：校园、企业、培训和媒体</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司价值观\r\n</h2>\r\n<b>合作</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 团队合作，共同成长</span><br />\r\n<b>专业</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 提倡专业素质</span><br />\r\n<b>专注</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 成为某个领域的专家</span><br />\r\n<b>创新</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 持续创新，不断改进</span><br />\r\n<b>服务</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 给客户最满意的服务而不是产品</span><br />\r\n<b>贡献</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">&nbsp;—— 有贡献就有收获</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	我们的客户\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">国家保密局 中青旅 联想中国 美特斯邦威 腾讯家居 凤凰家居 56.Com 星巴克 宝矿力水特 特力屋 奔驰 莆田在线 都市客 商虎网 泡面三国 三国英雄传 贵州便民网 中国西部开发网 中华家园网 记忆日 互动日程 魔力岛 巨人网络 灵通集团…</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">更多典型案例演示：</span><a href=\"http://www.thinkphp.cn/Case/\" target=\"_blank\">http://www.thinkphp.cn/Case/&nbsp;</a><br />\r\n<br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">社 区：</span><a href=\"http://thinkphp.cn/\" target=\"_blank\">http://thinkphp.cn/</a><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司官网：</span><a href=\"http://topthink.net/\" target=\"_blank\">http://topthink.net/</a>', '1', '255', '1464939566', '1464939566');
INSERT INTO `pages` VALUES ('2', '1', '关于我们', '关于我们 ', '关于我们', '<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司介绍\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">上海顶想信息科技有限公司（TOPThink Inc.）是国内领先的WEB应用和服务提供商致力于WEB应用平台、产品和应用的研发和服务，为企事业单位提供基于WEB的应用开发快速解决方案和产品。公司成立于2008年9月，是一家拥有自主知识产权的高新企业。</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司长期专注于WEB应用框架、应用平台和企业解决方案的研究，公司的核心技术框架ThinkPHP由创始人刘晨于2006年创立，经过7年多的精心打造和发展，具有广泛的用户基础和良好的业内口碑，已经成长为国内领先和最具影响力的WEB应用开发框架，国外同比也具有相当大的优势。其应用领域分布于各个行业，在门户、社区和电子商务领域有着非常良好支持以及拓展，大小案例不下千家，在安全、效率、负载上都有很大优势，已经成为WEB应用的快速开发解决方案和最佳实践！</span><br />\r\n<br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司总部位于上海，由从事互联网和用户体验研究达10年的资深专家领军，拥有一批专业的策划、设计和技术团队以及广泛的社区技术力量。公司长期以来凭借业内的影响力、良好的客户和合作关系，邀请了众多安全和项目专家作为顾问，有力得保证了客户项目的开发和实施。公司还拥有一支资深用户体验和设计研究队伍，针对不同用户量身定做用户体验流程，有着良好的产品设计和设计概念。</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司理念\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司理念：专业源于专注，细节决定成败。</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">我们的口号是：WE CAN DO IT ,JUST THINK !</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司服务\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">专业网站策划开发</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">企业业务系统定制</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">为企业应用提供一系列的解决方案</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">ThinkPHP认证培训</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司优势\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">ThinkPHP 6年的用户基础和口碑</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">日益增加的典型案例</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">具有技术优势的团队</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">广泛的合作资源，包括：校园、企业、培训和媒体</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	公司价值观\r\n</h2>\r\n<b>合作</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 团队合作，共同成长</span><br />\r\n<b>专业</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 提倡专业素质</span><br />\r\n<b>专注</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 成为某个领域的专家</span><br />\r\n<b>创新</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 持续创新，不断改进</span><br />\r\n<b>服务</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 给客户最满意的服务而不是产品</span><br />\r\n<b>贡献</b><span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\"> —— 有贡献就有收获</span><br />\r\n<br />\r\n<br />\r\n<h2 style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';background-color:#FFFFFF;\">\r\n	我们的客户\r\n</h2>\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">国家保密局 中青旅 联想中国 美特斯邦威 腾讯家居 凤凰家居 56.Com 星巴克 宝矿力水特 特力屋 奔驰 莆田在线 都市客 商虎网 泡面三国 三国英雄传 贵州便民网 中国西部开发网 中华家园网 记忆日 互动日程 魔力岛 巨人网络 灵通集团…</span><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">更多典型案例演示：</span><a href=\"http://www.thinkphp.cn/Case/\" target=\"_blank\">http://www.thinkphp.cn/Case/ </a><br />\r\n<br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">社 区：</span><a href=\"http://thinkphp.cn/\" target=\"_blank\">http://thinkphp.cn/</a><br />\r\n<span style=\"color:#323232;font-family:\'Century Gothic\', \'Microsoft yahei\';font-size:16px;line-height:35.2px;background-color:#FFFFFF;\">公司官网：</span><a href=\"http://topthink.net/\" target=\"_blank\">http://topthink.net/</a>', '1', '25', '1464944062', '1464944962');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '角色名称',
  `status` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `remark` varchar(255) DEFAULT '' COMMENT '简单说明',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '网站管理员', '1', '网站所有者权限', '1463639061', '1465267060');

-- ----------------------------
-- Table structure for role_rule
-- ----------------------------
DROP TABLE IF EXISTS `role_rule`;
CREATE TABLE `role_rule` (
  `role_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  UNIQUE KEY `fu` (`role_id`,`rule_id`),
  KEY `role_rule_rule_id` (`rule_id`),
  CONSTRAINT `role_rule_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_rule_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of role_rule
-- ----------------------------
INSERT INTO `role_rule` VALUES ('1', '1');
INSERT INTO `role_rule` VALUES ('1', '2');
INSERT INTO `role_rule` VALUES ('1', '3');
INSERT INTO `role_rule` VALUES ('1', '4');
INSERT INTO `role_rule` VALUES ('1', '5');
INSERT INTO `role_rule` VALUES ('1', '6');
INSERT INTO `role_rule` VALUES ('1', '7');
INSERT INTO `role_rule` VALUES ('1', '8');
INSERT INTO `role_rule` VALUES ('1', '9');
INSERT INTO `role_rule` VALUES ('1', '13');
INSERT INTO `role_rule` VALUES ('1', '14');
INSERT INTO `role_rule` VALUES ('1', '15');
INSERT INTO `role_rule` VALUES ('1', '16');
INSERT INTO `role_rule` VALUES ('1', '17');
INSERT INTO `role_rule` VALUES ('1', '18');
INSERT INTO `role_rule` VALUES ('1', '19');
INSERT INTO `role_rule` VALUES ('1', '20');
INSERT INTO `role_rule` VALUES ('1', '21');
INSERT INTO `role_rule` VALUES ('1', '22');
INSERT INTO `role_rule` VALUES ('1', '23');
INSERT INTO `role_rule` VALUES ('1', '24');
INSERT INTO `role_rule` VALUES ('1', '25');
INSERT INTO `role_rule` VALUES ('1', '26');
INSERT INTO `role_rule` VALUES ('1', '27');
INSERT INTO `role_rule` VALUES ('1', '28');
INSERT INTO `role_rule` VALUES ('1', '29');
INSERT INTO `role_rule` VALUES ('1', '30');
INSERT INTO `role_rule` VALUES ('1', '31');
INSERT INTO `role_rule` VALUES ('1', '32');
INSERT INTO `role_rule` VALUES ('1', '33');
INSERT INTO `role_rule` VALUES ('1', '34');
INSERT INTO `role_rule` VALUES ('1', '35');
INSERT INTO `role_rule` VALUES ('1', '36');
INSERT INTO `role_rule` VALUES ('1', '37');
INSERT INTO `role_rule` VALUES ('1', '38');
INSERT INTO `role_rule` VALUES ('1', '39');
INSERT INTO `role_rule` VALUES ('1', '40');
INSERT INTO `role_rule` VALUES ('1', '41');
INSERT INTO `role_rule` VALUES ('1', '42');
INSERT INTO `role_rule` VALUES ('1', '43');
INSERT INTO `role_rule` VALUES ('1', '44');
INSERT INTO `role_rule` VALUES ('1', '45');
INSERT INTO `role_rule` VALUES ('1', '46');
INSERT INTO `role_rule` VALUES ('1', '47');
INSERT INTO `role_rule` VALUES ('1', '48');
INSERT INTO `role_rule` VALUES ('1', '49');
INSERT INTO `role_rule` VALUES ('1', '50');
INSERT INTO `role_rule` VALUES ('1', '51');
INSERT INTO `role_rule` VALUES ('1', '52');
INSERT INTO `role_rule` VALUES ('1', '53');
INSERT INTO `role_rule` VALUES ('1', '54');
INSERT INTO `role_rule` VALUES ('1', '55');
INSERT INTO `role_rule` VALUES ('1', '56');

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `name` varchar(100) NOT NULL COMMENT 'url地址 c+a',
  `title` varchar(100) NOT NULL COMMENT '菜单名称',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `islink` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否菜单',
  `sort` int(3) NOT NULL DEFAULT '255' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rulename` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COMMENT='权限&菜单表';

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES ('1', '0', 'index/main', '主界面', 'glyphicon glyphicon-home', '1', '0');
INSERT INTO `rule` VALUES ('2', '0', 'role', '用户组权限管理', 'fa fa-users', '1', '1');
INSERT INTO `rule` VALUES ('3', '2', 'rule/index', '菜单管理', 'fa fa-th', '1', '2');
INSERT INTO `rule` VALUES ('4', '3', 'rule/add', '添加菜单', '', '0', '255');
INSERT INTO `rule` VALUES ('5', '3', 'rule/edit', '修改菜单', '', '0', '22');
INSERT INTO `rule` VALUES ('6', '3', 'rule/destroy', '菜单删除', '', '0', '255');
INSERT INTO `rule` VALUES ('7', '2', 'Role/index', '用户组管理', 'fa fa-users', '1', '255');
INSERT INTO `rule` VALUES ('8', '7', 'role/add', '添加用户组', '', '0', '255');
INSERT INTO `rule` VALUES ('9', '7', 'role/edit', '修改用户组', '', '0', '12');
INSERT INTO `rule` VALUES ('13', '0', 'profile', '个人中心', 'fa fa-user-secret', '1', '255');
INSERT INTO `rule` VALUES ('14', '13', 'personal/profile', '个人资料', 'fa fa-user-plus', '1', '255');
INSERT INTO `rule` VALUES ('15', '13', 'index/logout', '退出', 'fa fa-sign-out', '1', '255');
INSERT INTO `rule` VALUES ('16', '7', 'role/destroy', '删除用户组', '', '0', '255');
INSERT INTO `rule` VALUES ('17', '2', 'user/index', '后台用户管理', 'fa fa-user', '1', '255');
INSERT INTO `rule` VALUES ('18', '17', 'user/add', '添加后台用户', '', '0', '255');
INSERT INTO `rule` VALUES ('19', '17', 'user/edit', '修改后台用户', '', '0', '255');
INSERT INTO `rule` VALUES ('20', '17', 'user/destroy', '删除后台用户', '', '0', '255');
INSERT INTO `rule` VALUES ('21', '0', 'system', '系统设置', 'fa fa-cog', '1', '2');
INSERT INTO `rule` VALUES ('22', '21', 'databases/index', '数据库备份', 'fa fa-database', '1', '255');
INSERT INTO `rule` VALUES ('23', '22', 'databases/optimize', '优化表', '', '0', '255');
INSERT INTO `rule` VALUES ('24', '22', 'databases/repair', '数据修复', '', '0', '255');
INSERT INTO `rule` VALUES ('25', '22', 'databases/backup', '备份表', '', '0', '255');
INSERT INTO `rule` VALUES ('26', '21', 'variable/index', '自定义变量', 'fa fa-superscript', '1', '255');
INSERT INTO `rule` VALUES ('27', '26', 'variable/add', '添加变量', '', '0', '255');
INSERT INTO `rule` VALUES ('28', '26', 'variable/edit', '修改变量', '', '0', '255');
INSERT INTO `rule` VALUES ('29', '26', 'variable/set', '修改变量值', '', '0', '255');
INSERT INTO `rule` VALUES ('30', '26', 'upload/uploadpic', '编辑器上传', '', '0', '255');
INSERT INTO `rule` VALUES ('31', '0', 'other', '其他功能管理', 'fa fa-instagram', '1', '10');
INSERT INTO `rule` VALUES ('32', '31', 'links/index', '友情链接管理', 'fa fa-link', '1', '255');
INSERT INTO `rule` VALUES ('33', '32', 'links/add', '添加友情链接', '', '0', '255');
INSERT INTO `rule` VALUES ('34', '32', 'links/edit', '修改友情链接', '', '0', '255');
INSERT INTO `rule` VALUES ('35', '32', 'links/destroy', '删除友情链接', '', '0', '255');
INSERT INTO `rule` VALUES ('36', '31', 'focusposition/index', '焦点图位置', 'fa fa-play-circle', '1', '255');
INSERT INTO `rule` VALUES ('37', '36', 'focusposition/add', '添加焦点图位置', '', '0', '255');
INSERT INTO `rule` VALUES ('38', '36', 'focusposition/edit', '修改焦点图位置', '', '0', '255');
INSERT INTO `rule` VALUES ('39', '36', 'focusposition/destroy', '删除焦点图位置', '', '0', '255');
INSERT INTO `rule` VALUES ('40', '31', 'focus/index', '焦点图', 'fa fa-money', '1', '255');
INSERT INTO `rule` VALUES ('41', '40', 'focus/add', '添加焦点图', '', '0', '255');
INSERT INTO `rule` VALUES ('42', '40', 'focus/edit', '修改焦点图', '', '0', '255');
INSERT INTO `rule` VALUES ('43', '40', 'focus/destroy', '删除焦点图', '', '0', '255');
INSERT INTO `rule` VALUES ('44', '0', 'content', '内容管理', 'fa fa-newspaper-o', '1', '3');
INSERT INTO `rule` VALUES ('45', '44', 'page/index', '单页面管理', 'fa fa-pagelines', '1', '255');
INSERT INTO `rule` VALUES ('46', '45', 'page/add', '添加单页面', '', '0', '255');
INSERT INTO `rule` VALUES ('47', '45', 'page/edit', '修改单页面', '', '0', '255');
INSERT INTO `rule` VALUES ('48', '45', 'page/destroy', '删除单页面', '', '0', '255');
INSERT INTO `rule` VALUES ('49', '44', 'ariclecategory/index', '分类管理', 'fa fa-certificate', '1', '255');
INSERT INTO `rule` VALUES ('50', '49', 'ariclecategory/add', '添加文章分类', '', '0', '255');
INSERT INTO `rule` VALUES ('51', '49', 'ariclecategory/edit', '修改文章分类', '', '0', '255');
INSERT INTO `rule` VALUES ('52', '49', 'ariclecategory/destroy', '删除文章分类', '', '0', '255');
INSERT INTO `rule` VALUES ('53', '44', 'aricle/index', '文章管理', 'fa fa-book', '1', '255');
INSERT INTO `rule` VALUES ('54', '53', 'aricle/add', '添加文章', '', '0', '255');
INSERT INTO `rule` VALUES ('55', '53', 'aricle/edit', '修改文章', '', '0', '255');
INSERT INTO `rule` VALUES ('56', '53', 'aricle/destroy', '删除文章', '', '0', '255');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '用户姓名',
  `email` varchar(100) NOT NULL COMMENT '用户邮件地址',
  `password` varchar(64) NOT NULL COMMENT '用户密码',
  `role_id` int(11) NOT NULL COMMENT '用户角色',
  `status` tinyint(5) NOT NULL COMMENT '是否启用',
  `sex` tinyint(5) NOT NULL DEFAULT '0' COMMENT '0：保密 1：男 2：女',
  `head` varchar(150) DEFAULT NULL,
  `birthday` date DEFAULT '1000-01-01' COMMENT '生日',
  `tel` varchar(20) DEFAULT '' COMMENT '电话号码',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `user_role_id` (`role_id`),
  CONSTRAINT `user_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='后台用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '管理员', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '1', '\\static\\head\\20160612\\957b36ae60b452c7255afd38142fab87.jpg', '1991-04-03', '18620712325', '1461232560', '1465701620');

-- ----------------------------
-- Table structure for variable
-- ----------------------------
DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `key` varchar(100) NOT NULL COMMENT '变量',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `input_types` char(10) CHARACTER SET utf8 NOT NULL DEFAULT 'text' COMMENT '输入框类型 ',
  `check` varchar(50) DEFAULT 'required',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `k` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='自定义变量';

-- ----------------------------
-- Records of variable
-- ----------------------------
INSERT INTO `variable` VALUES ('default_image', '\\static\\value\\2016-05-31\\a32c0e5e0ba656dd3cc04182a9cd9c90.gif', '默认图片', 'image', '', '0', '0');
INSERT INTO `variable` VALUES ('xieyu', null, '坑底 ', 'editor', '', '0', '0');

-- ----------------------------
-- Table structure for variable_type
-- ----------------------------
DROP TABLE IF EXISTS `variable_type`;
CREATE TABLE `variable_type` (
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='自定义变量类型';

-- ----------------------------
-- Records of variable_type
-- ----------------------------
INSERT INTO `variable_type` VALUES ('editor', '编辑器');
INSERT INTO `variable_type` VALUES ('image', '图片上传');
INSERT INTO `variable_type` VALUES ('input', '单行文本框');
INSERT INTO `variable_type` VALUES ('textarea', '多行文本框');
