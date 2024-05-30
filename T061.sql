/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t061`;
CREATE DATABASE IF NOT EXISTS `t061` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t061`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261805366 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-24 10:47:42', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-24 10:47:42', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-24 10:47:42', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-24 10:47:42', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-24 10:47:42', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-24 10:47:42', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1619261805365, '2021-04-24 10:56:44', 1619261761781, '广东省梅州市梅江区江南街道白马四巷作新小学', '陈一', '12312312312', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705799379826 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705799191272, '2024-01-21 01:06:30', 'shangpinxinxi', 11, 32, '商品名称2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 2, 99.9, 0),
	(1705799379825, '2024-01-21 01:09:38', 'shangpinxinxi', 11, 31, '商品名称1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 1, 99.9, 0);

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261995371 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(61, '2021-04-24 10:47:42', 1, 1, '提问1', '回复1', 1),
	(62, '2021-04-24 10:47:42', 2, 2, '提问2', '回复2', 2),
	(63, '2021-04-24 10:47:42', 3, 3, '提问3', '回复3', 3),
	(64, '2021-04-24 10:47:42', 4, 4, '提问4', '回复4', 4),
	(65, '2021-04-24 10:47:42', 5, 5, '提问5', '回复5', 5),
	(66, '2021-04-24 10:47:42', 6, 6, '提问6', '回复6', 6),
	(1619261936328, '2021-04-24 10:58:56', 1619261761781, NULL, '请问现在下单什么时候发货', NULL, 0),
	(1619261995370, '2021-04-24 10:59:54', 1619261761781, 1, NULL, '明天', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(2, 'picture2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(3, 'picture3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingdanpingjia`;
CREATE TABLE IF NOT EXISTS `dingdanpingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262179417 DEFAULT CHARSET=utf8mb3 COMMENT='订单评价';

DELETE FROM `dingdanpingjia`;
INSERT INTO `dingdanpingjia` (`id`, `addtime`, `dingdanbianhao`, `shangpinmingcheng`, `shangpinfenlei`, `pingfen`, `tianjiatupian`, `pingjianeirong`, `pingjiariqi`, `yonghuming`, `shouji`, `sfsh`, `shhf`) VALUES
	(41, '2021-04-24 10:47:42', '订单编号1', '商品名称1', '商品分类1', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容1', '2021-04-24', '用户名1', '手机1', '是', ''),
	(42, '2021-04-24 10:47:42', '订单编号2', '商品名称2', '商品分类2', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容2', '2021-04-24', '用户名2', '手机2', '是', ''),
	(43, '2021-04-24 10:47:42', '订单编号3', '商品名称3', '商品分类3', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容3', '2021-04-24', '用户名3', '手机3', '是', ''),
	(44, '2021-04-24 10:47:42', '订单编号4', '商品名称4', '商品分类4', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容4', '2021-04-24', '用户名4', '手机4', '是', ''),
	(45, '2021-04-24 10:47:42', '订单编号5', '商品名称5', '商品分类5', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容5', '2021-04-24', '用户名5', '手机5', '是', ''),
	(46, '2021-04-24 10:47:42', '订单编号6', '商品名称6', '商品分类6', '1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '评价内容6', '2021-04-24', '用户名6', '手机6', '是', ''),
	(1619262179416, '2021-04-24 11:02:58', '20214241859628187604', '肖战马克杯', '杯子', '5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '物流很快，杯子不错', '2021-04-24', '1', '12312312312', '是', '感谢支持');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-04-24 10:47:42', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-04-24 10:47:42', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-04-24 10:47:42', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-04-24 10:47:42', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-04-24 10:47:42', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-04-24 10:47:42', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261721182 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(111, '2021-04-24 10:47:42', '标题1', '简介1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>内容1</p>'),
	(112, '2021-04-24 10:47:42', '标题2', '简介2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>内容2</p>'),
	(113, '2021-04-24 10:47:42', '标题3', '简介3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>内容3</p>'),
	(114, '2021-04-24 10:47:42', '标题4', '简介4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容4'),
	(115, '2021-04-24 10:47:42', '标题5', '简介5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>内容5</p>'),
	(116, '2021-04-24 10:47:42', '标题6', '简介6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>内容6</p>'),
	(1619261721181, '2021-04-24 10:55:20', '商品优惠资讯', '商品优惠活动', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>全场商品参与618优惠活动，具体详见商品详情页</p><p><img src="http://localhost:8080/springboot60m3k/upload/1619261719470.jpg"></p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262100720 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`, `tel`, `consignee`) VALUES
	(1619261947031, '2021-04-24 10:59:06', '20214241859628187604', 'shangpinxinxi', 1619261761781, 1619261686914, '肖战马克杯', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 3, 59, 59, 177, 177, 1, '已完成', '广东省梅州市梅江区江南街道白马四巷作新小学', '12312312312', '陈一'),
	(1619262100719, '2021-04-24 11:01:39', '20214241913975053973', 'shangpinxinxi', 1619261761781, 34, '商品名称4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', 2, 99.9, 99.9, 199.8, 199.8, 1, '已支付', '广东省梅州市梅江区江南街道白马四巷作新小学', '12312312312', '陈一');

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261659178 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(21, '2021-04-24 10:47:42', '商品分类1'),
	(22, '2021-04-24 10:47:42', '商品分类2'),
	(23, '2021-04-24 10:47:42', '商品分类3'),
	(24, '2021-04-24 10:47:42', '商品分类4'),
	(25, '2021-04-24 10:47:42', '商品分类5'),
	(26, '2021-04-24 10:47:42', '商品分类6'),
	(1619261652794, '2021-04-24 10:54:12', '杯子'),
	(1619261659177, '2021-04-24 10:54:18', '抱枕');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261686915 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinfenlei`, `tupian`, `guige`, `shangpinxiangqing`, `clicktime`, `clicknum`, `price`, `onelimittimes`, `alllimittimes`) VALUES
	(31, '2021-04-24 10:47:42', '商品名称1', '商品分类1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格1', '<p>商品详情1</p>', '2024-01-21 09:09:38', 4, 99.9, 1, 99),
	(32, '2021-04-24 10:47:42', '商品名称2', '商品分类2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格2', '<p>商品详情2</p>', '2024-01-21 09:09:52', 6, 99.9, 2, 99),
	(34, '2021-04-24 10:47:42', '商品名称4', '商品分类4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格4', '<p>商品详情4</p>', '2021-04-24 19:01:47', 20, 99.9, 6, 0),
	(35, '2021-04-24 10:47:42', '商品名称5', '商品分类5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格5', '<p>商品详情5</p>', '2021-04-24 18:56:08', 8, 99.9, 5, 99),
	(36, '2021-04-24 10:47:42', '商品名称6', '商品分类6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格6', '商品详情6', '2021-04-24 18:47:42', 6, 99.9, 6, 99),
	(1619261686914, '2021-04-24 10:54:46', '肖战马克杯', '杯子', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '单支装', '<p>商品介绍</p><p><img src="http://localhost:8080/springboot60m3k/upload/1619261685304.jpg"></p>', '2021-04-24 18:59:14', 7, 59, 5, 47);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261910841 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'zrr8lx7epvnbao8akqn7maorylw7qct7', '2021-04-24 10:49:35', '2024-01-21 02:08:20'),
	(2, 1619261761781, '1', 'yonghu', '用户', 'c4wh61yhi3erm088yy23wdz7uz1wln7k', '2021-04-24 10:56:07', '2021-04-24 12:02:22'),
	(3, 11, '用户1', 'yonghu', '用户', '3jcrju8rs359cx6gw8f1z4sa1pjdb2ls', '2024-01-21 01:05:51', '2024-01-21 02:09:23');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-24 10:47:42');

DROP TABLE IF EXISTS `xiaoshoutongji`;
CREATE TABLE IF NOT EXISTS `xiaoshoutongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjine` int DEFAULT NULL COMMENT '总金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619262013246 DEFAULT CHARSET=utf8mb3 COMMENT='销售统计';

DELETE FROM `xiaoshoutongji`;
INSERT INTO `xiaoshoutongji` (`id`, `addtime`, `shangpinmingcheng`, `shangpinfenlei`, `tupian`, `guige`, `shuliang`, `jiage`, `zongjine`, `riqi`, `beizhu`) VALUES
	(51, '2021-04-24 10:47:42', '商品名称1', '商品分类1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格1', 1, 1, 1, '2021-04-24', '备注1'),
	(52, '2021-04-24 10:47:42', '商品名称2', '商品分类2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格2', 2, 2, 4, '2021-04-24', '备注2'),
	(53, '2021-04-24 10:47:42', '商品名称3', '商品分类3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格3', 3, 3, 3, '2021-04-24', '备注3'),
	(54, '2021-04-24 10:47:42', '商品名称4', '商品分类4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格4', 4, 4, 4, '2021-04-24', '备注4'),
	(55, '2021-04-24 10:47:42', '商品名称5', '商品分类5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格5', 5, 5, 5, '2021-04-24', '备注5'),
	(56, '2021-04-24 10:47:42', '商品名称6', '商品分类6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '规格6', 6, 6, 36, '2021-04-29', '备注6'),
	(1619262013245, '2021-04-24 11:00:12', '肖战马克杯', '杯子', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '单支装', 3, 59, 177, '2021-04-24', NULL);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619261761782 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `shouji`, `money`) VALUES
	(11, '2021-04-24 10:47:42', '用户1', '123456', '姓名1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888881', 100),
	(12, '2021-04-24 10:47:42', '用户2', '123456', '姓名2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888882', 100),
	(13, '2021-04-24 10:47:42', '用户3', '123456', '姓名3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888883', 100),
	(14, '2021-04-24 10:47:42', '用户4', '123456', '姓名4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888884', 100),
	(15, '2021-04-24 10:47:42', '用户5', '123456', '姓名5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888885', 100),
	(16, '2021-04-24 10:47:42', '用户6', '123456', '姓名6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888886', 100),
	(1619261761781, '2021-04-24 10:56:01', '1', '11', '陈一', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '女', '12312312312', 623.2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
