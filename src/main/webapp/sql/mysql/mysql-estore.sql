SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for es_customer
-- ----------------------------
DROP TABLE IF EXISTS `es_customer`;
CREATE TABLE `es_customer` (
	`id` int(7) NOT NULL AUTO_INCREMENT COMMENT '客户id',
	`name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户名字',
	`password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户密码',
	`zipCode` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户邮编',
	`address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户地址',
	`telephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户电话',
	`email` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户邮箱',
	PRIMARY KEY (`id`)
	)ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for es_book
-- ----------------------------
DROP TABLE IF EXISTS `es_book`;
CREATE TABLE `es_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍编号',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍名字',
  `price` double DEFAULT NULL COMMENT '书籍价格',
  `author` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍作者',
  `publisher` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍出版社',
  `pubDate` date DEFAULT NULL COMMENT '发布时间',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍描述',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '书籍图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_book
-- ----------------------------
INSERT INTO `es_book` VALUES ('1', '别做傻瓜', '20', '作者张三', '清华大学出版社', '2010-10-07', '文学1类', '8','bookcover/别做傻瓜.jpg');
INSERT INTO `es_book` VALUES ('2', '沉思录', '20', '作者张三', '长春工业出版社', '2010-10-07', '文学2类', '9','bookcover/沉思录.jpg');
INSERT INTO `es_book` VALUES ('3', '感悟', '20', '作者张三', '清华大学出版社', '2010-10-07', '文学3类', '10','bookcover/感悟.jpg');
INSERT INTO `es_book` VALUES ('4', '谁动了我的奶酪', '20', '作者张三', '长春工业出版社', '2010-10-07', '社会科学1类', '11','bookcover/谁动了我的奶酪.jpg');
INSERT INTO `es_book` VALUES ('5', '大勇和小花', '20', '作者张三', '清华大学出版社', '2010-10-07', '社会科学2类', '12','bookcover/大勇和小花.jpg');
INSERT INTO `es_book` VALUES ('6', '学会宽容', '20', '作者张三', '北京大学出版社', '2010-10-07', '社会科学3类', '13','bookcover/学会宽容.jpg');
INSERT INTO `es_book` VALUES ('7', '大勇和小花的欧洲日记', '20', '作者张三', '四川大学出版社', '2010-10-07', '小说1类', '14','bookcover/大勇和小花的欧洲日记.jpg');
INSERT INTO `es_book` VALUES ('8', '培育男孩', '20', '作者张三', '西安交大出版社', '2007-10-07', '小说2类', '15','bookcover/培育男孩.jpg');
INSERT INTO `es_book` VALUES ('9', '鱼的意大利旅行', '20', '作者张三', '北京大学出版社', '2010-10-07', '小说3类', '16','bookcover/鱼的意大利旅行.jpg');
INSERT INTO `es_book` VALUES ('10', '嵌入式Linux', '20', '作者张三', '北京工业大学出版社', '2010-10-07', '计算机1类', '17','bookcover/嵌入式Linux.jpg');
INSERT INTO `es_book` VALUES ('11', '数据库原理', '20', '作者张三', '厦门大学出版社', '2009-10-07', '计算机2类', '18', 'bookcover/数据库原理.jpg');
INSERT INTO `es_book` VALUES ('12', '深入浅出Oracle', '20', '作者张三', '北京大学出版社', '2010-10-07', '计算机3类', '19','bookcover/深入浅出Oracle.jpg');
INSERT INTO `es_book` VALUES ('13', '杜拉拉', '20', '作者张三', '上海交大出版社', '2010-10-07', '传记1类', '20','bookcover/杜拉拉.jpg');
INSERT INTO `es_book` VALUES ('14', 'oneplant', '20', '作者张三', '北京工业大学出版社', '2015-10-07', '传记2类', '21','bookcover/oneplant.jpg');
INSERT INTO `es_book` VALUES ('15', '大勇和小花', '20', '作者张三', '中南大学出版社', '2010-10-07', '传记3类', '22','bookcover/大勇和小花.jpg');
INSERT INTO `es_book` VALUES ('16', '搭地铁玩上海', '20', '作者张三', '复旦大学出版社', '2017-10-07', '历史1类', '23','bookcover/搭地铁玩上海.jpg');
INSERT INTO `es_book` VALUES ('17', '中国国家地理', '20', '作者张三', '中国海洋大学出版社', '2022-10-07', '历史2类', '24','bookcover/中国国家地理.jpg');
INSERT INTO `es_book` VALUES ('18', '中国自主游', '20', '作者张三', '华中师范出版社', '2010-10-07', '历史3类', '25','bookcover/中国自主游.jpg');
INSERT INTO `es_book` VALUES ('19', 'Don\'tMakeMeThink', '20', '作者张三', '复旦大学出版社', '2010-10-07', '文学1类', '26','bookcover/Don\'tMakeMeThink.jpg');
INSERT INTO `es_book` VALUES ('20', 'CodeGreen', '20', '作者张三', '华中师范出版社', '2010-10-07', '文学2类', '27','bookcover/CodeGreen.jpg');
INSERT INTO `es_book` VALUES ('21', 'travelbook', '20', '作者张三', '中国海洋大学出版社', '2010-10-07', '文学3类', '28','bookcover/travelbook.jpg');

-- ----------------------------
-- Table structure for es_category
-- ----------------------------
DROP TABLE IF EXISTS `es_category`;
CREATE TABLE `es_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍分类id',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '书籍分类名字',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '书籍分类描述',
  `parent_id` int(255) DEFAULT NULL COMMENT '父类id',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_category
