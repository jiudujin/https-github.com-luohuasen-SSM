/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-05-13 23:45:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1001', '一年級');
INSERT INTO `grade` VALUES ('1002', '二年級');
INSERT INTO `grade` VALUES ('1003', '三年級');
INSERT INTO `grade` VALUES ('1004', '四年級');
INSERT INTO `grade` VALUES ('1005', '五年級');
INSERT INTO `grade` VALUES ('1006', '六年級');
INSERT INTO `grade` VALUES ('2001', '初一');
INSERT INTO `grade` VALUES ('2002', '初二');
INSERT INTO `grade` VALUES ('2003', '初三');
INSERT INTO `grade` VALUES ('3001', '高一');
INSERT INTO `grade` VALUES ('3002', '高二');
INSERT INTO `grade` VALUES ('3003', '高三');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('00000001', '罗华森', '男', '26');
INSERT INTO `person` VALUES ('00000002', '刘改云', '女', '25');
INSERT INTO `person` VALUES ('00000003', '祝亚丽', '男', '26');
INSERT INTO `person` VALUES ('00000004', '赵淑静', '女', '25');
INSERT INTO `person` VALUES ('00000005', '冷亚男', '女', '26');
INSERT INTO `person` VALUES ('00000006', '王亚会', '男', '26');
INSERT INTO `person` VALUES ('00000007', '徐华杰', '男', '26');
INSERT INTO `person` VALUES ('00000008', '牛亚玲', '女', '25');
INSERT INTO `person` VALUES ('00000009', '陈俊', '男', '26');
INSERT INTO `person` VALUES ('00000010', '庄川', '男', '23');
INSERT INTO `person` VALUES ('00000011', '某某同学', '女', '12');
INSERT INTO `person` VALUES ('00000012', '某某同学', '男', '13');
INSERT INTO `person` VALUES ('00000013', '某某同学', '女', '11');
INSERT INTO `person` VALUES ('00000014', '某某同学', '男', '7');
INSERT INTO `person` VALUES ('00000015', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000016', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000017', '某某同学', '女', '15');
INSERT INTO `person` VALUES ('00000018', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000019', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000020', '某某同学', '男', '7');
INSERT INTO `person` VALUES ('00000021', '某某同学', '女', '13');
INSERT INTO `person` VALUES ('00000022', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000023', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000024', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000025', '某某同学', '女', '17');
INSERT INTO `person` VALUES ('00000026', '某某同学', '男', '14');
INSERT INTO `person` VALUES ('00000027', '某某同学', '女', '7');
INSERT INTO `person` VALUES ('00000028', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000029', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000030', '某某同学', '男', '18');
INSERT INTO `person` VALUES ('00000031', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000032', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000033', '某某同学', '女', '17');
INSERT INTO `person` VALUES ('00000034', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000035', '某某同学', '女', '12');
INSERT INTO `person` VALUES ('00000036', '某某同学', '男', '8');
INSERT INTO `person` VALUES ('00000037', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000038', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000039', '某某同学', '女', '11');
INSERT INTO `person` VALUES ('00000040', '某某同学', '男', '13');
INSERT INTO `person` VALUES ('00000041', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000042', '某某同学', '男', '11');
INSERT INTO `person` VALUES ('00000043', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000044', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000045', '某某同学', '女', '13');
INSERT INTO `person` VALUES ('00000046', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000047', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000048', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000049', '某某同学', '女', '13');
INSERT INTO `person` VALUES ('00000050', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000051', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000052', '某某同学', '男', '11');
INSERT INTO `person` VALUES ('00000053', '某某同学', '女', '11');
INSERT INTO `person` VALUES ('00000054', '某某同学', '男', '14');
INSERT INTO `person` VALUES ('00000055', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000056', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000057', '某某同学', '女', '14');
INSERT INTO `person` VALUES ('00000058', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000059', '某某同学', '女', '13');
INSERT INTO `person` VALUES ('00000060', '某某同学', '男', '9');
INSERT INTO `person` VALUES ('00000061', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000062', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000063', '某某同学', '女', '14');
INSERT INTO `person` VALUES ('00000064', '某某同学', '男', '7');
INSERT INTO `person` VALUES ('00000065', '某某同学', '女', '8');
INSERT INTO `person` VALUES ('00000066', '某某同学', '男', '13');
INSERT INTO `person` VALUES ('00000067', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000068', '某某同学', '男', '13');
INSERT INTO `person` VALUES ('00000069', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000070', '某某同学', '男', '14');
INSERT INTO `person` VALUES ('00000071', '某某同学', '女', '7');
INSERT INTO `person` VALUES ('00000072', '某某同学', '男', '9');
INSERT INTO `person` VALUES ('00000073', '某某同学', '女', '16');
INSERT INTO `person` VALUES ('00000074', '某某同学', '男', '9');
INSERT INTO `person` VALUES ('00000075', '某某同学', '女', '8');
INSERT INTO `person` VALUES ('00000076', '某某同学', '男', '13');
INSERT INTO `person` VALUES ('00000077', '某某同学', '女', '11');
INSERT INTO `person` VALUES ('00000078', '某某同学', '男', '11');
INSERT INTO `person` VALUES ('00000079', '某某同学', '女', '15');
INSERT INTO `person` VALUES ('00000080', '某某同学', '男', '9');
INSERT INTO `person` VALUES ('00000081', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000082', '某某同学', '男', '11');
INSERT INTO `person` VALUES ('00000083', '某某同学', '女', '14');
INSERT INTO `person` VALUES ('00000084', '某某同学', '男', '15');
INSERT INTO `person` VALUES ('00000085', '某某同学', '女', '8');
INSERT INTO `person` VALUES ('00000086', '某某同学', '男', '11');
INSERT INTO `person` VALUES ('00000087', '某某同学', '女', '19');
INSERT INTO `person` VALUES ('00000088', '某某同学', '男', '19');
INSERT INTO `person` VALUES ('00000089', '某某同学', '女', '17');
INSERT INTO `person` VALUES ('00000090', '某某同学', '男', '14');
INSERT INTO `person` VALUES ('00000091', '某某同学', '女', '10');
INSERT INTO `person` VALUES ('00000092', '某某同学', '男', '9');
INSERT INTO `person` VALUES ('00000093', '某某同学', '女', '14');
INSERT INTO `person` VALUES ('00000094', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000095', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000096', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000097', '某某同学', '女', '7');
INSERT INTO `person` VALUES ('00000098', '某某同学', '男', '16');
INSERT INTO `person` VALUES ('00000099', '某某同学', '女', '9');
INSERT INTO `person` VALUES ('00000100', '某某同学', '男', '18');
INSERT INTO `person` VALUES ('00000101', '丁守正', '男', '30');
INSERT INTO `person` VALUES ('00000102', '范素英', '女', '52');
INSERT INTO `person` VALUES ('00000103', '高军', '男', '50');
INSERT INTO `person` VALUES ('00000104', '曹艳春', '女', '34');
INSERT INTO `person` VALUES ('00000105', '梁秋芳', '女', '51');
INSERT INTO `person` VALUES ('00000106', '张洪明', '男', '33');
INSERT INTO `person` VALUES ('00000107', '左少权', '男', '44');
INSERT INTO `person` VALUES ('00000108', '李洁', '女', '31');
INSERT INTO `person` VALUES ('00000109', '李杰', '男', '52');
INSERT INTO `person` VALUES ('00000110', '孙秀春', '男', '48');
INSERT INTO `person` VALUES ('00000111', '张鸿记', '男', '55');
INSERT INTO `person` VALUES ('00000112', '某某老师', '女', '46');
INSERT INTO `person` VALUES ('00000113', '某某老师', '男', '52');
INSERT INTO `person` VALUES ('00000114', '某某老师', '女', '42');
INSERT INTO `person` VALUES ('00000115', '某某老师', '男', '32');
INSERT INTO `person` VALUES ('00000116', '某某老师', '女', '33');
INSERT INTO `person` VALUES ('00000117', '某某老师', '男', '34');
INSERT INTO `person` VALUES ('00000118', '某某老师', '女', '58');
INSERT INTO `person` VALUES ('00000119', '某某老师', '男', '43');
INSERT INTO `person` VALUES ('00000120', '某某老师', '女', '58');
INSERT INTO `person` VALUES ('00000121', '某某老师', '男', '40');
INSERT INTO `person` VALUES ('00000122', '某某老师', '女', '50');
INSERT INTO `person` VALUES ('00000123', '某某老师', '男', '50');
INSERT INTO `person` VALUES ('00000124', '某某老师', '女', '32');
INSERT INTO `person` VALUES ('00000125', '某某老师', '男', '34');
INSERT INTO `person` VALUES ('00000126', '某某老师', '女', '41');
INSERT INTO `person` VALUES ('00000127', '某某老师', '男', '52');
INSERT INTO `person` VALUES ('00000128', '某某老师', '女', '30');
INSERT INTO `person` VALUES ('00000129', '某某老师', '男', '47');
INSERT INTO `person` VALUES ('00000130', '某某老师', '女', '32');
INSERT INTO `person` VALUES ('00000131', '某某老师', '男', '35');
INSERT INTO `person` VALUES ('00000132', '某某老师', '女', '57');
INSERT INTO `person` VALUES ('00000133', '某某老师', '男', '46');
INSERT INTO `person` VALUES ('00000134', '某某老师', '女', '43');
INSERT INTO `person` VALUES ('00000135', '某某老师', '男', '39');
INSERT INTO `person` VALUES ('00000136', '某某老师', '女', '32');
INSERT INTO `person` VALUES ('00000137', '某某老师', '男', '46');
INSERT INTO `person` VALUES ('00000138', '某某老师', '女', '45');
INSERT INTO `person` VALUES ('00000139', '某某老师', '男', '37');
INSERT INTO `person` VALUES ('00000140', '某某老师', '女', '33');
INSERT INTO `person` VALUES ('00000141', '某某老师', '男', '34');
INSERT INTO `person` VALUES ('00000142', '某某老师', '女', '47');
INSERT INTO `person` VALUES ('00000143', '某某老师', '男', '32');
INSERT INTO `person` VALUES ('00000144', '某某老师', '女', '32');
INSERT INTO `person` VALUES ('00000145', '某某老师', '男', '33');
INSERT INTO `person` VALUES ('00000146', '某某老师', '女', '39');
INSERT INTO `person` VALUES ('00000147', '某某老师', '男', '52');
INSERT INTO `person` VALUES ('00000148', '某某老师', '女', '47');
INSERT INTO `person` VALUES ('00000149', '某某老师', '男', '32');
INSERT INTO `person` VALUES ('00000150', '某某老师', '女', '37');
INSERT INTO `person` VALUES ('00000151', '某某老师', '男', '54');
INSERT INTO `person` VALUES ('00000152', '某某老师', '女', '44');
INSERT INTO `person` VALUES ('00000153', '某某老师', '男', '45');
INSERT INTO `person` VALUES ('00000154', '某某老师', '女', '39');
INSERT INTO `person` VALUES ('00000155', '某某老师', '男', '53');
INSERT INTO `person` VALUES ('00000156', '某某老师', '女', '33');
INSERT INTO `person` VALUES ('00000157', '某某老师', '男', '33');
INSERT INTO `person` VALUES ('00000158', '某某老师', '女', '39');
INSERT INTO `person` VALUES ('00000159', '某某老师', '男', '56');
INSERT INTO `person` VALUES ('00000160', '某某老师', '女', '51');
INSERT INTO `person` VALUES ('00000161', '某某老师', '男', '57');
INSERT INTO `person` VALUES ('00000162', '某某老师', '女', '33');
INSERT INTO `person` VALUES ('00000163', '某某老师', '男', '57');
INSERT INTO `person` VALUES ('00000164', '某某老师', '女', '34');
INSERT INTO `person` VALUES ('00000165', '某某老师', '男', '55');
INSERT INTO `person` VALUES ('00000166', '某某老师', '女', '58');
INSERT INTO `person` VALUES ('00000167', '某某老师', '男', '44');
INSERT INTO `person` VALUES ('00000168', '某某老师', '女', '44');
INSERT INTO `person` VALUES ('00000169', '某某老师', '男', '56');
INSERT INTO `person` VALUES ('00000170', '某某老师', '女', '39');
INSERT INTO `person` VALUES ('00000171', '某某老师', '男', '58');
INSERT INTO `person` VALUES ('00000172', '某某老师', '女', '44');
INSERT INTO `person` VALUES ('00000173', '某某老师', '男', '50');
INSERT INTO `person` VALUES ('00000174', '某某老师', '女', '43');
INSERT INTO `person` VALUES ('00000175', '某某老师', '男', '52');
INSERT INTO `person` VALUES ('00000176', '某某老师', '女', '34');
INSERT INTO `person` VALUES ('00000177', '某某老师', '男', '58');
INSERT INTO `person` VALUES ('00000178', '某某老师', '女', '56');
INSERT INTO `person` VALUES ('00000179', '某某老师', '男', '34');
INSERT INTO `person` VALUES ('00000180', '某某老师', '女', '55');
INSERT INTO `person` VALUES ('00000181', '某某老师', '男', '46');
INSERT INTO `person` VALUES ('00000182', '某某老师', '女', '34');
INSERT INTO `person` VALUES ('00000183', '某某老师', '男', '33');
INSERT INTO `person` VALUES ('00000184', '某某老师', '女', '43');
INSERT INTO `person` VALUES ('00000185', '某某老师', '男', '54');
INSERT INTO `person` VALUES ('00000186', '某某老师', '女', '34');
INSERT INTO `person` VALUES ('00000187', '某某老师', '男', '42');
INSERT INTO `person` VALUES ('00000188', '某某老师', '女', '47');
INSERT INTO `person` VALUES ('00000189', '某某老师', '男', '34');
INSERT INTO `person` VALUES ('00000190', '某某老师', '女', '47');
INSERT INTO `person` VALUES ('00000191', '某某老师', '男', '59');
INSERT INTO `person` VALUES ('00000192', '某某老师', '女', '41');
INSERT INTO `person` VALUES ('00000193', '某某老师', '男', '48');
INSERT INTO `person` VALUES ('00000194', '某某老师', '女', '32');
INSERT INTO `person` VALUES ('00000195', '某某老师', '男', '37');
INSERT INTO `person` VALUES ('00000196', '某某老师', '女', '31');
INSERT INTO `person` VALUES ('00000197', '某某老师', '男', '42');
INSERT INTO `person` VALUES ('00000198', '某某老师', '女', '52');
INSERT INTO `person` VALUES ('00000199', '某某老师', '男', '44');
INSERT INTO `person` VALUES ('00000200', '某某老师', '女', '44');
INSERT INTO `person` VALUES ('00000201', '某某老师', '男', '31');

-- ----------------------------
-- Table structure for squad
-- ----------------------------
DROP TABLE IF EXISTS `squad`;
CREATE TABLE `squad` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of squad
-- ----------------------------
INSERT INTO `squad` VALUES ('100101', '1001', '一年級一班');
INSERT INTO `squad` VALUES ('100102', '1001', '一年級二班');
INSERT INTO `squad` VALUES ('100103', '1001', '一年級三班');
INSERT INTO `squad` VALUES ('100104', '1001', '一年級四班');
INSERT INTO `squad` VALUES ('100105', '1001', '一年級五班');
INSERT INTO `squad` VALUES ('100106', '1001', '一年級六班');
INSERT INTO `squad` VALUES ('100107', '1001', '一年級七班');
INSERT INTO `squad` VALUES ('100108', '1001', '一年級八班');
INSERT INTO `squad` VALUES ('100109', '1001', '一年級九班');
INSERT INTO `squad` VALUES ('100201', '1002', '二年級一班');
INSERT INTO `squad` VALUES ('100202', '1002', '二年級二班');
INSERT INTO `squad` VALUES ('100203', '1002', '二年級三班');
INSERT INTO `squad` VALUES ('100204', '1002', '二年級四班');
INSERT INTO `squad` VALUES ('100205', '1002', '二年級五班');
INSERT INTO `squad` VALUES ('100206', '1002', '二年級六班');
INSERT INTO `squad` VALUES ('100207', '1002', '二年級七班');
INSERT INTO `squad` VALUES ('100208', '1002', '二年級八班');
INSERT INTO `squad` VALUES ('100209', '1002', '二年級九班');
INSERT INTO `squad` VALUES ('100301', '1003', '三年級一班');
INSERT INTO `squad` VALUES ('100302', '1003', '三年級二班');
INSERT INTO `squad` VALUES ('100303', '1003', '三年級三班');
INSERT INTO `squad` VALUES ('100304', '1003', '三年級四班');
INSERT INTO `squad` VALUES ('100305', '1003', '三年級五班');
INSERT INTO `squad` VALUES ('100306', '1003', '三年級六班');
INSERT INTO `squad` VALUES ('100307', '1003', '三年級七班');
INSERT INTO `squad` VALUES ('100308', '1003', '三年級八班');
INSERT INTO `squad` VALUES ('100309', '1003', '三年級九班');
INSERT INTO `squad` VALUES ('100401', '1004', '四年級一班');
INSERT INTO `squad` VALUES ('100402', '1004', '四年級二班');
INSERT INTO `squad` VALUES ('100403', '1004', '四年級三班');
INSERT INTO `squad` VALUES ('100404', '1004', '四年級四班');
INSERT INTO `squad` VALUES ('100405', '1004', '四年級五班');
INSERT INTO `squad` VALUES ('100406', '1004', '四年級六班');
INSERT INTO `squad` VALUES ('100407', '1004', '四年級七班');
INSERT INTO `squad` VALUES ('100408', '1004', '四年級八班');
INSERT INTO `squad` VALUES ('100409', '1004', '四年級九班');
INSERT INTO `squad` VALUES ('100501', '1005', '五年級一班');
INSERT INTO `squad` VALUES ('100502', '1005', '五年級二班');
INSERT INTO `squad` VALUES ('100503', '1005', '五年級三班');
INSERT INTO `squad` VALUES ('100504', '1005', '五年級四班');
INSERT INTO `squad` VALUES ('100505', '1005', '五年級五班');
INSERT INTO `squad` VALUES ('100506', '1005', '五年級六班');
INSERT INTO `squad` VALUES ('100507', '1005', '五年級七班');
INSERT INTO `squad` VALUES ('100508', '1005', '五年級八班');
INSERT INTO `squad` VALUES ('100509', '1005', '五年級九班');
INSERT INTO `squad` VALUES ('100601', '1006', '六年級一班');
INSERT INTO `squad` VALUES ('100602', '1006', '六年級二班');
INSERT INTO `squad` VALUES ('100603', '1006', '六年級三班');
INSERT INTO `squad` VALUES ('100604', '1006', '六年級四班');
INSERT INTO `squad` VALUES ('100605', '1006', '六年級五班');
INSERT INTO `squad` VALUES ('100606', '1006', '六年級六班');
INSERT INTO `squad` VALUES ('100607', '1006', '六年級七班');
INSERT INTO `squad` VALUES ('100608', '1006', '六年級八班');
INSERT INTO `squad` VALUES ('100609', '1006', '六年級九班');
INSERT INTO `squad` VALUES ('200101', '2001', '初一一班');
INSERT INTO `squad` VALUES ('200102', '2001', '初一二班');
INSERT INTO `squad` VALUES ('200103', '2001', '初一三班');
INSERT INTO `squad` VALUES ('200104', '2001', '初一四班');
INSERT INTO `squad` VALUES ('200105', '2001', '初一五班');
INSERT INTO `squad` VALUES ('200106', '2001', '初一六班');
INSERT INTO `squad` VALUES ('200107', '2001', '初一七班');
INSERT INTO `squad` VALUES ('200108', '2001', '初一八班');
INSERT INTO `squad` VALUES ('200109', '2001', '初一九班');
INSERT INTO `squad` VALUES ('200201', '2002', '初二一班');
INSERT INTO `squad` VALUES ('200202', '2002', '初二二班');
INSERT INTO `squad` VALUES ('200203', '2002', '初二三班');
INSERT INTO `squad` VALUES ('200204', '2002', '初二四班');
INSERT INTO `squad` VALUES ('200205', '2002', '初二五班');
INSERT INTO `squad` VALUES ('200206', '2002', '初二六班');
INSERT INTO `squad` VALUES ('200207', '2002', '初二七班');
INSERT INTO `squad` VALUES ('200208', '2002', '初二八班');
INSERT INTO `squad` VALUES ('200209', '2002', '初二九班');
INSERT INTO `squad` VALUES ('200301', '2003', '初三一班');
INSERT INTO `squad` VALUES ('200302', '2003', '初三二班');
INSERT INTO `squad` VALUES ('200303', '2003', '初三三班');
INSERT INTO `squad` VALUES ('200304', '2003', '初三四班');
INSERT INTO `squad` VALUES ('200305', '2003', '初三五班');
INSERT INTO `squad` VALUES ('200306', '2003', '初三六班');
INSERT INTO `squad` VALUES ('200307', '2003', '初三七班');
INSERT INTO `squad` VALUES ('200308', '2003', '初三八班');
INSERT INTO `squad` VALUES ('200309', '2003', '初三九班');
INSERT INTO `squad` VALUES ('300101', '3001', '高一一班');
INSERT INTO `squad` VALUES ('300102', '3001', '高一二班');
INSERT INTO `squad` VALUES ('300103', '3001', '高一三班');
INSERT INTO `squad` VALUES ('300104', '3001', '高一四班');
INSERT INTO `squad` VALUES ('300105', '3001', '高一五班');
INSERT INTO `squad` VALUES ('300106', '3001', '高一六班');
INSERT INTO `squad` VALUES ('300107', '3001', '高一七班');
INSERT INTO `squad` VALUES ('300108', '3001', '高一八班');
INSERT INTO `squad` VALUES ('300109', '3001', '高一九班');
INSERT INTO `squad` VALUES ('300201', '3002', '高二一班');
INSERT INTO `squad` VALUES ('300202', '3002', '高二二班');
INSERT INTO `squad` VALUES ('300203', '3002', '高二三班');
INSERT INTO `squad` VALUES ('300204', '3002', '高二四班');
INSERT INTO `squad` VALUES ('300205', '3002', '高二五班');
INSERT INTO `squad` VALUES ('300206', '3002', '高二六班');
INSERT INTO `squad` VALUES ('300207', '3002', '高二七班');
INSERT INTO `squad` VALUES ('300208', '3002', '高二八班');
INSERT INTO `squad` VALUES ('300209', '3002', '高二九班');
INSERT INTO `squad` VALUES ('300301', '3003', '高三一班');
INSERT INTO `squad` VALUES ('300302', '3003', '高三二班');
INSERT INTO `squad` VALUES ('300303', '3003', '高三三班');
INSERT INTO `squad` VALUES ('300304', '3003', '高三四班');
INSERT INTO `squad` VALUES ('300305', '3003', '高三五班');
INSERT INTO `squad` VALUES ('300306', '3003', '高三六班');
INSERT INTO `squad` VALUES ('300307', '3003', '高三七班');
INSERT INTO `squad` VALUES ('300308', '3003', '高三八班');
INSERT INTO `squad` VALUES ('300309', '3003', '高三九班');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(20) NOT NULL,
  `person_id` int(11) NOT NULL,
  `squad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('54100101', '1', '300101');
INSERT INTO `student` VALUES ('54100102', '2', '300101');
INSERT INTO `student` VALUES ('54100103', '3', '300101');
INSERT INTO `student` VALUES ('54100104', '4', '300101');
INSERT INTO `student` VALUES ('54100105', '5', '300101');
INSERT INTO `student` VALUES ('54100106', '6', '300101');
INSERT INTO `student` VALUES ('54100107', '7', '300101');
INSERT INTO `student` VALUES ('54100108', '8', '300101');
INSERT INTO `student` VALUES ('54100109', '9', '300101');
INSERT INTO `student` VALUES ('54100110', '10', '300101');
INSERT INTO `student` VALUES ('54100111', '11', '300101');
INSERT INTO `student` VALUES ('54100112', '12', '300101');
INSERT INTO `student` VALUES ('54100113', '13', '300101');
INSERT INTO `student` VALUES ('54100114', '14', '300101');
INSERT INTO `student` VALUES ('54100115', '15', '300101');
INSERT INTO `student` VALUES ('54100116', '16', '300101');
INSERT INTO `student` VALUES ('54100117', '17', '300101');
INSERT INTO `student` VALUES ('54100118', '18', '300101');
INSERT INTO `student` VALUES ('54100119', '19', '300101');
INSERT INTO `student` VALUES ('54100120', '20', '300101');
INSERT INTO `student` VALUES ('54100121', '21', '300101');
INSERT INTO `student` VALUES ('54100122', '22', '300101');
INSERT INTO `student` VALUES ('54100123', '23', '300101');
INSERT INTO `student` VALUES ('54100124', '24', '300101');
INSERT INTO `student` VALUES ('54100125', '25', '300101');
INSERT INTO `student` VALUES ('54100126', '26', '300101');
INSERT INTO `student` VALUES ('54100127', '27', '300101');
INSERT INTO `student` VALUES ('54100128', '28', '300101');
INSERT INTO `student` VALUES ('54100129', '29', '300101');
INSERT INTO `student` VALUES ('54100130', '30', '300101');
INSERT INTO `student` VALUES ('54100131', '31', '300101');
INSERT INTO `student` VALUES ('54100132', '32', '300101');
INSERT INTO `student` VALUES ('54100133', '33', '300101');
INSERT INTO `student` VALUES ('54100134', '34', '300101');
INSERT INTO `student` VALUES ('54100135', '35', '300101');
INSERT INTO `student` VALUES ('54100136', '36', '300101');
INSERT INTO `student` VALUES ('54100137', '37', '300101');
INSERT INTO `student` VALUES ('54100138', '38', '300101');
INSERT INTO `student` VALUES ('54100139', '39', '300101');
INSERT INTO `student` VALUES ('54100140', '40', '300101');
INSERT INTO `student` VALUES ('54100141', '41', '300101');
INSERT INTO `student` VALUES ('54100142', '42', '300101');
INSERT INTO `student` VALUES ('54100143', '43', '300101');
INSERT INTO `student` VALUES ('54100144', '44', '300101');
INSERT INTO `student` VALUES ('54100145', '45', '300101');
INSERT INTO `student` VALUES ('54100146', '46', '300101');
INSERT INTO `student` VALUES ('54100147', '47', '300101');
INSERT INTO `student` VALUES ('54100148', '48', '300101');
INSERT INTO `student` VALUES ('54100149', '49', '300101');
INSERT INTO `student` VALUES ('54100150', '50', '300101');
INSERT INTO `student` VALUES ('54100251', '51', '300102');
INSERT INTO `student` VALUES ('54100252', '52', '300102');
INSERT INTO `student` VALUES ('54100253', '53', '300102');
INSERT INTO `student` VALUES ('54100254', '54', '300102');
INSERT INTO `student` VALUES ('54100255', '55', '300102');
INSERT INTO `student` VALUES ('54100256', '56', '300102');
INSERT INTO `student` VALUES ('54100257', '57', '300102');
INSERT INTO `student` VALUES ('54100258', '58', '300102');
INSERT INTO `student` VALUES ('54100259', '59', '300102');
INSERT INTO `student` VALUES ('54100260', '60', '300102');
INSERT INTO `student` VALUES ('54100261', '61', '300102');
INSERT INTO `student` VALUES ('54100262', '62', '300102');
INSERT INTO `student` VALUES ('54100263', '63', '300102');
INSERT INTO `student` VALUES ('54100264', '64', '300102');
INSERT INTO `student` VALUES ('54100265', '65', '300102');
INSERT INTO `student` VALUES ('54100266', '66', '300102');
INSERT INTO `student` VALUES ('54100267', '67', '300102');
INSERT INTO `student` VALUES ('54100268', '68', '300102');
INSERT INTO `student` VALUES ('54100269', '69', '300102');
INSERT INTO `student` VALUES ('54100270', '70', '300102');
INSERT INTO `student` VALUES ('54100271', '71', '300102');
INSERT INTO `student` VALUES ('54100272', '72', '300102');
INSERT INTO `student` VALUES ('54100273', '73', '300102');
INSERT INTO `student` VALUES ('54100274', '74', '300102');
INSERT INTO `student` VALUES ('54100275', '75', '300102');
INSERT INTO `student` VALUES ('54100276', '76', '300102');
INSERT INTO `student` VALUES ('54100277', '77', '300102');
INSERT INTO `student` VALUES ('54100278', '78', '300102');
INSERT INTO `student` VALUES ('54100279', '79', '300102');
INSERT INTO `student` VALUES ('54100280', '80', '300102');
INSERT INTO `student` VALUES ('54100281', '81', '300102');
INSERT INTO `student` VALUES ('54100282', '82', '300102');
INSERT INTO `student` VALUES ('54100283', '83', '300102');
INSERT INTO `student` VALUES ('54100284', '84', '300102');
INSERT INTO `student` VALUES ('54100285', '85', '300102');
INSERT INTO `student` VALUES ('54100286', '86', '300102');
INSERT INTO `student` VALUES ('54100287', '87', '300102');
INSERT INTO `student` VALUES ('54100288', '88', '300102');
INSERT INTO `student` VALUES ('54100289', '89', '300102');
INSERT INTO `student` VALUES ('54100290', '90', '300102');
INSERT INTO `student` VALUES ('54100291', '91', '300102');
INSERT INTO `student` VALUES ('54100292', '92', '300102');
INSERT INTO `student` VALUES ('54100293', '93', '300102');
INSERT INTO `student` VALUES ('54100294', '94', '300102');
INSERT INTO `student` VALUES ('54100295', '95', '300102');
INSERT INTO `student` VALUES ('54100296', '96', '300102');
INSERT INTO `student` VALUES ('54100297', '97', '300102');
INSERT INTO `student` VALUES ('54100298', '98', '300102');
INSERT INTO `student` VALUES ('54100299', '99', '300102');
INSERT INTO `student` VALUES ('54100300', '100', '300102');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('100101', '1001', '语文', '一年級语文');
INSERT INTO `subject` VALUES ('100102', '1001', '数学', '一年級数学');
INSERT INTO `subject` VALUES ('100103', '1001', '英语', '一年級英语');
INSERT INTO `subject` VALUES ('100110', '1001', '自然', '一年級自然');
INSERT INTO `subject` VALUES ('100111', '1001', '社会', '一年級社会');
INSERT INTO `subject` VALUES ('100112', '1001', '思想品德', '一年級思想品德');
INSERT INTO `subject` VALUES ('100113', '1001', '音乐', '一年級音乐');
INSERT INTO `subject` VALUES ('100114', '1001', '体育', '一年級体育');
INSERT INTO `subject` VALUES ('100115', '1001', '美术', '一年級美术');
INSERT INTO `subject` VALUES ('100201', '1002', '语文', '二年級语文');
INSERT INTO `subject` VALUES ('100202', '1002', '数学', '二年級数学');
INSERT INTO `subject` VALUES ('100203', '1002', '英语', '二年級英语');
INSERT INTO `subject` VALUES ('100210', '1002', '自然', '二年級自然');
INSERT INTO `subject` VALUES ('100211', '1002', '社会', '二年級社会');
INSERT INTO `subject` VALUES ('100212', '1002', '思想品德', '二年級思想品德');
INSERT INTO `subject` VALUES ('100213', '1002', '音乐', '二年級音乐');
INSERT INTO `subject` VALUES ('100214', '1002', '体育', '二年級体育');
INSERT INTO `subject` VALUES ('100215', '1002', '美术', '二年級美术');
INSERT INTO `subject` VALUES ('100301', '1003', '语文', '三年級语文');
INSERT INTO `subject` VALUES ('100302', '1003', '数学', '三年級数学');
INSERT INTO `subject` VALUES ('100303', '1003', '英语', '三年級英语');
INSERT INTO `subject` VALUES ('100310', '1003', '自然', '三年級自然');
INSERT INTO `subject` VALUES ('100311', '1003', '社会', '三年級社会');
INSERT INTO `subject` VALUES ('100312', '1003', '思想品德', '三年級思想品德');
INSERT INTO `subject` VALUES ('100313', '1003', '音乐', '三年級音乐');
INSERT INTO `subject` VALUES ('100314', '1003', '体育', '三年級体育');
INSERT INTO `subject` VALUES ('100315', '1003', '美术', '三年級美术');
INSERT INTO `subject` VALUES ('100401', '1004', '语文', '四年級语文');
INSERT INTO `subject` VALUES ('100402', '1004', '数学', '四年級数学');
INSERT INTO `subject` VALUES ('100403', '1004', '英语', '四年級英语');
INSERT INTO `subject` VALUES ('100410', '1004', '自然', '四年級自然');
INSERT INTO `subject` VALUES ('100411', '1004', '社会', '四年級社会');
INSERT INTO `subject` VALUES ('100412', '1004', '思想品德', '四年級思想品德');
INSERT INTO `subject` VALUES ('100413', '1004', '音乐', '四年級音乐');
INSERT INTO `subject` VALUES ('100414', '1004', '体育', '四年級体育');
INSERT INTO `subject` VALUES ('100415', '1004', '美术', '四年級美术');
INSERT INTO `subject` VALUES ('100501', '1005', '语文', '五年級语文');
INSERT INTO `subject` VALUES ('100502', '1005', '数学', '五年級数学');
INSERT INTO `subject` VALUES ('100503', '1005', '英语', '五年級英语');
INSERT INTO `subject` VALUES ('100510', '1005', '自然', '五年級自然');
INSERT INTO `subject` VALUES ('100511', '1005', '社会', '五年級社会');
INSERT INTO `subject` VALUES ('100512', '1005', '思想品德', '五年級思想品德');
INSERT INTO `subject` VALUES ('100513', '1005', '音乐', '五年級音乐');
INSERT INTO `subject` VALUES ('100514', '1005', '体育', '五年級体育');
INSERT INTO `subject` VALUES ('100515', '1005', '美术', '五年級美术');
INSERT INTO `subject` VALUES ('100601', '1006', '语文', '六年級语文');
INSERT INTO `subject` VALUES ('100602', '1006', '数学', '六年級数学');
INSERT INTO `subject` VALUES ('100603', '1006', '英语', '六年級英语');
INSERT INTO `subject` VALUES ('100610', '1006', '自然', '六年級自然');
INSERT INTO `subject` VALUES ('100611', '1006', '社会', '六年級社会');
INSERT INTO `subject` VALUES ('100612', '1006', '思想品德', '六年級思想品德');
INSERT INTO `subject` VALUES ('100613', '1006', '音乐', '六年級音乐');
INSERT INTO `subject` VALUES ('100614', '1006', '体育', '六年級体育');
INSERT INTO `subject` VALUES ('100615', '1006', '美术', '六年級美术');
INSERT INTO `subject` VALUES ('200101', '2001', '语文', '初一语文');
INSERT INTO `subject` VALUES ('200102', '2001', '数学', '初一数学');
INSERT INTO `subject` VALUES ('200103', '2001', '英语', '初一英语');
INSERT INTO `subject` VALUES ('200104', '2001', '历史', '初一历史');
INSERT INTO `subject` VALUES ('200105', '2001', '政治', '初一政治');
INSERT INTO `subject` VALUES ('200106', '2001', '地理', '初一地理');
INSERT INTO `subject` VALUES ('200107', '2001', '物理', '初一物理');
INSERT INTO `subject` VALUES ('200108', '2001', '化学', '初一化学');
INSERT INTO `subject` VALUES ('200109', '2001', '生物', '初一生物');
INSERT INTO `subject` VALUES ('200201', '2002', '语文', '初二语文');
INSERT INTO `subject` VALUES ('200202', '2002', '数学', '初二数学');
INSERT INTO `subject` VALUES ('200203', '2002', '英语', '初二英语');
INSERT INTO `subject` VALUES ('200204', '2002', '历史', '初二历史');
INSERT INTO `subject` VALUES ('200205', '2002', '政治', '初二政治');
INSERT INTO `subject` VALUES ('200206', '2002', '地理', '初二地理');
INSERT INTO `subject` VALUES ('200207', '2002', '物理', '初二物理');
INSERT INTO `subject` VALUES ('200208', '2002', '化学', '初二化学');
INSERT INTO `subject` VALUES ('200209', '2002', '生物', '初二生物');
INSERT INTO `subject` VALUES ('200301', '2003', '语文', '初三语文');
INSERT INTO `subject` VALUES ('200302', '2003', '数学', '初三数学');
INSERT INTO `subject` VALUES ('200303', '2003', '英语', '初三英语');
INSERT INTO `subject` VALUES ('200304', '2003', '历史', '初三历史');
INSERT INTO `subject` VALUES ('200305', '2003', '政治', '初三政治');
INSERT INTO `subject` VALUES ('200306', '2003', '地理', '初三地理');
INSERT INTO `subject` VALUES ('200307', '2003', '物理', '初三物理');
INSERT INTO `subject` VALUES ('200308', '2003', '化学', '初三化学');
INSERT INTO `subject` VALUES ('200309', '2003', '生物', '初三生物');
INSERT INTO `subject` VALUES ('300101', '3001', '语文', '高一语文');
INSERT INTO `subject` VALUES ('300102', '3001', '数学', '高一数学');
INSERT INTO `subject` VALUES ('300103', '3001', '英语', '高一英语');
INSERT INTO `subject` VALUES ('300104', '3001', '历史', '高一历史');
INSERT INTO `subject` VALUES ('300105', '3001', '政治', '高一政治');
INSERT INTO `subject` VALUES ('300106', '3001', '地理', '高一地理');
INSERT INTO `subject` VALUES ('300107', '3001', '物理', '高一物理');
INSERT INTO `subject` VALUES ('300108', '3001', '化学', '高一化学');
INSERT INTO `subject` VALUES ('300109', '3001', '生物', '高一生物');
INSERT INTO `subject` VALUES ('300201', '3002', '语文', '高二语文');
INSERT INTO `subject` VALUES ('300202', '3002', '数学', '高二数学');
INSERT INTO `subject` VALUES ('300203', '3002', '英语', '高二英语');
INSERT INTO `subject` VALUES ('300204', '3002', '历史', '高二历史');
INSERT INTO `subject` VALUES ('300205', '3002', '政治', '高二政治');
INSERT INTO `subject` VALUES ('300206', '3002', '地理', '高二地理');
INSERT INTO `subject` VALUES ('300207', '3002', '物理', '高二物理');
INSERT INTO `subject` VALUES ('300208', '3002', '化学', '高二化学');
INSERT INTO `subject` VALUES ('300209', '3002', '生物', '高二生物');
INSERT INTO `subject` VALUES ('300301', '3003', '语文', '高三语文');
INSERT INTO `subject` VALUES ('300302', '3003', '数学', '高三数学');
INSERT INTO `subject` VALUES ('300303', '3003', '英语', '高三英语');
INSERT INTO `subject` VALUES ('300304', '3003', '历史', '高三历史');
INSERT INTO `subject` VALUES ('300305', '3003', '政治', '高三政治');
INSERT INTO `subject` VALUES ('300306', '3003', '地理', '高三地理');
INSERT INTO `subject` VALUES ('300307', '3003', '物理', '高三物理');
INSERT INTO `subject` VALUES ('300308', '3003', '化学', '高三化学');
INSERT INTO `subject` VALUES ('300309', '3003', '生物', '高三生物');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1416101', '101', '300101');
INSERT INTO `teacher` VALUES ('1416102', '102', '300102');
INSERT INTO `teacher` VALUES ('1416103', '103', '300103');
INSERT INTO `teacher` VALUES ('1416104', '104', '300104');
INSERT INTO `teacher` VALUES ('1416105', '105', '300105');
INSERT INTO `teacher` VALUES ('1416106', '106', '300106');
INSERT INTO `teacher` VALUES ('1416107', '107', '300107');
INSERT INTO `teacher` VALUES ('1416108', '108', '300108');
INSERT INTO `teacher` VALUES ('1416109', '109', '300109');
INSERT INTO `teacher` VALUES ('1416110', '110', '300201');
INSERT INTO `teacher` VALUES ('1416111', '111', '300202');
INSERT INTO `teacher` VALUES ('1416112', '112', '300203');
INSERT INTO `teacher` VALUES ('1416113', '113', '300204');
INSERT INTO `teacher` VALUES ('1416114', '114', '300205');
INSERT INTO `teacher` VALUES ('1416115', '115', '300206');
INSERT INTO `teacher` VALUES ('1416116', '116', '300207');
INSERT INTO `teacher` VALUES ('1416117', '117', '300208');
INSERT INTO `teacher` VALUES ('1416118', '118', '300209');
INSERT INTO `teacher` VALUES ('1416119', '119', '300301');
INSERT INTO `teacher` VALUES ('1416120', '120', '300302');
INSERT INTO `teacher` VALUES ('1416121', '121', '300303');
INSERT INTO `teacher` VALUES ('1416122', '122', '300304');
INSERT INTO `teacher` VALUES ('1416123', '123', '300305');
INSERT INTO `teacher` VALUES ('1416124', '124', '300306');
INSERT INTO `teacher` VALUES ('1416125', '125', '300307');
INSERT INTO `teacher` VALUES ('1416126', '126', '300308');
INSERT INTO `teacher` VALUES ('1416127', '127', '300309');
INSERT INTO `teacher` VALUES ('1416128', '128', '300309');

-- ----------------------------
-- Table structure for tempdata
-- ----------------------------
DROP TABLE IF EXISTS `tempdata`;
CREATE TABLE `tempdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tempdata
-- ----------------------------
INSERT INTO `tempdata` VALUES ('101', '丁守正', '男');
INSERT INTO `tempdata` VALUES ('102', '范素英', '女');
INSERT INTO `tempdata` VALUES ('103', '高军', '男');
INSERT INTO `tempdata` VALUES ('104', '曹艳春', '女');
INSERT INTO `tempdata` VALUES ('105', '梁秋芳', '女');
INSERT INTO `tempdata` VALUES ('106', '张洪明', '男');
INSERT INTO `tempdata` VALUES ('107', '左少权', '男');
INSERT INTO `tempdata` VALUES ('108', '李洁', '女');
INSERT INTO `tempdata` VALUES ('109', '李杰', '男');
INSERT INTO `tempdata` VALUES ('110', '孙秀春', '男');
INSERT INTO `tempdata` VALUES ('111', '张鸿记', '男');

-- ----------------------------
-- Procedure structure for initGrade
-- ----------------------------
DROP PROCEDURE IF EXISTS `initGrade`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `initGrade`()
BEGIN
INSERT INTO grade 
VALUES 
(1001,"一年級"),
(1002,"二年級"),
(1003,"三年級"),
(1004,"四年級"),
(1005,"五年級"),
(1006,"六年級"),
(2001,"初一"),
(2002,"初二"),
(2003,"初三"),
(3001,"高一"),
(3002,"高二"),
(3003,"高三");
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for initPerson
-- ----------------------------
DROP PROCEDURE IF EXISTS `initPerson`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `initPerson`()
BEGIN
	DECLARE i INT DEFAULT 1;
	DECLARE sex VARCHAR(2);
	WHILE i < 91 DO
		IF i%2 = 0 
		THEN
			SET sex = "男";
		ELSE
			SET sex = "女";
		END IF;
		INSERT INTO person VALUES (10+i, "某某同学", sex, FLOOR(7 + RAND()*13)),
		 (111+i, "某某老师", sex, FLOOR(30 + RAND()*30));
		SET i = i + 1;
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for initTeacher
-- ----------------------------
DROP PROCEDURE IF EXISTS `initTeacher`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `initTeacher`()
BEGIN
	DECLARE subjectid INT;
  DECLARE pid INT DEFAULT 101;

	DECLARE flag INT;
	DECLARE cur CURSOR for SELECT id FROM subject s WHERE s.id > 300000;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag=1; 
	SET flag = 0;  
	open cur;  
		REPEAT 
			fetch cur into subjectid;
			INSERT INTO teacher VALUE ((1416000+pid),pid,subjectid);
			SET pid = pid +1;
			UNTIL flag
		END REPEAT;  
	close cur;  
END
;;
DELIMITER ;
