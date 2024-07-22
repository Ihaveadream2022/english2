/*
 Navicat Premium Data Transfer

 Source Server         : VirtualBox-192.168.10.103
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : 192.168.10.103:3306
 Source Schema         : english

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 22/07/2024 17:20:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grammar
-- ----------------------------
DROP TABLE IF EXISTS `grammar`;
CREATE TABLE `grammar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'sort',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `content` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'grammar' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category` smallint UNSIGNED NULL DEFAULT 0 COMMENT 'category',
  `name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'lexical item name',
  `pronounce` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'pronounce',
  `common` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'common meaning',
  `noun` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'noun ',
  `noun_plural` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'noun plural',
  `verb` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb',
  `verb_past_tense` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb past tense',
  `verb_past_participle` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb past participle',
  `verb_present_participle` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb present participle',
  `verb_third_person_singular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'verb third person singular',
  `adjective` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'adjective',
  `adverb` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'adverb',
  `conjunction` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'conjunction',
  `pronoun` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'pronoun',
  `preposition` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'preposition',
  `comment` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'comment',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 683 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'item' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for item_example
-- ----------------------------
DROP TABLE IF EXISTS `item_example`;
CREATE TABLE `item_example`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `examples` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'examples',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_example_ibfk_1`(`name` ASC) USING BTREE,
  CONSTRAINT `item_example_ibfk_1` FOREIGN KEY (`name`) REFERENCES `item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 660 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'item example' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for item_tts
-- ----------------------------
DROP TABLE IF EXISTS `item_tts`;
CREATE TABLE `item_tts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `audio` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'audio',
  `audio_cn` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'audio chinese',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE,
  CONSTRAINT `item_tts_ibfk_1` FOREIGN KEY (`name`) REFERENCES `item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 688 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'item tts' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for reading
-- ----------------------------
DROP TABLE IF EXISTS `reading`;
CREATE TABLE `reading`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT 'sort',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'title',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'reading' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'key',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'name',
  `created_at` datetime NULL DEFAULT NULL COMMENT 'create time',
  `updated_at` datetime NULL DEFAULT NULL COMMENT 'update time',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT 'status',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'role' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for role_assignment
-- ----------------------------
DROP TABLE IF EXISTS `role_assignment`;
CREATE TABLE `role_assignment`  (
  `user_id` bigint NOT NULL COMMENT 'user ID',
  `role_id` bigint NOT NULL COMMENT 'role ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_assignment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_assignment_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'association between users and roles' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for similar
-- ----------------------------
DROP TABLE IF EXISTS `similar`;
CREATE TABLE `similar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `items` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'item',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `items`(`items` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'similar items' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for synonym
-- ----------------------------
DROP TABLE IF EXISTS `synonym`;
CREATE TABLE `synonym`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `meaning` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'meaning',
  `items` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'items',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `meaning`(`meaning` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'synonym items' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` bigint NULL DEFAULT NULL COMMENT 'role ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'username',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'email',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'phone number',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'password',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'avatar',
  `last_login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'last login iP',
  `gender` tinyint NULL DEFAULT 0 COMMENT 'gender',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT 'last login time',
  `created_at` datetime NULL DEFAULT NULL COMMENT 'create time',
  `updated_at` datetime NULL DEFAULT NULL COMMENT 'update time',
  `status` tinyint NULL DEFAULT 0 COMMENT 'status',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'user' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'user',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'operation name',
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP adress',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'operation location',
  `browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'browser type',
  `os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'operation system',
  `operation_time` datetime NULL DEFAULT NULL COMMENT 'operation time',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'user operations' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
