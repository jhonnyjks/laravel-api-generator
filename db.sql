/*
 Navicat Premium Data Transfer

 Source Server         : medusa - TESTE
 Source Server Type    : SQL Server
 Source Server Version : 10506000
 Source Host           : medusa:1433
 Source Catalog        : DBFINANC
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10506000
 File Encoding         : 65001

 Date: 09/05/2019 16:04:54
*/


-- ----------------------------
-- Table structure for actions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[actions]') AND type IN ('U'))
	DROP TABLE [dbo].[actions]
GO

CREATE TABLE [dbo].[actions] (
  [id] bigint  NOT NULL,
  [permission_id] bigint  NOT NULL,
  [noun] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [code] smallint  NOT NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[actions] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para a permissão',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Rótulo (nome) do atributo',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'noun'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Código de representação do atributo',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'actions',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém as ações que definem uma permissão',
'SCHEMA', N'dbo',
'TABLE', N'actions'
GO


-- ----------------------------
-- Records of actions
-- ----------------------------
INSERT INTO [dbo].[actions]  VALUES (N'1', N'1', N'user_type_id', N'1', N'2019-05-07 18:38:24.000', N'2019-05-07 18:38:24.000', N'2019-04-30 16:26:11.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'5', N'1', N'login', N'15', N'2019-05-08 19:37:57.000', NULL, N'2019-04-30 16:26:11.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'6', N'1', N'user_situation_id', N'1', N'2019-05-06 23:14:20.000', N'2019-05-06 23:14:20.000', N'2019-05-06 23:08:03.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'8', N'1', N'name', N'7', N'2019-05-08 21:31:16.000', NULL, N'2019-05-06 23:10:33.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'9', N'1', N'email', N'7', N'2019-05-07 21:10:10.000', NULL, N'2019-05-06 23:13:28.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'10', N'1', N'user_situation_id', N'7', N'2019-05-06 23:14:55.000', NULL, N'2019-05-06 23:14:28.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'11', N'1', N'email_verified_at', N'1', N'2019-05-07 21:10:32.000', NULL, N'2019-05-06 23:15:12.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'12', N'1', N'password', N'8', N'2019-05-06 23:17:03.000', N'2019-05-06 23:17:03.000', N'2019-05-06 23:15:16.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'13', N'1', N'password', N'7', N'2019-05-07 21:10:22.000', NULL, N'2019-05-06 23:17:16.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'14', N'2', N'noun', N'7', N'2019-05-07 21:32:10.000', NULL, N'2019-05-06 23:17:34.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'15', N'2', N'description', N'7', N'2019-05-07 21:09:48.000', NULL, N'2019-05-06 23:17:50.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'16', N'1', N'user_type_id', N'7', N'2019-05-07 21:10:23.000', NULL, N'2019-05-07 18:38:32.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'18', N'7', N'_show', N'1', N'2019-05-07 19:08:51.000', NULL, N'2019-05-07 19:05:07.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'19', N'8', N'profile_id', N'1', N'2019-05-07 21:36:27.000', N'2019-05-07 21:36:27.000', N'2019-05-07 21:09:03.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'23', N'6', N'permission_id', N'15', N'2019-05-07 21:09:42.000', NULL, N'2019-05-07 21:09:29.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'24', N'6', N'noun', N'7', N'2019-05-07 21:09:38.000', NULL, N'2019-05-07 21:09:30.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'25', N'6', N'code', N'7', N'2019-05-07 21:09:40.000', NULL, N'2019-05-07 21:09:31.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'26', N'1', N'last_access', N'1', N'2019-05-07 21:10:19.000', NULL, N'2019-05-07 21:10:19.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'27', N'12', N'user_type_id', N'1', N'2019-05-07 21:11:01.000', NULL, N'2019-05-07 21:11:01.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'35', N'8', N'permission_id', N'7', N'2019-05-07 21:36:42.000', NULL, N'2019-05-07 21:36:37.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'36', N'8', N'profile_id', N'15', N'2019-05-07 21:36:57.000', NULL, N'2019-05-07 21:36:43.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'37', N'8', N'priority', N'7', N'2019-05-07 21:36:58.000', NULL, N'2019-05-07 21:36:45.000')
GO

INSERT INTO [dbo].[actions]  VALUES (N'38', N'8', N'cpath', N'7', N'2019-05-07 21:36:59.000', NULL, N'2019-05-07 21:36:50.000')
GO


-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_tokens]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_access_tokens]
GO

