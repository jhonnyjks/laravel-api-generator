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

 Date: 07/05/2019 18:55:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actions
-- ----------------------------
DROP TABLE IF EXISTS `actions`;
CREATE TABLE `actions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária',
  `permission_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para a permissão',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do atributo',
  `code` smallint(6) NOT NULL COMMENT 'Código de representação do atributo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_id`(`id`) USING BTREE,
  INDEX `permission_id_action`(`permission_id`) USING BTREE,
  CONSTRAINT `action_fk_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as ações que definem uma permissão' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of actions
-- ----------------------------
INSERT INTO `actions` VALUES (1, 1, 'user_type_id', 1, '2019-05-07 18:38:24', '2019-05-07 18:38:24', '2019-04-30 16:26:11');
INSERT INTO `actions` VALUES (5, 1, 'login', 7, '2019-05-07 21:10:12', NULL, '2019-04-30 16:26:11');
INSERT INTO `actions` VALUES (6, 1, 'user_situation_id', 1, '2019-05-06 23:14:20', '2019-05-06 23:14:20', '2019-05-06 23:08:03');
INSERT INTO `actions` VALUES (8, 1, 'name', 7, '2019-05-07 21:31:21', NULL, '2019-05-06 23:10:33');
INSERT INTO `actions` VALUES (9, 1, 'email', 7, '2019-05-07 21:10:10', NULL, '2019-05-06 23:13:28');
INSERT INTO `actions` VALUES (10, 1, 'user_situation_id', 7, '2019-05-06 23:14:55', NULL, '2019-05-06 23:14:28');
INSERT INTO `actions` VALUES (11, 1, 'email_verified_at', 1, '2019-05-07 21:10:32', NULL, '2019-05-06 23:15:12');
INSERT INTO `actions` VALUES (12, 1, 'password', 8, '2019-05-06 23:17:03', '2019-05-06 23:17:03', '2019-05-06 23:15:16');
INSERT INTO `actions` VALUES (13, 1, 'password', 7, '2019-05-07 21:10:22', NULL, '2019-05-06 23:17:16');
INSERT INTO `actions` VALUES (14, 2, 'noun', 7, '2019-05-07 21:32:10', NULL, '2019-05-06 23:17:34');
INSERT INTO `actions` VALUES (15, 2, 'description', 7, '2019-05-07 21:09:48', NULL, '2019-05-06 23:17:50');
INSERT INTO `actions` VALUES (16, 1, 'user_type_id', 7, '2019-05-07 21:10:23', NULL, '2019-05-07 18:38:32');
INSERT INTO `actions` VALUES (18, 7, '_show', 1, '2019-05-07 19:08:51', NULL, '2019-05-07 19:05:07');
INSERT INTO `actions` VALUES (19, 8, 'profile_id', 1, '2019-05-07 21:36:27', '2019-05-07 21:36:27', '2019-05-07 21:09:03');
INSERT INTO `actions` VALUES (23, 6, 'permission_id', 15, '2019-05-07 21:09:42', NULL, '2019-05-07 21:09:29');
INSERT INTO `actions` VALUES (24, 6, 'noun', 7, '2019-05-07 21:09:38', NULL, '2019-05-07 21:09:30');
INSERT INTO `actions` VALUES (25, 6, 'code', 7, '2019-05-07 21:09:40', NULL, '2019-05-07 21:09:31');
INSERT INTO `actions` VALUES (26, 1, 'last_access', 1, '2019-05-07 21:10:19', NULL, '2019-05-07 21:10:19');
INSERT INTO `actions` VALUES (27, 12, 'user_type_id', 1, '2019-05-07 21:11:01', NULL, '2019-05-07 21:11:01');
INSERT INTO `actions` VALUES (35, 8, 'permission_id', 7, '2019-05-07 21:36:42', NULL, '2019-05-07 21:36:37');
INSERT INTO `actions` VALUES (36, 8, 'profile_id', 15, '2019-05-07 21:36:57', NULL, '2019-05-07 21:36:43');
INSERT INTO `actions` VALUES (37, 8, 'priority', 7, '2019-05-07 21:36:58', NULL, '2019-05-07 21:36:45');
INSERT INTO `actions` VALUES (38, 8, 'cpath', 7, '2019-05-07 21:36:59', NULL, '2019-05-07 21:36:50');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `profile_id` int(11) NULL DEFAULT NULL COMMENT 'Chave para o perfil ativo no token',
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
INSERT INTO `oauth_access_tokens` VALUES ('0393f1570e528125643cb6ce13a55f2163abfc8d260afedfcce628a037e22391b7e5eb97485e2b5a', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-22 20:51:17', '2019-04-22 20:51:17', '2019-04-22 21:21:17');
INSERT INTO `oauth_access_tokens` VALUES ('0fe447e4ae42fbfdfe1324dcf8078935bb19ca57557f8251534c2612f44d623981ac3a7f5fc43fb4', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:53:33', '2019-04-16 14:53:33', '2019-04-16 15:23:33');
INSERT INTO `oauth_access_tokens` VALUES ('13426f4f2f55b3321b594d9f5f730e38fd310325f66bbd6bd682e261599f4107fe76e96d02b61223', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 17:23:40', '2019-04-24 17:23:40', '2019-04-24 17:53:40');
INSERT INTO `oauth_access_tokens` VALUES ('16a8ca97d3094e1b2b11c9a91f5116d9d54564dd769caec39692f85844fa30536a6f0b858fea9c7d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:54:42', '2019-04-15 21:54:42', '2019-04-15 22:24:42');
INSERT INTO `oauth_access_tokens` VALUES ('18e0271958ec555d25944ede51a571ad2beaa07633033bb938d79719b5c664360f8cd30ec6bf28ed', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 19:14:12', '2019-04-24 19:14:12', '2019-04-24 19:44:12');
INSERT INTO `oauth_access_tokens` VALUES ('1a103a70400777876fc42fe65501a37b1ff5a1f769d0263816379b3765c8b29186c8cd7ead900934', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:01:54', '2019-04-15 19:01:54', '2019-04-15 19:31:54');
INSERT INTO `oauth_access_tokens` VALUES ('1b92c7a180860c428a12c672986174e2bfd80a5ab35f12253e6be248705b54a7361d74bce4c39749', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":15,\"code\":15}}}', 0, '2019-05-03 13:37:45', '2019-05-03 13:37:45', '2019-05-03 14:07:45');
INSERT INTO `oauth_access_tokens` VALUES ('1c6f9c871d8ab4f0863e4b2b2abb9107604ed41f4435100500d49c860383724e4cb429662c052083', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:38:35', '2019-04-15 21:38:35', '2019-04-15 22:08:35');
INSERT INTO `oauth_access_tokens` VALUES ('1f7cd4e260cc86dd545a71f987a676a1455fc57518d4d70cdf3e8e418108744a2f2a3a4a63107ab2', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:46:36', '2019-04-15 19:46:36', '2019-04-15 20:16:36');
INSERT INTO `oauth_access_tokens` VALUES ('28876ca0fc1d2fda7d8f56b827b0d0bdb2dc2369e1a2f5c543631d940a4f989270e994bb5a202109', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:06:08', '2019-04-15 22:06:08', '2019-04-15 22:36:08');
INSERT INTO `oauth_access_tokens` VALUES ('28c0bfb352d3f0e11b34174cfb0643a62552a0cae8b7a4e98b04737d1f34dd51d7f00b27b7acf0af', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 17:24:56', '2019-04-24 17:24:56', '2019-04-24 17:54:56');
INSERT INTO `oauth_access_tokens` VALUES ('29b93256e68eedcf2edfafc85cda40541d8260d62260dc528abd2249515f549201331b3ab4240cc9', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:25:45', '2019-04-16 20:25:45', '2019-04-16 20:55:45');
INSERT INTO `oauth_access_tokens` VALUES ('2a8ec273e5ad02a0410f18fdd9d2a9975c4c7022c028691f1e274cccd8d883bc52a2e4e19a076661', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 20:57:26', '2019-04-15 20:57:26', '2019-04-15 21:27:26');
INSERT INTO `oauth_access_tokens` VALUES ('2f48c94d7c7e98f503c8e7a78ef60e898c55b0fabfb0b32195be72e449700cd0b3f4eba89d3cc4dd', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 20:26:17', '2019-04-15 20:26:17', '2019-04-15 20:56:17');
INSERT INTO `oauth_access_tokens` VALUES ('319a9bf8613cf74cd21ab1d242066d7d9fc7fc9a21918243e8bac107caa2c354fef41e7fe49ffa25', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:31:21', '2019-04-15 21:31:21', '2019-04-15 22:01:21');
INSERT INTO `oauth_access_tokens` VALUES ('3280646b11bd885c946e55672c2f5eccf7c983b933dba205e964ef7ae51a64f9b99526724ffb292e', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:05:01', '2019-04-15 22:05:01', '2019-04-15 22:35:01');
INSERT INTO `oauth_access_tokens` VALUES ('3496bc117497b0f7f9b6f731c0789ce60b444554e227be9e7c8f54220df49013c8910a1d7427bd38', 10, NULL, 1, 'Token pessoal 10', '[]', 0, '2019-04-16 22:15:19', '2019-04-16 22:15:19', '2019-04-16 22:45:19');
INSERT INTO `oauth_access_tokens` VALUES ('35108ae59be3c4aabf4215e032efcf6a39c672befe4eec1edbd7518b371f8f73fa03cfd42e8f237d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 14:43:48', '2019-04-17 14:43:48', '2019-04-17 15:13:48');
INSERT INTO `oauth_access_tokens` VALUES ('357a7a18ffa7b412e67996444eb30832c06261f5708e2678b2ade360b7f15059b45dc95004663ba8', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:46:10', '2019-04-16 20:46:10', '2019-04-16 21:16:11');
INSERT INTO `oauth_access_tokens` VALUES ('3771011ec1e763a91f91110edefd520017d72abd02f9fabc4fa69d85d0a9d8830df02a0c394c4569', 3, 1, 1, 'Token pessoal 3', '{\"users\":{\"actions\":{\"login\":15,\"name\":2,\"email\":3,\"user_situation_id\":7,\"email_verified_at\":1,\"password\":4,\"user_type_id\":4}},\"profiles\":{\"actions\":{\"noun\":0,\"description\":5}},\"permissions\\/all\":{\"actions\":{\"_show\":1}}}', 0, '2019-05-07 19:11:41', '2019-05-07 19:11:41', '2019-05-07 19:41:41');
INSERT INTO `oauth_access_tokens` VALUES ('38a972e7fa518c81135b4e66638af085d4983804b1e7c2775226cde59012367fb5f3244f61c0d182', 11, NULL, 1, 'Token pessoal 11', '[]', 0, '2019-04-17 13:49:48', '2019-04-17 13:49:48', '2019-04-17 14:19:48');
INSERT INTO `oauth_access_tokens` VALUES ('394d670730e8c3a7b99983c0287efaa692ca1c210face687d73f3cb65a530fb1396e8d7ffaee66f6', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 13:47:00', '2019-04-17 13:47:00', '2019-04-17 14:17:00');
INSERT INTO `oauth_access_tokens` VALUES ('39e4ab1e6b448c9fed307af28df606ee07e0d7a15dd64757dd1c0d10924d41267ebde4b6249980e2', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:21:52', '2019-04-16 14:21:52', '2019-04-16 14:51:52');
INSERT INTO `oauth_access_tokens` VALUES ('3ab1758302a5a50636dcb2906f402681dffdfcabf2b5d6801fcc6c6aabcc87c1bf5b2f7b602fe713', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-22 20:10:40', '2019-04-22 20:10:40', '2019-04-22 20:40:40');
INSERT INTO `oauth_access_tokens` VALUES ('3f98b684bf763fbdb65d14046a7c7185448881bf0af18f244281c60564cfed6def260269452a5789', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-22 20:08:33', '2019-04-22 20:08:33', '2019-04-22 20:38:33');
INSERT INTO `oauth_access_tokens` VALUES ('406244df0afcecffc4ab5457e96448b080c7644257cf1f73f4ffd5fa56ce831e617fe486075ab870', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 13:57:18', '2019-04-16 13:57:18', '2019-04-16 14:27:18');
INSERT INTO `oauth_access_tokens` VALUES ('41b54965aacd2890e83f2daaa95e84d13d89aa295cdb045558b139609a281acab71a9cb59c93f388', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-26 21:53:05', '2019-04-26 21:53:05', '2019-04-26 22:23:06');
INSERT INTO `oauth_access_tokens` VALUES ('43c03ca3b816ce2bc19e106959b75c8e846b4f1c627e5669b855093d88c321d718a17560650f7370', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":15,\"code\":15}}}', 0, '2019-05-02 14:50:24', '2019-05-02 14:50:24', '2019-05-02 15:20:24');
INSERT INTO `oauth_access_tokens` VALUES ('44c929eb5202f17529f9aee0fe8ef7c7015a4ebf5d4efadf2973e9c9d39ee00b95ee28fbca6fce5e', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 17:20:22', '2019-04-24 17:20:22', '2019-04-24 17:50:22');
INSERT INTO `oauth_access_tokens` VALUES ('4c0d3063a2a13cbe23b7948a9062a1ad211603240dbe279cb6678a039f4688c6d97cead2eb7f3973', 4, NULL, 1, 'Token pessoal 4', '[]', 0, '2019-04-24 17:07:20', '2019-04-24 17:07:20', '2019-04-24 17:37:20');
INSERT INTO `oauth_access_tokens` VALUES ('507e3f2f8aebdf1579fa2fb53a9de8ca61371b7cb5db74090fd7aed98d564140c98e12fd6f64decf', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:27:37', '2019-04-15 21:27:37', '2019-04-15 21:57:38');
INSERT INTO `oauth_access_tokens` VALUES ('513904f00d32554704e1a6b808bac73186e9d7f6ed14d34895b6413b92317ab760d7e1b453d84c8b', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:24:15', '2019-04-15 22:24:15', '2019-04-15 22:54:15');
INSERT INTO `oauth_access_tokens` VALUES ('5385078a977f620f3ddbb9cb10076b8a203ef8779ff55e9b84fb6380f1f2648671462245e9376f94', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-22 20:15:30', '2019-04-22 20:15:30', '2019-04-22 20:45:30');
INSERT INTO `oauth_access_tokens` VALUES ('559b7ce48ad012c2f3db917702accd368392d41091f96eeb6e12e6cd98b9fef7d4a6f33fcb6987e7', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:20:06', '2019-04-15 22:20:06', '2019-04-15 22:50:06');
INSERT INTO `oauth_access_tokens` VALUES ('5632532a4c833e7bbc0f45719f342044ec80fe16c10212714cb8f464256747e74a5b71cdb1581ebb', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 20:17:35', '2019-04-15 20:17:35', '2019-04-15 20:47:35');
INSERT INTO `oauth_access_tokens` VALUES ('5750fa15883f6ee9d5f25fc7270d2001ec0d4f38232fa25d7bcf9a5a50761d03bec5625d4be227c9', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":15,\"code\":15}}}', 0, '2019-05-06 17:58:45', '2019-05-06 17:58:45', '2019-05-06 18:28:45');
INSERT INTO `oauth_access_tokens` VALUES ('5f608a4768e21ca9af6b4ae0eca948143f0405b98edef79623e0fb42c7db4dd1853f7831f6615d60', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-22 19:22:00', '2019-04-22 19:22:00', '2019-04-22 19:52:00');
INSERT INTO `oauth_access_tokens` VALUES ('6131cc007efed07e059a50c60c52dcf7c292bde63be2c2878b063499805836405e1f55d632f2c37d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:45:56', '2019-04-16 20:45:56', '2019-04-16 21:15:56');
INSERT INTO `oauth_access_tokens` VALUES ('694da679f1539c2a70b796f9c145fc0fd8f03c3d9034fbe28f567c25cfa778eefdcd0a03f4503fd3', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:19:06', '2019-04-16 14:19:06', '2019-04-16 14:49:06');
INSERT INTO `oauth_access_tokens` VALUES ('6a8f81db5783a0d70873a0758ce8ad6ebc6c4a20f5500785ec56a23428f72c675f2fbb489199ab2b', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:25:53', '2019-04-16 14:25:53', '2019-04-16 14:55:53');
INSERT INTO `oauth_access_tokens` VALUES ('6d6bb91270948a4c9235a117c1bc33e6034c768ee37ad526d87a65ff225ad507fc1ae12849d66506', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:44:17', '2019-04-16 19:44:17', '2019-04-16 20:14:17');
INSERT INTO `oauth_access_tokens` VALUES ('70cf1bf7cbb3240e3c1d121fe9c23eaa3d5560e2fb5bd86b6279d17145af2b01881357c1e838c89c', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:15:07', '2019-04-15 22:15:07', '2019-04-15 22:45:07');
INSERT INTO `oauth_access_tokens` VALUES ('713ff342d3c7e361fdc0ce495e9d49259898f7c942700ff5907b57c40ac10ea3567bf070e8b94c58', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:26:28', '2019-04-16 20:26:28', '2019-04-16 20:56:28');
INSERT INTO `oauth_access_tokens` VALUES ('7488d9aa5002d3e4cd8a742e34f88268916562766d4d374a2c207b6cd234b97a9dcd75392c8084cb', 2, NULL, 1, 'Personal Access Token', '[]', 1, '2019-01-19 04:01:04', '2019-01-19 04:01:04', '2020-01-19 04:01:04');
INSERT INTO `oauth_access_tokens` VALUES ('77f42b13143f4b8223b626d02d6764bcb591182fe159eabd7a7bb2d29ed569ba12a609b664f3f8e1', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-05-07 21:22:53', '2019-05-07 21:22:53', '2019-05-07 21:52:53');
INSERT INTO `oauth_access_tokens` VALUES ('787aaae86ecd6f83fda090128431460d51c90f253392d27699f7d86de07bbd377c6e4808dce5dd39', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:48:04', '2019-04-16 20:48:04', '2019-04-16 21:18:04');
INSERT INTO `oauth_access_tokens` VALUES ('79753ce2279e81d6ad814e44c6daf6a786e66c424d31e810cde4b53c5e541af5a2bbfb89ca8ee15b', 2, NULL, 1, 'Personal Access Token', '[]', 0, '2019-01-19 04:00:49', '2019-01-19 04:00:49', '2020-01-19 04:00:49');
INSERT INTO `oauth_access_tokens` VALUES ('7f7f72bdfc596a4c39be7cf2217fa9b6f9c839ed3b2ae5d0c529f419102fdab5f8aa72fe9b238d65', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-22 20:15:48', '2019-04-22 20:15:48', '2019-04-22 20:45:48');
INSERT INTO `oauth_access_tokens` VALUES ('80772a293da381317e2f9c32dcf9a2ad90a67bdc258f924fdce62ff4960771fad5f83e48437e0712', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:08:05', '2019-04-15 22:08:05', '2019-04-15 22:38:05');
INSERT INTO `oauth_access_tokens` VALUES ('83f7fff8017040b8e68b81a6a09cbdd56e0c3a3533ac74684f5a23fbdd5128f4c62d5cf473848837', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-24 17:08:33', '2019-04-24 17:08:33', '2019-04-24 17:38:33');
INSERT INTO `oauth_access_tokens` VALUES ('84ab1ad545541ef9b6aa9a49c2fc3569c76939e9de68876125f6bd1fcf8e481fd0113c978a8b3fde', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}}}', 0, '2019-04-30 14:00:19', '2019-04-30 14:00:19', '2019-04-30 14:30:19');
INSERT INTO `oauth_access_tokens` VALUES ('84ba466cb2c6932445993685c0a57c097adec2530dc5d9f425a9f6307ee45f7e7b515cd5cfd86853', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 18:52:42', '2019-04-24 18:52:42', '2019-04-24 19:22:42');
INSERT INTO `oauth_access_tokens` VALUES ('8900074a9d6c81e74b4804ab61d585a5acb6713cb9946f4df97b5a7c05d614608f62f8b2695e5054', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-22 19:21:56', '2019-04-22 19:21:56', '2019-04-22 19:51:56');
INSERT INTO `oauth_access_tokens` VALUES ('8ad1b574dcd912d7b4ed78a232748e9de13128e880b4a108284000b896d8e533ae913e8f93e7bc64', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 21:20:31', '2019-04-16 21:20:31', '2019-04-16 21:50:31');
INSERT INTO `oauth_access_tokens` VALUES ('8d9d139d7fa8c7039a3d27078a7ff5e750b02a264cda92fb422b91574058afa175c82ed91d4b6281', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 20:23:57', '2019-04-16 20:23:57', '2019-04-16 20:53:57');
INSERT INTO `oauth_access_tokens` VALUES ('8fbf737a14c75a0d5b0f5980605a43a91b80c04c8ac33440ae00fff2b5977e1f5ff7d57032c0a93e', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":15,\"code\":15}}}', 0, '2019-05-03 17:40:01', '2019-05-03 17:40:01', '2019-05-03 18:10:02');
INSERT INTO `oauth_access_tokens` VALUES ('9050109cd1d728424ea359a6dd8a53eb94622e14df5015a3425affd368098103ecf6bea6219081c2', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-22 20:59:03', '2019-04-22 20:59:03', '2019-04-22 21:29:03');
INSERT INTO `oauth_access_tokens` VALUES ('91912d85ec40d646a30b2ae38cb646ef0e7ebc9198e030c9b3114f9901f52866f436e626e88884de', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:37:21', '2019-04-16 19:37:21', '2019-04-16 20:07:21');
INSERT INTO `oauth_access_tokens` VALUES ('9193bb3663eeb56018d7fdd4c821401f3151b0fa7d1b005a031b5228fe1f8f1e0eb382d6b81a0345', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:46:05', '2019-04-16 19:46:05', '2019-04-16 20:16:05');
INSERT INTO `oauth_access_tokens` VALUES ('93e88abcaf776119b10ab3964fbf6c3cb87dc5461efe8e45698e375386432d4cc9a25fee60ed25a2', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:42:20', '2019-04-16 19:42:20', '2019-04-16 20:12:20');
INSERT INTO `oauth_access_tokens` VALUES ('9b5261bc8b45e920ae6f8be141b2822dfa8c0da4946a811bea297543503848f4b816fdb7091b8b05', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}}}', 0, '2019-04-29 13:59:58', '2019-04-29 13:59:58', '2019-04-29 14:29:59');
INSERT INTO `oauth_access_tokens` VALUES ('9d004b43fa26013cdf68c639b102388e7b0f479dd45315a8479c368314bebb436b32096fbd0380c1', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:53:49', '2019-04-16 19:53:49', '2019-04-16 20:23:49');
INSERT INTO `oauth_access_tokens` VALUES ('9fb17ab542c0580bfa26128daeb79170c087b9f6edbff5d2fd37930eac6602f7b4624eafa8f99a82', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}}}', 0, '2019-04-29 18:34:44', '2019-04-29 18:34:44', '2019-04-29 19:04:44');
INSERT INTO `oauth_access_tokens` VALUES ('a15b0021cbe921dd8d4ab2303071d7b27dcc80b0ac28adc855534cd07f0798796797e43890802d99', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:36:27', '2019-04-15 19:36:27', '2019-04-15 20:06:28');
INSERT INTO `oauth_access_tokens` VALUES ('a4b5b73eee6f4cc400a66c56dfdf7d0f5dca078b53b299d7c7a9f68eee5924b264b79dcc4f8bb2f6', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-24 14:12:17', '2019-04-24 14:12:17', '2019-04-24 14:42:17');
INSERT INTO `oauth_access_tokens` VALUES ('a7114c78bbd24e0208cb70fd89a37e568be9ee1d50c63642245886d2a816df89e12bacbef2945f36', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:13:39', '2019-04-15 22:13:39', '2019-04-15 22:43:39');
INSERT INTO `oauth_access_tokens` VALUES ('a98e8f25a7e2ae04e19c4fb319b77e65c99e6153b74c9f8bd5d94ed2924d4e7283a440c13f041f94', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:28:29', '2019-04-15 21:28:29', '2019-04-15 21:58:29');
INSERT INTO `oauth_access_tokens` VALUES ('ae41bbb6749e08e5f597c4d6462c8ab58dc4c0f869421a484b57dc147bb1beff0648bff53eed0f9e', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 19:06:18', '2019-04-24 19:06:18', '2019-04-24 19:36:18');
INSERT INTO `oauth_access_tokens` VALUES ('b12d6e971b814836c5bc465f77e317f8b3ccd01dee274b345cf7b99d41e907625e6126bbc2449b34', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-22 14:25:44', '2019-04-22 14:25:44', '2019-04-22 14:55:44');
INSERT INTO `oauth_access_tokens` VALUES ('b3ed7309283ecf8e46904ea80ea2a304a38b4f80d53baef3950d22c64c6d440687fa789aabb54b66', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:51:11', '2019-04-16 19:51:11', '2019-04-16 20:21:11');
INSERT INTO `oauth_access_tokens` VALUES ('b528b59aa34755f8aa84c0baa7309a971281b843b5d5097062eb446ff7339f31f31d41075ecd551d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 21:27:55', '2019-04-16 21:27:55', '2019-04-16 21:57:55');
INSERT INTO `oauth_access_tokens` VALUES ('b57bf0adc433cef34c5f29313af6d45823d15ca1575c5831b3c08a6f6ec0a302927f1cd9d7e5318d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-05-07 20:50:47', '2019-05-07 20:50:47', '2019-05-07 21:20:47');
INSERT INTO `oauth_access_tokens` VALUES ('b6ee4704a1c1c8802e782f537eee282885425f9239547caa12c04adb627adce48a2963196da9df43', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 17:20:55', '2019-04-24 17:20:55', '2019-04-24 17:50:55');
INSERT INTO `oauth_access_tokens` VALUES ('b6f3c51ef2c400500b44b20420b9ddb658784157278c0ed3cd6a0b8ea79175e2bcefab8dba4b961b', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-24 17:21:48', '2019-04-24 17:21:48', '2019-04-24 17:51:48');
INSERT INTO `oauth_access_tokens` VALUES ('baf40c62a333d4a55e742ce8c1cb7be24de190488fe0147e05820f6ab6830cd7e1b806279766c899', 3, 1, 1, 'Token pessoal 3', '{\"users\":{\"actions\":{\"login\":7,\"name\":7,\"email\":7,\"user_situation_id\":7,\"email_verified_at\":1,\"password\":7,\"user_type_id\":7,\"last_access\":1}},\"profiles\":{\"actions\":{\"noun\":7,\"description\":7}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":7,\"code\":7}},\"permissions\\/all\":{\"actions\":{\"_show\":1}},\"permissions\":{\"actions\":{\"permission_id\":7,\"profile_id\":15,\"priority\":7,\"cpath\":7}}}', 0, '2019-05-07 21:25:48', '2019-05-07 21:25:48', '2019-05-07 21:55:48');
INSERT INTO `oauth_access_tokens` VALUES ('c587578913761f729427c212b55d9aefc09c4e91bd454979167ad3af289df809069e5a77278854cf', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 13:57:53', '2019-04-17 13:57:53', '2019-04-17 14:27:53');
INSERT INTO `oauth_access_tokens` VALUES ('c7db6e7eae28699e9028e29b1fe908a8c98cb9aa9b8bf05707167a08ab4e8c163e6f4bff43ce71f6', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 17:16:04', '2019-04-24 17:16:04', '2019-04-24 17:46:04');
INSERT INTO `oauth_access_tokens` VALUES ('c92f7c110510f7094f2619a80e4045ae7c8d517fb26795bf00d93a55e5ac23b79151318723dc7ae0', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:08:47', '2019-04-15 22:08:47', '2019-04-15 22:38:47');
INSERT INTO `oauth_access_tokens` VALUES ('c9c719900940def04864e4bc3c9d03ef0d6b8513823cf6a9c0c44bcd0297e299d2bd4ce47a34043d', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:08:35', '2019-04-15 22:08:35', '2019-04-15 22:38:35');
INSERT INTO `oauth_access_tokens` VALUES ('ca13ebf7852e699567c3008843e31c3e3e078b4a5dc4e1c074854622edc5f0067ebcaedae23bc4ed', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 17:51:25', '2019-04-24 17:51:25', '2019-04-24 18:21:25');
INSERT INTO `oauth_access_tokens` VALUES ('ce122a41302598f4aa598b47779194a8f82d3f95b4f34d67b91633dfb71a69f82bbaea21e6c3d35a', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:44:11', '2019-04-15 21:44:11', '2019-04-15 22:14:11');
INSERT INTO `oauth_access_tokens` VALUES ('cf3535e8c27b691becd25cbeb5ab97f8b381376170ea5ebf36c888c46858d55ca36682ae378e98e1', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 14:43:49', '2019-04-17 14:43:49', '2019-04-17 15:13:49');
INSERT INTO `oauth_access_tokens` VALUES ('cf7c859e255a1b542e6a2598e15de4ad93ad06a5aa405972120559e76ff3100778691795afa7a360', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 21:14:55', '2019-04-16 21:14:55', '2019-04-16 21:44:55');
INSERT INTO `oauth_access_tokens` VALUES ('cfa87197ba7b25bfab9fe6c342e286e1299e377e25e8cf74f0e5e1f4663303fa8958bd4ae9c48b46', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 22:13:58', '2019-04-15 22:13:58', '2019-04-15 22:43:59');
INSERT INTO `oauth_access_tokens` VALUES ('d82a1cccc4b4ef9de1d2bef1ad4e505135b3c1e73a2bf2da7fa721bb760437242196c42393573694', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:03:20', '2019-04-15 19:03:20', '2019-04-15 19:33:20');
INSERT INTO `oauth_access_tokens` VALUES ('d9a5dcccc42b453e5559f6309c16f8614fd22a466f97b8eb3d33358a3b3132da20cc44ea0bc46d68', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}},\"permissions\":{\"actions\":{\"profile_id\":15,\"permission_id\":15,\"priority\":15,\"cpath\":15}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":15,\"code\":15}}}', 0, '2019-05-03 20:02:53', '2019-05-03 20:02:53', '2019-05-03 20:32:53');
INSERT INTO `oauth_access_tokens` VALUES ('dde24572669021e10a671403e14236b080db9984f1e27ce8438cbdacf5fa34ef11047e907551e612', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:50:41', '2019-04-15 21:50:41', '2019-04-15 22:20:41');
INSERT INTO `oauth_access_tokens` VALUES ('e08f0cdf5fb5ff368d7d4d50453b88c050adae09e91f45c8fadd3bb44aff4189de1e17de735f79ec', 3, 1, 1, 'Token pessoal 3', '{\"users\":{\"actions\":{\"login\":7,\"name\":7,\"email\":7,\"user_situation_id\":7,\"email_verified_at\":1,\"password\":7,\"user_type_id\":7,\"last_access\":1}},\"profiles\":{\"actions\":{\"noun\":7,\"description\":7}},\"actions\":{\"actions\":{\"permission_id\":15,\"noun\":7,\"code\":7}},\"permissions\\/all\":{\"actions\":{\"_show\":1}},\"permissions\":{\"actions\":{\"permission_id\":7,\"profile_id\":15,\"priority\":7,\"cpath\":7}}}', 0, '2019-05-07 21:50:36', '2019-05-07 21:50:36', '2019-05-07 22:20:36');
INSERT INTO `oauth_access_tokens` VALUES ('e1f605d6e582a63f310f3c7892843b2d49dfdf139f27b62c99d0bd9a8de72e81c36a63f446a78a97', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-24 14:10:14', '2019-04-24 14:10:14', '2019-04-24 14:40:14');
INSERT INTO `oauth_access_tokens` VALUES ('e25592bf2888f9ffeed9678a6abdbfe71c22ed30ceace0d84a3b6652567591f326579fc0ffe5115f', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 16:47:30', '2019-04-17 16:47:30', '2019-04-17 17:17:30');
INSERT INTO `oauth_access_tokens` VALUES ('e2b4ed8f8270ab4ecf190118d50eaa2f9f6033510c52675bce1784e6c70704dc3f98a2861c33ee09', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:21:09', '2019-04-16 14:21:09', '2019-04-16 14:51:09');
INSERT INTO `oauth_access_tokens` VALUES ('e4f1adfaf429a348814622b6f4dacdf9937710c0fb8263bfe87586f9285af26b16919b04d3510b28', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 21:19:04', '2019-04-16 21:19:04', '2019-04-16 21:49:05');
INSERT INTO `oauth_access_tokens` VALUES ('e5ebfd4bf6660e6dafbc5b79bdc5a948d0952d89321ed8818e2a7e53786cdaef6525c03047ac5893', 4, NULL, 1, 'Token pessoal 4', '[]', 0, '2019-04-15 20:57:06', '2019-04-15 20:57:06', '2019-04-15 21:27:06');
INSERT INTO `oauth_access_tokens` VALUES ('e7d4b3df561e41d2e2040762005b71adfb263771f934464f07a320b1214527361130bfeed3eea089', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 19:15:53', '2019-04-24 19:15:53', '2019-04-24 19:45:53');
INSERT INTO `oauth_access_tokens` VALUES ('ea1496d7b2388b289948ac8a3201863c3c6254a02ff624254bf69ae8b1eaa4c6972158a28bd9e516', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 20:31:30', '2019-04-15 20:31:30', '2019-04-15 21:01:30');
INSERT INTO `oauth_access_tokens` VALUES ('eab3487bb21906ca21c9c040ada6a4383a6c1535da3ee5c9193ebe126a05b33ee2f9456e331c7527', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 17:02:22', '2019-04-16 17:02:22', '2019-04-16 17:32:22');
INSERT INTO `oauth_access_tokens` VALUES ('ebffc89f7b2f45c59e51a271524acdefb620f8f2c58a1558b6a4f8ecc7d5aacfec37f7090de5be9e', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 19:23:22', '2019-04-15 19:23:22', '2019-04-15 19:53:22');
INSERT INTO `oauth_access_tokens` VALUES ('ec202d59036fc31152697e785b11a431da5ba1945fe80123ad29cd149a836d6ba70c3c45f62ddea7', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}},\"profiles\":{\"actions\":{\"noun\":15,\"description\":15}}}', 0, '2019-04-24 18:57:25', '2019-04-24 18:57:25', '2019-04-24 19:27:25');
INSERT INTO `oauth_access_tokens` VALUES ('ec94fc4056c44a1769509b71a2e9316e71fbadd2c1789ece79756d72dd5d894f34851d4c76c6d2fc', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-24 14:12:20', '2019-04-24 14:12:20', '2019-04-24 14:42:20');
INSERT INTO `oauth_access_tokens` VALUES ('ee9c8cf7c30ed457acccdd9003329ae66869881560cf15036185f94e6e35f99c445a20822c3baa17', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 14:50:58', '2019-04-16 14:50:58', '2019-04-16 15:20:59');
INSERT INTO `oauth_access_tokens` VALUES ('eebdc1f186f39195d8ace8171fec2dc6660886fdc7a3178494fcdbcb9a1703065f24c0725b95c827', 2, NULL, 1, 'Personal Access Token', '[]', 0, '2019-01-19 04:05:12', '2019-01-19 04:05:12', '2020-01-19 04:05:12');
INSERT INTO `oauth_access_tokens` VALUES ('f02768bb30ca45927db8a27d39efd7b3b77d02630397354f519d533613e1efc624dcb3ec8627dcf7', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:49:07', '2019-04-16 19:49:07', '2019-04-16 20:19:07');
INSERT INTO `oauth_access_tokens` VALUES ('f6a8a2644aa35948a6af283165e9eba956f939c5673e56f6ee626bfaf759ad343d9598e45fa5ea2e', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 19:46:50', '2019-04-16 19:46:50', '2019-04-16 20:16:50');
INSERT INTO `oauth_access_tokens` VALUES ('faa6e938ff61ab2e55972462da33c30ce43c7782080e214d24524732de9663206c05385152c3415c', 3, 1, 1, 'Token pessoal 3', '{\"permissions\\/all\":{\"actions\":{\"_show\":15}},\"users\":{\"actions\":{\"user_type_id\":15,\"user_situation_id\":15,\"login\":15,\"name\":15,\"password\":15,\"email\":15,\"email_verified_at\":15,\"last_access\":15}}}', 0, '2019-04-22 20:15:58', '2019-04-22 20:15:58', '2019-04-22 20:45:59');
INSERT INTO `oauth_access_tokens` VALUES ('fb7b6a1364259500e795d0a63cb29c74f044f5d60fb73dd4288d5725878e44afa027a73a2f10c419', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-15 21:38:21', '2019-04-15 21:38:21', '2019-04-15 22:08:21');
INSERT INTO `oauth_access_tokens` VALUES ('fb9e12e0452c68b85e415a4823d625ddecfd5382193ace66d715b92401639351e14dc001edc0cce3', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-17 13:57:52', '2019-04-17 13:57:52', '2019-04-17 14:27:52');
INSERT INTO `oauth_access_tokens` VALUES ('fbbad0a936ce88fcdd3c8a310aee15b94d57a9888b2a10d0872ad135c3d444103638596481bce0b8', 3, NULL, 1, 'Token pessoal 3', '[]', 0, '2019-04-16 22:12:01', '2019-04-16 22:12:01', '2019-04-16 22:42:01');

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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária',
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
  CONSTRAINT `permission_fk_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as permissões a serem vinculadas aos perfis' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 1, NULL, 1, 'users', NULL, NULL, '2019-04-30 16:24:38');
