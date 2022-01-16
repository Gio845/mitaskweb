/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB LOCAL
 Source Server Type    : MariaDB
 Source Server Version : 100332
 Source Host           : localhost:3306
 Source Schema         : mitaswb

 Target Server Type    : MariaDB
 Target Server Version : 100332
 File Encoding         : 65001

 Date: 14/12/2021 23:12:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
BEGIN;
INSERT INTO `auth_assignment` VALUES ('Normal', 3, 1637980715);
INSERT INTO `auth_assignment` VALUES ('Normal', 5, 1637652155);
INSERT INTO `auth_assignment` VALUES ('Normal', 9, 1638579746);
INSERT INTO `auth_assignment` VALUES ('Normal', 10, 1638580065);
COMMIT;

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `auth_item_ibfk_2` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
BEGIN;
INSERT INTO `auth_item` VALUES ('/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//controller', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//crud', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//extension', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//form', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//model', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('//module', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/asset/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/asset/compress', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/asset/template', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/cache/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush-all', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/cache/flush-schema', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/cache/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/*', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/create', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/delete', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/index', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/update', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/dashboard/view', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/*', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/*', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/index', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/debug/default/view', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/*', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/*', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/create', 3, NULL, NULL, NULL, 1637648765, 1637648765, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/delete', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/index', 3, NULL, NULL, NULL, 1637648765, 1637648765, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/update', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/fecha/view', 3, NULL, NULL, NULL, 1637648765, 1637648765, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/load', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/fixture/unload', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/action', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gii/default/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/*', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/export/*', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/gridview/export/download', 3, NULL, NULL, NULL, 1510367287, 1510367287, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/*', 3, NULL, NULL, NULL, 1637648763, 1637648763, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/create', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/delete', 3, NULL, NULL, NULL, 1637648763, 1637648763, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/index', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/update', 3, NULL, NULL, NULL, 1637648763, 1637648763, NULL);
INSERT INTO `auth_item` VALUES ('/grupo/view', 3, NULL, NULL, NULL, 1637648764, 1637648764, NULL);
INSERT INTO `auth_item` VALUES ('/hello/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/hello/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/help/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/help/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/message/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/message/config', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/message/extract', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/down', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/history', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/mark', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/new', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/redo', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/to', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/migrate/up', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/site/*', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/about', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/captcha', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/contact', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/dash', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/error', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/index', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/login', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/logout', 3, NULL, NULL, NULL, 1510367286, 1510367286, NULL);
INSERT INTO `auth_item` VALUES ('/site/submenu', 3, NULL, NULL, NULL, 1637648763, 1637648763, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/*', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/create', 3, NULL, NULL, NULL, 1637648762, 1637648762, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/delete', 3, NULL, NULL, NULL, 1637648762, 1637648762, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/index', 3, NULL, NULL, NULL, 1637648763, 1637648763, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/update', 3, NULL, NULL, NULL, 1637648762, 1637648762, NULL);
INSERT INTO `auth_item` VALUES ('/tarea/view', 3, NULL, NULL, NULL, 1637648762, 1637648762, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/login', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/logout', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/auth/registration', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/permission/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/role/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/*', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/change-password', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/create', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/delete', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/index', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/update', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/user-management/user/view', 3, NULL, NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/*', 3, NULL, NULL, NULL, 1637648760, 1637648760, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/create', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/delete', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/index', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/update', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('/usuario/view', 3, NULL, NULL, NULL, 1637648761, 1637648761, NULL);
INSERT INTO `auth_item` VALUES ('Admin', 1, 'Admin', NULL, NULL, 1426062189, 1426062189, NULL);
INSERT INTO `auth_item` VALUES ('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1426062189, 1426062189, 'userCommonPermissions');
INSERT INTO `auth_item` VALUES ('changeUserPassword', 2, 'Change user password', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('commonPermission', 2, 'Common permission', NULL, NULL, 1426062188, 1426062188, NULL);
INSERT INTO `auth_item` VALUES ('createUsers', 2, 'Create users', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('deleteUsers', 2, 'Delete users', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('editUserEmail', 2, 'Edit user email', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('editUsers', 2, 'Edit users', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('Normal', 1, 'Normal', NULL, NULL, 1637648600, 1637649119, NULL);
INSERT INTO `auth_item` VALUES ('PermisosCrearActualizarUsuario', 2, 'Permisos de Crear y Actualizar Usuario', NULL, NULL, 1637648740, 1637648740, 'GrupoPermisosUsuarios');
INSERT INTO `auth_item` VALUES ('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserEmail', 2, 'View user email', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserRoles', 2, 'View user roles', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUsers', 2, 'View users', NULL, NULL, 1426062189, 1426062189, 'userManagement');
INSERT INTO `auth_item` VALUES ('viewVisitLog', 2, 'View visit log', NULL, NULL, 1426062189, 1426062189, 'userManagement');
COMMIT;

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
BEGIN;
INSERT INTO `auth_item_child` VALUES ('Admin', 'assignRolesToUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeOwnPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeUserPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'createUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'deleteUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'editUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set-roles');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUserRoles');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('changeOwnPassword', '/user-management/auth/change-own-password');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', '/user-management/user/change-password');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('createUsers', '/user-management/user/create');
INSERT INTO `auth_item_child` VALUES ('createUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/bulk-delete');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/delete');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('editUserEmail', 'viewUserEmail');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-activate');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-deactivate');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/update');
INSERT INTO `auth_item_child` VALUES ('editUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('Normal', 'PermisosCrearActualizarUsuario');
INSERT INTO `auth_item_child` VALUES ('PermisosCrearActualizarUsuario', '/*');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/index');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/view');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/index');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/view');
COMMIT;

-- ----------------------------
-- Table structure for auth_item_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_group`;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_item_group` VALUES ('GrupoPermisosUsuarios', 'Grupo de Permisos de Usuarios', 1637648705, 1637648705);
INSERT INTO `auth_item_group` VALUES ('userCommonPermissions', 'User common permission', 1426062189, 1426062189);
INSERT INTO `auth_item_group` VALUES ('userManagement', 'User management', 1426062189, 1426062189);
COMMIT;

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fecha
-- ----------------------------
DROP TABLE IF EXISTS `fecha`;
CREATE TABLE `fecha` (
  `fec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `fec_fecha` datetime NOT NULL COMMENT 'Fecha',
  `fec_fktarea` int(11) NOT NULL COMMENT 'Tarea',
  PRIMARY KEY (`fec_id`),
  KEY `fec_fktarea` (`fec_fktarea`),
  CONSTRAINT `fecha_ibfk_1` FOREIGN KEY (`fec_fktarea`) REFERENCES `tarea` (`tar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fecha
-- ----------------------------
BEGIN;
INSERT INTO `fecha` VALUES (1, '2021-11-25 09:11:00', 1);
INSERT INTO `fecha` VALUES (2, '2021-11-25 00:00:00', 1);
INSERT INTO `fecha` VALUES (3, '2021-11-01 00:00:00', 1);
INSERT INTO `fecha` VALUES (4, '2021-11-25 00:00:00', 4);
INSERT INTO `fecha` VALUES (5, '2021-11-25 00:00:00', 4);
COMMIT;

-- ----------------------------
-- Table structure for grupo
-- ----------------------------
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo` (
  `gru_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `gru_nombre` varchar(30) NOT NULL COMMENT 'Nombre',
  `gru_descripcion` text DEFAULT NULL COMMENT 'Descripción',
  `gru_fkusuario` int(11) NOT NULL COMMENT 'Usuario',
  PRIMARY KEY (`gru_id`),
  KEY `gru_fkusuario` (`gru_fkusuario`),
  CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`gru_fkusuario`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of grupo
-- ----------------------------
BEGIN;
INSERT INTO `grupo` VALUES (1, 'Entrenamiento', 'aaaa', 3);
INSERT INTO `grupo` VALUES (4, 'Entretenimiento', 'Esto es para juegos o diversion', 1);
INSERT INTO `grupo` VALUES (6, 'Vida cotidiana', 'Son todas las tareas de mi vida cotidiana', 2);
INSERT INTO `grupo` VALUES (8, 'asd', 'asd', 2);
COMMIT;

-- ----------------------------
-- Table structure for tarea
-- ----------------------------
DROP TABLE IF EXISTS `tarea`;
CREATE TABLE `tarea` (
  `tar_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `tar_nombre` varchar(30) NOT NULL COMMENT 'Nombre',
  `tar_descripcion` text DEFAULT NULL COMMENT 'Descripción',
  `tar_registro` datetime NOT NULL COMMENT 'Registro',
  `tar_estatus` tinyint(1) NOT NULL COMMENT 'Estatus',
  `tar_privacidad` tinyint(1) NOT NULL COMMENT 'Privacidad',
  `tar_fkgrupo` int(11) NOT NULL COMMENT 'Grupo',
  PRIMARY KEY (`tar_id`),
  KEY `tar_fkgrupo` (`tar_fkgrupo`),
  CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`tar_fkgrupo`) REFERENCES `grupo` (`gru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tarea
-- ----------------------------
BEGIN;
INSERT INTO `tarea` VALUES (1, 'Hola', 'Protocolo', '2021-11-01 14:00:46', 1, 1, 1);
INSERT INTO `tarea` VALUES (4, 'Jorge - Yuli', 'Boda 25/12/25', '2021-11-01 14:00:46', 1, 1, 1);
INSERT INTO `tarea` VALUES (8, 'Hacer tarea', 'Holi - Boda ', '2021-11-01 14:00:46', 1, 1, 1);
INSERT INTO `tarea` VALUES (11, 'Prueba ', 'Eliminado', '2021-11-30 00:00:00', 0, 0, 4);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `superadmin` smallint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'superadmin', 'kz2px152FAWlkHbkZoCiXgBAd-S8SSjF', '$2y$13$MhlYe12xkGFnSeK0sO2up.Y9kAD9Ct6JS1i9VLP7YAqd1dFsSylz2', NULL, 1, 1, 1426062188, 1426062188, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (3, 'giovanni@gmail.com', '93Rwc1W4lV9j09VoQF-EtcDKWlWEDdix', '$2y$13$33XSNo6h7AoGUAaAuO9qN.AB1rFrT6He4oNsJM6xRQaSPaKvKMHgG', NULL, 1, 0, 1637384567, 1638577749, '192.168.1.74', '', 'giovanni@gmail.com', 0);
INSERT INTO `user` VALUES (5, 'jorge@gmail.com', 'XxQg_Fi0Gj4IkbtDn_HTScKOJGv4Tcwm', '$2y$13$VbIu137F/oAxLevZHeytLuBhWDppOXuD/7MpgHZ9fxq7aLWZYqNd2', NULL, 1, 0, 1637652154, 1637652154, '192.168.1.76', '', 'jorge@gmail.com', 1);
INSERT INTO `user` VALUES (9, 'a@gmail.com', '0IHMmpAjG29ATy9NV1LtG4QvwJckxnvA', '$2y$13$6eE0BCD21orpbn5AWLK0ceiZm.1Y8Kvm1gylK/O7G6FaslfPyHegW', NULL, 1, 0, 1638579746, 1638579746, '192.168.1.78', '', 'a@gmail.com', 1);
INSERT INTO `user` VALUES (10, 'b@gmail.com', 'j5Bo4PZEx-tvOQ79PahFbjRighPORTIn', '$2y$13$BfFKEz8JHK7G1vMFwH30hOE8cFuvEoO8Z5dh/.HVbNw4VD4zHM03q', NULL, 1, 0, 1638580065, 1638580065, '192.168.1.78', '', 'b@gmail.com', 1);
COMMIT;

-- ----------------------------
-- Table structure for user_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `user_visit_log`;
CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_visit_log
-- ----------------------------
BEGIN;
INSERT INTO `user_visit_log` VALUES (1, '619800a991922', '192.168.1.74', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637351593, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (2, '619809c7e46d1', '192.168.1.74', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637353927, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (3, '61982e273bc17', '192.168.1.74', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637363239, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (4, '6198789c95788', '192.168.1.74', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637382300, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (5, '6198b48630e60', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637397638, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (6, '6198b9676902b', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637398887, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (7, '619c7451457a8', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637643345, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (8, '619cf6f44cd73', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637676788, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (9, '619d34ada76c3', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637692589, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (10, '619f0e8b6b95c', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637813899, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (11, '619fa7542f651', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637853012, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (12, '619fce8016736', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637863040, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (13, '61a05ca06f4e9', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.34', 1, 1637899424, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (14, '61a06675e9c30', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.34', 1, 1637901942, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (15, '61a06680a37f8', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637901952, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (16, '61a071404df9d', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637904704, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (17, '61a126cb359c6', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637951179, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (18, '61a126cc82ba6', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1637951180, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (19, '61a1333caeb05', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.34', 1, 1637954365, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (20, '61a1993cf2031', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637980476, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (21, '61a19a166e9fc', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637980694, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (22, '61a19ab410656', '192.168.1.76', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1637980852, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (23, '61a1b891714bf', '192.168.1.76', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1637988497, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (24, '61a1b90a73e99', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1637988618, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (25, '61a1b96321665', '192.168.1.76', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1637988707, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (26, '61a277d77c8ff', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638037463, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (27, '61a277e7c8519', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638037479, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (28, '61a27c7f7b981', '192.168.1.76', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638038655, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (29, '61a3c1f6ebdb6', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638121974, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (30, '61a42f334921a', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638149939, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (31, '61a42f8c90a7a', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638150028, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (32, '61a431f4e73de', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638150644, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (33, '61a432255f3ef', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638150693, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (34, '61a4348c2b9c5', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638151308, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (35, '61a435dbe26b4', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638151643, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (36, '61a435df187b9', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638151647, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (37, '61a4429a8bbe7', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638154906, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (38, '61a4482f14f66', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638156335, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (39, '61a44b527cd6b', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.34', 1, 1638157138, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (40, '61a5362463df7', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638217252, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (41, '61a5436758c3c', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638220647, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (42, '61a58a8d2cbc3', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638238861, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (43, '61a58b1438552', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638238996, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (44, '61a5acb40067f', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.34', 1, 1638247604, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (45, '61a5ad87b7433', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638247815, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (46, '61a5adcca46ab', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638247884, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (47, '61a5adf6816ea', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638247926, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (48, '61a5ae1a48d01', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638247962, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (49, '61a5b0602a4c5', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638248544, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (50, '61a5b14a4fa86', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 1, 1638248778, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (51, '61a6296ee13a7', '127.0.0.1', 'es', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 5, 1638279534, 'Chrome', 'Windows');
INSERT INTO `user_visit_log` VALUES (52, '61a6aa1317962', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638312467, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (53, '61a6cf2db34aa', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638321965, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (54, '61a6cf8b8a853', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638322059, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (55, '61a7f58007503', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638397312, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (56, '61a7fbc088842', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638398912, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (57, '61a7fbe25d8b3', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638398946, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (58, '61a7ffa5c11e6', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638399909, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (59, '61a8042c6dede', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 5, 1638401068, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (60, '61a8043d7b907', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638401085, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (61, '61a8ea23b7059', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638459939, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (62, '61a9663e5149b', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638491710, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (63, '61a96ce14ba0b', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638493409, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (64, '61a96d21c7257', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638493473, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (65, '61a9716c4b78b', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638494572, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (66, '61a9742b726bb', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638495275, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (67, '61a97e8854a5d', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638497928, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (68, '61a97f368bcfe', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638498102, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (69, '61a9932742b4e', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638503207, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (70, '61a995096f5f8', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638503689, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (71, '61a996eb03a18', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638504171, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (72, '61a9970844219', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638504200, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (73, '61aa41f4dcafc', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638547956, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (74, '61aa493751c52', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638549815, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (75, '61aa50447bf32', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638551620, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (76, '61aa571a523f1', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638553370, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (77, '61aa5d70d83cc', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638554992, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (78, '61aa67fd16be3', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638557693, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (79, '61aaac068ccdb', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638575110, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (80, '61aaac54a4d61', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638575188, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (81, '61aaac8ed20a2', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638575246, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (82, '61aaafc94de68', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638576073, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (83, '61aaafe53235e', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638576101, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (84, '61aab340193d9', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638576960, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (85, '61aab358885b0', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638576984, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (86, '61aab360adc68', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638576992, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (87, '61aab3a681e95', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638577062, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (88, '61aab52017a7c', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577440, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (89, '61aab57dde11f', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638577533, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (90, '61aab597c497f', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577559, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (91, '61aab5bc58381', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577596, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (92, '61aab5f62b1be', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577654, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (93, '61aab61d86cda', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638577693, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (94, '61aab62a9659c', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577706, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (95, '61aab64143f72', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577729, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (96, '61aab6600a4c2', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577760, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (97, '61aab74bdee95', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638577995, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (98, '61aabad9abdfa', '192.168.1.78', 'es', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638578905, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (99, '61aabe62cbbd3', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 9, 1638579810, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (100, '61aabe91c3b73', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 9, 1638579857, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (101, '61aabeea6cabb', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 9, 1638579946, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (102, '61aabef895edb', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 9, 1638579960, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (103, '61aabf0916964', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 9, 1638579977, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (104, '61aabf164aa23', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638579990, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (105, '61aabf6ac6ad3', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 10, 1638580074, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (106, '61aabf7ac7df3', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 10, 1638580090, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (107, '61aba57df35a4', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638638973, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (108, '61aba5ef8b91b', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638639087, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (109, '61abb343ba3d5', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638642499, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (110, '61abb4212f911', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638642721, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (111, '61abb51bad790', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638642971, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (112, '61abc03d4b987', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638645821, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (113, '61abc1447f08f', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638646084, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (114, '61abfd3dad2be', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638661437, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (115, '61ac0430c4d6d', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638663216, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (116, '61ac044953343', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638663241, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (117, '61ac04a6239dc', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638663334, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (118, '61ac04d315cc4', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1638663379, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (119, '61ac05509f9ed', '192.168.1.78', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1638663504, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (120, '61b7c74fc8543', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1639434063, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (121, '61b7c76f501ae', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1639434095, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (122, '61b7f53ce4984', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 3, 1639445820, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (123, '61b7f5a65496a', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1639445926, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (124, '61b9779bcfc69', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1639544731, 'Chrome', 'Linux');
INSERT INTO `user_visit_log` VALUES (125, '61b9782191ea9', '192.168.1.77', 'en', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 1, 1639544865, 'Chrome', 'Linux');
COMMIT;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `usu_nombre` varchar(50) NOT NULL COMMENT 'Nombre',
  `usu_materno` varchar(40) NOT NULL COMMENT 'Apellido Materno',
  `usu_paterno` varchar(40) NOT NULL COMMENT 'Apellido Paterno',
  `usu_imagen` varchar(150) DEFAULT NULL COMMENT 'Imagen',
  `usu_fkuser` int(11) NOT NULL COMMENT 'User',
  PRIMARY KEY (`usu_id`),
  KEY `usu_fkuser` (`usu_fkuser`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usu_fkuser`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of usuario
-- ----------------------------
BEGIN;
INSERT INTO `usuario` VALUES (1, 'Giovanni De Jesus', 'Olan', 'Perez', 'NmVe-BggokrngREwglFd4S7oTddrY8p9.png', 3);
INSERT INTO `usuario` VALUES (2, 'Jorge Luis', 'Mazariego', 'Montejo', 'iIDc6NqXlB7Lop3GsIJGlDkt1ERnng-o.jpg', 5);
INSERT INTO `usuario` VALUES (3, 'Alfredo', 'Osorio', 'Perez', 'qwdqwedwqdq', 1);
INSERT INTO `usuario` VALUES (7, 'aaaaa', 'a', 'a', 'JVWZwaoScY40mZJzJBvoT-Sv1WmptN4X.png', 9);
INSERT INTO `usuario` VALUES (8, 'b', 'b', 'b', 'wpQDoClXcS5Lf79nuds_q6QiCntPlJnf.png', 10);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
