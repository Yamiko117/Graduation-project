/*
 Navicat Premium Data Transfer

 Source Server         : data
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 15/07/2022 21:46:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 11_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `11_student_achievement`;
CREATE TABLE `11_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 11_student_achievement
-- ----------------------------
INSERT INTO `11_student_achievement` VALUES ('2020020001', '2001', 76, 56, 98, 62, 48, 44, 34, 62, 38, 518);
INSERT INTO `11_student_achievement` VALUES ('2020020002', '2001', 112, 49, 63, 76, 33, 40, 90, 64, 92, 619);
INSERT INTO `11_student_achievement` VALUES ('2020020003', '2001', 62, 64, 147, 49, 55, 98, 48, 96, 73, 692);
INSERT INTO `11_student_achievement` VALUES ('2020020004', '2001', 131, 130, 103, 55, 91, 57, 31, 74, 87, 759);
INSERT INTO `11_student_achievement` VALUES ('2020020005', '2001', 109, 88, 120, 98, 38, 60, 96, 83, 40, 732);
INSERT INTO `11_student_achievement` VALUES ('2020020006', '2001', 112, 104, 63, 65, 57, 54, 77, 31, 75, 638);
INSERT INTO `11_student_achievement` VALUES ('2020020007', '2001', 90, 148, 119, 37, 87, 39, 93, 82, 53, 748);
INSERT INTO `11_student_achievement` VALUES ('2020020008', '2001', 81, 145, 91, 92, 70, 80, 74, 98, 64, 795);
INSERT INTO `11_student_achievement` VALUES ('2020020009', '2001', 145, 102, 33, 91, 98, 45, 94, 80, 32, 720);
INSERT INTO `11_student_achievement` VALUES ('2020020010', '2001', 113, 41, 72, 58, 44, 40, 81, 50, 65, 564);
INSERT INTO `11_student_achievement` VALUES ('2020020011', '2001', 148, 42, 76, 61, 94, 51, 66, 75, 56, 669);
INSERT INTO `11_student_achievement` VALUES ('2020020012', '2001', 46, 56, 138, 45, 55, 51, 44, 31, 37, 503);
INSERT INTO `11_student_achievement` VALUES ('2020020013', '2001', 119, 100, 108, 63, 55, 93, 69, 79, 69, 755);
INSERT INTO `11_student_achievement` VALUES ('2020020014', '2001', 145, 140, 48, 94, 49, 76, 47, 55, 45, 699);
INSERT INTO `11_student_achievement` VALUES ('2020020015', '2001', 56, 143, 90, 77, 100, 33, 60, 60, 96, 715);
INSERT INTO `11_student_achievement` VALUES ('2020020016', '2001', 111, 96, 65, 47, 73, 58, 91, 44, 100, 685);
INSERT INTO `11_student_achievement` VALUES ('2020020017', '2001', 89, 55, 142, 38, 90, 88, 51, 54, 42, 649);
INSERT INTO `11_student_achievement` VALUES ('2020020018', '2001', 137, 38, 116, 74, 37, 79, 58, 34, 69, 642);
INSERT INTO `11_student_achievement` VALUES ('2020020019', '2001', 60, 51, 84, 47, 97, 76, 58, 51, 97, 621);
INSERT INTO `11_student_achievement` VALUES ('2020020020', '2001', 50, 67, 100, 67, 61, 81, 75, 63, 63, 627);
INSERT INTO `11_student_achievement` VALUES ('2020020021', '2001', 73, 76, 99, 82, 74, 100, 90, 52, 94, 740);
INSERT INTO `11_student_achievement` VALUES ('2020020022', '2001', 66, 83, 62, 52, 80, 62, 98, 92, 42, 637);
INSERT INTO `11_student_achievement` VALUES ('2020020023', '2001', 70, 68, 39, 90, 57, 58, 81, 93, 82, 638);
INSERT INTO `11_student_achievement` VALUES ('2020020024', '2001', 67, 50, 53, 32, 69, 67, 60, 78, 64, 540);
INSERT INTO `11_student_achievement` VALUES ('2020020025', '2001', 109, 87, 102, 77, 90, 86, 53, 93, 36, 733);
INSERT INTO `11_student_achievement` VALUES ('2020020026', '2001', 133, 111, 65, 79, 75, 61, 62, 66, 74, 726);
INSERT INTO `11_student_achievement` VALUES ('2020020027', '2001', 83, 32, 137, 80, 63, 34, 48, 96, 94, 667);
INSERT INTO `11_student_achievement` VALUES ('2020020028', '2001', 91, 78, 58, 96, 96, 46, 31, 60, 71, 627);
INSERT INTO `11_student_achievement` VALUES ('2020020029', '2001', 52, 122, 130, 84, 36, 64, 45, 81, 84, 698);
INSERT INTO `11_student_achievement` VALUES ('2020020030', '2001', 47, 63, 105, 80, 71, 87, 30, 62, 90, 635);
INSERT INTO `11_student_achievement` VALUES ('2020020031', '2002', 107, 65, 128, 80, 85, 77, 52, 51, 49, 694);
INSERT INTO `11_student_achievement` VALUES ('2020020032', '2002', 102, 81, 74, 88, 54, 72, 40, 46, 39, 596);
INSERT INTO `11_student_achievement` VALUES ('2020020033', '2002', 109, 97, 120, 39, 76, 39, 91, 77, 91, 739);
INSERT INTO `11_student_achievement` VALUES ('2020020034', '2002', 71, 100, 102, 79, 74, 82, 34, 92, 60, 694);
INSERT INTO `11_student_achievement` VALUES ('2020020035', '2002', 107, 77, 98, 48, 61, 69, 73, 96, 79, 708);
INSERT INTO `11_student_achievement` VALUES ('2020020036', '2002', 146, 58, 107, 94, 53, 70, 61, 43, 36, 668);
INSERT INTO `11_student_achievement` VALUES ('2020020037', '2002', 148, 60, 144, 91, 83, 74, 32, 94, 52, 778);
INSERT INTO `11_student_achievement` VALUES ('2020020038', '2002', 138, 149, 107, 44, 34, 94, 32, 46, 84, 728);
INSERT INTO `11_student_achievement` VALUES ('2020020039', '2002', 52, 52, 127, 72, 37, 71, 34, 79, 95, 619);
INSERT INTO `11_student_achievement` VALUES ('2020020040', '2002', 36, 41, 48, 62, 89, 40, 48, 96, 93, 553);
INSERT INTO `11_student_achievement` VALUES ('2020020041', '2002', 47, 122, 66, 50, 95, 61, 100, 86, 76, 703);
INSERT INTO `11_student_achievement` VALUES ('2020020042', '2002', 42, 71, 70, 71, 84, 100, 44, 83, 65, 630);
INSERT INTO `11_student_achievement` VALUES ('2020020043', '2002', 55, 119, 130, 81, 36, 83, 32, 67, 74, 677);
INSERT INTO `11_student_achievement` VALUES ('2020020044', '2002', 61, 106, 115, 67, 89, 48, 52, 68, 71, 677);
INSERT INTO `11_student_achievement` VALUES ('2020020045', '2002', 60, 139, 35, 38, 44, 69, 45, 70, 53, 553);
INSERT INTO `11_student_achievement` VALUES ('2020020046', '2002', 36, 47, 43, 66, 91, 85, 32, 52, 86, 538);
INSERT INTO `11_student_achievement` VALUES ('2020020047', '2002', 99, 108, 45, 91, 35, 71, 46, 73, 81, 649);
INSERT INTO `11_student_achievement` VALUES ('2020020048', '2002', 106, 148, 35, 80, 71, 72, 99, 42, 85, 738);
INSERT INTO `11_student_achievement` VALUES ('2020020049', '2002', 95, 129, 83, 74, 59, 58, 64, 32, 91, 685);
INSERT INTO `11_student_achievement` VALUES ('2020020050', '2002', 41, 100, 148, 64, 93, 78, 82, 70, 85, 761);
INSERT INTO `11_student_achievement` VALUES ('2020020051', '2002', 94, 35, 141, 65, 67, 74, 85, 62, 57, 680);
INSERT INTO `11_student_achievement` VALUES ('2020020052', '2002', 59, 98, 122, 72, 95, 34, 90, 39, 54, 663);
INSERT INTO `11_student_achievement` VALUES ('2020020053', '2002', 97, 75, 92, 38, 74, 70, 65, 47, 60, 618);
INSERT INTO `11_student_achievement` VALUES ('2020020054', '2002', 140, 107, 98, 98, 47, 64, 31, 52, 61, 698);
INSERT INTO `11_student_achievement` VALUES ('2020020055', '2002', 83, 32, 101, 91, 80, 45, 65, 59, 66, 622);
INSERT INTO `11_student_achievement` VALUES ('2020020056', '2002', 123, 111, 69, 81, 70, 32, 33, 83, 83, 685);
INSERT INTO `11_student_achievement` VALUES ('2020020057', '2002', 83, 46, 96, 71, 39, 80, 91, 67, 77, 650);
INSERT INTO `11_student_achievement` VALUES ('2020020058', '2002', 81, 51, 60, 57, 66, 65, 89, 52, 74, 595);
INSERT INTO `11_student_achievement` VALUES ('2020020059', '2002', 118, 134, 30, 46, 52, 72, 74, 71, 40, 637);
INSERT INTO `11_student_achievement` VALUES ('2020020060', '2002', 47, 119, 145, 45, 49, 46, 77, 72, 79, 679);
INSERT INTO `11_student_achievement` VALUES ('2020020061', '2003', 119, 96, 127, 44, 41, 60, 94, 38, 57, 676);
INSERT INTO `11_student_achievement` VALUES ('2020020062', '2003', 135, 121, 75, 39, 88, 94, 70, 76, 57, 755);
INSERT INTO `11_student_achievement` VALUES ('2020020063', '2003', 87, 62, 37, 75, 36, 69, 72, 53, 60, 551);
INSERT INTO `11_student_achievement` VALUES ('2020020064', '2003', 62, 69, 33, 44, 37, 82, 46, 71, 67, 511);
INSERT INTO `11_student_achievement` VALUES ('2020020065', '2003', 87, 107, 149, 78, 81, 32, 38, 44, 41, 657);
INSERT INTO `11_student_achievement` VALUES ('2020020066', '2003', 110, 51, 104, 71, 81, 52, 66, 88, 67, 690);
INSERT INTO `11_student_achievement` VALUES ('2020020067', '2003', 70, 43, 129, 58, 53, 46, 39, 39, 92, 569);
INSERT INTO `11_student_achievement` VALUES ('2020020068', '2003', 69, 85, 49, 47, 32, 80, 64, 66, 98, 590);
INSERT INTO `11_student_achievement` VALUES ('2020020069', '2003', 101, 136, 128, 73, 45, 88, 68, 37, 97, 773);
INSERT INTO `11_student_achievement` VALUES ('2020020070', '2003', 50, 149, 145, 87, 46, 95, 80, 91, 48, 791);
INSERT INTO `11_student_achievement` VALUES ('2020020071', '2003', 99, 35, 49, 69, 69, 59, 33, 99, 59, 571);
INSERT INTO `11_student_achievement` VALUES ('2020020072', '2003', 126, 122, 75, 47, 72, 81, 81, 85, 79, 768);
INSERT INTO `11_student_achievement` VALUES ('2020020073', '2003', 122, 60, 141, 82, 30, 99, 46, 77, 44, 701);
INSERT INTO `11_student_achievement` VALUES ('2020020074', '2003', 150, 68, 46, 43, 98, 90, 40, 45, 96, 676);
INSERT INTO `11_student_achievement` VALUES ('2020020075', '2003', 47, 85, 34, 77, 38, 79, 79, 85, 57, 581);
INSERT INTO `11_student_achievement` VALUES ('2020020076', '2003', 137, 149, 73, 61, 52, 68, 43, 88, 48, 719);
INSERT INTO `11_student_achievement` VALUES ('2020020077', '2003', 73, 87, 31, 76, 75, 33, 93, 68, 46, 582);
INSERT INTO `11_student_achievement` VALUES ('2020020078', '2003', 129, 63, 148, 30, 97, 52, 82, 66, 77, 744);
INSERT INTO `11_student_achievement` VALUES ('2020020079', '2003', 40, 36, 99, 45, 45, 78, 57, 86, 77, 563);
INSERT INTO `11_student_achievement` VALUES ('2020020080', '2003', 41, 87, 97, 73, 96, 90, 72, 58, 66, 680);
INSERT INTO `11_student_achievement` VALUES ('2020020081', '2003', 146, 59, 35, 41, 84, 84, 57, 49, 98, 653);
INSERT INTO `11_student_achievement` VALUES ('2020020082', '2003', 90, 69, 144, 42, 99, 96, 96, 79, 51, 766);
INSERT INTO `11_student_achievement` VALUES ('2020020083', '2003', 44, 140, 94, 61, 70, 96, 77, 32, 97, 711);
INSERT INTO `11_student_achievement` VALUES ('2020020084', '2003', 114, 66, 122, 63, 67, 82, 70, 66, 76, 726);
INSERT INTO `11_student_achievement` VALUES ('2020020085', '2003', 41, 39, 54, 85, 92, 60, 79, 72, 85, 607);
INSERT INTO `11_student_achievement` VALUES ('2020020086', '2003', 79, 131, 134, 39, 66, 86, 51, 46, 81, 713);
INSERT INTO `11_student_achievement` VALUES ('2020020087', '2003', 135, 77, 100, 61, 43, 65, 49, 92, 32, 654);
INSERT INTO `11_student_achievement` VALUES ('2020020088', '2003', 131, 91, 99, 71, 71, 63, 41, 85, 41, 693);
INSERT INTO `11_student_achievement` VALUES ('2020020089', '2003', 96, 59, 84, 73, 36, 82, 98, 75, 92, 695);
INSERT INTO `11_student_achievement` VALUES ('2020020090', '2003', 78, 54, 56, 51, 88, 40, 71, 34, 71, 543);
INSERT INTO `11_student_achievement` VALUES ('2020020091', '2004', 116, 37, 132, 50, 38, 90, 49, 88, 97, 697);
INSERT INTO `11_student_achievement` VALUES ('2020020092', '2004', 140, 37, 136, 54, 32, 90, 70, 74, 77, 710);
INSERT INTO `11_student_achievement` VALUES ('2020020093', '2004', 44, 52, 107, 84, 41, 40, 31, 66, 70, 535);
INSERT INTO `11_student_achievement` VALUES ('2020020094', '2004', 135, 146, 111, 38, 76, 47, 54, 44, 94, 745);
INSERT INTO `11_student_achievement` VALUES ('2020020095', '2004', 107, 79, 140, 43, 64, 39, 85, 62, 97, 716);
INSERT INTO `11_student_achievement` VALUES ('2020020096', '2004', 100, 108, 137, 52, 92, 45, 52, 50, 37, 673);
INSERT INTO `11_student_achievement` VALUES ('2020020097', '2004', 61, 30, 43, 64, 89, 84, 50, 99, 42, 562);
INSERT INTO `11_student_achievement` VALUES ('2020020098', '2004', 129, 146, 144, 82, 93, 80, 35, 31, 39, 779);
INSERT INTO `11_student_achievement` VALUES ('2020020099', '2004', 118, 102, 135, 44, 61, 37, 39, 53, 94, 683);
INSERT INTO `11_student_achievement` VALUES ('2020020100', '2004', 76, 42, 43, 62, 43, 32, 59, 99, 69, 525);
INSERT INTO `11_student_achievement` VALUES ('2020020101', '2004', 45, 100, 97, 67, 90, 70, 59, 62, 93, 683);
INSERT INTO `11_student_achievement` VALUES ('2020020102', '2004', 55, 51, 82, 57, 85, 45, 67, 96, 75, 613);
INSERT INTO `11_student_achievement` VALUES ('2020020103', '2004', 65, 129, 105, 56, 42, 66, 74, 77, 34, 648);
INSERT INTO `11_student_achievement` VALUES ('2020020104', '2004', 52, 89, 30, 98, 38, 46, 51, 82, 42, 528);
INSERT INTO `11_student_achievement` VALUES ('2020020105', '2004', 102, 120, 125, 32, 41, 81, 90, 49, 93, 733);
INSERT INTO `11_student_achievement` VALUES ('2020020106', '2004', 144, 98, 149, 71, 70, 71, 54, 63, 45, 765);
INSERT INTO `11_student_achievement` VALUES ('2020020107', '2004', 131, 137, 30, 98, 40, 70, 56, 35, 66, 663);
INSERT INTO `11_student_achievement` VALUES ('2020020108', '2004', 144, 130, 147, 63, 98, 49, 81, 54, 73, 839);
INSERT INTO `11_student_achievement` VALUES ('2020020109', '2004', 108, 87, 139, 63, 46, 40, 33, 45, 95, 656);
INSERT INTO `11_student_achievement` VALUES ('2020020110', '2004', 111, 85, 93, 92, 63, 62, 69, 68, 84, 727);
INSERT INTO `11_student_achievement` VALUES ('2020020111', '2004', 124, 40, 134, 70, 38, 44, 81, 99, 65, 695);
INSERT INTO `11_student_achievement` VALUES ('2020020112', '2004', 54, 92, 33, 61, 75, 87, 30, 30, 66, 528);
INSERT INTO `11_student_achievement` VALUES ('2020020113', '2004', 137, 139, 50, 79, 51, 79, 30, 39, 40, 644);
INSERT INTO `11_student_achievement` VALUES ('2020020114', '2004', 136, 115, 93, 68, 78, 49, 55, 57, 44, 695);
INSERT INTO `11_student_achievement` VALUES ('2020020115', '2004', 74, 99, 107, 34, 67, 34, 81, 71, 68, 635);
INSERT INTO `11_student_achievement` VALUES ('2020020116', '2004', 51, 143, 33, 88, 50, 83, 83, 65, 83, 679);
INSERT INTO `11_student_achievement` VALUES ('2020020117', '2004', 138, 33, 47, 49, 86, 45, 78, 70, 72, 618);
INSERT INTO `11_student_achievement` VALUES ('2020020118', '2004', 49, 43, 139, 48, 81, 41, 52, 30, 60, 543);
INSERT INTO `11_student_achievement` VALUES ('2020020119', '2004', 147, 76, 125, 45, 38, 67, 46, 41, 39, 624);
INSERT INTO `11_student_achievement` VALUES ('2020020120', '2004', 62, 69, 67, 91, 33, 73, 34, 45, 80, 554);

-- ----------------------------
-- Table structure for 12_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `12_student_achievement`;
CREATE TABLE `12_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 12_student_achievement
-- ----------------------------
INSERT INTO `12_student_achievement` VALUES ('2020020001', '2001', 70, 121, 132, 76, 84, 46, 64, 67, 87, 747);
INSERT INTO `12_student_achievement` VALUES ('2020020002', '2001', 75, 85, 60, 53, 71, 99, 84, 59, 96, 682);
INSERT INTO `12_student_achievement` VALUES ('2020020003', '2001', 99, 41, 132, 77, 76, 69, 100, 40, 49, 683);
INSERT INTO `12_student_achievement` VALUES ('2020020004', '2001', 99, 88, 45, 76, 89, 63, 100, 52, 90, 702);
INSERT INTO `12_student_achievement` VALUES ('2020020005', '2001', 136, 146, 105, 56, 61, 74, 99, 66, 71, 814);
INSERT INTO `12_student_achievement` VALUES ('2020020006', '2001', 105, 86, 65, 44, 60, 93, 73, 52, 67, 645);
INSERT INTO `12_student_achievement` VALUES ('2020020007', '2001', 61, 143, 83, 75, 62, 81, 73, 93, 55, 726);
INSERT INTO `12_student_achievement` VALUES ('2020020008', '2001', 112, 120, 52, 45, 63, 59, 86, 68, 83, 688);
INSERT INTO `12_student_achievement` VALUES ('2020020009', '2001', 110, 114, 125, 46, 80, 92, 67, 53, 83, 770);
INSERT INTO `12_student_achievement` VALUES ('2020020010', '2001', 52, 131, 106, 91, 56, 91, 61, 80, 67, 735);
INSERT INTO `12_student_achievement` VALUES ('2020020011', '2001', 67, 70, 113, 82, 43, 76, 94, 76, 100, 721);
INSERT INTO `12_student_achievement` VALUES ('2020020012', '2001', 60, 79, 72, 88, 56, 41, 63, 76, 57, 592);
INSERT INTO `12_student_achievement` VALUES ('2020020013', '2001', 53, 137, 69, 47, 77, 99, 48, 70, 43, 643);
INSERT INTO `12_student_achievement` VALUES ('2020020014', '2001', 45, 145, 40, 86, 86, 60, 97, 77, 95, 731);
INSERT INTO `12_student_achievement` VALUES ('2020020015', '2001', 118, 46, 131, 74, 81, 77, 49, 89, 89, 754);
INSERT INTO `12_student_achievement` VALUES ('2020020016', '2001', 86, 64, 47, 82, 75, 45, 40, 75, 94, 608);
INSERT INTO `12_student_achievement` VALUES ('2020020017', '2001', 65, 150, 58, 97, 96, 58, 48, 95, 100, 767);
INSERT INTO `12_student_achievement` VALUES ('2020020018', '2001', 74, 70, 41, 58, 41, 81, 71, 85, 92, 613);
INSERT INTO `12_student_achievement` VALUES ('2020020019', '2001', 55, 118, 56, 84, 80, 44, 43, 96, 97, 673);
INSERT INTO `12_student_achievement` VALUES ('2020020020', '2001', 57, 141, 135, 43, 57, 51, 49, 79, 97, 709);
INSERT INTO `12_student_achievement` VALUES ('2020020021', '2001', 77, 116, 76, 71, 48, 66, 56, 73, 64, 647);
INSERT INTO `12_student_achievement` VALUES ('2020020022', '2001', 104, 142, 97, 62, 53, 79, 40, 96, 56, 729);
INSERT INTO `12_student_achievement` VALUES ('2020020023', '2001', 51, 136, 148, 53, 92, 44, 83, 58, 76, 741);
INSERT INTO `12_student_achievement` VALUES ('2020020024', '2001', 132, 83, 137, 91, 61, 81, 63, 97, 90, 835);
INSERT INTO `12_student_achievement` VALUES ('2020020025', '2001', 61, 106, 130, 78, 76, 65, 41, 94, 57, 708);
INSERT INTO `12_student_achievement` VALUES ('2020020026', '2001', 41, 106, 47, 57, 95, 73, 77, 69, 77, 642);
INSERT INTO `12_student_achievement` VALUES ('2020020027', '2001', 133, 112, 69, 90, 99, 87, 59, 60, 67, 776);
INSERT INTO `12_student_achievement` VALUES ('2020020028', '2001', 124, 127, 124, 94, 52, 93, 87, 72, 60, 833);
INSERT INTO `12_student_achievement` VALUES ('2020020029', '2001', 140, 50, 149, 40, 56, 71, 74, 58, 54, 692);
INSERT INTO `12_student_achievement` VALUES ('2020020030', '2001', 111, 72, 140, 46, 57, 54, 51, 61, 59, 651);
INSERT INTO `12_student_achievement` VALUES ('2020020031', '2002', 148, 69, 145, 64, 94, 47, 85, 92, 63, 807);
INSERT INTO `12_student_achievement` VALUES ('2020020032', '2002', 145, 66, 115, 94, 86, 42, 88, 94, 94, 824);
INSERT INTO `12_student_achievement` VALUES ('2020020033', '2002', 119, 145, 117, 65, 100, 49, 96, 51, 98, 840);
INSERT INTO `12_student_achievement` VALUES ('2020020034', '2002', 101, 148, 113, 47, 40, 45, 95, 63, 84, 736);
INSERT INTO `12_student_achievement` VALUES ('2020020035', '2002', 83, 97, 80, 74, 58, 72, 49, 70, 99, 682);
INSERT INTO `12_student_achievement` VALUES ('2020020036', '2002', 83, 68, 109, 77, 91, 58, 69, 75, 79, 709);
INSERT INTO `12_student_achievement` VALUES ('2020020037', '2002', 78, 47, 89, 95, 51, 57, 84, 55, 94, 650);
INSERT INTO `12_student_achievement` VALUES ('2020020038', '2002', 107, 134, 75, 76, 89, 77, 89, 84, 58, 789);
INSERT INTO `12_student_achievement` VALUES ('2020020039', '2002', 52, 142, 142, 94, 48, 50, 53, 55, 41, 677);
INSERT INTO `12_student_achievement` VALUES ('2020020040', '2002', 92, 150, 88, 78, 76, 49, 100, 68, 70, 771);
INSERT INTO `12_student_achievement` VALUES ('2020020041', '2002', 97, 76, 73, 60, 68, 53, 83, 46, 49, 605);
INSERT INTO `12_student_achievement` VALUES ('2020020042', '2002', 120, 112, 112, 79, 47, 69, 42, 75, 83, 739);
INSERT INTO `12_student_achievement` VALUES ('2020020043', '2002', 93, 69, 144, 70, 49, 48, 44, 55, 45, 617);
INSERT INTO `12_student_achievement` VALUES ('2020020044', '2002', 105, 48, 120, 41, 81, 73, 66, 44, 40, 618);
INSERT INTO `12_student_achievement` VALUES ('2020020045', '2002', 103, 147, 71, 86, 85, 87, 40, 74, 82, 775);
INSERT INTO `12_student_achievement` VALUES ('2020020046', '2002', 149, 141, 82, 96, 58, 93, 64, 87, 92, 862);
INSERT INTO `12_student_achievement` VALUES ('2020020047', '2002', 114, 72, 119, 72, 94, 76, 82, 63, 86, 778);
INSERT INTO `12_student_achievement` VALUES ('2020020048', '2002', 88, 42, 42, 82, 70, 61, 53, 97, 48, 583);
INSERT INTO `12_student_achievement` VALUES ('2020020049', '2002', 55, 76, 95, 40, 96, 46, 77, 50, 56, 591);
INSERT INTO `12_student_achievement` VALUES ('2020020050', '2002', 133, 79, 51, 48, 57, 63, 89, 48, 95, 663);
INSERT INTO `12_student_achievement` VALUES ('2020020051', '2002', 76, 60, 91, 83, 100, 78, 54, 57, 62, 661);
INSERT INTO `12_student_achievement` VALUES ('2020020052', '2002', 96, 106, 138, 63, 46, 69, 95, 69, 61, 743);
INSERT INTO `12_student_achievement` VALUES ('2020020053', '2002', 61, 129, 79, 66, 66, 73, 56, 73, 46, 649);
INSERT INTO `12_student_achievement` VALUES ('2020020054', '2002', 95, 46, 105, 60, 57, 55, 64, 58, 75, 615);
INSERT INTO `12_student_achievement` VALUES ('2020020055', '2002', 76, 87, 131, 58, 94, 95, 98, 50, 95, 784);
INSERT INTO `12_student_achievement` VALUES ('2020020056', '2002', 80, 117, 112, 82, 98, 49, 99, 100, 90, 827);
INSERT INTO `12_student_achievement` VALUES ('2020020057', '2002', 134, 48, 95, 97, 71, 68, 85, 70, 41, 709);
INSERT INTO `12_student_achievement` VALUES ('2020020058', '2002', 42, 85, 65, 53, 69, 72, 80, 91, 96, 653);
INSERT INTO `12_student_achievement` VALUES ('2020020059', '2002', 55, 94, 73, 78, 44, 67, 40, 86, 61, 598);
INSERT INTO `12_student_achievement` VALUES ('2020020060', '2002', 140, 74, 134, 44, 95, 51, 97, 75, 58, 768);
INSERT INTO `12_student_achievement` VALUES ('2020020061', '2003', 90, 135, 83, 78, 69, 61, 95, 44, 99, 754);
INSERT INTO `12_student_achievement` VALUES ('2020020062', '2003', 133, 42, 61, 100, 85, 99, 91, 41, 61, 713);
INSERT INTO `12_student_achievement` VALUES ('2020020063', '2003', 42, 96, 95, 89, 67, 68, 43, 59, 56, 615);
INSERT INTO `12_student_achievement` VALUES ('2020020064', '2003', 46, 66, 61, 71, 85, 95, 93, 90, 49, 656);
INSERT INTO `12_student_achievement` VALUES ('2020020065', '2003', 45, 42, 77, 68, 71, 89, 43, 43, 43, 521);
INSERT INTO `12_student_achievement` VALUES ('2020020066', '2003', 147, 87, 60, 76, 86, 60, 85, 48, 80, 729);
INSERT INTO `12_student_achievement` VALUES ('2020020067', '2003', 77, 103, 51, 49, 52, 64, 75, 48, 97, 616);
INSERT INTO `12_student_achievement` VALUES ('2020020068', '2003', 79, 119, 94, 85, 85, 63, 67, 92, 65, 749);
INSERT INTO `12_student_achievement` VALUES ('2020020069', '2003', 107, 52, 115, 88, 90, 71, 86, 42, 85, 736);
INSERT INTO `12_student_achievement` VALUES ('2020020070', '2003', 71, 63, 110, 41, 80, 99, 98, 60, 57, 679);
INSERT INTO `12_student_achievement` VALUES ('2020020071', '2003', 42, 96, 54, 79, 63, 55, 75, 62, 79, 605);
INSERT INTO `12_student_achievement` VALUES ('2020020072', '2003', 129, 118, 103, 49, 83, 86, 53, 66, 43, 730);
INSERT INTO `12_student_achievement` VALUES ('2020020073', '2003', 132, 96, 69, 82, 100, 42, 73, 58, 87, 739);
INSERT INTO `12_student_achievement` VALUES ('2020020074', '2003', 59, 44, 150, 66, 66, 43, 66, 88, 72, 654);
INSERT INTO `12_student_achievement` VALUES ('2020020075', '2003', 40, 93, 117, 72, 75, 83, 47, 44, 72, 643);
INSERT INTO `12_student_achievement` VALUES ('2020020076', '2003', 148, 135, 42, 99, 85, 92, 53, 58, 70, 782);
INSERT INTO `12_student_achievement` VALUES ('2020020077', '2003', 109, 110, 80, 52, 99, 44, 70, 50, 100, 714);
INSERT INTO `12_student_achievement` VALUES ('2020020078', '2003', 129, 132, 82, 59, 49, 48, 96, 78, 94, 767);
INSERT INTO `12_student_achievement` VALUES ('2020020079', '2003', 89, 136, 140, 98, 92, 40, 46, 97, 95, 833);
INSERT INTO `12_student_achievement` VALUES ('2020020080', '2003', 76, 98, 48, 79, 69, 94, 48, 48, 88, 648);
INSERT INTO `12_student_achievement` VALUES ('2020020081', '2003', 81, 102, 128, 58, 51, 45, 64, 43, 50, 622);
INSERT INTO `12_student_achievement` VALUES ('2020020082', '2003', 137, 63, 58, 79, 71, 40, 93, 87, 53, 681);
INSERT INTO `12_student_achievement` VALUES ('2020020083', '2003', 70, 41, 86, 96, 66, 83, 62, 53, 75, 632);
INSERT INTO `12_student_achievement` VALUES ('2020020084', '2003', 74, 116, 64, 98, 68, 83, 45, 61, 97, 706);
INSERT INTO `12_student_achievement` VALUES ('2020020085', '2003', 121, 120, 54, 94, 79, 88, 61, 69, 51, 737);
INSERT INTO `12_student_achievement` VALUES ('2020020086', '2003', 65, 133, 51, 86, 89, 91, 79, 90, 75, 759);
INSERT INTO `12_student_achievement` VALUES ('2020020087', '2003', 99, 62, 79, 69, 73, 61, 95, 58, 91, 687);
INSERT INTO `12_student_achievement` VALUES ('2020020088', '2003', 118, 118, 57, 83, 63, 56, 88, 74, 68, 725);
INSERT INTO `12_student_achievement` VALUES ('2020020089', '2003', 101, 92, 42, 81, 100, 43, 44, 60, 40, 603);
INSERT INTO `12_student_achievement` VALUES ('2020020090', '2003', 112, 126, 122, 92, 73, 67, 45, 63, 60, 760);
INSERT INTO `12_student_achievement` VALUES ('2020020091', '2004', 91, 71, 68, 43, 52, 89, 66, 89, 91, 660);
INSERT INTO `12_student_achievement` VALUES ('2020020092', '2004', 121, 132, 117, 68, 65, 52, 67, 61, 75, 758);
INSERT INTO `12_student_achievement` VALUES ('2020020093', '2004', 75, 125, 103, 61, 82, 72, 91, 52, 55, 716);
INSERT INTO `12_student_achievement` VALUES ('2020020094', '2004', 140, 112, 146, 61, 63, 82, 93, 95, 69, 861);
INSERT INTO `12_student_achievement` VALUES ('2020020095', '2004', 103, 141, 68, 49, 98, 83, 44, 46, 45, 677);
INSERT INTO `12_student_achievement` VALUES ('2020020096', '2004', 141, 53, 147, 61, 62, 99, 77, 72, 49, 761);
INSERT INTO `12_student_achievement` VALUES ('2020020097', '2004', 125, 66, 90, 60, 87, 94, 41, 59, 47, 669);
INSERT INTO `12_student_achievement` VALUES ('2020020098', '2004', 52, 132, 116, 91, 81, 91, 94, 45, 73, 775);
INSERT INTO `12_student_achievement` VALUES ('2020020099', '2004', 71, 104, 126, 66, 95, 62, 84, 56, 57, 721);
INSERT INTO `12_student_achievement` VALUES ('2020020100', '2004', 132, 124, 113, 92, 51, 62, 74, 94, 91, 833);
INSERT INTO `12_student_achievement` VALUES ('2020020101', '2004', 100, 52, 85, 41, 50, 88, 69, 52, 80, 617);
INSERT INTO `12_student_achievement` VALUES ('2020020102', '2004', 90, 50, 116, 88, 65, 72, 53, 90, 42, 666);
INSERT INTO `12_student_achievement` VALUES ('2020020103', '2004', 57, 128, 119, 51, 96, 49, 53, 83, 82, 718);
INSERT INTO `12_student_achievement` VALUES ('2020020104', '2004', 99, 122, 137, 65, 46, 46, 65, 40, 70, 690);
INSERT INTO `12_student_achievement` VALUES ('2020020105', '2004', 45, 92, 88, 88, 59, 42, 44, 42, 94, 594);
INSERT INTO `12_student_achievement` VALUES ('2020020106', '2004', 145, 126, 87, 84, 92, 62, 78, 88, 46, 808);
INSERT INTO `12_student_achievement` VALUES ('2020020107', '2004', 148, 96, 95, 48, 96, 68, 86, 77, 69, 783);
INSERT INTO `12_student_achievement` VALUES ('2020020108', '2004', 93, 127, 131, 95, 90, 83, 83, 63, 68, 833);
INSERT INTO `12_student_achievement` VALUES ('2020020109', '2004', 52, 74, 59, 53, 97, 70, 47, 66, 80, 598);
INSERT INTO `12_student_achievement` VALUES ('2020020110', '2004', 55, 103, 51, 76, 91, 40, 49, 82, 86, 633);
INSERT INTO `12_student_achievement` VALUES ('2020020111', '2004', 140, 58, 54, 61, 92, 84, 54, 99, 45, 687);
INSERT INTO `12_student_achievement` VALUES ('2020020112', '2004', 139, 106, 136, 63, 43, 84, 80, 70, 86, 807);
INSERT INTO `12_student_achievement` VALUES ('2020020113', '2004', 81, 62, 133, 44, 79, 57, 42, 64, 70, 632);
INSERT INTO `12_student_achievement` VALUES ('2020020114', '2004', 46, 142, 106, 46, 88, 69, 81, 93, 56, 727);
INSERT INTO `12_student_achievement` VALUES ('2020020115', '2004', 138, 116, 94, 81, 58, 88, 62, 96, 79, 812);
INSERT INTO `12_student_achievement` VALUES ('2020020116', '2004', 112, 107, 53, 52, 76, 64, 97, 47, 82, 690);
INSERT INTO `12_student_achievement` VALUES ('2020020117', '2004', 87, 41, 119, 88, 56, 86, 81, 76, 44, 678);
INSERT INTO `12_student_achievement` VALUES ('2020020118', '2004', 119, 139, 99, 52, 90, 52, 58, 77, 87, 773);
INSERT INTO `12_student_achievement` VALUES ('2020020119', '2004', 103, 89, 52, 45, 42, 74, 74, 61, 82, 622);
INSERT INTO `12_student_achievement` VALUES ('2020020120', '2004', 75, 67, 91, 68, 52, 51, 56, 93, 43, 596);

-- ----------------------------
-- Table structure for 21_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `21_student_achievement`;
CREATE TABLE `21_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 21_student_achievement
-- ----------------------------
INSERT INTO `21_student_achievement` VALUES ('2020020001', '2001', 134, 94, 107, 94, 67, 98, 51, 56, 63, 764);
INSERT INTO `21_student_achievement` VALUES ('2020020002', '2001', 75, 76, 128, 57, 68, 70, 64, 64, 84, 686);
INSERT INTO `21_student_achievement` VALUES ('2020020003', '2001', 70, 50, 143, 67, 80, 57, 94, 81, 97, 739);
INSERT INTO `21_student_achievement` VALUES ('2020020004', '2001', 123, 114, 73, 73, 60, 72, 70, 94, 61, 740);
INSERT INTO `21_student_achievement` VALUES ('2020020005', '2001', 120, 141, 100, 76, 55, 89, 72, 58, 98, 809);
INSERT INTO `21_student_achievement` VALUES ('2020020006', '2001', 142, 118, 79, 70, 79, 86, 69, 75, 73, 791);
INSERT INTO `21_student_achievement` VALUES ('2020020007', '2001', 129, 69, 73, 71, 53, 60, 51, 61, 76, 643);
INSERT INTO `21_student_achievement` VALUES ('2020020008', '2001', 106, 137, 132, 67, 65, 94, 61, 94, 63, 819);
INSERT INTO `21_student_achievement` VALUES ('2020020009', '2001', 120, 134, 89, 81, 73, 75, 86, 72, 90, 820);
INSERT INTO `21_student_achievement` VALUES ('2020020010', '2001', 115, 75, 112, 67, 65, 78, 87, 52, 95, 746);
INSERT INTO `21_student_achievement` VALUES ('2020020011', '2001', 142, 50, 128, 86, 95, 50, 76, 71, 79, 777);
INSERT INTO `21_student_achievement` VALUES ('2020020012', '2001', 116, 108, 110, 73, 52, 81, 60, 56, 91, 747);
INSERT INTO `21_student_achievement` VALUES ('2020020013', '2001', 87, 97, 100, 89, 71, 61, 83, 73, 68, 729);
INSERT INTO `21_student_achievement` VALUES ('2020020014', '2001', 120, 104, 145, 75, 80, 98, 67, 66, 87, 842);
INSERT INTO `21_student_achievement` VALUES ('2020020015', '2001', 102, 110, 50, 85, 68, 53, 61, 78, 83, 690);
INSERT INTO `21_student_achievement` VALUES ('2020020016', '2001', 117, 127, 102, 63, 75, 99, 53, 98, 51, 785);
INSERT INTO `21_student_achievement` VALUES ('2020020017', '2001', 116, 101, 126, 82, 96, 69, 100, 90, 98, 878);
INSERT INTO `21_student_achievement` VALUES ('2020020018', '2001', 118, 127, 58, 52, 85, 67, 52, 69, 92, 720);
INSERT INTO `21_student_achievement` VALUES ('2020020019', '2001', 75, 67, 96, 53, 77, 97, 100, 98, 90, 753);
INSERT INTO `21_student_achievement` VALUES ('2020020020', '2001', 113, 116, 129, 100, 84, 78, 59, 54, 84, 817);
INSERT INTO `21_student_achievement` VALUES ('2020020021', '2001', 66, 130, 108, 96, 92, 68, 54, 97, 63, 774);
INSERT INTO `21_student_achievement` VALUES ('2020020022', '2001', 72, 67, 136, 94, 55, 97, 53, 66, 72, 712);
INSERT INTO `21_student_achievement` VALUES ('2020020023', '2001', 113, 61, 93, 57, 63, 95, 68, 91, 59, 700);
INSERT INTO `21_student_achievement` VALUES ('2020020024', '2001', 65, 97, 68, 71, 87, 61, 81, 65, 78, 673);
INSERT INTO `21_student_achievement` VALUES ('2020020025', '2001', 81, 119, 125, 83, 61, 69, 58, 95, 64, 755);
INSERT INTO `21_student_achievement` VALUES ('2020020026', '2001', 147, 127, 88, 88, 72, 77, 67, 55, 93, 814);
INSERT INTO `21_student_achievement` VALUES ('2020020027', '2001', 136, 143, 111, 64, 81, 63, 77, 61, 71, 807);
INSERT INTO `21_student_achievement` VALUES ('2020020028', '2001', 108, 101, 59, 54, 99, 53, 77, 50, 67, 668);
INSERT INTO `21_student_achievement` VALUES ('2020020029', '2001', 64, 127, 83, 55, 61, 87, 83, 53, 50, 663);
INSERT INTO `21_student_achievement` VALUES ('2020020030', '2001', 93, 91, 138, 97, 54, 54, 57, 52, 86, 722);
INSERT INTO `21_student_achievement` VALUES ('2020020031', '2002', 118, 115, 128, 80, 89, 82, 56, 92, 92, 852);
INSERT INTO `21_student_achievement` VALUES ('2020020032', '2002', 117, 83, 138, 59, 93, 77, 60, 58, 90, 775);
INSERT INTO `21_student_achievement` VALUES ('2020020033', '2002', 122, 53, 80, 87, 84, 53, 81, 83, 93, 736);
INSERT INTO `21_student_achievement` VALUES ('2020020034', '2002', 88, 150, 146, 76, 82, 63, 91, 84, 58, 838);
INSERT INTO `21_student_achievement` VALUES ('2020020035', '2002', 147, 102, 126, 68, 76, 86, 64, 53, 66, 788);
INSERT INTO `21_student_achievement` VALUES ('2020020036', '2002', 61, 71, 80, 71, 83, 65, 98, 79, 72, 680);
INSERT INTO `21_student_achievement` VALUES ('2020020037', '2002', 150, 66, 132, 64, 78, 100, 85, 87, 59, 821);
INSERT INTO `21_student_achievement` VALUES ('2020020038', '2002', 145, 60, 142, 57, 64, 95, 96, 73, 60, 792);
INSERT INTO `21_student_achievement` VALUES ('2020020039', '2002', 64, 76, 67, 60, 91, 91, 83, 86, 59, 677);
INSERT INTO `21_student_achievement` VALUES ('2020020040', '2002', 73, 75, 133, 58, 61, 95, 88, 60, 87, 730);
INSERT INTO `21_student_achievement` VALUES ('2020020041', '2002', 51, 54, 132, 81, 83, 100, 97, 78, 55, 731);
INSERT INTO `21_student_achievement` VALUES ('2020020042', '2002', 106, 132, 140, 59, 91, 51, 91, 59, 87, 816);
INSERT INTO `21_student_achievement` VALUES ('2020020043', '2002', 76, 132, 133, 87, 84, 99, 84, 88, 62, 845);
INSERT INTO `21_student_achievement` VALUES ('2020020044', '2002', 130, 72, 75, 66, 66, 72, 53, 60, 50, 644);
INSERT INTO `21_student_achievement` VALUES ('2020020045', '2002', 138, 135, 112, 90, 53, 90, 54, 89, 96, 857);
INSERT INTO `21_student_achievement` VALUES ('2020020046', '2002', 143, 133, 114, 99, 67, 91, 94, 70, 52, 863);
INSERT INTO `21_student_achievement` VALUES ('2020020047', '2002', 135, 77, 51, 61, 80, 94, 79, 76, 75, 728);
INSERT INTO `21_student_achievement` VALUES ('2020020048', '2002', 79, 131, 95, 99, 99, 62, 89, 89, 68, 811);
INSERT INTO `21_student_achievement` VALUES ('2020020049', '2002', 50, 98, 85, 69, 89, 98, 72, 90, 100, 751);
INSERT INTO `21_student_achievement` VALUES ('2020020050', '2002', 142, 66, 119, 66, 61, 75, 76, 56, 53, 714);
INSERT INTO `21_student_achievement` VALUES ('2020020051', '2002', 116, 141, 70, 61, 58, 65, 83, 54, 71, 719);
INSERT INTO `21_student_achievement` VALUES ('2020020052', '2002', 134, 53, 125, 100, 96, 61, 53, 76, 76, 774);
INSERT INTO `21_student_achievement` VALUES ('2020020053', '2002', 72, 62, 107, 91, 73, 94, 67, 94, 73, 733);
INSERT INTO `21_student_achievement` VALUES ('2020020054', '2002', 131, 64, 130, 72, 68, 93, 86, 76, 56, 776);
INSERT INTO `21_student_achievement` VALUES ('2020020055', '2002', 107, 113, 88, 67, 94, 64, 58, 50, 58, 699);
INSERT INTO `21_student_achievement` VALUES ('2020020056', '2002', 140, 96, 111, 51, 63, 98, 97, 69, 78, 803);
INSERT INTO `21_student_achievement` VALUES ('2020020057', '2002', 54, 118, 78, 78, 89, 61, 70, 99, 74, 721);
INSERT INTO `21_student_achievement` VALUES ('2020020058', '2002', 92, 68, 115, 81, 91, 94, 85, 90, 61, 777);
INSERT INTO `21_student_achievement` VALUES ('2020020059', '2002', 108, 93, 130, 67, 91, 86, 57, 93, 81, 806);
INSERT INTO `21_student_achievement` VALUES ('2020020060', '2002', 105, 81, 147, 85, 55, 82, 84, 89, 80, 808);
INSERT INTO `21_student_achievement` VALUES ('2020020061', '2003', 129, 131, 61, 50, 66, 58, 92, 82, 85, 754);
INSERT INTO `21_student_achievement` VALUES ('2020020062', '2003', 53, 105, 63, 67, 76, 56, 89, 94, 82, 685);
INSERT INTO `21_student_achievement` VALUES ('2020020063', '2003', 126, 141, 56, 66, 58, 67, 91, 52, 69, 726);
INSERT INTO `21_student_achievement` VALUES ('2020020064', '2003', 143, 129, 71, 92, 90, 83, 68, 94, 79, 849);
INSERT INTO `21_student_achievement` VALUES ('2020020065', '2003', 113, 74, 124, 88, 56, 82, 55, 92, 74, 758);
INSERT INTO `21_student_achievement` VALUES ('2020020066', '2003', 57, 98, 51, 55, 93, 76, 72, 53, 97, 652);
INSERT INTO `21_student_achievement` VALUES ('2020020067', '2003', 129, 58, 58, 96, 100, 63, 73, 64, 59, 700);
INSERT INTO `21_student_achievement` VALUES ('2020020068', '2003', 97, 130, 80, 52, 52, 66, 59, 93, 66, 695);
INSERT INTO `21_student_achievement` VALUES ('2020020069', '2003', 101, 84, 142, 73, 52, 91, 99, 70, 72, 784);
INSERT INTO `21_student_achievement` VALUES ('2020020070', '2003', 91, 62, 75, 78, 69, 100, 80, 74, 54, 683);
INSERT INTO `21_student_achievement` VALUES ('2020020071', '2003', 97, 129, 105, 64, 82, 76, 73, 90, 73, 789);
INSERT INTO `21_student_achievement` VALUES ('2020020072', '2003', 107, 72, 112, 50, 83, 97, 70, 61, 87, 739);
INSERT INTO `21_student_achievement` VALUES ('2020020073', '2003', 133, 101, 136, 84, 98, 87, 77, 81, 62, 859);
INSERT INTO `21_student_achievement` VALUES ('2020020074', '2003', 52, 123, 127, 84, 98, 68, 76, 88, 78, 794);
INSERT INTO `21_student_achievement` VALUES ('2020020075', '2003', 81, 71, 108, 92, 68, 63, 70, 85, 97, 735);
INSERT INTO `21_student_achievement` VALUES ('2020020076', '2003', 103, 76, 136, 81, 55, 93, 91, 57, 53, 745);
INSERT INTO `21_student_achievement` VALUES ('2020020077', '2003', 115, 141, 144, 57, 77, 86, 55, 56, 94, 825);
INSERT INTO `21_student_achievement` VALUES ('2020020078', '2003', 97, 129, 70, 51, 98, 86, 77, 87, 97, 792);
INSERT INTO `21_student_achievement` VALUES ('2020020079', '2003', 90, 112, 87, 100, 90, 70, 51, 60, 74, 734);
INSERT INTO `21_student_achievement` VALUES ('2020020080', '2003', 143, 99, 100, 63, 60, 61, 57, 55, 80, 718);
INSERT INTO `21_student_achievement` VALUES ('2020020081', '2003', 97, 60, 81, 50, 59, 87, 74, 62, 56, 626);
INSERT INTO `21_student_achievement` VALUES ('2020020082', '2003', 77, 99, 117, 95, 88, 94, 50, 92, 88, 800);
INSERT INTO `21_student_achievement` VALUES ('2020020083', '2003', 74, 137, 148, 94, 52, 90, 74, 75, 65, 809);
INSERT INTO `21_student_achievement` VALUES ('2020020084', '2003', 93, 140, 56, 71, 76, 58, 93, 69, 100, 756);
INSERT INTO `21_student_achievement` VALUES ('2020020085', '2003', 141, 132, 73, 85, 77, 54, 99, 83, 87, 831);
INSERT INTO `21_student_achievement` VALUES ('2020020086', '2003', 80, 83, 57, 82, 67, 88, 61, 53, 97, 668);
INSERT INTO `21_student_achievement` VALUES ('2020020087', '2003', 115, 64, 63, 57, 94, 65, 68, 77, 89, 692);
INSERT INTO `21_student_achievement` VALUES ('2020020088', '2003', 133, 130, 83, 92, 56, 70, 81, 80, 97, 822);
INSERT INTO `21_student_achievement` VALUES ('2020020089', '2003', 112, 63, 119, 69, 97, 79, 57, 74, 92, 762);
INSERT INTO `21_student_achievement` VALUES ('2020020090', '2003', 125, 95, 85, 70, 59, 74, 83, 69, 64, 724);
INSERT INTO `21_student_achievement` VALUES ('2020020091', '2004', 128, 91, 130, 80, 61, 58, 62, 96, 99, 805);
INSERT INTO `21_student_achievement` VALUES ('2020020092', '2004', 88, 93, 89, 87, 78, 87, 83, 87, 64, 756);
INSERT INTO `21_student_achievement` VALUES ('2020020093', '2004', 128, 71, 77, 96, 83, 68, 55, 100, 65, 743);
INSERT INTO `21_student_achievement` VALUES ('2020020094', '2004', 59, 118, 86, 92, 79, 62, 95, 92, 66, 749);
INSERT INTO `21_student_achievement` VALUES ('2020020095', '2004', 136, 106, 146, 89, 52, 82, 77, 75, 83, 846);
INSERT INTO `21_student_achievement` VALUES ('2020020096', '2004', 129, 58, 131, 81, 80, 69, 99, 65, 63, 775);
INSERT INTO `21_student_achievement` VALUES ('2020020097', '2004', 61, 126, 128, 83, 73, 94, 75, 94, 84, 818);
INSERT INTO `21_student_achievement` VALUES ('2020020098', '2004', 143, 114, 139, 86, 95, 57, 74, 68, 65, 841);
INSERT INTO `21_student_achievement` VALUES ('2020020099', '2004', 80, 51, 59, 70, 75, 61, 77, 94, 72, 639);
INSERT INTO `21_student_achievement` VALUES ('2020020100', '2004', 81, 122, 121, 100, 72, 90, 85, 55, 59, 785);
INSERT INTO `21_student_achievement` VALUES ('2020020101', '2004', 62, 81, 143, 69, 66, 54, 61, 53, 100, 689);
INSERT INTO `21_student_achievement` VALUES ('2020020102', '2004', 58, 72, 85, 98, 50, 93, 54, 62, 69, 641);
INSERT INTO `21_student_achievement` VALUES ('2020020103', '2004', 106, 62, 111, 79, 55, 56, 68, 59, 95, 691);
INSERT INTO `21_student_achievement` VALUES ('2020020104', '2004', 61, 113, 72, 85, 59, 61, 88, 94, 68, 701);
INSERT INTO `21_student_achievement` VALUES ('2020020105', '2004', 66, 97, 110, 95, 71, 74, 100, 95, 62, 770);
INSERT INTO `21_student_achievement` VALUES ('2020020106', '2004', 110, 91, 52, 68, 92, 79, 80, 70, 74, 716);
INSERT INTO `21_student_achievement` VALUES ('2020020107', '2004', 86, 73, 128, 93, 99, 60, 80, 72, 96, 787);
INSERT INTO `21_student_achievement` VALUES ('2020020108', '2004', 71, 136, 75, 55, 72, 90, 54, 55, 51, 659);
INSERT INTO `21_student_achievement` VALUES ('2020020109', '2004', 82, 148, 69, 84, 69, 77, 92, 57, 85, 763);
INSERT INTO `21_student_achievement` VALUES ('2020020110', '2004', 108, 132, 54, 63, 56, 66, 86, 58, 51, 674);
INSERT INTO `21_student_achievement` VALUES ('2020020111', '2004', 69, 81, 135, 63, 92, 63, 83, 62, 71, 719);
INSERT INTO `21_student_achievement` VALUES ('2020020112', '2004', 103, 88, 65, 62, 83, 56, 100, 83, 68, 708);
INSERT INTO `21_student_achievement` VALUES ('2020020113', '2004', 103, 83, 110, 76, 97, 63, 73, 75, 73, 753);
INSERT INTO `21_student_achievement` VALUES ('2020020114', '2004', 129, 67, 121, 67, 97, 97, 82, 50, 79, 789);
INSERT INTO `21_student_achievement` VALUES ('2020020115', '2004', 51, 65, 58, 85, 88, 97, 83, 61, 52, 640);
INSERT INTO `21_student_achievement` VALUES ('2020020116', '2004', 99, 109, 78, 61, 73, 57, 87, 97, 62, 723);
INSERT INTO `21_student_achievement` VALUES ('2020020117', '2004', 101, 117, 119, 67, 57, 53, 85, 79, 92, 770);
INSERT INTO `21_student_achievement` VALUES ('2020020118', '2004', 85, 149, 93, 66, 99, 81, 89, 77, 59, 798);
INSERT INTO `21_student_achievement` VALUES ('2020020119', '2004', 88, 143, 96, 93, 82, 99, 94, 81, 85, 861);
INSERT INTO `21_student_achievement` VALUES ('2020020120', '2004', 118, 82, 86, 90, 66, 66, 90, 99, 60, 757);

-- ----------------------------
-- Table structure for 22_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `22_student_achievement`;
CREATE TABLE `22_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 22_student_achievement
-- ----------------------------
INSERT INTO `22_student_achievement` VALUES ('2020020001', '2001', 105, 141, 137, 78, 73, 95, 99, 67, 67, 862);
INSERT INTO `22_student_achievement` VALUES ('2020020002', '2001', 136, 97, 143, 66, 63, 80, 71, 87, 85, 828);
INSERT INTO `22_student_achievement` VALUES ('2020020003', '2001', 79, 102, 116, 98, 60, 70, 95, 91, 62, 773);
INSERT INTO `22_student_achievement` VALUES ('2020020004', '2001', 146, 121, 121, 64, 95, 84, 79, 89, 87, 886);
INSERT INTO `22_student_achievement` VALUES ('2020020005', '2001', 114, 87, 114, 90, 65, 97, 68, 95, 90, 820);
INSERT INTO `22_student_achievement` VALUES ('2020020006', '2001', 69, 131, 85, 62, 80, 60, 82, 96, 64, 729);
INSERT INTO `22_student_achievement` VALUES ('2020020007', '2001', 146, 64, 123, 96, 78, 100, 79, 79, 93, 858);
INSERT INTO `22_student_achievement` VALUES ('2020020008', '2001', 111, 76, 142, 98, 72, 98, 63, 88, 70, 818);
INSERT INTO `22_student_achievement` VALUES ('2020020009', '2001', 123, 118, 93, 67, 76, 69, 90, 81, 78, 795);
INSERT INTO `22_student_achievement` VALUES ('2020020010', '2001', 148, 111, 127, 79, 62, 83, 92, 75, 71, 848);
INSERT INTO `22_student_achievement` VALUES ('2020020011', '2001', 125, 107, 137, 76, 100, 74, 71, 100, 66, 856);
INSERT INTO `22_student_achievement` VALUES ('2020020012', '2001', 72, 148, 73, 75, 77, 78, 95, 86, 69, 773);
INSERT INTO `22_student_achievement` VALUES ('2020020013', '2001', 82, 75, 99, 63, 92, 64, 66, 77, 91, 709);
INSERT INTO `22_student_achievement` VALUES ('2020020014', '2001', 61, 66, 108, 67, 89, 72, 83, 82, 63, 691);
INSERT INTO `22_student_achievement` VALUES ('2020020015', '2001', 89, 68, 145, 73, 65, 87, 97, 87, 100, 811);
INSERT INTO `22_student_achievement` VALUES ('2020020016', '2001', 110, 134, 90, 98, 76, 98, 71, 77, 81, 835);
INSERT INTO `22_student_achievement` VALUES ('2020020017', '2001', 114, 94, 128, 86, 78, 100, 62, 75, 91, 828);
INSERT INTO `22_student_achievement` VALUES ('2020020018', '2001', 92, 144, 100, 82, 76, 68, 63, 69, 95, 789);
INSERT INTO `22_student_achievement` VALUES ('2020020019', '2001', 78, 139, 109, 98, 90, 100, 71, 90, 100, 875);
INSERT INTO `22_student_achievement` VALUES ('2020020020', '2001', 90, 101, 136, 67, 74, 79, 62, 96, 83, 788);
INSERT INTO `22_student_achievement` VALUES ('2020020021', '2001', 102, 120, 94, 90, 99, 84, 76, 83, 79, 827);
INSERT INTO `22_student_achievement` VALUES ('2020020022', '2001', 101, 140, 100, 73, 72, 96, 100, 61, 66, 809);
INSERT INTO `22_student_achievement` VALUES ('2020020023', '2001', 106, 95, 96, 63, 98, 77, 85, 94, 81, 795);
INSERT INTO `22_student_achievement` VALUES ('2020020024', '2001', 132, 70, 95, 80, 75, 66, 80, 76, 82, 756);
INSERT INTO `22_student_achievement` VALUES ('2020020025', '2001', 70, 105, 93, 95, 100, 65, 88, 82, 97, 795);
INSERT INTO `22_student_achievement` VALUES ('2020020026', '2001', 97, 69, 78, 79, 60, 89, 72, 76, 89, 709);
INSERT INTO `22_student_achievement` VALUES ('2020020027', '2001', 94, 150, 118, 94, 95, 92, 96, 65, 88, 892);
INSERT INTO `22_student_achievement` VALUES ('2020020028', '2001', 125, 103, 63, 61, 73, 60, 66, 79, 90, 720);
INSERT INTO `22_student_achievement` VALUES ('2020020029', '2001', 96, 83, 132, 92, 96, 71, 65, 77, 93, 805);
INSERT INTO `22_student_achievement` VALUES ('2020020030', '2001', 99, 107, 60, 86, 63, 76, 64, 72, 77, 704);
INSERT INTO `22_student_achievement` VALUES ('2020020031', '2002', 140, 115, 66, 99, 71, 95, 91, 96, 61, 834);
INSERT INTO `22_student_achievement` VALUES ('2020020032', '2002', 102, 148, 105, 85, 77, 86, 100, 83, 89, 875);
INSERT INTO `22_student_achievement` VALUES ('2020020033', '2002', 83, 84, 100, 64, 64, 96, 82, 98, 73, 744);
INSERT INTO `22_student_achievement` VALUES ('2020020034', '2002', 64, 88, 62, 98, 71, 87, 64, 72, 84, 690);
INSERT INTO `22_student_achievement` VALUES ('2020020035', '2002', 81, 101, 133, 72, 64, 96, 93, 85, 66, 791);
INSERT INTO `22_student_achievement` VALUES ('2020020036', '2002', 87, 127, 150, 79, 98, 60, 80, 91, 76, 848);
INSERT INTO `22_student_achievement` VALUES ('2020020037', '2002', 115, 91, 81, 84, 99, 87, 88, 95, 99, 839);
INSERT INTO `22_student_achievement` VALUES ('2020020038', '2002', 138, 102, 142, 68, 81, 87, 86, 93, 72, 869);
INSERT INTO `22_student_achievement` VALUES ('2020020039', '2002', 140, 95, 70, 87, 90, 94, 72, 61, 88, 797);
INSERT INTO `22_student_achievement` VALUES ('2020020040', '2002', 109, 108, 69, 76, 94, 97, 99, 97, 81, 830);
INSERT INTO `22_student_achievement` VALUES ('2020020041', '2002', 130, 99, 145, 92, 75, 80, 85, 60, 94, 860);
INSERT INTO `22_student_achievement` VALUES ('2020020042', '2002', 129, 62, 97, 81, 74, 63, 92, 92, 74, 764);
INSERT INTO `22_student_achievement` VALUES ('2020020043', '2002', 62, 80, 111, 98, 99, 62, 89, 65, 66, 732);
INSERT INTO `22_student_achievement` VALUES ('2020020044', '2002', 125, 88, 94, 61, 62, 65, 72, 72, 73, 712);
INSERT INTO `22_student_achievement` VALUES ('2020020045', '2002', 101, 117, 67, 61, 69, 60, 67, 71, 69, 682);
INSERT INTO `22_student_achievement` VALUES ('2020020046', '2002', 133, 75, 105, 81, 74, 78, 100, 70, 93, 809);
INSERT INTO `22_student_achievement` VALUES ('2020020047', '2002', 141, 135, 61, 63, 95, 74, 64, 98, 85, 816);
INSERT INTO `22_student_achievement` VALUES ('2020020048', '2002', 66, 80, 119, 65, 66, 77, 66, 83, 70, 692);
INSERT INTO `22_student_achievement` VALUES ('2020020049', '2002', 66, 72, 78, 78, 100, 70, 87, 82, 98, 731);
INSERT INTO `22_student_achievement` VALUES ('2020020050', '2002', 88, 102, 88, 93, 84, 60, 90, 96, 97, 798);
INSERT INTO `22_student_achievement` VALUES ('2020020051', '2002', 122, 118, 129, 93, 99, 66, 96, 62, 83, 868);
INSERT INTO `22_student_achievement` VALUES ('2020020052', '2002', 129, 72, 137, 80, 91, 90, 76, 87, 89, 851);
INSERT INTO `22_student_achievement` VALUES ('2020020053', '2002', 65, 109, 132, 86, 76, 65, 76, 62, 92, 763);
INSERT INTO `22_student_achievement` VALUES ('2020020054', '2002', 140, 118, 144, 91, 72, 84, 85, 61, 84, 879);
INSERT INTO `22_student_achievement` VALUES ('2020020055', '2002', 120, 122, 130, 97, 89, 75, 69, 92, 97, 891);
INSERT INTO `22_student_achievement` VALUES ('2020020056', '2002', 63, 97, 143, 76, 98, 95, 61, 68, 73, 774);
INSERT INTO `22_student_achievement` VALUES ('2020020057', '2002', 66, 110, 126, 85, 72, 78, 67, 64, 68, 736);
INSERT INTO `22_student_achievement` VALUES ('2020020058', '2002', 64, 85, 90, 60, 82, 97, 93, 72, 73, 716);
INSERT INTO `22_student_achievement` VALUES ('2020020059', '2002', 125, 108, 63, 66, 75, 72, 92, 66, 85, 752);
INSERT INTO `22_student_achievement` VALUES ('2020020060', '2002', 84, 116, 77, 96, 65, 60, 96, 99, 92, 785);
INSERT INTO `22_student_achievement` VALUES ('2020020061', '2003', 92, 149, 119, 87, 97, 64, 65, 86, 99, 858);
INSERT INTO `22_student_achievement` VALUES ('2020020062', '2003', 67, 135, 141, 92, 61, 73, 71, 91, 82, 813);
INSERT INTO `22_student_achievement` VALUES ('2020020063', '2003', 60, 77, 136, 99, 62, 70, 67, 90, 91, 752);
INSERT INTO `22_student_achievement` VALUES ('2020020064', '2003', 99, 98, 110, 82, 86, 90, 69, 97, 85, 816);
INSERT INTO `22_student_achievement` VALUES ('2020020065', '2003', 136, 125, 86, 90, 95, 63, 70, 67, 94, 826);
INSERT INTO `22_student_achievement` VALUES ('2020020066', '2003', 94, 64, 96, 97, 95, 85, 81, 67, 64, 743);
INSERT INTO `22_student_achievement` VALUES ('2020020067', '2003', 69, 121, 116, 94, 94, 100, 90, 61, 63, 808);
INSERT INTO `22_student_achievement` VALUES ('2020020068', '2003', 142, 62, 137, 93, 89, 90, 78, 95, 74, 860);
INSERT INTO `22_student_achievement` VALUES ('2020020069', '2003', 141, 113, 117, 67, 70, 78, 72, 94, 69, 821);
INSERT INTO `22_student_achievement` VALUES ('2020020070', '2003', 115, 137, 91, 75, 84, 83, 86, 63, 95, 829);
INSERT INTO `22_student_achievement` VALUES ('2020020071', '2003', 147, 116, 106, 92, 87, 66, 93, 62, 85, 854);
INSERT INTO `22_student_achievement` VALUES ('2020020072', '2003', 94, 66, 107, 92, 71, 74, 91, 96, 81, 772);
INSERT INTO `22_student_achievement` VALUES ('2020020073', '2003', 61, 72, 105, 86, 81, 82, 68, 67, 87, 709);
INSERT INTO `22_student_achievement` VALUES ('2020020074', '2003', 76, 115, 78, 84, 86, 99, 64, 91, 71, 764);
INSERT INTO `22_student_achievement` VALUES ('2020020075', '2003', 74, 105, 100, 96, 87, 68, 76, 66, 79, 751);
INSERT INTO `22_student_achievement` VALUES ('2020020076', '2003', 70, 96, 65, 66, 89, 83, 72, 61, 86, 688);
INSERT INTO `22_student_achievement` VALUES ('2020020077', '2003', 142, 85, 139, 98, 71, 73, 88, 91, 95, 882);
INSERT INTO `22_student_achievement` VALUES ('2020020078', '2003', 84, 82, 93, 80, 89, 77, 76, 80, 98, 759);
INSERT INTO `22_student_achievement` VALUES ('2020020079', '2003', 138, 139, 64, 95, 81, 66, 78, 87, 90, 838);
INSERT INTO `22_student_achievement` VALUES ('2020020080', '2003', 84, 149, 128, 91, 75, 78, 76, 85, 82, 848);
INSERT INTO `22_student_achievement` VALUES ('2020020081', '2003', 73, 84, 103, 84, 88, 84, 70, 87, 67, 740);
INSERT INTO `22_student_achievement` VALUES ('2020020082', '2003', 106, 126, 97, 83, 85, 83, 71, 64, 87, 802);
INSERT INTO `22_student_achievement` VALUES ('2020020083', '2003', 113, 117, 60, 92, 64, 95, 85, 68, 82, 776);
INSERT INTO `22_student_achievement` VALUES ('2020020084', '2003', 145, 86, 68, 86, 92, 90, 98, 79, 65, 809);
INSERT INTO `22_student_achievement` VALUES ('2020020085', '2003', 143, 68, 146, 86, 62, 90, 99, 96, 61, 851);
INSERT INTO `22_student_achievement` VALUES ('2020020086', '2003', 101, 74, 136, 81, 97, 76, 75, 98, 92, 830);
INSERT INTO `22_student_achievement` VALUES ('2020020087', '2003', 120, 150, 132, 69, 75, 73, 78, 64, 93, 854);
INSERT INTO `22_student_achievement` VALUES ('2020020088', '2003', 135, 119, 137, 67, 68, 62, 88, 99, 82, 857);
INSERT INTO `22_student_achievement` VALUES ('2020020089', '2003', 110, 66, 149, 96, 70, 94, 93, 86, 72, 836);
INSERT INTO `22_student_achievement` VALUES ('2020020090', '2003', 74, 66, 83, 92, 68, 64, 60, 73, 90, 670);
INSERT INTO `22_student_achievement` VALUES ('2020020091', '2004', 114, 115, 128, 97, 65, 100, 78, 87, 68, 852);
INSERT INTO `22_student_achievement` VALUES ('2020020092', '2004', 89, 77, 92, 80, 97, 71, 80, 83, 85, 754);
INSERT INTO `22_student_achievement` VALUES ('2020020093', '2004', 138, 98, 78, 96, 89, 99, 98, 84, 70, 850);
INSERT INTO `22_student_achievement` VALUES ('2020020094', '2004', 137, 80, 141, 86, 60, 71, 99, 98, 78, 850);
INSERT INTO `22_student_achievement` VALUES ('2020020095', '2004', 143, 148, 93, 75, 94, 63, 100, 71, 86, 873);
INSERT INTO `22_student_achievement` VALUES ('2020020096', '2004', 150, 82, 130, 66, 82, 60, 84, 93, 93, 840);
INSERT INTO `22_student_achievement` VALUES ('2020020097', '2004', 148, 91, 89, 67, 73, 65, 98, 80, 74, 785);
INSERT INTO `22_student_achievement` VALUES ('2020020098', '2004', 148, 116, 121, 66, 63, 71, 96, 76, 64, 821);
INSERT INTO `22_student_achievement` VALUES ('2020020099', '2004', 129, 110, 96, 65, 86, 61, 66, 97, 95, 805);
INSERT INTO `22_student_achievement` VALUES ('2020020100', '2004', 138, 74, 133, 88, 100, 69, 92, 87, 61, 842);
INSERT INTO `22_student_achievement` VALUES ('2020020101', '2004', 146, 132, 145, 70, 76, 97, 88, 67, 87, 908);
INSERT INTO `22_student_achievement` VALUES ('2020020102', '2004', 74, 120, 90, 63, 76, 88, 89, 68, 79, 747);
INSERT INTO `22_student_achievement` VALUES ('2020020103', '2004', 108, 136, 116, 75, 92, 66, 79, 66, 70, 808);
INSERT INTO `22_student_achievement` VALUES ('2020020104', '2004', 107, 136, 107, 80, 66, 86, 99, 68, 81, 830);
INSERT INTO `22_student_achievement` VALUES ('2020020105', '2004', 132, 68, 99, 65, 90, 63, 80, 90, 88, 775);
INSERT INTO `22_student_achievement` VALUES ('2020020106', '2004', 143, 66, 114, 73, 67, 67, 84, 60, 69, 743);
INSERT INTO `22_student_achievement` VALUES ('2020020107', '2004', 86, 94, 60, 71, 69, 62, 82, 72, 60, 656);
INSERT INTO `22_student_achievement` VALUES ('2020020108', '2004', 98, 128, 125, 79, 79, 88, 88, 82, 88, 855);
INSERT INTO `22_student_achievement` VALUES ('2020020109', '2004', 69, 81, 72, 60, 96, 94, 87, 85, 89, 733);
INSERT INTO `22_student_achievement` VALUES ('2020020110', '2004', 114, 134, 81, 84, 72, 64, 96, 94, 65, 804);
INSERT INTO `22_student_achievement` VALUES ('2020020111', '2004', 119, 89, 100, 63, 93, 99, 87, 81, 81, 812);
INSERT INTO `22_student_achievement` VALUES ('2020020112', '2004', 100, 86, 90, 73, 77, 68, 70, 86, 82, 732);
INSERT INTO `22_student_achievement` VALUES ('2020020113', '2004', 79, 93, 150, 78, 61, 94, 93, 76, 80, 804);
INSERT INTO `22_student_achievement` VALUES ('2020020114', '2004', 137, 101, 132, 65, 98, 60, 75, 90, 85, 843);
INSERT INTO `22_student_achievement` VALUES ('2020020115', '2004', 132, 103, 101, 100, 100, 84, 64, 84, 67, 835);
INSERT INTO `22_student_achievement` VALUES ('2020020116', '2004', 91, 120, 101, 99, 91, 82, 87, 81, 65, 817);
INSERT INTO `22_student_achievement` VALUES ('2020020117', '2004', 140, 142, 75, 95, 89, 62, 64, 97, 61, 825);
INSERT INTO `22_student_achievement` VALUES ('2020020118', '2004', 143, 105, 113, 99, 66, 70, 69, 80, 69, 814);
INSERT INTO `22_student_achievement` VALUES ('2020020119', '2004', 144, 148, 91, 79, 68, 100, 61, 100, 92, 883);
INSERT INTO `22_student_achievement` VALUES ('2020020120', '2004', 74, 127, 95, 69, 64, 98, 95, 97, 92, 811);

-- ----------------------------
-- Table structure for 31_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `31_student_achievement`;
CREATE TABLE `31_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 31_student_achievement
-- ----------------------------
INSERT INTO `31_student_achievement` VALUES ('2020020001', '2001', 147, 80, 78, 74, 99, 82, 74, 75, 71, 780);
INSERT INTO `31_student_achievement` VALUES ('2020020002', '2001', 135, 123, 107, 77, 76, 93, 72, 93, 97, 873);
INSERT INTO `31_student_achievement` VALUES ('2020020003', '2001', 87, 74, 72, 92, 71, 89, 87, 96, 100, 768);
INSERT INTO `31_student_achievement` VALUES ('2020020004', '2001', 132, 134, 103, 89, 99, 73, 85, 89, 84, 888);
INSERT INTO `31_student_achievement` VALUES ('2020020005', '2001', 135, 86, 125, 86, 73, 97, 84, 97, 100, 883);
INSERT INTO `31_student_achievement` VALUES ('2020020006', '2001', 79, 135, 108, 81, 73, 94, 100, 78, 85, 833);
INSERT INTO `31_student_achievement` VALUES ('2020020007', '2001', 101, 84, 80, 70, 86, 100, 83, 70, 93, 767);
INSERT INTO `31_student_achievement` VALUES ('2020020008', '2001', 142, 114, 95, 81, 95, 73, 89, 81, 75, 845);
INSERT INTO `31_student_achievement` VALUES ('2020020009', '2001', 87, 146, 116, 75, 99, 76, 91, 86, 92, 868);
INSERT INTO `31_student_achievement` VALUES ('2020020010', '2001', 123, 106, 109, 97, 87, 90, 96, 91, 77, 876);
INSERT INTO `31_student_achievement` VALUES ('2020020011', '2001', 107, 83, 119, 70, 83, 93, 99, 81, 77, 812);
INSERT INTO `31_student_achievement` VALUES ('2020020012', '2001', 145, 105, 129, 84, 83, 98, 76, 79, 83, 882);
INSERT INTO `31_student_achievement` VALUES ('2020020013', '2001', 97, 147, 125, 93, 80, 91, 79, 79, 74, 865);
INSERT INTO `31_student_achievement` VALUES ('2020020014', '2001', 71, 82, 123, 97, 72, 91, 78, 81, 82, 777);
INSERT INTO `31_student_achievement` VALUES ('2020020015', '2001', 144, 128, 147, 78, 94, 93, 89, 72, 83, 928);
INSERT INTO `31_student_achievement` VALUES ('2020020016', '2001', 96, 106, 72, 70, 90, 100, 94, 100, 92, 820);
INSERT INTO `31_student_achievement` VALUES ('2020020017', '2001', 142, 107, 147, 78, 85, 76, 70, 81, 89, 875);
INSERT INTO `31_student_achievement` VALUES ('2020020018', '2001', 121, 122, 101, 78, 81, 87, 82, 86, 89, 847);
INSERT INTO `31_student_achievement` VALUES ('2020020019', '2001', 138, 141, 132, 76, 86, 80, 91, 96, 93, 933);
INSERT INTO `31_student_achievement` VALUES ('2020020020', '2001', 131, 73, 105, 99, 73, 76, 81, 73, 80, 791);
INSERT INTO `31_student_achievement` VALUES ('2020020021', '2001', 72, 74, 125, 91, 87, 86, 71, 89, 86, 781);
INSERT INTO `31_student_achievement` VALUES ('2020020022', '2001', 131, 148, 121, 84, 87, 96, 96, 91, 79, 933);
INSERT INTO `31_student_achievement` VALUES ('2020020023', '2001', 105, 132, 96, 88, 86, 94, 100, 74, 77, 852);
INSERT INTO `31_student_achievement` VALUES ('2020020024', '2001', 78, 77, 128, 94, 88, 75, 94, 85, 79, 798);
INSERT INTO `31_student_achievement` VALUES ('2020020025', '2001', 71, 133, 71, 78, 78, 96, 95, 91, 73, 786);
INSERT INTO `31_student_achievement` VALUES ('2020020026', '2001', 72, 93, 72, 93, 93, 85, 74, 87, 89, 758);
INSERT INTO `31_student_achievement` VALUES ('2020020027', '2001', 141, 106, 126, 75, 86, 99, 71, 82, 93, 879);
INSERT INTO `31_student_achievement` VALUES ('2020020028', '2001', 100, 73, 106, 96, 89, 95, 81, 95, 94, 829);
INSERT INTO `31_student_achievement` VALUES ('2020020029', '2001', 143, 99, 132, 77, 82, 97, 84, 83, 84, 881);
INSERT INTO `31_student_achievement` VALUES ('2020020030', '2001', 101, 91, 94, 81, 81, 90, 88, 100, 86, 812);
INSERT INTO `31_student_achievement` VALUES ('2020020031', '2002', 99, 143, 92, 82, 90, 71, 87, 72, 90, 826);
INSERT INTO `31_student_achievement` VALUES ('2020020032', '2002', 105, 123, 103, 81, 80, 87, 80, 75, 85, 819);
INSERT INTO `31_student_achievement` VALUES ('2020020033', '2002', 149, 102, 103, 74, 81, 90, 79, 72, 97, 847);
INSERT INTO `31_student_achievement` VALUES ('2020020034', '2002', 106, 76, 80, 85, 76, 95, 70, 86, 76, 750);
INSERT INTO `31_student_achievement` VALUES ('2020020035', '2002', 78, 133, 78, 94, 83, 70, 78, 96, 87, 797);
INSERT INTO `31_student_achievement` VALUES ('2020020036', '2002', 93, 135, 126, 96, 97, 73, 72, 81, 86, 859);
INSERT INTO `31_student_achievement` VALUES ('2020020037', '2002', 126, 72, 119, 78, 75, 70, 99, 80, 77, 796);
INSERT INTO `31_student_achievement` VALUES ('2020020038', '2002', 139, 122, 85, 73, 96, 79, 95, 95, 93, 877);
INSERT INTO `31_student_achievement` VALUES ('2020020039', '2002', 88, 132, 143, 80, 79, 94, 76, 74, 93, 859);
INSERT INTO `31_student_achievement` VALUES ('2020020040', '2002', 122, 74, 139, 99, 74, 72, 100, 75, 88, 843);
INSERT INTO `31_student_achievement` VALUES ('2020020041', '2002', 119, 73, 144, 78, 93, 75, 96, 97, 77, 852);
INSERT INTO `31_student_achievement` VALUES ('2020020042', '2002', 97, 97, 101, 85, 88, 95, 87, 92, 99, 841);
INSERT INTO `31_student_achievement` VALUES ('2020020043', '2002', 149, 99, 149, 92, 99, 73, 77, 73, 78, 889);
INSERT INTO `31_student_achievement` VALUES ('2020020044', '2002', 149, 78, 88, 90, 71, 84, 73, 97, 72, 802);
INSERT INTO `31_student_achievement` VALUES ('2020020045', '2002', 117, 115, 120, 86, 72, 80, 83, 100, 70, 843);
INSERT INTO `31_student_achievement` VALUES ('2020020046', '2002', 80, 101, 147, 76, 85, 79, 93, 84, 100, 845);
INSERT INTO `31_student_achievement` VALUES ('2020020047', '2002', 115, 77, 120, 74, 77, 96, 80, 83, 95, 817);
INSERT INTO `31_student_achievement` VALUES ('2020020048', '2002', 92, 85, 95, 78, 81, 77, 70, 92, 77, 747);
INSERT INTO `31_student_achievement` VALUES ('2020020049', '2002', 103, 121, 121, 94, 100, 96, 83, 95, 76, 889);
INSERT INTO `31_student_achievement` VALUES ('2020020050', '2002', 129, 150, 145, 76, 74, 88, 98, 90, 93, 943);
INSERT INTO `31_student_achievement` VALUES ('2020020051', '2002', 145, 122, 81, 81, 90, 94, 95, 85, 84, 877);
INSERT INTO `31_student_achievement` VALUES ('2020020052', '2002', 123, 128, 150, 87, 95, 72, 89, 95, 70, 909);
INSERT INTO `31_student_achievement` VALUES ('2020020053', '2002', 89, 90, 93, 70, 93, 75, 71, 96, 70, 747);
INSERT INTO `31_student_achievement` VALUES ('2020020054', '2002', 139, 104, 114, 73, 72, 81, 79, 96, 79, 837);
INSERT INTO `31_student_achievement` VALUES ('2020020055', '2002', 138, 90, 102, 97, 71, 86, 80, 93, 95, 852);
INSERT INTO `31_student_achievement` VALUES ('2020020056', '2002', 126, 133, 111, 92, 100, 93, 76, 95, 83, 909);
INSERT INTO `31_student_achievement` VALUES ('2020020057', '2002', 138, 76, 73, 83, 85, 84, 70, 88, 79, 776);
INSERT INTO `31_student_achievement` VALUES ('2020020058', '2002', 127, 103, 88, 95, 73, 70, 81, 84, 90, 811);
INSERT INTO `31_student_achievement` VALUES ('2020020059', '2002', 90, 116, 130, 94, 93, 80, 80, 71, 94, 848);
INSERT INTO `31_student_achievement` VALUES ('2020020060', '2002', 125, 148, 111, 81, 92, 93, 71, 71, 100, 892);
INSERT INTO `31_student_achievement` VALUES ('2020020061', '2003', 83, 127, 129, 88, 84, 83, 75, 97, 100, 866);
INSERT INTO `31_student_achievement` VALUES ('2020020062', '2003', 89, 83, 104, 92, 97, 78, 79, 94, 99, 815);
INSERT INTO `31_student_achievement` VALUES ('2020020063', '2003', 123, 111, 117, 78, 100, 98, 94, 74, 92, 887);
INSERT INTO `31_student_achievement` VALUES ('2020020064', '2003', 79, 93, 105, 82, 98, 85, 86, 88, 81, 797);
INSERT INTO `31_student_achievement` VALUES ('2020020065', '2003', 85, 105, 146, 79, 98, 87, 73, 98, 100, 871);
INSERT INTO `31_student_achievement` VALUES ('2020020066', '2003', 81, 112, 133, 78, 75, 93, 71, 96, 74, 813);
INSERT INTO `31_student_achievement` VALUES ('2020020067', '2003', 125, 123, 131, 96, 85, 94, 98, 81, 73, 906);
INSERT INTO `31_student_achievement` VALUES ('2020020068', '2003', 80, 127, 125, 98, 75, 72, 93, 70, 84, 824);
INSERT INTO `31_student_achievement` VALUES ('2020020069', '2003', 102, 123, 113, 85, 73, 72, 71, 88, 83, 810);
INSERT INTO `31_student_achievement` VALUES ('2020020070', '2003', 143, 119, 94, 82, 84, 79, 78, 78, 85, 842);
INSERT INTO `31_student_achievement` VALUES ('2020020071', '2003', 71, 118, 98, 76, 72, 70, 76, 76, 90, 747);
INSERT INTO `31_student_achievement` VALUES ('2020020072', '2003', 134, 90, 102, 79, 75, 77, 100, 77, 96, 830);
INSERT INTO `31_student_achievement` VALUES ('2020020073', '2003', 91, 96, 94, 82, 86, 97, 93, 86, 100, 825);
INSERT INTO `31_student_achievement` VALUES ('2020020074', '2003', 105, 110, 127, 73, 88, 78, 100, 96, 86, 863);
INSERT INTO `31_student_achievement` VALUES ('2020020075', '2003', 77, 82, 145, 71, 94, 95, 71, 98, 100, 833);
INSERT INTO `31_student_achievement` VALUES ('2020020076', '2003', 94, 72, 114, 79, 97, 100, 91, 80, 74, 801);
INSERT INTO `31_student_achievement` VALUES ('2020020077', '2003', 143, 97, 112, 87, 86, 70, 98, 84, 89, 866);
INSERT INTO `31_student_achievement` VALUES ('2020020078', '2003', 115, 141, 95, 81, 88, 99, 87, 84, 85, 875);
INSERT INTO `31_student_achievement` VALUES ('2020020079', '2003', 70, 104, 134, 89, 97, 71, 81, 79, 85, 810);
INSERT INTO `31_student_achievement` VALUES ('2020020080', '2003', 92, 70, 72, 90, 88, 75, 78, 91, 86, 742);
INSERT INTO `31_student_achievement` VALUES ('2020020081', '2003', 104, 150, 108, 98, 79, 94, 81, 87, 71, 872);
INSERT INTO `31_student_achievement` VALUES ('2020020082', '2003', 144, 70, 138, 74, 79, 85, 87, 87, 71, 835);
INSERT INTO `31_student_achievement` VALUES ('2020020083', '2003', 76, 94, 101, 74, 100, 83, 77, 99, 86, 790);
INSERT INTO `31_student_achievement` VALUES ('2020020084', '2003', 94, 88, 87, 72, 86, 98, 71, 94, 96, 786);
INSERT INTO `31_student_achievement` VALUES ('2020020085', '2003', 93, 75, 86, 81, 87, 74, 75, 95, 88, 754);
INSERT INTO `31_student_achievement` VALUES ('2020020086', '2003', 139, 111, 113, 95, 85, 93, 75, 91, 77, 879);
INSERT INTO `31_student_achievement` VALUES ('2020020087', '2003', 102, 100, 78, 92, 87, 79, 81, 72, 71, 762);
INSERT INTO `31_student_achievement` VALUES ('2020020088', '2003', 126, 86, 129, 82, 70, 77, 76, 90, 88, 824);
INSERT INTO `31_student_achievement` VALUES ('2020020089', '2003', 147, 87, 114, 82, 99, 82, 91, 89, 94, 885);
INSERT INTO `31_student_achievement` VALUES ('2020020090', '2003', 118, 86, 97, 98, 84, 83, 77, 74, 70, 787);
INSERT INTO `31_student_achievement` VALUES ('2020020091', '2004', 108, 127, 126, 77, 74, 84, 75, 71, 99, 841);
INSERT INTO `31_student_achievement` VALUES ('2020020092', '2004', 122, 134, 108, 83, 80, 87, 83, 84, 72, 853);
INSERT INTO `31_student_achievement` VALUES ('2020020093', '2004', 138, 146, 106, 99, 96, 85, 80, 91, 77, 918);
INSERT INTO `31_student_achievement` VALUES ('2020020094', '2004', 130, 140, 88, 89, 76, 96, 71, 75, 71, 836);
INSERT INTO `31_student_achievement` VALUES ('2020020095', '2004', 72, 105, 101, 79, 76, 74, 76, 73, 86, 742);
INSERT INTO `31_student_achievement` VALUES ('2020020096', '2004', 92, 84, 125, 92, 73, 84, 98, 93, 84, 825);
INSERT INTO `31_student_achievement` VALUES ('2020020097', '2004', 137, 131, 95, 71, 83, 92, 97, 84, 80, 870);
INSERT INTO `31_student_achievement` VALUES ('2020020098', '2004', 87, 71, 111, 74, 98, 97, 82, 89, 79, 788);
INSERT INTO `31_student_achievement` VALUES ('2020020099', '2004', 82, 150, 138, 71, 88, 89, 77, 97, 87, 879);
INSERT INTO `31_student_achievement` VALUES ('2020020100', '2004', 90, 132, 149, 72, 92, 97, 98, 79, 73, 882);
INSERT INTO `31_student_achievement` VALUES ('2020020101', '2004', 119, 118, 115, 86, 86, 70, 70, 75, 99, 838);
INSERT INTO `31_student_achievement` VALUES ('2020020102', '2004', 100, 112, 122, 92, 86, 84, 90, 77, 86, 849);
INSERT INTO `31_student_achievement` VALUES ('2020020103', '2004', 124, 75, 114, 77, 90, 89, 81, 88, 87, 825);
INSERT INTO `31_student_achievement` VALUES ('2020020104', '2004', 70, 137, 115, 98, 72, 91, 77, 74, 93, 827);
INSERT INTO `31_student_achievement` VALUES ('2020020105', '2004', 76, 96, 133, 71, 86, 72, 84, 80, 89, 787);
INSERT INTO `31_student_achievement` VALUES ('2020020106', '2004', 135, 82, 90, 83, 96, 98, 93, 85, 88, 850);
INSERT INTO `31_student_achievement` VALUES ('2020020107', '2004', 142, 82, 131, 77, 74, 88, 72, 97, 71, 834);
INSERT INTO `31_student_achievement` VALUES ('2020020108', '2004', 113, 148, 103, 72, 97, 98, 73, 79, 96, 879);
INSERT INTO `31_student_achievement` VALUES ('2020020109', '2004', 142, 127, 92, 77, 94, 82, 93, 74, 93, 874);
INSERT INTO `31_student_achievement` VALUES ('2020020110', '2004', 86, 150, 141, 84, 96, 92, 73, 89, 85, 896);
INSERT INTO `31_student_achievement` VALUES ('2020020111', '2004', 100, 141, 129, 79, 96, 76, 95, 75, 75, 866);
INSERT INTO `31_student_achievement` VALUES ('2020020112', '2004', 136, 75, 125, 98, 89, 88, 76, 97, 98, 882);
INSERT INTO `31_student_achievement` VALUES ('2020020113', '2004', 150, 86, 112, 71, 86, 76, 97, 75, 77, 830);
INSERT INTO `31_student_achievement` VALUES ('2020020114', '2004', 125, 128, 118, 74, 75, 91, 96, 91, 83, 881);
INSERT INTO `31_student_achievement` VALUES ('2020020115', '2004', 107, 146, 98, 92, 88, 98, 70, 76, 76, 851);
INSERT INTO `31_student_achievement` VALUES ('2020020116', '2004', 99, 119, 79, 87, 70, 77, 95, 70, 86, 782);
INSERT INTO `31_student_achievement` VALUES ('2020020117', '2004', 87, 84, 85, 78, 70, 82, 72, 82, 85, 725);
INSERT INTO `31_student_achievement` VALUES ('2020020118', '2004', 148, 141, 125, 95, 79, 74, 72, 84, 82, 900);
INSERT INTO `31_student_achievement` VALUES ('2020020119', '2004', 118, 80, 92, 95, 75, 98, 82, 92, 100, 832);
INSERT INTO `31_student_achievement` VALUES ('2020020120', '2004', 83, 119, 134, 95, 75, 89, 95, 79, 100, 869);

-- ----------------------------
-- Table structure for 32_student_achievement
-- ----------------------------
DROP TABLE IF EXISTS `32_student_achievement`;
CREATE TABLE `32_student_achievement`  (
  `Student_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `Chinese_language_and_literature` int NOT NULL COMMENT '语文',
  `mathematics` int NOT NULL COMMENT '数学',
  `English` int NOT NULL COMMENT '英语',
  `chemical` int NOT NULL COMMENT '化学',
  `biological` int NOT NULL COMMENT '生物',
  `history` int NOT NULL COMMENT '历史',
  `geographic` int NOT NULL COMMENT '地理',
  `political` int NOT NULL COMMENT '政治',
  `physical` int NOT NULL COMMENT '物理',
  `Total_score` int NOT NULL COMMENT '总分',
  PRIMARY KEY (`Student_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 32_student_achievement
-- ----------------------------
INSERT INTO `32_student_achievement` VALUES ('2020020001', '2001', 111, 120, 123, 100, 92, 94, 89, 99, 100, 928);
INSERT INTO `32_student_achievement` VALUES ('2020020002', '2001', 80, 91, 135, 85, 99, 91, 80, 98, 80, 839);
INSERT INTO `32_student_achievement` VALUES ('2020020003', '2001', 136, 134, 128, 96, 91, 100, 93, 85, 85, 948);
INSERT INTO `32_student_achievement` VALUES ('2020020004', '2001', 83, 104, 108, 84, 93, 87, 90, 100, 100, 849);
INSERT INTO `32_student_achievement` VALUES ('2020020005', '2001', 104, 90, 90, 91, 97, 84, 99, 98, 88, 841);
INSERT INTO `32_student_achievement` VALUES ('2020020006', '2001', 87, 107, 85, 86, 97, 94, 80, 82, 84, 802);
INSERT INTO `32_student_achievement` VALUES ('2020020007', '2001', 89, 107, 130, 90, 94, 93, 93, 91, 89, 876);
INSERT INTO `32_student_achievement` VALUES ('2020020008', '2001', 149, 86, 147, 89, 99, 80, 96, 81, 96, 923);
INSERT INTO `32_student_achievement` VALUES ('2020020009', '2001', 106, 131, 135, 99, 90, 84, 98, 89, 96, 928);
INSERT INTO `32_student_achievement` VALUES ('2020020010', '2001', 125, 110, 101, 87, 87, 94, 92, 93, 92, 881);
INSERT INTO `32_student_achievement` VALUES ('2020020011', '2001', 119, 143, 110, 93, 96, 88, 83, 95, 90, 917);
INSERT INTO `32_student_achievement` VALUES ('2020020012', '2001', 114, 117, 137, 96, 92, 94, 99, 91, 97, 937);
INSERT INTO `32_student_achievement` VALUES ('2020020013', '2001', 147, 108, 138, 96, 91, 92, 97, 94, 80, 943);
INSERT INTO `32_student_achievement` VALUES ('2020020014', '2001', 96, 98, 147, 93, 97, 94, 82, 87, 92, 886);
INSERT INTO `32_student_achievement` VALUES ('2020020015', '2001', 142, 98, 90, 98, 80, 95, 83, 89, 97, 872);
INSERT INTO `32_student_achievement` VALUES ('2020020016', '2001', 150, 125, 132, 92, 100, 99, 94, 84, 81, 957);
INSERT INTO `32_student_achievement` VALUES ('2020020017', '2001', 141, 127, 92, 84, 99, 87, 97, 100, 90, 917);
INSERT INTO `32_student_achievement` VALUES ('2020020018', '2001', 100, 106, 145, 85, 90, 95, 91, 83, 98, 893);
INSERT INTO `32_student_achievement` VALUES ('2020020019', '2001', 97, 94, 96, 90, 94, 89, 88, 96, 81, 825);
INSERT INTO `32_student_achievement` VALUES ('2020020020', '2001', 117, 84, 119, 85, 98, 94, 97, 100, 86, 880);
INSERT INTO `32_student_achievement` VALUES ('2020020021', '2001', 110, 83, 80, 94, 82, 89, 99, 81, 90, 808);
INSERT INTO `32_student_achievement` VALUES ('2020020022', '2001', 106, 100, 116, 93, 87, 81, 98, 82, 87, 850);
INSERT INTO `32_student_achievement` VALUES ('2020020023', '2001', 117, 92, 117, 98, 81, 81, 90, 81, 100, 857);
INSERT INTO `32_student_achievement` VALUES ('2020020024', '2001', 98, 118, 109, 85, 99, 88, 90, 98, 99, 884);
INSERT INTO `32_student_achievement` VALUES ('2020020025', '2001', 86, 92, 81, 88, 84, 87, 94, 87, 86, 785);
INSERT INTO `32_student_achievement` VALUES ('2020020026', '2001', 113, 146, 139, 87, 82, 80, 92, 80, 97, 916);
INSERT INTO `32_student_achievement` VALUES ('2020020027', '2001', 110, 135, 150, 89, 80, 84, 89, 91, 85, 913);
INSERT INTO `32_student_achievement` VALUES ('2020020028', '2001', 134, 139, 112, 93, 92, 92, 95, 93, 95, 945);
INSERT INTO `32_student_achievement` VALUES ('2020020029', '2001', 107, 96, 125, 87, 80, 88, 85, 82, 87, 837);
INSERT INTO `32_student_achievement` VALUES ('2020020030', '2001', 125, 107, 130, 96, 97, 86, 83, 94, 92, 910);
INSERT INTO `32_student_achievement` VALUES ('2020020031', '2002', 141, 149, 144, 81, 95, 95, 93, 95, 96, 989);
INSERT INTO `32_student_achievement` VALUES ('2020020032', '2002', 83, 111, 144, 96, 82, 93, 83, 93, 84, 869);
INSERT INTO `32_student_achievement` VALUES ('2020020033', '2002', 86, 97, 133, 95, 81, 82, 85, 100, 96, 855);
INSERT INTO `32_student_achievement` VALUES ('2020020034', '2002', 113, 134, 135, 94, 87, 84, 80, 93, 93, 913);
INSERT INTO `32_student_achievement` VALUES ('2020020035', '2002', 148, 146, 108, 82, 84, 88, 82, 91, 92, 921);
INSERT INTO `32_student_achievement` VALUES ('2020020036', '2002', 119, 130, 113, 98, 89, 81, 100, 100, 81, 911);
INSERT INTO `32_student_achievement` VALUES ('2020020037', '2002', 120, 106, 136, 100, 100, 88, 94, 85, 100, 929);
INSERT INTO `32_student_achievement` VALUES ('2020020038', '2002', 110, 146, 116, 82, 96, 89, 95, 86, 88, 908);
INSERT INTO `32_student_achievement` VALUES ('2020020039', '2002', 147, 113, 124, 93, 99, 92, 93, 84, 100, 945);
INSERT INTO `32_student_achievement` VALUES ('2020020040', '2002', 126, 126, 138, 86, 84, 96, 94, 97, 84, 931);
INSERT INTO `32_student_achievement` VALUES ('2020020041', '2002', 116, 117, 136, 85, 96, 100, 86, 94, 89, 919);
INSERT INTO `32_student_achievement` VALUES ('2020020042', '2002', 100, 128, 114, 82, 85, 95, 89, 88, 100, 881);
INSERT INTO `32_student_achievement` VALUES ('2020020043', '2002', 132, 104, 144, 87, 91, 83, 91, 84, 87, 903);
INSERT INTO `32_student_achievement` VALUES ('2020020044', '2002', 113, 119, 150, 88, 85, 80, 88, 88, 97, 908);
INSERT INTO `32_student_achievement` VALUES ('2020020045', '2002', 115, 94, 148, 89, 84, 87, 87, 81, 95, 880);
INSERT INTO `32_student_achievement` VALUES ('2020020046', '2002', 88, 90, 110, 91, 91, 88, 99, 94, 91, 842);
INSERT INTO `32_student_achievement` VALUES ('2020020047', '2002', 81, 110, 134, 83, 92, 81, 89, 82, 86, 838);
INSERT INTO `32_student_achievement` VALUES ('2020020048', '2002', 134, 112, 102, 82, 88, 92, 80, 95, 85, 870);
INSERT INTO `32_student_achievement` VALUES ('2020020049', '2002', 108, 129, 84, 89, 100, 97, 98, 88, 94, 887);
INSERT INTO `32_student_achievement` VALUES ('2020020050', '2002', 138, 138, 97, 93, 97, 93, 85, 91, 87, 919);
INSERT INTO `32_student_achievement` VALUES ('2020020051', '2002', 98, 85, 100, 98, 83, 89, 86, 95, 89, 823);
INSERT INTO `32_student_achievement` VALUES ('2020020052', '2002', 92, 122, 132, 96, 97, 100, 95, 86, 81, 901);
INSERT INTO `32_student_achievement` VALUES ('2020020053', '2002', 133, 137, 124, 84, 82, 88, 98, 96, 84, 926);
INSERT INTO `32_student_achievement` VALUES ('2020020054', '2002', 132, 127, 140, 95, 89, 92, 85, 95, 83, 938);
INSERT INTO `32_student_achievement` VALUES ('2020020055', '2002', 88, 143, 88, 98, 90, 97, 98, 97, 87, 886);
INSERT INTO `32_student_achievement` VALUES ('2020020056', '2002', 95, 150, 135, 97, 89, 96, 90, 93, 81, 926);
INSERT INTO `32_student_achievement` VALUES ('2020020057', '2002', 114, 145, 128, 98, 100, 98, 82, 100, 88, 953);
INSERT INTO `32_student_achievement` VALUES ('2020020058', '2002', 137, 136, 148, 87, 83, 84, 99, 96, 95, 965);
INSERT INTO `32_student_achievement` VALUES ('2020020059', '2002', 113, 101, 93, 98, 86, 90, 97, 85, 98, 861);
INSERT INTO `32_student_achievement` VALUES ('2020020060', '2002', 103, 147, 82, 85, 90, 97, 83, 92, 81, 860);
INSERT INTO `32_student_achievement` VALUES ('2020020061', '2003', 101, 87, 87, 94, 97, 98, 91, 93, 96, 844);
INSERT INTO `32_student_achievement` VALUES ('2020020062', '2003', 145, 120, 142, 87, 86, 80, 96, 80, 97, 933);
INSERT INTO `32_student_achievement` VALUES ('2020020063', '2003', 141, 140, 85, 82, 80, 89, 81, 93, 97, 888);
INSERT INTO `32_student_achievement` VALUES ('2020020064', '2003', 127, 102, 133, 98, 93, 96, 92, 94, 91, 926);
INSERT INTO `32_student_achievement` VALUES ('2020020065', '2003', 117, 118, 133, 93, 98, 80, 99, 100, 100, 938);
INSERT INTO `32_student_achievement` VALUES ('2020020066', '2003', 109, 116, 90, 100, 81, 80, 95, 97, 85, 853);
INSERT INTO `32_student_achievement` VALUES ('2020020067', '2003', 101, 115, 103, 91, 82, 99, 93, 87, 83, 854);
INSERT INTO `32_student_achievement` VALUES ('2020020068', '2003', 84, 131, 109, 94, 81, 93, 95, 96, 96, 879);
INSERT INTO `32_student_achievement` VALUES ('2020020069', '2003', 97, 92, 112, 97, 95, 86, 83, 97, 90, 849);
INSERT INTO `32_student_achievement` VALUES ('2020020070', '2003', 136, 142, 122, 80, 80, 99, 89, 80, 88, 916);
INSERT INTO `32_student_achievement` VALUES ('2020020071', '2003', 127, 98, 107, 89, 96, 81, 84, 96, 83, 861);
INSERT INTO `32_student_achievement` VALUES ('2020020072', '2003', 82, 103, 137, 82, 85, 84, 92, 81, 97, 843);
INSERT INTO `32_student_achievement` VALUES ('2020020073', '2003', 132, 90, 123, 98, 88, 84, 88, 86, 88, 877);
INSERT INTO `32_student_achievement` VALUES ('2020020074', '2003', 136, 125, 125, 81, 82, 86, 88, 96, 84, 903);
INSERT INTO `32_student_achievement` VALUES ('2020020075', '2003', 95, 89, 119, 95, 83, 100, 97, 92, 85, 855);
INSERT INTO `32_student_achievement` VALUES ('2020020076', '2003', 107, 134, 121, 95, 87, 99, 94, 94, 97, 928);
INSERT INTO `32_student_achievement` VALUES ('2020020077', '2003', 89, 98, 134, 91, 81, 83, 98, 80, 81, 835);
INSERT INTO `32_student_achievement` VALUES ('2020020078', '2003', 82, 136, 105, 92, 85, 81, 94, 89, 92, 856);
INSERT INTO `32_student_achievement` VALUES ('2020020079', '2003', 139, 85, 129, 82, 89, 93, 92, 92, 91, 892);
INSERT INTO `32_student_achievement` VALUES ('2020020080', '2003', 96, 110, 133, 80, 81, 81, 92, 88, 89, 850);
INSERT INTO `32_student_achievement` VALUES ('2020020081', '2003', 150, 139, 124, 82, 98, 94, 86, 86, 81, 940);
INSERT INTO `32_student_achievement` VALUES ('2020020082', '2003', 115, 138, 89, 84, 86, 88, 85, 84, 90, 859);
INSERT INTO `32_student_achievement` VALUES ('2020020083', '2003', 147, 108, 149, 92, 100, 82, 89, 100, 94, 961);
INSERT INTO `32_student_achievement` VALUES ('2020020084', '2003', 83, 95, 141, 86, 86, 86, 80, 82, 93, 832);
INSERT INTO `32_student_achievement` VALUES ('2020020085', '2003', 114, 93, 80, 95, 86, 97, 98, 85, 99, 847);
INSERT INTO `32_student_achievement` VALUES ('2020020086', '2003', 117, 131, 85, 84, 100, 80, 88, 99, 96, 880);
INSERT INTO `32_student_achievement` VALUES ('2020020087', '2003', 132, 113, 144, 88, 93, 86, 83, 83, 80, 902);
INSERT INTO `32_student_achievement` VALUES ('2020020088', '2003', 124, 95, 134, 93, 81, 100, 90, 84, 99, 900);
INSERT INTO `32_student_achievement` VALUES ('2020020089', '2003', 117, 140, 142, 100, 99, 81, 95, 99, 84, 957);
INSERT INTO `32_student_achievement` VALUES ('2020020090', '2003', 149, 86, 80, 84, 97, 83, 92, 96, 94, 861);
INSERT INTO `32_student_achievement` VALUES ('2020020091', '2004', 96, 137, 125, 90, 84, 95, 92, 80, 96, 895);
INSERT INTO `32_student_achievement` VALUES ('2020020092', '2004', 144, 82, 137, 80, 94, 93, 95, 84, 80, 889);
INSERT INTO `32_student_achievement` VALUES ('2020020093', '2004', 142, 101, 101, 81, 98, 100, 97, 91, 81, 892);
INSERT INTO `32_student_achievement` VALUES ('2020020094', '2004', 100, 145, 113, 82, 86, 94, 90, 87, 98, 895);
INSERT INTO `32_student_achievement` VALUES ('2020020095', '2004', 132, 121, 134, 94, 84, 81, 85, 98, 96, 925);
INSERT INTO `32_student_achievement` VALUES ('2020020096', '2004', 100, 150, 111, 84, 90, 91, 98, 91, 93, 908);
INSERT INTO `32_student_achievement` VALUES ('2020020097', '2004', 95, 97, 110, 93, 98, 98, 85, 82, 100, 858);
INSERT INTO `32_student_achievement` VALUES ('2020020098', '2004', 111, 108, 119, 85, 90, 84, 96, 100, 84, 877);
INSERT INTO `32_student_achievement` VALUES ('2020020099', '2004', 83, 103, 86, 96, 82, 83, 81, 97, 92, 803);
INSERT INTO `32_student_achievement` VALUES ('2020020100', '2004', 106, 149, 82, 96, 81, 87, 85, 93, 86, 865);
INSERT INTO `32_student_achievement` VALUES ('2020020101', '2004', 127, 82, 129, 83, 94, 96, 80, 90, 89, 870);
INSERT INTO `32_student_achievement` VALUES ('2020020102', '2004', 117, 105, 82, 88, 84, 87, 98, 92, 81, 834);
INSERT INTO `32_student_achievement` VALUES ('2020020103', '2004', 88, 115, 88, 98, 99, 81, 92, 95, 86, 842);
INSERT INTO `32_student_achievement` VALUES ('2020020104', '2004', 102, 125, 90, 89, 86, 81, 86, 88, 98, 845);
INSERT INTO `32_student_achievement` VALUES ('2020020105', '2004', 142, 88, 126, 81, 85, 93, 92, 97, 92, 896);
INSERT INTO `32_student_achievement` VALUES ('2020020106', '2004', 114, 81, 148, 92, 98, 99, 83, 80, 98, 893);
INSERT INTO `32_student_achievement` VALUES ('2020020107', '2004', 95, 144, 146, 80, 89, 96, 89, 95, 81, 915);
INSERT INTO `32_student_achievement` VALUES ('2020020108', '2004', 91, 128, 140, 91, 90, 81, 82, 82, 81, 866);
INSERT INTO `32_student_achievement` VALUES ('2020020109', '2004', 143, 111, 82, 83, 97, 88, 81, 98, 90, 873);
INSERT INTO `32_student_achievement` VALUES ('2020020110', '2004', 111, 121, 122, 93, 94, 81, 91, 100, 84, 897);
INSERT INTO `32_student_achievement` VALUES ('2020020111', '2004', 121, 100, 82, 93, 94, 95, 95, 85, 91, 856);
INSERT INTO `32_student_achievement` VALUES ('2020020112', '2004', 104, 105, 98, 94, 98, 94, 98, 89, 98, 878);
INSERT INTO `32_student_achievement` VALUES ('2020020113', '2004', 126, 117, 104, 98, 82, 80, 86, 94, 85, 872);
INSERT INTO `32_student_achievement` VALUES ('2020020114', '2004', 143, 141, 105, 88, 85, 92, 85, 91, 88, 918);
INSERT INTO `32_student_achievement` VALUES ('2020020115', '2004', 88, 122, 136, 100, 87, 93, 89, 87, 85, 887);
INSERT INTO `32_student_achievement` VALUES ('2020020116', '2004', 83, 106, 99, 80, 84, 93, 85, 99, 95, 824);
INSERT INTO `32_student_achievement` VALUES ('2020020117', '2004', 118, 119, 139, 94, 96, 99, 91, 99, 87, 942);
INSERT INTO `32_student_achievement` VALUES ('2020020118', '2004', 132, 143, 114, 91, 93, 86, 99, 96, 96, 950);
INSERT INTO `32_student_achievement` VALUES ('2020020119', '2004', 92, 120, 95, 94, 81, 87, 80, 98, 92, 839);
INSERT INTO `32_student_achievement` VALUES ('2020020120', '2004', 92, 99, 110, 82, 81, 94, 99, 86, 99, 842);

-- ----------------------------
-- Table structure for sql_log
-- ----------------------------
DROP TABLE IF EXISTS `sql_log`;
CREATE TABLE `sql_log`  (
  `time` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '时间',
  `ID` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '教师id',
  `name` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '教师名字',
  `action_1` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '行为',
  `Student_ID` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学生id',
  `action_2` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '行为',
  `class` char(4) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '班级'
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sql_log
-- ----------------------------
INSERT INTO `sql_log` VALUES ('2022-07-12 11:43:14', 'zc_2019060001', '张才', '修改', '2020020276', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-13 06:13:08', 'zc_2019060001', '张才', '修改', '2020020277', '密码', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-13 11:49:04', 'zc_2019060001', '张才', '修改', 'text', '密码', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-13 12:07:47', 'zc_2019060001', '张才', '添加', '2020020277', '账户', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-13 12:23:15', 'zc_2019060001', '张才', '添加', '2020020277', '账户', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 17:26:44', 'zmf_2019060002', '赵美芳', '录入', '2020020001', '账户', '2001');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:31:44', 'zc_2019060001', '张才', '录入', '2020020276', '账户', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:36:08', 'zmf_2019060002', '赵美芳', '添加', '114514', '成绩', '2001');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:38:41', 'zmf_2019060002', '赵美芳', '删除', '114514', '成绩', '2001');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:41:29', 'zc_2019060001', '张才', '添加', '114514', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:41:55', 'zc_2019060001', '张才', '删除', '114514', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:42:55', 'zc_2019060001', '张才', '添加', '114514', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:43:01', 'zc_2019060001', '张才', '删除', '114514', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:45:04', 'zc_2019060001', '张才', '添加', '114514', '成绩', '2004');
INSERT INTO `sql_log` VALUES ('2022-07-15 21:45:08', 'zc_2019060001', '张才', '删除', '114514', '成绩', '2004');

-- ----------------------------
-- Table structure for student_account_information
-- ----------------------------
DROP TABLE IF EXISTS `student_account_information`;
CREATE TABLE `student_account_information`  (
  `username` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学号',
  `md5_password` char(32) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '密码',
  `name` varchar(32) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '姓名',
  `phone` varchar(16) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '手机号',
  `id` varchar(32) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '身份证',
  `mailbox` varchar(32) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '邮箱',
  `image_save` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '图片',
  `user_flag` char(32) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT 'flag',
  `class` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_account_information
-- ----------------------------
INSERT INTO `student_account_information` VALUES ('2020020001', 'e10adc3949ba59abbe56e057f20f883e', '路姬雅', '2020020001', '756bc3082012e4fab9c20500d06fb9fa', '2020020001@qq.com', 'user_images/Default_Avatar.jpeg', '9ffef9482558b113fab4dd3e4b5dd9f9', '2001');
INSERT INTO `student_account_information` VALUES ('2020020002', 'e10adc3949ba59abbe56e057f20f883e', '管鸣瑶', '2020020002', 'aa44294670388c862669fa514b976a91', '2020020002@qq.com', 'user_images/Default_Avatar.jpeg', 'fd5bd919dbe0bd44528797dbd9e5269c', '2001');
INSERT INTO `student_account_information` VALUES ('2020020003', 'e10adc3949ba59abbe56e057f20f883e', '明伊婵', '2020020003', '140b0739443c14719e6616116d138579', '2020020003@qq.com', 'user_images/Default_Avatar.jpeg', '364266b411729e4bba920e21ad6be4cf', '2001');
INSERT INTO `student_account_information` VALUES ('2020020004', 'e10adc3949ba59abbe56e057f20f883e', '强澜爱', '2020020004', '4184cf276c6df31caa8b4c2bdf1fc8a4', '2020020004@qq.com', 'user_images/Default_Avatar.jpeg', '8cfa03646860b2b18f0777f3742673a7', '2001');
INSERT INTO `student_account_information` VALUES ('2020020005', 'e10adc3949ba59abbe56e057f20f883e', '安皑仪', '2020020005', '2a46e631cafbcbc8735dfec390f3e37d', '2020020005@qq.com', 'user_images/Default_Avatar.jpeg', '97f31b49effc7a2286cc083836b0fcd6', '2001');
INSERT INTO `student_account_information` VALUES ('2020020006', 'e10adc3949ba59abbe56e057f20f883e', '夏洁', '2020020006', 'd2f3b45ef5569d57f94368ec2c75576d', '2020020006@qq.com', 'user_images/Default_Avatar.jpeg', 'c5707d2709672b9638ea976c759db5c0', '2001');
INSERT INTO `student_account_information` VALUES ('2020020007', 'e10adc3949ba59abbe56e057f20f883e', '舒娅莲', '2020020007', 'f69e9a22c41623e7069ab7ada6c48551', '2020020007@qq.com', 'user_images/Default_Avatar.jpeg', '28535edd4c5d25bd5a48b758afbb40f5', '2001');
INSERT INTO `student_account_information` VALUES ('2020020008', 'e10adc3949ba59abbe56e057f20f883e', '唐媛行', '2020020008', 'd235c0c8d8d0b9a817e8fdad542f59c4', '2020020008@qq.com', 'user_images/Default_Avatar.jpeg', '412d753e6b99b41b70df00fd18468ea4', '2001');
INSERT INTO `student_account_information` VALUES ('2020020009', 'e10adc3949ba59abbe56e057f20f883e', '戚澜', '2020020009', '4354506ae00f48dc1ccc30c1f630e1cf', '2020020009@qq.com', 'user_images/Default_Avatar.jpeg', 'b4c9eb0816ec2ecb744357dd6d344c98', '2001');
INSERT INTO `student_account_information` VALUES ('2020020010', 'e10adc3949ba59abbe56e057f20f883e', '费鹏', '2020020010', 'c1debb48bf95d7a92585bf59ce86779e', '2020020010@qq.com', 'user_images/Default_Avatar.jpeg', 'f94541f655071d7fdb432d9e509d36d1', '2001');
INSERT INTO `student_account_information` VALUES ('2020020011', 'e10adc3949ba59abbe56e057f20f883e', '和宏行', '2020020011', 'bbae0b3efad147760717f7aca79ec0f3', '2020020011@qq.com', 'user_images/Default_Avatar.jpeg', 'e80bb456facb6436bb064ce1868a2073', '2001');
INSERT INTO `student_account_information` VALUES ('2020020012', 'e10adc3949ba59abbe56e057f20f883e', '卜琰娟', '2020020012', '2c230657d6ecc1e7ec01f6ebb4903064', '2020020012@qq.com', 'user_images/Default_Avatar.jpeg', 'bc6ef6f0d47cab212c646092fa452f62', '2001');
INSERT INTO `student_account_information` VALUES ('2020020013', 'e10adc3949ba59abbe56e057f20f883e', '郭固铭', '2020020013', 'd137ec30edfe431830f401ae1b750684', '2020020013@qq.com', 'user_images/Default_Avatar.jpeg', 'f834fadf7fd56ffab7f1a165103f57d8', '2001');
INSERT INTO `student_account_information` VALUES ('2020020014', 'e10adc3949ba59abbe56e057f20f883e', '童丽', '2020020014', '97ae31ae8c4a7bb8cc7f81649cba8ba3', '2020020014@qq.com', 'user_images/Default_Avatar.jpeg', 'e488b7ca4df964cca46c7a455abf2d16', '2001');
INSERT INTO `student_account_information` VALUES ('2020020015', 'e10adc3949ba59abbe56e057f20f883e', '梁云', '2020020015', '5c24ca5907ee4367bf156af5ae2ba612', '2020020015@qq.com', 'user_images/Default_Avatar.jpeg', '07a169f45ec260898b1b8334dba1b0bf', '2001');
INSERT INTO `student_account_information` VALUES ('2020020016', 'e10adc3949ba59abbe56e057f20f883e', '康旭旭', '2020020016', '140d556ca581a54a8774efb5962ad94b', '2020020016@qq.com', 'user_images/Default_Avatar.jpeg', '8a8cc5c78197bb7ed8724951728f1b8c', '2001');
INSERT INTO `student_account_information` VALUES ('2020020017', 'e10adc3949ba59abbe56e057f20f883e', '葛茜钊', '2020020017', '1f1ad4cde6aad30ee37ea572773edbc3', '2020020017@qq.com', 'user_images/Default_Avatar.jpeg', 'acfc990197bc53deaed6107afd1ecbe8', '2001');
INSERT INTO `student_account_information` VALUES ('2020020018', 'e10adc3949ba59abbe56e057f20f883e', '管毓霄', '2020020018', 'edeac83739c39250e3ea05d0623ee184', '2020020018@qq.com', 'user_images/Default_Avatar.jpeg', 'c4ed27a83a1bff473c2c830cee50c62a', '2001');
INSERT INTO `student_account_information` VALUES ('2020020019', 'e10adc3949ba59abbe56e057f20f883e', '贾皑源', '2020020019', 'e9861b1fa176c95167a8fd88765aade8', '2020020019@qq.com', 'user_images/Default_Avatar.jpeg', '43ab8b6adff1d8d1b195af2cc09b3ef8', '2001');
INSERT INTO `student_account_information` VALUES ('2020020020', 'e10adc3949ba59abbe56e057f20f883e', '孟娅莹', '2020020020', 'd5bd52c983c780e166b6a781556a4a36', '2020020020@qq.com', 'user_images/Default_Avatar.jpeg', '88785e1278e1119e2e6864f20bf928d0', '2001');
INSERT INTO `student_account_information` VALUES ('2020020021', 'e10adc3949ba59abbe56e057f20f883e', '曹皑晗', '2020020021', '516c960f3d033332da5c5ce749655d6b', '2020020021@qq.com', 'user_images/Default_Avatar.jpeg', '5cd3c1ea5da7b3897d88acbad532c57e', '2001');
INSERT INTO `student_account_information` VALUES ('2020020022', 'e10adc3949ba59abbe56e057f20f883e', '戚朗允', '2020020022', 'f893033ab0309349200c90cb17230f97', '2020020022@qq.com', 'user_images/Default_Avatar.jpeg', '7eb8f2a100955f32d8425c6b434f61fd', '2001');
INSERT INTO `student_account_information` VALUES ('2020020023', 'e10adc3949ba59abbe56e057f20f883e', '米腾玲', '2020020023', '357615868537ea39376a7c34cd687e54', '2020020023@qq.com', 'user_images/Default_Avatar.jpeg', '2183b230705e9d1bf6fedee64328d3fc', '2001');
INSERT INTO `student_account_information` VALUES ('2020020024', 'e10adc3949ba59abbe56e057f20f883e', '臧萍艺', '2020020024', 'c30d512fcf498d62821ddd99b501ac55', '2020020024@qq.com', 'user_images/Default_Avatar.jpeg', 'fc2a667c9efc2ef528d9939403cda653', '2001');
INSERT INTO `student_account_information` VALUES ('2020020025', 'e10adc3949ba59abbe56e057f20f883e', '刁锦芳', '2020020025', '8dfff7d2cbfd67fce9737d630106b11c', '2020020025@qq.com', 'user_images/Default_Avatar.jpeg', 'd8a14ae2ee9f7904e7076ecc599a88c0', '2001');
INSERT INTO `student_account_information` VALUES ('2020020026', 'e10adc3949ba59abbe56e057f20f883e', '乐爱涵', '2020020026', '26b889ad9fed60eda154367515f1f0cf', '2020020026@qq.com', 'user_images/Default_Avatar.jpeg', '5f3c6a61f49409d6752fd1933f97c97e', '2001');
INSERT INTO `student_account_information` VALUES ('2020020027', 'e10adc3949ba59abbe56e057f20f883e', '臧娟谦', '2020020027', '943d95882c183f94aa2c76d19c7cd8f8', '2020020027@qq.com', 'user_images/Default_Avatar.jpeg', '6a5c0d30efc7845bf07a35294471b32e', '2001');
INSERT INTO `student_account_information` VALUES ('2020020028', 'e10adc3949ba59abbe56e057f20f883e', '孔瑞倩', '2020020028', '08192a64c2dfce16c32d7afafc76e7e0', '2020020028@qq.com', 'user_images/Default_Avatar.jpeg', 'd5f930bd858e033f68853092af116a23', '2001');
INSERT INTO `student_account_information` VALUES ('2020020029', 'e10adc3949ba59abbe56e057f20f883e', '郭秋炎', '2020020029', '1e7dcdf2f4e104e629a4bfe0ffd39e85', '2020020029@qq.com', 'user_images/Default_Avatar.jpeg', 'ae4a0e7bd1333da59f6ebdfab05045ec', '2001');
INSERT INTO `student_account_information` VALUES ('2020020030', 'e10adc3949ba59abbe56e057f20f883e', '冯乐', '2020020030', '408ce878b753eabad52ec8d4f22e20b5', '2020020030@qq.com', 'user_images/Default_Avatar.jpeg', '04c95beb39352c04b705b85f0aaf5537', '2001');
INSERT INTO `student_account_information` VALUES ('2020020031', 'e10adc3949ba59abbe56e057f20f883e', '谢颖巧', '2020020031', '273e30be4f68928ebc61a2750d1f2a52', '2020020031@qq.com', 'user_images/Default_Avatar.jpeg', '6415f4dd83c09399396f7be3260485cc', '2002');
INSERT INTO `student_account_information` VALUES ('2020020032', 'e10adc3949ba59abbe56e057f20f883e', '骆皑云', '2020020032', '2624663130f9c3095c83427a01aba18c', '2020020032@qq.com', 'user_images/Default_Avatar.jpeg', '47a526e968603621a7091dd45c613908', '2002');
INSERT INTO `student_account_information` VALUES ('2020020033', 'e10adc3949ba59abbe56e057f20f883e', '锺倩菁', '2020020033', 'b55ebc0f79bf04ec39f54bb8dc53a0fa', '2020020033@qq.com', 'user_images/Default_Avatar.jpeg', '07a0835dcd553d7a93c3f90996c7333a', '2002');
INSERT INTO `student_account_information` VALUES ('2020020034', 'e10adc3949ba59abbe56e057f20f883e', '湛吉', '2020020034', '4286bb6b89125e57e2e1733bb1af9b5f', '2020020034@qq.com', 'user_images/Default_Avatar.jpeg', '20a5af051253de46b2971a28a2426e0b', '2002');
INSERT INTO `student_account_information` VALUES ('2020020035', 'e10adc3949ba59abbe56e057f20f883e', '汤翰露', '2020020035', 'fc539e9dfe3e32120c043491cc0eff21', '2020020035@qq.com', 'user_images/Default_Avatar.jpeg', '074248ec88204e6b85ab8d83f8cbeb43', '2002');
INSERT INTO `student_account_information` VALUES ('2020020036', 'e10adc3949ba59abbe56e057f20f883e', '鲍依', '2020020036', '77d0ebda9cc10216872be9f9ce320481', '2020020036@qq.com', 'user_images/Default_Avatar.jpeg', '49fadeda827a0995133421511a5e476a', '2002');
INSERT INTO `student_account_information` VALUES ('2020020037', 'e10adc3949ba59abbe56e057f20f883e', '韦卿雅', '2020020037', 'a9dbaaa9eab7dfe95bde00da12bda209', '2020020037@qq.com', 'user_images/Default_Avatar.jpeg', '99c9d2fe011bb68f54d58b97774af90a', '2002');
INSERT INTO `student_account_information` VALUES ('2020020038', 'e10adc3949ba59abbe56e057f20f883e', '屈宜嘉', '2020020038', '166bf39a41b4b567d82759b1af7ead78', '2020020038@qq.com', 'user_images/Default_Avatar.jpeg', 'a0f57669da597b473286962b36f410fb', '2002');
INSERT INTO `student_account_information` VALUES ('2020020039', 'e10adc3949ba59abbe56e057f20f883e', '祝晨蓓', '2020020039', '832e74500ac89fe4da951ad67657277b', '2020020039@qq.com', 'user_images/Default_Avatar.jpeg', 'c1bc35fdc02f6911661f1157a3338040', '2002');
INSERT INTO `student_account_information` VALUES ('2020020040', 'e10adc3949ba59abbe56e057f20f883e', '卜怡谦', '2020020040', 'bf03f31b0f537019d9534ce4734aa528', '2020020040@qq.com', 'user_images/Default_Avatar.jpeg', '28184729d4f98000b46dd0601ea97274', '2002');
INSERT INTO `student_account_information` VALUES ('2020020041', 'e10adc3949ba59abbe56e057f20f883e', '昌瑶琬', '2020020041', '23f752fe3ed141453f629bb8d8231541', '2020020041@qq.com', 'user_images/Default_Avatar.jpeg', '3833473a6465ad306c25706e61a17e96', '2002');
INSERT INTO `student_account_information` VALUES ('2020020042', 'e10adc3949ba59abbe56e057f20f883e', '霍芝', '2020020042', '5acfda77af59b6a1a06312515eb62171', '2020020042@qq.com', 'user_images/Default_Avatar.jpeg', 'f56d72c4f5b34ca0ad32596cd744b7ca', '2002');
INSERT INTO `student_account_information` VALUES ('2020020043', 'e10adc3949ba59abbe56e057f20f883e', '酆悦凡', '2020020043', '9f575945c45f9d2e05a3dc95a00d7a4f', '2020020043@qq.com', 'user_images/Default_Avatar.jpeg', 'e4ffaf0d2b911aabc27905276bc86664', '2002');
INSERT INTO `student_account_information` VALUES ('2020020044', 'e10adc3949ba59abbe56e057f20f883e', '韦泰霭', '2020020044', '5ac70838c2f46ebcb7e858eb2c58fa2b', '2020020044@qq.com', 'user_images/Default_Avatar.jpeg', 'fc1b2600e273eaab26725cb9e78d6679', '2002');
INSERT INTO `student_account_information` VALUES ('2020020045', 'e10adc3949ba59abbe56e057f20f883e', '雷泓纨', '2020020045', '00e76e5d699994aab35f04c3117f3daf', '2020020045@qq.com', 'user_images/Default_Avatar.jpeg', 'a6ba8b3dca02ec43bfe530b7e31349e7', '2002');
INSERT INTO `student_account_information` VALUES ('2020020046', 'e10adc3949ba59abbe56e057f20f883e', '罗琳艺', '2020020046', 'cd85045f05d980b7a273c2066b6b857b', '2020020046@qq.com', 'user_images/Default_Avatar.jpeg', 'ed142ab37b76be434d2461619f812bde', '2002');
INSERT INTO `student_account_information` VALUES ('2020020047', 'e10adc3949ba59abbe56e057f20f883e', '贺欢晶', '2020020047', '6aaeff460e7761c3747bb3bee4a327ef', '2020020047@qq.com', 'user_images/Default_Avatar.jpeg', 'ca309518c6809306a60ee244b2d64630', '2002');
INSERT INTO `student_account_information` VALUES ('2020020048', 'e10adc3949ba59abbe56e057f20f883e', '江珠行', '2020020048', 'c7ca21d32b9217dec9218f668dfff8d7', '2020020048@qq.com', 'user_images/Default_Avatar.jpeg', 'cee7ed1b5a22a6732ab1865489e3d98b', '2002');
INSERT INTO `student_account_information` VALUES ('2020020049', 'e10adc3949ba59abbe56e057f20f883e', '严亨瑶', '2020020049', '19666660fec5d643cbedce8d3432ce7b', '2020020049@qq.com', 'user_images/Default_Avatar.jpeg', '2ec0d3cf4332a9168c1f39466ff1afba', '2002');
INSERT INTO `student_account_information` VALUES ('2020020050', 'e10adc3949ba59abbe56e057f20f883e', '万航', '2020020050', '9a40639c899736f94cca33d792ee2543', '2020020050@qq.com', 'user_images/Default_Avatar.jpeg', '8e3b305a5198da6b7903b57e8cf77ac2', '2002');
INSERT INTO `student_account_information` VALUES ('2020020051', 'e10adc3949ba59abbe56e057f20f883e', '安冰', '2020020051', '83b71d38ef46daf74896031acb193a81', '2020020051@qq.com', 'user_images/Default_Avatar.jpeg', 'b8bb3f49f69b360ca3624920ab91f105', '2002');
INSERT INTO `student_account_information` VALUES ('2020020052', 'e10adc3949ba59abbe56e057f20f883e', '吕香艳', '2020020052', 'b978d309576846a1c970c17ff51b1da0', '2020020052@qq.com', 'user_images/Default_Avatar.jpeg', 'c0c10188780235dd5269adf2818ad9e8', '2002');
INSERT INTO `student_account_information` VALUES ('2020020053', 'e10adc3949ba59abbe56e057f20f883e', '金斌洁', '2020020053', 'b51f4e5647a314ad932ced43fb22c35e', '2020020053@qq.com', 'user_images/Default_Avatar.jpeg', '244eaa9dbc73a834a34b51c4b9525ac9', '2002');
INSERT INTO `student_account_information` VALUES ('2020020054', 'e10adc3949ba59abbe56e057f20f883e', '伍凡钊', '2020020054', '5272137a9e6256d0ddcabe993b862214', '2020020054@qq.com', 'user_images/Default_Avatar.jpeg', '8b0c5aa7d28843ff206db8429235d4d9', '2002');
INSERT INTO `student_account_information` VALUES ('2020020055', 'e10adc3949ba59abbe56e057f20f883e', '韦泰茹', '2020020055', '693e725eb92767012632e6bae1aab448', '2020020055@qq.com', 'user_images/Default_Avatar.jpeg', '77622926e0560fc7d531e662d341deb0', '2002');
INSERT INTO `student_account_information` VALUES ('2020020056', 'e10adc3949ba59abbe56e057f20f883e', '许晴', '2020020056', '332e488760ee46c9139a0a9897501cb6', '2020020056@qq.com', 'user_images/Default_Avatar.jpeg', '297945c5ae3753fb70ca787d9656435d', '2002');
INSERT INTO `student_account_information` VALUES ('2020020057', 'e10adc3949ba59abbe56e057f20f883e', '凤妍', '2020020057', '8463deab34192b43f990c33afac51684', '2020020057@qq.com', 'user_images/Default_Avatar.jpeg', '377f8feb24868d4bbbc48df9148cfb98', '2002');
INSERT INTO `student_account_information` VALUES ('2020020058', 'e10adc3949ba59abbe56e057f20f883e', '强莹悦', '2020020058', 'd8c28c7fab4fe780a9b1cf4f414bee0e', '2020020058@qq.com', 'user_images/Default_Avatar.jpeg', 'f87f83db8fa05ca4af8a1061a047eb70', '2002');
INSERT INTO `student_account_information` VALUES ('2020020059', 'e10adc3949ba59abbe56e057f20f883e', '喻晶', '2020020059', '1e679a7682e03b9f6b58305395e63749', '2020020059@qq.com', 'user_images/Default_Avatar.jpeg', 'bc5a4a97cdb1e24674542a4c3bc736a5', '2002');
INSERT INTO `student_account_information` VALUES ('2020020060', 'e10adc3949ba59abbe56e057f20f883e', '苗咏', '2020020060', 'a17a446d6135f3aa9320e20ceb1473f8', '2020020060@qq.com', 'user_images/Default_Avatar.jpeg', '5faa6f48b6a4c52c78115a53cd8875c7', '2002');
INSERT INTO `student_account_information` VALUES ('2020020061', 'e10adc3949ba59abbe56e057f20f883e', '麻亨风', '2020020061', 'cec338e0d35389898a4dac1b300112a1', '2020020061@qq.com', 'user_images/Default_Avatar.jpeg', '36c06c6ca51c6b3a2ed5da80e551728d', '2003');
INSERT INTO `student_account_information` VALUES ('2020020062', 'e10adc3949ba59abbe56e057f20f883e', '廉宏旭', '2020020062', '0445fab8fab5688f894058f994ba385a', '2020020062@qq.com', 'user_images/Default_Avatar.jpeg', 'e2be034d73d929e38b5ee07a4acba4fe', '2003');
INSERT INTO `student_account_information` VALUES ('2020020063', 'e10adc3949ba59abbe56e057f20f883e', '苏珍', '2020020063', '7a2f87ec6a160fd56e5880c1ce08bc2c', '2020020063@qq.com', 'user_images/Default_Avatar.jpeg', '3875a66aa8013ec1576a1024cccdf56a', '2003');
INSERT INTO `student_account_information` VALUES ('2020020064', 'e10adc3949ba59abbe56e057f20f883e', '顾芝', '2020020064', '518aa29a249db83e6602519e78a184d7', '2020020064@qq.com', 'user_images/Default_Avatar.jpeg', 'b0699f275c6d53428401604338a01a38', '2003');
INSERT INTO `student_account_information` VALUES ('2020020065', 'e10adc3949ba59abbe56e057f20f883e', '乐洁', '2020020065', '0ae30922d8b54a4fa3555dc5c4bf63f4', '2020020065@qq.com', 'user_images/Default_Avatar.jpeg', 'd26f5b8eb0be05a78129142a8e60eb04', '2003');
INSERT INTO `student_account_information` VALUES ('2020020066', 'e10adc3949ba59abbe56e057f20f883e', '孔玉亨', '2020020066', 'ff2331f65e37e4f2c5bdab3bd3e5d77b', '2020020066@qq.com', 'user_images/Default_Avatar.jpeg', '44e42fd4b450bf2ff8704cf5cf61606d', '2003');
INSERT INTO `student_account_information` VALUES ('2020020067', 'e10adc3949ba59abbe56e057f20f883e', '蒋翰', '2020020067', '58ca6ba9cbf472473d5a43b23664a00b', '2020020067@qq.com', 'user_images/Default_Avatar.jpeg', '7ab39c3d2249e42cdd378236cb978a15', '2003');
INSERT INTO `student_account_information` VALUES ('2020020068', 'e10adc3949ba59abbe56e057f20f883e', '贾丹', '2020020068', '71f8126a69ce5782c957c4d14fd1772b', '2020020068@qq.com', 'user_images/Default_Avatar.jpeg', '959c5c13d5b59fc998f3c6688a67bf8e', '2003');
INSERT INTO `student_account_information` VALUES ('2020020069', 'e10adc3949ba59abbe56e057f20f883e', '倪雪', '2020020069', '8e7424c685f9b54df57157950821e587', '2020020069@qq.com', 'user_images/Default_Avatar.jpeg', 'be6266cc1fd0898bf664b77d98e9b25f', '2003');
INSERT INTO `student_account_information` VALUES ('2020020070', 'e10adc3949ba59abbe56e057f20f883e', '明影露', '2020020070', 'f65e4d7247c1b532eacac84b11c00953', '2020020070@qq.com', 'user_images/Default_Avatar.jpeg', 'f400102a0fd76e81bd7d2cd012ef82e7', '2003');
INSERT INTO `student_account_information` VALUES ('2020020071', 'e10adc3949ba59abbe56e057f20f883e', '郑鸣钧', '2020020071', '98cdd49428069d5ebf9aabedd75a8c6d', '2020020071@qq.com', 'user_images/Default_Avatar.jpeg', '0a2f48014b559be383408554fbd73d89', '2003');
INSERT INTO `student_account_information` VALUES ('2020020072', 'e10adc3949ba59abbe56e057f20f883e', '张叶媛', '2020020072', '408b23ae44863bb3e1d565baae5ae713', '2020020072@qq.com', 'user_images/Default_Avatar.jpeg', 'b9de9a2fbdaeacb32ee49623a242011a', '2003');
INSERT INTO `student_account_information` VALUES ('2020020073', 'e10adc3949ba59abbe56e057f20f883e', '潘朋洁', '2020020073', '6b9ef15aedc6bbbbfee2559e80d9a91a', '2020020073@qq.com', 'user_images/Default_Avatar.jpeg', '71e842292fad80abcd0e72fe6de9da03', '2003');
INSERT INTO `student_account_information` VALUES ('2020020074', 'e10adc3949ba59abbe56e057f20f883e', '伍珠枝', '2020020074', '33f5b14568db86d192d3263e70b9e13b', '2020020074@qq.com', 'user_images/Default_Avatar.jpeg', '2178990de0f6ea1710c04c8686b83e4d', '2003');
INSERT INTO `student_account_information` VALUES ('2020020075', 'e10adc3949ba59abbe56e057f20f883e', '纪凤', '2020020075', 'e213dc7b2e9a254893ed346503e6e92b', '2020020075@qq.com', 'user_images/Default_Avatar.jpeg', 'a9459f14b149dde6324a5970ab922547', '2003');
INSERT INTO `student_account_information` VALUES ('2020020076', 'e10adc3949ba59abbe56e057f20f883e', '岑可', '2020020076', '88ab45e9e1005a5b963027b97d3d75bf', '2020020076@qq.com', 'user_images/Default_Avatar.jpeg', 'b8f38cc050ac573bdc6bdda811d042c9', '2003');
INSERT INTO `student_account_information` VALUES ('2020020077', 'e10adc3949ba59abbe56e057f20f883e', '袁妹婕', '2020020077', '140e8c8298bc7f0d1fce8701d686a731', '2020020077@qq.com', 'user_images/Default_Avatar.jpeg', '737815d3a56069e127e58e1690db04ca', '2003');
INSERT INTO `student_account_information` VALUES ('2020020078', 'e10adc3949ba59abbe56e057f20f883e', '元瑶建', '2020020078', 'd44b83b75753457834678cbddc4bb05a', '2020020078@qq.com', 'user_images/Default_Avatar.jpeg', 'b189b56a8c96b865ebb38a9c7de8b213', '2003');
INSERT INTO `student_account_information` VALUES ('2020020079', 'e10adc3949ba59abbe56e057f20f883e', '谈家影', '2020020079', 'fa8258ffc5a731f04e734b3c7efc1b38', '2020020079@qq.com', 'user_images/Default_Avatar.jpeg', '63de4385afa3933b52e36c1050bd0a80', '2003');
INSERT INTO `student_account_information` VALUES ('2020020080', 'e10adc3949ba59abbe56e057f20f883e', '葛芝菁', '2020020080', 'a86ac6c06606f88cf8b5e84d2bcaf3cd', '2020020080@qq.com', 'user_images/Default_Avatar.jpeg', 'd016edbda54d8d2d8a223d86171216f0', '2003');
INSERT INTO `student_account_information` VALUES ('2020020081', 'e10adc3949ba59abbe56e057f20f883e', '高淇', '2020020081', '526dfb4fba4b0f52c0569e788adc96f1', '2020020081@qq.com', 'user_images/Default_Avatar.jpeg', '79b32d8420fca63345778e2ce8bf1692', '2003');
INSERT INTO `student_account_information` VALUES ('2020020082', 'e10adc3949ba59abbe56e057f20f883e', '卢羽钧', '2020020082', 'd3c3665276733cc4336219b2373adcf5', '2020020082@qq.com', 'user_images/Default_Avatar.jpeg', 'fa84f36d13cd6e3016488229e7bdeab5', '2003');
INSERT INTO `student_account_information` VALUES ('2020020083', 'e10adc3949ba59abbe56e057f20f883e', '蒋策姣', '2020020083', 'b5b92b70d4e444b1848eb7bf65e2184d', '2020020083@qq.com', 'user_images/Default_Avatar.jpeg', 'e61340fcc3224b2b07893136826d6abc', '2003');
INSERT INTO `student_account_information` VALUES ('2020020084', 'e10adc3949ba59abbe56e057f20f883e', '麻憧依', '2020020084', 'ed2238e63f4c39f4eef022c9aa556cea', '2020020084@qq.com', 'user_images/Default_Avatar.jpeg', 'ec0e4e5488d4d83b9c60c27f267b245f', '2003');
INSERT INTO `student_account_information` VALUES ('2020020085', 'e10adc3949ba59abbe56e057f20f883e', '危固妤', '2020020085', 'a9c5be1d9245f6cd264c12a6db8c0a59', '2020020085@qq.com', 'user_images/Default_Avatar.jpeg', '51f4d2684c7bcb6cbaa8dc0f32999c1b', '2003');
INSERT INTO `student_account_information` VALUES ('2020020086', 'e10adc3949ba59abbe56e057f20f883e', '钱素启', '2020020086', 'd970b9c3d8b1cd5ccef4bf7627e6fe93', '2020020086@qq.com', 'user_images/Default_Avatar.jpeg', '3f4e850aa8f511cdcf374f22868017f6', '2003');
INSERT INTO `student_account_information` VALUES ('2020020087', 'e10adc3949ba59abbe56e057f20f883e', '穆允雪', '2020020087', '2c0986aaf70292c940e456eb0ab98fc4', '2020020087@qq.com', 'user_images/Default_Avatar.jpeg', 'efc10f7e4cd7b1f33f8536d2756e9d71', '2003');
INSERT INTO `student_account_information` VALUES ('2020020088', 'e10adc3949ba59abbe56e057f20f883e', '席栋', '2020020088', 'fcbc8e596e1e59aa8f337c39e1342a5e', '2020020088@qq.com', 'user_images/Default_Avatar.jpeg', '524db631b317614a433df8d5edeffe95', '2003');
INSERT INTO `student_account_information` VALUES ('2020020089', 'e10adc3949ba59abbe56e057f20f883e', '喻婉镇', '2020020089', '842b49e3c2223417880b803e8a194057', '2020020089@qq.com', 'user_images/Default_Avatar.jpeg', 'b439e92e8bcaab51ff2b7dacb27e0970', '2003');
INSERT INTO `student_account_information` VALUES ('2020020090', 'e10adc3949ba59abbe56e057f20f883e', '顾澜雪', '2020020090', '1c8099d0c181ff7088df0734f536521b', '2020020090@qq.com', 'user_images/Default_Avatar.jpeg', '66a9888b2f4c47599e3363a50b85fc84', '2003');
INSERT INTO `student_account_information` VALUES ('2020020091', 'e10adc3949ba59abbe56e057f20f883e', '孔沫', '2020020091', '871b179c6a7fc2cb6bca69b6158de92d', '2020020091@qq.com', 'user_images/Default_Avatar.jpeg', '74db36721611843c668e825a60fe0e79', '2004');
INSERT INTO `student_account_information` VALUES ('2020020092', 'e10adc3949ba59abbe56e057f20f883e', '米素晗', '2020020092', 'c25f38e20282f78b96cc32f3bb4b9a46', '2020020092@qq.com', 'user_images/Default_Avatar.jpeg', 'a9fbabde4bb03751bae2d3d7f926f90e', '2004');
INSERT INTO `student_account_information` VALUES ('2020020093', 'e10adc3949ba59abbe56e057f20f883e', '酆瑶梦', '2020020093', '8af09a4b1edd188bd48b9803edf6aa89', '2020020093@qq.com', 'user_images/Default_Avatar.jpeg', '37b77e954137e22363e1ffa240876b53', '2004');
INSERT INTO `student_account_information` VALUES ('2020020094', 'e10adc3949ba59abbe56e057f20f883e', '郝翰楠', '2020020094', '8fbaad793be14bb224dff1799d732b69', '2020020094@qq.com', 'user_images/Default_Avatar.jpeg', 'ff7ad885098ab71477025bbf31eaa712', '2004');
INSERT INTO `student_account_information` VALUES ('2020020095', 'e10adc3949ba59abbe56e057f20f883e', '邵珍萱', '2020020095', 'c4f0b2b82ba9cde7ab44a41524513aa2', '2020020095@qq.com', 'user_images/Default_Avatar.jpeg', 'ffc085d09f2f425354f15d2ac1bdc2b4', '2004');
INSERT INTO `student_account_information` VALUES ('2020020096', 'e10adc3949ba59abbe56e057f20f883e', '吴珊琬', '2020020096', 'bd742183c1c43077900aaab22f394c49', '2020020096@qq.com', 'user_images/Default_Avatar.jpeg', 'a9e990dde95871d84d62944d49ac1be9', '2004');
INSERT INTO `student_account_information` VALUES ('2020020097', 'e10adc3949ba59abbe56e057f20f883e', '贝莹瑶', '2020020097', '42a9ab97f78f2d280cf910fa30e40286', '2020020097@qq.com', 'user_images/Default_Avatar.jpeg', '72a54ca2d7cb9d1d6506c1c67dba2d85', '2004');
INSERT INTO `student_account_information` VALUES ('2020020098', 'e10adc3949ba59abbe56e057f20f883e', '胡纯露', '2020020098', 'a93dfc980f7e570ed0ad141bc4b59fff', '2020020098@qq.com', 'user_images/Default_Avatar.jpeg', 'cdff84ea964fc96a532088d032769a67', '2004');
INSERT INTO `student_account_information` VALUES ('2020020099', 'e10adc3949ba59abbe56e057f20f883e', '邵瑞', '2020020099', '08dcbeb7b1e3fee6bba94c7d69c44707', '2020020099@qq.com', 'user_images/Default_Avatar.jpeg', 'dba4773fe83340c7bcb8b8fd9ad794bc', '2004');
INSERT INTO `student_account_information` VALUES ('2020020100', 'e10adc3949ba59abbe56e057f20f883e', '林月谦', '2020020100', '5ae65bd97a84c41861c9ec49648fdcf4', '2020020100@qq.com', 'user_images/Default_Avatar.jpeg', '76c36aa69ec0ab8cf8b91c39746012bd', '2004');
INSERT INTO `student_account_information` VALUES ('2020020101', 'e10adc3949ba59abbe56e057f20f883e', '何育梦', '2020020101', '645e1755b3eb75f0c99b0a32fdfe73e1', '2020020101@qq.com', 'user_images/Default_Avatar.jpeg', '18d81aa16f64235796cd839fbe9bb365', '2004');
INSERT INTO `student_account_information` VALUES ('2020020102', 'e10adc3949ba59abbe56e057f20f883e', '费淑宜', '2020020102', '7057b4b9dc5578e977a040297c1f2cbf', '2020020102@qq.com', 'user_images/Default_Avatar.jpeg', 'ead468963450050913ff327dbd510c5a', '2004');
INSERT INTO `student_account_information` VALUES ('2020020103', 'e10adc3949ba59abbe56e057f20f883e', '谢雅晨', '2020020103', '0101790577da0306797e701f556afa94', '2020020103@qq.com', 'user_images/Default_Avatar.jpeg', '4eaaddee606d6228d3e12e7d6239c8f9', '2004');
INSERT INTO `student_account_information` VALUES ('2020020104', 'e10adc3949ba59abbe56e057f20f883e', '刁冠佳', '2020020104', 'af9fc792d18166b6709710c6068af754', '2020020104@qq.com', 'user_images/Default_Avatar.jpeg', '94be2a5987e2be790123894ee78c5f7f', '2004');
INSERT INTO `student_account_information` VALUES ('2020020105', 'e10adc3949ba59abbe56e057f20f883e', '昌佩嫣', '2020020105', 'aecf404d92601fe6b34132e201c7ec9a', '2020020105@qq.com', 'user_images/Default_Avatar.jpeg', 'b4ebd4082586e1ad0122da20ede0d611', '2004');
INSERT INTO `student_account_information` VALUES ('2020020106', 'e10adc3949ba59abbe56e057f20f883e', '梅珍卿', '2020020106', 'df5118bfea4c9f0e265fce6237b05125', '2020020106@qq.com', 'user_images/Default_Avatar.jpeg', 'cbc2f161c2d5651e7c180a426da9798b', '2004');
INSERT INTO `student_account_information` VALUES ('2020020107', 'e10adc3949ba59abbe56e057f20f883e', '岑言启', '2020020107', '161c12e5861444708ff7fb0169789235', '2020020107@qq.com', 'user_images/Default_Avatar.jpeg', '6d135b0ce088a02a82528255a40ee8e7', '2004');
INSERT INTO `student_account_information` VALUES ('2020020108', 'e10adc3949ba59abbe56e057f20f883e', '刁克文', '2020020108', '70ebceca61b8b6091c973ab80a036a34', '2020020108@qq.com', 'user_images/Default_Avatar.jpeg', '56762b751f267610bc1f0451c5afa51e', '2004');
INSERT INTO `student_account_information` VALUES ('2020020109', 'e10adc3949ba59abbe56e057f20f883e', '施漩伦', '2020020109', '36383ec1ab1a39ba26efa21f592ce609', '2020020109@qq.com', 'user_images/Default_Avatar.jpeg', 'a3da2d6c188b2be3cef54f4e50ed2fea', '2004');
INSERT INTO `student_account_information` VALUES ('2020020110', 'e10adc3949ba59abbe56e057f20f883e', '倪怡克', '2020020110', '06f5d4328a0843a068e94b74e879d806', '2020020110@qq.com', 'user_images/Default_Avatar.jpeg', 'ef971920e56af2bd641528e87672e442', '2004');
INSERT INTO `student_account_information` VALUES ('2020020111', 'e10adc3949ba59abbe56e057f20f883e', '贺一泓', '2020020111', 'fa07fc8e79d278d3ea4bb1c950fe6c35', '2020020111@qq.com', 'user_images/Default_Avatar.jpeg', '03a4dff1bf8d008910a9a470c4242beb', '2004');
INSERT INTO `student_account_information` VALUES ('2020020112', 'e10adc3949ba59abbe56e057f20f883e', '谢悦', '2020020112', '969c11a86fa75d3077b558da1dbe02b0', '2020020112@qq.com', 'user_images/Default_Avatar.jpeg', 'c2e2de928a879f251af26577bdac71e8', '2004');
INSERT INTO `student_account_information` VALUES ('2020020113', 'e10adc3949ba59abbe56e057f20f883e', '于晓元', '2020020113', '110596da61e44212272f1a3cf7ea8420', '2020020113@qq.com', 'user_images/Default_Avatar.jpeg', '168e29a1f81668b18d48f94b6f3d2b5f', '2004');
INSERT INTO `student_account_information` VALUES ('2020020114', 'e10adc3949ba59abbe56e057f20f883e', '喻漩函', '2020020114', 'e8903c40186ec1bf180dd3a7f9c2000d', '2020020114@qq.com', 'user_images/Default_Avatar.jpeg', 'dd92d02b7517665e1ced4442bce7254c', '2004');
INSERT INTO `student_account_information` VALUES ('2020020115', 'e10adc3949ba59abbe56e057f20f883e', '舒纨', '2020020115', '0d514da0de26806817c5619085417a9c', '2020020115@qq.com', 'user_images/Default_Avatar.jpeg', '4343ca2980e5dbe5bc470df9e650b6a7', '2004');
INSERT INTO `student_account_information` VALUES ('2020020116', 'e10adc3949ba59abbe56e057f20f883e', '明静', '2020020116', '6389c7e6c837ab82d32fb6ef34e4ec47', '2020020116@qq.com', 'user_images/Default_Avatar.jpeg', 'f4894be88bfdb398f6a581a9bc8a4d3e', '2004');
INSERT INTO `student_account_information` VALUES ('2020020117', 'e10adc3949ba59abbe56e057f20f883e', '计丽青', '2020020117', 'd3d22fd23327fc435ac694cc30384e5b', '2020020117@qq.com', 'user_images/Default_Avatar.jpeg', 'a2c2d7fde2b1b87737ddd8da25b6f4c4', '2004');
INSERT INTO `student_account_information` VALUES ('2020020118', 'e10adc3949ba59abbe56e057f20f883e', '明凡文', '2020020118', '7185e872639c458f3dc8ad35c97f6622', '2020020118@qq.com', 'user_images/Default_Avatar.jpeg', '522b92982f6ed42f9ee0ec678e465c9b', '2004');
INSERT INTO `student_account_information` VALUES ('2020020119', 'e10adc3949ba59abbe56e057f20f883e', '戴宜蓉', '2020020119', '4f52db52df6d9d8737400fd885a84e79', '2020020119@qq.com', 'user_images/Default_Avatar.jpeg', 'a923b2c21e0cbdafa37fa40494c7954b', '2004');
INSERT INTO `student_account_information` VALUES ('2020020120', 'e10adc3949ba59abbe56e057f20f883e', '戴清文', '2020020120', 'c47f386b899e98fa9b1515e1b76004fb', '2020020120@qq.com', 'user_images/Default_Avatar.jpeg', '3b67688247cf197422dba4a59b46a126', '2004');

-- ----------------------------
-- Table structure for teacher_information
-- ----------------------------
DROP TABLE IF EXISTS `teacher_information`;
CREATE TABLE `teacher_information`  (
  `ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工号',
  `md5_password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名字',
  `image_save` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '负责班级',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_information
-- ----------------------------
INSERT INTO `teacher_information` VALUES ('wy_2019060003', 'e10adc3949ba59abbe56e057f20f883e', '王毅', 'teacher_images/Default_Avatar.jpeg', '2002');
INSERT INTO `teacher_information` VALUES ('xdq_2019060004', 'e10adc3949ba59abbe56e057f20f883e', '谢大晴', 'teacher_images/Default_Avatar.jpeg', '2003');
INSERT INTO `teacher_information` VALUES ('zc_2019060001', '202cb962ac59075b964b07152d234b70', '张才', 'teacher_images/张才hyh_201906001.jpeg', '2004');
INSERT INTO `teacher_information` VALUES ('zmf_2019060002', 'e10adc3949ba59abbe56e057f20f883e', '赵美芳', 'teacher_images/Default_Avatar.jpeg', '2001');

SET FOREIGN_KEY_CHECKS = 1;
