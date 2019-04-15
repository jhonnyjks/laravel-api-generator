/*
 Navicat Premium Data Transfer

 Source Server         : localMySQL
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : laravel57generator

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 15/04/2019 16:04:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actions
-- ----------------------------
DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária',
  `permission_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para a permissão',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do atributo',
  `code` smallint(6) NOT NULL COMMENT 'Código de representação do atributo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_id`(`id`) USING BTREE,
  INDEX `permission_id_action`(`permission_id`) USING BTREE,
  CONSTRAINT `action_fk_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as ações que definem uma permissão' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('1a103a70400777876fc42fe65501a37b1ff5a1f769d0263816379b3765c8b29186c8cd7ead900934', 3, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:01:54', '2019-04-15 19:01:54', '2019-04-15 19:31:54');
INSERT INTO `oauth_access_tokens` VALUES ('7488d9aa5002d3e4cd8a742e34f88268916562766d4d374a2c207b6cd234b97a9dcd75392c8084cb', 2, 1, 'Personal Access Token', '[]', 1, '2019-01-19 04:01:04', '2019-01-19 04:01:04', '2020-01-19 04:01:04');
INSERT INTO `oauth_access_tokens` VALUES ('79753ce2279e81d6ad814e44c6daf6a786e66c424d31e810cde4b53c5e541af5a2bbfb89ca8ee15b', 2, 1, 'Personal Access Token', '[]', 0, '2019-01-19 04:00:49', '2019-01-19 04:00:49', '2020-01-19 04:00:49');
INSERT INTO `oauth_access_tokens` VALUES ('d82a1cccc4b4ef9de1d2bef1ad4e505135b3c1e73a2bf2da7fa721bb760437242196c42393573694', 3, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:03:20', '2019-04-15 19:03:20', '2019-04-15 19:33:20');
INSERT INTO `oauth_access_tokens` VALUES ('eebdc1f186f39195d8ace8171fec2dc6660886fdc7a3178494fcdbcb9a1703065f24c0725b95c827', 2, 1, 'Personal Access Token', '[]', 0, '2019-01-19 04:05:12', '2019-01-19 04:05:12', '2020-01-19 04:05:12');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', '9yITPOK3buDAX6Oz9cZWtLUG0cbLVEB6tHQNWRiA', 'http://localhost', 1, 0, 0, '2019-01-19 02:20:19', '2019-01-19 02:20:19');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', '3sZgjqLBt4XCdQtfc8OQwMsPv13f2M7GLezdroZY', 'http://localhost', 0, 1, 0, '2019-01-19 02:20:19', '2019-01-19 02:20:19');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-01-19 02:20:19', '2019-01-19 02:20:19');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária da tabela',
  `profile_id` bigint(20) NOT NULL COMMENT 'Chave para o perfil',
  `permission_id` bigint(20) NULL DEFAULT NULL COMMENT 'Chave estrangeria para a permissão mandatória',
  `priority` smallint(6) NOT NULL COMMENT 'A discutir a necessidade',
  `cpath` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Caminho para o arquivo ou diretório sob a qual a permissão incidirá',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Contém a data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Contém a data de criação do registro',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_id`(`id`) USING BTREE,
  INDEX `permission_id_permission`(`permission_id`) USING BTREE,
  INDEX `profile_id_permission`(`profile_id`) USING BTREE,
  CONSTRAINT `permission_fk_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `permission_fk_profile` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as permissões a serem vinculadas aos perfis' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do tipo',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição do tipo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `profile_id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém a definição dos tipos de perfis disponíveis' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_profile_actions
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_actions`;
CREATE TABLE `user_profile_actions`  (
  `id` bigint(20) NOT NULL COMMENT 'Cháve primária',
  `action_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para a ação',
  `user_profile_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para o vinculo entre usuário e perfil (acesso)',
  `update_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_id_user_profile_action`(`action_id`) USING BTREE,
  INDEX `user_profile_action_id`(`id`) USING BTREE,
  INDEX `user_profile_id_user_profile_action`(`user_profile_id`) USING BTREE,
  CONSTRAINT `user_profile_action_fk_action` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_profile_action_fk_user_profile` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profiles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Relacionar as ações com o acesso, limitado ao maximo definido pelo perfil ao qual está vinculado' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária',
  `user_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para o usuário',
  `profile_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para o perfil',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `profile_id_user_profile`(`profile_id`) USING BTREE,
  INDEX `user_id_user_profile`(`user_id`) USING BTREE,
  INDEX `user_profile_id`(`id`) USING BTREE,
  CONSTRAINT `user_profile_fk_profile` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_profile_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém o vínculo entre o usuário e o perfil' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_situations
-- ----------------------------
DROP TABLE IF EXISTS `user_situations`;
CREATE TABLE `user_situations`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome, tipo, título)',
  `description` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status_access_id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém  informações sobre situações/status dos usuários' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_situations
-- ----------------------------
INSERT INTO `user_situations` VALUES (1, 'Ativo', NULL, NULL, NULL, '2019-02-28 16:09:43');
INSERT INTO `user_situations` VALUES (2, 'Suspenso', NULL, NULL, NULL, '2019-02-28 16:10:34');

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types`  (
  `id` bigint(20) NOT NULL COMMENT 'Chave primária',
  `noun` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do tipo',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição do tipo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_access_id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as informações sobre os tipos de usuários' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_types
-- ----------------------------
INSERT INTO `user_types` VALUES (1, 'Administrador', 'Administrador do sistema', NULL, NULL, '2019-04-15 15:59:11');
INSERT INTO `user_types` VALUES (2, 'Operador', 'Operador do sistema', NULL, NULL, '2019-04-15 15:59:11');
INSERT INTO `user_types` VALUES (3, 'Membro', 'Membro do sistema', NULL, NULL, '2019-04-15 15:59:11');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária da tabela',
  `user_type_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para o tipo de usuário',
  `user_situation_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para situação/status do usuário',
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Login de acesso do usuário',
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Apelido para auxiliar o login (pode ser usado no lugar do documento da empresa por sua facilidade de memorização)',
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Senha de acesso do usuário',
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'E-MAIL de assistência para o acesso',
  `email_verified_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data em que o email foi validado',
  `last_access` datetime(0) NULL DEFAULT NULL COMMENT 'Data do último acesso',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`id`) USING BTREE,
  INDEX `user_situation_id_user`(`user_situation_id`) USING BTREE,
  INDEX `user_type_id_user`(`user_type_id`) USING BTREE,
  CONSTRAINT `user_fk_user_situation` FOREIGN KEY (`user_situation_id`) REFERENCES `user_situations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém os cadastros dos acessos de todos os usuários' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 3, 1, 'admin', NULL, '$2y$10$rWdfrpkVoTQDpiXpPvmcLuRVDIH/l/GOwdtAa1bYb2JyDAQhx.y.y', 'admin@mail.com', NULL, NULL, '2019-04-15 18:59:20', NULL, '2019-04-15 18:59:20');

SET FOREIGN_KEY_CHECKS = 1;