-- ----------------------------
INSERT INTO `es_category` VALUES ('1', '文学', '文学的描述', '0');
INSERT INTO `es_category` VALUES ('2', '社会科学', '社会科学的描述', '0');
INSERT INTO `es_category` VALUES ('3', '计算机与互联网', '计算机与互联网的描述', '0');
INSERT INTO `es_category` VALUES ('4', '小说', '小说的描述', '0');
INSERT INTO `es_category` VALUES ('5', '传记', '传记的描述', '0');
INSERT INTO `es_category` VALUES ('6', '历史', '历史的描述', '0');
INSERT INTO `es_category` VALUES ('7', '医学', '医学的描述', '0');
INSERT INTO `es_category` VALUES ('8', '文学1类', '文学1类的描述', '1');
INSERT INTO `es_category` VALUES ('9', '文学2类', '文学2类的描述', '1');
INSERT INTO `es_category` VALUES ('10', '文学3类', '文学3类的描述', '1');
INSERT INTO `es_category` VALUES ('11', '社会科学1', '社会科学1类的描述', '2');
INSERT INTO `es_category` VALUES ('12', '社会科学2', '社会科学2类的描述', '2');
INSERT INTO `es_category` VALUES ('13', '社会科学3', '社会科学3类的描述', '2');
INSERT INTO `es_category` VALUES ('14', '小说1', '小说1类的描述', '3');
INSERT INTO `es_category` VALUES ('15', '小说2', '小说2类的描述', '3');
INSERT INTO `es_category` VALUES ('16', '小说3', '小说3类的描述', '3');
INSERT INTO `es_category` VALUES ('17', '计算机1', '计算机1类的描述', '4');
INSERT INTO `es_category` VALUES ('18', '计算机2', '计算机2类的描述', '4');
INSERT INTO `es_category` VALUES ('19', '计算机3', '计算机3类的描述', '4');
INSERT INTO `es_category` VALUES ('20', '传记1', '传记1类的描述', '5');
INSERT INTO `es_category` VALUES ('21', '传记2', '传记2类的描述', '5');
INSERT INTO `es_category` VALUES ('22', '传记3', '传记3类的描述', '5');
INSERT INTO `es_category` VALUES ('23', '历史类1', '历史1类的描述', '6');
INSERT INTO `es_category` VALUES ('24', '历史类2', '历史2类的描述', '6');
INSERT INTO `es_category` VALUES ('25', '历史类3', '历史3类的描述', '6');
INSERT INTO `es_category` VALUES ('26', '医学类1', '医学类1的描述', '7');
INSERT INTO `es_category` VALUES ('27', '医学类2', '医学2类的描述', '7');
INSERT INTO `es_category` VALUES ('28', '医学类3', '医学3类的描述', '7');

-- ----------------------------
-- Table structure for es_orderform
-- ----------------------------
DROP TABLE IF EXISTS `es_orderform`;
CREATE TABLE `es_orderform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `cost` double DEFAULT NULL COMMENT '订单花费',
  `orderDate` date DEFAULT NULL COMMENT '订单时间',
  `shopAddress_id` int(11) DEFAULT NULL COMMENT '收获地址id',
  `customer_id` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_orderform
-- ----------------------------

-- ----------------------------
-- Table structure for es_orderLine
-- ----------------------------
DROP TABLE IF EXISTS `es_orderline`;
CREATE TABLE `es_orderline` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单项id',
  `num` int(11) DEFAULT NULL COMMENT '商品数量',
  `cost` double DEFAULT NULL COMMENT '订单项花费',
  `book_id` int(11) DEFAULT NULL COMMENT '书籍id',
  `orderForm_id` int(11) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of es_orderLine
-- ----------------------------

-- ----------------------------
-- Table structure for es_shopAddress
-- ----------------------------
DROP TABLE IF EXISTS `es_shopaddress`;
CREATE TABLE `es_shopaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `receiveName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人姓名',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '收获地址',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '收获电话',
  `customer_id` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------a
-- Records of es_shopddress
-- ----------------------------