CREATE TABLE [dbo].[oauth_access_tokens] (
  [id] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [user_id] int  NULL,
  [profile_id] int  NULL,
  [client_id] int  NOT NULL,
  [name] nvarchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [scopes] nvarchar(max) COLLATE Latin1_General_CI_AS  NULL,
  [revoked] tinyint  NOT NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL,
  [expires_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[oauth_access_tokens] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave para o perfil ativo no token',
'SCHEMA', N'dbo',
'TABLE', N'oauth_access_tokens',
'COLUMN', N'profile_id'
GO


-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'0393f1570e528125643cb6ce13a55f2163abfc8d260afedfcce628a037e22391b7e5eb97485e2b5a', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-22 20:51:00.000', N'2019-04-22 20:51:00.000', N'2019-04-22 21:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'048420038839e94deda826579b34e36dda7fcba63b7ca5b61da0eb86e785967c7b5a394d532259fd', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:24:00.000', N'2019-05-07 22:24:00.000', N'2019-05-07 22:54:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'0ca122bf461961aca7a2f9e10dfae782890ae9918913a8cc9deadc7ddf222406d5ce121584a85bb7', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:59:00.000', N'2019-05-08 17:59:00.000', N'2019-05-08 18:29:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'0e21b34327ed22d2e2704bc3e133b44048278077382b7d873df13bbe8c032bf38a06e789480cf6b7', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:58:00.000', N'2019-05-07 22:58:00.000', N'2019-05-07 23:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'0e6e5fd6fe67a24366b3823d57ccc1167b9d7ad1e6feae486edc3e79c6268643de8fd52575e4b8d2', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 18:57:00.000', N'2019-05-09 18:57:00.000', N'2019-05-09 19:27:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'0fe447e4ae42fbfdfe1324dcf8078935bb19ca57557f8251534c2612f44d623981ac3a7f5fc43fb4', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:54:00.000', N'2019-04-16 14:54:00.000', N'2019-04-16 15:24:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'13426f4f2f55b3321b594d9f5f730e38fd310325f66bbd6bd682e261599f4107fe76e96d02b61223', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 17:24:00.000', N'2019-04-24 17:24:00.000', N'2019-04-24 17:54:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'15f5d9c8aea367aa2dbb406075dcaaaa69b121ad80fa9835d9b7ad1059ea2cd3a0a141d69f27c871', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:58:00.000', N'2019-05-07 22:58:00.000', N'2019-05-07 23:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'16a8ca97d3094e1b2b11c9a91f5116d9d54564dd769caec39692f85844fa30536a6f0b858fea9c7d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:55:00.000', N'2019-04-15 21:55:00.000', N'2019-04-15 22:25:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'18e0271958ec555d25944ede51a571ad2beaa07633033bb938d79719b5c664360f8cd30ec6bf28ed', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 19:14:00.000', N'2019-04-24 19:14:00.000', N'2019-04-24 19:44:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'1a103a70400777876fc42fe65501a37b1ff5a1f769d0263816379b3765c8b29186c8cd7ead900934', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 19:02:00.000', N'2019-04-15 19:02:00.000', N'2019-04-15 19:32:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'1b92c7a180860c428a12c672986174e2bfd80a5ab35f12253e6be248705b54a7361d74bce4c39749', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}},"actions":{"actions":{"permission_id":15,"noun":15,"code":15}}}', N'0', N'2019-05-03 13:38:00.000', N'2019-05-03 13:38:00.000', N'2019-05-03 14:08:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'1c6f9c871d8ab4f0863e4b2b2abb9107604ed41f4435100500d49c860383724e4cb429662c052083', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:39:00.000', N'2019-04-15 21:39:00.000', N'2019-04-15 22:09:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'1f7cd4e260cc86dd545a71f987a676a1455fc57518d4d70cdf3e8e418108744a2f2a3a4a63107ab2', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 19:47:00.000', N'2019-04-15 19:47:00.000', N'2019-04-15 20:17:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'271217ae63f0837c6a3d52abefac5e121de0ccb913dd81259c658260f268c821f6fc4d6979d44ae4', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 19:01:46.567', N'2019-05-09 19:01:46.567', N'2019-05-09 19:31:46.663')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'28876ca0fc1d2fda7d8f56b827b0d0bdb2dc2369e1a2f5c543631d940a4f989270e994bb5a202109', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:06:00.000', N'2019-04-15 22:06:00.000', N'2019-04-15 22:36:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'28c0bfb352d3f0e11b34174cfb0643a62552a0cae8b7a4e98b04737d1f34dd51d7f00b27b7acf0af', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 17:25:00.000', N'2019-04-24 17:25:00.000', N'2019-04-24 17:55:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'29b93256e68eedcf2edfafc85cda40541d8260d62260dc528abd2249515f549201331b3ab4240cc9', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:26:00.000', N'2019-04-16 20:26:00.000', N'2019-04-16 20:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'2a8ec273e5ad02a0410f18fdd9d2a9975c4c7022c028691f1e274cccd8d883bc52a2e4e19a076661', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 20:57:00.000', N'2019-04-15 20:57:00.000', N'2019-04-15 21:27:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'2f48c94d7c7e98f503c8e7a78ef60e898c55b0fabfb0b32195be72e449700cd0b3f4eba89d3cc4dd', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 20:26:00.000', N'2019-04-15 20:26:00.000', N'2019-04-15 20:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'319a9bf8613cf74cd21ab1d242066d7d9fc7fc9a21918243e8bac107caa2c354fef41e7fe49ffa25', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:31:00.000', N'2019-04-15 21:31:00.000', N'2019-04-15 22:01:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3280646b11bd885c946e55672c2f5eccf7c983b933dba205e964ef7ae51a64f9b99526724ffb292e', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:05:00.000', N'2019-04-15 22:05:00.000', N'2019-04-15 22:35:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3496bc117497b0f7f9b6f731c0789ce60b444554e227be9e7c8f54220df49013c8910a1d7427bd38', N'10', NULL, N'1', N'Token pessoal 10', N'[]', N'0', N'2019-04-16 22:15:00.000', N'2019-04-16 22:15:00.000', N'2019-04-16 22:45:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'35108ae59be3c4aabf4215e032efcf6a39c672befe4eec1edbd7518b371f8f73fa03cfd42e8f237d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 14:44:00.000', N'2019-04-17 14:44:00.000', N'2019-04-17 15:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'357a7a18ffa7b412e67996444eb30832c06261f5708e2678b2ade360b7f15059b45dc95004663ba8', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:46:00.000', N'2019-04-16 20:46:00.000', N'2019-04-16 21:16:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3771011ec1e763a91f91110edefd520017d72abd02f9fabc4fa69d85d0a9d8830df02a0c394c4569', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":15,"name":2,"email":3,"user_situation_id":7,"email_verified_at":1,"password":4,"user_type_id":4}},"profiles":{"actions":{"noun":0,"description":5}},"permissions\/all":{"actions":{"_show":1}}}', N'0', N'2019-05-07 19:12:00.000', N'2019-05-07 19:12:00.000', N'2019-05-07 19:42:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'38a972e7fa518c81135b4e66638af085d4983804b1e7c2775226cde59012367fb5f3244f61c0d182', N'11', NULL, N'1', N'Token pessoal 11', N'[]', N'0', N'2019-04-17 13:50:00.000', N'2019-04-17 13:50:00.000', N'2019-04-17 14:20:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'394d670730e8c3a7b99983c0287efaa692ca1c210face687d73f3cb65a530fb1396e8d7ffaee66f6', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 13:47:00.000', N'2019-04-17 13:47:00.000', N'2019-04-17 14:17:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'399beaa5268a6831c02077454241654e533463239c548007dadd9dcc9f52925b9986c37aa92be532', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:08:00.000', N'2019-05-08 17:08:00.000', N'2019-05-08 17:38:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'39e4ab1e6b448c9fed307af28df606ee07e0d7a15dd64757dd1c0d10924d41267ebde4b6249980e2', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:22:00.000', N'2019-04-16 14:22:00.000', N'2019-04-16 14:52:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3a55dd52bcc217761b3dc036eb49c727413ddf0fbb82bc9c78722803a4f7f23b9ff97c218e40ec45', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:29:00.000', N'2019-05-07 22:29:00.000', N'2019-05-07 22:59:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3ab1758302a5a50636dcb2906f402681dffdfcabf2b5d6801fcc6c6aabcc87c1bf5b2f7b602fe713', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-22 20:11:00.000', N'2019-04-22 20:11:00.000', N'2019-04-22 20:41:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'3f98b684bf763fbdb65d14046a7c7185448881bf0af18f244281c60564cfed6def260269452a5789', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-22 20:09:00.000', N'2019-04-22 20:09:00.000', N'2019-04-22 20:39:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'406244df0afcecffc4ab5457e96448b080c7644257cf1f73f4ffd5fa56ce831e617fe486075ab870', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 13:57:00.000', N'2019-04-16 13:57:00.000', N'2019-04-16 14:27:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'41b54965aacd2890e83f2daaa95e84d13d89aa295cdb045558b139609a281acab71a9cb59c93f388', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-26 21:53:00.000', N'2019-04-26 21:53:00.000', N'2019-04-26 22:23:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'43c03ca3b816ce2bc19e106959b75c8e846b4f1c627e5669b855093d88c321d718a17560650f7370', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}},"actions":{"actions":{"permission_id":15,"noun":15,"code":15}}}', N'0', N'2019-05-02 14:50:00.000', N'2019-05-02 14:50:00.000', N'2019-05-02 15:20:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'44c929eb5202f17529f9aee0fe8ef7c7015a4ebf5d4efadf2973e9c9d39ee00b95ee28fbca6fce5e', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 17:20:00.000', N'2019-04-24 17:20:00.000', N'2019-04-24 17:50:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'4a2f5674e762349660f34d195840207ce6e8d6ad49ea0736bbb12c2618df6cd670e31bebfef6d625', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:49:00.000', N'2019-05-08 17:49:00.000', N'2019-05-08 18:19:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'4c0d3063a2a13cbe23b7948a9062a1ad211603240dbe279cb6678a039f4688c6d97cead2eb7f3973', N'4', NULL, N'1', N'Token pessoal 4', N'[]', N'0', N'2019-04-24 17:07:00.000', N'2019-04-24 17:07:00.000', N'2019-04-24 17:37:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'507e3f2f8aebdf1579fa2fb53a9de8ca61371b7cb5db74090fd7aed98d564140c98e12fd6f64decf', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:28:00.000', N'2019-04-15 21:28:00.000', N'2019-04-15 21:58:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'513904f00d32554704e1a6b808bac73186e9d7f6ed14d34895b6413b92317ab760d7e1b453d84c8b', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:24:00.000', N'2019-04-15 22:24:00.000', N'2019-04-15 22:54:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'5385078a977f620f3ddbb9cb10076b8a203ef8779ff55e9b84fb6380f1f2648671462245e9376f94', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-22 20:16:00.000', N'2019-04-22 20:16:00.000', N'2019-04-22 20:46:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'54b9f790d10c0586f9332b0211b2eec19fc39b1bb74918da27c485ad6fa63d7969d803c8dadde35a', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 16:56:00.000', N'2019-05-08 16:56:00.000', N'2019-05-08 17:26:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'559b7ce48ad012c2f3db917702accd368392d41091f96eeb6e12e6cd98b9fef7d4a6f33fcb6987e7', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:20:00.000', N'2019-04-15 22:20:00.000', N'2019-04-15 22:50:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'5632532a4c833e7bbc0f45719f342044ec80fe16c10212714cb8f464256747e74a5b71cdb1581ebb', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 20:18:00.000', N'2019-04-15 20:18:00.000', N'2019-04-15 20:48:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'568817b75353797ea9a8f2b1b4bfbd0316dbd9f5064d04bbd8d9f09bceb47d69e8259ef894a108f9', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 18:38:00.000', N'2019-05-08 18:38:00.000', N'2019-05-08 19:08:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'5750fa15883f6ee9d5f25fc7270d2001ec0d4f38232fa25d7bcf9a5a50761d03bec5625d4be227c9', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}},"actions":{"actions":{"permission_id":15,"noun":15,"code":15}}}', N'0', N'2019-05-06 17:59:00.000', N'2019-05-06 17:59:00.000', N'2019-05-06 18:29:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'5c0245b802e443459f69bf74489e7894f6ccc1fb0483b1ff29d710620c306e49b4551b27b12d6355', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:37:00.000', N'2019-05-07 22:37:00.000', N'2019-05-07 23:07:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'5f608a4768e21ca9af6b4ae0eca948143f0405b98edef79623e0fb42c7db4dd1853f7831f6615d60', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-22 19:22:00.000', N'2019-04-22 19:22:00.000', N'2019-04-22 19:52:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'6131cc007efed07e059a50c60c52dcf7c292bde63be2c2878b063499805836405e1f55d632f2c37d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:46:00.000', N'2019-04-16 20:46:00.000', N'2019-04-16 21:16:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'615e6d69b4d27a38bcae202c815a70dd8ca88d58a7f17c3a96bef89ac8bb7e0f7feab65b1cfb460a', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:02:00.000', N'2019-05-08 17:02:00.000', N'2019-05-08 17:32:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'61d966128fdf5c408a77e0781e0fd46896c1c701a11e67a64cc79c8159103f4d42f68671309edc2c', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":15,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 18:44:00.000', N'2019-05-08 18:44:00.000', N'2019-05-08 19:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'66b3ce039dc5f92eb57235505abc37645ebcc3e732f9e8464b15b41f81b7eb8963c2115c59c87cf5', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:01:00.000', N'2019-05-08 17:01:00.000', N'2019-05-08 17:31:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'694da679f1539c2a70b796f9c145fc0fd8f03c3d9034fbe28f567c25cfa778eefdcd0a03f4503fd3', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:19:00.000', N'2019-04-16 14:19:00.000', N'2019-04-16 14:49:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'6a8f81db5783a0d70873a0758ce8ad6ebc6c4a20f5500785ec56a23428f72c675f2fbb489199ab2b', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:26:00.000', N'2019-04-16 14:26:00.000', N'2019-04-16 14:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'6beffa4ab5807cdf607f8e4cbdd877426f0d11bf740ed36c60b7ca991f44e844b040fe015056b33d', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:44:00.000', N'2019-05-07 22:44:00.000', N'2019-05-07 23:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'6d555b2a95a184aa3587d9a032fcb1a388252341dc5b21cad5472047ab79977799221225384e5728', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 18:48:00.000', N'2019-05-09 18:48:00.000', N'2020-05-09 18:48:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'6d6bb91270948a4c9235a117c1bc33e6034c768ee37ad526d87a65ff225ad507fc1ae12849d66506', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:44:00.000', N'2019-04-16 19:44:00.000', N'2019-04-16 20:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'70cf1bf7cbb3240e3c1d121fe9c23eaa3d5560e2fb5bd86b6279d17145af2b01881357c1e838c89c', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:15:00.000', N'2019-04-15 22:15:00.000', N'2019-04-15 22:45:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'713ff342d3c7e361fdc0ce495e9d49259898f7c942700ff5907b57c40ac10ea3567bf070e8b94c58', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:26:00.000', N'2019-04-16 20:26:00.000', N'2019-04-16 20:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'7488d9aa5002d3e4cd8a742e34f88268916562766d4d374a2c207b6cd234b97a9dcd75392c8084cb', N'2', NULL, N'1', N'Personal Access Token', N'[]', N'1', N'2019-01-19 04:01:00.000', N'2019-01-19 04:01:00.000', N'2020-01-19 04:01:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'76f7ba9a9543f0893550a5ea9c406b0b00c7640e677b54dd2a8cbcc5dadcaea4ec1688f21ab23bfc', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 17:09:00.000', N'2019-05-08 17:09:00.000', N'2019-05-08 17:39:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'7711e074d2e5433b8c16f5bfa539f49a0252259ee0ada2b4ef639d6012f4cbb94765bc68f70493ad', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:39:00.000', N'2019-05-07 22:39:00.000', N'2019-05-07 23:09:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'77f42b13143f4b8223b626d02d6764bcb591182fe159eabd7a7bb2d29ed569ba12a609b664f3f8e1', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-05-07 21:23:00.000', N'2019-05-07 21:23:00.000', N'2019-05-07 21:53:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'787aaae86ecd6f83fda090128431460d51c90f253392d27699f7d86de07bbd377c6e4808dce5dd39', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:48:00.000', N'2019-04-16 20:48:00.000', N'2019-04-16 21:18:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'79753ce2279e81d6ad814e44c6daf6a786e66c424d31e810cde4b53c5e541af5a2bbfb89ca8ee15b', N'2', NULL, N'1', N'Personal Access Token', N'[]', N'0', N'2019-01-19 04:01:00.000', N'2019-01-19 04:01:00.000', N'2020-01-19 04:01:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'7e27103c8b2704f8ab4d78baad01d19e5f4aa35ead8cfc369ca1bbfb532b16ef525188c054105483', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 18:52:00.000', N'2019-05-09 18:52:00.000', N'2020-05-09 18:52:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'7f7f72bdfc596a4c39be7cf2217fa9b6f9c839ed3b2ae5d0c529f419102fdab5f8aa72fe9b238d65', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-22 20:16:00.000', N'2019-04-22 20:16:00.000', N'2019-04-22 20:46:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'80772a293da381317e2f9c32dcf9a2ad90a67bdc258f924fdce62ff4960771fad5f83e48437e0712', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:08:00.000', N'2019-04-15 22:08:00.000', N'2019-04-15 22:38:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'83f7fff8017040b8e68b81a6a09cbdd56e0c3a3533ac74684f5a23fbdd5128f4c62d5cf473848837', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-24 17:09:00.000', N'2019-04-24 17:09:00.000', N'2019-04-24 17:39:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'84ab1ad545541ef9b6aa9a49c2fc3569c76939e9de68876125f6bd1fcf8e481fd0113c978a8b3fde', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}}}', N'0', N'2019-04-30 14:00:00.000', N'2019-04-30 14:00:00.000', N'2019-04-30 14:30:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'84ba466cb2c6932445993685c0a57c097adec2530dc5d9f425a9f6307ee45f7e7b515cd5cfd86853', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 18:53:00.000', N'2019-04-24 18:53:00.000', N'2019-04-24 19:23:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'8900074a9d6c81e74b4804ab61d585a5acb6713cb9946f4df97b5a7c05d614608f62f8b2695e5054', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-22 19:22:00.000', N'2019-04-22 19:22:00.000', N'2019-04-22 19:52:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'8ad1b574dcd912d7b4ed78a232748e9de13128e880b4a108284000b896d8e533ae913e8f93e7bc64', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 21:21:00.000', N'2019-04-16 21:21:00.000', N'2019-04-16 21:51:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'8d9d139d7fa8c7039a3d27078a7ff5e750b02a264cda92fb422b91574058afa175c82ed91d4b6281', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 20:24:00.000', N'2019-04-16 20:24:00.000', N'2019-04-16 20:54:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'8fbf737a14c75a0d5b0f5980605a43a91b80c04c8ac33440ae00fff2b5977e1f5ff7d57032c0a93e', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}},"actions":{"actions":{"permission_id":15,"noun":15,"code":15}}}', N'0', N'2019-05-03 17:40:00.000', N'2019-05-03 17:40:00.000', N'2019-05-03 18:10:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9050109cd1d728424ea359a6dd8a53eb94622e14df5015a3425affd368098103ecf6bea6219081c2', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-22 20:59:00.000', N'2019-04-22 20:59:00.000', N'2019-04-22 21:29:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'91512cfa759f0c9687394b74fbc1a1fa504eaaa39f259420f251ef89798ac2fde7f70341a7f83e25', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:58:00.000', N'2019-05-07 22:58:00.000', N'2019-05-07 23:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'91912d85ec40d646a30b2ae38cb646ef0e7ebc9198e030c9b3114f9901f52866f436e626e88884de', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:37:00.000', N'2019-04-16 19:37:00.000', N'2019-04-16 20:07:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9193bb3663eeb56018d7fdd4c821401f3151b0fa7d1b005a031b5228fe1f8f1e0eb382d6b81a0345', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:46:00.000', N'2019-04-16 19:46:00.000', N'2019-04-16 20:16:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'93e88abcaf776119b10ab3964fbf6c3cb87dc5461efe8e45698e375386432d4cc9a25fee60ed25a2', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:42:00.000', N'2019-04-16 19:42:00.000', N'2019-04-16 20:12:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'952192aa86a31e9222117ea5e4f9add6e57ece2b744793ce9dbbe45b458412ed16795422aef9117c', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 16:46:00.000', N'2019-05-08 16:46:00.000', N'2019-05-08 17:16:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9b5261bc8b45e920ae6f8be141b2822dfa8c0da4946a811bea297543503848f4b816fdb7091b8b05', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}}}', N'0', N'2019-04-29 14:00:00.000', N'2019-04-29 14:00:00.000', N'2019-04-29 14:30:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9cca51ff5044cfff392f8f58ba9be8104bdb05a15f08358b3d8bf600aded4ea7189d734bad454d20', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:41:00.000', N'2019-05-07 22:41:00.000', N'2019-05-07 23:11:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9cd115fe9ab351348fb9d01f45d8d893f4d534da01f92f4b1a9627b111951562f79b6497ecc4bb07', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-05-08 17:07:00.000', N'2019-05-08 17:07:00.000', N'2019-05-08 17:37:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9d004b43fa26013cdf68c639b102388e7b0f479dd45315a8479c368314bebb436b32096fbd0380c1', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:54:00.000', N'2019-04-16 19:54:00.000', N'2019-04-16 20:24:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9e4f8ffaa5d4ed6719321243a3fa06c665ef057a7b8d91b84da9951d30807605582e8f7909381666', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:19:00.000', N'2019-05-07 22:19:00.000', N'2019-05-07 22:49:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'9fb17ab542c0580bfa26128daeb79170c087b9f6edbff5d2fd37930eac6602f7b4624eafa8f99a82', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}}}', N'0', N'2019-04-29 18:35:00.000', N'2019-04-29 18:35:00.000', N'2019-04-29 19:05:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'a15b0021cbe921dd8d4ab2303071d7b27dcc80b0ac28adc855534cd07f0798796797e43890802d99', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 19:36:00.000', N'2019-04-15 19:36:00.000', N'2019-04-15 20:06:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'a4b5b73eee6f4cc400a66c56dfdf7d0f5dca078b53b299d7c7a9f68eee5924b264b79dcc4f8bb2f6', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-24 14:12:00.000', N'2019-04-24 14:12:00.000', N'2019-04-24 14:42:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'a7114c78bbd24e0208cb70fd89a37e568be9ee1d50c63642245886d2a816df89e12bacbef2945f36', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:14:00.000', N'2019-04-15 22:14:00.000', N'2019-04-15 22:44:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'a98e8f25a7e2ae04e19c4fb319b77e65c99e6153b74c9f8bd5d94ed2924d4e7283a440c13f041f94', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:28:00.000', N'2019-04-15 21:28:00.000', N'2019-04-15 21:58:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'aa008690c12dc8255af19e018a5e3ea7d902fa0df9846f47a3c31614093d6dc789905563ddd229c5', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 18:02:00.000', N'2019-05-08 18:02:00.000', N'2019-05-08 18:32:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ae41bbb6749e08e5f597c4d6462c8ab58dc4c0f869421a484b57dc147bb1beff0648bff53eed0f9e', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 19:06:00.000', N'2019-04-24 19:06:00.000', N'2019-04-24 19:36:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'aea4d884636a6403ad02a30b7b8fc7b0adc2c75170f40fe90687040d811b46d4d9f71fcac1c77333', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:58:00.000', N'2019-05-07 22:58:00.000', N'2019-05-07 23:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b12d6e971b814836c5bc465f77e317f8b3ccd01dee274b345cf7b99d41e907625e6126bbc2449b34', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-22 14:26:00.000', N'2019-04-22 14:26:00.000', N'2019-04-22 14:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b3ed7309283ecf8e46904ea80ea2a304a38b4f80d53baef3950d22c64c6d440687fa789aabb54b66', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:51:00.000', N'2019-04-16 19:51:00.000', N'2019-04-16 20:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b528b59aa34755f8aa84c0baa7309a971281b843b5d5097062eb446ff7339f31f31d41075ecd551d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 21:28:00.000', N'2019-04-16 21:28:00.000', N'2019-04-16 21:58:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b57bf0adc433cef34c5f29313af6d45823d15ca1575c5831b3c08a6f6ec0a302927f1cd9d7e5318d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-05-07 20:51:00.000', N'2019-05-07 20:51:00.000', N'2019-05-07 21:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b6ee4704a1c1c8802e782f537eee282885425f9239547caa12c04adb627adce48a2963196da9df43', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 17:21:00.000', N'2019-04-24 17:21:00.000', N'2019-04-24 17:51:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'b6f3c51ef2c400500b44b20420b9ddb658784157278c0ed3cd6a0b8ea79175e2bcefab8dba4b961b', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-24 17:22:00.000', N'2019-04-24 17:22:00.000', N'2019-04-24 17:52:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'baf40c62a333d4a55e742ce8c1cb7be24de190488fe0147e05820f6ab6830cd7e1b806279766c899', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 21:26:00.000', N'2019-05-07 21:26:00.000', N'2019-05-07 21:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'bcb112c62c25f879c7d3a2b77fd6c5f17dc3d25d10179097bf009f0b41cdc8b5ede15d810a241da1', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 19:00:00.000', N'2019-05-09 19:00:00.000', N'2020-05-09 19:00:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'bdb8661efdffc12167e57b6cedf22181ae35a14a99b8d540aa6db6f600e796b5dd2a1d9b24774723', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:43:00.000', N'2019-05-07 22:43:00.000', N'2019-05-07 23:13:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'c587578913761f729427c212b55d9aefc09c4e91bd454979167ad3af289df809069e5a77278854cf', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 13:58:00.000', N'2019-04-17 13:58:00.000', N'2019-04-17 14:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'c760a902bb4f284dd05deebf4e7685221d89d6d3cf79961187978fff68371b9b027fbef2645f7d94', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:35:00.000', N'2019-05-07 22:35:00.000', N'2019-05-07 23:05:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'c7db6e7eae28699e9028e29b1fe908a8c98cb9aa9b8bf05707167a08ab4e8c163e6f4bff43ce71f6', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 17:16:00.000', N'2019-04-24 17:16:00.000', N'2019-04-24 17:46:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'c92f7c110510f7094f2619a80e4045ae7c8d517fb26795bf00d93a55e5ac23b79151318723dc7ae0', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:09:00.000', N'2019-04-15 22:09:00.000', N'2019-04-15 22:39:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'c9c719900940def04864e4bc3c9d03ef0d6b8513823cf6a9c0c44bcd0297e299d2bd4ce47a34043d', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:09:00.000', N'2019-04-15 22:09:00.000', N'2019-04-15 22:39:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ca13ebf7852e699567c3008843e31c3e3e078b4a5dc4e1c074854622edc5f0067ebcaedae23bc4ed', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 17:51:00.000', N'2019-04-24 17:51:00.000', N'2019-04-24 18:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ce122a41302598f4aa598b47779194a8f82d3f95b4f34d67b91633dfb71a69f82bbaea21e6c3d35a', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:44:00.000', N'2019-04-15 21:44:00.000', N'2019-04-15 22:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'cf3535e8c27b691becd25cbeb5ab97f8b381376170ea5ebf36c888c46858d55ca36682ae378e98e1', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 14:44:00.000', N'2019-04-17 14:44:00.000', N'2019-04-17 15:14:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'cf7c859e255a1b542e6a2598e15de4ad93ad06a5aa405972120559e76ff3100778691795afa7a360', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 21:15:00.000', N'2019-04-16 21:15:00.000', N'2019-04-16 21:45:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'cfa87197ba7b25bfab9fe6c342e286e1299e377e25e8cf74f0e5e1f4663303fa8958bd4ae9c48b46', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 22:14:00.000', N'2019-04-15 22:14:00.000', N'2019-04-15 22:44:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'd82a1cccc4b4ef9de1d2bef1ad4e505135b3c1e73a2bf2da7fa721bb760437242196c42393573694', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 19:03:00.000', N'2019-04-15 19:03:00.000', N'2019-04-15 19:33:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'd9a5dcccc42b453e5559f6309c16f8614fd22a466f97b8eb3d33358a3b3132da20cc44ea0bc46d68', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}},"permissions":{"actions":{"profile_id":15,"permission_id":15,"priority":15,"cpath":15}},"actions":{"actions":{"permission_id":15,"noun":15,"code":15}}}', N'0', N'2019-05-03 20:03:00.000', N'2019-05-03 20:03:00.000', N'2019-05-03 20:33:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'dde24572669021e10a671403e14236b080db9984f1e27ce8438cbdacf5fa34ef11047e907551e612', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:51:00.000', N'2019-04-15 21:51:00.000', N'2019-04-15 22:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'def0cee1e890cbb03e1a55c99faf64cf15dc7a80e48ad89c1f891326450097f931ba89be09357845', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:20:00.000', N'2019-05-07 22:20:00.000', N'2019-05-07 22:50:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'df9a5ca2dc8552581469a0014be35b5f1b4e7577680b5aae46850a6fbe7791fe0fdf2d83db9e113a', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:28:00.000', N'2019-05-07 22:28:00.000', N'2019-05-07 22:58:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e08f0cdf5fb5ff368d7d4d50453b88c050adae09e91f45c8fadd3bb44aff4189de1e17de735f79ec', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 21:51:00.000', N'2019-05-07 21:51:00.000', N'2019-05-07 22:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e1f605d6e582a63f310f3c7892843b2d49dfdf139f27b62c99d0bd9a8de72e81c36a63f446a78a97', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-24 14:10:00.000', N'2019-04-24 14:10:00.000', N'2019-04-24 14:40:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e25592bf2888f9ffeed9678a6abdbfe71c22ed30ceace0d84a3b6652567591f326579fc0ffe5115f', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 16:48:00.000', N'2019-04-17 16:48:00.000', N'2019-04-17 17:18:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e2b4ed8f8270ab4ecf190118d50eaa2f9f6033510c52675bce1784e6c70704dc3f98a2861c33ee09', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:21:00.000', N'2019-04-16 14:21:00.000', N'2019-04-16 14:51:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e4a2309356edc16e58391d8c8b58c990dfbf53ac9d1d911ad919455061ce825d74fa40dae7ea4c28', N'3', NULL, N'3', N'Token pessoal 3', N'[]', N'0', N'2019-05-09 18:26:00.000', N'2019-05-09 18:26:00.000', N'2019-05-09 18:56:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e4f1adfaf429a348814622b6f4dacdf9937710c0fb8263bfe87586f9285af26b16919b04d3510b28', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 21:19:00.000', N'2019-04-16 21:19:00.000', N'2019-04-16 21:49:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e5ebfd4bf6660e6dafbc5b79bdc5a948d0952d89321ed8818e2a7e53786cdaef6525c03047ac5893', N'4', NULL, N'1', N'Token pessoal 4', N'[]', N'0', N'2019-04-15 20:57:00.000', N'2019-04-15 20:57:00.000', N'2019-04-15 21:27:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e7d4b3df561e41d2e2040762005b71adfb263771f934464f07a320b1214527361130bfeed3eea089', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 19:16:00.000', N'2019-04-24 19:16:00.000', N'2019-04-24 19:46:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'e871c1b719eb36880dd04597d58b76474fc8bf9618fe7d4610ef57489c693e364cd3f7b09bab80f8', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:25:00.000', N'2019-05-07 22:25:00.000', N'2019-05-07 22:55:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ea1496d7b2388b289948ac8a3201863c3c6254a02ff624254bf69ae8b1eaa4c6972158a28bd9e516', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 20:32:00.000', N'2019-04-15 20:32:00.000', N'2019-04-15 21:02:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'eab3487bb21906ca21c9c040ada6a4383a6c1535da3ee5c9193ebe126a05b33ee2f9456e331c7527', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 17:02:00.000', N'2019-04-16 17:02:00.000', N'2019-04-16 17:32:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'eb3180a0b17e615cc8a42122f9b79e7815d900b8593640ce351ef750db57766c7336e8b08babd28c', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:27:00.000', N'2019-05-07 22:27:00.000', N'2019-05-07 22:57:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ebffc89f7b2f45c59e51a271524acdefb620f8f2c58a1558b6a4f8ecc7d5aacfec37f7090de5be9e', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 19:23:00.000', N'2019-04-15 19:23:00.000', N'2019-04-15 19:53:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ec202d59036fc31152697e785b11a431da5ba1945fe80123ad29cd149a836d6ba70c3c45f62ddea7', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}},"profiles":{"actions":{"noun":15,"description":15}}}', N'0', N'2019-04-24 18:57:00.000', N'2019-04-24 18:57:00.000', N'2019-04-24 19:27:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ec94fc4056c44a1769509b71a2e9316e71fbadd2c1789ece79756d72dd5d894f34851d4c76c6d2fc', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-24 14:12:00.000', N'2019-04-24 14:12:00.000', N'2019-04-24 14:42:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'ee9c8cf7c30ed457acccdd9003329ae66869881560cf15036185f94e6e35f99c445a20822c3baa17', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 14:51:00.000', N'2019-04-16 14:51:00.000', N'2019-04-16 15:21:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'eebdc1f186f39195d8ace8171fec2dc6660886fdc7a3178494fcdbcb9a1703065f24c0725b95c827', N'2', NULL, N'1', N'Personal Access Token', N'[]', N'0', N'2019-01-19 04:05:00.000', N'2019-01-19 04:05:00.000', N'2020-01-19 04:05:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'f02768bb30ca45927db8a27d39efd7b3b77d02630397354f519d533613e1efc624dcb3ec8627dcf7', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:49:00.000', N'2019-04-16 19:49:00.000', N'2019-04-16 20:19:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'f3d0f40438458fe447a1af1acf4a16079e5e1483fb32aad534066469c23a828052f04717b5def7d9', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-08 18:43:00.000', N'2019-05-08 18:43:00.000', N'2019-05-08 19:13:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'f6a8a2644aa35948a6af283165e9eba956f939c5673e56f6ee626bfaf759ad343d9598e45fa5ea2e', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 19:47:00.000', N'2019-04-16 19:47:00.000', N'2019-04-16 20:17:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'faa6e938ff61ab2e55972462da33c30ce43c7782080e214d24524732de9663206c05385152c3415c', N'3', N'1', N'1', N'Token pessoal 3', N'{"permissions\/all":{"actions":{"_show":15}},"users":{"actions":{"user_type_id":15,"user_situation_id":15,"login":15,"name":15,"password":15,"email":15,"email_verified_at":15,"last_access":15}}}', N'0', N'2019-04-22 20:16:00.000', N'2019-04-22 20:16:00.000', N'2019-04-22 20:46:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'fb7b6a1364259500e795d0a63cb29c74f044f5d60fb73dd4288d5725878e44afa027a73a2f10c419', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-15 21:38:00.000', N'2019-04-15 21:38:00.000', N'2019-04-15 22:08:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'fb9e12e0452c68b85e415a4823d625ddecfd5382193ace66d715b92401639351e14dc001edc0cce3', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-17 13:58:00.000', N'2019-04-17 13:58:00.000', N'2019-04-17 14:28:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'fbbad0a936ce88fcdd3c8a310aee15b94d57a9888b2a10d0872ad135c3d444103638596481bce0b8', N'3', NULL, N'1', N'Token pessoal 3', N'[]', N'0', N'2019-04-16 22:12:00.000', N'2019-04-16 22:12:00.000', N'2019-04-16 22:42:00.000')
GO