INSERT INTO `permissions` VALUES (2, 1, NULL, 2, 'profiles', NULL, NULL, '2019-04-30 16:25:02');
INSERT INTO `permissions` VALUES (6, 1, NULL, 1, 'actions', '2019-05-07 19:02:54', NULL, '2019-05-07 19:02:54');
INSERT INTO `permissions` VALUES (7, 1, NULL, 1, 'permissions/all', '2019-05-07 19:05:07', NULL, '2019-05-07 19:05:07');
INSERT INTO `permissions` VALUES (8, 1, NULL, 1, 'permissions', '2019-05-07 21:09:02', NULL, '2019-05-07 21:09:02');
INSERT INTO `permissions` VALUES (12, 2, NULL, 1, 'users', '2019-05-07 21:11:01', NULL, '2019-05-07 21:11:01');

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do tipo',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição do tipo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `profile_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém a definição dos tipos de perfis disponíveis' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES (1, 'Administrador', 'Administrador do sistema. Perfil com acesso irrestrito.', '2019-04-26 21:56:16', NULL, '2019-04-24 19:19:34');
INSERT INTO `profiles` VALUES (2, 'Pessoa Física', 'Contribuinte pessoa física. Acesso a funcionalidades do município', '2019-04-26 22:02:08', NULL, '2019-04-26 22:02:08');
INSERT INTO `profiles` VALUES (3, 'teste delete', 'sf w fgdsda sdg fgsdg f gf', '2019-04-26 22:02:32', '2019-04-26 22:02:32', '2019-04-26 22:02:28');

