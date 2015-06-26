/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : db_ckk

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-06-16 15:49:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bd_dict
-- ----------------------------
DROP TABLE IF EXISTS `bd_dict`;
CREATE TABLE `bd_dict` (
  `PK_DICT` int(11) NOT NULL AUTO_INCREMENT,
  `DICTCODE` varchar(20) DEFAULT NULL,
  `DICTTITLE` varchar(20) DEFAULT NULL,
  `DICTTYPE` varchar(20) DEFAULT NULL,
  `ISVALID` varchar(10) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `TEMP` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PK_DICT`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_dict
-- ----------------------------
INSERT INTO `bd_dict` VALUES ('52', 'LOGTYPE', '日志分类', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('55', 'CUSTOMER', '客户', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('56', 'ORDERSTATUS', '状态', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('60', 'OrderType', '工单类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('61', 'Projecttype', '项目类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('62', 'SourceOrder', '工单来源', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('63', 'WorkOrderStatus', '工单状态', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('64', 'Order', '订单', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('65', 'CusinfoSource', '客户信息来源', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('66', 'Sampletemplate', '小样样板', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('67', 'Onsiteservice', '现场服务', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('68', 'Complainthandling', '投诉处理', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('69', 'GenerateMode', '生成类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('70', 'AgentType', '坐席类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('71', 'UserStatus', '用户状态', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('72', 'AuthorizeType', '授权方式', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('73', 'CustType1', '客户分类一', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('74', 'Distribute', '经销', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('75', 'DirectMark', '直销', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('76', 'CustType3', '客户分类三', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('77', 'SynStatus', '同步状态', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('78', 'CallCreateType', '创建类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('79', 'AgentStatus', '当前状态', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('80', 'ISLost', '是否呼损', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('81', 'Compare', '比较符号', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('82', 'CustType2', '客户分类二', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('83', 'QT', '其他', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('84', 'WorkingCalendar', '工作日历', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('85', 'RTime_day', '报表时间-日', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('86', 'CallType', '呼叫类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('87', 'CallDirection', '呼叫方向', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('88', 'Gender', '性别', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('93', '0101', '121购购订单处理', 'OnDuty', 'Y', 'nick:13466502772', '13466502772');
INSERT INTO `bd_dict` VALUES ('94', '0102', '产品咨询', 'OnDuty', 'Y', 'hebe:15811003291 nick:13466502772', '15811003291 13466502772');
INSERT INTO `bd_dict` VALUES ('95', '0103', '大宗采购', 'OnDuty', 'Y', '高潇涵:18612940053', '18612940053');
INSERT INTO `bd_dict` VALUES ('96', '0105', '售后服务', 'OnDuty', 'Y', 'Blair:18310975776', '18310975776');
INSERT INTO `bd_dict` VALUES ('97', '0104', '渠道合作', 'OnDuty', 'Y', '高潇涵:18612940053', '18612940053');
INSERT INTO `bd_dict` VALUES ('98', '0106', '广告合作', 'OnDuty', 'Y', 'Blair:18310975776', '18310975776');
INSERT INTO `bd_dict` VALUES ('99', '0107', '投诉与建议', 'OnDuty', 'Y', 'Blair:18310975776', '18310975776');
INSERT INTO `bd_dict` VALUES ('100', 'StaCode', '满意度', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('102', '1111', '测试', 'OnDuty', 'Y', '', '');
INSERT INTO `bd_dict` VALUES ('103', 'SYS_BUTTON', '系统参数-按钮分类', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('104', 'IPCC_CALLTYPE', 'IPCC-呼叫类型', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('105', 'IPCC_CALLDIRECTION', 'IPCC-呼叫方向', null, 'Y', null, null);
INSERT INTO `bd_dict` VALUES ('106', 'Order_his', '历史工单', null, 'Y', null, null);

-- ----------------------------
-- Table structure for bd_dictdetail
-- ----------------------------
DROP TABLE IF EXISTS `bd_dictdetail`;
CREATE TABLE `bd_dictdetail` (
  `PK_DICTDETAIL` int(11) NOT NULL AUTO_INCREMENT,
  `PK_DICT` int(11) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `ISVALID` varchar(2) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `DEFAULTORDER` int(11) DEFAULT NULL,
  PRIMARY KEY (`PK_DICTDETAIL`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_dictdetail
-- ----------------------------
INSERT INTO `bd_dictdetail` VALUES ('3', '48', 'REGUSERS', '用户数', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('9', '52', 'LOGTYPE-SC', '删除', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('10', '52', 'LOGTYPE-XZ', '新增', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('11', '52', 'LOGTYPE-DC', '登出', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('14', '55', 'Liveneo', '朗泰恒盛', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('16', '56', '未审核', '未审核', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('21', '60', 'O_Sampledepend', '咨询', null, 'Y', 'Sampletemplate', '1');
INSERT INTO `bd_dictdetail` VALUES ('22', '60', 'O_Amodeldepend', '渠道', null, 'Y', 'Sampletemplate', '2');
INSERT INTO `bd_dictdetail` VALUES ('23', '60', 'O_SampleReq', '采购', null, 'Y', 'Sampletemplate', '3');
INSERT INTO `bd_dictdetail` VALUES ('24', '60', 'O_OrderDelivery', '投诉', null, 'Y', 'Order', '4');
INSERT INTO `bd_dictdetail` VALUES ('25', '60', 'O_Onsiteservice', '售后', null, 'Y', 'Onsiteservice', '5');
INSERT INTO `bd_dictdetail` VALUES ('26', '60', 'O_Complainthand', '退换货', null, 'Y', 'Complainthandling', '6');
INSERT INTO `bd_dictdetail` VALUES ('27', '60', 'O_ReturnReq', '其他', null, 'Y', 'Complainthandling', '7');
INSERT INTO `bd_dictdetail` VALUES ('28', '61', 'Order', '订单', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('29', '61', 'Sampletemplate', '小样样板', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('30', '61', 'Onsiteservice', '现场服务', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('31', '61', 'Complainthandling', '投诉处理', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('32', '62', 'customer', '客户', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('33', '62', 'sell', '销售', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('34', '63', 'wcl', '未处理', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('35', '63', 'dhxcl', '待后续处理', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('36', '63', 'ywc', '已完成', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('37', '63', 'yjd', '已结单', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('38', '64', 'ylsycyc', '依赖书延迟异常', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('39', '64', 'wlwhycyc', '物料维护延迟异常', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('40', '64', 'ddycyc', '订单延迟异常 ', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('41', '64', 'wljhyc', '物流交货异常', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('42', '64', 'ddjdyc', '订单进度的查询', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('43', '65', 'byhand', '手工创建', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('44', '65', 'datesyn', '资料同步', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('45', '66', 'S_delayExc', '小样、样板延迟异常', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('46', '66', 'S_repeatExc', '小样、样板重复异常', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('47', '66', 'S_majorMeet', '重大项目的满足', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('48', '66', 'S_progressQuery', '进度的查询', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('49', '67', 'On_serviceDispatch', '服务人员对重大项目和特大项目的调配（调动大区、战略客户、应用管理部的全国资源）', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('50', '67', 'On_sampleDispatch', '对重大项目和特大项目的样漆/样板/现场试刷/样板楼的人员分配 ', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('51', '67', 'On_specialDisplay', '对特殊效果和产品的调样，样板的工厂间分配', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('52', '68', 'C_ComplaintsExc', '投诉退货、换货异常', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('53', '68', 'C_compensateExc', '样品赔偿异常', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('54', '68', 'C_produceExc', '换货生产异常', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('55', '68', 'C_cchedule', '进度查询', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('56', '69', 'callin', '呼入', '', 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('57', '69', 'manual', '手工', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('58', '70', 'OAgent', '普通坐席', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('59', '70', 'LAgent', '班长席', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('60', '71', 'Y', '可用', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('61', '71', 'N', '不可用', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('62', '72', 'Batch', '批量授权', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('63', '72', 'Single', '单机授权', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('64', '73', 'Distribute', '经销', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('65', '73', 'DirectMark', '直销', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('66', '74', 'A', 'A', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('67', '74', 'AA', 'AA', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('68', '74', 'AAA', 'AAA', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('69', '75', 'Ocust', '普通客户', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('70', '75', 'Lcust', '大客户', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('71', '75', 'VIPcust', 'VIP客户', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('72', '76', 'EastChina', '华东', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('73', '76', 'NorthChina', '华北', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('74', '76', 'SouthChina', '华南', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('75', '76', 'Northeast', '东北', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('76', '76', 'Luyu', '鲁豫', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('77', '76', 'WestReason', '西部', null, 'Y', '', '6');
INSERT INTO `bd_dictdetail` VALUES ('78', '77', 'Nsyn', '未同步', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('79', '77', 'Ysyn', '已同步', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('80', '78', 'Ivr', 'IVR', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('81', '78', 'Callin', '坐席呼入', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('82', '78', 'Callout', '坐席呼出', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('83', '78', 'LeaveMsg', '留言', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('84', '78', 'Qt', '其他', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('85', '79', 'login', '登录中', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('86', '79', 'logout', '未登录', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('87', '80', 'Y', '是', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('88', '80', 'N', '否', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('89', '81', '=', '=', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('90', '81', '>', '>', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('91', '81', '>=', '>=', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('92', '81', '<', '<', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('93', '81', '<=', '<=', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('94', '82', 'A', 'A', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('95', '82', 'AA', 'AA', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('96', '82', 'AAA', 'AAA', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('97', '82', 'Ocust', '普通客户', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('98', '82', 'Lcust', '大客户', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('99', '82', 'VIPcust', 'VIP客户', null, 'Y', '', '6');
INSERT INTO `bd_dictdetail` VALUES ('101', '84', 'Y', '是', null, 'Y', '节假日', '1');
INSERT INTO `bd_dictdetail` VALUES ('102', '84', 'N', '否', null, 'Y', '工作日', '2');
INSERT INTO `bd_dictdetail` VALUES ('104', '85', '09:00', '09:00', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('105', '85', '10:00', '10:00', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('106', '85', '11:00', '10:00', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('107', '85', '12:00', '12:00', null, 'Y', '', '4');
INSERT INTO `bd_dictdetail` VALUES ('108', '85', '13:00', '13:00', null, 'Y', '', '5');
INSERT INTO `bd_dictdetail` VALUES ('109', '85', '14:00', '14:00', null, 'Y', '', '6');
INSERT INTO `bd_dictdetail` VALUES ('110', '85', '15:00', '15:00', null, 'Y', '', '7');
INSERT INTO `bd_dictdetail` VALUES ('111', '85', '16:00', '16:00', null, 'Y', '', '8');
INSERT INTO `bd_dictdetail` VALUES ('112', '85', '17:00', '17:00', null, 'Y', '', '9');
INSERT INTO `bd_dictdetail` VALUES ('113', '85', '18:00', '18:00', null, 'Y', '', '10');
INSERT INTO `bd_dictdetail` VALUES ('114', '86', '1', '外部呼叫', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('115', '86', '2', '内部呼叫', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('116', '87', '1', '呼入', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('117', '87', '2', '呼出', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('118', '88', 'Male', '男', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('119', '88', 'Female', '女', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('134', '93', '13466502772', 'nick', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('135', '94', '13466502772', 'nick', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('136', '98', '18310975776', 'Blair', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('137', '99', '18310975776', 'Blair', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('138', '95', '18612940053', '高潇涵', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('139', '96', '18310975776', 'Blair', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('140', '97', '18612940053', '高潇涵', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('141', '100', '1', '满意', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('142', '100', '2', '一般', null, 'Y', '满意:1', '2');
INSERT INTO `bd_dictdetail` VALUES ('143', '100', '3', '不满意', null, 'Y', '一般:2 满意:1', '3');
INSERT INTO `bd_dictdetail` VALUES ('152', '94', '15811003291', 'hebe', null, 'Y', 'nick:13466502772', '2');
INSERT INTO `bd_dictdetail` VALUES ('153', '103', '0', '新增', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('154', '103', '1', '删除', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('155', '103', '2', '修改', null, 'Y', '', '2');
INSERT INTO `bd_dictdetail` VALUES ('156', '103', '3', 'Excel导出', null, 'Y', '', '3');
INSERT INTO `bd_dictdetail` VALUES ('157', '104', '1', '外部呼叫', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('158', '104', '2', '内部呼叫', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('159', '105', '1', '呼入', null, 'Y', '', '0');
INSERT INTO `bd_dictdetail` VALUES ('160', '105', '2', '呼出', null, 'Y', '', '1');
INSERT INTO `bd_dictdetail` VALUES ('161', '106', 'his_limit', '时间范围', '7', 'Y', '前N天的历史工单信息', '0');
INSERT INTO `bd_dictdetail` VALUES ('162', '69', 'callout', '外呼', '', 'Y', '', '3');

-- ----------------------------
-- Table structure for bd_jobmsg
-- ----------------------------
DROP TABLE IF EXISTS `bd_jobmsg`;
CREATE TABLE `bd_jobmsg` (
  `Job_id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_name` varchar(100) DEFAULT NULL,
  `CronExpression` varchar(32) DEFAULT NULL,
  `Job_state` varchar(4) DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Last_modify_time` datetime DEFAULT NULL,
  `Create_oper` varchar(32) DEFAULT NULL,
  `Job_year` varchar(4) DEFAULT NULL,
  `Job_month` varchar(4) DEFAULT NULL,
  `Job_day` varchar(4) DEFAULT NULL,
  `Job_week` varchar(4) DEFAULT NULL,
  `Job_hour` varchar(4) DEFAULT NULL,
  `Job_minute` varchar(4) DEFAULT NULL,
  `Job_second` varchar(4) DEFAULT NULL,
  `Job_beanName` varchar(50) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`Job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_jobmsg
-- ----------------------------
INSERT INTO `bd_jobmsg` VALUES ('1', '同步客户资料', '0 01 10 * * ? *', 'N', null, '2013-07-22 10:53:40', null, '*', '*', '*', '?', '10', '01', '0', 'synCustomerTrigger', '');
INSERT INTO `bd_jobmsg` VALUES ('4', '同步IPCC报表数据-日报', '0 09 12 * * ? *', 'N', '2013-05-08 15:49:08', '2013-05-24 10:43:23', null, '*', '*', '*', '?', '12', '09', '0', 'synReportFormsTriggerDay', '');
INSERT INTO `bd_jobmsg` VALUES ('5', '同步坐席及技能组信息', '0 25 13 * * ? *', 'N', '2013-05-13 10:24:11', '2013-05-28 16:36:43', null, '*', '*', '*', '?', '13', '25', '0', 'synReportFormsDetailTrigger', '');
INSERT INTO `bd_jobmsg` VALUES ('6', '同步IPCC报表数据-月报', '0 30 11 * * ? *', 'N', '2013-05-23 11:01:29', null, null, '*', '*', '*', '?', '11', '30', '0', 'synReportFormsTriggerMonth', '');
INSERT INTO `bd_jobmsg` VALUES ('7', '同步IPCC报表数据-年报', '0 04 11 * * ? *', 'N', '2013-05-23 11:02:44', null, null, '*', '*', '*', '?', '11', '04', '0', 'synReportFormsTriggerYear', '');
INSERT INTO `bd_jobmsg` VALUES ('8', '同步IPCC报表数据', '0/5 * * * * ? *', 'N', null, '2014-08-15 12:16:39', null, '*', '*', '*', '?', '*', '*', '0/5', 'synIpccReportTaskTrigger', '');

-- ----------------------------
-- Table structure for bd_role
-- ----------------------------
DROP TABLE IF EXISTS `bd_role`;
CREATE TABLE `bd_role` (
  `pk_role` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_role`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_role
-- ----------------------------
INSERT INTO `bd_role` VALUES ('49', '测试', '');

-- ----------------------------
-- Table structure for bd_rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `bd_rolemenu`;
CREATE TABLE `bd_rolemenu` (
  `pk_rolemenu` int(11) NOT NULL AUTO_INCREMENT,
  `pk_role` int(11) NOT NULL,
  `pk_menu` int(11) NOT NULL,
  `permissions` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pk_rolemenu`),
  KEY `FK_RM_ROLE` (`pk_role`) USING BTREE,
  KEY `FK_RM_MENU` (`pk_menu`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_rolemenu
-- ----------------------------
INSERT INTO `bd_rolemenu` VALUES ('349', '49', '25', null);
INSERT INTO `bd_rolemenu` VALUES ('350', '49', '23', null);
INSERT INTO `bd_rolemenu` VALUES ('351', '49', '24', null);
INSERT INTO `bd_rolemenu` VALUES ('352', '49', '30', null);
INSERT INTO `bd_rolemenu` VALUES ('353', '49', '26', null);

-- ----------------------------
-- Table structure for bd_userinforole
-- ----------------------------
DROP TABLE IF EXISTS `bd_userinforole`;
CREATE TABLE `bd_userinforole` (
  `PK_USERINFOROLE` int(11) NOT NULL AUTO_INCREMENT,
  `pk_userinfo` int(11) NOT NULL,
  `pk_role` int(11) NOT NULL,
  PRIMARY KEY (`PK_USERINFOROLE`),
  KEY `FK_UR_USER` (`pk_userinfo`) USING BTREE,
  KEY `FK_UR_ROLE` (`pk_role`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bd_userinforole
-- ----------------------------
INSERT INTO `bd_userinforole` VALUES ('42', '30', '49');

-- ----------------------------
-- Table structure for calldetail
-- ----------------------------
DROP TABLE IF EXISTS `calldetail`;
CREATE TABLE `calldetail` (
  `PK_CALLDETAIL` varchar(50) NOT NULL,
  `CALLDETAILID` varchar(50) NOT NULL,
  `CALLINTIME` varchar(50) DEFAULT NULL,
  `ANI` varchar(50) DEFAULT NULL,
  `ANIAREA` varchar(50) DEFAULT NULL,
  `ANICITY` varchar(50) DEFAULT NULL,
  `BUSITYPE` varchar(50) DEFAULT NULL,
  `SVRRESULT` varchar(50) DEFAULT NULL,
  `LEAVETIME` varchar(50) DEFAULT NULL,
  `UCID` varchar(50) DEFAULT NULL,
  `CREATETYPE` varchar(50) DEFAULT NULL,
  `ISLOST` varchar(50) DEFAULT NULL,
  `AGENTID` varchar(50) DEFAULT NULL,
  `N1` varchar(50) DEFAULT NULL,
  `N2` varchar(50) DEFAULT NULL,
  `N3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PK_CALLDETAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calldetail
-- ----------------------------

-- ----------------------------
-- Table structure for cusphonelist
-- ----------------------------
DROP TABLE IF EXISTS `cusphonelist`;
CREATE TABLE `cusphonelist` (
  `PK_CUSPHONELIST` int(11) NOT NULL AUTO_INCREMENT,
  `PK_CUSTOMERINFO` int(11) NOT NULL,
  `CUSTLINKNAME` varchar(100) DEFAULT NULL,
  `PHONENO` varchar(30) DEFAULT NULL,
  `SYNSTATUS` varchar(10) DEFAULT NULL,
  `UPDATETIME` datetime NOT NULL,
  `NOLEVEL` varchar(10) DEFAULT NULL,
  `REMARK` text,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text,
  PRIMARY KEY (`PK_CUSPHONELIST`),
  KEY `FK_CUSTOMERINFO` (`PK_CUSTOMERINFO`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cusphonelist
-- ----------------------------
INSERT INTO `cusphonelist` VALUES ('280', '306', '刘宁1', '18201697259', null, '2015-05-14 10:04:36', null, null, null, null, null, null);
INSERT INTO `cusphonelist` VALUES ('279', '305', '刘宁', '1234', null, '2015-05-14 10:03:57', null, null, null, null, null, null);
INSERT INTO `cusphonelist` VALUES ('278', '305', '刘宁', '18201697259', null, '2015-05-14 10:03:57', null, null, null, null, null, null);
INSERT INTO `cusphonelist` VALUES ('281', '306', '刘宁1', '11111', null, '2015-05-14 10:04:36', null, null, null, null, null, null);
INSERT INTO `cusphonelist` VALUES ('282', '308', '7771', '222', null, '2015-05-14 10:12:11', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for customerinfo
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `PK_CUSTOMERINFO` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMERNO` varchar(30) DEFAULT NULL,
  `CUSTOMERNAME` varchar(100) DEFAULT NULL,
  `CUSTLINKMAN` varchar(100) DEFAULT NULL,
  `CUSTPHONENO` text,
  `POSTCODE` varchar(10) DEFAULT NULL,
  `EMAILADDR` varchar(100) DEFAULT NULL,
  `NETHERLANDS` varchar(50) DEFAULT NULL,
  `CUSTTYPE` varchar(10) DEFAULT NULL,
  `CUSTLEVEL` varchar(10) DEFAULT NULL,
  `CUSTSTATUS` varchar(10) DEFAULT NULL,
  `PROVINCE` varchar(20) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `CUSTADDR` varchar(200) DEFAULT NULL,
  `INFOSOURCE` varchar(10) DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `REMARK` text,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text,
  `TEMP5` text,
  `TEMP6` text,
  `TEMP7` text,
  `TEMP8` text,
  `SALESORG` varchar(20) DEFAULT NULL,
  `SALESOFFICE` varchar(200) DEFAULT NULL,
  `SALESGROUP` varchar(20) DEFAULT NULL,
  `SALESNAME` varchar(20) DEFAULT NULL,
  `CUSTAREA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PK_CUSTOMERINFO`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerinfo
-- ----------------------------
INSERT INTO `customerinfo` VALUES ('305', null, '朗泰恒盛', '刘宁', '18201697259', null, '', '北京', null, null, null, null, null, '牡丹园', 'byhand', '2015-05-14 10:03:57', '', '834799831', 'Male', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customerinfo` VALUES ('306', null, '朗泰恒盛1', '刘宁1', '18201697259', null, '', '北京', null, null, null, null, null, '牡丹园', 'byhand', '2015-05-14 10:04:36', null, '834799831', 'Male', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customerinfo` VALUES ('307', null, '带头大哥', '777', '', null, '', '', null, null, null, null, null, '', 'byhand', '2015-05-14 10:07:27', '', '', 'Male', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customerinfo` VALUES ('308', null, '带头大哥1', '7771', '222', null, '', '', null, null, null, null, null, '', null, '2015-05-14 10:12:11', null, '', 'Male', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `PK_DEPARTMENT` int(11) NOT NULL,
  `SPK_DEPARTMENT` int(11) DEFAULT NULL,
  `DEPNAME` varchar(50) DEFAULT NULL,
  `REMARK` text,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for ivrvoice
-- ----------------------------
DROP TABLE IF EXISTS `ivrvoice`;
CREATE TABLE `ivrvoice` (
  `PK_IVRVOICE` int(11) NOT NULL,
  `LEAVEWORDNUM` varchar(50) DEFAULT NULL,
  `SERVERIP` varchar(50) DEFAULT NULL,
  `CALLERID` varchar(50) DEFAULT NULL,
  `STARTTIME` varchar(24) DEFAULT NULL,
  `ENDTIME` varchar(24) DEFAULT NULL,
  `STARTDATE` varchar(24) DEFAULT NULL,
  `ENDDATE` varchar(24) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `ISNOTICE` varchar(1) DEFAULT NULL,
  `ISCHECK` varchar(1) DEFAULT NULL,
  `DNIS` varchar(24) DEFAULT NULL,
  `CREATE_DATE` varchar(24) DEFAULT NULL,
  `PROCESSRESULT` varchar(255) DEFAULT NULL,
  `UCID` varchar(100) DEFAULT NULL,
  `VDUID` varchar(100) DEFAULT NULL,
  `N1` varchar(100) DEFAULT NULL,
  `N2` varchar(100) DEFAULT NULL,
  `N3` varchar(100) DEFAULT NULL,
  `FULLSTARTDATE` varchar(24) DEFAULT NULL,
  `FULLENDDATE` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`PK_IVRVOICE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ivrvoice
-- ----------------------------

-- ----------------------------
-- Table structure for logmsg
-- ----------------------------
DROP TABLE IF EXISTS `logmsg`;
CREATE TABLE `logmsg` (
  `pk_logmsg` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `logtype` varchar(30) DEFAULT NULL,
  `logcontent` text,
  `entityname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pk_logmsg`)
) ENGINE=MyISAM AUTO_INCREMENT=10433 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logmsg
-- ----------------------------
INSERT INTO `logmsg` VALUES ('9648', 'admin', '2014-11-28 11:29:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9649', 'admin', '2014-11-28 11:31:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@783e908b[Id=274]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9650', 'admin', '2014-11-28 11:31:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@109cdcde[Id=275]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9651', 'admin', '2014-11-28 11:31:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@1a7edc7[Id=276]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9652', 'admin', '2014-11-28 11:31:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@33fa5153[Id=277]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9653', 'admin', '2014-11-28 11:31:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9654', 'admin', '2014-11-28 11:32:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@5708d1ff[Id=278]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9655', 'admin', '2014-11-28 11:32:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@7d0e672a[Id=279]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9656', 'admin', '2014-11-28 11:32:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@6b02cf47[Id=280]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9657', 'admin', '2014-11-28 11:32:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@70d2bad7[Id=281]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9658', 'admin', '2014-11-28 11:32:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9659', 'admin', '2014-11-28 11:35:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9660', 'admin', '2014-11-28 11:35:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：46', 'BdRole');
INSERT INTO `logmsg` VALUES ('9661', 'admin', '2014-11-28 11:39:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9662', 'admin', '2014-11-28 11:43:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9663', 'admin', '2014-11-28 11:44:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9664', 'admin', '2014-11-28 11:44:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Userinfo@2065e574[Id=30,Username=report,Userpwd=mZaWmG==,Isadmin=false,Remark=,Factory=,Agentno=3002,Ctipwd=3002,Extno=3002,Agentname=报表,Agentemail=,Phoneno=,Agentstatus=false,Lastlogintime=<null>,Agenttype=,Position=,Userstatus=Y,Delflag=N,Ctiaddr=,Ctiaddrbak=,Authaddr=,Authtype=Batch,Temp1=,Temp2=,Temp3=<null>,Temp4=<null>,Temp5=<null>]', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9665', 'report', '2014-11-28 11:45:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9666', 'admin', '2014-11-28 11:45:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9667', 'report', '2014-11-28 11:47:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9668', 'admin', '2014-11-28 11:47:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9669', 'report', '2014-11-28 11:47:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9670', 'admin', '2014-11-28 11:48:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9671', 'report', '2014-11-28 11:58:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9672', 'report', '2014-11-28 11:58:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9673', 'report', '2014-11-28 11:59:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9674', 'report', '2014-11-28 11:59:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9675', 'report', '2014-11-28 11:59:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9676', 'report', '2014-11-28 12:00:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9677', 'report', '2014-11-28 12:00:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9678', 'report', '2014-11-28 12:00:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9679', 'report', '2014-11-28 12:00:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9680', 'report', '2014-11-28 12:01:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9681', 'report', '2014-11-28 12:01:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9682', 'report', '2014-11-28 12:01:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9683', 'report', '2014-11-28 12:01:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9684', 'report', '2014-11-28 12:02:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9685', 'admin', '2014-11-28 13:17:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9686', 'report', '2014-11-28 13:17:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9687', 'report', '2014-11-28 13:17:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9688', 'report', '2014-11-28 13:18:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9689', 'report', '2014-11-28 13:18:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9690', 'report', '2014-11-28 13:19:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9691', 'report', '2014-11-28 13:19:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9692', 'report', '2014-11-28 13:19:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9693', 'report', '2014-11-28 13:19:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9694', 'report', '2014-11-28 13:19:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9695', 'report', '2014-11-28 13:19:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9696', 'report', '2014-11-28 13:20:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9697', 'report', '2014-11-28 13:21:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9698', 'report', '2014-11-28 13:22:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9699', 'report', '2014-11-28 13:22:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9700', 'report', '2014-11-28 13:22:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9701', 'report', '2014-11-28 13:22:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9702', 'report', '2014-11-28 13:23:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9703', 'report', '2014-11-28 13:23:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9704', 'report', '2014-11-28 13:23:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9705', 'report', '2014-11-28 13:24:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9706', 'report', '2014-11-28 13:24:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9707', 'report', '2014-11-28 13:24:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9708', 'report', '2014-11-28 13:24:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9709', 'report', '2014-11-28 13:24:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9710', 'report', '2014-11-28 13:24:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9711', 'report', '2014-11-28 13:25:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9712', 'report', '2014-11-28 13:25:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9713', 'report', '2014-11-28 13:25:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9714', 'report', '2014-11-28 13:25:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9715', 'report', '2014-11-28 13:25:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9716', 'report', '2014-11-28 13:25:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9717', 'report', '2014-11-28 13:25:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9718', 'report', '2014-11-28 13:25:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9719', 'report', '2014-11-28 13:31:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9720', 'admin', '2014-11-28 13:33:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9721', 'report', '2014-11-28 13:34:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9722', 'report', '2014-11-28 13:34:09', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9723', 'report', '2014-11-28 13:34:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9724', 'report', '2014-11-28 13:34:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9725', 'report', '2014-11-28 13:34:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9726', 'report', '2014-11-28 13:34:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9727', 'report', '2014-11-28 13:34:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9728', 'report', '2014-11-28 13:34:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9729', 'report', '2014-11-28 13:34:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9730', 'report', '2014-11-28 13:34:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9731', 'report', '2014-11-28 13:34:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9732', 'report', '2014-11-28 13:34:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9733', 'admin', '2014-11-28 13:36:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9734', 'admin', '2014-11-28 13:37:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9735', 'report', '2014-11-28 13:37:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9736', 'report', '2014-11-28 13:38:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9737', 'report', '2014-11-28 13:38:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9738', 'report', '2014-11-28 13:39:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9739', 'report', '2014-11-28 13:40:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9740', 'report', '2014-11-28 13:42:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9741', 'admin', '2014-11-28 13:49:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9742', 'admin', '2014-12-11 16:29:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9743', 'admin', '2014-12-25 10:01:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9744', 'admin', '2014-12-25 17:06:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9745', 'admin', '2015-01-18 13:30:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9746', 'admin', '2015-01-21 16:25:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9747', 'admin', '2015-01-21 16:25:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9748', 'admin', '2015-01-21 16:26:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9749', 'admin', '2015-01-21 16:31:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9750', '3002', '2015-01-21 16:31:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9751', 'admin', '2015-01-21 16:34:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9752', 'admin', '2015-01-21 16:34:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9753', 'admin', '2015-01-21 16:35:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9754', 'admin', '2015-01-21 16:35:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9755', 'admin', '2015-01-21 16:36:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9756', 'admin', '2015-01-21 16:36:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9757', 'admin', '2015-01-21 16:37:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9758', 'admin', '2015-01-21 16:37:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9759', 'admin', '2015-01-21 16:37:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9760', 'admin', '2015-01-21 16:37:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9761', 'admin', '2015-01-21 16:37:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9762', 'admin', '2015-01-21 16:37:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9763', 'admin', '2015-01-21 16:39:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9764', 'admin', '2015-01-21 16:40:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9765', 'admin', '2015-01-21 16:41:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9766', 'admin', '2015-01-21 16:42:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9767', 'admin', '2015-01-21 16:42:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9768', 'admin', '2015-01-21 16:42:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9769', 'admin', '2015-01-21 16:43:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9770', 'admin', '2015-01-21 16:44:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9771', 'admin', '2015-01-21 16:46:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9772', 'admin', '2015-01-21 16:48:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9773', 'admin', '2015-01-21 16:50:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9774', 'admin', '2015-01-21 16:50:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9775', 'admin', '2015-01-21 16:53:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9776', '3002', '2015-01-21 16:54:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9777', 'admin', '2015-01-21 16:54:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9778', 'admin', '2015-01-21 16:54:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9779', '3002', '2015-01-21 16:54:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9780', '3002', '2015-01-21 16:55:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9781', '3002', '2015-01-21 16:56:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9782', '3002', '2015-01-21 16:56:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9783', '3002', '2015-01-21 16:56:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9784', '3002', '2015-01-21 16:56:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9785', '3002', '2015-01-21 16:57:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9786', '3002', '2015-01-21 16:57:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9787', '3002', '2015-01-21 16:58:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9788', '3002', '2015-01-21 16:58:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9789', '3002', '2015-01-21 16:59:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9790', '3002', '2015-01-21 16:59:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9791', '3002', '2015-01-21 17:00:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9792', '3002', '2015-01-21 17:02:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9793', '3002', '2015-01-21 17:03:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9794', '3002', '2015-01-21 17:05:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9795', 'admin', '2015-01-21 17:06:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9796', 'admin', '2015-01-21 17:06:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9797', 'admin', '2015-01-21 17:07:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@6d9aa46f[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=byhand,Updatetime=Wed Jan 21 17:07:04 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9798', '3002', '2015-01-21 17:07:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9799', '3002', '2015-01-21 17:07:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2189794[Id=519,Workorderno=201501210003,Customerno=<null>,Customername=朗泰恒盛,Callerno=3004,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 17:07:27 CST 2015,Dealtime=Wed Jan 21 17:07:48 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=哈哈,Consultcontent=你好,Nextaction=你好,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9800', 'admin', '2015-01-21 17:08:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9801', 'admin', '2015-01-21 17:08:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9802', '3002', '2015-01-21 17:08:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9803', '3002', '2015-01-21 17:08:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9804', 'admin', '2015-01-21 17:09:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9805', 'admin', '2015-01-21 17:09:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9806', 'admin', '2015-01-21 17:10:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@6e8fe109[Id=60,Menuname=IPCC报表,Menuseq=5,Isavailable=N,Linkaddress=,Temp1=,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9807', 'admin', '2015-01-21 17:10:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9808', 'admin', '2015-01-21 17:11:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@252e9e07[Id=282]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9809', 'admin', '2015-01-21 17:11:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@482e5860[Id=283]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9810', 'admin', '2015-01-21 17:11:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@2982fa9c[Id=284]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9811', 'admin', '2015-01-21 17:11:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@5d44175f[Id=285]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9812', 'admin', '2015-01-21 17:11:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdRolemenu@71685943[Id=286]', 'BdRole');
INSERT INTO `logmsg` VALUES ('9813', 'admin', '2015-01-21 17:23:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9814', 'admin', '2015-01-21 17:34:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9815', 'admin', '2015-01-21 17:34:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9816', 'admin', '2015-01-21 18:21:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9817', 'admin', '2015-01-21 18:22:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9818', 'admin', '2015-01-21 18:23:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9819', 'admin', '2015-01-21 18:24:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9820', 'admin', '2015-01-21 18:25:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9821', '3002', '2015-01-21 18:25:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9822', '3002', '2015-01-21 18:25:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@30832444[Id=519,Workorderno=201501210003,Customerno=<null>,Customername=<null>,Callerno=3004,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 00:00:00 CST 2015,Dealtime=Wed Jan 21 18:25:23 CST 2015,Auditperson=3002,Audittime=Wed Jan 21 18:25:23 CST 2015,Completeperson=3002,Completetime=Wed Jan 21 18:25:23 CST 2015,Remark=哈哈,Consultcontent=你好,Nextaction=你好,Remindflag=<null>,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9823', '3002', '2015-01-21 18:25:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@3a3607e0[Id=517,Workorderno=201501210001,Customerno=<null>,Customername=朗泰恒盛,Callerno=3004,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 00:00:00 CST 2015,Dealtime=Wed Jan 21 18:25:47 CST 2015,Auditperson=3002,Audittime=Wed Jan 21 18:25:47 CST 2015,Completeperson=3002,Completetime=Wed Jan 21 18:25:47 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9824', '3002', '2015-01-21 18:26:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5160e707[Id=518,Workorderno=201501210002,Customerno=<null>,Customername=朗泰恒盛,Callerno=3004,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 00:00:00 CST 2015,Dealtime=Wed Jan 21 18:26:04 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9825', '3002', '2015-01-21 18:26:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@10f4d019[Id=518,Workorderno=201501210002,Customerno=<null>,Customername=<null>,Callerno=3004,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 00:00:00 CST 2015,Dealtime=Wed Jan 21 18:26:14 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9826', '3002', '2015-01-21 18:26:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@46e3af06[Id=518,Workorderno=201501210002,Customerno=<null>,Customername=<null>,Callerno=3004,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 00:00:00 CST 2015,Dealtime=Wed Jan 21 18:26:25 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9827', '3002', '2015-01-21 18:26:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@5aa216c7[Id=81,Assignperson=123,Createtype=<null>,Dealtime=Wed Jan 21 18:26:44 CST 2015,Depdealman=123,Occtime=Wed Jan 21 00:00:00 CST 2015,Prodepartment=123,Prodesc=123,Prokeyword=<null>,Proreason=,Prosituation=,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Typeinperson=<null>,Typeintime=Wed Jan 21 18:26:44 CST 2015,Workorderno=201501210002,Wostatus=dhxcl]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('9828', '3002', '2015-01-21 18:30:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9829', '3002', '2015-01-21 18:30:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@347ea69c[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=3004,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=all,Updatetime=Wed Jan 21 18:30:32 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9830', '3002', '2015-01-21 18:31:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9831', '3002', '2015-01-21 18:31:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@5cfc3b01[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=3004,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=all,Updatetime=Wed Jan 21 18:31:08 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9832', '3002', '2015-01-21 18:31:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9833', '3002', '2015-01-21 18:31:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@48e47d82[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=3004,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=all,Updatetime=Wed Jan 21 18:31:35 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9834', '3002', '2015-01-21 18:31:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9835', '3002', '2015-01-21 18:31:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@470f60c2[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=3004,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=all,Updatetime=Wed Jan 21 18:31:56 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9836', '3002', '2015-01-21 18:32:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9837', '3002', '2015-01-21 18:32:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@656f5956[Id=290,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=3004,Postcode=<null>,Emailaddr=,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=123,Infosource=all,Updatetime=Wed Jan 21 18:32:20 CST 2015,Remark=123,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9838', '3002', '2015-01-21 18:32:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9839', '3002', '2015-01-21 18:33:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9840', '3002', '2015-01-21 18:33:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@4bdca89[Id=520,Workorderno=201501210004,Customerno=<null>,Customername=朗泰恒盛,Callerno=3004,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Jan 21 18:33:21 CST 2015,Dealtime=Wed Jan 21 18:33:33 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=3002]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9841', 'admin', '2015-01-22 12:18:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9842', 'admin', '2015-04-01 11:09:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9843', 'admin', '2015-04-01 11:12:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9844', 'admin', '2015-04-01 11:14:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：65,57,59,67,68', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9845', 'admin', '2015-04-01 11:14:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：51,52,53,54,55,56', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9846', 'admin', '2015-04-01 11:14:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：61,62,63,64', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9847', 'admin', '2015-04-01 11:14:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：58', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9848', 'admin', '2015-04-01 11:14:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：60', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9849', 'admin', '2015-04-01 11:14:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9850', 'admin', '2015-04-01 11:36:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9851', 'admin', '2015-04-01 11:45:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9852', 'admin', '2015-04-01 11:45:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9853', 'admin', '2015-04-01 11:47:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9854', 'admin', '2015-04-01 11:47:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9855', 'admin', '2015-04-01 11:47:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9856', 'admin', '2015-04-01 11:47:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9857', 'admin', '2015-04-01 11:52:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9858', 'admin', '2015-04-01 11:52:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9859', 'admin', '2015-04-01 11:54:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@3704b7d5[Id=69,Menuname=IPCC报表,Menuseq=5,Isavailable=Y,Linkaddress=,Temp1=,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9860', 'admin', '2015-04-01 11:56:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@7ff009e0[Id=70,Menuname=测试,Menuseq=0,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_agent,Temp1=testLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9861', 'admin', '2015-04-01 11:56:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9862', 'admin', '2015-04-01 11:59:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@490d9812[Id=70,Menuname=测试,Menuseq=0,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_agent,Temp1=testLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9863', 'admin', '2015-04-01 11:59:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9864', 'admin', '2015-04-01 14:13:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9865', 'admin', '2015-04-01 14:14:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9866', 'admin', '2015-04-01 15:44:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9867', 'admin', '2015-04-01 15:44:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9868', 'admin', '2015-04-01 15:47:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9869', 'admin', '2015-04-01 15:54:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@4eb6358d[Id=291,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed Apr 01 15:54:39 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9870', 'admin', '2015-04-01 15:54:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@a643b69[Id=291,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Wed Apr 01 15:54:48 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9871', 'admin', '2015-04-01 15:56:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9872', 'admin', '2015-04-01 15:56:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@20554083[Id=291,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=18201697259,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-01 15:54:48.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9873', 'admin', '2015-04-01 15:57:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@743b31e[Id=291,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=18201697259,123456,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-01 15:54:48.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9874', 'admin', '2015-04-01 16:00:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@4689a55d[Id=292,Customerno=<null>,Customername=朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed Apr 01 16:00:12 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9875', 'admin', '2015-04-01 16:01:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@73bdfb36[Id=293,Customerno=<null>,Customername=朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed Apr 01 16:01:30 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9876', 'admin', '2015-04-01 16:02:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9877', 'admin', '2015-04-01 16:02:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@20e6b44a[Id=294,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed Apr 01 16:02:22 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9878', 'admin', '2015-04-01 16:02:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@6c77f515[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Wed Apr 01 16:02:47 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('9879', 'admin', '2015-04-01 16:04:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9880', 'admin', '2015-04-08 11:51:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9881', 'admin', '2015-04-08 12:09:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9882', 'admin', '2015-04-08 13:37:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9883', 'admin', '2015-04-08 13:38:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9884', 'admin', '2015-04-08 13:39:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9885', 'admin', '2015-04-08 13:40:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9886', 'admin', '2015-04-08 13:41:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9887', 'admin', '2015-04-08 13:43:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9888', 'admin', '2015-04-08 13:44:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9889', 'admin', '2015-04-08 14:42:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9890', 'admin', '2015-04-08 15:27:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.BdDict@7dbef35e[Id=106,Dictcode=Order_his,Dicttitle=历史工单,Dicttype=<null>,Isvalid=Y,Remark=<null>,Temp=<null>]', 'BdDict');
INSERT INTO `logmsg` VALUES ('9891', 'admin', '2015-04-08 15:28:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.BdDictdetail@68bb27fd[Id=161,Code=his_limit,Title=时间范围,Value=<null>,Isvalid=Y,Remark=前N天的历史工单信息,Defaultorder=0]', 'BdDict');
INSERT INTO `logmsg` VALUES ('9892', 'admin', '2015-04-08 15:29:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdDictdetail@6ffa2f97[Id=161,Code=his_limit,Title=时间范围,Value=<null>,Isvalid=Y,Remark=前N天的历史工单信息,Defaultorder=0]', 'BdDict');
INSERT INTO `logmsg` VALUES ('9893', 'admin', '2015-04-08 15:29:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdDict@7d32c233[Id=106,Dictcode=Order_his,Dicttitle=历史工单,Dicttype=<null>,Isvalid=Y,Remark=<null>,Temp=<null>]', 'BdDict');
INSERT INTO `logmsg` VALUES ('9894', 'admin', '2015-04-08 15:31:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdDictdetail@723164d5[Id=161,Code=his_limit,Title=时间范围,Value=7,Isvalid=Y,Remark=前N天的历史工单信息,Defaultorder=0]', 'BdDict');
INSERT INTO `logmsg` VALUES ('9895', 'admin', '2015-04-08 15:59:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9896', 'admin', '2015-04-08 15:59:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9897', 'admin', '2015-04-08 16:00:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9898', 'admin', '2015-04-08 16:11:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9899', 'admin', '2015-04-08 16:11:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Userinfo@6f7c916d[Id=31,Username=1234,Userpwd=mtiZna==,Isadmin=false,Remark=,Factory=,Agentno=124,Ctipwd=1234,Extno=1234,Agentname=admin,Agentemail=,Phoneno=,Agentstatus=false,Lastlogintime=<null>,Agenttype=OAgent,Position=,Userstatus=Y,Delflag=N,Ctiaddr=,Ctiaddrbak=,Authaddr=,Authtype=Batch,Temp1=,Temp2=,Temp3=<null>,Temp4=<null>,Temp5=<null>]', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9900', 'admin', '2015-04-08 16:11:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:31', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9901', '4001', '2015-04-08 16:20:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9902', 'admin', '2015-04-08 16:29:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9903', 'admin', '2015-04-08 16:29:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9904', '4001', '2015-04-08 16:36:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9905', '4001', '2015-04-08 16:36:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9906', '4001', '2015-04-08 16:37:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@4844b4d1[Id=524,Workorderno=201504080004,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 16:37:36 CST 2015,Dealtime=Wed Apr 08 16:37:36 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 16:37:36 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 16:37:36 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9907', '4001', '2015-04-08 16:41:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9908', '4001', '2015-04-08 16:43:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9909', '4001', '2015-04-08 16:43:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9910', '4001', '2015-04-08 16:43:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9911', '4001', '2015-04-08 16:43:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9912', '4001', '2015-04-08 16:44:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9913', '4001', '2015-04-08 16:44:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9914', '4001', '2015-04-08 16:44:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9915', '4001', '2015-04-08 16:45:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9916', '4001', '2015-04-08 16:46:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9917', '4001', '2015-04-08 16:46:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9918', '4001', '2015-04-08 16:46:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9919', '4001', '2015-04-08 16:47:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9920', 'admin', '2015-04-08 16:47:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9921', 'admin', '2015-04-08 16:47:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9922', 'admin', '2015-04-08 16:47:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9923', 'admin', '2015-04-08 16:47:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9924', 'admin', '2015-04-08 16:47:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9925', 'admin', '2015-04-08 16:47:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9926', 'admin', '2015-04-08 16:47:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9927', 'admin', '2015-04-08 16:48:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9928', 'admin', '2015-04-08 16:48:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9929', 'admin', '2015-04-08 16:48:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9930', 'admin', '2015-04-08 16:48:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9931', '4001', '2015-04-08 16:48:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9932', 'admin', '2015-04-08 16:49:09', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9933', 'admin', '2015-04-08 16:49:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9934', '4001', '2015-04-08 16:49:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9935', '4001', '2015-04-08 16:50:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9936', '4001', '2015-04-08 16:50:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9937', '4001', '2015-04-08 16:51:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9938', '4001', '2015-04-08 16:51:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9939', '4001', '2015-04-08 16:51:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9940', 'admin', '2015-04-08 16:51:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9941', 'admin', '2015-04-08 16:54:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9942', 'admin', '2015-04-08 16:54:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9943', '4001', '2015-04-08 16:54:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9944', 'admin', '2015-04-08 16:55:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9945', 'admin', '2015-04-08 16:56:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9946', 'admin', '2015-04-08 16:57:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9947', '4001', '2015-04-08 16:57:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9948', '4001', '2015-04-08 16:57:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9949', '4001', '2015-04-08 16:58:09', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9950', 'admin', '2015-04-08 17:07:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'update password：1', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9951', 'admin', '2015-04-08 17:07:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9952', 'admin', '2015-04-08 17:07:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'update password：1', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9953', 'admin', '2015-04-08 17:07:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9954', '4001', '2015-04-08 17:07:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9955', '4001', '2015-04-08 17:08:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@49305bbd[Id=526,Workorderno=201504080006,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:08:20 CST 2015,Dealtime=Wed Apr 08 17:08:20 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 17:08:20 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 17:08:20 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9956', '4001', '2015-04-08 17:09:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9957', '4001', '2015-04-08 17:10:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9958', '4001', '2015-04-08 17:10:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@23d7e45[Id=528,Workorderno=201504080008,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:10:52 CST 2015,Dealtime=Wed Apr 08 17:10:52 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 17:10:52 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 17:10:52 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9959', '4001', '2015-04-08 17:11:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9960', '4001', '2015-04-08 17:11:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9961', '4001', '2015-04-08 17:12:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9962', '4001', '2015-04-08 17:12:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9963', '4001', '2015-04-08 17:12:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9964', '4001', '2015-04-08 17:12:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9965', '4001', '2015-04-08 17:13:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@363f193c[Id=530,Workorderno=201504080010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:13:40 CST 2015,Dealtime=Wed Apr 08 17:13:40 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9966', '4001', '2015-04-08 17:25:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9967', '4001', '2015-04-08 17:27:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9968', '4001', '2015-04-08 17:30:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9969', '4001', '2015-04-08 17:30:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9970', '4001', '2015-04-08 17:49:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9971', '4001', '2015-04-08 17:51:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9972', '4001', '2015-04-08 17:53:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9973', '4001', '2015-04-08 17:53:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@6b421496[Id=540,Workorderno=201504080020,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:53:46 CST 2015,Dealtime=Wed Apr 08 17:53:46 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 17:53:46 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 17:53:46 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9974', '4001', '2015-04-08 17:54:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@2d2e234[Id=542,Workorderno=201504080022,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:54:02 CST 2015,Dealtime=Wed Apr 08 17:54:02 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 17:54:02 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 17:54:02 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9975', '4001', '2015-04-08 17:54:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@a772b7a[Id=544,Workorderno=201504080024,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 17:54:26 CST 2015,Dealtime=Wed Apr 08 17:54:25 CST 2015,Auditperson=4001,Audittime=Wed Apr 08 17:54:25 CST 2015,Completeperson=4001,Completetime=Wed Apr 08 17:54:25 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9976', 'admin', '2015-04-09 10:17:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9977', 'admin', '2015-04-09 11:45:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9978', 'admin', '2015-04-09 11:53:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9979', 'admin', '2015-04-09 12:00:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9980', 'admin', '2015-04-09 12:01:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@6199a356[Id=521,Workorderno=201504080001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 12:01:02 CST 2015,Auditperson=admin,Audittime=Thu Apr 09 12:01:02 CST 2015,Completeperson=admin,Completetime=Thu Apr 09 12:01:02 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9981', 'admin', '2015-04-09 12:08:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@27f57ef8[Id=530,Workorderno=201504080010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 12:08:59 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9982', 'admin', '2015-04-09 12:09:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2ce6656d[Id=530,Workorderno=201504080010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 12:09:06 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9983', 'admin', '2015-04-09 12:09:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@1cac0c77[Id=530,Workorderno=201504080010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 12:09:26 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9984', 'admin', '2015-04-09 12:15:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9985', 'admin', '2015-04-09 12:15:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7bae93c5[Id=522,Workorderno=201504080002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 12:15:50 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9986', 'admin', '2015-04-09 13:37:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@499057be[Id=23,Menuname=工单办理,Menuseq=1,Isavailable=Y,Linkaddress=ListWorkorder.action?orderCode=wcl&pageCode=wcl&pageCode=wcl&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderwclLiNav,Temp1=workorderwclLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9987', 'admin', '2015-04-09 13:37:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9988', 'admin', '2015-04-09 13:37:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5e2be792[Id=523,Workorderno=201504080003,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 13:37:38 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9989', 'admin', '2015-04-09 13:42:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@605c5c9f[Id=24,Menuname=后续处理工单,Menuseq=2,Isavailable=Y,Linkaddress=ListWorkorder.action?orderCode=dhxcl&pageCode=dhxcl&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderdhxclLiNav,Temp1=workorderdhxclLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9990', 'admin', '2015-04-09 13:43:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@6727b020[Id=30,Menuname=工单结单,Menuseq=3,Isavailable=Y,Linkaddress=ListWorkorder.action?orderCode=ywc&pageCode=ywc&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderywcLiNav,Temp1=workorderywcLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9991', 'admin', '2015-04-09 13:43:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@83427fe[Id=26,Menuname=工单查询,Menuseq=4,Isavailable=Y,Linkaddress=ListWorkorder.action?orderCode=all&pageCode=all&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderallLiNav,Temp1=workorderallLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('9992', 'admin', '2015-04-09 13:44:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9993', 'admin', '2015-04-09 13:44:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@e1a01c5[Id=81,Workorderno=201504080001,Prokeyword=<null>,Prodepartment=123,Depdealman=123,Prodesc=123,Proreason=123,Prosituation=,Occtime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 13:44:52 CST 2015,Typeinperson=<null>,Assignperson=123,Typeintime=Thu Apr 09 13:44:52 CST 2015,Wostatus=dhxcl,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('9994', 'admin', '2015-04-09 13:45:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@1974bedf[Id=530,Workorderno=201504080010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Wed Apr 08 00:00:00 CST 2015,Dealtime=Thu Apr 09 13:45:24 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('9995', 'admin', '2015-04-09 13:47:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9996', 'admin', '2015-04-09 13:50:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9997', 'admin', '2015-04-09 14:09:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('9998', 'admin', '2015-04-09 14:10:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete：48', 'BdRole');
INSERT INTO `logmsg` VALUES ('9999', 'admin', '2015-04-09 14:15:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@5e0cada8[Id=546,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=18201697259,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Thu Apr 09 14:15:43 CST 2015,Dealtime=Thu Apr 09 14:15:43 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10000', 'admin', '2015-04-09 14:19:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10001', 'admin', '2015-04-09 14:19:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10002', 'admin', '2015-04-09 14:21:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10003', 'admin', '2015-04-09 14:21:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10004', 'admin', '2015-04-09 14:21:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10005', '4001', '2015-04-09 14:22:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10006', 'admin', '2015-04-09 14:22:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10007', 'admin', '2015-04-09 14:22:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10008', '4001', '2015-04-09 14:23:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10009', '4001', '2015-04-09 14:24:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10010', '4001', '2015-04-09 14:26:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@15d22698[Id=548,Workorderno=201504090003,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller,Calltime=Thu Apr 09 14:26:24 CST 2015,Dealtime=Thu Apr 09 14:26:24 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10011', '4001', '2015-04-09 14:29:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10012', '4001', '2015-04-09 14:29:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10013', '4001', '2015-04-09 14:29:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10014', '4001', '2015-04-09 14:29:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10015', '4001', '2015-04-09 14:30:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10016', '4001', '2015-04-09 14:30:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10017', '4001', '2015-04-09 14:38:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10018', 'admin', '2015-04-09 15:12:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10019', 'admin', '2015-04-09 15:17:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10020', '4001', '2015-04-09 15:17:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10021', 'admin', '2015-04-09 15:17:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10022', 'admin', '2015-04-09 15:19:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.BdDictdetail@4c2c99cb[Id=56,Code=callin,Title=呼入,Value=,Isvalid=Y,Remark=,Defaultorder=1]', 'BdDict');
INSERT INTO `logmsg` VALUES ('10023', 'admin', '2015-04-09 15:19:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.BdDictdetail@2399e876[Id=162,Code=callout,Title=外呼,Value=,Isvalid=Y,Remark=,Defaultorder=3]', 'BdDict');
INSERT INTO `logmsg` VALUES ('10024', '4001', '2015-04-09 15:19:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10025', '4001', '2015-04-09 15:19:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5e253983[Id=552,Workorderno=201504090007,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:19:46 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10026', '4001', '2015-04-09 15:19:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10027', '4001', '2015-04-09 15:20:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10028', '4001', '2015-04-09 15:21:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7a181cea[Id=554,Workorderno=201504090002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:21:25 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10029', '4001', '2015-04-09 15:22:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10030', '4001', '2015-04-09 15:25:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@4c3c6b8f[Id=555,Workorderno=201504090004,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:25:20 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10031', '4001', '2015-04-09 15:26:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@48aa985e[Id=557,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:26:46 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10032', '4001', '2015-04-09 15:27:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@56492beb[Id=558,Workorderno=201504090002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Complainthand,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:27:38 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10033', '4001', '2015-04-09 15:30:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10034', '4001', '2015-04-09 15:30:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@26625252[Id=559,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_OrderDelivery,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=caller, caller,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:30:32 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10035', '4001', '2015-04-09 15:32:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@9c119d0[Id=560,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout, callout,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:32:10 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10036', '4001', '2015-04-09 15:33:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10037', '4001', '2015-04-09 15:33:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10038', '4001', '2015-04-09 15:34:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5f67a40f[Id=561,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_OrderDelivery,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:34:06 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10039', '4001', '2015-04-09 15:34:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@d7488d4[Id=562,Workorderno=201504090002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:34:38 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10040', '4001', '2015-04-09 15:35:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@5eb42638[Id=563,Workorderno=201504090003,Customerno=<null>,Customername=朗泰恒盛123,Callerno=18201697259,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=<null>,Calltime=Thu Apr 09 15:35:01 CST 2015,Dealtime=Thu Apr 09 15:35:01 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=123,Consultcontent=123,Nextaction=123,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10041', '4001', '2015-04-09 15:41:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@6f2e93fa[Id=564,Workorderno=201504090004,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 15:41:54 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10042', '4001', '2015-04-09 15:42:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@2feaf57c[Id=565,Workorderno=201504090005,Customerno=<null>,Customername=朗泰恒盛123,Callerno=18201697259,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=,Calltime=Thu Apr 09 15:42:22 CST 2015,Dealtime=Thu Apr 09 15:42:22 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=123,Consultcontent=123,Nextaction=123,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10043', '4001', '2015-04-09 15:44:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@25426b03[Id=566,Workorderno=201504090006,Customerno=<null>,Customername=朗泰恒盛123,Callerno=1234,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Thu Apr 09 15:44:33 CST 2015,Dealtime=Thu Apr 09 15:44:33 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=123,Consultcontent=123,Nextaction=123,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10044', '4001', '2015-04-09 15:51:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10045', '4001', '2015-04-09 15:52:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10046', '4001', '2015-04-09 15:53:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10047', '4001', '2015-04-09 15:53:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10048', '4001', '2015-04-09 15:59:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10049', '4001', '2015-04-09 16:00:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10050', '4001', '2015-04-09 16:02:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10051', 'admin', '2015-04-09 16:07:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10052', 'admin', '2015-04-09 16:07:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@49c104ae[Id=82,Workorderno=201504090001,Prokeyword=<null>,Prodepartment=123,Depdealman=123,Prodesc=,Proreason=,Prosituation=,Occtime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:07:52 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 09 16:07:52 CST 2015,Wostatus=dhxcl,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10053', 'admin', '2015-04-09 16:10:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10054', 'admin', '2015-04-09 16:10:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10055', 'admin', '2015-04-09 16:11:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@16e1b652[Id=561,Workorderno=201504090001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=ywc,Ordertype=O_OrderDelivery,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:11:01 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10056', 'admin', '2015-04-09 16:13:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@1aeefda9[Id=83,Workorderno=201504090001,Prokeyword=<null>,Prodepartment=123,Depdealman=,Prodesc=,Proreason=,Prosituation=,Occtime=<null>,Dealtime=Thu Apr 09 16:13:53 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 09 16:13:53 CST 2015,Wostatus=已完成,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10057', 'admin', '2015-04-09 16:14:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@457ca3ce[Id=84,Workorderno=201504090002,Prokeyword=<null>,Prodepartment=32132131,Depdealman=,Prodesc=,Proreason=,Prosituation=,Occtime=<null>,Dealtime=Thu Apr 09 16:14:05 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 09 16:14:05 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10058', 'admin', '2015-04-09 16:29:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@22759b0e[Id=562,Workorderno=201504090002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:29:40 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10059', 'admin', '2015-04-09 16:32:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@644e54f1[Id=562,Workorderno=201504090002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:32:17 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10060', '4001', '2015-04-09 16:35:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10061', '4001', '2015-04-09 16:37:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5a1755b3[Id=567,Workorderno=201504090007,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:37:05 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10062', 'admin', '2015-04-09 16:39:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10063', 'admin', '2015-04-09 16:42:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10064', 'admin', '2015-04-09 16:42:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10065', 'admin', '2015-04-09 16:42:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10066', 'admin', '2015-04-09 16:42:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10067', 'admin', '2015-04-09 16:43:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10068', 'admin', '2015-04-09 16:43:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10069', 'admin', '2015-04-09 16:45:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@4a0430c5[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Thu Apr 09 16:45:24 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10070', 'admin', '2015-04-09 16:45:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@157aa83c[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Thu Apr 09 16:45:52 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10071', '4001', '2015-04-09 16:48:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10072', '4001', '2015-04-09 16:48:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@60a04e8c[Id=568,Workorderno=201504090008,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 09 00:00:00 CST 2015,Dealtime=Thu Apr 09 16:48:45 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10073', 'admin', '2015-04-09 16:49:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10074', 'admin', '2015-04-09 16:49:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10075', '4001', '2015-04-09 16:49:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10076', '4001', '2015-04-09 16:49:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10077', '4001', '2015-04-09 16:49:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10078', '4001', '2015-04-09 16:50:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10079', '4001', '2015-04-10 10:13:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10080', '4001', '2015-04-10 10:16:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10081', '4001', '2015-04-10 10:16:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10082', '4001', '2015-04-10 10:17:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10083', '4001', '2015-04-10 10:18:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10084', '4001', '2015-04-10 10:19:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10085', '4001', '2015-04-10 10:20:54', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10086', '4001', '2015-04-10 10:21:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10087', '4001', '2015-04-10 10:21:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10088', 'admin', '2015-04-10 10:23:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10089', '4001', '2015-04-10 11:14:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10090', '4001', '2015-04-10 11:42:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10091', '4001', '2015-04-10 11:43:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10092', 'admin', '2015-04-10 11:45:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10093', 'admin', '2015-04-10 11:45:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10094', 'admin', '2015-04-10 11:48:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10095', 'admin', '2015-04-10 11:48:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10096', '4001', '2015-04-10 14:07:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10097', '4001', '2015-04-10 14:08:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10098', 'admin', '2015-04-10 14:11:39', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10099', 'admin', '2015-04-10 14:11:39', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10100', '4001', '2015-04-10 14:14:46', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10101', '4001', '2015-04-10 14:15:02', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10102', '4001', '2015-04-10 14:15:02', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10103', 'admin', '2015-04-10 14:22:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10104', 'admin', '2015-04-10 14:22:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10105', '4001', '2015-04-13 15:54:37', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10106', '4001', '2015-04-13 15:55:03', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10107', '4001', '2015-04-13 15:55:03', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10108', 'admin', '2015-04-13 16:00:43', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10109', 'admin', '2015-04-13 16:01:17', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10110', 'admin', '2015-04-13 16:01:17', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10111', 'admin', '2015-04-13 16:02:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10112', 'admin', '2015-04-13 16:02:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10113', 'admin', '2015-04-13 16:02:46', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10114', 'admin', '2015-04-13 16:02:46', '172.16.3.135', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10115', 'admin', '2015-04-13 16:03:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10116', 'admin', '2015-04-13 16:04:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10117', 'admin', '2015-04-13 16:04:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10118', 'admin', '2015-04-13 16:05:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10119', 'admin', '2015-04-13 16:05:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10120', '4001', '2015-04-13 16:05:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10121', 'admin', '2015-04-13 16:10:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10122', 'admin', '2015-04-13 16:10:37', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10123', '4001', '2015-04-13 16:21:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10124', '4001', '2015-04-13 16:22:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10125', '4001', '2015-04-13 16:30:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10126', '4001', '2015-04-13 16:31:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10127', 'admin', '2015-04-13 16:33:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10128', 'admin', '2015-04-13 16:33:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10129', 'admin', '2015-04-13 16:33:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10130', 'admin', '2015-04-13 16:33:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10131', '4001', '2015-04-13 16:34:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10132', '4001', '2015-04-13 16:38:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10133', 'admin', '2015-04-13 16:40:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10134', 'admin', '2015-04-13 16:40:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10135', 'admin', '2015-04-13 16:42:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@3de4a3db[Id=70,Menuname=坐席签入签出报告,Menuseq=0,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_agent,Temp1=real_agentLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10136', 'admin', '2015-04-13 16:43:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@50a63d49[Id=71,Menuname=坐席通话明细报告,Menuseq=1,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_call,Temp1=real_callLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10137', 'admin', '2015-04-13 16:44:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@5fcaae86[Id=72,Menuname=IVR呼入放弃明细报告,Menuseq=2,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_ivr,Temp1=real_ivrLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10138', 'admin', '2015-04-13 16:45:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@3225ef89[Id=73,Menuname=坐席话务统计报告,Menuseq=3,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_agent,Temp1=his_agentLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10139', 'admin', '2015-04-13 16:46:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@12b22271[Id=74,Menuname=坐席出勤率报告,Menuseq=4,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_kpi,Temp1=his_kpiLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10140', 'admin', '2015-04-13 16:46:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@73d54986[Id=75,Menuname=技能组话务统计报告,Menuseq=5,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_skill,Temp1=his_skillLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10141', 'admin', '2015-04-13 16:47:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@7364a504[Id=76,Menuname=IVR话务统计报告,Menuseq=6,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_ivr,Temp1=his_ivrLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10142', 'admin', '2015-04-13 16:47:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10143', 'admin', '2015-04-13 16:47:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10144', 'admin', '2015-04-13 16:49:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10145', 'admin', '2015-04-13 16:49:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10146', 'admin', '2015-04-13 16:51:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10147', 'admin', '2015-04-13 16:51:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10148', 'admin', '2015-04-13 16:54:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10149', 'admin', '2015-04-13 16:55:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10150', 'admin', '2015-04-13 16:55:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10151', 'admin', '2015-04-13 16:56:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@1451ad93[Id=77,Menuname=录音查询,Menuseq=4,Isavailable=Y,Linkaddress=http://172.16.1.100:8080/lcpms/getIpccReport?rt=rec_,Temp1=recordLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10152', 'admin', '2015-04-13 16:56:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10153', 'admin', '2015-04-13 16:59:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10154', 'admin', '2015-04-13 16:59:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10155', 'admin', '2015-04-13 23:19:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10156', 'admin', '2015-04-13 23:27:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10157', 'admin', '2015-04-13 23:27:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10158', 'admin', '2015-04-13 23:28:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10159', 'admin', '2015-04-13 23:28:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10160', 'admin', '2015-04-13 23:28:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10161', 'admin', '2015-04-13 23:28:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10162', 'admin', '2015-04-13 23:33:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10163', 'admin', '2015-04-13 23:33:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10164', 'admin', '2015-04-13 23:50:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10165', 'admin', '2015-04-13 23:54:22', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10166', 'admin', '2015-04-13 23:54:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10167', 'admin', '2015-04-13 23:54:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10168', 'admin', '2015-04-13 23:58:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10169', 'admin', '2015-04-14 10:28:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10170', 'admin', '2015-04-14 10:29:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10171', 'admin', '2015-04-14 10:29:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10172', 'admin', '2015-04-14 10:30:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10173', 'admin', '2015-04-14 10:30:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10174', 'admin', '2015-04-14 10:30:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10175', 'admin', '2015-04-14 10:44:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10176', 'admin', '2015-04-14 10:44:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10177', 'admin', '2015-04-14 10:44:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10178', 'admin', '2015-04-14 10:44:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10179', 'admin', '2015-04-14 10:45:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10180', 'admin', '2015-04-14 10:45:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10181', 'admin', '2015-04-14 10:46:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10182', 'admin', '2015-04-14 10:47:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10183', 'admin', '2015-04-14 10:47:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10184', 'admin', '2015-04-14 10:48:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10185', 'admin', '2015-04-14 11:22:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10186', 'admin', '2015-04-14 11:22:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10187', 'admin', '2015-04-14 11:29:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10188', 'admin', '2015-04-14 11:30:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10189', 'admin', '2015-04-14 11:31:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10190', 'admin', '2015-04-14 11:31:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10191', 'admin', '2015-04-14 11:32:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10192', 'admin', '2015-04-14 11:33:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10193', 'admin', '2015-04-14 11:34:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10194', 'admin', '2015-04-14 11:35:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10195', 'admin', '2015-04-14 11:36:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10196', 'admin', '2015-04-14 11:36:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10197', 'admin', '2015-04-14 11:38:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10198', 'admin', '2015-04-14 11:38:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10199', 'admin', '2015-04-14 11:39:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10200', 'admin', '2015-04-14 11:41:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10201', 'admin', '2015-04-14 11:44:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10202', 'admin', '2015-04-14 11:51:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10203', 'admin', '2015-04-14 11:58:46', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10204', 'admin', '2015-04-14 12:00:09', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10205', 'admin', '2015-04-14 12:05:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10206', '4001', '2015-04-14 13:58:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10207', '4001', '2015-04-14 14:00:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@4e954f4[Id=581,Workorderno=201504140001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:00:34 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10208', '4001', '2015-04-14 14:02:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10209', '4001', '2015-04-14 14:05:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@492fcf0[Id=582,Workorderno=201504140002,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:05:48 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10210', '4001', '2015-04-14 14:07:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10211', '4001', '2015-04-14 14:07:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@708f26ec[Id=583,Workorderno=201504140003,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_ReturnReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:07:39 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10212', '4001', '2015-04-14 14:08:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10213', '4001', '2015-04-14 14:09:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@1797744f[Id=584,Workorderno=201504140004,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:09:00 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10214', '4001', '2015-04-14 14:09:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10215', '4001', '2015-04-14 14:10:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10216', '4001', '2015-04-14 14:13:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10217', '4001', '2015-04-14 14:17:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10218', '4001', '2015-04-14 14:18:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10219', '4001', '2015-04-14 14:18:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5e0f430b[Id=590,Workorderno=201504140010,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:18:41 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10220', '4001', '2015-04-14 14:19:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10221', '4001', '2015-04-14 14:20:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@431277f6[Id=591,Workorderno=201504140001,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:20:00 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10222', '4001', '2015-04-14 14:21:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10223', '4001', '2015-04-14 14:21:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10224', '4001', '2015-04-14 14:23:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10225', '4001', '2015-04-14 14:23:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@69efff76[Id=593,Workorderno=201504140003,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:23:14 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414142240323_1_853_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10226', 'admin', '2015-04-14 14:24:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10227', 'admin', '2015-04-14 14:25:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10228', 'admin', '2015-04-14 14:25:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10229', 'admin', '2015-04-14 14:26:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10230', 'admin', '2015-04-14 14:28:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10231', 'admin', '2015-04-14 14:35:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10232', 'admin', '2015-04-14 14:35:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10233', 'admin', '2015-04-14 14:35:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10234', 'admin', '2015-04-14 14:40:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10235', 'admin', '2015-04-14 14:40:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10236', 'admin', '2015-04-14 14:43:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10237', 'admin', '2015-04-14 14:43:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10238', '4001', '2015-04-14 14:43:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10239', '4001', '2015-04-14 14:43:59', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10240', '4001', '2015-04-14 14:45:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2e390f79[Id=594,Workorderno=201504140004,Customerno=<null>,Customername=朗泰恒盛123,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:45:58 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414144520791_1_856_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10241', '4001', '2015-04-14 14:47:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7d493a48[Id=595,Workorderno=201504140005,Customerno=<null>,Customername=朗泰恒盛123,Callerno=4001,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 14:47:34 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414144637929_1_857_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10242', '4001', '2015-04-14 14:49:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10243', '4001', '2015-04-14 14:49:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@20850bda[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=4001,null,1234,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-09 16:45:52.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10244', '4001', '2015-04-14 14:49:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:184', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10245', '4001', '2015-04-14 14:49:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@461e0ed1[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 14:49:39 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10246', '4001', '2015-04-14 14:49:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@23424035[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-14 14:49:39.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10247', '4001', '2015-04-14 14:49:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@69611f5[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 14:49:52 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10248', '4001', '2015-04-14 14:51:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@427ac569[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-14 14:49:52.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10249', '4001', '2015-04-14 14:57:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@cf5fb8[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 14:57:51 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10250', '4001', '2015-04-14 14:58:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@6aba7aa1[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=2015-04-14 14:57:51.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10251', '4001', '2015-04-14 14:59:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@1fafa7db[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 14:59:05 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10252', '4001', '2015-04-14 15:00:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10253', '4001', '2015-04-14 15:01:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@1576707a[Id=291,Customerno=<null>,Customername=朗泰恒盛123,Custlinkman=刘宁,Custphoneno=null,Postcode=<null>,Emailaddr=123@123.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 15:01:13 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10254', '4001', '2015-04-14 15:04:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@303ba014[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Tue Apr 14 15:04:33 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10255', '4001', '2015-04-14 15:04:42', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@5e96e3d1[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=2015-04-14 15:04:33.0,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10256', '4001', '2015-04-14 15:04:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@c4ce3fe[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=all,Updatetime=Tue Apr 14 15:04:45 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10257', '4001', '2015-04-14 15:05:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@40e09b22[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=Male,Updatetime=Tue Apr 14 15:05:29 CST 2015,Remark=,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10258', '4001', '2015-04-14 15:05:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@4384ebb5[Id=298,Customerno=<null>,Customername=测试,Custlinkman=测试,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@163.com,Netherlands=,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Tue Apr 14 15:05:56 CST 2015,Remark=,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10259', '4001', '2015-04-14 15:07:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@45289ad9[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=<null>,Updatetime=Tue Apr 14 15:07:28 CST 2015,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10260', '4001', '2015-04-14 15:08:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@1f8a840[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,456,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=<null>,Updatetime=2015-04-14 15:07:28.0,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10261', '4001', '2015-04-14 15:08:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Customerinfo@465c5574[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,456,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=<null>,Updatetime=Tue Apr 14 15:08:06 CST 2015,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10262', '4001', '2015-04-14 15:08:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@2e55d6ff[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,456,789,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=<null>,Updatetime=2015-04-14 15:08:06.0,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10263', '4001', '2015-04-14 15:18:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@47bd37f4[Id=597,Workorderno=201504140001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:18:55 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414151014545_1_859_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10264', '4001', '2015-04-14 15:23:19', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@17971adc[Id=598,Workorderno=201504140002,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:23:19 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414152224935_1_860_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10265', '4001', '2015-04-14 15:34:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@3254b083[Id=599,Workorderno=201504140003,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:34:45 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414153405447_1_863_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10266', '4001', '2015-04-14 15:35:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@3c192dae[Id=600,Workorderno=201504140004,Customerno=<null>,Customername=朗泰恒盛,Callerno=1234566,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Tue Apr 14 15:35:36 CST 2015,Dealtime=Tue Apr 14 15:35:36 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10267', '4001', '2015-04-14 15:36:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@1687a853[Id=85,Workorderno=201504140001,Prokeyword=<null>,Prodepartment=123,Depdealman=,Prodesc=,Proreason=,Prosituation=,Occtime=<null>,Dealtime=Tue Apr 14 15:36:00 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Tue Apr 14 15:36:00 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10268', '4001', '2015-04-14 15:36:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@73315fda[Id=597,Workorderno=201504140001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:36:03 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414151014545_1_859_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10269', '4001', '2015-04-14 15:36:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:85', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10270', '4001', '2015-04-14 15:36:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@64e5c573[Id=86,Workorderno=201504140001,Prokeyword=<null>,Prodepartment=123,Depdealman=,Prodesc=,Proreason=,Prosituation=,Occtime=<null>,Dealtime=Tue Apr 14 15:36:21 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Tue Apr 14 15:36:21 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10271', '4001', '2015-04-14 15:36:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:86', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10272', '4001', '2015-04-14 15:36:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@50e2d064[Id=597,Workorderno=201504140001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:36:30 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414151014545_1_859_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10273', '4001', '2015-04-14 15:36:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2ffd343f[Id=597,Workorderno=201504140001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:36:50 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414151014545_1_859_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10274', '4001', '2015-04-14 15:36:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7244bcff[Id=597,Workorderno=201504140001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Tue Apr 14 00:00:00 CST 2015,Dealtime=Tue Apr 14 15:36:55 CST 2015,Auditperson=4001,Audittime=Tue Apr 14 15:36:55 CST 2015,Completeperson=4001,Completetime=Tue Apr 14 15:36:55 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150414151014545_1_859_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10275', 'admin', '2015-04-14 15:37:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10276', 'admin', '2015-04-14 15:37:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10277', 'admin', '2015-04-14 15:38:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@7013258f[Id=31,Menuname=IVR留言调听,Menuseq=1,Isavailable=N,Linkaddress=ListIvrvoice.action?changeUrl=Y&pageNum=1&numPerPage=20,Temp1=ivrvoiceLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10278', 'admin', '2015-04-14 15:38:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@6ffddf47[Id=32,Menuname=呼叫记录,Menuseq=2,Isavailable=N,Linkaddress=ListCalldetail.action?changeUrl=Y&pageNum=1&numPerPage=20,Temp1=calldetailLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10279', 'admin', '2015-04-14 15:38:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@425a7be4[Id=34,Menuname=满意度调查,Menuseq=5,Isavailable=N,Linkaddress=ListSatscore.action?changeUrl=Y&pageNum=1&numPerPage=20,Temp1=satscoreLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10280', 'admin', '2015-04-14 15:39:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@20df0c8[Id=47,Menuname=工作日历,Menuseq=6,Isavailable=N,Linkaddress=listWorkingcalendar.action?changeUrl=Y&pageNum=1&numPerPage=20,Temp1=workingcalendarLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10281', 'admin', '2015-04-14 15:39:07', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10282', 'admin', '2015-04-14 15:39:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10283', 'admin', '2015-04-14 15:40:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10284', 'admin', '2015-04-14 15:40:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10285', '4001', '2015-04-16 15:23:52', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10286', '4001', '2015-04-16 15:26:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10287', '4001', '2015-04-16 15:26:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10288', '4001', '2015-04-16 15:27:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10289', '4001', '2015-04-16 15:27:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10290', '4001', '2015-04-16 15:28:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10291', '4001', '2015-04-16 15:37:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10292', '4001', '2015-04-16 15:38:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10293', '4001', '2015-04-16 15:39:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10294', '4001', '2015-04-16 15:40:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@78af304f[Id=601,Workorderno=201504160001,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:40:28 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试,Nextaction=测试,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416153927679_1_914_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10295', '4001', '2015-04-16 15:42:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10296', 'admin', '2015-04-16 15:43:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10297', 'admin', '2015-04-16 15:43:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10298', 'admin', '2015-04-16 15:44:38', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10299', '4001', '2015-04-16 15:45:26', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10300', 'admin', '2015-04-16 15:48:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10301', 'admin', '2015-04-16 15:48:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10302', 'admin', '2015-04-16 15:49:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10303', 'admin', '2015-04-16 15:50:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10304', 'admin', '2015-04-16 15:50:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10305', 'admin', '2015-04-16 15:50:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10306', '4001', '2015-04-16 15:51:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10307', '4001', '2015-04-16 15:52:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2bb3cd61[Id=602,Workorderno=201504160002,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:52:18 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试,Nextaction=测试,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155131670_1_915_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10308', '4001', '2015-04-16 15:53:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@7f131367[Id=87,Workorderno=201504160002,Prokeyword=<null>,Prodepartment=开发部,Depdealman=某某,Prodesc=测试,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:53:11 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 15:53:11 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10309', '4001', '2015-04-16 15:53:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@6dde03d9[Id=602,Workorderno=201504160002,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:53:27 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 15:53:27 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 15:53:27 CST 2015,Remark=,Consultcontent=测试,Nextaction=测试,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155131670_1_915_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10310', '4001', '2015-04-16 15:54:15', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@372114[Id=299,Customerno=<null>,Customername=测试公司,Custlinkman=测试员,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@163.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=牡丹园,Infosource=byhand,Updatetime=Thu Apr 16 15:54:15 CST 2015,Remark=,Temp1=111111111111,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10311', '4001', '2015-04-16 15:54:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@16b6df18[Id=299,Customerno=<null>,Customername=测试公司,Custlinkman=测试员,Custphoneno=18201697259,Postcode=<null>,Emailaddr=123@163.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=牡丹园,Infosource=byhand,Updatetime=2015-04-16 15:54:15.0,Remark=,Temp1=111111111111,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10312', '4001', '2015-04-16 15:55:31', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@4e0f7152[Id=603,Workorderno=201504160003,Customerno=<null>,Customername=测试公司,Callerno=4001,Wostatus=dhxcl,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:55:31 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试外呼,Nextaction=,Remindflag=<null>,Temp1=111111111111,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155433254_1_916_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10313', '4001', '2015-04-16 15:56:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10314', '4001', '2015-04-16 15:57:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10315', '4001', '2015-04-16 15:58:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@70b583bc[Id=604,Workorderno=201504160004,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:58:33 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试呼入工单,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155743808_1_917_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10316', '4001', '2015-04-16 15:59:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@278a571[Id=88,Workorderno=201504160004,Prokeyword=<null>,Prodepartment=测试部,Depdealman=小李,Prodesc=测试呼入工单,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:59:20 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 15:59:20 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10317', '4001', '2015-04-16 15:59:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5627d95d[Id=604,Workorderno=201504160004,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 15:59:27 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 15:59:27 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 15:59:27 CST 2015,Remark=,Consultcontent=测试呼入工单,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155743808_1_917_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10318', '4001', '2015-04-16 16:00:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@54cee9aa[Id=605,Workorderno=201504160005,Customerno=<null>,Customername=测试公司,Callerno=4001,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:00:08 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试外呼工单,Nextaction=,Remindflag=<null>,Temp1=111111111111,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416155921045_1_918_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10319', '4001', '2015-04-16 16:00:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@a24116a[Id=300,Customerno=<null>,Customername=测试一下,Custlinkman=小李,Custphoneno=<null>,Postcode=<null>,Emailaddr=123@163.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=牡丹园,Infosource=byhand,Updatetime=Thu Apr 16 16:00:57 CST 2015,Remark=,Temp1=111111111111,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10320', '4001', '2015-04-16 16:01:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@5bd89de0[Id=300,Customerno=<null>,Customername=测试一下,Custlinkman=小李,Custphoneno=18201697259,Postcode=<null>,Emailaddr=123@163.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=牡丹园,Infosource=byhand,Updatetime=2015-04-16 16:00:57.0,Remark=,Temp1=111111111111,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10321', 'admin', '2015-04-16 16:01:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10322', 'admin', '2015-04-16 16:01:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10323', 'admin', '2015-04-16 16:04:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10324', 'admin', '2015-04-16 16:04:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10325', 'admin', '2015-04-16 16:05:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10326', 'admin', '2015-04-16 16:05:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10327', 'admin', '2015-04-16 16:06:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10328', 'admin', '2015-04-16 16:06:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10329', 'admin', '2015-04-16 16:07:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10330', 'admin', '2015-04-16 16:07:16', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10331', 'admin', '2015-04-16 16:07:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10332', 'admin', '2015-04-16 16:07:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10333', 'admin', '2015-04-16 16:09:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10334', 'admin', '2015-04-16 16:09:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10335', 'admin', '2015-04-16 16:10:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10336', 'admin', '2015-04-16 16:10:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10337', 'admin', '2015-04-16 16:14:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10338', 'admin', '2015-04-16 16:14:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10339', 'admin', '2015-04-16 16:14:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10340', 'admin', '2015-04-16 16:14:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10341', 'admin', '2015-04-16 16:15:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10342', 'admin', '2015-04-16 16:15:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10343', 'admin', '2015-04-16 16:30:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10344', 'admin', '2015-04-16 16:30:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10345', 'admin', '2015-04-16 16:31:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10346', 'admin', '2015-04-16 16:31:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10347', 'admin', '2015-04-16 16:31:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10348', 'admin', '2015-04-16 16:31:50', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10349', 'admin', '2015-04-16 16:32:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10350', 'admin', '2015-04-16 16:32:13', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10351', 'admin', '2015-04-16 16:32:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10352', 'admin', '2015-04-16 16:32:55', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10353', '4001', '2015-04-16 16:50:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10354', '4001', '2015-04-16 16:51:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10355', '4001', '2015-04-16 16:51:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@530f7c06[Id=606,Workorderno=201504160006,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:51:56 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165101444_1_925_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10356', '4001', '2015-04-16 16:52:17', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@3e87824d[Id=89,Workorderno=201504160006,Prokeyword=<null>,Prodepartment=测试,Depdealman=测试,Prodesc=,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:52:17 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 16:52:17 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10357', '4001', '2015-04-16 16:52:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@62e84e81[Id=606,Workorderno=201504160006,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:52:23 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165101444_1_925_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10358', '4001', '2015-04-16 16:52:33', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@5b470379[Id=606,Workorderno=201504160006,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:52:33 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 16:52:33 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 16:52:33 CST 2015,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165101444_1_925_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10359', 'admin', '2015-04-16 16:54:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10360', 'admin', '2015-04-16 16:54:03', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10361', '4001', '2015-04-16 16:54:44', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10362', '4001', '2015-04-16 16:55:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@50d04c1a[Id=607,Workorderno=201504160007,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:55:25 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165427622_1_927_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10363', '4001', '2015-04-16 16:55:45', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@6a8c31ac[Id=90,Workorderno=201504160007,Prokeyword=<null>,Prodepartment=测试,Depdealman=测试,Prodesc=,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:55:45 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 16:55:45 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10364', '4001', '2015-04-16 16:55:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@27b80cfd[Id=607,Workorderno=201504160007,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:55:49 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165427622_1_927_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10365', '4001', '2015-04-16 16:56:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7c590310[Id=607,Workorderno=201504160007,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 16:56:00 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 16:56:00 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 16:56:00 CST 2015,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165427622_1_927_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10366', '4001', '2015-04-16 16:57:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10367', '4001', '2015-04-16 16:57:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10368', '4001', '2015-04-16 16:58:43', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10369', '4001', '2015-04-16 16:59:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10370', '4001', '2015-04-16 17:00:05', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2462c5f[Id=609,Workorderno=201504160009,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=dhxcl,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:00:05 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165914743_1_930_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10371', '4001', '2015-04-16 17:00:24', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@52ef3205[Id=91,Workorderno=201504160009,Prokeyword=<null>,Prodepartment=测试,Depdealman=测试,Prodesc=,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:00:24 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 17:00:24 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10372', '4001', '2015-04-16 17:00:30', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@dcb5627[Id=609,Workorderno=201504160009,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=ywc,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:00:30 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165914743_1_930_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10373', '4001', '2015-04-16 17:00:41', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@689963f0[Id=609,Workorderno=201504160009,Customerno=<null>,Customername=测试,Callerno=9113,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callin,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:00:41 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 17:00:41 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 17:00:41 CST 2015,Remark=,Consultcontent=测试来电工单弹屏,Nextaction=,Remindflag=<null>,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416165914743_1_930_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10374', '4001', '2015-04-16 17:01:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@2ee9e59a[Id=610,Workorderno=201504160010,Customerno=<null>,Customername=测试公司,Callerno=4001,Wostatus=dhxcl,Ordertype=O_ReturnReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:01:48 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试外呼工单弹屏,Nextaction=,Remindflag=<null>,Temp1=111111111111,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416170055473_1_933_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10375', '4001', '2015-04-16 17:02:08', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Orderdealinfo@696707dc[Id=92,Workorderno=201504160010,Prokeyword=<null>,Prodepartment=测试外呼,Depdealman=测试外呼,Prodesc=,Proreason=,Prosituation=,Occtime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:02:08 CST 2015,Typeinperson=<null>,Assignperson=,Typeintime=Thu Apr 16 17:02:08 CST 2015,Wostatus=待后续处理,Createtype=<null>,Remark=,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>]', 'Orderdealinfo');
INSERT INTO `logmsg` VALUES ('10376', '4001', '2015-04-16 17:02:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7957c246[Id=610,Workorderno=201504160010,Customerno=<null>,Customername=测试公司,Callerno=4001,Wostatus=ywc,Ordertype=O_ReturnReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:02:12 CST 2015,Auditperson=<null>,Audittime=<null>,Completeperson=<null>,Completetime=<null>,Remark=,Consultcontent=测试外呼工单弹屏,Nextaction=,Remindflag=<null>,Temp1=111111111111,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416170055473_1_933_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10377', '4001', '2015-04-16 17:02:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Workorder@7dd8e956[Id=610,Workorderno=201504160010,Customerno=<null>,Customername=测试公司,Callerno=4001,Wostatus=yjd,Ordertype=O_ReturnReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=callout,Calltime=Thu Apr 16 00:00:00 CST 2015,Dealtime=Thu Apr 16 17:02:21 CST 2015,Auditperson=4001,Audittime=Thu Apr 16 17:02:21 CST 2015,Completeperson=4001,Completetime=Thu Apr 16 17:02:21 CST 2015,Remark=,Consultcontent=测试外呼工单弹屏,Nextaction=,Remindflag=<null>,Temp1=111111111111,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=4001,Temp8=20150416170055473_1_933_IPCC-1,Actusername=4001]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10378', 'admin', '2015-04-16 17:03:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10379', 'admin', '2015-04-16 17:03:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10380', 'admin', '2015-04-16 17:04:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10381', 'admin', '2015-04-16 17:04:20', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10382', 'admin', '2015-04-16 17:05:56', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@7997538d[Id=297,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=1234,456,789,1234566,18201697111,Postcode=<null>,Emailaddr=123@163.com,Netherlands=123,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=,Updatetime=2015-04-14 15:35:36.0,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10383', 'admin', '2015-04-16 17:16:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10384', 'admin', '2015-04-16 17:16:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10385', 'admin', '2015-04-16 17:17:18', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Menuinfo@356945e7[Id=77,Menuname=录音查询,Menuseq=4,Isavailable=Y,Linkaddress=http://localhost:8080/lcpms/getIpccReport?rt=rec_,Temp1=recordLiNav,Temp2=<null>]', 'Menuinfo');
INSERT INTO `logmsg` VALUES ('10386', 'admin', '2015-04-16 17:18:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10387', 'admin', '2015-04-16 17:19:09', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10388', 'admin', '2015-04-16 17:19:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10389', 'admin', '2015-04-16 17:20:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10390', 'admin', '2015-04-16 17:20:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10391', 'admin', '2015-05-13 15:47:51', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10392', 'admin', '2015-05-13 15:58:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@67961bc2[Id=301,Customerno=<null>,Customername=郎泰恒盛,Custlinkman=刘宁,Custphoneno=18201697259,Postcode=<null>,Emailaddr=123@163.com,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed May 13 15:58:40 CST 2015,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10393', 'admin', '2015-05-13 15:59:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@2b7ba0b3[Id=255,Custlinkname=刘宁,Nolevel=0,Phoneno=18201697255,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 15:59:06 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10394', 'admin', '2015-05-13 16:02:29', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@6ea3f037[Id=256,Custlinkname=刘宁,Nolevel=1,Phoneno=18201697259,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:02:29 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10395', 'admin', '2015-05-13 16:02:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:255,256', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10396', 'admin', '2015-05-13 16:22:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@40baad87[Id=257,Custlinkname=刘宁,Nolevel=1,Phoneno=18201697259,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:22:49 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10397', 'admin', '2015-05-13 16:23:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@d9392a8[Id=258,Custlinkname=刘宁,Nolevel=1,Phoneno=18201697259,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:23:23 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10398', 'admin', '2015-05-13 16:24:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10399', 'admin', '2015-05-13 16:24:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@4831d1a9[Id=259,Custlinkname=刘宁,Nolevel=,Phoneno=123,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:24:57 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10400', 'admin', '2015-05-13 16:27:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@74ff532a[Id=260,Custlinkname=刘宁,Nolevel=,Phoneno=1111,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:27:02 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10401', 'admin', '2015-05-13 16:34:47', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Cusphonelist@51ad09a1[Id=260,Custlinkname=刘宁,Nolevel=,Phoneno=1112,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:34:47 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10402', 'admin', '2015-05-13 16:35:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Cusphonelist@3f618d64[Id=260,Custlinkname=刘宁,Nolevel=,Phoneno=1112,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:35:23 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10403', 'admin', '2015-05-13 16:36:02', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Cusphonelist@2a1c3936[Id=260,Custlinkname=刘宁,Nolevel=,Phoneno=1113,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:36:02 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10404', 'admin', '2015-05-13 16:36:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@20d6a8d0[Id=302,Customerno=<null>,Customername=测试公司,Custlinkman=测试,Custphoneno=11111111111,Postcode=<null>,Emailaddr=,Netherlands=,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed May 13 16:36:27 CST 2015,Remark=,Temp1=,Temp2=all,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10405', 'admin', '2015-05-13 16:41:04', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10406', 'admin', '2015-05-13 16:42:12', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10407', 'admin', '2015-05-13 16:43:00', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10408', 'admin', '2015-05-13 16:45:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@29d1332d[Id=261,Custlinkname=测试,Nolevel=123,Phoneno=123,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:45:10 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10409', 'admin', '2015-05-13 16:46:21', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@476ee308[Id=262,Custlinkname=测试,Nolevel=1,Phoneno=1111,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:46:21 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10410', 'admin', '2015-05-13 16:46:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10411', 'admin', '2015-05-13 16:46:35', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@6fe477d3[Id=263,Custlinkname=测试,Nolevel=11,Phoneno=111,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:46:35 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10412', 'admin', '2015-05-13 16:47:49', '0:0:0:0:0:0:0:1', 'LOGTYPE-XG', 'com.liveneo.plat.hibernate.dao.Cusphonelist@48d66379[Id=263,Custlinkname=测试,Nolevel=11,Phoneno=111,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:47:49 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10413', 'admin', '2015-05-13 16:48:40', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@735b0b9e[Id=264,Custlinkname=测试,Nolevel=,Phoneno=1111,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Wed May 13 16:48:40 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10414', 'admin', '2015-05-13 16:50:28', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@75b82cb6[Id=303,Customerno=<null>,Customername=公司公司,Custlinkman=公共,Custphoneno=18201697259,Postcode=<null>,Emailaddr=,Netherlands=,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed May 13 16:50:28 CST 2015,Remark=,Temp1=,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10415', 'admin', '2015-05-13 16:52:06', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@9e5edbc[Id=304,Customerno=<null>,Customername=cece,Custlinkman=123,Custphoneno=12323213131313,Postcode=<null>,Emailaddr=,Netherlands=,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Wed May 13 16:52:06 CST 2015,Remark=,Temp1=,Temp2=all,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10416', 'admin', '2015-05-13 16:52:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-SC', 'delete:265', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10417', 'admin', '2015-05-13 17:00:39', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10418', 'admin', '2015-05-13 17:06:23', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@2665a220[Id=611,Workorderno=201505130001,Customerno=<null>,Customername=郎泰恒盛,Callerno=18201697259,Wostatus=yjd,Ordertype=O_Sampledepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Wed May 13 17:06:23 CST 2015,Dealtime=Wed May 13 17:06:23 CST 2015,Auditperson=admin,Audittime=Wed May 13 17:06:23 CST 2015,Completeperson=admin,Completetime=Wed May 13 17:06:23 CST 2015,Remark=,Consultcontent=123123,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10419', 'admin', '2015-05-13 17:17:01', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@50150c84[Id=612,Workorderno=201505130002,Customerno=<null>,Customername=测试公司,Callerno=12345678900,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Wed May 13 17:17:01 CST 2015,Dealtime=Wed May 13 17:17:01 CST 2015,Auditperson=admin,Audittime=Wed May 13 17:17:01 CST 2015,Completeperson=admin,Completetime=Wed May 13 17:17:01 CST 2015,Remark=,Consultcontent=111111,Nextaction=,Remindflag=Y,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10420', 'admin', '2015-05-13 17:19:32', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@7b184c1[Id=613,Workorderno=201505130003,Customerno=,Customername=测试公司,Callerno=111111111111111,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Wed May 13 17:19:32 CST 2015,Dealtime=Wed May 13 17:19:32 CST 2015,Auditperson=admin,Audittime=Wed May 13 17:19:32 CST 2015,Completeperson=admin,Completetime=Wed May 13 17:19:32 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10421', 'admin', '2015-05-13 17:23:25', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10422', 'admin', '2015-05-13 17:31:10', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@6d10e921[Id=614,Workorderno=201505130004,Customerno=测试,Customername=测试公司,Callerno=12312321321,Wostatus=yjd,Ordertype=O_SampleReq,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Wed May 13 17:31:10 CST 2015,Dealtime=Wed May 13 17:31:10 CST 2015,Auditperson=admin,Audittime=Wed May 13 17:31:10 CST 2015,Completeperson=admin,Completetime=Wed May 13 17:31:10 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10423', 'admin', '2015-05-13 17:39:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10424', 'admin', '2015-05-13 17:40:34', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10425', 'admin', '2015-05-14 09:49:58', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');
INSERT INTO `logmsg` VALUES ('10426', 'admin', '2015-05-14 09:57:48', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@15f7922c[Id=305,Customerno=<null>,Customername=朗泰恒盛,Custlinkman=刘宁,Custphoneno=18201697259,Postcode=<null>,Emailaddr=,Netherlands=北京,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=牡丹园,Infosource=byhand,Updatetime=Thu May 14 09:57:48 CST 2015,Remark=,Temp1=834799831,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10427', 'admin', '2015-05-14 09:58:14', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Cusphonelist@665149c6[Id=277,Custlinkname=小王,Nolevel=1,Phoneno=1234567890,Remark=<null>,Synstatus=Nsyn,Temp1=<null>,Temp2=<null>,Temp3=<null>,Temp4=<null>,Updatetime=Thu May 14 09:58:14 CST 2015]', 'Cusphonelist');
INSERT INTO `logmsg` VALUES ('10428', 'admin', '2015-05-14 10:03:57', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@195f1988[Id=615,Workorderno=201505140001,Customerno=刘宁,Customername=朗泰恒盛,Callerno=1234,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Thu May 14 10:03:57 CST 2015,Dealtime=Thu May 14 10:03:57 CST 2015,Auditperson=admin,Audittime=Thu May 14 10:03:57 CST 2015,Completeperson=admin,Completetime=Thu May 14 10:03:57 CST 2015,Remark=,Consultcontent=11111,Nextaction=11111,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10429', 'admin', '2015-05-14 10:04:36', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@3ffee6e2[Id=616,Workorderno=201505140002,Customerno=刘宁1,Customername=朗泰恒盛1,Callerno=11111,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Thu May 14 10:04:36 CST 2015,Dealtime=Thu May 14 10:04:36 CST 2015,Auditperson=admin,Audittime=Thu May 14 10:04:36 CST 2015,Completeperson=admin,Completetime=Thu May 14 10:04:36 CST 2015,Remark=,Consultcontent=测试,Nextaction=,Remindflag=Y,Temp1=834799831,Temp2=<null>,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10430', 'admin', '2015-05-14 10:07:27', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Customerinfo@26699872[Id=307,Customerno=<null>,Customername=带头大哥,Custlinkman=777,Custphoneno=,Postcode=<null>,Emailaddr=,Netherlands=,Custtype=<null>,Custlevel=<null>,Custstatus=<null>,Province=<null>,City=<null>,Custaddr=,Infosource=byhand,Updatetime=Thu May 14 10:07:27 CST 2015,Remark=,Temp1=,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=<null>,Temp8=<null>,Salesorg=<null>,Salesoffice=<null>,Salesgroup=<null>,Salesname=<null>,Custarea=<null>]', 'Customerinfo');
INSERT INTO `logmsg` VALUES ('10431', 'admin', '2015-05-14 10:12:11', '0:0:0:0:0:0:0:1', 'LOGTYPE-XZ', 'com.liveneo.plat.hibernate.dao.Workorder@6f878c1f[Id=617,Workorderno=201505140003,Customerno=7771,Customername=带头大哥1,Callerno=222,Wostatus=yjd,Ordertype=O_Amodeldepend,Projecttype=<null>,Workitem=<null>,Proname=<null>,Procode=<null>,Ordersource=<null>,Generatemode=manual,Calltime=Thu May 14 10:12:11 CST 2015,Dealtime=Thu May 14 10:12:11 CST 2015,Auditperson=admin,Audittime=Thu May 14 10:12:11 CST 2015,Completeperson=admin,Completetime=Thu May 14 10:12:11 CST 2015,Remark=,Consultcontent=,Nextaction=,Remindflag=Y,Temp1=,Temp2=Male,Temp3=<null>,Temp4=<null>,Temp5=<null>,Temp6=<null>,Temp7=,Temp8=,Actusername=admin]', 'Workorder');
INSERT INTO `logmsg` VALUES ('10432', 'admin', '2015-05-14 10:24:53', '0:0:0:0:0:0:0:1', 'LOGTYPE-DL', 'login', 'Userinfo');

-- ----------------------------
-- Table structure for menuinfo
-- ----------------------------
DROP TABLE IF EXISTS `menuinfo`;
CREATE TABLE `menuinfo` (
  `PK_MENU` int(11) NOT NULL AUTO_INCREMENT,
  `MENUNAME` varchar(50) DEFAULT NULL,
  `SUPERMENU` int(11) DEFAULT NULL,
  `MENUSEQ` int(11) DEFAULT NULL,
  `ISAVAILABLE` varchar(2) DEFAULT NULL,
  `LINKADDRESS` varchar(200) DEFAULT NULL,
  `TEMP1` varchar(200) DEFAULT NULL,
  `TEMP2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PK_MENU`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menuinfo
-- ----------------------------
INSERT INTO `menuinfo` VALUES ('1', '账号及安全管理', '0', '4', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('2', '基础数据', '45', '1', 'Y', 'ListBdDict.action?changeUrl=Y&pageNum=1&numPerPage=20&onduty=false', 'dictLiNav', null);
INSERT INTO `menuinfo` VALUES ('3', '用户角色与权限', '1', '3', 'Y', 'ListRole.action?changeUrl=Y&pageNum=1&numPerPage=20', 'roleLiNav', null);
INSERT INTO `menuinfo` VALUES ('4', '管理员账号', '46', '2', 'Y', 'ListAdminUserinfo.action?changeUrl=Y&pageNum=1&numPerPage=20', 'adminLiNav', null);
INSERT INTO `menuinfo` VALUES ('5', '菜单管理', '45', '2', 'Y', 'ListMenuinfoMain.action?changeUrl=Y&pageNum=1&numPerPage=20', 'menuinfoLiNav', null);
INSERT INTO `menuinfo` VALUES ('9', '话务平台管理', '0', '3', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('10', '操作日志', '45', '1', 'Y', 'ListLogmsg.action?changeUrl=Y&pageNum=1&numPerPage=20', 'logmsgLiNav', null);
INSERT INTO `menuinfo` VALUES ('22', '工单管理', '0', '2', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('23', '工单办理', '22', '1', 'Y', 'ListWorkorder.action?orderCode=wcl&pageCode=wcl&pageCode=wcl&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderwclLiNav', 'workorderwclLiNav', null);
INSERT INTO `menuinfo` VALUES ('24', '后续处理工单', '22', '2', 'Y', 'ListWorkorder.action?orderCode=dhxcl&pageCode=dhxcl&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderdhxclLiNav', 'workorderdhxclLiNav', null);
INSERT INTO `menuinfo` VALUES ('29', '工厂信息管理', '44', '7', 'N', 'ListWorkstation.action?changeUrl=Y&pageNum=1&numPerPage=20', 'workstationLiNav', null);
INSERT INTO `menuinfo` VALUES ('31', 'IVR留言调听', '9', '1', 'N', 'ListIvrvoice.action?changeUrl=Y&pageNum=1&numPerPage=20', 'ivrvoiceLiNav', null);
INSERT INTO `menuinfo` VALUES ('32', '呼叫记录', '9', '2', 'N', 'ListCalldetail.action?changeUrl=Y&pageNum=1&numPerPage=20', 'calldetailLiNav', null);
INSERT INTO `menuinfo` VALUES ('33', '客户电话号码', '1', '8', 'N', 'ListCusphonelist.action?changeUrl=Y&pageNum=1&numPerPage=20', 'cusphonelistLiNav', null);
INSERT INTO `menuinfo` VALUES ('34', '满意度调查', '9', '5', 'N', 'ListSatscore.action?changeUrl=Y&pageNum=1&numPerPage=20', 'satscoreLiNav', null);
INSERT INTO `menuinfo` VALUES ('37', '工单报表', '0', '4', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('38', '待办工单统计年报', '37', '1', 'Y', 'listYearWclwo.action?fileName=wcl_year_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20', 'yearWclwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('39', '工单分类汇总年报', '37', '4', 'Y', 'listYearStwo.action?fileName=st_year_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20 ', 'yearstwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('40', '待办工单统计月报', '37', '2', 'Y', 'listMonthWclwo.action?fileName=wcl_month_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20', 'monthWclwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('41', '待办工单统计日报', '37', '3', 'Y', 'listDayWclwo.action?fileName=wcl_day_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20 ', 'dayWclwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('42', '工单分类汇总月报', '37', '5', 'Y', 'listMonthStwo.action?fileName=st_month_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20 ', 'monthstwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('43', '工单分类汇总日报', '37', '6', 'Y', 'listDayStwo.action?fileName=st_day_statements.xls&changeUrl=Y&pageNum=1&numPerPage=20 ', 'daystwoLiNav', null);
INSERT INTO `menuinfo` VALUES ('45', '系统管理', '0', '6', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('46', '系统设置', '0', '7', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('48', '工单量和结单率统计', '37', '7', 'Y', 'ListWorkratioReport.action?changeUrl=Y&pageNum=1&numPerPage=20', '', null);
INSERT INTO `menuinfo` VALUES ('49', '技能组指标统计日报', '37', '8', 'N', 'listDskillstat.action?fileName=skill_day_report.xls&changeUrl=Y&pageNum=1&numPerPage=20', 'dskillstatLiNav', null);
INSERT INTO `menuinfo` VALUES ('77', '录音查询', '9', '4', 'Y', 'http://localhost:8080/lcpms/getIpccReport?rt=rec_', 'recordLiNav', null);
INSERT INTO `menuinfo` VALUES ('76', 'IVR话务统计报告', '69', '6', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_ivr', 'his_ivrLiNav', null);
INSERT INTO `menuinfo` VALUES ('75', '技能组话务统计报告', '69', '5', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_skill', 'his_skillLiNav', null);
INSERT INTO `menuinfo` VALUES ('74', '坐席出勤率报告', '69', '4', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_kpi', 'his_kpiLiNav', null);
INSERT INTO `menuinfo` VALUES ('69', 'IPCC报表', '0', '5', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('70', '坐席签入签出报告', '69', '0', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_agent', 'real_agentLiNav', null);
INSERT INTO `menuinfo` VALUES ('71', '坐席通话明细报告', '69', '1', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_call', 'real_callLiNav', null);
INSERT INTO `menuinfo` VALUES ('72', 'IVR呼入放弃明细报告', '69', '2', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=real_ivr', 'real_ivrLiNav', null);
INSERT INTO `menuinfo` VALUES ('73', '坐席话务统计报告', '69', '3', 'Y', 'http://172.16.1.100:8080/lcpms/getIpccReport?rt=his_agent', 'his_agentLiNav', null);
INSERT INTO `menuinfo` VALUES ('25', '客户信息管理', '44', '5', 'Y', 'ListCustomerinfo.action?changeUrl=Y&pageNum=1&numPerPage=20', 'customerLiNav', null);
INSERT INTO `menuinfo` VALUES ('26', '工单查询', '22', '4', 'Y', 'ListWorkorder.action?orderCode=all&pageCode=all&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderallLiNav', 'workorderallLiNav', null);
INSERT INTO `menuinfo` VALUES ('28', '用户账号', '1', '1', 'Y', 'ListUserinfo.action?changeUrl=Y&pageNum=1&numPerPage=20', 'userinfoLiNav', '0,1,2');
INSERT INTO `menuinfo` VALUES ('30', '工单结单', '22', '3', 'Y', 'ListWorkorder.action?orderCode=ywc&pageCode=ywc&changeUrl=Y&pageNum=1&numPerPage=20&tabId=workorderywcLiNav', 'workorderywcLiNav', null);
INSERT INTO `menuinfo` VALUES ('35', '定时任务', '45', '3', 'Y', 'ListJobmsg.action?changeUrl=Y&pageNum=1&numPerPage=20', 'jobmsgLiNav', null);
INSERT INTO `menuinfo` VALUES ('50', '技能组指标统计时报', '37', '9', 'N', 'listHskillstat.action?fileName=skill_hour_report.xls&changeUrl=Y&pageNum=1&numPerPage=20', 'hskillstatLiNav', null);
INSERT INTO `menuinfo` VALUES ('44', '信息管理', '0', '1', 'Y', '', '', null);
INSERT INTO `menuinfo` VALUES ('47', '工作日历', '9', '6', 'N', 'listWorkingcalendar.action?changeUrl=Y&pageNum=1&numPerPage=20', 'workingcalendarLiNav', null);
INSERT INTO `menuinfo` VALUES ('66', '值班管理', '45', '5', 'Y', 'ListBdDuty.action?changeUrl=Y&pageNum=1&numPerPage=20&onduty=true', 'dutyLiNav', null);

-- ----------------------------
-- Table structure for orderdealinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderdealinfo`;
CREATE TABLE `orderdealinfo` (
  `PK_ORDERDEALINFO` int(11) NOT NULL AUTO_INCREMENT,
  `PK_WORKORDER` int(11) NOT NULL,
  `WORKORDERNO` varchar(50) DEFAULT NULL,
  `PROKEYWORD` varchar(50) DEFAULT NULL,
  `PRODEPARTMENT` varchar(20) DEFAULT NULL,
  `DEPDEALMAN` varchar(20) DEFAULT NULL,
  `PRODESC` text,
  `PROREASON` text,
  `PROSITUATION` text,
  `OCCTIME` datetime DEFAULT NULL,
  `DEALTIME` datetime DEFAULT NULL,
  `TYPEINPERSON` varchar(20) DEFAULT NULL,
  `ASSIGNPERSON` varchar(20) DEFAULT NULL,
  `TYPEINTIME` datetime DEFAULT NULL,
  `WOSTATUS` varchar(20) DEFAULT NULL,
  `CREATETYPE` varchar(20) DEFAULT NULL,
  `REMARK` text,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text,
  `TEMP5` text,
  `TEMP6` text,
  PRIMARY KEY (`PK_ORDERDEALINFO`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdealinfo
-- ----------------------------
INSERT INTO `orderdealinfo` VALUES ('81', '521', '201504080001', null, '123', '123', '123', '123', '', '2015-04-09 00:00:00', '2015-04-09 13:44:52', null, '123', '2015-04-09 13:44:52', 'dhxcl', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('82', '561', '201504090001', null, '123', '123', '', '', '', '2015-04-09 00:00:00', '2015-04-09 16:07:52', null, '', '2015-04-09 16:07:52', 'dhxcl', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('83', '561', '201504090001', null, '123', '', '', '', '', null, '2015-04-09 16:13:53', null, '', '2015-04-09 16:13:53', '已完成', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('84', '562', '201504090002', null, '32132131', '', '', '', '', null, '2015-04-09 16:14:05', null, '', '2015-04-09 16:14:05', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('87', '602', '201504160002', null, '开发部', '某某', '测试', '', '', '2015-04-16 00:00:00', '2015-04-16 15:53:11', null, '', '2015-04-16 15:53:11', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('88', '604', '201504160004', null, '测试部', '小李', '测试呼入工单', '', '', '2015-04-16 00:00:00', '2015-04-16 15:59:20', null, '', '2015-04-16 15:59:20', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('89', '606', '201504160006', null, '测试', '测试', '', '', '', '2015-04-16 00:00:00', '2015-04-16 16:52:17', null, '', '2015-04-16 16:52:17', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('90', '607', '201504160007', null, '测试', '测试', '', '', '', '2015-04-16 00:00:00', '2015-04-16 16:55:45', null, '', '2015-04-16 16:55:45', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('91', '609', '201504160009', null, '测试', '测试', '', '', '', '2015-04-16 00:00:00', '2015-04-16 17:00:24', null, '', '2015-04-16 17:00:24', '待后续处理', null, '', null, null, null, null, null, null);
INSERT INTO `orderdealinfo` VALUES ('92', '610', '201504160010', null, '测试外呼', '测试外呼', '', '', '', '2015-04-16 00:00:00', '2015-04-16 17:02:08', null, '', '2015-04-16 17:02:08', '待后续处理', null, '', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for satscore
-- ----------------------------
DROP TABLE IF EXISTS `satscore`;
CREATE TABLE `satscore` (
  `PK_SATSCORE` int(11) NOT NULL AUTO_INCREMENT,
  `UCID` varchar(50) NOT NULL,
  `CALLERNO` varchar(24) DEFAULT NULL,
  `AGENTID` varchar(8) DEFAULT NULL,
  `EXTNO` varchar(8) DEFAULT NULL,
  `SVCTIME` varchar(24) DEFAULT NULL,
  `SVCPOINT` varchar(2) DEFAULT NULL,
  `VDUID` varchar(100) DEFAULT NULL,
  `N1` varchar(100) DEFAULT NULL,
  `N2` varchar(100) DEFAULT NULL,
  `N3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PK_SATSCORE`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of satscore
-- ----------------------------

-- ----------------------------
-- Table structure for uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `pk_upfile` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) DEFAULT NULL,
  `filetype` varchar(20) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_upfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `PK_USERINFO` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) DEFAULT NULL,
  `USERPWD` varchar(50) DEFAULT NULL,
  `ISADMIN` varchar(10) DEFAULT NULL,
  `REMARK` varchar(50) DEFAULT NULL,
  `PK_DEPARTMENT` int(11) DEFAULT NULL,
  `PK_WORKSTATION` int(11) DEFAULT NULL,
  `FACTORY` varchar(50) DEFAULT NULL,
  `AGENTNO` varchar(20) DEFAULT NULL,
  `CTIPWD` varchar(20) DEFAULT NULL,
  `EXTNO` varchar(50) DEFAULT NULL,
  `AGENTNAME` varchar(50) DEFAULT NULL,
  `AGENTEMAIL` varchar(50) DEFAULT NULL,
  `PHONENO` varchar(50) DEFAULT NULL,
  `AGENTSTATUS` varchar(50) DEFAULT NULL,
  `LASTLOGINTIME` datetime DEFAULT NULL,
  `AGENTTYPE` varchar(10) DEFAULT NULL,
  `POSITION` varchar(50) DEFAULT NULL,
  `USERSTATUS` varchar(50) DEFAULT NULL,
  `DELFLAG` varchar(50) DEFAULT NULL,
  `CTIADDR` varchar(100) DEFAULT NULL,
  `CTIADDRBAK` varchar(100) DEFAULT NULL,
  `AUTHADDR` varchar(100) DEFAULT NULL,
  `AUTHTYPE` varchar(50) DEFAULT NULL,
  `TEMP1` varchar(100) DEFAULT NULL,
  `TEMP2` varchar(100) DEFAULT NULL,
  `TEMP3` varchar(100) DEFAULT NULL,
  `TEMP4` varchar(100) DEFAULT NULL,
  `TEMP5` varchar(100) DEFAULT NULL,
  `AUTOREPORT` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PK_USERINFO`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', 'ywrTAw4Wmq==', 'true', '', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('2', 'dadmin', 'BgL2zw5LB0aYmde1', 'true', '', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Y', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('23', 'liuning', '\r\n\r\n\r\n\r\nmZaWmq==', 'false', '', null, null, '', '1006', '1234', '3001', 'liuning', '', '', null, null, 'OAgent', '', 'Y', null, '172.16.5.65', '', '', 'Batch', '', '1001=1;', null, null, null, null);
INSERT INTO `userinfo` VALUES ('29', '123', 'mJeZmJeZ', 'false', '', null, null, '', '213', '213213', '123', '123', '', '', null, null, '', '', 'Y', null, '', '', '', 'Batch', '', '', null, null, null, null);
INSERT INTO `userinfo` VALUES ('30', '4001', 'mtiZna==', 'false', '', null, null, '', '4001', '1234', '4001', '4001', '', '', null, null, 'OAgent', '', 'Y', null, '172.16.1.100', '', '', 'Batch', '', '1001=1;', null, null, null, null);

-- ----------------------------
-- Table structure for workingcalendar
-- ----------------------------
DROP TABLE IF EXISTS `workingcalendar`;
CREATE TABLE `workingcalendar` (
  `PK_WORKINGCALENDAR` int(11) NOT NULL AUTO_INCREMENT,
  `WORKINGDATE` varchar(10) NOT NULL,
  `ISVACATION` varchar(1) NOT NULL,
  `REAMRK` varchar(100) DEFAULT NULL,
  `N1` varchar(20) DEFAULT NULL,
  `N2` varchar(20) DEFAULT NULL,
  `N3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PK_WORKINGCALENDAR`)
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workingcalendar
-- ----------------------------

-- ----------------------------
-- Table structure for workorder
-- ----------------------------
DROP TABLE IF EXISTS `workorder`;
CREATE TABLE `workorder` (
  `PK_WORKORDER` int(11) NOT NULL AUTO_INCREMENT,
  `PK_CUSTOMERINFO` int(11) DEFAULT NULL,
  `WORKORDERNO` varchar(50) DEFAULT NULL,
  `CUSTOMERNO` varchar(50) DEFAULT NULL,
  `CUSTOMERNAME` varchar(100) DEFAULT NULL,
  `CALLERNO` varchar(20) DEFAULT NULL,
  `WOSTATUS` varchar(20) DEFAULT NULL,
  `ORDERTYPE` varchar(20) DEFAULT NULL,
  `PROJECTTYPE` varchar(20) DEFAULT NULL,
  `WORKITEM` varchar(100) DEFAULT NULL,
  `PRONAME` varchar(50) DEFAULT NULL,
  `PROCODE` varchar(50) DEFAULT NULL,
  `ORDERSOURCE` varchar(10) DEFAULT NULL,
  `GENERATEMODE` varchar(20) DEFAULT NULL,
  `CALLTIME` datetime DEFAULT NULL,
  `PK_USERINFO` int(11) NOT NULL,
  `DEALTIME` datetime DEFAULT NULL,
  `AUDITPERSON` varchar(20) DEFAULT NULL,
  `AUDITTIME` datetime DEFAULT NULL,
  `COMPLETEPERSON` varchar(20) DEFAULT NULL,
  `COMPLETETIME` datetime DEFAULT NULL,
  `REMARK` text,
  `CONSULTCONTENT` text,
  `NEXTACTION` text,
  `REMINDFLAG` varchar(10) DEFAULT NULL,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text,
  `TEMP5` text,
  `TEMP6` text,
  `TEMP7` text,
  `TEMP8` text,
  `ACTUSERNAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PK_WORKORDER`),
  KEY `FK_ORDER_CUST` (`PK_CUSTOMERINFO`) USING BTREE,
  KEY `FK_ORDER_USER` (`PK_USERINFO`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=618 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workorder
-- ----------------------------
INSERT INTO `workorder` VALUES ('615', '305', '201505140001', '刘宁', '朗泰恒盛', '1234', 'yjd', 'O_Amodeldepend', null, null, null, null, null, 'manual', '2015-05-14 10:03:57', '1', '2015-05-14 11:03:57', 'admin', '2015-05-14 10:03:57', 'admin', '2015-05-14 10:03:57', '', '11111', '11111', 'Y', '834799831', null, null, null, null, null, '', '', 'admin');
INSERT INTO `workorder` VALUES ('616', '306', '201505140002', '刘宁1', '朗泰恒盛1', '11111', 'yjd', 'O_Amodeldepend', null, null, null, null, null, 'manual', '2015-05-14 10:04:36', '1', '2015-05-14 10:04:36', 'admin', '2015-05-14 10:04:36', 'admin', '2015-05-14 10:04:36', '', '测试', '', 'Y', '834799831', null, null, null, null, null, '', '', 'admin');
INSERT INTO `workorder` VALUES ('617', '308', '201505140003', '7771', '带头大哥1', '222', 'yjd', 'O_Amodeldepend', null, null, null, null, null, 'manual', '2015-05-14 10:12:11', '1', '2015-05-14 10:12:11', 'admin', '2015-05-14 10:12:11', 'admin', '2015-05-14 10:12:11', '', '', '', 'Y', '', 'Male', null, null, null, null, '', '', 'admin');

-- ----------------------------
-- Table structure for workstation
-- ----------------------------
DROP TABLE IF EXISTS `workstation`;
CREATE TABLE `workstation` (
  `PK_WORKSTATION` int(11) NOT NULL AUTO_INCREMENT,
  `FACTORYNAMECN` varchar(50) DEFAULT NULL,
  `FACTORYNAMEEN` varchar(50) DEFAULT NULL,
  `PHONENO` varchar(30) DEFAULT NULL,
  `WSLINKMAN` varchar(50) DEFAULT NULL,
  `WSEMAIL` varchar(50) DEFAULT NULL,
  `WSADDR` text,
  `REMARK` text,
  `TEMP1` text,
  `TEMP2` text,
  `TEMP3` text,
  `TEMP4` text,
  PRIMARY KEY (`PK_WORKSTATION`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workstation
-- ----------------------------