INSERT INTO [dbo].[oauth_access_tokens]  VALUES (N'fc3377c44c97bfbb910fb0c3d94097c3263d1530a3a3429d5bbc99551ae2ba37c7454fa6cd86a506', N'3', N'1', N'1', N'Token pessoal 3', N'{"users":{"actions":{"login":7,"name":7,"email":7,"user_situation_id":7,"email_verified_at":1,"password":7,"user_type_id":7,"last_access":1}},"profiles":{"actions":{"noun":7,"description":7}},"actions":{"actions":{"permission_id":15,"noun":7,"code":7}},"permissions\/all":{"actions":{"_show":1}},"permissions":{"actions":{"permission_id":7,"profile_id":15,"priority":7,"cpath":7}}}', N'0', N'2019-05-07 22:46:00.000', N'2019-05-07 22:46:00.000', N'2019-05-07 23:16:00.000')
GO


-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_auth_codes]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_auth_codes]
GO

CREATE TABLE [dbo].[oauth_auth_codes] (
  [id] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [user_id] int  NOT NULL,
  [client_id] int  NOT NULL,
  [scopes] nvarchar(max) COLLATE Latin1_General_CI_AS  NULL,
  [revoked] tinyint  NOT NULL,
  [expires_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[oauth_auth_codes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_clients]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_clients]
GO

CREATE TABLE [dbo].[oauth_clients] (
  [id] int  NOT NULL,
  [user_id] int  NULL,
  [name] nvarchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [secret] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [redirect] nvarchar(max) COLLATE Latin1_General_CI_AS  NOT NULL,
  [personal_access_client] tinyint  NOT NULL,
  [password_client] tinyint  NOT NULL,
  [revoked] tinyint  NOT NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[oauth_clients] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO [dbo].[oauth_clients]  VALUES (N'1', NULL, N'Laravel Personal Access Client', N'9yITPOK3buDAX6Oz9cZWtLUG0cbLVEB6tHQNWRiA', N'http://localhost', N'1', N'0', N'0', N'2019-01-19 02:20:19.000', N'2019-01-19 02:20:19.000')
GO

INSERT INTO [dbo].[oauth_clients]  VALUES (N'2', NULL, N'Laravel Password Grant Client', N'3sZgjqLBt4XCdQtfc8OQwMsPv13f2M7GLezdroZY', N'http://localhost', N'0', N'1', N'0', N'2019-01-19 02:20:19.000', N'2019-01-19 02:20:19.000')
GO

INSERT INTO [dbo].[oauth_clients]  VALUES (N'3', NULL, N'Laravel Personal Access Client', N'aNntIbb0JFjweko24b3xsSn6dveehSNIYLGOvOoY', N'http://localhost', N'1', N'0', N'0', N'2019-05-09 18:14:59.000', N'2019-05-09 18:14:59.000')
GO

INSERT INTO [dbo].[oauth_clients]  VALUES (N'4', NULL, N'Laravel Password Grant Client', N'7X5gWQVjmzD3KCbnqQz9kN55D2C6e9wQ72K3qdaY', N'http://localhost', N'0', N'1', N'0', N'2019-05-09 18:14:59.000', N'2019-05-09 18:14:59.000')
GO


-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_personal_access_clients]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_personal_access_clients]
GO