-- ----------------------------
-- Table structure for user_profile_actions
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_actions`;
CREATE TABLE `user_profile_actions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Cháve primária',
  `user_profile_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para o vinculo entre usuário e perfil (acesso)',
  `action_id` bigint(20) NOT NULL COMMENT 'Chave estrangeira para a ação',
  `code` int(2) NOT NULL COMMENT 'Código de permissão do atributo',
  `update_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `action_id_user_profile_action`(`action_id`) USING BTREE,
  INDEX `user_profile_action_id`(`id`) USING BTREE,
  INDEX `user_profile_id_user_profile_action`(`user_profile_id`) USING BTREE,
  CONSTRAINT `user_profile_action_fk_action` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_profile_action_fk_user_profile` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Relacionar as ações com o acesso, limitado ao maximo definido pelo perfil ao qual está vinculado' ROW_FORMAT = Compact;

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
-- Records of user_profiles
-- ----------------------------
INSERT INTO `user_profiles` VALUES (1, 3, 1, NULL, NULL, '2019-05-07 16:17:48');

-- ----------------------------
-- Table structure for user_situations
-- ----------------------------
DROP TABLE IF EXISTS `user_situations`;
CREATE TABLE `user_situations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária',
  `noun` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome, tipo, título)',
  `description` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status_access_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém  informações sobre situações/status dos usuários' ROW_FORMAT = Compact;

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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Chave primária',
  `noun` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Rótulo (nome) do tipo',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Descrição do tipo',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_access_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém as informações sobre os tipos de usuários' ROW_FORMAT = Compact;

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
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Login de acesso do usuário',
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Apelido para auxiliar o login (pode ser usado no lugar do documento da empresa por sua facilidade de memorização)',
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Senha de acesso do usuário',
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'E-MAIL de assistência para o acesso',
  `email_verified_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data em que o email foi validado',
  `last_access` datetime(0) NULL DEFAULT NULL COMMENT 'Data do último acesso',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data da última alteração',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT 'Data de deleção',
  `created_at` datetime(0) NOT NULL COMMENT 'Data de criação',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`id`) USING BTREE,
  INDEX `user_situation_id_user`(`user_situation_id`) USING BTREE,
  INDEX `user_type_id_user`(`user_type_id`) USING BTREE,
  CONSTRAINT `user_fk_user_situation` FOREIGN KEY (`user_situation_id`) REFERENCES `user_situations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_fk_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Contém os cadastros dos acessos de todos os usuários' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 3, 1, 'admin', 'Administrador', '$2y$10$rWdfrpkVoTQDpiXpPvmcLuRVDIH/l/GOwdtAa1bYb2JyDAQhx.y.y', 'admin@mail.com', NULL, NULL, '2019-04-15 18:59:20', NULL, '2019-04-15 18:59:20');
