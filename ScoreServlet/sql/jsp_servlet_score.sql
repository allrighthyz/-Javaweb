/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : jsp_servlet_score

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 03/07/2021 16:46:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `course_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  `course_credit` int(11) NOT NULL COMMENT '学分',
  `course_hours` int(11) NOT NULL COMMENT '学时',
  `course_teacher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任课教师',
  `coursedate` date NOT NULL COMMENT '开课时间',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'C++程序设计教程', 5, 60, '汪维清', '2017-03-02');
INSERT INTO `course` VALUES (2, 'java入门基础', 3, 60, '肖兴江', '2017-02-09');
INSERT INTO `course` VALUES (3, '计算机组成原理', 3, 60, '胡继宽', '2017-02-09');
INSERT INTO `course` VALUES (4, '信息检索', 2, 60, '郑蔚', '2017-02-09');
INSERT INTO `course` VALUES (5, '操作系统原理', 4, 60, '丁华峰', '2018-03-15');
INSERT INTO `course` VALUES (6, '管理信息系统', 4, 60, '杜治国', '2019-02-11');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_info` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色信息',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (0, '学生', '学生查看成绩');
INSERT INTO `role` VALUES (1, '教师', '教师操作');
INSERT INTO `role` VALUES (2, '管理员', '管理员操作');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩编号',
  `stu_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `stu_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `course_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目',
  `score_grade` double(11, 2) NOT NULL COMMENT '成绩',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, '170340', '张三', '计科1701', 'java入门基础', 96.50, '计算机');
INSERT INTO `score` VALUES (2, '170340', '张三', '计科1701', 'C++程序设计教程', 85.00, '计算机');
INSERT INTO `score` VALUES (3, '160341', '王五', '信管1601', 'java入门基础', 62.60, '信息管理与信息系统');
INSERT INTO `score` VALUES (4, '160341', '王五', '信管1601', 'C++程序设计教程', 85.00, '信息管理与信息系统');
INSERT INTO `score` VALUES (5, '170340', '张三', '计科1701', '计算机组成原理', 69.00, '计算机');
INSERT INTO `score` VALUES (6, '170340', '张三', '计科1701', '信息检索', 95.00, '计算机');
INSERT INTO `score` VALUES (7, '170340', '张三', '计科1701', '操作系统原理', 89.00, '计算机');
INSERT INTO `score` VALUES (8, '160341', '王五', '计科1701', 'C++程序设计教程', 95.00, '计算机');
INSERT INTO `score` VALUES (9, '160341', '王五', '信管1601', 'java入门基础', 92.00, '信息管理与信息系统');
INSERT INTO `score` VALUES (10, '160341', '王五', '信管1601', '计算机组成原理', 83.00, '信息管理与信息系统');
INSERT INTO `score` VALUES (11, '170339', '李四', '计科1701', 'java入门基础', 78.20, '计算机');
INSERT INTO `score` VALUES (12, '170339', '李四', '计科1701', '信息检索', 98.00, '计算机');
INSERT INTO `score` VALUES (13, '170339', '李四', '计科1701', '计算机组成原理', 76.00, '计算机');
INSERT INTO `score` VALUES (14, '170339', '李四', '计科1701', '操作系统原理', 69.80, '计算机');
INSERT INTO `score` VALUES (15, '170339', '李四', '计科1701', 'C++程序设计教程', 89.00, '计算机');
INSERT INTO `score` VALUES (16, '170343', '陈留', '计科1701', 'java入门基础', 80.50, '计算机');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stu_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `stu_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `stu_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `stu_age` int(11) NOT NULL COMMENT '年龄',
  `stu_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '院系',
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '160341', '王五', '女', 21, '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (2, '170340', '张三', '男', 20, '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES (3, '170339', '李四', '男', 20, '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES (4, '170343', '陈留', '男', 40, '计科1701', '计算机', '商贸学院');
INSERT INTO `student` VALUES (5, '160342', '盛祎琛', '女', 19, '信管1602', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (6, '160343', '闫玉平', '女', 20, '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (7, '160344', '陈淑婷', '女', 20, '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (8, '160345', '周梦琪', '女', 20, '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (9, '160346', '曾智', '女', 20, '信管1601', '信息管理与信息系统', '商贸学院');
INSERT INTO `student` VALUES (11, '160348', '多罗罗', '男', 25, '信管1601', '信息管理与信息系统', '商贸学院');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tea_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `tea_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `tea_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `tea_age` int(11) NOT NULL COMMENT '年龄',
  `tea_course` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所任课程',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '院系',
  PRIMARY KEY (`tea_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '1123', '肖兴江', '男', 30, 'java入门基础', '计算机', '商贸学院');
INSERT INTO `teacher` VALUES (2, '1124', '汪维清', '男', 25, 'C++程序设计教程', '计算机', '商贸学院');
INSERT INTO `teacher` VALUES (3, '1125', '胡继宽', '男', 32, '计算机组成原理', '信息管理与信息系统', '商贸学院');
INSERT INTO `teacher` VALUES (4, '1126', '郑蔚', '女', 34, '信息检索', '信息管理与信息系统', '商贸学院');
INSERT INTO `teacher` VALUES (5, '1127', '丁华峰', '男', 40, '操作系统原理', '计算机', '商贸学院');
INSERT INTO `teacher` VALUES (6, '1128', '杜治国', '男', 35, '管理信息系统', '信息管理与信息系统', '商贸学院');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户电话',
  `role_id` int(11) NOT NULL COMMENT '角色编号（外键）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '160341', '王五', '123456', '14829726746', 0);
INSERT INTO `user` VALUES (2, '170340', '张三', '123456', '15869483651', 0);
INSERT INTO `user` VALUES (3, '170339', '李四', '123456', '13589462584', 0);
INSERT INTO `user` VALUES (6, '1123', '肖兴江', '123456', '17418953551', 1);
INSERT INTO `user` VALUES (7, '1124', '汪维清', '123456', '15897683584', 1);
INSERT INTO `user` VALUES (9, '1125', '胡继宽', '123456', '12378945862', 1);
INSERT INTO `user` VALUES (10, '1126', '郑蔚', '123456', '13589462584', 1);
INSERT INTO `user` VALUES (11, '1001', '管理员', 'admin', '18179586325', 2);
INSERT INTO `user` VALUES (12, '1127', '丁华峰', '123456', '16123598785', 1);
INSERT INTO `user` VALUES (13, '1128', '杜治国', '123456', '13158794456', 1);
INSERT INTO `user` VALUES (14, '160344', '陈淑婷', '123456', '14829726746', 0);
INSERT INTO `user` VALUES (15, '160345', '周梦琪', '123456', '14829726746', 0);

-- ----------------------------
-- Triggers structure for table student
-- ----------------------------
DROP TRIGGER IF EXISTS `stuLogin`;
delimiter ;;
CREATE TRIGGER `stuLogin` AFTER DELETE ON `student` FOR EACH ROW begin 
delete from user where user_num=old.stu_num;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table teacher
-- ----------------------------
DROP TRIGGER IF EXISTS `teaLogin`;
delimiter ;;
CREATE TRIGGER `teaLogin` AFTER DELETE ON `teacher` FOR EACH ROW begin
delete from user where user_num=old.tea_num;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
