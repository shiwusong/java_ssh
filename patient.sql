/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost
 Source Database       : patient

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : utf-8

 Date: 03/08/2018 13:34:05 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `DCM`
-- ----------------------------
DROP TABLE IF EXISTS `DCM`;
CREATE TABLE `DCM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `DCM`
-- ----------------------------
BEGIN;
INSERT INTO `DCM` VALUES ('1', 'bbmri-53323131'), ('2', 'bbmri-53323275'), ('3', 'bbmri-53323419'), ('4', 'bbmri-53323563'), ('5', 'bbmri-53323707'), ('6', 'bbmri-53323851'), ('7', 'dicompyler-ct.0'), ('8', 'dwv-test-anonymise'), ('9', 'dwv-test-sequence'), ('10', 'dwv-test-simple'), ('11', 'gdcm-CR-MONO1-10-chest'), ('12', 'gdcm-CT-MONO2-8-abdo'), ('13', 'gdcm-US-RGB-8-epicard'), ('14', 'gdcm-US-RGB-8-esopecho'), ('15', 'leadtools-8BitsJpegLossyGrayScale'), ('16', 'multiframe-test1'), ('17', 'nema-ct1_j2ki'), ('18', 'nema-ct1_jpll'), ('19', 'nema-mr1_jply'), ('20', 'nema-nm1_j2kr'), ('21', 'nema-nm1_jpll'), ('22', 'nema-nm1_jply'), ('23', 'nema-us1_j2ki'), ('24', 'nema-vl2_j2kr'), ('25', 'osirix-cerebrix'), ('26', 'osirix-goudurix'), ('27', 'osirix-toutatix-100'), ('28', 'osirix-toutatix-101');
COMMIT;

-- ----------------------------
--  Table structure for `patientDCM`
-- ----------------------------
DROP TABLE IF EXISTS `patientDCM`;
CREATE TABLE `patientDCM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) DEFAULT NULL,
  `DCMId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `patientDCM`
-- ----------------------------
BEGIN;
INSERT INTO `patientDCM` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '1', '3'), ('4', '1', '4'), ('5', '1', '5'), ('6', '1', '6'), ('7', '1', '7'), ('8', '1', '8'), ('9', '1', '9'), ('10', '1', '10'), ('11', '1', '11'), ('12', '1', '12'), ('13', '1', '13'), ('14', '1', '14');
COMMIT;

-- ----------------------------
--  Table structure for `patientVtk`
-- ----------------------------
DROP TABLE IF EXISTS `patientVtk`;
CREATE TABLE `patientVtk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) DEFAULT NULL,
  `vtkId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `patientVtk`
-- ----------------------------
BEGIN;
INSERT INTO `patientVtk` VALUES ('1', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `patients`
-- ----------------------------
DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sickness` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `patients`
-- ----------------------------
BEGIN;
INSERT INTO `patients` VALUES ('1', '石悟松', '选择恐惧症', '22', '男', '此人是编程工作者', '2018-03-07 16:28:45'), ('2', '刘兴', '神经衰弱', '22', '男', '此人是编程工作者', '2018-03-07 16:29:22'), ('3', '常青', '腰间盘突出', '22', '男', '此人是编程工作者', '2018-03-07 22:47:35');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', '石悟松', '123456');
COMMIT;

-- ----------------------------
--  Table structure for `vtk`
-- ----------------------------
DROP TABLE IF EXISTS `vtk`;
CREATE TABLE `vtk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `vtk`
-- ----------------------------
BEGIN;
INSERT INTO `vtk` VALUES ('1', 'Model.vtk');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
