/*
 Navicat Premium Data Transfer

 Source Server         : DESKTOP-H5AV9FD
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : nodejs

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 06/12/2023 13:42:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for schools
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools`  (
  `id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `学校名称` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `学校标识码` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `主管部门` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `所在地` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `办学层次` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `详细信息` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '北京大学', '4111010001', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('10', '北京化工大学', '4111010010', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('100', '天津医科大学', '4112010062', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('1008', '安徽大学', '4134010357', '安徽省', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('1009', '中国科学技术大学', '4134010358', '中国科学院', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('101', '天津中医药大学', '4112010063', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('1010', '合肥工业大学', '4134010359', '教育部', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('1011', '安徽工业大学', '4134010360', '安徽省', '马鞍山市', '本科', '');
INSERT INTO `schools` VALUES ('1012', '安徽理工大学', '4134010361', '安徽省', '淮南市', '本科', '');
INSERT INTO `schools` VALUES ('1013', '安徽工程大学', '4134010363', '安徽省', '芜湖市', '本科', '');
INSERT INTO `schools` VALUES ('1014', '安徽农业大学', '4134010364', '安徽省', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('1015', '安徽医科大学', '4134010366', '安徽省', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('1016', '蚌埠医学院', '4134010367', '安徽省', '蚌埠市', '本科', '');
INSERT INTO `schools` VALUES ('1017', '皖南医学院', '4134010368', '安徽省', '芜湖市', '本科', '');
INSERT INTO `schools` VALUES ('1018', '安徽中医药大学', '4134010369', '安徽省', '合肥市', '本科', '');
INSERT INTO `schools` VALUES ('1019', '安徽师范大学', '4134010370', '安徽省', '芜湖市', '本科', '');
INSERT INTO `schools` VALUES ('102', '天津师范大学', '4112010065', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('1020', '阜阳师范大学', '4134010371', '安徽省', '阜阳市', '本科', '');
INSERT INTO `schools` VALUES ('1021', '安庆师范大学', '4134010372', '安徽省', '安庆市', '本科', '');
INSERT INTO `schools` VALUES ('1022', '淮北师范大学', '4134010373', '安徽省', '淮北市', '本科', '');
INSERT INTO `schools` VALUES ('1023', '黄山学院', '4134010375', '安徽省', '黄山市', '本科', '');
INSERT INTO `schools` VALUES ('1024', '皖西学院', '4134010376', '安徽省', '六安市', '本科', '');
INSERT INTO `schools` VALUES ('1025', '滁州学院', '4134010377', '安徽省', '滁州市', '本科', '');
INSERT INTO `schools` VALUES ('103', '天津职业技术师范大学', '4112010066', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('104', '天津外国语大学', '4112010068', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('105', '天津商业大学', '4112010069', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('106', '天津财经大学', '4112010070', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('107', '天津体育学院', '4112010071', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('108', '天津音乐学院', '4112010072', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('109', '天津美术学院', '4112010073', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('11', '北京工商大学', '4111010011', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('110', '天津城建大学', '4112010792', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('111', '天津天狮学院', '4112010859', '天津市教委', '天津市', '本科', '民办');
INSERT INTO `schools` VALUES ('112', '天津中德应用', '4112012105', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('1129', '厦门大学', '4135010384', '教育部', '厦门市', '本科', '');
INSERT INTO `schools` VALUES ('113', '天津外国语大学', '4112013658', '天津市教委', '天津市', '本科', '民办');
INSERT INTO `schools` VALUES ('1130', '华侨大学', '4135010385', '中央统战部', '泉州市', '本科', '');
INSERT INTO `schools` VALUES ('1131', '福州大学', '4135010386', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1132', '福建工程学院', '4135010388', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1133', '福建农林大学', '4135010389', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1134', '集美大学', '4135010390', '福建省', '厦门市', '本科', '');
INSERT INTO `schools` VALUES ('1135', '福建医科大学', '4135010392', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1136', '福建中医药大学', '4135010393', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1137', '福建师范大学', '4135010394', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1138', '闽江学院', '4135010395', '福建省', '福州市', '本科', '');
INSERT INTO `schools` VALUES ('1139', '武夷学院', '4135010397', '福建省', '南平市', '本科', '');
INSERT INTO `schools` VALUES ('114', '天津传媒学院', '4112013659', '天津市教委', '天津市', '本科', '民办');
INSERT INTO `schools` VALUES ('1140', '宁德师范学院', '4135010398', '福建省', '宁德市', '本科', '');
INSERT INTO `schools` VALUES ('1141', '泉州师范学院', '4135010399', '福建省', '泉州市', '本科', '');
INSERT INTO `schools` VALUES ('1142', '闽南师范大学', '4135010402', '福建省', '漳州市', '本科', '');
INSERT INTO `schools` VALUES ('1143', '厦门理工学院', '4135011062', '福建省', '厦门市', '本科', '');
INSERT INTO `schools` VALUES ('1144', '三明学院', '4135011311', '福建省', '三明市', '本科', '');
INSERT INTO `schools` VALUES ('12', '北京服装学院', '4111010012', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1218', '南昌大学', '4136010403', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1219', '华东交通大学', '4136010404', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1220', '东华理工大学', '4136010405', '江西省', '抚州市', '本科', '');
INSERT INTO `schools` VALUES ('1221', '南昌航空大学', '4136010406', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1222', '江西理工大学', '4136010407', '江西省', '赣州市', '本科', '');
INSERT INTO `schools` VALUES ('1223', '景德镇陶瓷大学', '4136010408', '江西省', '景德镇市', '本科', '');
INSERT INTO `schools` VALUES ('1224', '江西农业大学', '4136010410', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1225', '江西中医药大学', '4136010412', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1226', '赣南医学院', '4136010413', '江西省', '赣州市', '本科', '');
INSERT INTO `schools` VALUES ('1227', '江西师范大学', '4136010414', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1228', '上饶师范学院', '4136010416', '江西省', '上饶市', '本科', '');
INSERT INTO `schools` VALUES ('1229', '宜春学院', '4136010417', '江西省', '宜春市', '本科', '');
INSERT INTO `schools` VALUES ('1230', '赣南师范大学', '4136010418', '江西省', '赣州市', '本科', '');
INSERT INTO `schools` VALUES ('1231', '井冈山大学', '4136010419', '江西省', '吉安市', '本科', '');
INSERT INTO `schools` VALUES ('1232', '江西财经大学', '4136010421', '江西省', '南昌市', '本科', '');
INSERT INTO `schools` VALUES ('1233', '江西科技学院', '4136010846', '江西省教育厅', '南昌市', '本科', '民办');
INSERT INTO `schools` VALUES ('1234', '景德镇学院', '4136010894', '江西省', '景德镇市', '本科', '');
INSERT INTO `schools` VALUES ('1235', '萍乡学院', '4136010895', '江西省', '萍乡市', '本科', '');
INSERT INTO `schools` VALUES ('13', '北京邮电大学', '4111010013', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1324', '山东大学', '4137010422', '教育部', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1325', '中国海洋大学', '4137010423', '教育部', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1326', '山东科技大学', '4137010424', '山东省', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1327', '中国石油大学（华东）', '4137010425', '教育部', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1328', '青岛科技大学', '4137010426', '山东省', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1329', '济南大学', '4137010427', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1330', '青岛理工大学', '4137010429', '山东省', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1331', '山东建筑大学', '4137010430', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1332', '齐鲁工业大学', '4137010431', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1333', '山东理工大学', '4137010433', '山东省', '淄博市', '本科', '');
INSERT INTO `schools` VALUES ('1334', '山东农业大学', '4137010434', '山东省', '泰安市', '本科', '');
INSERT INTO `schools` VALUES ('1335', '青岛农业大学', '4137010435', '山东省', '青岛市', '本科', '');
INSERT INTO `schools` VALUES ('1336', '潍坊医学院', '4137010438', '山东省', '潍坊市', '本科', '');
INSERT INTO `schools` VALUES ('1337', '山东第一医科大学', '4137010439', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1338', '滨州医学院', '4137010440', '山东省', '滨州市', '本科', '');
INSERT INTO `schools` VALUES ('1339', '山东中医药大学', '4137010441', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1340', '济宁医学院', '4137010443', '山东省', '济宁市', '本科', '');
INSERT INTO `schools` VALUES ('1341', '山东师范大学', '4137010445', '山东省', '济南市', '本科', '');
INSERT INTO `schools` VALUES ('1342', '曲阜师范大学', '4137010446', '山东省', '济宁市', '本科', '');
INSERT INTO `schools` VALUES ('14', '北京印刷学院', '4111010015', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1477', '华北水利水电大学', '4141010078', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1478', '郑州大学', '4141010459', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1479', '河南理工大学', '4141010460', '河南省', '焦作市', '本科', '');
INSERT INTO `schools` VALUES ('1480', '郑州轻工业大学', '4141010462', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1481', '河南工业大学', '4141010463', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1482', '河南科技大学', '4141010464', '河南省', '洛阳市', '本科', '');
INSERT INTO `schools` VALUES ('1483', '中原工学院', '4141010465', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1484', '河南农业大学', '4141010466', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1485', '河南科技学院', '4141010467', '河南省', '新乡市', '本科', '');
INSERT INTO `schools` VALUES ('1486', '河南牧业经济学院', '4141010469', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1487', '河南中医药大学', '4141010471', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1488', '新乡医学院', '4141010472', '河南省', '新乡市', '本科', '');
INSERT INTO `schools` VALUES ('1489', '河南大学', '4141010475', '河南省', '开封市', '本科', '');
INSERT INTO `schools` VALUES ('149', '河北大学', '4113010075', '河北省', '保定市', '本科', '');
INSERT INTO `schools` VALUES ('1490', '河南师范大学', '4141010476', '河南省', '新乡市', '本科', '');
INSERT INTO `schools` VALUES ('1491', '信阳师范学院', '4141010477', '河南省', '信阳市', '本科', '');
INSERT INTO `schools` VALUES ('1492', '周口师范学院', '4141010478', '河南省', '周口市', '本科', '');
INSERT INTO `schools` VALUES ('1493', '安阳师范学院', '4141010479', '河南省', '安阳市', '本科', '');
INSERT INTO `schools` VALUES ('1494', '许昌学院', '4141010480', '河南省', '许昌市', '本科', '');
INSERT INTO `schools` VALUES ('1495', '南阳师范学院', '4141010481', '河南省', '南阳市', '本科', '');
INSERT INTO `schools` VALUES ('1496', '洛阳师范学院', '4141010482', '河南省', '洛阳市', '本科', '');
INSERT INTO `schools` VALUES ('1497', '商丘师范学院', '4141010483', '河南省', '商丘市', '本科', '');
INSERT INTO `schools` VALUES ('1498', '河南财经政法大学', '4141010484', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1499', '郑州航空工业管理学院', '4141010485', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('15', '北京建筑大学', '4111010016', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('150', '河北工程大学', '4113010076', '河北省', '邯郸市', '本科', '');
INSERT INTO `schools` VALUES ('1500', '黄淮学院', '4141010918', '河南省', '驻马店市', '本科', '');
INSERT INTO `schools` VALUES ('1501', '平顶山学院', '4141010919', '河南省', '平顶山市', '本科', '');
INSERT INTO `schools` VALUES ('1502', '郑州工程技术学院', '4141011068', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1503', '洛阳理工学院', '4141011070', '河南省', '洛阳市', '本科', '');
INSERT INTO `schools` VALUES ('1504', '新乡学院', '4141011071', '河南省', '新乡市', '本科', '');
INSERT INTO `schools` VALUES ('1505', '信阳农林学院', '4141011326', '河南省', '信阳市', '本科', '');
INSERT INTO `schools` VALUES ('1506', '河南工学院', '4141011329', '河南省', '新乡市', '本科', '');
INSERT INTO `schools` VALUES ('1507', '安阳工学院', '4141011330', '河南省', '安阳市', '本科', '');
INSERT INTO `schools` VALUES ('1508', '河南工程学院', '4141011517', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1509', '河南财政金融学院', '4141011652', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('151', '河北地质大学', '4113010077', '河北省', '石家庄市', '本科', '');
INSERT INTO `schools` VALUES ('1510', '南阳理工学院', '4141011653', '河南省', '南阳市', '本科', '');
INSERT INTO `schools` VALUES ('1511', '河南城建学院', '4141011765', '河南省', '平顶山市', '本科', '');
INSERT INTO `schools` VALUES ('1512', '河南警察学院', '4141011788', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1513', '黄河科技学院', '4141011834', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1514', '铁道警察学院', '4141012735', '公安部', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1515', '郑州科技学院', '4141012746', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1516', '郑州工业应用技术学院', '4141012747', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1517', '郑州师范学院', '4141012949', '河南省', '郑州市', '本科', '');
INSERT INTO `schools` VALUES ('1518', '郑州财经学院', '4141013497', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1519', '黄河交通学院', '4141013498', '河南省教育厅', '焦作市', '本科', '民办');
INSERT INTO `schools` VALUES ('152', '河北工业大学', '4113010080', '河北省', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('1520', '商丘工学院', '4141013500', '河南省教育厅', '商丘市', '本科', '民办');
INSERT INTO `schools` VALUES ('1521', '河南开封科技传媒学院', '4141013501', '河南省教育厅', '开封市', '本科', '民办');
INSERT INTO `schools` VALUES ('1522', '中原科技学院', '4141013502', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1523', '信阳学院', '4141013503', '河南省教育厅', '信阳市', '本科', '民办');
INSERT INTO `schools` VALUES ('1524', '安阳学院', '4141013504', '河南省教育厅', '安阳市', '本科', '民办');
INSERT INTO `schools` VALUES ('1525', '新乡医学院三全学院', '4141013505', '河南省教育厅', '新乡市', '本科', '民办');
INSERT INTO `schools` VALUES ('1526', '新乡工程学院', '4141013506', '河南省教育厅', '新乡市', '本科', '民办');
INSERT INTO `schools` VALUES ('1527', '郑州工商学院', '4141013507', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('1528', '郑州经贸学院', '4141013508', '河南省教育厅', '郑州市', '本科', '民办');
INSERT INTO `schools` VALUES ('153', '华北理工大学', '4113010081', '河北省', '唐山市', '本科', '');
INSERT INTO `schools` VALUES ('154', '河北科技大学', '4113010082', '河北省', '石家庄市', '本科', '');
INSERT INTO `schools` VALUES ('155', '河北建筑工程学院', '4113010084', '河北省', '张家口市', '本科', '');
INSERT INTO `schools` VALUES ('156', '河北水利电力学院', '4113010085', '河北省', '沧州市', '本科', '');
INSERT INTO `schools` VALUES ('157', '河北农业大学', '4113010086', '河北省', '保定市', '本科', '');
INSERT INTO `schools` VALUES ('1576', '漯河食品职业学院', '4141014233', '河南省教育厅', '漯河市', '专科', '民办');
INSERT INTO `schools` VALUES ('1577', '郑州城市职业学院', '4141014235', '河南省教育厅', '郑州市', '专科', '民办');
INSERT INTO `schools` VALUES ('1578', '安阳职业技术学院', '4141014243', '河南省', '安阳市', '专科', '');
INSERT INTO `schools` VALUES ('1579', '新乡职业技术学院', '4141014245', '河南省', '新乡市', '专科', '');
INSERT INTO `schools` VALUES ('158', '河北医科大学', '4113010089', '河北省', '石家庄市', '本科', '');
INSERT INTO `schools` VALUES ('1580', '驻马店职业技术学院', '4141014251', '河南省', '驻马店市', '专科', '');
INSERT INTO `schools` VALUES ('1581', '焦作工贸职业学院', '4141014300', '河南省教育厅', '焦作市', '专科', '民办');
INSERT INTO `schools` VALUES ('1582', '许昌陶瓷职业学院', '4141014301', '河南省教育厅', '许昌市', '专科', '民办');
INSERT INTO `schools` VALUES ('1583', '郑州理工职业学院', '4141014302', '河南省教育厅', '郑州市', '专科', '民办');
INSERT INTO `schools` VALUES ('1584', '郑州信息工程职业学院', '4141014303', '河南省教育厅', '郑州市', '专科', '民办');
INSERT INTO `schools` VALUES ('1585', '长垣烹饪职业技术学院', '4141014305', '河南省教育厅', '新乡市', '专科', '民办');
INSERT INTO `schools` VALUES ('1586', '开封文化艺术职业学院', '4141014306', '河南省', '开封市', '专科', '');
INSERT INTO `schools` VALUES ('1587', '河南应用技术职业学院', '4141014307', '河南省', '郑州市', '专科', '');
INSERT INTO `schools` VALUES ('1588', '河南艺术职业学院', '4141014308', '河南省', '郑州市', '专科', '');
INSERT INTO `schools` VALUES ('1589', '河南机电职业学院', '4141014348', '河南省', '郑州市', '专科', '');
INSERT INTO `schools` VALUES ('159', '河北北方学院', '4113010092', '河北省', '张家口市', '本科', '');
INSERT INTO `schools` VALUES ('1590', '河南护理职业学院', '4141014349', '河南省', '安阳市', '专科', '');
INSERT INTO `schools` VALUES ('1591', '许昌电气职业学院', '4141014350', '河南省', '许昌市', '专科', '');
INSERT INTO `schools` VALUES ('1592', '信阳涉外职业技术学院', '4141014351', '河南省教育厅', '信阳市', '专科', '民办');
INSERT INTO `schools` VALUES ('1593', '鹤壁汽车工程职业学院', '4141014352', '河南省教育厅', '鹤壁市', '专科', '民办');
INSERT INTO `schools` VALUES ('1594', '南阳职业学院', '4141014353', '河南省教育厅', '南阳市', '专科', '民办');
INSERT INTO `schools` VALUES ('1595', '郑州商贸旅游职业学院', '4141014380', '河南省教育厅', '郑州市', '专科', '民办');
INSERT INTO `schools` VALUES ('1596', '河南推拿职业学院', '4141014382', '河南省', '洛阳市', '专科', '');
INSERT INTO `schools` VALUES ('1597', '洛阳职业技术学院', '4141014383', '河南省', '洛阳市', '专科', '');
INSERT INTO `schools` VALUES ('16', '北京石油化工学院', '4111010017', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('160', '承德医学院', '4113010093', '河北省', '承德市', '本科', '');
INSERT INTO `schools` VALUES ('1600', '郑州黄河护理职业学院', '4141014405', '河南省教育厅', '郑州市', '专科', '民办');
INSERT INTO `schools` VALUES ('1601', '河南医学高等专科学校', '4141014466', '河南省', '郑州市', '专科', '');
INSERT INTO `schools` VALUES ('1602', '郑州财税金融职业学院', '4141014478', '河南省', '郑州市', '专科', '');
INSERT INTO `schools` VALUES ('1603', '南阳农业职业学院', '4141014479', '河南省', '南阳市', '专科', '');
INSERT INTO `schools` VALUES ('1604', '洛阳科技职业学院', '4141014480', '河南省教育厅', '洛阳市', '专科', '民办');
INSERT INTO `schools` VALUES ('1607', '濮阳医学高等专科学校', '4141014597', '河南省', '濮阳市', '专科', '');
INSERT INTO `schools` VALUES ('161', '河北师范大学', '4113010094', '河北省', '石家庄市', '本科', '');
INSERT INTO `schools` VALUES ('162', '保定学院', '4113010096', '河北省', '保定市', '本科', '');
INSERT INTO `schools` VALUES ('163', '河北民族师范学院', '4113010098', '河北省', '承德市', '本科', '');
INSERT INTO `schools` VALUES ('1633', '武汉大学', '4142010486', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1634', '华中科技大学', '4142010487', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1635', '武汉科技大学', '4142010488', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1636', '长江大学', '4142010489', '湖北省', '荆州市', '本科', '');
INSERT INTO `schools` VALUES ('1637', '武汉工程大学', '4142010490', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1638', '中国地质大学（武汉）', '4142010491', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1639', '武汉纺织大学', '4142010495', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1640', '武汉轻工大学', '4142010496', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1641', '武汉理工大学', '4142010497', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1642', '湖北工业大学', '4142010500', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1643', '华中农业大学', '4142010504', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1644', '湖北中医药大学', '4142010507', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1645', '华中师范大学', '4142010511', '教育部', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1646', '湖北大学', '4142010512', '湖北省', '武汉市', '本科', '');
INSERT INTO `schools` VALUES ('1647', '湖北师范大学', '4142010513', '湖北省', '黄石市', '本科', '');
INSERT INTO `schools` VALUES ('1648', '黄冈师范学院', '4142010514', '湖北省', '黄冈市', '本科', '');
INSERT INTO `schools` VALUES ('17', '北京电子科技学院', '4111010018', '中央办公厅', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1763', '湘潭大学', '4143010530', '湖南省', '湘潭市', '本科', '');
INSERT INTO `schools` VALUES ('1764', '吉首大学', '4143010531', '湖南省', '湘西土家族苗族自治州', '本科', '');
INSERT INTO `schools` VALUES ('1765', '湖南大学', '4143010532', '教育部', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1766', '中南大学', '4143010533', '教育部', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1767', '湖南科技大学', '4143010534', '湖南省', '湘潭市', '本科', '');
INSERT INTO `schools` VALUES ('1768', '长沙理工大学', '4143010536', '湖南省', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1769', '湖南农业大学', '4143010537', '湖南省', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1770', '中南林业科技大学', '4143010538', '湖南省', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1771', '湖南中医药大学', '4143010541', '湖南省', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1772', '湖南师范大学', '4143010542', '湖南省', '长沙市', '本科', '');
INSERT INTO `schools` VALUES ('1773', '湖南理工学院', '4143010543', '湖南省', '岳阳市', '本科', '');
INSERT INTO `schools` VALUES ('1774', '湘南学院', '4143010545', '湖南省', '郴州市', '本科', '');
INSERT INTO `schools` VALUES ('1775', '衡阳师范学院', '4143010546', '湖南省', '衡阳市', '本科', '');
INSERT INTO `schools` VALUES ('1776', '邵阳学院', '4143010547', '湖南省', '邵阳市', '本科', '');
INSERT INTO `schools` VALUES ('1777', '怀化学院', '4143010548', '湖南省', '怀化市', '本科', '');
INSERT INTO `schools` VALUES ('1778', '湖南文理学院', '4143010549', '湖南省', '常德市', '本科', '');
INSERT INTO `schools` VALUES ('18', '中国农业大学', '4111010019', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1891', '中山大学', '4144010558', '教育部', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1892', '暨南大学', '4144010559', '中央统战部', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1893', '汕头大学', '4144010560', '广东省', '汕头市', '本科', '');
INSERT INTO `schools` VALUES ('1894', '华南理工大学', '4144010561', '教育部', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1895', '华南农业大学', '4144010564', '广东省', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1896', '广东海洋大学', '4144010566', '广东省', '湛江市', '本科', '');
INSERT INTO `schools` VALUES ('1897', '广州医科大学', '4144010570', '广东省', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1898', '广东医科大学', '4144010571', '广东省', '湛江市', '本科', '');
INSERT INTO `schools` VALUES ('1899', '广州中医药大学', '4144010572', '广东省', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('19', '北京农学院', '4111010020', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('1900', '广东药科大学', '4144010573', '广东省', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1901', '华南师范大学', '4144010574', '广东省', '广州市', '本科', '');
INSERT INTO `schools` VALUES ('1902', '韶关学院', '4144010576', '广东省', '韶关市', '本科', '');
INSERT INTO `schools` VALUES ('2', '中国人民大学', '4111010002', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('20', '北京林业大学', '4111010022', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2051', '广西大学', '4145010593', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2052', '广西科技大学', '4145010594', '广西壮族自治区', '柳州市', '本科', '');
INSERT INTO `schools` VALUES ('2053', '桂林电子科技大学', '4145010595', '广西壮族自治区', '桂林市', '本科', '');
INSERT INTO `schools` VALUES ('2054', '桂林理工大学', '4145010596', '广西壮族自治区', '桂林市', '本科', '');
INSERT INTO `schools` VALUES ('2055', '广西医科大学', '4145010598', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2056', '右江民族医学院', '4145010599', '广西壮族自治区', '百色市', '本科', '');
INSERT INTO `schools` VALUES ('2057', '广西中医药大学', '4145010600', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2058', '桂林医学院', '4145010601', '广西壮族自治区', '桂林市', '本科', '');
INSERT INTO `schools` VALUES ('2059', '广西师范大学', '4145010602', '广西壮族自治区', '桂林市', '本科', '');
INSERT INTO `schools` VALUES ('2060', '南宁师范大学', '4145010603', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2061', '广西民族师范学院', '4145010604', '广西壮族自治区', '崇左市', '本科', '');
INSERT INTO `schools` VALUES ('2062', '河池学院', '4145010605', '广西壮族自治区', '河池市', '本科', '');
INSERT INTO `schools` VALUES ('2063', '玉林师范学院', '4145010606', '广西壮族自治区', '玉林市', '本科', '');
INSERT INTO `schools` VALUES ('2064', '广西艺术学院', '4145010607', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2065', '广西民族大学', '4145010608', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2066', '百色学院', '4145010609', '广西壮族自治区', '百色市', '本科', '');
INSERT INTO `schools` VALUES ('2067', '梧州学院', '4145011354', '广西壮族自治区', '梧州市', '本科', '');
INSERT INTO `schools` VALUES ('2068', '广西科技师范学院', '4145011546', '广西壮族自治区', '来宾市', '本科', '');
INSERT INTO `schools` VALUES ('2069', '广西财经学院', '4145011548', '广西壮族自治区', '南宁市', '本科', '');
INSERT INTO `schools` VALUES ('2070', '南宁学院', '4145011549', '广西壮族自治区教育厅', '南宁市', '本科', '民办');
INSERT INTO `schools` VALUES ('21', '北京协和医学院', '4111010023', '国家卫生健康委员会', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2136', '海南大学', '4146010589', '海南省', '海口市', '本科', '');
INSERT INTO `schools` VALUES ('2137', '海南热带海洋学院', '4146011100', '海南省', '三亚市', '本科', '');
INSERT INTO `schools` VALUES ('2138', '海南师范大学', '4146011658', '海南省', '海口市', '本科', '');
INSERT INTO `schools` VALUES ('2139', '海南医学院', '4146011810', '海南省', '海口市', '本科', '');
INSERT INTO `schools` VALUES ('2140', '海口经济学院', '4146012308', '海南省教育厅', '海口市', '本科', '民办');
INSERT INTO `schools` VALUES ('2141', '琼台师范学院', '4146013811', '海南省', '海口市', '本科', '');
INSERT INTO `schools` VALUES ('2142', '三亚学院', '4146013892', '海南省教育厅', '三亚市', '本科', '民办');
INSERT INTO `schools` VALUES ('2143', '海南科技职业大学', '4146014172', '海南省教育厅', '海口市', '本科', '民办');
INSERT INTO `schools` VALUES ('2157', '重庆大学', '4150010611', '教育部', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2158', '重庆邮电大学', '4150010617', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2159', '重庆交通大学', '4150010618', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2160', '重庆医科大学', '4150010631', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2161', '西南大学', '4150010635', '教育部', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2162', '重庆师范大学', '4150010637', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2163', '重庆文理学院', '4150010642', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2164', '重庆三峡学院', '4150010643', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2165', '长江师范学院', '4150010647', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2166', '四川外国语大学', '4150010650', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2167', '西南政法大学', '4150010652', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2168', '四川美术学院', '4150010655', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2169', '重庆科技学院', '4150011551', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('2170', '重庆理工大学', '4150011660', '重庆市', '重庆市', '本科', '');
INSERT INTO `schools` VALUES ('22', '首都医科大学', '4111010025', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2226', '四川大学', '4151010610', '教育部', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2227', '西南交通大学', '4151010613', '教育部', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2228', '电子科技大学', '4151010614', '教育部', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2229', '西南石油大学', '4151010615', '四川省', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2230', '成都理工大学', '4151010616', '四川省', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2231', '西南科技大学', '4151010619', '四川省', '绵阳市', '本科', '');
INSERT INTO `schools` VALUES ('2232', '成都信息工程大学', '4151010621', '四川省', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2233', '四川轻化工大学', '4151010622', '四川省', '自贡市', '本科', '');
INSERT INTO `schools` VALUES ('2234', '西华大学', '4151010623', '四川省', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2235', '中国民用', '4151010624', '交通运输部', '德阳市', '本科', '');
INSERT INTO `schools` VALUES ('2236', '四川农业大学', '4151010626', '四川省', '雅安市', '本科', '');
INSERT INTO `schools` VALUES ('2237', '西昌学院', '4151010628', '四川省', '凉山彝族自治州', '本科', '');
INSERT INTO `schools` VALUES ('2238', '西南医科大学', '4151010632', '四川省', '泸州市', '本科', '');
INSERT INTO `schools` VALUES ('2239', '成都中医药大学', '4151010633', '四川省', '成都市', '本科', '');
INSERT INTO `schools` VALUES ('2240', '川北医学院', '4151010634', '四川省', '南充市', '本科', '');
INSERT INTO `schools` VALUES ('23', '北京中医药大学', '4111010026', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2360', '贵州大学', '4152010657', '贵州省', '贵阳市', '本科', '');
INSERT INTO `schools` VALUES ('2361', '贵州医科大学', '4152010660', '贵州省', '贵阳市', '本科', '');
INSERT INTO `schools` VALUES ('2362', '遵义医科大学', '4152010661', '贵州省', '遵义市', '本科', '');
INSERT INTO `schools` VALUES ('2363', '贵州中医药大学', '4152010662', '贵州省', '贵阳市', '本科', '');
INSERT INTO `schools` VALUES ('2364', '贵州师范大学', '4152010663', '贵州省', '贵阳市', '本科', '');
INSERT INTO `schools` VALUES ('2365', '遵义师范学院', '4152010664', '贵州省', '遵义市', '本科', '');
INSERT INTO `schools` VALUES ('2366', '铜仁学院', '4152010665', '贵州省', '铜仁市', '本科', '');
INSERT INTO `schools` VALUES ('2367', '兴义民族师范学院', '4152010666', '贵州省', '族苗族自治州', '本科', '');
INSERT INTO `schools` VALUES ('2368', '安顺学院', '4152010667', '贵州省', '安顺市', '本科', '');
INSERT INTO `schools` VALUES ('2369', '贵州工程应用技术学院', '4152010668', '贵州省', '毕节市', '本科', '');
INSERT INTO `schools` VALUES ('2370', '凯里学院', '4152010669', '贵州省', '侗族自治州', '本科', '');
INSERT INTO `schools` VALUES ('2371', '黔南民族师范学院', '4152010670', '贵州省', '苗族自治州', '本科', '');
INSERT INTO `schools` VALUES ('24', '北京师范大学', '4111010027', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2435', '云南大学', '4153010673', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2436', '昆明理工大学', '4153010674', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2437', '云南农业大学', '4153010676', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2438', '西南林业大学', '4153010677', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2439', '昆明医科大学', '4153010678', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2440', '大理大学', '4153010679', '云南省', '大理白族自治州', '本科', '');
INSERT INTO `schools` VALUES ('2441', '云南中医药大学', '4153010680', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2442', '云南师范大学', '4153010681', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2443', '昭通学院', '4153010683', '云南省', '昭通市', '本科', '');
INSERT INTO `schools` VALUES ('2444', '曲靖师范学院', '4153010684', '云南省', '曲靖市', '本科', '');
INSERT INTO `schools` VALUES ('2445', '普洱学院', '4153010685', '云南省', '普洱市', '本科', '');
INSERT INTO `schools` VALUES ('2446', '保山学院', '4153010686', '云南省', '保山市', '本科', '');
INSERT INTO `schools` VALUES ('2447', '红河学院', '4153010687', '云南省', '红河哈尼族彝族自治州', '本科', '');
INSERT INTO `schools` VALUES ('2448', '云南财经大学', '4153010689', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2449', '云南艺术学院', '4153010690', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2450', '云南民族大学', '4153010691', '云南省', '昆明市', '本科', '');
INSERT INTO `schools` VALUES ('2451', '玉溪师范学院', '4153011390', '云南省', '玉溪市', '本科', '');
INSERT INTO `schools` VALUES ('2452', '楚雄师范学院', '4153011391', '云南省', '楚雄彝族自治州', '本科', '');
INSERT INTO `schools` VALUES ('25', '首都师范大学', '4111010028', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2517', '西藏农牧学院', '4154010693', '西藏自治区', '林芝市', '本科', '');
INSERT INTO `schools` VALUES ('2518', '西藏大学', '4154010694', '西藏自治区', '拉萨市', '本科', '');
INSERT INTO `schools` VALUES ('2519', '西藏民族大学', '4154010695', '西藏自治区', '咸阳市', '本科', '');
INSERT INTO `schools` VALUES ('2520', '西藏藏医药大学', '4154010696', '西藏自治区', '拉萨市', '本科', '');
INSERT INTO `schools` VALUES ('2521', '西藏警官高等专科学校', '4154010692', '西藏自治区', '拉萨市', '专科', '');
INSERT INTO `schools` VALUES ('2522', '拉萨师范高等专科学校', '4154012481', '西藏自治区', '拉萨市', '专科', '');
INSERT INTO `schools` VALUES ('2523', '西藏职业技术学院', '4154014085', '西藏自治区', '拉萨市', '专科', '');
INSERT INTO `schools` VALUES ('2524', '西北大学', '4161010697', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2525', '西安交通大学', '4161010698', '教育部', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2526', '西北工业大学', '4161010699', '工业和信息化部', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2527', '西安理工大学', '4161010700', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2528', '西安电子科技大学', '4161010701', '教育部', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2529', '西安工业大学', '4161010702', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2530', '西安建筑科技大学', '4161010703', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2531', '西安科技大学', '4161010704', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2532', '西安石油大学', '4161010705', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2533', '陕西科技大学', '4161010708', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2534', '西安工程大学', '4161010709', '陕西省', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2535', '长安大学', '4161010710', '教育部', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2536', '西北农林科技大学', '4161010712', '教育部', '咸阳市', '本科', '');
INSERT INTO `schools` VALUES ('2537', '陕西中医药大学', '4161010716', '陕西省', '咸阳市', '本科', '');
INSERT INTO `schools` VALUES ('2538', '陕西师范大学', '4161010718', '教育部', '西安市', '本科', '');
INSERT INTO `schools` VALUES ('2539', '延安大学', '4161010719', '陕西省', '延安市', '本科', '');
INSERT INTO `schools` VALUES ('2540', '陕西理工大学', '4161010720', '陕西省', '汉中市', '本科', '');
INSERT INTO `schools` VALUES ('2541', '宝鸡文理学院', '4161010721', '陕西省', '宝鸡市', '本科', '');
INSERT INTO `schools` VALUES ('26', '首都体育学院', '4111010029', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2682', '宁夏大学', '4164010749', '宁夏回族自治区', '银川市', '本科', '');
INSERT INTO `schools` VALUES ('2683', '宁夏医科大学', '4164010752', '宁夏回族自治区', '银川市', '本科', '');
INSERT INTO `schools` VALUES ('2684', '宁夏师范学院', '4164010753', '宁夏回族自治区', '固原市', '本科', '');
INSERT INTO `schools` VALUES ('2685', '北方民族大学', '4164011407', '国家民委', '银川市', '本科', '');
INSERT INTO `schools` VALUES ('2686', '宁夏理工学院', '4164012544', '宁夏回族自治区教育厅', '石嘴山市', '本科', '民办');
INSERT INTO `schools` VALUES ('2687', '宁夏大学新华学院', '4164013325', '宁夏回族自治区教育厅', '银川市', '本科', '民办');
INSERT INTO `schools` VALUES ('2688', '银川能源学院', '4164013820', '宁夏回族自治区教育厅', '银川市', '本科', '民办');
INSERT INTO `schools` VALUES ('2689', '银川科技学院', '4164014200', '宁夏回族自治区教育厅', '银川市', '本科', '民办');
INSERT INTO `schools` VALUES ('2690', '宁夏民族职业技术学院', '4164012716', '宁夏回族自治区', '吴忠市', '专科', '');
INSERT INTO `schools` VALUES ('27', '北京外国语大学', '4111010030', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('2702', '新疆大学', '4165010755', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('2703', '塔里木大学', '4165010757', '新疆生产建设兵团', '阿拉尔市', '本科', '');
INSERT INTO `schools` VALUES ('2704', '新疆农业大学', '4165010758', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('2705', '石河子大学', '4165010759', '新疆生产建设兵团', '石河子市', '本科', '');
INSERT INTO `schools` VALUES ('2706', '新疆医科大学', '4165010760', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('2707', '新疆师范大学', '4165010762', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('2708', '喀什大学', '4165010763', '新疆维吾尔自治区', '喀什地区', '本科', '');
INSERT INTO `schools` VALUES ('2709', '伊犁师范大学', '4165010764', '新疆维吾尔自治区', '伊犁哈萨克自治州', '本科', '');
INSERT INTO `schools` VALUES ('2710', '新疆财经大学', '4165010766', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('2711', '新疆艺术学院', '4165010768', '新疆维吾尔自治区', '乌鲁木齐市', '本科', '');
INSERT INTO `schools` VALUES ('272', '山西大学', '4114010108', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('273', '太原科技大学', '4114010109', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('274', '中北大学', '4114010110', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('275', '太原理工大学', '4114010112', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('276', '山西农业大学', '4114010113', '山西省', '晋中市', '本科', '');
INSERT INTO `schools` VALUES ('277', '山西医科大学', '4114010114', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('278', '长治医学院', '4114010117', '山西省', '长治市', '本科', '');
INSERT INTO `schools` VALUES ('279', '山西师范大学', '4114010118', '山西省', '临汾市', '本科', '');
INSERT INTO `schools` VALUES ('28', '北京第二外国语学院', '4111010031', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('280', '太原师范学院', '4114010119', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('281', '山西大同大学', '4114010120', '山西省', '大同市', '本科', '');
INSERT INTO `schools` VALUES ('282', '晋中学院', '4114010121', '山西省', '晋中市', '本科', '');
INSERT INTO `schools` VALUES ('283', '长治学院', '4114010122', '山西省', '长治市', '本科', '');
INSERT INTO `schools` VALUES ('284', '运城学院', '4114010123', '山西省', '运城市', '本科', '');
INSERT INTO `schools` VALUES ('285', '忻州师范学院', '4114010124', '山西省', '忻州市', '本科', '');
INSERT INTO `schools` VALUES ('286', '山西财经大学', '4114010125', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('287', '山西中医药大学', '4114010809', '山西省', '太原市', '本科', '');
INSERT INTO `schools` VALUES ('29', '北京语言大学', '4111010032', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('3', '清华大学', '4111010003', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('30', '中国传媒大学', '4111010033', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('31', '中央财经大学', '4111010034', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('32', '对外经济贸易大学', '4111010036', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('33', '北京物资学院', '4111010037', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('34', '首都经济贸易大学', '4111010038', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('35', '中国消防救援学院', '4111010039', '应急管理部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('354', '内蒙古大学', '4115010126', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('355', '内蒙古科技大学', '4115010127', '内蒙古自治区', '包头市', '本科', '');
INSERT INTO `schools` VALUES ('356', '内蒙古工业大学', '4115010128', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('357', '内蒙古农业大学', '4115010129', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('358', '内蒙古医科大学', '4115010132', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('359', '内蒙古师范大学', '4115010135', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('36', '外交学院', '4111010040', '外交部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('360', '内蒙古民族大学', '4115010136', '内蒙古自治区', '通辽市', '本科', '');
INSERT INTO `schools` VALUES ('361', '赤峰学院', '4115010138', '内蒙古自治区', '赤峰市', '本科', '');
INSERT INTO `schools` VALUES ('362', '内蒙古财经大学', '4115010139', '内蒙古自治区', '呼和浩特市', '本科', '');
INSERT INTO `schools` VALUES ('363', '呼伦贝尔学院', '4115010819', '内蒙古自治区', '呼伦贝尔市', '本科', '');
INSERT INTO `schools` VALUES ('37', '中国人民公安大学', '4111010041', '公安部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('38', '国际关系学院', '4111010042', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('39', '北京体育大学', '4111010043', '国家体育总局', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('4', '北京交通大学', '4111010004', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('40', '中央音乐学院', '4111010045', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('408', '辽宁大学', '4121010140', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('409', '大连理工大学', '4121010141', '教育部', '大连市', '本科', '');
INSERT INTO `schools` VALUES ('41', '中国音乐学院', '4111010046', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('410', '沈阳工业大学', '4121010142', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('411', '沈阳航空航天大学', '4121010143', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('412', '沈阳理工大学', '4121010144', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('413', '东北大学', '4121010145', '教育部', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('414', '辽宁科技大学', '4121010146', '辽宁省', '鞍山市', '本科', '');
INSERT INTO `schools` VALUES ('415', '辽宁工程技术大学', '4121010147', '辽宁省', '阜新市', '本科', '');
INSERT INTO `schools` VALUES ('416', '辽宁石油化工大学', '4121010148', '辽宁省', '抚顺市', '本科', '');
INSERT INTO `schools` VALUES ('417', '沈阳化工大学', '4121010149', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('418', '大连交通大学', '4121010150', '辽宁省', '大连市', '本科', '');
INSERT INTO `schools` VALUES ('419', '大连海事大学', '4121010151', '交通运输部', '大连市', '本科', '');
INSERT INTO `schools` VALUES ('42', '中央美术学院', '4111010047', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('420', '大连工业大学', '4121010152', '辽宁省', '大连市', '本科', '');
INSERT INTO `schools` VALUES ('421', '沈阳建筑大学', '4121010153', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('422', '辽宁工业大学', '4121010154', '辽宁省', '锦州市', '本科', '');
INSERT INTO `schools` VALUES ('423', '沈阳农业大学', '4121010157', '辽宁省', '沈阳市', '本科', '');
INSERT INTO `schools` VALUES ('424', '大连海洋大学', '4121010158', '辽宁省', '大连市', '本科', '');
INSERT INTO `schools` VALUES ('43', '中央戏剧学院', '4111010048', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('44', '中国戏曲学院', '4111010049', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('45', '北京电影学院', '4111010050', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('46', '北京舞蹈学院', '4111010051', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('47', '中央民族大学', '4111010052', '国家民委', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('48', '中国政法大学', '4111010053', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('49', '华北电力大学', '4111010054', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('5', '北京工业大学', '4111010005', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('50', '中华女子学院', '4111011149', '中华妇女联合会', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('51', '北京信息科技大学', '4111011232', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('52', '中国矿业大学（北京）', '4111011413', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('522', '吉林大学', '4122010183', '教育部', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('523', '延边大学', '4122010184', '吉林省', '延边朝鲜族自治州', '本科', '');
INSERT INTO `schools` VALUES ('524', '长春理工大学', '4122010186', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('525', '东北电力大学', '4122010188', '吉林省', '吉林市', '本科', '');
INSERT INTO `schools` VALUES ('526', '长春工业大学', '4122010190', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('527', '吉林建筑大学', '4122010191', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('528', '吉林化工学院', '4122010192', '吉林省', '吉林市', '本科', '');
INSERT INTO `schools` VALUES ('529', '吉林农业大学', '4122010193', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('53', '中国石油大学（北京）', '4111011414', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('530', '长春中医药大学', '4122010199', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('531', '东北师范大学', '4122010200', '教育部', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('532', '北华大学', '4122010201', '吉林省', '吉林市', '本科', '');
INSERT INTO `schools` VALUES ('533', '通化师范学院', '4122010202', '吉林省', '通化市', '本科', '');
INSERT INTO `schools` VALUES ('534', '吉林师范大学', '4122010203', '吉林省', '四平市', '本科', '');
INSERT INTO `schools` VALUES ('535', '吉林工程技术师范学院', '4122010204', '吉林省', '长春市', '本科', '');
INSERT INTO `schools` VALUES ('54', '中国地质大学（北京）', '4111011415', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('55', '北京联合大学', '4111011417', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('56', '北京城市学院', '4111011418', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('57', '中国青年政治学院', '4111011625', '共青团中央', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('58', '首钢工学院', '4111011831', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('588', '黑龙江大学', '4123010212', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('589', '哈尔滨工业大学', '4123010213', '工业和信息化部', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('59', '中国劳动关系学院', '4111012453', '中华全国总工会', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('590', '哈尔滨理工大学', '4123010214', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('591', '哈尔滨工程大学', '4123010217', '工业和信息化部', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('592', '黑龙江科技大学', '4123010219', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('593', '东北石油大学', '4123010220', '黑龙江省', '大庆市', '本科', '');
INSERT INTO `schools` VALUES ('594', '佳木斯大学', '4123010222', '黑龙江省', '佳木斯市', '本科', '');
INSERT INTO `schools` VALUES ('595', '黑龙江八一农垦大学', '4123010223', '黑龙江省', '大庆市', '本科', '');
INSERT INTO `schools` VALUES ('596', '东北农业大学', '4123010224', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('597', '东北林业大学', '4123010225', '教育部', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('598', '哈尔滨医科大学', '4123010226', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('599', '黑龙江中医药大学', '4123010228', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('6', '北京航空航天大学', '4111010006', '工业和信息化部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('60', '首都师范大学科德学院', '4111013629', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('600', '牡丹江医学院', '4123010229', '黑龙江省', '牡丹江市', '本科', '');
INSERT INTO `schools` VALUES ('601', '哈尔滨师范大学', '4123010231', '黑龙江省', '哈尔滨市', '本科', '');
INSERT INTO `schools` VALUES ('602', '齐齐哈尔大学', '4123010232', '黑龙江省', '齐齐哈尔市', '本科', '');
INSERT INTO `schools` VALUES ('603', '牡丹江师范学院', '4123010233', '黑龙江省', '牡丹江市', '本科', '');
INSERT INTO `schools` VALUES ('61', '北京工商大学嘉华学院', '4111013630', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('62', '北京邮电大学世纪学院', '4111013901', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('63', '北京工业大学耿丹学院', '4111013904', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('64', '北京警察学院', '4111014019', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('65', '北京中瑞酒店管理学院', '4111014201', '北京市教委', '北京市', '本科', '民办');
INSERT INTO `schools` VALUES ('66', '中国科学院大学', '4111014430', '中国科学院', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('668', '复旦大学', '4131010246', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('669', '同济大学', '4131010247', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('67', '中国社会科学院大学', '4111014596', '中国社会科学院', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('670', '上海交通大学', '4131010248', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('671', '华东理工大学', '4131010251', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('672', '上海理工大学', '4131010252', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('673', '上海海事大学', '4131010254', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('674', '东华大学', '4131010255', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('675', '上海电力大学', '4131010256', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('676', '上海应用技术大学', '4131010259', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('677', '上海健康医学院', '4131010262', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('678', '上海海洋大学', '4131010264', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('679', '上海中医药大学', '4131010268', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('68', '北京工业职业技术学院', '4111010853', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('680', '华东师范大学', '4131010269', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('681', '上海师范大学', '4131010270', '上海市', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('682', '上海外国语大学', '4131010271', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('683', '上海财经大学', '4131010272', '教育部', '上海市', '本科', '');
INSERT INTO `schools` VALUES ('69', '北京信息职业技术学院', '4111010857', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('7', '北京理工大学', '4111010007', '工业和信息化部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('70', '北京电子科技职业学院', '4111010858', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('71', '北京京北职业技术学院', '4111011090', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('72', '北京交通职业技术学院', '4111011092', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('73', '北京青年政治学院', '4111011626', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('732', '南京大学', '4132010284', '教育部', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('733', '苏州大学', '4132010285', '江苏省', '苏州市', '本科', '');
INSERT INTO `schools` VALUES ('734', '东南大学', '4132010286', '教育部', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('735', '南京航空航天大学', '4132010287', '工业和信息化部', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('736', '南京理工大学', '4132010288', '工业和信息化部', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('737', '江苏科技大学', '4132010289', '江苏省', '镇江市', '本科', '');
INSERT INTO `schools` VALUES ('738', '中国矿业大学', '4132010290', '教育部', '徐州市', '本科', '');
INSERT INTO `schools` VALUES ('739', '南京工业大学', '4132010291', '江苏省', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('74', '北京农业职业学院', '4111012448', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('740', '常州大学', '4132010292', '江苏省', '常州市', '本科', '');
INSERT INTO `schools` VALUES ('741', '南京邮电大学', '4132010293', '江苏省', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('742', '河海大学', '4132010294', '教育部', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('743', '江南大学', '4132010295', '教育部', '无锡市', '本科', '');
INSERT INTO `schools` VALUES ('744', '南京林业大学', '4132010298', '江苏省', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('745', '江苏大学', '4132010299', '江苏省', '镇江市', '本科', '');
INSERT INTO `schools` VALUES ('746', '南京信息工程大学', '4132010300', '江苏省', '南京市', '本科', '');
INSERT INTO `schools` VALUES ('747', '南通大学', '4132010304', '江苏省', '南通市', '本科', '');
INSERT INTO `schools` VALUES ('748', '盐城工学院', '4132010305', '江苏省', '盐城市', '本科', '');
INSERT INTO `schools` VALUES ('75', '北京政法职业学院', '4111012451', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('76', '北京财贸职业学院', '4111012561', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('77', '北京件职业技术学院', '4111012564', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('78', '北京经贸职业学院', '4111012565', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('79', '北京经济技术职业学院', '4111012566', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('8', '北京科技大学', '4111010008', '教育部', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('80', '北京戏曲艺术职业学院', '4111012567', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('81', '北京汇佳职业学院', '4111012568', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('82', '北京科技经营管理学院', '4111012733', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('83', '北京科技职业学院', '4111013703', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('84', '北京培黎职业学院', '4111013728', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('85', '北京经济管理职业学院', '4111014073', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('86', '北京劳动保障职业学院', '4111014075', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('87', '北京社会管理职业学院', '4111014139', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('88', '北京艺术传媒职业学院', '4111014140', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('89', '北京体育职业学院', '4111014215', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('899', '浙江大学', '4133010335', '教育部', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('9', '北方工业大学', '4111010009', '北京市', '北京市', '本科', '');
INSERT INTO `schools` VALUES ('90', '北京交通运输职业学院', '4111014279', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('900', '杭州电子科技大学', '4133010336', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('901', '浙江工业大学', '4133010337', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('902', '浙江理工大学', '4133010338', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('903', '浙江海洋大学', '4133010340', '浙江省', '舟山市', '本科', '');
INSERT INTO `schools` VALUES ('904', '浙江农林大学', '4133010341', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('905', '温州医科大学', '4133010343', '浙江省', '温州市', '本科', '');
INSERT INTO `schools` VALUES ('906', '浙江中医药大学', '4133010344', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('907', '浙江师范大学', '4133010345', '浙江省', '金华市', '本科', '');
INSERT INTO `schools` VALUES ('908', '杭州师范大学', '4133010346', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('909', '湖州师范学院', '4133010347', '浙江省', '湖州市', '本科', '');
INSERT INTO `schools` VALUES ('91', '北京卫生职业学院', '4111014395', '北京市', '北京市', '专科', '');
INSERT INTO `schools` VALUES ('910', '绍兴文理学院', '4133010349', '浙江省', '绍兴市', '本科', '');
INSERT INTO `schools` VALUES ('911', '台州学院', '4133010350', '浙江省', '台州市', '本科', '');
INSERT INTO `schools` VALUES ('912', '温州大学', '4133010351', '浙江省', '温州市', '本科', '');
INSERT INTO `schools` VALUES ('913', '丽水学院', '4133010352', '浙江省', '丽水市', '本科', '');
INSERT INTO `schools` VALUES ('914', '浙江工商大学', '4133010353', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('915', '嘉兴学院', '4133010354', '浙江省', '嘉兴市', '本科', '');
INSERT INTO `schools` VALUES ('916', '中国美术学院', '4133010355', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('917', '中国计量大学', '4133010356', '浙江省', '杭州市', '本科', '');
INSERT INTO `schools` VALUES ('918', '浙江万里学院', '4133010876', '浙江省', '宁波市', '本科', '');
INSERT INTO `schools` VALUES ('92', '北京网络职业学院', '4111014588', '北京市教委', '北京市', '专科', '民办');
INSERT INTO `schools` VALUES ('93', '南开大学', '4112010055', '教育部', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('94', '天津大学', '4112010056', '教育部', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('95', '天津科技大学', '4112010057', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('96', '天津工业大学', '4112010058', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('97', '中国民航大学', '4112010059', '交通运输部', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('98', '天津理工大学', '4112010060', '天津市', '天津市', '本科', '');
INSERT INTO `schools` VALUES ('99', '天津农学院', '4112010061', '天津市', '天津市', '本科', '');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ssex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sbirthday` date NOT NULL,
  `saddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isDel` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1568 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, 'J21085507', '陆洋', '男', '1995-06-23', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (2, 'J21038797', '邓艳', '男', '1974-12-29', '江西省 吉安市 峡江县', 0);
INSERT INTO `students` VALUES (3, 'J21050338', '沈杰', '男', '1995-01-01', '台湾 高雄市 桥头区', 0);
INSERT INTO `students` VALUES (4, 'J21097783', '陈霞', '女', '1997-03-01', '天津 天津市 和平区', 0);
INSERT INTO `students` VALUES (5, 'J21087597', '毛军', '男', '2011-08-11', '重庆 重庆市 南岸区', 0);
INSERT INTO `students` VALUES (6, 'J21085507', '陆洋', '男', '1995-06-24', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (7, 'J21077418', '蒋秀兰', '男', '1994-12-27', '广东省 东莞市 -', 0);
INSERT INTO `students` VALUES (8, 'H21081857', '张艳', '女', '2002-04-22', '四川省 内江市 威远县', 0);
INSERT INTO `students` VALUES (9, 'H21041448', '龙秀兰', '女', '1984-11-02', '江西省 景德镇市 珠山区', 0);
INSERT INTO `students` VALUES (10, 'H21087083', '贾洋', '男', '2005-10-18', '天津 天津市 和平区', 0);
INSERT INTO `students` VALUES (11, 'H21033711', '江娜', '女', '2006-05-26', '西藏自治区 那曲地区 巴青县', 0);
INSERT INTO `students` VALUES (12, 'J21097408', '李刚', '男', '1996-10-17', '四川省 资阳市 其它区', 0);
INSERT INTO `students` VALUES (13, 'H21077550', '赵娟', '女', '2021-06-09', '山西省 朔州市 其它区', 0);
INSERT INTO `students` VALUES (14, 'H21056311', '苏霞', '女', '2016-02-28', '新疆维吾尔自治区 吐鲁番地区 吐鲁番市', 0);
INSERT INTO `students` VALUES (15, 'J21087258', '罗磊', '女', '2014-11-29', '黑龙江省 伊春市 翠峦区', 0);
INSERT INTO `students` VALUES (16, 'H21026038', '贾艳', '男', '1971-07-01', '甘肃省 金昌市 永昌县', 0);
INSERT INTO `students` VALUES (17, 'J21023810', '彭杰', '男', '1976-05-19', '湖北省 襄阳市 保康县', 0);
INSERT INTO `students` VALUES (18, 'J21048352', '沈超', '男', '1971-11-12', '新疆维吾尔自治区 巴音郭楞蒙古自治州 若羌县', 0);
INSERT INTO `students` VALUES (19, 'J21088654', '段刚', '女', '1993-03-02', '江苏省 徐州市 泉山区', 0);
INSERT INTO `students` VALUES (20, 'J21085915', '夏涛', '男', '2010-01-04', '云南省 曲靖市 沾益县', 0);
INSERT INTO `students` VALUES (21, 'J21062112', '贺艳', '男', '2013-10-18', '青海省 果洛藏族自治州 玛多县', 0);
INSERT INTO `students` VALUES (22, 'H21054426', '邱杰', '男', '2006-10-26', '青海省 玉树藏族自治州 杂多县', 0);
INSERT INTO `students` VALUES (23, 'J21061559', '尹磊', '女', '1976-02-04', '甘肃省 酒泉市 敦煌市', 0);
INSERT INTO `students` VALUES (24, 'J21035186', '唐涛', '男', '1988-12-19', '河北省 邢台市 平乡县', 0);
INSERT INTO `students` VALUES (25, 'J21073733', '刘勇', '男', '1970-07-10', '山东省 淄博市 其它区', 0);
INSERT INTO `students` VALUES (26, 'H21086316', '蔡明', '女', '2021-09-16', '云南省 昭通市 巧家县', 0);
INSERT INTO `students` VALUES (27, 'H21068146', '徐军', '女', '1977-07-12', '陕西省 汉中市 西乡县', 0);
INSERT INTO `students` VALUES (28, 'H21040977', '程刚', '女', '1977-12-08', '香港特别行政区 香港岛 湾仔', 0);
INSERT INTO `students` VALUES (29, 'H21021951', '黄敏', '男', '1978-07-14', '吉林省 辽源市 东辽县', 0);
INSERT INTO `students` VALUES (30, 'H21089252', '段秀英', '女', '2009-01-08', '山西省 阳泉市 矿区', 0);
INSERT INTO `students` VALUES (31, 'J21081252', '唐明', '男', '2008-09-01', '安徽省 淮南市 潘集区', 0);
INSERT INTO `students` VALUES (32, 'H21072211', '程娟', '女', '1976-10-20', '湖南省 益阳市 资阳区', 0);
INSERT INTO `students` VALUES (33, 'J21061412', '夏霞', '女', '2017-03-26', '河南省 周口市 鹿邑县', 0);
INSERT INTO `students` VALUES (34, 'J21052984', '锺霞', '女', '1977-07-30', '甘肃省 平凉市 灵台县', 0);
INSERT INTO `students` VALUES (35, 'H21051483', '锺平', '女', '1995-10-01', '河南省 三门峡市 卢氏县', 0);
INSERT INTO `students` VALUES (36, 'H21036856', '郝霞', '男', '1975-02-02', '山东省 东营市 垦利县', 0);
INSERT INTO `students` VALUES (37, 'J21064656', '陈军', '男', '2011-07-12', '湖北省 荆门市 京山县', 0);
INSERT INTO `students` VALUES (38, 'H21057716', '白刚', '女', '1987-04-05', '澳门特别行政区 离岛 -', 0);
INSERT INTO `students` VALUES (39, 'J21022849', '武敏', '男', '1986-08-28', '安徽省 黄山市 休宁县', 0);
INSERT INTO `students` VALUES (40, 'J21072844', '贾超', '女', '2020-04-18', '广东省 湛江市 霞山区', 0);
INSERT INTO `students` VALUES (41, 'J21052058', '廖静', '女', '1995-03-18', '云南省 大理白族自治州 永平县', 0);
INSERT INTO `students` VALUES (42, 'J21041341', '汪敏', '女', '2012-08-11', '山西省 长治市 襄垣县', 0);
INSERT INTO `students` VALUES (43, 'H21064370', '孔洋', '女', '2000-03-25', '江苏省 镇江市 丹阳市', 0);
INSERT INTO `students` VALUES (44, 'H21088182', '叶刚', '男', '1982-04-09', '内蒙古自治区 乌海市 乌达区', 0);
INSERT INTO `students` VALUES (45, 'J21086496', '姚霞', '女', '2019-10-25', '陕西省 榆林市 定边县', 0);
INSERT INTO `students` VALUES (46, 'J21026418', '郑娟', '女', '2002-03-07', '广西壮族自治区 北海市 铁山港区', 0);
INSERT INTO `students` VALUES (47, 'J21056849', '陆娟', '男', '2017-07-05', '宁夏回族自治区 石嘴山市 平罗县', 0);
INSERT INTO `students` VALUES (48, 'H21062373', '戴勇', '女', '2001-04-21', '山西省 临汾市 吉县', 0);
INSERT INTO `students` VALUES (49, 'H21034915', '韩军', '男', '1977-10-11', '辽宁省 辽阳市 灯塔市', 0);
INSERT INTO `students` VALUES (50, 'J21031782', '熊涛', '男', '2003-03-12', '江西省 南昌市 西湖区', 0);
INSERT INTO `students` VALUES (51, 'J21092245', '卢刚', '男', '1979-04-15', '浙江省 嘉兴市 其它区', 0);
INSERT INTO `students` VALUES (52, 'J21016262', '白艳', '女', '1988-09-04', '台湾 高雄市 旗津区', 0);
INSERT INTO `students` VALUES (53, 'J21024737', '杜丽', '男', '1981-11-30', '山西省 大同市 广灵县', 0);
INSERT INTO `students` VALUES (54, 'J21063620', '廖明', '男', '1999-03-14', '天津 天津市 红桥区', 0);
INSERT INTO `students` VALUES (55, 'H21070387', '黄涛', '男', '1985-06-08', '贵州省 铜仁市 万山区', 0);
INSERT INTO `students` VALUES (61, 'J21085507', '陆洋', '男', '1970-01-01', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (62, 'J21038797', '邓艳', '男', '1970-01-01', '江西省 吉安市 峡江县', 0);
INSERT INTO `students` VALUES (63, 'J21050338', '沈杰', '男', '1970-01-01', '台湾 高雄市 桥头区', 0);
INSERT INTO `students` VALUES (64, 'J21097783', '陈霞', '女', '1970-01-01', '天津 天津市 和平区', 0);
INSERT INTO `students` VALUES (65, 'J21087597', '毛军', '男', '1970-01-01', '重庆 重庆市 南岸区', 0);
INSERT INTO `students` VALUES (66, 'J21085507', '陆洋', '男', '1970-01-01', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (67, 'J21077418', '蒋秀兰', '男', '1970-01-01', '广东省 东莞市 -', 0);
INSERT INTO `students` VALUES (68, 'H21081857', '张艳', '女', '1970-01-01', '四川省 内江市 威远县', 0);
INSERT INTO `students` VALUES (69, 'H21041448', '龙秀兰', '女', '1970-01-01', '江西省 景德镇市 珠山区', 0);
INSERT INTO `students` VALUES (70, 'H21087083', '贾洋', '男', '1970-01-01', '天津 天津市 和平区', 0);
INSERT INTO `students` VALUES (71, 'J21085507', '陆洋', '男', '1970-01-01', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (72, 'J21038797', '邓艳', '男', '1970-01-01', '江西省 吉安市 峡江县', 0);
INSERT INTO `students` VALUES (73, 'J21050338', '沈杰', '男', '1970-01-01', '台湾 高雄市 桥头区', 0);
INSERT INTO `students` VALUES (74, 'J21097783', '陈霞', '女', '1970-01-01', '天津 天津市 和平区', 0);
INSERT INTO `students` VALUES (75, 'J21085507', '陆洋', '男', '1970-01-01', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (78, 'J21085507', '陆洋', '男', '1970-01-01', '吉林省 松原市 乾安县', 0);
INSERT INTO `students` VALUES (91, 'J21038797', '邓艳', '男', '1970-01-01', '江西省 吉安市 峡江县', 0);
INSERT INTO `students` VALUES (93, 'J21097783', '士大夫', '女', '1970-01-01', '天津 天津市 和平区', 0);

-- ----------------------------
-- Table structure for todolist
-- ----------------------------
DROP TABLE IF EXISTS `todolist`;
CREATE TABLE `todolist`  (
  `toDo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `isDone` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `schedule` tinyint(0) NULL DEFAULT 0,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of todolist
-- ----------------------------
INSERT INTO `todolist` VALUES ('刷牙123', 1, 1, 100, 'admin');
INSERT INTO `todolist` VALUES ('洗脸', 0, 2, 100, 'admin');
INSERT INTO `todolist` VALUES ('睡觉', 0, 3, 90, 'admin');
INSERT INTO `todolist` VALUES ('上班', 0, 4, 30, 'admin');
INSERT INTO `todolist` VALUES ('追剧', 1, 5, 10, 'admin');
INSERT INTO `todolist` VALUES ('发呆', 1, 6, 0, 'admin');
INSERT INTO `todolist` VALUES ('发呆21', 1, 7, 0, 'admin');
INSERT INTO `todolist` VALUES ('发呆2d1', 1, 8, 0, 'admin');
INSERT INTO `todolist` VALUES ('我新建一个', 0, 52, 0, '小杜');
INSERT INTO `todolist` VALUES ('吃饭', 0, 53, 0, '小李');
INSERT INTO `todolist` VALUES ('吃饭', 0, 54, 100, '小陈');
INSERT INTO `todolist` VALUES ('睡觉', 0, 55, 0, '小陈');
INSERT INTO `todolist` VALUES ('追剧', 0, 56, 50, '小陈');
INSERT INTO `todolist` VALUES ('打豆豆', 1, 59, 50, '小陈');
INSERT INTO `todolist` VALUES ('嘻嘻哈哈', 0, 60, 17, '小陈');
INSERT INTO `todolist` VALUES ('我新建一个', 1, 61, 0, '小陈');
INSERT INTO `todolist` VALUES ('打豆豆', 1, 62, 0, '小陈');
INSERT INTO `todolist` VALUES ('打豆豆', 0, 63, 90, '小陈');
INSERT INTO `todolist` VALUES ('打豆豆', 1, 64, 50, 'admin');
INSERT INTO `todolist` VALUES ('dsafds', 1, 65, 40, '小杜');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` tinyint(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `idDel` tinyint(1) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `input` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'Admin123', 0, 'admin', 'admin', 'center,class,limit,school,file', 'b45322ce06d8d9d75fe50ae7799dd292login3.jpg');
INSERT INTO `user` VALUES (2, '小杜', 'Xd123123', 0, 'monitor', 'xd', 'center,class', '626600c80f83d3e0b6152f8b94e9f95aOIP-C.jpg');
INSERT INTO `user` VALUES (3, '小陈', 'Xc123123', 0, 'student', 'xc', 'center,class,school', '5f782bb10780df7441371ede9bf385ddgiphy.gif');
INSERT INTO `user` VALUES (4, '小王', 'Xw123123', 0, 'student', 'xw', 'center,school', NULL);
INSERT INTO `user` VALUES (5, '小李', 'Xl123123', 0, 'student', 'xl', 'center,school', NULL);
INSERT INTO `user` VALUES (6, '小刘', 'Xl123123', 0, 'student', 'xl', 'center,school', NULL);

SET FOREIGN_KEY_CHECKS = 1;
