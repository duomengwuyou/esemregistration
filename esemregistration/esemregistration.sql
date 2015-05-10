/*
Navicat MySQL Data Transfer

Source Server         : testsql
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : esemregistration

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2015-05-10 20:41:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jiaofeiornot` varchar(255) DEFAULT '"no"',
  `beizhu` varchar(255) DEFAULT NULL,
  `title` varchar(11) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `otherposition` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `needinviforvisa` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `registtime` varchar(255) DEFAULT NULL,
  `counofciti` varchar(255) DEFAULT NULL,
  `passportnum` varchar(255) DEFAULT NULL,
  `cityvisaissue` varchar(255) DEFAULT NULL,
  `hardornot` varchar(255) DEFAULT NULL,
  `esemregisbefjune` varchar(255) DEFAULT NULL,
  `isernregisbefjune` varchar(255) DEFAULT NULL,
  `promiseregisbefjune` varchar(255) DEFAULT NULL,
  `iaseseregisbefjune` varchar(255) DEFAULT NULL,
  `idoeseregisbefjune` varchar(255) DEFAULT NULL,
  `esemregisaftjune` varchar(255) DEFAULT NULL,
  `isernregisaftjune` varchar(255) DEFAULT NULL,
  `promiseregisaftjune` varchar(255) DEFAULT NULL,
  `iaseseregisaftjune` varchar(255) DEFAULT NULL,
  `idoeseregisaftjune` varchar(255) DEFAULT NULL,
  `areyouauthor` varchar(255) DEFAULT NULL,
  `paperid` varchar(255) DEFAULT NULL,
  `papertitle` varchar(255) DEFAULT NULL,
  `specialneeds` varchar(255) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `totalmoney` varchar(255) DEFAULT NULL,
  `memberofieacm` varchar(255) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  `sesregisbefjune` varchar(255) DEFAULT NULL,
  `sesregisaftjune` varchar(255) DEFAULT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `v_pmode` varchar(255) DEFAULT NULL,
  `v_pstatus` varchar(255) DEFAULT NULL,
  `v_pstring` varchar(255) DEFAULT NULL,
  `v_amount` varchar(255) DEFAULT NULL,
  `v_moneytype` varchar(255) DEFAULT NULL,
  `ddate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('77', 'yes', '', 'Ms. ', 'xinglong', 'zhang', 'iscas', 'beijing', 'beijing', 'beijing', 'beijing', '100120', 'Afghanistan', 'long-long3@163.com', '123123123123', '123123', 'No', '2015-04-21', 'Male', 'Fri May 08 12:36:44 CST 2015', 'please...', 'please...', 'please...', 'no', '300', '66', null, null, null, null, null, null, null, null, 'No', 'please...', 'please...', '234', 'Credit card payment', '666', 'No', 'please...', '300', null, '20150508-77-20150508123644-570354   ', null, null, null, null, null, '20150508   ');
