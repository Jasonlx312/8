/*
Navicat MySQL Data Transfer

Source Server         : mydatabase
Source Server Version : 50145
Source Host           : localhost:3306
Source Database       : houses

Target Server Type    : MYSQL
Target Server Version : 50145
File Encoding         : 65001

Date: 2020-04-23 01:22:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_sex` varchar(255) DEFAULT NULL,
  `admin_age` int(11) DEFAULT NULL,
  `admin_tel` varchar(255) DEFAULT NULL,
  `admin_phone` varchar(255) DEFAULT NULL,
  `admin_addr` varchar(255) DEFAULT NULL,
  `admin_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminID`),
  KEY `FK3C3132FC5A52E05` (`adminID`),
  CONSTRAINT `FK3C3132FC5A52E05` FOREIGN KEY (`adminID`) REFERENCES `admin_account` (`admin_accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'aaa', '男', '23', '027-88888888', '1311111111', 'XXXXXXX', '系统管理员系统管理员系统管理员系统管理员系统管理员系统管理员系统管理员系统管理员系统管理员');

-- ----------------------------
-- Table structure for `admin_account`
-- ----------------------------
DROP TABLE IF EXISTS `admin_account`;
CREATE TABLE `admin_account` (
  `admin_accountID` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_account
-- ----------------------------
INSERT INTO `admin_account` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `custom_account`
-- ----------------------------
DROP TABLE IF EXISTS `custom_account`;
CREATE TABLE `custom_account` (
  `custom_accountID` int(11) NOT NULL AUTO_INCREMENT,
  `custom_username` varchar(255) DEFAULT NULL,
  `custom_password` varchar(255) DEFAULT NULL,
  `custom_yezhuID` int(11) DEFAULT NULL,
  PRIMARY KEY (`custom_accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_account
-- ----------------------------
INSERT INTO `custom_account` VALUES ('2', 'diaoc', 'abc123', '1');


-- ----------------------------
-- Table structure for `homes`
-- ----------------------------
DROP TABLE IF EXISTS `homes`;
CREATE TABLE `homes` (
  `homesID` int(11) NOT NULL AUTO_INCREMENT,
  `homes_number` varchar(255) DEFAULT NULL,
  `homes_lou` varchar(255) DEFAULT NULL,
  `homes_type` varchar(255) DEFAULT NULL,
  `homes_area` int(11) DEFAULT NULL,
  `homes_sell` varchar(255) DEFAULT NULL,
  `homes_danyuan` varchar(255) DEFAULT NULL,
  `homes_louceng` varchar(255) DEFAULT NULL,
  `homes_chaoxiang` varchar(255) DEFAULT NULL,
  `homes_memo` varchar(255) DEFAULT NULL,
  `homes_yezhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`homesID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homes
-- ----------------------------
INSERT INTO `homes` VALUES ('' );

-- ----------------------------
-- Table structure for `lvhua`
-- ----------------------------
DROP TABLE IF EXISTS `lvhua`;
CREATE TABLE `lvhua` (
  `lvhuaID` int(11) NOT NULL AUTO_INCREMENT,
  `lvhua_area` varchar(255) DEFAULT NULL,
  `lvhua_style` varchar(255) DEFAULT NULL,
  `lvhua_fuzheren` varchar(255) DEFAULT NULL,
  `lvhua_date` datetime DEFAULT NULL,
  `lvhua_status` varchar(255) DEFAULT NULL,
  `lvhua_yanshouren` varchar(255) DEFAULT NULL,
  `lvhua_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lvhuaID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lvhua
-- ----------------------------
INSERT INTO `lvhua` VALUES ('');

-- ----------------------------
-- Table structure for `maintain`
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain` (
  `maintainID` int(11) NOT NULL AUTO_INCREMENT,
  `maintain_thing` varchar(255) DEFAULT NULL,
  `maintain_status` varchar(255) DEFAULT NULL,
  `maintain_homesnumber` varchar(255) DEFAULT NULL,
  `maintain_sdate` datetime DEFAULT NULL,
  `maintain_rdate` datetime DEFAULT NULL,
  `maintain_tcost` int(11) DEFAULT NULL,
  `maintain_scost` int(11) DEFAULT NULL,
  `maintainer` varchar(255) DEFAULT NULL,
  `maintain_smemo` varchar(255) DEFAULT NULL,
  `maintain_rmemo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`maintainID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain
-- ----------------------------
INSERT INTO `maintain` VALUES ('');
8', '2020

-- ----------------------------
-- Table structure for `notify`
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `notifyID` int(11) NOT NULL AUTO_INCREMENT,
  `notify_content` varchar(2000) DEFAULT NULL,
  `notify_date` datetime DEFAULT NULL,
  `notify_title` varchar(255) DEFAULT NULL,
  `notify_uper` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notifyID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES ('1', '');
INSERT INTO `notify` VALUES ('2', ''); 
-- ----------------------------
-- Table structure for `personnel`
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel` (
  `personnelID` int(11) NOT NULL AUTO_INCREMENT,
  `personnel_name` varchar(255) DEFAULT NULL,
  `personnel_age` int(11) DEFAULT NULL,
  `personnel_sex` varchar(255) DEFAULT NULL,
  `personnel_idcard` varchar(255) DEFAULT NULL,
  `personnel_jiguan` varchar(255) DEFAULT NULL,
  `personnel_phone` varchar(255) DEFAULT NULL,
  `personnel_addr` varchar(255) DEFAULT NULL,
  `personnel_xueli` varchar(255) DEFAULT NULL,
  `personnel_gongling` varchar(255) DEFAULT NULL,
  `personnel_oldwork` varchar(255) DEFAULT NULL,
  `personnel_daozhidate` datetime DEFAULT NULL,
  `personnel_lizhidate` datetime DEFAULT NULL,
  `personnel_worktype` varchar(255) DEFAULT NULL,
  `personnel_daozhimemo` varchar(255) DEFAULT NULL,
  `personnel_lizhimemo` varchar(255) DEFAULT NULL,
  `personnel_status` varchar(255) DEFAULT NULL,
  `personnel_update` datetime DEFAULT NULL,
  PRIMARY KEY (`personnelID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES ('');

-- ----------------------------
-- Table structure for `cars`
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `carowner` varchar(255) DEFAULT NULL,        -- 车主
  `carspace` varchar(255) DEFAULT NULL,        -- 车位
  `housenumber` varchar(255) DEFAULT NULL,     -- 门牌号
  `licensenumber` varchar(255) DEFAULT NULL,   -- 车牌号
  `contactway` varchar(255) DEFAULT NULL,      -- 联系方式
  `carmsg` varchar(255) DEFAULT null,          -- 车辆信息
  `enddate` datetime DEFAULT NULL,             -- 车位到期时间
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('');

-- ----------------------------
-- Table structure for `wuyefei`
-- ----------------------------
DROP TABLE IF EXISTS `wuyefei`;
CREATE TABLE `wuyefei` (
  `wuyefeiID` int(11) NOT NULL AUTO_INCREMENT,
  `wuyefei_yezhu` varchar(255) DEFAULT NULL,
  `wuyefei_homes_number` varchar(255) DEFAULT NULL,
  `wuyefei_danjia` double DEFAULT NULL,
  `wuyefei_status` varchar(255) DEFAULT NULL,
  `wuyefei_year` varchar(255) DEFAULT NULL,
  `wuyefei_month` varchar(255) DEFAULT NULL,
  `wuyefei_money` double DEFAULT NULL,
  `wuyefei_date` datetime DEFAULT NULL,
  `wuyefei_uper` varchar(255) DEFAULT NULL,
  `wuyefei_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wuyefeiID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wuyefei
-- ----------------------------
INSERT INTO `wuyefei` VALUES ('1');
-- Table structure for `xuncha`
-- ----------------------------
DROP TABLE IF EXISTS `xuncha`;
CREATE TABLE `xuncha` (
  `xunchaID` int(11) NOT NULL AUTO_INCREMENT,
  `xuncha_person` varchar(255) DEFAULT NULL,
  `xuncha_type` varchar(255) DEFAULT NULL,
  `xuncha_time` datetime DEFAULT NULL,
  `xuncha_chuliren` varchar(255) DEFAULT NULL,
  `xuncha_dangshiren` varchar(255) DEFAULT NULL,
  `xuncha_result` varchar(255) DEFAULT NULL,
  `xuncha_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`xunchaID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuncha
-- ----------------------------
INSERT INTO `xuncha` VALUES ('1')

-- ----------------------------
-- Table structure for `yezhu`
-- ----------------------------
DROP TABLE IF EXISTS `yezhu`;
CREATE TABLE `yezhu` (
  `yezhuID` int(11) NOT NULL AUTO_INCREMENT,
  `yezhu_homesnumber` varchar(255) DEFAULT NULL,
  `yezhu_name` varchar(255) DEFAULT NULL,
  `yezhu_sex` varchar(255) DEFAULT NULL,
  `yezhu_age` int(11) DEFAULT NULL,
  `yezhu_tel` varchar(255) DEFAULT NULL,
  `yezhu_phone` varchar(255) DEFAULT NULL,
  `yezhu_IDC` varchar(255) DEFAULT NULL,
  `yezhu_member` varchar(255) DEFAULT NULL,
  `yezhu_date` datetime DEFAULT NULL,
  `yezhu_memo` varchar(255) DEFAULT NULL,
  `yezhu_custom_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`yezhuID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yezhu
-- ----------------------------
INSERT INTO `yezhu` VALUES ('2')