/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : esys

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-22 16:56:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `scene_comment`
-- ----------------------------
DROP TABLE IF EXISTS `scene_comment`;
CREATE TABLE `scene_comment` (
  `id` varchar(50) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `guest_id` varchar(50) DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbeh8m8nvt5ggfegr7n1nwvbcr` (`guest_id`),
  KEY `FKljj9w88ywm199ragao4hhskvc` (`scene_id`),
  CONSTRAINT `FKbeh8m8nvt5ggfegr7n1nwvbcr` FOREIGN KEY (`guest_id`) REFERENCES `scene_guest` (`id`),
  CONSTRAINT `FKljj9w88ywm199ragao4hhskvc` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_food`
-- ----------------------------
DROP TABLE IF EXISTS `scene_food`;
CREATE TABLE `scene_food` (
  `id` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8t14y0syh13v77wqa3of4ievk` (`scene_id`),
  CONSTRAINT `FK8t14y0syh13v77wqa3of4ievk` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_food
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_guest`
-- ----------------------------
DROP TABLE IF EXISTS `scene_guest`;
CREATE TABLE `scene_guest` (
  `id` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `headImage` varchar(200) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf6ajkfmtbdvo1mfokvw60o8cy` (`user_id`),
  CONSTRAINT `FKf6ajkfmtbdvo1mfokvw60o8cy` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_guest
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `scene_hotel`;
CREATE TABLE `scene_hotel` (
  `id` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk7gbtoxovbq7xgybl4gj6xnni` (`scene_id`),
  CONSTRAINT `FKk7gbtoxovbq7xgybl4gj6xnni` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_hotel
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_info`
-- ----------------------------
DROP TABLE IF EXISTS `scene_info`;
CREATE TABLE `scene_info` (
  `id` varchar(50) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `open` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_info
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_site`
-- ----------------------------
DROP TABLE IF EXISTS `scene_site`;
CREATE TABLE `scene_site` (
  `id` varchar(50) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `open` varchar(200) DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK57efxd22cwiclnxpq9ljxd1yt` (`scene_id`),
  CONSTRAINT `FK57efxd22cwiclnxpq9ljxd1yt` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_site
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_staff`
-- ----------------------------
DROP TABLE IF EXISTS `scene_staff`;
CREATE TABLE `scene_staff` (
  `id` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `headImage` varchar(200) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `position` varchar(2) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm7ok0e53ckqmdjiiic4si5ah9` (`scene_id`),
  KEY `FKp7t5nji81j1avbbmypqpds26s` (`user_id`),
  CONSTRAINT `FKm7ok0e53ckqmdjiiic4si5ah9` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`),
  CONSTRAINT `FKp7t5nji81j1avbbmypqpds26s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `scene_ticket`;
CREATE TABLE `scene_ticket` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `scene_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqy28ev5ovr77cdf483qqkyj28` (`scene_id`),
  CONSTRAINT `FKqy28ev5ovr77cdf483qqkyj28` FOREIGN KEY (`scene_id`) REFERENCES `scene_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `scene_ticket_record`
-- ----------------------------
DROP TABLE IF EXISTS `scene_ticket_record`;
CREATE TABLE `scene_ticket_record` (
  `id` varchar(50) NOT NULL,
  `price` double DEFAULT NULL,
  `sellTime` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `ticket_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1yv1eimprol7nopoyjgtiv8u7` (`staff_id`),
  KEY `FK77d8xhrc6n8xgglefrycde456` (`ticket_id`),
  CONSTRAINT `FK1yv1eimprol7nopoyjgtiv8u7` FOREIGN KEY (`staff_id`) REFERENCES `scene_staff` (`id`),
  CONSTRAINT `FK77d8xhrc6n8xgglefrycde456` FOREIGN KEY (`ticket_id`) REFERENCES `scene_ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene_ticket_record
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `dicType` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `val` varchar(50) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('1', null, 'menutype', 'URL', 'url', '0');
INSERT INTO `sys_dictionary` VALUES ('2', null, 'menutype', '函数', 'function', '0');
INSERT INTO `sys_dictionary` VALUES ('3', null, 'sex', '男', '1', '0');
INSERT INTO `sys_dictionary` VALUES ('4', 'nv1---', 'sex', '女', '2', '1');
INSERT INTO `sys_dictionary` VALUES ('5', null, 'position', '管理者', '1', null);
INSERT INTO `sys_dictionary` VALUES ('6', null, 'position', '普通人员', '2', null);

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(50) NOT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `no` varchar(30) DEFAULT NULL,
  `resource` varchar(200) DEFAULT NULL,
  `resourceType` varchar(200) DEFAULT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2jrf4gb0gjqi8882gxytpxnhe` (`parent_id`),
  CONSTRAINT `FK2jrf4gb0gjqi8882gxytpxnhe` FOREIGN KEY (`parent_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0cdd8061-8aae-4429-a4e4-ffd199d2c8cb', '', '评论', null, 'page/comment', 'url', '1eb7b95c-b778-49e7-a498-6a3c32fbb6c5');
INSERT INTO `sys_menu` VALUES ('1', null, '系统管理', '00', '', null, null);
INSERT INTO `sys_menu` VALUES ('1ab1a6b3-cffd-4af6-a540-33e67f4b175c', '', '游客信息', null, 'page/guest', 'url', '1eb7b95c-b778-49e7-a498-6a3c32fbb6c5');
INSERT INTO `sys_menu` VALUES ('1eb7b95c-b778-49e7-a498-6a3c32fbb6c5', '', '游客', null, '', '', null);
INSERT INTO `sys_menu` VALUES ('2', null, '用户', '0010', 'page/user', 'url', '1');
INSERT INTO `sys_menu` VALUES ('3', null, '菜单', '0001', 'page/menu', 'url', '1');
INSERT INTO `sys_menu` VALUES ('4', null, '数据字典', '0090', 'Sys.DictionaryGrid', 'function', '1');
INSERT INTO `sys_menu` VALUES ('414359ce-2c0d-4dc3-b6d3-c86c9c406706', '', '人员信息', null, 'page/staff-form', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('4e906889-6a3c-46b9-ae10-6eba6af84109', '', '景区', null, 'page/scene', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('5', null, '角色', '0030', 'page/role', 'url', '1');
INSERT INTO `sys_menu` VALUES ('52c5b018-e915-467f-bd4f-7c6d8a2c91e3', '', '门票', null, 'page/ticket', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('692911f1-631d-48c7-9eaf-89054c67abe3', '', '景区管理', null, '', '', null);
INSERT INTO `sys_menu` VALUES ('6cc5e162-330c-4d81-b510-422893cba1df', '', '景点', null, 'page/site', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('a414f285-c077-4fd1-aa90-c1fe328d35f1', '', '住宿', null, 'page/hotel', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('af1eabe4-658e-4fcf-ac1a-561544d3ffcd', '', '人员', null, 'page/staff', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('d01cc4f6-c984-4269-ab1c-c2dfaadb4a36', '', '美食', null, 'page/food', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('d915b585-37a7-4ffc-be7e-5608ff5918e6', '', '售票记录', null, 'page/ticket-record-staff', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');
INSERT INTO `sys_menu` VALUES ('ea8a626c-3c26-4830-ba75-0b0371036a21', '', '所有售票记录', null, 'page/ticket-record-manager', 'url', '692911f1-631d-48c7-9eaf-89054c67abe3');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('8a873abe61f8cd350161f8d294510000', '测试', 'test', '');
INSERT INTO `sys_role` VALUES ('8a873ae6624c4c6f01624c576c660000', '', '游客', '');
INSERT INTO `sys_role` VALUES ('8a873ae6624c4c6f01624c582bad0001', '', '工作人员', '');
INSERT INTO `sys_role` VALUES ('8a873ae6624c4c6f01624c58c7470002', '', '管理者', '');
INSERT INTO `sys_role` VALUES ('admin', 'admin3', 'admin', '');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(50) NOT NULL,
  `menu_id` varchar(50) NOT NULL,
  KEY `FKf3mud4qoc7ayew8nml4plkevo` (`menu_id`),
  KEY `FKkeitxsgxwayackgqllio4ohn5` (`role_id`),
  CONSTRAINT `FKf3mud4qoc7ayew8nml4plkevo` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`),
  CONSTRAINT `FKkeitxsgxwayackgqllio4ohn5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('admin', '3');
INSERT INTO `sys_role_menu` VALUES ('admin', '4');
INSERT INTO `sys_role_menu` VALUES ('8a873abe61f8cd350161f8d294510000', '2');
INSERT INTO `sys_role_menu` VALUES ('8a873abe61f8cd350161f8d294510000', '3');
INSERT INTO `sys_role_menu` VALUES ('8a873abe61f8cd350161f8d294510000', '4');
INSERT INTO `sys_role_menu` VALUES ('8a873abe61f8cd350161f8d294510000', '5');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c576c660000', '0cdd8061-8aae-4429-a4e4-ffd199d2c8cb');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c576c660000', '1ab1a6b3-cffd-4af6-a540-33e67f4b175c');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', '414359ce-2c0d-4dc3-b6d3-c86c9c406706');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', '4e906889-6a3c-46b9-ae10-6eba6af84109');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', '52c5b018-e915-467f-bd4f-7c6d8a2c91e3');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', '6cc5e162-330c-4d81-b510-422893cba1df');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', 'a414f285-c077-4fd1-aa90-c1fe328d35f1');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', 'd01cc4f6-c984-4269-ab1c-c2dfaadb4a36');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c582bad0001', 'd915b585-37a7-4ffc-be7e-5608ff5918e6');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', '414359ce-2c0d-4dc3-b6d3-c86c9c406706');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', '4e906889-6a3c-46b9-ae10-6eba6af84109');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', '52c5b018-e915-467f-bd4f-7c6d8a2c91e3');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', '6cc5e162-330c-4d81-b510-422893cba1df');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', 'a414f285-c077-4fd1-aa90-c1fe328d35f1');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', 'af1eabe4-658e-4fcf-ac1a-561544d3ffcd');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', 'd01cc4f6-c984-4269-ab1c-c2dfaadb4a36');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', 'd915b585-37a7-4ffc-be7e-5608ff5918e6');
INSERT INTO `sys_role_menu` VALUES ('8a873ae6624c4c6f01624c58c7470002', 'ea8a626c-3c26-4830-ba75-0b0371036a21');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(50) NOT NULL,
  `loginName` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `headImage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '123', null, null);
INSERT INTO `sys_user` VALUES ('8a873abe61fa56810161fa56efac0000', 'test', '123', '2018-03-06 16:04:16', null);
INSERT INTO `sys_user` VALUES ('8a873ae6624c5add01624c5b69cb0000', 'guest', '123', '2018-03-22 14:18:02', null);
INSERT INTO `sys_user` VALUES ('8a873ae6624c5add01624c5bebf30001', 'manager', '123', '2018-03-22 14:18:35', null);
INSERT INTO `sys_user` VALUES ('8a873ae6624c5add01624c5c2c670002', 'employee', '123', '2018-03-22 14:18:51', null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  KEY `FKhh52n8vd4ny9ff4x9fb8v65qx` (`role_id`),
  KEY `FKb40xxfch70f5qnyfw8yme1n1s` (`user_id`),
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', 'admin');
INSERT INTO `sys_user_role` VALUES ('8a873ae6624c5add01624c5b69cb0000', '8a873ae6624c4c6f01624c576c660000');
INSERT INTO `sys_user_role` VALUES ('8a873ae6624c5add01624c5bebf30001', '8a873ae6624c4c6f01624c58c7470002');
INSERT INTO `sys_user_role` VALUES ('8a873ae6624c5add01624c5c2c670002', '8a873ae6624c4c6f01624c582bad0001');