CREATE TABLE [dbo].[oauth_personal_access_clients] (
  [id] int  NOT NULL,
  [client_id] int  NOT NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[oauth_personal_access_clients] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO [dbo].[oauth_personal_access_clients]  VALUES (N'1', N'1', N'2019-01-19 02:20:19.000', N'2019-01-19 02:20:19.000')
GO

INSERT INTO [dbo].[oauth_personal_access_clients]  VALUES (N'2', N'3', N'2019-05-09 18:14:59.000', N'2019-05-09 18:14:59.000')
GO


-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_refresh_tokens]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_refresh_tokens]
GO

CREATE TABLE [dbo].[oauth_refresh_tokens] (
  [id] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [access_token_id] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [revoked] tinyint  NOT NULL,
  [expires_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[oauth_refresh_tokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[password_resets]') AND type IN ('U'))
	DROP TABLE [dbo].[password_resets]
GO

CREATE TABLE [dbo].[password_resets] (
  [email] nvarchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [token] nvarchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [created_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[password_resets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for permissions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[permissions]') AND type IN ('U'))
	DROP TABLE [dbo].[permissions]
GO

CREATE TABLE [dbo].[permissions] (
  [id] bigint  NOT NULL,
  [profile_id] bigint  NOT NULL,
  [permission_id] bigint  NULL,
  [priority] smallint  NOT NULL,
  [cpath] nvarchar(max) COLLATE Latin1_General_CI_AS  NOT NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[permissions] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave para o perfil',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'profile_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeria para a permissão mandatória',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'A discutir a necessidade',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'priority'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Caminho para o arquivo ou diretório sob a qual a permissão incidirá',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'cpath'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém a data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém a data de criação do registro',
'SCHEMA', N'dbo',
'TABLE', N'permissions',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém as permissões a serem vinculadas aos perfis',
'SCHEMA', N'dbo',
'TABLE', N'permissions'
GO


-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO [dbo].[permissions]  VALUES (N'1', N'1', NULL, N'1', N'users', NULL, NULL, N'2019-04-30 16:24:38.000')
GO

INSERT INTO [dbo].[permissions]  VALUES (N'2', N'1', NULL, N'2', N'profiles', NULL, NULL, N'2019-04-30 16:25:02.000')
GO

INSERT INTO [dbo].[permissions]  VALUES (N'6', N'1', NULL, N'1', N'actions', N'2019-05-07 19:02:54.000', NULL, N'2019-05-07 19:02:54.000')
GO

INSERT INTO [dbo].[permissions]  VALUES (N'7', N'1', NULL, N'1', N'permissions/all', N'2019-05-07 19:05:07.000', NULL, N'2019-05-07 19:05:07.000')
GO

INSERT INTO [dbo].[permissions]  VALUES (N'8', N'1', NULL, N'1', N'permissions', N'2019-05-07 21:09:02.000', NULL, N'2019-05-07 21:09:02.000')
GO

INSERT INTO [dbo].[permissions]  VALUES (N'12', N'2', NULL, N'1', N'users', N'2019-05-07 21:11:01.000', NULL, N'2019-05-07 21:11:01.000')
GO


-- ----------------------------
-- Table structure for profiles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[profiles]') AND type IN ('U'))
	DROP TABLE [dbo].[profiles]
GO

CREATE TABLE [dbo].[profiles] (
  [id] bigint  NOT NULL,
  [noun] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [description] nvarchar(250) COLLATE Latin1_General_CI_AS  NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[profiles] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Rótulo (nome) do tipo',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'noun'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Descrição do tipo',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'profiles',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém a definição dos tipos de perfis disponíveis',
'SCHEMA', N'dbo',
'TABLE', N'profiles'
GO


-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO [dbo].[profiles]  VALUES (N'1', N'Administrador', N'Administrador do sistema. Perfil com acesso irrestrito.', N'2019-04-26 21:56:16.000', NULL, N'2019-04-24 19:19:34.000')
GO

INSERT INTO [dbo].[profiles]  VALUES (N'2', N'Pessoa Física', N'Contribuinte pessoa física. Acesso a funcionalidades do município', N'2019-04-26 22:02:08.000', NULL, N'2019-04-26 22:02:08.000')
GO

INSERT INTO [dbo].[profiles]  VALUES (N'3', N'teste delete', N'sf w fgdsda sdg fgsdg f gf', N'2019-04-26 22:02:32.000', N'2019-04-26 22:02:32.000', N'2019-04-26 22:02:28.000')
GO


-- ----------------------------
-- Table structure for user_profile_actions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_profile_actions]') AND type IN ('U'))
	DROP TABLE [dbo].[user_profile_actions]
GO

CREATE TABLE [dbo].[user_profile_actions] (
  [id] bigint  NOT NULL,
  [user_profile_id] bigint  NOT NULL,
  [action_id] bigint  NOT NULL,
  [code] int  NOT NULL,
  [update_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[user_profile_actions] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Cháve primária',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para o vinculo entre usuário e perfil (acesso)',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'user_profile_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para a ação',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'action_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Código de permissão do atributo',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'update_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Relacionar as ações com o acesso, limitado ao maximo definido pelo perfil ao qual está vinculado',
'SCHEMA', N'dbo',
'TABLE', N'user_profile_actions'
GO


-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_profiles]') AND type IN ('U'))
	DROP TABLE [dbo].[user_profiles]
GO

CREATE TABLE [dbo].[user_profiles] (
  [id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [profile_id] bigint  NOT NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[user_profiles] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para o usuário',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para o perfil',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'profile_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém o vínculo entre o usuário e o perfil',
'SCHEMA', N'dbo',
'TABLE', N'user_profiles'
GO


-- ----------------------------
-- Records of user_profiles
-- ----------------------------
INSERT INTO [dbo].[user_profiles]  VALUES (N'1', N'3', N'1', NULL, NULL, N'2019-05-07 16:17:48.000')
GO

INSERT INTO [dbo].[user_profiles]  VALUES (N'2', N'3', N'2', NULL, NULL, N'2019-05-07 16:17:48.000')
GO


-- ----------------------------
-- Table structure for user_situations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_situations]') AND type IN ('U'))
	DROP TABLE [dbo].[user_situations]
GO

CREATE TABLE [dbo].[user_situations] (
  [id] bigint  NOT NULL,
  [noun] nvarchar(100) COLLATE Latin1_General_CI_AS  NOT NULL,
  [description] nvarchar(150) COLLATE Latin1_General_CI_AS  NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[user_situations] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Rótulo (nome, tipo, título)',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'noun'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Descrição',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'user_situations',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém  informações sobre situações/status dos usuários',
'SCHEMA', N'dbo',
'TABLE', N'user_situations'
GO


-- ----------------------------
-- Records of user_situations
-- ----------------------------
INSERT INTO [dbo].[user_situations]  VALUES (N'1', N'Ativo', NULL, NULL, NULL, N'2019-02-28 16:09:43.000')
GO

INSERT INTO [dbo].[user_situations]  VALUES (N'2', N'Suspenso', NULL, NULL, NULL, N'2019-02-28 16:10:34.000')
GO


-- ----------------------------
-- Table structure for user_types
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_types]') AND type IN ('U'))
	DROP TABLE [dbo].[user_types]
GO

CREATE TABLE [dbo].[user_types] (
  [id] bigint  NOT NULL,
  [noun] nvarchar(120) COLLATE Latin1_General_CI_AS  NOT NULL,
  [description] nvarchar(250) COLLATE Latin1_General_CI_AS  NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[user_types] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Rótulo (nome) do tipo',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'noun'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Descrição do tipo',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'user_types',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém as informações sobre os tipos de usuários',
'SCHEMA', N'dbo',
'TABLE', N'user_types'
GO


-- ----------------------------
-- Records of user_types
-- ----------------------------
INSERT INTO [dbo].[user_types]  VALUES (N'1', N'Administrador', N'Administrador do sistema', NULL, NULL, N'2019-04-15 15:59:11.000')
GO

INSERT INTO [dbo].[user_types]  VALUES (N'2', N'Operador', N'Operador do sistema', NULL, NULL, N'2019-04-15 15:59:11.000')
GO

INSERT INTO [dbo].[user_types]  VALUES (N'3', N'Membro', N'Membro do sistema', NULL, NULL, N'2019-04-15 15:59:11.000')
GO


-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] bigint  NOT NULL,
  [user_type_id] bigint  NOT NULL,
  [user_situation_id] bigint  NOT NULL,
  [login] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [name] nvarchar(150) COLLATE Latin1_General_CI_AS  NULL,
  [password] nvarchar(max) COLLATE Latin1_General_CI_AS  NOT NULL,
  [email] nvarchar(250) COLLATE Latin1_General_CI_AS  NULL,
  [email_verified_at] datetime  NULL,
  [last_access] datetime  NULL,
  [updated_at] datetime  NULL,
  [deleted_at] datetime  NULL,
  [created_at] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave primária da tabela',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para o tipo de usuário',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'user_type_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Chave estrangeira para situação/status do usuário',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'user_situation_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Login de acesso do usuário',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'login'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Apelido para auxiliar o login (pode ser usado no lugar do documento da empresa por sua facilidade de memorização)',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Senha de acesso do usuário',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'E-MAIL de assistência para o acesso',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data em que o email foi validado',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'email_verified_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data do último acesso',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'last_access'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data da última alteração',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'updated_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de deleção',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'deleted_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Data de criação',
'SCHEMA', N'dbo',
'TABLE', N'users',
'COLUMN', N'created_at'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Contém os cadastros dos acessos de todos os usuários',
'SCHEMA', N'dbo',
'TABLE', N'users'
GO


-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO [dbo].[users]  VALUES (N'3', N'3', N'1', N'admin', N'Admin', N'$2y$10$rWdfrpkVoTQDpiXpPvmcLuRVDIH/l/GOwdtAa1bYb2JyDAQhx.y.y', N'admin@mail.com', NULL, NULL, N'2019-05-08 22:07:55.000', NULL, N'2019-04-15 18:59:20.000')
GO

INSERT INTO [dbo].[users]  VALUES (N'4', N'3', N'1', N'admin2', N'Admin 2', N'$2y$10$njo8BpAUBbDC39o3bmBSKe9BRUOe.Hqt8Ys5opcXRfElkuukurxcu', N'admin2@mail.com', NULL, NULL, N'2019-04-24 17:06:11.000', NULL, N'2019-04-15 20:56:56.000')
GO


-- ----------------------------
-- Indexes structure for table actions
-- ----------------------------
CREATE NONCLUSTERED INDEX [action_id]
ON [dbo].[actions] (
  [id] ASC
)
GO

CREATE NONCLUSTERED INDEX [permission_id_action]
ON [dbo].[actions] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table actions
-- ----------------------------
ALTER TABLE [dbo].[actions] ADD CONSTRAINT [PK__actions__3213E83F0BC6C43E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE NONCLUSTERED INDEX [oauth_access_tokens_user_id_index]
ON [dbo].[oauth_access_tokens] (
  [user_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE [dbo].[oauth_access_tokens] ADD CONSTRAINT [PK__oauth_ac__3213E83F0EA330E9] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE [dbo].[oauth_auth_codes] ADD CONSTRAINT [PK__oauth_au__3213E83F117F9D94] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE NONCLUSTERED INDEX [oauth_clients_user_id_index]
ON [dbo].[oauth_clients] (
  [user_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE [dbo].[oauth_clients] ADD CONSTRAINT [PK__oauth_cl__3213E83F145C0A3F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table oauth_personal_access_clients
-- ----------------------------
CREATE NONCLUSTERED INDEX [oauth_personal_access_clients_client_id_index]
ON [dbo].[oauth_personal_access_clients] (
  [client_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE [dbo].[oauth_personal_access_clients] ADD CONSTRAINT [PK__oauth_pe__3213E83F173876EA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE NONCLUSTERED INDEX [oauth_refresh_tokens_access_token_id_index]
ON [dbo].[oauth_refresh_tokens] (
  [access_token_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE [dbo].[oauth_refresh_tokens] ADD CONSTRAINT [PK__oauth_re__3213E83F1A14E395] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE NONCLUSTERED INDEX [password_resets_email_index]
ON [dbo].[password_resets] (
  [email] ASC
)
GO


-- ----------------------------
-- Indexes structure for table permissions
-- ----------------------------
CREATE NONCLUSTERED INDEX [permission_id]
ON [dbo].[permissions] (
  [id] ASC
)
GO

CREATE NONCLUSTERED INDEX [permission_id_permission]
ON [dbo].[permissions] (
  [permission_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [profile_id_permission]
ON [dbo].[permissions] (
  [profile_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE [dbo].[permissions] ADD CONSTRAINT [PK__permissi__3213E83F1CF15040] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table profiles
-- ----------------------------
CREATE NONCLUSTERED INDEX [profile_id]
ON [dbo].[profiles] (
  [id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table profiles
-- ----------------------------
ALTER TABLE [dbo].[profiles] ADD CONSTRAINT [PK__profiles__3213E83F1FCDBCEB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table user_profile_actions
-- ----------------------------
CREATE NONCLUSTERED INDEX [action_id_user_profile_action]
ON [dbo].[user_profile_actions] (
  [action_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_profile_action_id]
ON [dbo].[user_profile_actions] (
  [id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_profile_id_user_profile_action]
ON [dbo].[user_profile_actions] (
  [user_profile_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table user_profile_actions
-- ----------------------------
ALTER TABLE [dbo].[user_profile_actions] ADD CONSTRAINT [PK__user_pro__3213E83F22AA2996] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table user_profiles
-- ----------------------------
CREATE NONCLUSTERED INDEX [profile_id_user_profile]
ON [dbo].[user_profiles] (
  [profile_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_id_user_profile]
ON [dbo].[user_profiles] (
  [user_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_profile_id]
ON [dbo].[user_profiles] (
  [id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table user_profiles
-- ----------------------------
ALTER TABLE [dbo].[user_profiles] ADD CONSTRAINT [PK__user_pro__3213E83F25869641] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table user_situations
-- ----------------------------
CREATE NONCLUSTERED INDEX [status_access_id]
ON [dbo].[user_situations] (
  [id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table user_situations
-- ----------------------------
ALTER TABLE [dbo].[user_situations] ADD CONSTRAINT [PK__user_sit__3213E83F286302EC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table user_types
-- ----------------------------
CREATE NONCLUSTERED INDEX [type_access_id]
ON [dbo].[user_types] (
  [id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table user_types
-- ----------------------------
ALTER TABLE [dbo].[user_types] ADD CONSTRAINT [PK__user_typ__3213E83F2B3F6F97] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE NONCLUSTERED INDEX [user_id]
ON [dbo].[users] (
  [id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_situation_id_user]
ON [dbo].[users] (
  [user_situation_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_type_id_user]
ON [dbo].[users] (
  [user_type_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK__users__3213E83F2E1BDC42] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table actions
-- ----------------------------
ALTER TABLE [dbo].[actions] ADD CONSTRAINT [action_fk_permission] FOREIGN KEY ([permission_id]) REFERENCES [dbo].[permissions] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table permissions
-- ----------------------------
ALTER TABLE [dbo].[permissions] ADD CONSTRAINT [permission_fk_permission] FOREIGN KEY ([permission_id]) REFERENCES [dbo].[permissions] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table user_profile_actions
-- ----------------------------
ALTER TABLE [dbo].[user_profile_actions] ADD CONSTRAINT [user_profile_action_fk_action] FOREIGN KEY ([action_id]) REFERENCES [dbo].[actions] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[user_profile_actions] ADD CONSTRAINT [user_profile_action_fk_user_profile] FOREIGN KEY ([user_profile_id]) REFERENCES [dbo].[user_profiles] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table user_profiles
-- ----------------------------
ALTER TABLE [dbo].[user_profiles] ADD CONSTRAINT [user_profile_fk_profile] FOREIGN KEY ([profile_id]) REFERENCES [dbo].[profiles] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[user_profiles] ADD CONSTRAINT [user_profile_fk_user] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [user_fk_user_situation] FOREIGN KEY ([user_situation_id]) REFERENCES [dbo].[user_situations] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[users] ADD CONSTRAINT [user_fk_user_type] FOREIGN KEY ([user_type_id]) REFERENCES [dbo].[user_types] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