INSERT INTO `users` VALUES (4, 3, 1, 'admin2', 'Administrador 2', '$2y$10$njo8BpAUBbDC39o3bmBSKe9BRUOe.Hqt8Ys5opcXRfElkuukurxcu', 'admin2@mail.com', NULL, NULL, '2019-04-24 17:06:11', NULL, '2019-04-15 20:56:56');
INSERT INTO `users` VALUES (5, 3, 1, NULL, NULL, '$2y$10$R5hiUQyoCmnMGjvZ1m8yXe24DtWbZTcl0S0EaQ5yLCdrBQa6vFWxm', 'testereact@mail.com', NULL, NULL, '2019-04-24 14:14:00', '2019-04-24 14:14:00', '2019-04-15 21:01:17');
INSERT INTO `users` VALUES (6, 3, 1, NULL, NULL, '$2y$10$f43xK5MBlN8kevmGufjOA.Sb92I87SPDLV5dbWDhclvZ8sApdiOpi', 'admfdfdin@mail.com', NULL, NULL, '2019-04-22 22:06:14', '2019-04-22 22:06:14', '2019-04-15 21:03:50');
INSERT INTO `users` VALUES (7, 3, 1, NULL, NULL, '$2y$10$KjSGOqInDfp5RYsRVBEQDO47w2PcLzLdsM3aAx78odE3dZnu3arD2', 'affffin@mail.com', NULL, NULL, '2019-04-22 19:35:08', '2019-04-22 19:35:08', '2019-04-16 22:07:20');
INSERT INTO `users` VALUES (8, 3, 1, NULL, NULL, '$2y$10$ZlJkoqY4fgmFDNoM77Y2r.JN4j91Cd0oIXR27n83nh0b1OpSjVZPa', 'adfdffin@mail.com', NULL, NULL, '2019-04-22 22:06:18', '2019-04-22 22:06:18', '2019-04-16 22:09:42');
INSERT INTO `users` VALUES (9, 3, 1, NULL, NULL, '$2y$10$nn0aFfDhrrcV4fiGLj8vL.owD6i9.jeO3TkeTwUG8WRD99nQgZCGa', 'adfgfgfgmin@mail.com', NULL, NULL, '2019-04-22 19:35:18', '2019-04-22 19:35:18', '2019-04-16 22:12:13');
INSERT INTO `users` VALUES (10, 3, 1, NULL, NULL, '$2y$10$TKiJMepVQw1L8o53R2P9o.p/n9dfgyBh3I6GrnPgGnmk56iagKUqK', 'admdfdfd@mail.com', NULL, NULL, '2019-04-16 22:15:19', NULL, '2019-04-16 22:15:19');
INSERT INTO `users` VALUES (11, 3, 1, NULL, NULL, '$2y$10$yqCBJenKOjSCBQDLNRqTmOf5Tb4E0bLHecAde13bU3DZ9II6KaUO2', 'admyhgggin@mail.com', NULL, NULL, '2019-04-22 22:06:21', '2019-04-22 22:06:21', '2019-04-17 13:49:48');
INSERT INTO `users` VALUES (12, 1, 1, 'loginuser', 'Teste useer', '2w2e3e3', 'emasdf@sds.com', NULL, NULL, '2019-04-24 17:32:08', '2019-04-24 17:32:08', '2019-04-22 22:06:07');
INSERT INTO `users` VALUES (13, 1, 2, 'fgdfgtr', 'dfsd sdfsd g', '1q2w3e4r', NULL, NULL, NULL, '2019-04-22 22:09:08', NULL, '2019-04-22 22:09:08');

SET FOREIGN_KEY_CHECKS = 1;
