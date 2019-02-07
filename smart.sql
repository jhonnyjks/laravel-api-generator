/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 100006
 Source Host           : localhost:5432
 Source Catalog        : smart
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100006
 File Encoding         : 65001

 Date: 07/02/2019 19:08:53
*/


-- ----------------------------
-- Sequence structure for access_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."access_id_seq";
CREATE SEQUENCE "public"."access_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for access_profile_action_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."access_profile_action_id_seq";
CREATE SEQUENCE "public"."access_profile_action_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for access_profile_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."access_profile_id_seq";
CREATE SEQUENCE "public"."access_profile_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for action_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."action_id_seq";
CREATE SEQUENCE "public"."action_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for activity_address_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."activity_address_id_seq";
CREATE SEQUENCE "public"."activity_address_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for activity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."activity_id_seq";
CREATE SEQUENCE "public"."activity_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for activity_tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."activity_tax_id_seq";
CREATE SEQUENCE "public"."activity_tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for address_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."address_id_seq";
CREATE SEQUENCE "public"."address_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for aliquot_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."aliquot_id_seq";
CREATE SEQUENCE "public"."aliquot_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bank_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bank_id_seq";
CREATE SEQUENCE "public"."bank_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for beneficiary_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."beneficiary_id_seq";
CREATE SEQUENCE "public"."beneficiary_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for block_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."block_id_seq";
CREATE SEQUENCE "public"."block_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for build_correction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."build_correction_id_seq";
CREATE SEQUENCE "public"."build_correction_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for build_standard_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."build_standard_id_seq";
CREATE SEQUENCE "public"."build_standard_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for building_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."building_id_seq";
CREATE SEQUENCE "public"."building_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for city_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."city_id_seq";
CREATE SEQUENCE "public"."city_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for company_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."company_id_seq";
CREATE SEQUENCE "public"."company_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for correction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."correction_id_seq";
CREATE SEQUENCE "public"."correction_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for country_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."country_id_seq";
CREATE SEQUENCE "public"."country_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for covenant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."covenant_id_seq";
CREATE SEQUENCE "public"."covenant_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for deduction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."deduction_id_seq";
CREATE SEQUENCE "public"."deduction_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for degree_level_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."degree_level_id_seq";
CREATE SEQUENCE "public"."degree_level_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for district_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."district_id_seq";
CREATE SEQUENCE "public"."district_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for factor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."factor_id_seq";
CREATE SEQUENCE "public"."factor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for incidence_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."incidence_id_seq";
CREATE SEQUENCE "public"."incidence_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for invoice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."invoice_id_seq";
CREATE SEQUENCE "public"."invoice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for iptu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."iptu_id_seq";
CREATE SEQUENCE "public"."iptu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for iss_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."iss_id_seq";
CREATE SEQUENCE "public"."iss_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for itbi_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."itbi_id_seq";
CREATE SEQUENCE "public"."itbi_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for legal_nature_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."legal_nature_id_seq";
CREATE SEQUENCE "public"."legal_nature_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for liability_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."liability_id_seq";
CREATE SEQUENCE "public"."liability_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for neighborhood_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."neighborhood_id_seq";
CREATE SEQUENCE "public"."neighborhood_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_clients_id_seq";
CREATE SEQUENCE "public"."oauth_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_personal_access_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_personal_access_clients_id_seq";
CREATE SEQUENCE "public"."oauth_personal_access_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for owner_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."owner_id_seq";
CREATE SEQUENCE "public"."owner_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permission_id_seq";
CREATE SEQUENCE "public"."permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for person_activity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."person_activity_id_seq";
CREATE SEQUENCE "public"."person_activity_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for person_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."person_id_seq";
CREATE SEQUENCE "public"."person_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for personal_detail_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."personal_detail_id_seq";
CREATE SEQUENCE "public"."personal_detail_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for profile_city_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."profile_city_id_seq";
CREATE SEQUENCE "public"."profile_city_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for profile_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."profile_id_seq";
CREATE SEQUENCE "public"."profile_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for qsa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."qsa_id_seq";
CREATE SEQUENCE "public"."qsa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for retention_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."retention_id_seq";
CREATE SEQUENCE "public"."retention_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rule_tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rule_tax_id_seq";
CREATE SEQUENCE "public"."rule_tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sector_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sector_id_seq";
CREATE SEQUENCE "public"."sector_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for service_activity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."service_activity_id_seq";
CREATE SEQUENCE "public"."service_activity_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for service_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."service_id_seq";
CREATE SEQUENCE "public"."service_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for simple_national_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."simple_national_id_seq";
CREATE SEQUENCE "public"."simple_national_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for size_company_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."size_company_id_seq";
CREATE SEQUENCE "public"."size_company_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for special_regime_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."special_regime_id_seq";
CREATE SEQUENCE "public"."special_regime_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for state_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."state_id_seq";
CREATE SEQUENCE "public"."state_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_access_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_access_id_seq";
CREATE SEQUENCE "public"."status_access_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_building_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_building_id_seq";
CREATE SEQUENCE "public"."status_building_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_person_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_person_id_seq";
CREATE SEQUENCE "public"."status_person_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_ticket_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_ticket_id_seq";
CREATE SEQUENCE "public"."status_ticket_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for street_block_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."street_block_id_seq";
CREATE SEQUENCE "public"."street_block_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for street_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."street_id_seq";
CREATE SEQUENCE "public"."street_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tax_id_seq";
CREATE SEQUENCE "public"."tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ticket_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ticket_id_seq";
CREATE SEQUENCE "public"."ticket_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tribute_covenant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tribute_covenant_id_seq";
CREATE SEQUENCE "public"."tribute_covenant_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tribute_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tribute_id_seq";
CREATE SEQUENCE "public"."tribute_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_access_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_access_id_seq";
CREATE SEQUENCE "public"."type_access_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_aliquot_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_aliquot_id_seq";
CREATE SEQUENCE "public"."type_aliquot_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_build_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_build_id_seq";
CREATE SEQUENCE "public"."type_build_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_company_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_company_id_seq";
CREATE SEQUENCE "public"."type_company_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_covenant_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_covenant_id_seq";
CREATE SEQUENCE "public"."type_covenant_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_factor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_factor_id_seq";
CREATE SEQUENCE "public"."type_factor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_invoice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_invoice_id_seq";
CREATE SEQUENCE "public"."type_invoice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_person_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_person_id_seq";
CREATE SEQUENCE "public"."type_person_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_qsa_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_qsa_id_seq";
CREATE SEQUENCE "public"."type_qsa_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_street_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_street_id_seq";
CREATE SEQUENCE "public"."type_street_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for type_tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."type_tax_id_seq";
CREATE SEQUENCE "public"."type_tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for unity_tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unity_tax_id_seq";
CREATE SEQUENCE "public"."unity_tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for value_tax_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."value_tax_id_seq";
CREATE SEQUENCE "public"."value_tax_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vuc_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vuc_id_seq";
CREATE SEQUENCE "public"."vuc_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vut_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vut_id_seq";
CREATE SEQUENCE "public"."vut_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for actions
-- ----------------------------
DROP TABLE IF EXISTS "public"."actions";
CREATE TABLE "public"."actions" (
  "id" int8 NOT NULL DEFAULT nextval('action_id_seq'::regclass),
  "permission_id" int8 NOT NULL,
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "code" int2 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."actions"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."actions"."permission_id" IS 'Chave estrangeira para a permissão';
COMMENT ON COLUMN "public"."actions"."noun" IS 'Rótulo (nome) do atributo';
COMMENT ON COLUMN "public"."actions"."code" IS 'Código de representação do atributo';
COMMENT ON COLUMN "public"."actions"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."actions"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."actions"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."actions" IS 'Contém as ações que definem uma permissão';

-- ----------------------------
-- Records of actions
-- ----------------------------
INSERT INTO "public"."actions" VALUES (1, 1, 'type_person_id', 5, NULL, NULL, '2019-02-07 01:39:07');
INSERT INTO "public"."actions" VALUES (3, 1, 'status_person_id', 5, NULL, NULL, '2019-02-07 01:40:36');
INSERT INTO "public"."actions" VALUES (4, 1, 'dip', 5, NULL, NULL, '2019-02-07 01:41:00');
INSERT INTO "public"."actions" VALUES (5, 1, 'real_name', 5, NULL, NULL, '2019-02-07 01:41:17');
INSERT INTO "public"."actions" VALUES (6, 1, 'acronym', 5, NULL, NULL, '2019-02-07 01:41:46');
INSERT INTO "public"."actions" VALUES (8, 2, 'test1', 7, NULL, NULL, '2019-02-07 17:11:45');
INSERT INTO "public"."actions" VALUES (10, 2, 'test2', 5, NULL, NULL, '2019-02-07 17:11:58');
INSERT INTO "public"."actions" VALUES (11, 3, 'test3', 5, NULL, NULL, '2019-02-07 17:12:14');
INSERT INTO "public"."actions" VALUES (12, 12, 'login', 7, NULL, NULL, '2019-02-07 19:02:12');

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS "public"."activities";
CREATE TABLE "public"."activities" (
  "id" int8 NOT NULL DEFAULT nextval('activity_id_seq'::regclass),
  "cnae" int2 NOT NULL,
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."activities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."activities"."cnae" IS 'Código (CNAE) da atividade';
COMMENT ON COLUMN "public"."activities"."noun" IS 'Nome curto da atividade';
COMMENT ON COLUMN "public"."activities"."description" IS 'Descrição completa da atividade';
COMMENT ON COLUMN "public"."activities"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."activities"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."activities"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."activities" IS 'Contém informações sobre as atividades (CNAE, DESCRIÇÃO, etc)';

-- ----------------------------
-- Table structure for activity_addresses
-- ----------------------------
DROP TABLE IF EXISTS "public"."activity_addresses";
CREATE TABLE "public"."activity_addresses" (
  "id" int8 NOT NULL DEFAULT nextval('activity_address_id_seq'::regclass),
  "address_id" int8 NOT NULL,
  "person_activity_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."activity_addresses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."activity_addresses"."address_id" IS 'Chave para a taxa';
COMMENT ON COLUMN "public"."activity_addresses"."person_activity_id" IS 'Chave para relacionar com a atividade da pessoa';
COMMENT ON TABLE "public"."activity_addresses" IS 'Contém as definições e relações entre taxas, atividades';

-- ----------------------------
-- Table structure for activity_taxes
-- ----------------------------
DROP TABLE IF EXISTS "public"."activity_taxes";
CREATE TABLE "public"."activity_taxes" (
  "id" int8 NOT NULL DEFAULT nextval('activity_tax_id_seq'::regclass),
  "activity_id" int8 NOT NULL,
  "tax_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."activity_taxes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."activity_taxes"."activity_id" IS 'Chave para a atividade';
COMMENT ON COLUMN "public"."activity_taxes"."tax_id" IS 'Chave para a taxa';
COMMENT ON TABLE "public"."activity_taxes" IS 'Contém as definições e relações entre taxas, atividades';

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS "public"."addresses";
CREATE TABLE "public"."addresses" (
  "id" int8 NOT NULL DEFAULT nextval('address_id_seq'::regclass),
  "city_id" int8 NOT NULL,
  "neighborhood" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "type_street_id" int8 NOT NULL,
  "street" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "block" varchar(50) COLLATE "pg_catalog"."default",
  "number" varchar(50) COLLATE "pg_catalog"."default",
  "cep" varchar(20) COLLATE "pg_catalog"."default",
  "complement" varchar(150) COLLATE "pg_catalog"."default",
  "others" varchar(200) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "person_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."addresses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."addresses"."city_id" IS 'Chave para a cidade';
COMMENT ON COLUMN "public"."addresses"."neighborhood" IS 'Bairro';
COMMENT ON COLUMN "public"."addresses"."type_street_id" IS 'chave para o tipo do logradouro';
COMMENT ON COLUMN "public"."addresses"."street" IS 'Logradouro';
COMMENT ON COLUMN "public"."addresses"."block" IS 'Quadra';
COMMENT ON COLUMN "public"."addresses"."number" IS 'Número';
COMMENT ON COLUMN "public"."addresses"."cep" IS 'Código de endereçamento postal';
COMMENT ON COLUMN "public"."addresses"."complement" IS 'Complemento';
COMMENT ON COLUMN "public"."addresses"."others" IS 'Outras informações';
COMMENT ON COLUMN "public"."addresses"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."addresses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."addresses"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."addresses"."person_id" IS 'Chave para o contribuinte';
COMMENT ON TABLE "public"."addresses" IS 'Contém os endereções de um contribuinte';

-- ----------------------------
-- Table structure for aliquot_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."aliquot_types";
CREATE TABLE "public"."aliquot_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_aliquot_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."aliquot_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."aliquot_types"."noun" IS 'Nome (rótulo) para o tipo da taxa';
COMMENT ON COLUMN "public"."aliquot_types"."description" IS 'Descrição do tipo da taxa';
COMMENT ON COLUMN "public"."aliquot_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."aliquot_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."aliquot_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."aliquot_types" IS 'Contém as definições de tipos de aliquotas';

-- ----------------------------
-- Table structure for aliquots
-- ----------------------------
DROP TABLE IF EXISTS "public"."aliquots";
CREATE TABLE "public"."aliquots" (
  "id" int8 NOT NULL DEFAULT nextval('aliquot_id_seq'::regclass),
  "type_aliquot_id" int8 NOT NULL,
  "value" numeric(15,2) NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."aliquots"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."aliquots"."type_aliquot_id" IS 'Chave para o tipo de alíquota';
COMMENT ON COLUMN "public"."aliquots"."value" IS 'Valor da alíquota';
COMMENT ON COLUMN "public"."aliquots"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."aliquots"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."aliquots"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."aliquots" IS 'Contém as informações das alíquota';

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS "public"."banks";
CREATE TABLE "public"."banks" (
  "id" int8 NOT NULL DEFAULT nextval('bank_id_seq'::regclass),
  "number" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "noun" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "initials" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleled_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."banks"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."banks"."number" IS 'Código do banco';
COMMENT ON COLUMN "public"."banks"."noun" IS 'Nome do banco';
COMMENT ON COLUMN "public"."banks"."initials" IS 'Sigla do banco';
COMMENT ON COLUMN "public"."banks"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."banks"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."banks"."deleled_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."banks" IS 'Contém informações sobre bancos';

-- ----------------------------
-- Table structure for beneficiaries
-- ----------------------------
DROP TABLE IF EXISTS "public"."beneficiaries";
CREATE TABLE "public"."beneficiaries" (
  "id" int8 NOT NULL DEFAULT nextval('beneficiary_id_seq'::regclass),
  "percent" numeric(5,2) NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "covenant_id" int8 NOT NULL,
  "person_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."beneficiaries"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."beneficiaries"."percent" IS 'Porcentagem de participação na partilha';
COMMENT ON COLUMN "public"."beneficiaries"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."beneficiaries"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."beneficiaries"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."beneficiaries"."covenant_id" IS 'Chave para o convênio';
COMMENT ON COLUMN "public"."beneficiaries"."person_id" IS 'Chave para o beneficiário';
COMMENT ON TABLE "public"."beneficiaries" IS 'Contém as lista de beneficiarios do convênio';

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS "public"."blocks";
CREATE TABLE "public"."blocks" (
  "id" int8 NOT NULL DEFAULT nextval('block_id_seq'::regclass),
  "sector_id" int8 NOT NULL,
  "noun" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(200) COLLATE "pg_catalog"."default",
  "update_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."blocks"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."blocks"."sector_id" IS 'Chave para o setor';
COMMENT ON COLUMN "public"."blocks"."noun" IS 'Nome (rótulo) da quadra';
COMMENT ON COLUMN "public"."blocks"."description" IS 'Descrição da quadra';
COMMENT ON COLUMN "public"."blocks"."update_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."blocks"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."blocks"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."blocks" IS 'Contém informações das quadras que compõe a plata genérica de valores';

-- ----------------------------
-- Table structure for build_corrections
-- ----------------------------
DROP TABLE IF EXISTS "public"."build_corrections";
CREATE TABLE "public"."build_corrections" (
  "id" int8 NOT NULL DEFAULT nextval('build_correction_id_seq'::regclass),
  "build_id" int8 NOT NULL,
  "correction_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."build_corrections"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."build_corrections"."build_id" IS 'Chave para o imóvel';
COMMENT ON COLUMN "public"."build_corrections"."correction_id" IS 'Chave para o índice de correção';
COMMENT ON TABLE "public"."build_corrections" IS 'Contém as informações de relação entre o imóvel e seus índices de correção';

-- ----------------------------
-- Table structure for building_standards
-- ----------------------------
DROP TABLE IF EXISTS "public"."building_standards";
CREATE TABLE "public"."building_standards" (
  "id" int8 NOT NULL DEFAULT nextval('build_standard_id_seq'::regclass),
  "type_build_id" int8 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."building_standards"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."building_standards"."type_build_id" IS 'Chave para o tipo de construção';
COMMENT ON COLUMN "public"."building_standards"."noun" IS 'Nome (rotúlo) do tipo de construção';
COMMENT ON COLUMN "public"."building_standards"."description" IS 'Descrição do tipo de contrução';
COMMENT ON COLUMN "public"."building_standards"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."building_standards"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."building_standards"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."building_standards" IS 'Contém as informações dos padrões construtivos previstas pelo código tributário do município';

-- ----------------------------
-- Table structure for building_statuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."building_statuses";
CREATE TABLE "public"."building_statuses" (
  "id" int8 NOT NULL DEFAULT nextval('status_building_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."building_statuses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."building_statuses"."noun" IS 'Nome (rótulo) para o status do imóvel';
COMMENT ON COLUMN "public"."building_statuses"."description" IS 'Descrição do status do imóvel';
COMMENT ON COLUMN "public"."building_statuses"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."building_statuses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."building_statuses"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."building_statuses" IS 'Contém as informações sobres os possíveis status de um imóvel';

-- ----------------------------
-- Table structure for building_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."building_types";
CREATE TABLE "public"."building_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_build_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."building_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."building_types"."noun" IS 'Nome (rotúlo) do tipo de construção';
COMMENT ON COLUMN "public"."building_types"."description" IS 'Descrição do tipo de contrução';
COMMENT ON COLUMN "public"."building_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."building_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."building_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."building_types" IS 'Contém as informações sobres os tipos de construções previstas pelo código tributário do município';

-- ----------------------------
-- Table structure for buildings
-- ----------------------------
DROP TABLE IF EXISTS "public"."buildings";
CREATE TABLE "public"."buildings" (
  "id" int8 NOT NULL DEFAULT nextval('building_id_seq'::regclass),
  "status_build_id" int8 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "build_standard_id" int8 NOT NULL,
  "type_build_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."buildings"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."buildings"."status_build_id" IS 'Chave para o status do imóvel';
COMMENT ON COLUMN "public"."buildings"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."buildings"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."buildings"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."buildings"."build_standard_id" IS 'Chave para o padrão da construção';
COMMENT ON COLUMN "public"."buildings"."type_build_id" IS 'Chave para o tipo de imóvel';
COMMENT ON TABLE "public"."buildings" IS 'Contém as informações de imóveis';

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS "public"."cities";
CREATE TABLE "public"."cities" (
  "id" int8 NOT NULL DEFAULT nextval('city_id_seq'::regclass),
  "state_id" int8 NOT NULL,
  "city_ibge" int2 NOT NULL,
  "noun" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "initials" varchar(3) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."cities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."cities"."state_id" IS 'Chave estrangeira para o estado';
COMMENT ON COLUMN "public"."cities"."city_ibge" IS 'Código IBGE da cidade';
COMMENT ON COLUMN "public"."cities"."noun" IS 'Rótulo (nome) da cidade';
COMMENT ON COLUMN "public"."cities"."initials" IS 'Sigla da cidade';
COMMENT ON COLUMN "public"."cities"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."cities"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."cities"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."cities" IS 'Contém informações sobre as cidades';

-- ----------------------------
-- Table structure for companie_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."companie_types";
CREATE TABLE "public"."companie_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_company_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."companie_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."companie_types"."noun" IS 'Nome (rótulo) do tipo de empresa';
COMMENT ON COLUMN "public"."companie_types"."description" IS 'Descrição do tipo de empresa';
COMMENT ON COLUMN "public"."companie_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."companie_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."companie_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."companie_types" IS 'Contém informações sobre a classificação/tipo da empresa matriz, filial, etc.';

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS "public"."companies";
CREATE TABLE "public"."companies" (
  "id" int8 NOT NULL DEFAULT nextval('company_id_seq'::regclass),
  "person_id" int8 NOT NULL,
  "size_company_id" int8 NOT NULL,
  "special_regime_id" int8 NOT NULL,
  "simples_national_id" int8 NOT NULL,
  "legal_nature_id" int8 NOT NULL,
  "opening" date NOT NULL,
  "closure" date,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "type_company_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."companies"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."companies"."person_id" IS 'Chave para a pessoa';
COMMENT ON COLUMN "public"."companies"."size_company_id" IS 'Chave para o porte da empresa';
COMMENT ON COLUMN "public"."companies"."special_regime_id" IS 'Chave para regime especial';
COMMENT ON COLUMN "public"."companies"."simples_national_id" IS 'Chave para o simples nacional';
COMMENT ON COLUMN "public"."companies"."legal_nature_id" IS 'Chave para a natureza jurídica';
COMMENT ON COLUMN "public"."companies"."opening" IS 'Data de abertura da empresa';
COMMENT ON COLUMN "public"."companies"."closure" IS 'Data de fechamento da empresa';
COMMENT ON COLUMN "public"."companies"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."companies"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."companies"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."companies"."type_company_id" IS 'Chave para o tipo da empresa';
COMMENT ON TABLE "public"."companies" IS 'Contém informações próprias das pessoas jurídicas e afins';

-- ----------------------------
-- Table structure for corrections
-- ----------------------------
DROP TABLE IF EXISTS "public"."corrections";
CREATE TABLE "public"."corrections" (
  "id" int8 NOT NULL DEFAULT nextval('correction_id_seq'::regclass),
  "factor_id" int8 NOT NULL,
  "value" numeric(15,2) NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "index" varchar(220) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."corrections"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."corrections"."factor_id" IS 'Chave para o fator de correção';
COMMENT ON COLUMN "public"."corrections"."value" IS 'Valor de correção';
COMMENT ON COLUMN "public"."corrections"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."corrections"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."corrections"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."corrections"."index" IS 'Índice para o fator de correção';
COMMENT ON TABLE "public"."corrections" IS 'Contém as informações das correções associada a seus fatores';

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS "public"."countries";
CREATE TABLE "public"."countries" (
  "id" int8 NOT NULL DEFAULT nextval('country_id_seq'::regclass),
  "country_ibge" int2 NOT NULL,
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "initials" varchar(2) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."countries"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."countries"."country_ibge" IS 'Contém o código IBGE para o país';
COMMENT ON COLUMN "public"."countries"."noun" IS 'Nome (rótulo) do país';
COMMENT ON COLUMN "public"."countries"."initials" IS 'Sigla do país';
COMMENT ON COLUMN "public"."countries"."updated_at" IS 'Data de alteralção';
COMMENT ON COLUMN "public"."countries"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."countries"."deleted_at" IS 'Data de deleção';

-- ----------------------------
-- Table structure for covenant_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."covenant_types";
CREATE TABLE "public"."covenant_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_covenant_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."covenant_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."covenant_types"."noun" IS 'Rótulo (nome) do tipo de convênio';
COMMENT ON COLUMN "public"."covenant_types"."description" IS 'Descrição do convênio';
COMMENT ON COLUMN "public"."covenant_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."covenant_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."covenant_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."covenant_types" IS 'Contém as definições de tipos de convênios';

-- ----------------------------
-- Table structure for covenants
-- ----------------------------
DROP TABLE IF EXISTS "public"."covenants";
CREATE TABLE "public"."covenants" (
  "id" int8 NOT NULL DEFAULT nextval('covenant_id_seq'::regclass),
  "bank_id" int8 NOT NULL,
  "type_covenant_id" int8 NOT NULL,
  "number_covenant" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "agency" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "account" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "wallet" int2 NOT NULL,
  "variance" int2 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "assignor_id" int8 NOT NULL,
  "fundraiser_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."covenants"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."covenants"."bank_id" IS 'Chave estangeira para o banco de registro do convênio';
COMMENT ON COLUMN "public"."covenants"."type_covenant_id" IS 'Chave estrangeira para o tipo de convênio';
COMMENT ON COLUMN "public"."covenants"."number_covenant" IS 'Número do convênio';
COMMENT ON COLUMN "public"."covenants"."agency" IS 'Número da agência';
COMMENT ON COLUMN "public"."covenants"."account" IS 'Número da conta';
COMMENT ON COLUMN "public"."covenants"."wallet" IS 'Modalidade de carteira';
COMMENT ON COLUMN "public"."covenants"."variance" IS 'Modalidade de variação';
COMMENT ON COLUMN "public"."covenants"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."covenants"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."covenants"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."covenants"."assignor_id" IS 'Chave para o cedente';
COMMENT ON COLUMN "public"."covenants"."fundraiser_id" IS 'Chave para o agente arrecadador';
COMMENT ON TABLE "public"."covenants" IS 'Contém as informações dos convênios';

-- ----------------------------
-- Table structure for deductions
-- ----------------------------
DROP TABLE IF EXISTS "public"."deductions";
CREATE TABLE "public"."deductions" (
  "id" int8 NOT NULL DEFAULT nextval('deduction_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."deductions"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."deductions"."noun" IS 'Rótulo (nome) da dedução';
COMMENT ON COLUMN "public"."deductions"."description" IS 'Descrição da dedução';
COMMENT ON COLUMN "public"."deductions"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."deductions"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."deductions"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."deductions" IS 'Contém a lista de identificação dos tipos de deduções';

-- ----------------------------
-- Table structure for degree_levels
-- ----------------------------
DROP TABLE IF EXISTS "public"."degree_levels";
CREATE TABLE "public"."degree_levels" (
  "id" int8 NOT NULL DEFAULT nextval('degree_level_id_seq'::regclass),
  "noun" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(200) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."degree_levels"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."degree_levels"."noun" IS 'Nome (rótulo) da escolaridade';
COMMENT ON COLUMN "public"."degree_levels"."description" IS 'Descrição do tipo de escolaridade';
COMMENT ON COLUMN "public"."degree_levels"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."degree_levels"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."degree_levels"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."degree_levels" IS 'Contém as classes de escolaridades';

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS "public"."districts";
CREATE TABLE "public"."districts" (
  "id" int8 NOT NULL DEFAULT nextval('district_id_seq'::regclass),
  "zone" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "number" int4 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."districts"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."districts"."zone" IS 'Zona do distrito';
COMMENT ON COLUMN "public"."districts"."number" IS 'Número do distrito';
COMMENT ON COLUMN "public"."districts"."noun" IS 'nome do distrito';
COMMENT ON COLUMN "public"."districts"."description" IS 'Descrição do distrito';
COMMENT ON COLUMN "public"."districts"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."districts"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."districts"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."districts" IS 'Contém as informações sobre os distritos do município';

-- ----------------------------
-- Table structure for factor_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."factor_types";
CREATE TABLE "public"."factor_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_factor_id_seq'::regclass),
  "noun" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."factor_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."factor_types"."noun" IS 'Nome (rótulo) do tipo';
COMMENT ON COLUMN "public"."factor_types"."description" IS 'Descrição do tipo';
COMMENT ON COLUMN "public"."factor_types"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."factor_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."factor_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."factor_types" IS 'Contém as informações dos tipos de fatores usados na definição dos fatores de correção usados na planta genérica de valores';

-- ----------------------------
-- Table structure for factors
-- ----------------------------
DROP TABLE IF EXISTS "public"."factors";
CREATE TABLE "public"."factors" (
  "id" int8 NOT NULL DEFAULT nextval('factor_id_seq'::regclass),
  "type_factor_id" int8 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."factors"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."factors"."type_factor_id" IS 'Chave para o tipo de fator';
COMMENT ON COLUMN "public"."factors"."noun" IS 'Nome (rótulo) do fator de correção';
COMMENT ON COLUMN "public"."factors"."description" IS 'Descrição do fator';
COMMENT ON COLUMN "public"."factors"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."factors"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."factors"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."factors" IS 'Contém as informações dos fatores que serão usados nas correções';

-- ----------------------------
-- Table structure for incidences
-- ----------------------------
DROP TABLE IF EXISTS "public"."incidences";
CREATE TABLE "public"."incidences" (
  "id" int8 NOT NULL DEFAULT nextval('incidence_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."incidences"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."incidences"."noun" IS 'Nome (rótulo) para o tipo da incidência';
COMMENT ON COLUMN "public"."incidences"."description" IS 'Descrição do tipo da incidência';
COMMENT ON COLUMN "public"."incidences"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."incidences"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."incidences"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."incidences" IS 'Contém as definições de tipos de incidência';

-- ----------------------------
-- Table structure for invoice_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."invoice_types";
CREATE TABLE "public"."invoice_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_invoice_id_seq'::regclass),
  "noun" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."invoice_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."invoice_types"."noun" IS 'Nome (rótulo) do tipo';
COMMENT ON COLUMN "public"."invoice_types"."description" IS 'Descrição do tipo';
COMMENT ON COLUMN "public"."invoice_types"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."invoice_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."invoice_types"."created_at" IS 'Data de criação';

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS "public"."invoices";
CREATE TABLE "public"."invoices" (
  "id" int8 NOT NULL DEFAULT nextval('invoice_id_seq'::regclass),
  "type_invoice_id" int8 NOT NULL,
  "emitter_id" int8 NOT NULL,
  "provider_id" int8 NOT NULL,
  "taker_id" int8 NOT NULL,
  "number" int8 NOT NULL,
  "checker" varchar(9) COLLATE "pg_catalog"."default" NOT NULL,
  "aliquot" numeric(4,2) NOT NULL,
  "base" numeric(15,2) NOT NULL,
  "liquid" numeric(15,2) NOT NULL,
  "iss" numeric(15,2) NOT NULL,
  "credit" numeric(15,2) NOT NULL,
  "taxation_description" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "other" varchar(510) COLLATE "pg_catalog"."default",
  "activity_id" int8 NOT NULL,
  "service_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."invoices"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."invoices"."type_invoice_id" IS 'Chave estrangeria para o tipo da nota';
COMMENT ON COLUMN "public"."invoices"."emitter_id" IS 'Chave do emissor';
COMMENT ON COLUMN "public"."invoices"."provider_id" IS 'Chave do prestador';
COMMENT ON COLUMN "public"."invoices"."taker_id" IS 'Chave do tomador';
COMMENT ON COLUMN "public"."invoices"."number" IS 'Número da nota';
COMMENT ON COLUMN "public"."invoices"."checker" IS 'Código de verificação';
COMMENT ON COLUMN "public"."invoices"."aliquot" IS 'Valor da alíquota';
COMMENT ON COLUMN "public"."invoices"."base" IS 'Valor base (base de cálculo)';
COMMENT ON COLUMN "public"."invoices"."liquid" IS 'Valor líquido';
COMMENT ON COLUMN "public"."invoices"."iss" IS 'Valor do ISS';
COMMENT ON COLUMN "public"."invoices"."credit" IS 'Valor do crédito gerado';
COMMENT ON COLUMN "public"."invoices"."taxation_description" IS 'Descrição do código de tributação do municipio';
COMMENT ON COLUMN "public"."invoices"."other" IS 'Outras informações';
COMMENT ON COLUMN "public"."invoices"."activity_id" IS 'Chave para a atividade';
COMMENT ON COLUMN "public"."invoices"."service_id" IS 'Chave para o serviço';
COMMENT ON TABLE "public"."invoices" IS 'Contém os registros das notas emitidas';

-- ----------------------------
-- Table structure for iptus
-- ----------------------------
DROP TABLE IF EXISTS "public"."iptus";
CREATE TABLE "public"."iptus" (
  "id" int8 NOT NULL DEFAULT nextval('iptu_id_seq'::regclass),
  "aliquot_id" int8 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(240) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."iptus"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."iptus"."aliquot_id" IS 'Chave para alíquota';
COMMENT ON COLUMN "public"."iptus"."noun" IS 'Nome (rótulo)';
COMMENT ON COLUMN "public"."iptus"."description" IS 'Descrição ';
COMMENT ON COLUMN "public"."iptus"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."iptus"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."iptus"."created_at" IS 'Datta de criação';
COMMENT ON TABLE "public"."iptus" IS 'Contém as infromações de especiação de aliquotas para IPTU';

-- ----------------------------
-- Table structure for isses
-- ----------------------------
DROP TABLE IF EXISTS "public"."isses";
CREATE TABLE "public"."isses" (
  "id" int8 NOT NULL DEFAULT nextval('iss_id_seq'::regclass),
  "aliquot_id" int8 NOT NULL,
  "service_id" int8 NOT NULL,
  "liability_id" int8 NOT NULL,
  "deduction_id" int8 NOT NULL,
  "incidence_id" int8 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "retention_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."isses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."isses"."aliquot_id" IS 'Chave para alíquota';
COMMENT ON COLUMN "public"."isses"."service_id" IS 'Chave para o item de servico';
COMMENT ON COLUMN "public"."isses"."liability_id" IS 'Chave para exigibilidade';
COMMENT ON COLUMN "public"."isses"."deduction_id" IS 'Chave para a dedução';
COMMENT ON COLUMN "public"."isses"."incidence_id" IS 'Chave para o tipo de incidencia';
COMMENT ON COLUMN "public"."isses"."updated_at" IS 'Data de atualização';
COMMENT ON COLUMN "public"."isses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."isses"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."isses"."retention_id" IS 'Chave para retenção';
COMMENT ON TABLE "public"."isses" IS 'Contém as informações de especiação de alíquota de ISS';

-- ----------------------------
-- Table structure for itbis
-- ----------------------------
DROP TABLE IF EXISTS "public"."itbis";
CREATE TABLE "public"."itbis" (
  "id" int8 NOT NULL DEFAULT nextval('itbi_id_seq'::regclass),
  "aliquot_id" int8 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(240) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."itbis"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."itbis"."aliquot_id" IS 'Chave para alíquota';
COMMENT ON COLUMN "public"."itbis"."noun" IS 'Nome (rótulo)';
COMMENT ON COLUMN "public"."itbis"."description" IS 'Descrição ';
COMMENT ON COLUMN "public"."itbis"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."itbis"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."itbis"."created_at" IS 'Datta de criação';
COMMENT ON TABLE "public"."itbis" IS 'Contém as informações de especiação de alíquota de ITBI';

-- ----------------------------
-- Table structure for legal_natures
-- ----------------------------
DROP TABLE IF EXISTS "public"."legal_natures";
CREATE TABLE "public"."legal_natures" (
  "id" int8 NOT NULL DEFAULT nextval('legal_nature_id_seq'::regclass),
  "noun" varchar(155) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(300) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."legal_natures"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."legal_natures"."noun" IS 'Nome (rótulo) da natureza jurídica';
COMMENT ON COLUMN "public"."legal_natures"."description" IS 'Descrição da natureza jurídica';
COMMENT ON COLUMN "public"."legal_natures"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."legal_natures"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."legal_natures"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."legal_natures" IS 'Contém as denominações das naturezas jurídicas';

-- ----------------------------
-- Table structure for liabilities
-- ----------------------------
DROP TABLE IF EXISTS "public"."liabilities";
CREATE TABLE "public"."liabilities" (
  "id" int8 NOT NULL DEFAULT nextval('liability_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(200) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."liabilities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."liabilities"."noun" IS 'Nome exigibilidade';
COMMENT ON COLUMN "public"."liabilities"."description" IS 'Descrição da exigibilidade';
COMMENT ON COLUMN "public"."liabilities"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."liabilities"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."liabilities"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."liabilities" IS 'Exigibilidade: Contém as informações sobre os tipos possíveis';

-- ----------------------------
-- Table structure for neighborhoods
-- ----------------------------
DROP TABLE IF EXISTS "public"."neighborhoods";
CREATE TABLE "public"."neighborhoods" (
  "id" int8 NOT NULL DEFAULT nextval('neighborhood_id_seq'::regclass),
  "distric_id" int8 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."neighborhoods"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."neighborhoods"."distric_id" IS 'Chave do distrito';
COMMENT ON COLUMN "public"."neighborhoods"."noun" IS 'Nome (rótulo) do bairro';
COMMENT ON COLUMN "public"."neighborhoods"."description" IS 'Descrição do bairro';
COMMENT ON COLUMN "public"."neighborhoods"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."neighborhoods"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."neighborhoods"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."neighborhoods" IS 'Contém as informações sobre os bairros do município em um distrito';

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_access_tokens";
CREATE TABLE "public"."oauth_access_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4,
  "client_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "expires_at" timestamp(0),
  "profile_id" int4
)
;
COMMENT ON COLUMN "public"."oauth_access_tokens"."profile_id" IS 'ID do perfil ativo no token';

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO "public"."oauth_access_tokens" VALUES ('90f6306405200fc05ee6a878d9f5ed6b3fb2b4149d7d60101f38aae0750298c8b0d8b1d7e8c41c18', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:51:45', '2019-02-07 05:51:45', '2020-02-07 05:51:45', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('c10fef77390597d7969bca96337ec6228c49c57dfa1e3e229b5d2758d6067ab33f409f5f582fd827', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 02:47:30', '2019-02-07 02:47:30', '2019-02-07 03:17:30', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('b6d21d2aac594daded964800b229371b9871039d446abfdd3ff39e38317098bf440af69fa217f007', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:37:49', '2019-02-07 05:37:49', '2019-02-07 06:07:49', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('2e807a974eba764f10de43e89c7a9ad0a48c74ef44fa53864799da208f5ef2a026555a53ba57aeae', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 02:47:33', '2019-02-07 02:47:33', '2019-02-07 03:17:33', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('241f1a10056564285d05441cfbe79401ad130cdd8332c8e405a00c5d103f8d25f7e8e418aab8c358', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 02:47:35', '2019-02-07 02:47:35', '2019-02-07 03:17:35', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('8b6e3cded0d72e959fab23afc15b6be7f51412a69ee52ddb2522407d593afe016d39cbae0c14edea', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 02:47:36', '2019-02-07 02:47:36', '2019-02-07 03:17:36', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('49234850c037636507fe14858eb41f2948c86875af4f03f6bf0210641243d012910e7120b39de5c7', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:39:47', '2019-02-07 05:39:47', '2019-02-07 06:09:47', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('7e533dd270f3b1bedbd323bf11fe7883c3a85e0ff4b0d807d9f94476165847a1145535135849625f', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 02:47:37', '2019-02-07 02:47:37', '2019-02-07 03:17:37', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('e949929dbaf64e5b9b8cd0b43b591fed638539283182bc9ce1eadc093fc509007aff3b2d785d3ab5', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:52:09', '2019-02-07 05:52:09', '2020-02-07 05:52:09', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('3932f2db3459663b9e784bfdd41f11e2ddbed8a0c15aa3e416bae71d28205507458cb40702674ec4', 2, 1, 'Token pessoal 2', '[]', 't', '2019-02-07 02:47:38', '2019-02-07 02:47:38', '2019-02-07 03:17:38', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('60ac7202cf57a3fc23e595390538c38542202963efbb5b8f77159f1956c4c1f56dc6033a35b9029a', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:40:03', '2019-02-07 05:40:03', '2019-02-07 06:10:03', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('077a8cf6a4e14aa2fd644ebb367e9e13b6db1ce2edcd1e590437d6e2bdad9fb2bb14b95064bb5387', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 03:06:17', '2019-02-07 03:06:17', '2019-02-07 03:36:17', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('c06ee8e77102bdec423808a835de8c66965ff8f5f2179b92fb622ee685012f8ba2780b0e51419d64', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 04:02:15', '2019-02-07 04:02:15', '2019-02-07 04:32:15', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('649c63f6defbf271a859dc65c73983edc5412d490d3b6e2af8310686f595b1f60e3ee35114a1352e', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 04:02:17', '2019-02-07 04:02:17', '2019-02-07 04:32:17', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('f317b2422df50c06364a87142949900a0548ceaa0aaa28a7f021444e4bae8a2f663cd5e65086e3aa', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:40:36', '2019-02-07 05:40:36', '2019-02-07 06:10:36', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('4ce0ec7d2a9480655d0a474e5eab54a7a7bd1e6a165c80938b098b5459d29d91d5aa9cee60bd4d99', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 04:15:45', '2019-02-07 04:15:45', '2019-02-07 04:45:45', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('4d51e668145099aa228156ad14cfb04b29d3d9430b01701a6da30464e4a3758d10b7de20bcf06ec0', 2, 1, 'Token pessoal 2', '[]', 'f', '2019-02-07 04:19:25', '2019-02-07 04:19:25', '2019-02-07 04:49:25', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('60fefab49a309a2b26e8a11620c768d72c3e93fbd4305e9e9af998823ff61992e1feaa57e3dd9163', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:41:08', '2019-02-07 05:41:08', '2020-02-07 05:41:08', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('00a6d89f361bd382ba2e79ee618173728ce91938a815770351b3ca3bc51fa415daff0abf505a42f6', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 04:56:10', '2019-02-07 04:56:10', '2019-02-07 05:26:11', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('464defcc946cb67027aff652f4a14f20629778b7d38cf77f1a0e43bc26900256ced4c6ac5718b8a1', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:34:11', '2019-02-07 05:34:11', '2019-02-07 06:04:11', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('ed484eef6703996e8cfa57e65730ecb0bcbdf924aa71860b9f137902d2d46c99ff41924b79c28569', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:41:47', '2019-02-07 05:41:47', '2020-02-07 05:41:47', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('bc9e841c5957acc050fc939d9dbfe9861136795a0616e06b0c7a78f3a83143cc2a4df73ba27d4ffa', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:34:36', '2019-02-07 05:34:36', '2019-02-07 06:04:36', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('f6ca770500900da33bc2d73adc1198369a1dc9d1e44700ae41dc3d8a29792a0360a177f0944c3cdc', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:37:31', '2019-02-07 05:37:31', '2019-02-07 06:07:31', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('591a7c37e8c0357fc8ff4f3a4994dd3bfae7dc1223a4626b60e2e5bf19557d0f069c58034c7a09ca', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:43:30', '2019-02-07 05:43:30', '2020-02-07 05:43:30', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('675d99ced40185af8075800674f7da47c15a20f41cc689a5824845cd3e1c5632ae957fdf0facce09', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:25:13', '2019-02-07 06:25:13', '2019-02-07 06:55:13', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('282fcf0c540e6fd6132c3637d6ce1849cab5d3e3ded7be53064165d0ca6d5a0f2d7a773d9378374a', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:45:13', '2019-02-07 05:45:13', '2019-02-07 06:15:13', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('8b795cf2df3d352e0011df6bfeb9c36a189561ea5c675344f8922cff932468877e0438b2e56cc001', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:52:29', '2019-02-07 05:52:29', '2019-02-07 06:22:29', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('711bdd44c43d2f636d8184654e6e5843071e7d899d7854d5b1a898739f7c733e1b9e8002b1420b68', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:49:41', '2019-02-07 05:49:41', '2019-02-07 06:19:41', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('7c581786e5aa611874d52c47079834cc201c769e85ee898b1985377ccdcc1e0500fca0bf31480ec3', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:50:05', '2019-02-07 05:50:05', '2020-02-07 05:50:05', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('02b2be32a280ac5fe6525468d3d71ba8e660a0b3f92c9f1d677c547bfba6d79f54e446e8ad302ee2', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:50:46', '2019-02-07 05:50:46', '2020-02-07 05:50:46', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('0e7e1c731de55986bb843606f2806f23b4d45caf6a9f5c746b5ef02260e28be889f161c0fcdfc2a8', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:51:04', '2019-02-07 05:51:04', '2020-02-07 05:51:04', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('938f2a9def80b9ff0e4adccdfc720e708d23abd3b2eb622d42f0148de2cd4e66b1ab4301d137eae5', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 05:53:22', '2019-02-07 05:53:22', '2019-02-07 06:23:22', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('e2f415f2ea218d6d0d3454a7ee2334eed6fb09c89f0f4468b3b594388d413ab50db4b18c2e8a27e5', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:24:22', '2019-02-07 06:24:22', '2019-02-07 06:54:22', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('1d5394e68352a463d119e0e9e533bf238eeefca62b7487669464faf6a67a2e97fb92c03879c98af2', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:30:34', '2019-02-07 06:30:34', '2019-02-07 07:00:34', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('aee58e54b946b68594d370962c25b3f75141711b0605ace4a9e89abda549b3a06b9d560826114a5e', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:24:48', '2019-02-07 06:24:48', '2019-02-07 06:54:48', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('8e03f369a29b963b3a236aef0a459981c35ba4b1fcb459e86f5b5bd97e0bc78699387ae9ff7898d6', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:32:32', '2019-02-07 06:32:32', '2019-02-07 07:02:32', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('91fd6f24a40196d68f03e950e9053ebde1077156abad75b58baa3ffb31069c1f19712779438c7b16', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:30:54', '2019-02-07 06:30:54', '2019-02-07 07:00:54', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('4015894369c84792e469582a152094dea5fdf3c676f736ab641d5328dd7e4286ce10460fd5460cca', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:32:13', '2019-02-07 06:32:13', '2019-02-07 07:02:13', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('33a71328eef8e8b039bb29cf408ff46a608c4d11c2d05532d12c57edf3b810833614c814ded4b22a', 1, 1, 'Token pessoal 1', '[]', 'f', '2019-02-07 06:33:47', '2019-02-07 06:33:47', '2019-02-07 07:03:47', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('ab2a6a414135c9f415a4715428dca5dac46d827e686d86656469d6ec7cf38958848793c11d50af41', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:18:28', '2019-02-07 19:18:28', '2020-02-07 19:18:28', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('b4e05b223bffef289221e7d91bf051ac2b884cc9b973b033847ad4275adf4d13682e1d3d12964ca8', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:19:42', '2019-02-07 19:19:42', '2020-02-07 19:19:42', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('cf40e7cc52ad55facd6f5afdede16d983b47e853edb377cda146faad1db579bf6316d599e5d43aa8', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:20:26', '2019-02-07 19:20:26', '2019-02-07 19:50:26', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('cadd874a444d9bb162f279ad365db20adda472a307141b03626b0f60b77d77571a7b60936948147c', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:20:13', '2019-02-07 19:20:13', '2019-02-07 19:50:14', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('e093c6961146d082327694162ab9b157ca0c9901b482e7794c2591c3f9b30ba6eaf1af6c406af6f5', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:20:45', '2019-02-07 19:20:45', '2019-02-07 19:50:45', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('2c4663b8549a8291768125d66b606038b2b76ff6e42e3cd871fc8c28c3682b1b298791608816186d', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:22:14', '2019-02-07 19:22:14', '2019-02-07 19:52:15', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('055588f518b74c3cb92c11e2e0269bcb4807be0a3b8ab03299bb3a34b7c4cbdbb28ce49a00a00691', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:22:49', '2019-02-07 19:22:49', '2019-02-07 19:52:49', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('a5ab9ae03bea3faf0162a6bfc1a5f1c2f12cf05225c4f2792bd60c729512ac72a7266dcbdf23afdd', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 19:23:23', '2019-02-07 19:23:23', '2019-02-07 19:53:23', NULL);
INSERT INTO "public"."oauth_access_tokens" VALUES ('d805535e5893d3635f96c185f8678c6ded2fd152a90201de188702940eff2395d11bb5e57bb6d639', 1, 4, 'Token pessoal 1', '{"persons":{"actions":{"type_person_id":5,"dip":5}},"persons\/activities":{"actions":{"test1":7}},"user":{"actions":{"login":7}}}', 'f', '2019-02-07 19:23:57', '2019-02-07 19:23:57', '2019-02-07 19:53:57', 1);
INSERT INTO "public"."oauth_access_tokens" VALUES ('d031726f4f76628f4c2f3c7a55b833c2d511b0ec952752e0cd31567f2ea99bb8d130724ca0d961b5', 1, 4, 'Token pessoal 1', '[]', 'f', '2019-02-07 22:07:56', '2019-02-07 22:07:56', '2019-02-07 22:37:56', NULL);

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_auth_codes";
CREATE TABLE "public"."oauth_auth_codes" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL,
  "client_id" int4 NOT NULL,
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_clients";
CREATE TABLE "public"."oauth_clients" (
  "id" int4 NOT NULL DEFAULT nextval('oauth_clients_id_seq'::regclass),
  "user_id" int4,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "redirect" text COLLATE "pg_catalog"."default" NOT NULL,
  "personal_access_client" bool NOT NULL,
  "password_client" bool NOT NULL,
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO "public"."oauth_clients" VALUES (1, NULL, 'Laravel Personal Access Client', 'FznofvaigHBEVOWAL5rHefVeEIjUcT4yXcGUfFIa', 'http://localhost', 't', 'f', 'f', '2019-02-07 02:45:11', '2019-02-07 02:45:11');
INSERT INTO "public"."oauth_clients" VALUES (2, NULL, 'Laravel Password Grant Client', 'PWk8VMmNncX4KfS47r682JVGrb0Wpct0gfj0yWYw', 'http://localhost', 'f', 't', 'f', '2019-02-07 02:45:11', '2019-02-07 02:45:11');
INSERT INTO "public"."oauth_clients" VALUES (4, NULL, 'Laravel Personal Access Client', '5kRnJDadyPAGRgHaNK0sUJ6imbSfVgldjJenAcNX', 'http://localhost', 't', 'f', 'f', '2019-02-07 19:12:40', '2019-02-07 19:12:40');
INSERT INTO "public"."oauth_clients" VALUES (5, NULL, 'Laravel Password Grant Client', 'rgPn4Q6FwpACI7vH4swJsx8Ya5KGOJ7w25XYfjWO', 'http://localhost', 'f', 't', 'f', '2019-02-07 19:12:41', '2019-02-07 19:12:41');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_personal_access_clients";
CREATE TABLE "public"."oauth_personal_access_clients" (
  "id" int4 NOT NULL DEFAULT nextval('oauth_personal_access_clients_id_seq'::regclass),
  "client_id" int4 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO "public"."oauth_personal_access_clients" VALUES (1, 1, '2019-02-07 02:45:11', '2019-02-07 02:45:11');
INSERT INTO "public"."oauth_personal_access_clients" VALUES (3, 4, '2019-02-07 19:12:41', '2019-02-07 19:12:41');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_refresh_tokens";
CREATE TABLE "public"."oauth_refresh_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Table structure for owners
-- ----------------------------
DROP TABLE IF EXISTS "public"."owners";
CREATE TABLE "public"."owners" (
  "id" int8 NOT NULL DEFAULT nextval('owner_id_seq'::regclass),
  "person_id" int8 NOT NULL,
  "build_id" int8 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."owners"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."owners"."person_id" IS 'Chave para o proprietário';
COMMENT ON COLUMN "public"."owners"."build_id" IS 'Chave para o imóvel';
COMMENT ON COLUMN "public"."owners"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."owners"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."owners"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."owners" IS 'Contém as informações sobre imóveis e seus proprietários';

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "id" int8 NOT NULL DEFAULT nextval('permission_id_seq'::regclass),
  "profile_id" int8 NOT NULL,
  "permission_id" int8,
  "priority" int2 NOT NULL DEFAULT 1,
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6),
  "cpath" varchar(250) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."permissions"."id" IS 'Chave primária da tabela';
COMMENT ON COLUMN "public"."permissions"."profile_id" IS 'Chave para o perfil';
COMMENT ON COLUMN "public"."permissions"."permission_id" IS 'Chave estrangeria para a permissão mandatória';
COMMENT ON COLUMN "public"."permissions"."priority" IS 'A discutir a necessidade';
COMMENT ON COLUMN "public"."permissions"."updated_at" IS 'Contém a data da última alteração';
COMMENT ON COLUMN "public"."permissions"."created_at" IS 'Contém a data de criação do registro';
COMMENT ON COLUMN "public"."permissions"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."permissions"."cpath" IS 'Caminho para o arquivo ou diretório sob a qual a permissão incidirá';
COMMENT ON TABLE "public"."permissions" IS 'Contém as permissões a serem vinculadas aos perfis';

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES (1, 1, NULL, 1, NULL, '2019-02-07 01:26:10', NULL, 'persons');
INSERT INTO "public"."permissions" VALUES (2, 1, 1, 1, NULL, '2019-02-07 17:09:22', NULL, 'activities');
INSERT INTO "public"."permissions" VALUES (3, 1, 2, 1, NULL, '2019-02-07 17:10:36', NULL, 'level3');
INSERT INTO "public"."permissions" VALUES (8, 2, NULL, 1, NULL, '2019-02-07 01:26:10', NULL, 'persons');
INSERT INTO "public"."permissions" VALUES (9, 2, 1, 1, NULL, '2019-02-07 17:09:22', NULL, 'activities');
INSERT INTO "public"."permissions" VALUES (10, 2, 2, 1, NULL, '2019-02-07 17:10:36', NULL, 'level3');
INSERT INTO "public"."permissions" VALUES (12, 1, NULL, 1, NULL, '2019-02-07 19:00:54', NULL, 'user');

-- ----------------------------
-- Table structure for person_activities
-- ----------------------------
DROP TABLE IF EXISTS "public"."person_activities";
CREATE TABLE "public"."person_activities" (
  "id" int8 NOT NULL DEFAULT nextval('person_activity_id_seq'::regclass),
  "person_id" int8 NOT NULL,
  "activity_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."person_activities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."person_activities"."person_id" IS 'Chave para a taxa';
COMMENT ON COLUMN "public"."person_activities"."activity_id" IS 'Chave para a atividade';
COMMENT ON TABLE "public"."person_activities" IS 'Contém as definições e relações entre contribuintes e atividades';

-- ----------------------------
-- Table structure for person_statuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."person_statuses";
CREATE TABLE "public"."person_statuses" (
  "id" int8 NOT NULL DEFAULT nextval('status_person_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."person_statuses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."person_statuses"."noun" IS 'Rótulo (nome) do status';
COMMENT ON COLUMN "public"."person_statuses"."description" IS 'Descrição do status';
COMMENT ON COLUMN "public"."person_statuses"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."person_statuses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."person_statuses"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."person_statuses" IS 'Contém informações sobre status das pessoas';

-- ----------------------------
-- Records of person_statuses
-- ----------------------------
INSERT INTO "public"."person_statuses" VALUES (2, 'Ativo', 'Ativo', NULL, NULL, '2019-02-06 21:43:58');

-- ----------------------------
-- Table structure for person_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."person_types";
CREATE TABLE "public"."person_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_person_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."person_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."person_types"."noun" IS 'Rótulo (nome, valor) do tipo';
COMMENT ON COLUMN "public"."person_types"."description" IS 'Descrição do tipo';
COMMENT ON COLUMN "public"."person_types"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."person_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."person_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."person_types" IS 'Contém os tipos de pessoas possíveis';

-- ----------------------------
-- Records of person_types
-- ----------------------------
INSERT INTO "public"."person_types" VALUES (1, 'Pessoa Física', 'PF', NULL, NULL, '2019-02-06 21:44:32');

-- ----------------------------
-- Table structure for personal_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_details";
CREATE TABLE "public"."personal_details" (
  "id" int8 NOT NULL DEFAULT nextval('personal_detail_id_seq'::regclass),
  "person_id" int8 NOT NULL,
  "degree_level_id" int8 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."personal_details"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."personal_details"."person_id" IS 'Chave para a pessoa';
COMMENT ON COLUMN "public"."personal_details"."degree_level_id" IS 'Chave para o nivel de escolaridade';
COMMENT ON COLUMN "public"."personal_details"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."personal_details"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."personal_details"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."personal_details" IS 'Contém informações exclusivas sobres pessoas físicas';

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS "public"."persons";
CREATE TABLE "public"."persons" (
  "id" int8 NOT NULL DEFAULT nextval('person_id_seq'::regclass),
  "type_person_id" int8 NOT NULL,
  "status_person_id" int8,
  "dip" int8 NOT NULL,
  "real_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "acronym" varchar(60) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."persons"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."persons"."type_person_id" IS 'Chave estrangeira para o tipo de pessoa (PJ, PF)';
COMMENT ON COLUMN "public"."persons"."status_person_id" IS 'Chave estrangeira para o status do usuário';
COMMENT ON COLUMN "public"."persons"."dip" IS 'Contém o documento de identificação da pessoa (CPF, CNPJ)';
COMMENT ON COLUMN "public"."persons"."real_name" IS 'Contém o nome real da pessoa (PF:  nome, PJ: razão social)';
COMMENT ON COLUMN "public"."persons"."acronym" IS 'Nome fantasia da pessoa';
COMMENT ON COLUMN "public"."persons"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."persons"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."persons"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."persons" IS 'Contém informações sobre os contribuintes (PF, PJ)';

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO "public"."persons" VALUES (1, 1, 2, 5453479396, 'Jhonny Mesquita', NULL, NULL, NULL, '2019-02-06 21:48:35');

-- ----------------------------
-- Table structure for profile_cities
-- ----------------------------
DROP TABLE IF EXISTS "public"."profile_cities";
CREATE TABLE "public"."profile_cities" (
  "id" int8 NOT NULL DEFAULT nextval('profile_city_id_seq'::regclass),
  "profile_id" int8 NOT NULL,
  "city_id" int8 NOT NULL,
  "update_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."profile_cities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."profile_cities"."profile_id" IS 'Chave estrangeira para o tipo do perfil';
COMMENT ON COLUMN "public"."profile_cities"."city_id" IS 'Chave estrangeira para a cidade';
COMMENT ON COLUMN "public"."profile_cities"."update_at" IS 'Data de última alteração';
COMMENT ON COLUMN "public"."profile_cities"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."profile_cities"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."profile_cities" IS 'Contém os perfis por aplicação que poderão ser usados para acesso';

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS "public"."profiles";
CREATE TABLE "public"."profiles" (
  "id" int8 NOT NULL DEFAULT nextval('profile_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."profiles"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."profiles"."noun" IS 'Rótulo (nome) do tipo';
COMMENT ON COLUMN "public"."profiles"."description" IS 'Descrição do tipo';
COMMENT ON COLUMN "public"."profiles"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."profiles"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."profiles"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."profiles" IS 'Contém a definição dos tipos de perfis disponíveis';

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO "public"."profiles" VALUES (1, 'Admin', 'Administrador', NULL, '2019-02-07 01:20:59', NULL);
INSERT INTO "public"."profiles" VALUES (2, 'PF', 'Pessoa Física', NULL, '2019-02-07 17:23:01', NULL);

-- ----------------------------
-- Table structure for qsas
-- ----------------------------
DROP TABLE IF EXISTS "public"."qsas";
CREATE TABLE "public"."qsas" (
  "id" int8 NOT NULL DEFAULT nextval('qsa_id_seq'::regclass),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "company_id" int8 NOT NULL,
  "type_qsa_id" int8 NOT NULL,
  "partner_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."qsas"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."qsas"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."qsas"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."qsas"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."qsas"."company_id" IS 'Chave para a empresa';
COMMENT ON COLUMN "public"."qsas"."type_qsa_id" IS 'Chave para o tipo de qsa';
COMMENT ON COLUMN "public"."qsas"."partner_id" IS 'Chave para o sócio';
COMMENT ON TABLE "public"."qsas" IS 'Contém informações sobre o quadro de Sócios e Administradores';

-- ----------------------------
-- Table structure for qsas_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."qsas_types";
CREATE TABLE "public"."qsas_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_qsa_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."qsas_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."qsas_types"."noun" IS 'Nome (rótulo) do tipo qsa';
COMMENT ON COLUMN "public"."qsas_types"."description" IS 'Descriçção do tipo de qsa';
COMMENT ON COLUMN "public"."qsas_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."qsas_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."qsas_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."qsas_types" IS 'Contém informações sobre os tipos de qsa (sócio, administradores, etc)';

-- ----------------------------
-- Table structure for retentions
-- ----------------------------
DROP TABLE IF EXISTS "public"."retentions";
CREATE TABLE "public"."retentions" (
  "id" int8 NOT NULL DEFAULT nextval('retention_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."retentions"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."retentions"."noun" IS 'Nome (rótulo) para o tipo da retenção';
COMMENT ON COLUMN "public"."retentions"."description" IS 'Descrição do tipo da retenção';
COMMENT ON COLUMN "public"."retentions"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."retentions"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."retentions"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."retentions" IS 'Contém as definições de tipos de retenções';

-- ----------------------------
-- Table structure for rule_taxes
-- ----------------------------
DROP TABLE IF EXISTS "public"."rule_taxes";
CREATE TABLE "public"."rule_taxes" (
  "id" int8 NOT NULL DEFAULT nextval('rule_tax_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."rule_taxes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."rule_taxes"."noun" IS 'Nome (rótulo) para o tipo da taxa';
COMMENT ON COLUMN "public"."rule_taxes"."description" IS 'Descrição do tipo da taxa';
COMMENT ON COLUMN "public"."rule_taxes"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."rule_taxes"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."rule_taxes"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."rule_taxes" IS 'Contém as regras para definir a forma de cálculo das taxas';

-- ----------------------------
-- Table structure for sectors
-- ----------------------------
DROP TABLE IF EXISTS "public"."sectors";
CREATE TABLE "public"."sectors" (
  "id" int8 NOT NULL DEFAULT nextval('sector_id_seq'::regclass),
  "distric_id" int8 NOT NULL,
  "number" int4 NOT NULL,
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."sectors"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."sectors"."distric_id" IS 'Chave do distrito';
COMMENT ON COLUMN "public"."sectors"."number" IS 'Número do setor';
COMMENT ON COLUMN "public"."sectors"."noun" IS 'Nome (rótulo) do setor';
COMMENT ON COLUMN "public"."sectors"."description" IS 'Descrição do setor';
COMMENT ON COLUMN "public"."sectors"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."sectors"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."sectors"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."sectors" IS 'Contém as informações dos setores dos distritos';

-- ----------------------------
-- Table structure for service_activities
-- ----------------------------
DROP TABLE IF EXISTS "public"."service_activities";
CREATE TABLE "public"."service_activities" (
  "id" int8 NOT NULL DEFAULT nextval('service_activity_id_seq'::regclass),
  "service_id" int8 NOT NULL,
  "activity_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."service_activities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."service_activities"."service_id" IS 'Chave para o serviço';
COMMENT ON COLUMN "public"."service_activities"."activity_id" IS 'Chave para a atividade';
COMMENT ON TABLE "public"."service_activities" IS 'Contém as informações de relação entre o serviço e atividade';

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS "public"."services";
CREATE TABLE "public"."services" (
  "id" int8 NOT NULL DEFAULT nextval('service_id_seq'::regclass),
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "item" int2 NOT NULL,
  "description" varchar(450) COLLATE "pg_catalog"."default" NOT NULL,
  "llc" varchar(10) COLLATE "pg_catalog"."default",
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."services"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."services"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."services"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."services"."item" IS 'Código do item de serviço';
COMMENT ON COLUMN "public"."services"."description" IS 'Descrição do serviço';
COMMENT ON COLUMN "public"."services"."llc" IS 'Lei complementar que regulamenta o serviço';
COMMENT ON COLUMN "public"."services"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."services" IS 'Contém a especificação dos serviços que estão previstos em lei e passivéis de tributação';

-- ----------------------------
-- Table structure for simple_nationals
-- ----------------------------
DROP TABLE IF EXISTS "public"."simple_nationals";
CREATE TABLE "public"."simple_nationals" (
  "id" int8 NOT NULL DEFAULT nextval('simple_national_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."simple_nationals"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."simple_nationals"."noun" IS 'Rótulo (nome, valor)';
COMMENT ON COLUMN "public"."simple_nationals"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."simple_nationals"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."simple_nationals"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."simple_nationals" IS 'Contém a informação sobre opção do simples nacional';

-- ----------------------------
-- Table structure for size_companies
-- ----------------------------
DROP TABLE IF EXISTS "public"."size_companies";
CREATE TABLE "public"."size_companies" (
  "id" int8 NOT NULL DEFAULT nextval('size_company_id_seq'::regclass),
  "noun" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(400) COLLATE "pg_catalog"."default",
  "updated" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."size_companies"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."size_companies"."noun" IS 'Nome (rótulo) do porte da empresa';
COMMENT ON COLUMN "public"."size_companies"."description" IS 'Descrição do porte da empresa';
COMMENT ON COLUMN "public"."size_companies"."updated" IS 'Data da alteração';
COMMENT ON COLUMN "public"."size_companies"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."size_companies"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."size_companies" IS 'Contém as informações sobre porte de empresas';

-- ----------------------------
-- Table structure for special_regimes
-- ----------------------------
DROP TABLE IF EXISTS "public"."special_regimes";
CREATE TABLE "public"."special_regimes" (
  "id" int8 NOT NULL DEFAULT nextval('special_regime_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."special_regimes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."special_regimes"."noun" IS 'Rótulo (nome) do regime especial';
COMMENT ON COLUMN "public"."special_regimes"."description" IS 'Descrição do regime especial';
COMMENT ON COLUMN "public"."special_regimes"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."special_regimes"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."special_regimes"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."special_regimes" IS 'Contém os tipos de regimes especiais';

-- ----------------------------
-- Table structure for states
-- ----------------------------
DROP TABLE IF EXISTS "public"."states";
CREATE TABLE "public"."states" (
  "id" int8 NOT NULL DEFAULT nextval('state_id_seq'::regclass),
  "country_id" int8 NOT NULL,
  "noun" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "initials" varchar(2) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."states"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."states"."country_id" IS 'Chave para o país';
COMMENT ON COLUMN "public"."states"."noun" IS 'Nome (rótulo) do estado';
COMMENT ON COLUMN "public"."states"."initials" IS 'Sigla do estado';
COMMENT ON COLUMN "public"."states"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."states"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."states"."deleted_at" IS 'Data de deleção';

-- ----------------------------
-- Table structure for street_blocks
-- ----------------------------
DROP TABLE IF EXISTS "public"."street_blocks";
CREATE TABLE "public"."street_blocks" (
  "id" int8 NOT NULL DEFAULT nextval('street_block_id_seq'::regclass),
  "street_id" int8 NOT NULL,
  "block_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."street_blocks"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."street_blocks"."street_id" IS 'Chave para o logradouro';
COMMENT ON COLUMN "public"."street_blocks"."block_id" IS 'Chave para a quadra';
COMMENT ON TABLE "public"."street_blocks" IS 'Contém as associações de quadra e seus logradouros';

-- ----------------------------
-- Table structure for street_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."street_types";
CREATE TABLE "public"."street_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_street_id_seq'::regclass),
  "noun" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "initals" varchar(20) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."street_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."street_types"."noun" IS 'Nome (rótulo) do tipo de logradouro';
COMMENT ON COLUMN "public"."street_types"."initals" IS 'Sigla do tipo de logradouro';
COMMENT ON COLUMN "public"."street_types"."updated_at" IS 'Data da alteração';
COMMENT ON COLUMN "public"."street_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."street_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."street_types" IS 'Contém as informações de tipos de logradouros';

-- ----------------------------
-- Table structure for streets
-- ----------------------------
DROP TABLE IF EXISTS "public"."streets";
CREATE TABLE "public"."streets" (
  "id" int8 NOT NULL DEFAULT nextval('street_id_seq'::regclass),
  "neighborhood_id" int8 NOT NULL,
  "type_street_id" int8 NOT NULL,
  "noun" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "cep" varchar(20) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."streets"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."streets"."neighborhood_id" IS 'Chave para o bairro';
COMMENT ON COLUMN "public"."streets"."type_street_id" IS 'Chave para o tipo de logradouro';
COMMENT ON COLUMN "public"."streets"."noun" IS 'Nome (rótulo) do logradouro';
COMMENT ON COLUMN "public"."streets"."cep" IS 'Código de endereçamento postal - CEP';
COMMENT ON COLUMN "public"."streets"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."streets"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."streets"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."streets" IS 'Contém informações sobre os logradouros na composição da planta genérica de valores';

-- ----------------------------
-- Table structure for tax_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."tax_types";
CREATE TABLE "public"."tax_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_tax_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."tax_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."tax_types"."noun" IS 'Nome (rótulo) para o tipo da taxa';
COMMENT ON COLUMN "public"."tax_types"."description" IS 'Descrição do tipo da taxa';
COMMENT ON COLUMN "public"."tax_types"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."tax_types"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."tax_types"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."tax_types" IS 'Contém as definições dos tipos de taxas';

-- ----------------------------
-- Table structure for tax_unities
-- ----------------------------
DROP TABLE IF EXISTS "public"."tax_unities";
CREATE TABLE "public"."tax_unities" (
  "id" int8 NOT NULL DEFAULT nextval('unity_tax_id_seq'::regclass),
  "noun" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(220) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."tax_unities"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."tax_unities"."noun" IS 'Nome (rótulo) para o tipo da taxa';
COMMENT ON COLUMN "public"."tax_unities"."description" IS 'Descrição do tipo da taxa';
COMMENT ON COLUMN "public"."tax_unities"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."tax_unities"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."tax_unities"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."tax_unities" IS 'Contém as definições de unidades para as taxas';

-- ----------------------------
-- Table structure for taxes
-- ----------------------------
DROP TABLE IF EXISTS "public"."taxes";
CREATE TABLE "public"."taxes" (
  "id" int8 NOT NULL DEFAULT nextval('tax_id_seq'::regclass),
  "type_tax_id" int8 NOT NULL,
  "unity_tax_id" int8 NOT NULL,
  "rule_tax_id" int8 NOT NULL,
  "tax_id" int8,
  "noun" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."taxes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."taxes"."type_tax_id" IS 'Chave para o tipo da taxa';
COMMENT ON COLUMN "public"."taxes"."unity_tax_id" IS 'Chave para a unidade da taxa';
COMMENT ON COLUMN "public"."taxes"."rule_tax_id" IS 'Chave para a regra da taxa';
COMMENT ON COLUMN "public"."taxes"."tax_id" IS 'Chave para a taxa pai';
COMMENT ON COLUMN "public"."taxes"."noun" IS 'Nome (rótulo) da taxa';
COMMENT ON COLUMN "public"."taxes"."description" IS 'Descrição da taxa';
COMMENT ON COLUMN "public"."taxes"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."taxes"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."taxes"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."taxes" IS 'Contém informações de taxas';

-- ----------------------------
-- Table structure for ticket_statuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."ticket_statuses";
CREATE TABLE "public"."ticket_statuses" (
  "id" int8 NOT NULL DEFAULT nextval('status_ticket_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."ticket_statuses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."ticket_statuses"."noun" IS 'Rótulo (nome, valor) do status';
COMMENT ON COLUMN "public"."ticket_statuses"."description" IS 'Descrição do status';
COMMENT ON COLUMN "public"."ticket_statuses"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."ticket_statuses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."ticket_statuses"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."ticket_statuses" IS 'Contém informações sobre os status dos boletos';

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS "public"."tickets";
CREATE TABLE "public"."tickets" (
  "id" int8 NOT NULL DEFAULT nextval('ticket_id_seq'::regclass),
  "sacado" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dip" varchar(14) COLLATE "pg_catalog"."default" NOT NULL,
  "type_sacado" int2 NOT NULL,
  "base_value" numeric(15,2) NOT NULL,
  "juros" numeric(15,2),
  "multa" numeric(15,2),
  "additions" numeric(15,2),
  "total_value" numeric(15,2) NOT NULL,
  "description" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL,
  "observation" varchar(200) COLLATE "pg_catalog"."default",
  "others" varchar(200) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "covenant_id" int8 NOT NULL,
  "emitter_id" int8 NOT NULL,
  "tribute_id" int8 NOT NULL,
  "payer_id" int8 NOT NULL,
  "due_date" date NOT NULL,
  "deleted_at" timestamp(6),
  "status_ticket_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."tickets"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."tickets"."sacado" IS 'Pagador do boleto';
COMMENT ON COLUMN "public"."tickets"."dip" IS 'Número do documento do pagador';
COMMENT ON COLUMN "public"."tickets"."type_sacado" IS 'Tipo do pagador';
COMMENT ON COLUMN "public"."tickets"."base_value" IS 'Valor parcial';
COMMENT ON COLUMN "public"."tickets"."juros" IS 'Juros aplicados';
COMMENT ON COLUMN "public"."tickets"."multa" IS 'Multa aplicada';
COMMENT ON COLUMN "public"."tickets"."additions" IS 'Acréscimos';
COMMENT ON COLUMN "public"."tickets"."total_value" IS 'Valor total';
COMMENT ON COLUMN "public"."tickets"."description" IS 'Descrições do boleto';
COMMENT ON COLUMN "public"."tickets"."observation" IS 'Observações do boleto';
COMMENT ON COLUMN "public"."tickets"."others" IS 'Outras informações';
COMMENT ON COLUMN "public"."tickets"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."tickets"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."tickets"."covenant_id" IS 'Chave para o convênio';
COMMENT ON COLUMN "public"."tickets"."emitter_id" IS 'Chave para o emissor do boleto';
COMMENT ON COLUMN "public"."tickets"."tribute_id" IS 'Chave para o tipo do tributo';
COMMENT ON COLUMN "public"."tickets"."payer_id" IS 'Chave para o pagador do boleto';
COMMENT ON COLUMN "public"."tickets"."due_date" IS 'Data do vencimento';
COMMENT ON COLUMN "public"."tickets"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."tickets"."status_ticket_id" IS 'Chave para o status do boleto';
COMMENT ON TABLE "public"."tickets" IS 'Contém as informações sobre os boletos emitidos';

-- ----------------------------
-- Table structure for tribute_covenants
-- ----------------------------
DROP TABLE IF EXISTS "public"."tribute_covenants";
CREATE TABLE "public"."tribute_covenants" (
  "id" int8 NOT NULL DEFAULT nextval('tribute_covenant_id_seq'::regclass),
  "tribute_id" int8 NOT NULL,
  "covenant_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."tribute_covenants"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."tribute_covenants"."tribute_id" IS 'Chave para o tributo';
COMMENT ON COLUMN "public"."tribute_covenants"."covenant_id" IS 'Chave para o convênio';
COMMENT ON TABLE "public"."tribute_covenants" IS 'Contém informações sobre a relação entre convênio e tributos';

-- ----------------------------
-- Table structure for tributes
-- ----------------------------
DROP TABLE IF EXISTS "public"."tributes";
CREATE TABLE "public"."tributes" (
  "id" int8 NOT NULL DEFAULT nextval('tribute_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."tributes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."tributes"."noun" IS 'Rótulo (nome, valor) do tributo';
COMMENT ON COLUMN "public"."tributes"."description" IS 'Descrição do tributo';
COMMENT ON COLUMN "public"."tributes"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."tributes"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."tributes"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."tributes" IS 'Contém informações sobre os tipos de tributos';

-- ----------------------------
-- Table structure for user_profile_actions
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_profile_actions";
CREATE TABLE "public"."user_profile_actions" (
  "id" int8 NOT NULL DEFAULT nextval('access_profile_action_id_seq'::regclass),
  "action_id" int8 NOT NULL,
  "user_profile_id" int8 NOT NULL,
  "update_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."user_profile_actions"."id" IS 'Cháve primária';
COMMENT ON COLUMN "public"."user_profile_actions"."action_id" IS 'Chave estrangeira para a ação';
COMMENT ON COLUMN "public"."user_profile_actions"."user_profile_id" IS 'Chave estrangeira para o acesso';
COMMENT ON COLUMN "public"."user_profile_actions"."update_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."user_profile_actions"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."user_profile_actions"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."user_profile_actions" IS 'Relacionar as ações com o acesso, limitado ao maximo definido pelo perfil ao qual está vinculado';

-- ----------------------------
-- Records of user_profile_actions
-- ----------------------------
INSERT INTO "public"."user_profile_actions" VALUES (2, 1, 1, NULL, NULL, '2019-02-07 17:00:44');
INSERT INTO "public"."user_profile_actions" VALUES (3, 4, 1, NULL, NULL, '2019-02-07 17:00:44');
INSERT INTO "public"."user_profile_actions" VALUES (4, 3, 2, NULL, NULL, '2019-02-07 18:00:16');
INSERT INTO "public"."user_profile_actions" VALUES (5, 8, 1, NULL, NULL, '2019-02-07 18:31:30');
INSERT INTO "public"."user_profile_actions" VALUES (7, 12, 1, NULL, NULL, '2019-02-07 19:02:32');

-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_profiles";
CREATE TABLE "public"."user_profiles" (
  "id" int8 NOT NULL DEFAULT nextval('access_profile_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "profile_id" int8 NOT NULL,
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."user_profiles"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."user_profiles"."user_id" IS 'Chave estrangeira para o acesso';
COMMENT ON COLUMN "public"."user_profiles"."profile_id" IS 'Chave estrangeira para o perfil';
COMMENT ON COLUMN "public"."user_profiles"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."user_profiles"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."user_profiles"."deleted_at" IS 'Data de deleção';
COMMENT ON TABLE "public"."user_profiles" IS 'Contém o vínculo entre o acesso e o perfil';

-- ----------------------------
-- Records of user_profiles
-- ----------------------------
INSERT INTO "public"."user_profiles" VALUES (1, 1, 1, NULL, '2019-02-07 01:23:06', NULL);
INSERT INTO "public"."user_profiles" VALUES (2, 2, 1, NULL, '2019-02-07 18:00:38', NULL);

-- ----------------------------
-- Table structure for user_statuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_statuses";
CREATE TABLE "public"."user_statuses" (
  "id" int8 NOT NULL DEFAULT nextval('status_access_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."user_statuses"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."user_statuses"."noun" IS 'Rótulo (nome, tipo, título)';
COMMENT ON COLUMN "public"."user_statuses"."description" IS 'Descrição';
COMMENT ON COLUMN "public"."user_statuses"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."user_statuses"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."user_statuses"."created_at" IS 'Data de criação';

-- ----------------------------
-- Records of user_statuses
-- ----------------------------
INSERT INTO "public"."user_statuses" VALUES (1, 'Ativo', 'Ativo', NULL, NULL, '2019-02-06 22:53:01');

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_types";
CREATE TABLE "public"."user_types" (
  "id" int8 NOT NULL DEFAULT nextval('type_access_id_seq'::regclass),
  "noun" varchar(80) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "updated_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."user_types"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."user_types"."noun" IS 'Rótulo (nome) do tipo';
COMMENT ON COLUMN "public"."user_types"."description" IS 'Descrição do tipo';
COMMENT ON COLUMN "public"."user_types"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."user_types"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."user_types"."deleted_at" IS 'Data de deleção';

-- ----------------------------
-- Records of user_types
-- ----------------------------
INSERT INTO "public"."user_types" VALUES (1, 'PF', 'pf', NULL, '2019-02-06 22:48:33', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('access_id_seq'::regclass),
  "type_access_id" int8 NOT NULL,
  "status_access_id" int8 NOT NULL,
  "person_id" int8 NOT NULL,
  "login" int8 NOT NULL,
  "password" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "last_acess" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL,
  "email_verified_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."users"."id" IS 'Chave primária da tabela';
COMMENT ON COLUMN "public"."users"."type_access_id" IS 'Chave estrangeira para o tipo de acesso';
COMMENT ON COLUMN "public"."users"."status_access_id" IS 'Situação do acesso';
COMMENT ON COLUMN "public"."users"."person_id" IS 'Chave estrangeira para o contribuinte';
COMMENT ON COLUMN "public"."users"."login" IS 'Login de acesso do usuário (Usado o próprio documento)';
COMMENT ON COLUMN "public"."users"."password" IS 'Senha de acesso do usuário';
COMMENT ON COLUMN "public"."users"."email" IS 'E-MAIL de assistência para o acesso';
COMMENT ON COLUMN "public"."users"."last_acess" IS 'Data do último acesso';
COMMENT ON COLUMN "public"."users"."updated_at" IS 'Data da última alteração';
COMMENT ON COLUMN "public"."users"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."users"."created_at" IS 'Data de criação';
COMMENT ON COLUMN "public"."users"."email_verified_at" IS 'Data em que o email foi validado';
COMMENT ON TABLE "public"."users" IS 'Contém os cadastros dos acessos de todos os usuários';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 1, 1, 1, 5453479396, '$2y$10$jlEtUx1bNKYpY5uNlykPbuC1Vh0RpeS0kgWg6KnN5EoMYt9R9Gk26', 'admin@mail.com', NULL, '2019-02-07 02:16:49', NULL, '2019-02-07 02:16:49', NULL);
INSERT INTO "public"."users" VALUES (2, 1, 1, 1, 5456466, '55555', 'dfsd@sd.com', NULL, NULL, NULL, '2019-02-07 17:59:47', NULL);

-- ----------------------------
-- Table structure for value_taxes
-- ----------------------------
DROP TABLE IF EXISTS "public"."value_taxes";
CREATE TABLE "public"."value_taxes" (
  "id" int8 NOT NULL DEFAULT nextval('value_tax_id_seq'::regclass),
  "tax_id" int8 NOT NULL,
  "value" numeric(15,2) NOT NULL,
  "years" int4 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."value_taxes"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."value_taxes"."tax_id" IS 'Chave para a taxa';
COMMENT ON COLUMN "public"."value_taxes"."value" IS 'Valor da taxa';
COMMENT ON COLUMN "public"."value_taxes"."years" IS 'Ano de aplicação da taxa ';
COMMENT ON COLUMN "public"."value_taxes"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."value_taxes"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."value_taxes"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."value_taxes" IS 'Contém as informações sobre os valores das taxas por ano';

-- ----------------------------
-- Table structure for vucs
-- ----------------------------
DROP TABLE IF EXISTS "public"."vucs";
CREATE TABLE "public"."vucs" (
  "id" int8 NOT NULL DEFAULT nextval('vuc_id_seq'::regclass),
  "build_standard_id" int8 NOT NULL,
  "value" numeric(15,2) NOT NULL,
  "years" int4 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."vucs"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."vucs"."build_standard_id" IS 'Chave para o padrão construtivo';
COMMENT ON COLUMN "public"."vucs"."value" IS 'Valor do vuc - Valor Unitário da Construção';
COMMENT ON COLUMN "public"."vucs"."years" IS 'Ano de aprovação e/ou aplicação';
COMMENT ON COLUMN "public"."vucs"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."vucs"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."vucs"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."vucs" IS 'Contém as informações sobre vut';

-- ----------------------------
-- Table structure for vuts
-- ----------------------------
DROP TABLE IF EXISTS "public"."vuts";
CREATE TABLE "public"."vuts" (
  "id" int8 NOT NULL DEFAULT nextval('vut_id_seq'::regclass),
  "street_id" int8 NOT NULL,
  "value" numeric(15,2) NOT NULL,
  "years" int4 NOT NULL,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."vuts"."id" IS 'Chave primária';
COMMENT ON COLUMN "public"."vuts"."street_id" IS 'Chave para o logradouro';
COMMENT ON COLUMN "public"."vuts"."value" IS 'Valor unitário do terreno';
COMMENT ON COLUMN "public"."vuts"."years" IS 'Ano de vigência do valor';
COMMENT ON COLUMN "public"."vuts"."updated_at" IS 'Data de alteração';
COMMENT ON COLUMN "public"."vuts"."deleted_at" IS 'Data de deleção';
COMMENT ON COLUMN "public"."vuts"."created_at" IS 'Data de criação';
COMMENT ON TABLE "public"."vuts" IS 'Contém os valores unitários do terreno por ano para o cálculo do vvt (valor venal do terreno)';

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."access_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."access_id_seq"', 8, true);
ALTER SEQUENCE "public"."access_profile_action_id_seq"
OWNED BY "public"."user_profile_actions"."id";
SELECT setval('"public"."access_profile_action_id_seq"', 8, true);
ALTER SEQUENCE "public"."access_profile_id_seq"
OWNED BY "public"."user_profiles"."id";
SELECT setval('"public"."access_profile_id_seq"', 4, true);
ALTER SEQUENCE "public"."action_id_seq"
OWNED BY "public"."actions"."id";
SELECT setval('"public"."action_id_seq"', 13, true);
ALTER SEQUENCE "public"."activity_address_id_seq"
OWNED BY "public"."activity_addresses"."id";
SELECT setval('"public"."activity_address_id_seq"', 3, false);
ALTER SEQUENCE "public"."activity_id_seq"
OWNED BY "public"."activities"."id";
SELECT setval('"public"."activity_id_seq"', 3, false);
ALTER SEQUENCE "public"."activity_tax_id_seq"
OWNED BY "public"."activity_taxes"."id";
SELECT setval('"public"."activity_tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."address_id_seq"
OWNED BY "public"."addresses"."id";
SELECT setval('"public"."address_id_seq"', 3, false);
ALTER SEQUENCE "public"."aliquot_id_seq"
OWNED BY "public"."aliquots"."id";
SELECT setval('"public"."aliquot_id_seq"', 3, false);
ALTER SEQUENCE "public"."bank_id_seq"
OWNED BY "public"."banks"."id";
SELECT setval('"public"."bank_id_seq"', 3, false);
ALTER SEQUENCE "public"."beneficiary_id_seq"
OWNED BY "public"."beneficiaries"."id";
SELECT setval('"public"."beneficiary_id_seq"', 3, false);
ALTER SEQUENCE "public"."block_id_seq"
OWNED BY "public"."blocks"."id";
SELECT setval('"public"."block_id_seq"', 3, false);
ALTER SEQUENCE "public"."build_correction_id_seq"
OWNED BY "public"."build_corrections"."id";
SELECT setval('"public"."build_correction_id_seq"', 3, false);
ALTER SEQUENCE "public"."build_standard_id_seq"
OWNED BY "public"."building_standards"."id";
SELECT setval('"public"."build_standard_id_seq"', 3, false);
ALTER SEQUENCE "public"."building_id_seq"
OWNED BY "public"."buildings"."id";
SELECT setval('"public"."building_id_seq"', 3, false);
ALTER SEQUENCE "public"."city_id_seq"
OWNED BY "public"."cities"."id";
SELECT setval('"public"."city_id_seq"', 3, false);
ALTER SEQUENCE "public"."company_id_seq"
OWNED BY "public"."companies"."id";
SELECT setval('"public"."company_id_seq"', 3, false);
ALTER SEQUENCE "public"."correction_id_seq"
OWNED BY "public"."corrections"."id";
SELECT setval('"public"."correction_id_seq"', 3, false);
ALTER SEQUENCE "public"."country_id_seq"
OWNED BY "public"."countries"."id";
SELECT setval('"public"."country_id_seq"', 3, false);
ALTER SEQUENCE "public"."covenant_id_seq"
OWNED BY "public"."covenants"."id";
SELECT setval('"public"."covenant_id_seq"', 3, false);
ALTER SEQUENCE "public"."deduction_id_seq"
OWNED BY "public"."deductions"."id";
SELECT setval('"public"."deduction_id_seq"', 3, false);
ALTER SEQUENCE "public"."degree_level_id_seq"
OWNED BY "public"."degree_levels"."id";
SELECT setval('"public"."degree_level_id_seq"', 3, false);
ALTER SEQUENCE "public"."district_id_seq"
OWNED BY "public"."districts"."id";
SELECT setval('"public"."district_id_seq"', 3, false);
ALTER SEQUENCE "public"."factor_id_seq"
OWNED BY "public"."factors"."id";
SELECT setval('"public"."factor_id_seq"', 3, false);
ALTER SEQUENCE "public"."incidence_id_seq"
OWNED BY "public"."incidences"."id";
SELECT setval('"public"."incidence_id_seq"', 3, false);
ALTER SEQUENCE "public"."invoice_id_seq"
OWNED BY "public"."invoices"."id";
SELECT setval('"public"."invoice_id_seq"', 3, false);
ALTER SEQUENCE "public"."iptu_id_seq"
OWNED BY "public"."iptus"."id";
SELECT setval('"public"."iptu_id_seq"', 3, false);
ALTER SEQUENCE "public"."iss_id_seq"
OWNED BY "public"."isses"."id";
SELECT setval('"public"."iss_id_seq"', 3, false);
ALTER SEQUENCE "public"."itbi_id_seq"
OWNED BY "public"."itbis"."id";
SELECT setval('"public"."itbi_id_seq"', 3, false);
ALTER SEQUENCE "public"."legal_nature_id_seq"
OWNED BY "public"."legal_natures"."id";
SELECT setval('"public"."legal_nature_id_seq"', 3, false);
ALTER SEQUENCE "public"."liability_id_seq"
OWNED BY "public"."liabilities"."id";
SELECT setval('"public"."liability_id_seq"', 3, false);
ALTER SEQUENCE "public"."neighborhood_id_seq"
OWNED BY "public"."neighborhoods"."id";
SELECT setval('"public"."neighborhood_id_seq"', 3, false);
ALTER SEQUENCE "public"."oauth_clients_id_seq"
OWNED BY "public"."oauth_clients"."id";
SELECT setval('"public"."oauth_clients_id_seq"', 6, true);
ALTER SEQUENCE "public"."oauth_personal_access_clients_id_seq"
OWNED BY "public"."oauth_personal_access_clients"."id";
SELECT setval('"public"."oauth_personal_access_clients_id_seq"', 4, true);
ALTER SEQUENCE "public"."owner_id_seq"
OWNED BY "public"."owners"."id";
SELECT setval('"public"."owner_id_seq"', 3, false);
ALTER SEQUENCE "public"."permission_id_seq"
OWNED BY "public"."permissions"."id";
SELECT setval('"public"."permission_id_seq"', 13, true);
ALTER SEQUENCE "public"."person_activity_id_seq"
OWNED BY "public"."person_activities"."id";
SELECT setval('"public"."person_activity_id_seq"', 3, false);
ALTER SEQUENCE "public"."person_id_seq"
OWNED BY "public"."persons"."id";
SELECT setval('"public"."person_id_seq"', 8, true);
ALTER SEQUENCE "public"."personal_detail_id_seq"
OWNED BY "public"."personal_details"."id";
SELECT setval('"public"."personal_detail_id_seq"', 3, false);
ALTER SEQUENCE "public"."profile_city_id_seq"
OWNED BY "public"."profile_cities"."id";
SELECT setval('"public"."profile_city_id_seq"', 3, false);
ALTER SEQUENCE "public"."profile_id_seq"
OWNED BY "public"."profiles"."id";
SELECT setval('"public"."profile_id_seq"', 3, true);
ALTER SEQUENCE "public"."qsa_id_seq"
OWNED BY "public"."qsas"."id";
SELECT setval('"public"."qsa_id_seq"', 3, false);
ALTER SEQUENCE "public"."retention_id_seq"
OWNED BY "public"."retentions"."id";
SELECT setval('"public"."retention_id_seq"', 3, false);
ALTER SEQUENCE "public"."rule_tax_id_seq"
OWNED BY "public"."rule_taxes"."id";
SELECT setval('"public"."rule_tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."sector_id_seq"
OWNED BY "public"."sectors"."id";
SELECT setval('"public"."sector_id_seq"', 3, false);
ALTER SEQUENCE "public"."service_activity_id_seq"
OWNED BY "public"."service_activities"."id";
SELECT setval('"public"."service_activity_id_seq"', 3, false);
ALTER SEQUENCE "public"."service_id_seq"
OWNED BY "public"."services"."id";
SELECT setval('"public"."service_id_seq"', 3, false);
ALTER SEQUENCE "public"."simple_national_id_seq"
OWNED BY "public"."simple_nationals"."id";
SELECT setval('"public"."simple_national_id_seq"', 3, false);
ALTER SEQUENCE "public"."size_company_id_seq"
OWNED BY "public"."size_companies"."id";
SELECT setval('"public"."size_company_id_seq"', 3, false);
ALTER SEQUENCE "public"."special_regime_id_seq"
OWNED BY "public"."special_regimes"."id";
SELECT setval('"public"."special_regime_id_seq"', 3, false);
ALTER SEQUENCE "public"."state_id_seq"
OWNED BY "public"."states"."id";
SELECT setval('"public"."state_id_seq"', 3, false);
ALTER SEQUENCE "public"."status_access_id_seq"
OWNED BY "public"."user_statuses"."id";
SELECT setval('"public"."status_access_id_seq"', 3, true);
ALTER SEQUENCE "public"."status_building_id_seq"
OWNED BY "public"."building_statuses"."id";
SELECT setval('"public"."status_building_id_seq"', 3, false);
ALTER SEQUENCE "public"."status_person_id_seq"
OWNED BY "public"."person_statuses"."id";
SELECT setval('"public"."status_person_id_seq"', 4, true);
ALTER SEQUENCE "public"."status_ticket_id_seq"
OWNED BY "public"."ticket_statuses"."id";
SELECT setval('"public"."status_ticket_id_seq"', 3, false);
ALTER SEQUENCE "public"."street_block_id_seq"
OWNED BY "public"."street_blocks"."id";
SELECT setval('"public"."street_block_id_seq"', 3, false);
ALTER SEQUENCE "public"."street_id_seq"
OWNED BY "public"."streets"."id";
SELECT setval('"public"."street_id_seq"', 3, false);
ALTER SEQUENCE "public"."tax_id_seq"
OWNED BY "public"."taxes"."id";
SELECT setval('"public"."tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."ticket_id_seq"
OWNED BY "public"."tickets"."id";
SELECT setval('"public"."ticket_id_seq"', 3, false);
ALTER SEQUENCE "public"."tribute_covenant_id_seq"
OWNED BY "public"."tribute_covenants"."id";
SELECT setval('"public"."tribute_covenant_id_seq"', 3, false);
ALTER SEQUENCE "public"."tribute_id_seq"
OWNED BY "public"."tributes"."id";
SELECT setval('"public"."tribute_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_access_id_seq"
OWNED BY "public"."user_types"."id";
SELECT setval('"public"."type_access_id_seq"', 5, true);
ALTER SEQUENCE "public"."type_aliquot_id_seq"
OWNED BY "public"."aliquot_types"."id";
SELECT setval('"public"."type_aliquot_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_build_id_seq"
OWNED BY "public"."building_types"."id";
SELECT setval('"public"."type_build_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_company_id_seq"
OWNED BY "public"."companie_types"."id";
SELECT setval('"public"."type_company_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_covenant_id_seq"
OWNED BY "public"."covenant_types"."id";
SELECT setval('"public"."type_covenant_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_factor_id_seq"
OWNED BY "public"."factor_types"."id";
SELECT setval('"public"."type_factor_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_invoice_id_seq"
OWNED BY "public"."invoice_types"."id";
SELECT setval('"public"."type_invoice_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_person_id_seq"
OWNED BY "public"."person_types"."id";
SELECT setval('"public"."type_person_id_seq"', 3, true);
ALTER SEQUENCE "public"."type_qsa_id_seq"
OWNED BY "public"."qsas_types"."id";
SELECT setval('"public"."type_qsa_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_street_id_seq"
OWNED BY "public"."street_types"."id";
SELECT setval('"public"."type_street_id_seq"', 3, false);
ALTER SEQUENCE "public"."type_tax_id_seq"
OWNED BY "public"."tax_types"."id";
SELECT setval('"public"."type_tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."unity_tax_id_seq"
OWNED BY "public"."tax_unities"."id";
SELECT setval('"public"."unity_tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."value_tax_id_seq"
OWNED BY "public"."value_taxes"."id";
SELECT setval('"public"."value_tax_id_seq"', 3, false);
ALTER SEQUENCE "public"."vuc_id_seq"
OWNED BY "public"."vucs"."id";
SELECT setval('"public"."vuc_id_seq"', 3, false);
ALTER SEQUENCE "public"."vut_id_seq"
OWNED BY "public"."vuts"."id";
SELECT setval('"public"."vut_id_seq"', 3, false);

-- ----------------------------
-- Indexes structure for table actions
-- ----------------------------
CREATE UNIQUE INDEX "action_id" ON "public"."actions" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "permission_id_action" ON "public"."actions" USING btree (
  "permission_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table actions
-- ----------------------------
ALTER TABLE "public"."actions" ADD CONSTRAINT "pk_permission_attributes" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table activities
-- ----------------------------
CREATE UNIQUE INDEX "activity_id" ON "public"."activities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table activities
-- ----------------------------
ALTER TABLE "public"."activities" ADD CONSTRAINT "pk_activities" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table activity_addresses
-- ----------------------------
CREATE UNIQUE INDEX "activity_address_id" ON "public"."activity_addresses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "address_id_activity_address" ON "public"."activity_addresses" USING btree (
  "address_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_activity_id_activity_address" ON "public"."activity_addresses" USING btree (
  "person_activity_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table activity_addresses
-- ----------------------------
ALTER TABLE "public"."activity_addresses" ADD CONSTRAINT "activity_addresses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table activity_taxes
-- ----------------------------
CREATE INDEX "activity_id_activity_tax" ON "public"."activity_taxes" USING btree (
  "activity_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "activity_tax_id" ON "public"."activity_taxes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "tax_id_activity_tax" ON "public"."activity_taxes" USING btree (
  "tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table activity_taxes
-- ----------------------------
ALTER TABLE "public"."activity_taxes" ADD CONSTRAINT "activity_taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table addresses
-- ----------------------------
CREATE UNIQUE INDEX "address_id" ON "public"."addresses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "city_id_address" ON "public"."addresses" USING btree (
  "city_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_id_address" ON "public"."addresses" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_street_id_address" ON "public"."addresses" USING btree (
  "type_street_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table addresses
-- ----------------------------
ALTER TABLE "public"."addresses" ADD CONSTRAINT "addresses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table aliquot_types
-- ----------------------------
CREATE UNIQUE INDEX "type_aliquot_id" ON "public"."aliquot_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table aliquot_types
-- ----------------------------
ALTER TABLE "public"."aliquot_types" ADD CONSTRAINT "type_aliquots_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table aliquots
-- ----------------------------
CREATE UNIQUE INDEX "aliquot_id" ON "public"."aliquots" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_aliquot_id_aliquot" ON "public"."aliquots" USING btree (
  "type_aliquot_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table aliquots
-- ----------------------------
ALTER TABLE "public"."aliquots" ADD CONSTRAINT "aliquots_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table banks
-- ----------------------------
CREATE UNIQUE INDEX "bank_id" ON "public"."banks" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table banks
-- ----------------------------
ALTER TABLE "public"."banks" ADD CONSTRAINT "pk_banks" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table beneficiaries
-- ----------------------------
CREATE INDEX "beneficiary_covenant" ON "public"."beneficiaries" USING btree (
  "covenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "beneficiary_id" ON "public"."beneficiaries" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "beneficiary_person" ON "public"."beneficiaries" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table beneficiaries
-- ----------------------------
ALTER TABLE "public"."beneficiaries" ADD CONSTRAINT "pk_beneficiaries" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table blocks
-- ----------------------------
CREATE UNIQUE INDEX "block_id" ON "public"."blocks" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "sector_id_block" ON "public"."blocks" USING btree (
  "sector_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table blocks
-- ----------------------------
ALTER TABLE "public"."blocks" ADD CONSTRAINT "blocks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table build_corrections
-- ----------------------------
CREATE UNIQUE INDEX "build_correction_id" ON "public"."build_corrections" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "build_id_build_correction" ON "public"."build_corrections" USING btree (
  "build_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "correction_id_build_correction" ON "public"."build_corrections" USING btree (
  "correction_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table build_corrections
-- ----------------------------
ALTER TABLE "public"."build_corrections" ADD CONSTRAINT "build_corrections_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table building_standards
-- ----------------------------
CREATE UNIQUE INDEX "build_standard_id" ON "public"."building_standards" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_build_id_build_standard" ON "public"."building_standards" USING btree (
  "type_build_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table building_standards
-- ----------------------------
ALTER TABLE "public"."building_standards" ADD CONSTRAINT "buildings_standards_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table building_statuses
-- ----------------------------
CREATE UNIQUE INDEX "status_build_id" ON "public"."building_statuses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table building_statuses
-- ----------------------------
ALTER TABLE "public"."building_statuses" ADD CONSTRAINT "status_buildings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table building_types
-- ----------------------------
CREATE UNIQUE INDEX "type_build_id" ON "public"."building_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table building_types
-- ----------------------------
ALTER TABLE "public"."building_types" ADD CONSTRAINT "type_buildings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table buildings
-- ----------------------------
CREATE UNIQUE INDEX "build_id" ON "public"."buildings" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "build_standard_id_build" ON "public"."buildings" USING btree (
  "build_standard_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "status_build_id_build" ON "public"."buildings" USING btree (
  "status_build_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_build_id_build" ON "public"."buildings" USING btree (
  "type_build_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table buildings
-- ----------------------------
ALTER TABLE "public"."buildings" ADD CONSTRAINT "buildings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cities
-- ----------------------------
CREATE UNIQUE INDEX "city_id" ON "public"."cities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "ibge_city" ON "public"."cities" USING btree (
  "city_ibge" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "state_id_city" ON "public"."cities" USING btree (
  "state_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table cities
-- ----------------------------
ALTER TABLE "public"."cities" ADD CONSTRAINT "pk_cities" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table companie_types
-- ----------------------------
CREATE UNIQUE INDEX "type_company_id" ON "public"."companie_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table companie_types
-- ----------------------------
ALTER TABLE "public"."companie_types" ADD CONSTRAINT "type_companies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table companies
-- ----------------------------
CREATE UNIQUE INDEX "company_id" ON "public"."companies" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "legal_nature_id_company" ON "public"."companies" USING btree (
  "legal_nature_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "person_id_company" ON "public"."companies" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "simples_national_id_company" ON "public"."companies" USING btree (
  "simples_national_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "size_company_id_company" ON "public"."companies" USING btree (
  "size_company_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "special_regime_id_company" ON "public"."companies" USING btree (
  "special_regime_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_company_id_company" ON "public"."companies" USING btree (
  "type_company_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table companies
-- ----------------------------
ALTER TABLE "public"."companies" ADD CONSTRAINT "companies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table corrections
-- ----------------------------
CREATE UNIQUE INDEX "correction_id" ON "public"."corrections" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "factor_id_correction" ON "public"."corrections" USING btree (
  "factor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table corrections
-- ----------------------------
ALTER TABLE "public"."corrections" ADD CONSTRAINT "corrections_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table countries
-- ----------------------------
CREATE UNIQUE INDEX "country_id" ON "public"."countries" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "public"."countries" ADD CONSTRAINT "pk_countries" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table covenant_types
-- ----------------------------
CREATE UNIQUE INDEX "type_covenant_id" ON "public"."covenant_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table covenant_types
-- ----------------------------
ALTER TABLE "public"."covenant_types" ADD CONSTRAINT "type_covenants_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table covenants
-- ----------------------------
CREATE INDEX "assignor_id_covenant" ON "public"."covenants" USING btree (
  "assignor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "bank_id_covenant" ON "public"."covenants" USING btree (
  "bank_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "covenant_id" ON "public"."covenants" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "fundraiser_id_covenant" ON "public"."covenants" USING btree (
  "fundraiser_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_covenant_id_covenant" ON "public"."covenants" USING btree (
  "type_covenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table covenants
-- ----------------------------
ALTER TABLE "public"."covenants" ADD CONSTRAINT "pk_covenants" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table deductions
-- ----------------------------
CREATE UNIQUE INDEX "deduction_id" ON "public"."deductions" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table deductions
-- ----------------------------
ALTER TABLE "public"."deductions" ADD CONSTRAINT "pk_deductions" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table degree_levels
-- ----------------------------
CREATE UNIQUE INDEX "degree_level_id" ON "public"."degree_levels" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table degree_levels
-- ----------------------------
ALTER TABLE "public"."degree_levels" ADD CONSTRAINT "degree_levels_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table districts
-- ----------------------------
CREATE UNIQUE INDEX "district_id" ON "public"."districts" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table factor_types
-- ----------------------------
CREATE UNIQUE INDEX "type_factor_id" ON "public"."factor_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table factors
-- ----------------------------
CREATE UNIQUE INDEX "factor_id" ON "public"."factors" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_factor_id_factor" ON "public"."factors" USING btree (
  "type_factor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table factors
-- ----------------------------
ALTER TABLE "public"."factors" ADD CONSTRAINT "factors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table incidences
-- ----------------------------
CREATE UNIQUE INDEX "incidence_id" ON "public"."incidences" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table incidences
-- ----------------------------
ALTER TABLE "public"."incidences" ADD CONSTRAINT "incidences_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table invoice_types
-- ----------------------------
CREATE UNIQUE INDEX "type_invoice_id" ON "public"."invoice_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table invoices
-- ----------------------------
CREATE INDEX "activity_id_invoice" ON "public"."invoices" USING btree (
  "activity_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "emitter_id_invoice" ON "public"."invoices" USING btree (
  "emitter_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "invoice_id" ON "public"."invoices" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "provider_id_invoice" ON "public"."invoices" USING btree (
  "provider_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "service_id_invoice" ON "public"."invoices" USING btree (
  "service_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "taker_id_invoice" ON "public"."invoices" USING btree (
  "taker_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_invoice_id_invoice" ON "public"."invoices" USING btree (
  "type_invoice_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table invoices
-- ----------------------------
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoices_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table iptus
-- ----------------------------
CREATE INDEX "aliquot_id_iptu" ON "public"."iptus" USING btree (
  "aliquot_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "iptu_id" ON "public"."iptus" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table iptus
-- ----------------------------
ALTER TABLE "public"."iptus" ADD CONSTRAINT "iptus_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table isses
-- ----------------------------
CREATE INDEX "aliquot_id_iss" ON "public"."isses" USING btree (
  "aliquot_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "deduction_id_iss" ON "public"."isses" USING btree (
  "deduction_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "incidence_id_iss" ON "public"."isses" USING btree (
  "incidence_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "iss_id" ON "public"."isses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "liability_id_iss" ON "public"."isses" USING btree (
  "liability_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "retention_id_iss" ON "public"."isses" USING btree (
  "retention_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "service_id_iss" ON "public"."isses" USING btree (
  "service_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table isses
-- ----------------------------
ALTER TABLE "public"."isses" ADD CONSTRAINT "isses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table itbis
-- ----------------------------
CREATE INDEX "aliquot_id_itbi" ON "public"."itbis" USING btree (
  "aliquot_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "itbi_id" ON "public"."itbis" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table itbis
-- ----------------------------
ALTER TABLE "public"."itbis" ADD CONSTRAINT "itbis_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table legal_natures
-- ----------------------------
CREATE UNIQUE INDEX "legal_nature_id" ON "public"."legal_natures" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table legal_natures
-- ----------------------------
ALTER TABLE "public"."legal_natures" ADD CONSTRAINT "legal_natures_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table liabilities
-- ----------------------------
CREATE UNIQUE INDEX "liability_id" ON "public"."liabilities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table liabilities
-- ----------------------------
ALTER TABLE "public"."liabilities" ADD CONSTRAINT "pk_liabilities" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table neighborhoods
-- ----------------------------
CREATE INDEX "district_id_neighborhood" ON "public"."neighborhoods" USING btree (
  "distric_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "neighborhood_id" ON "public"."neighborhoods" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table neighborhoods
-- ----------------------------
ALTER TABLE "public"."neighborhoods" ADD CONSTRAINT "neighborhoods_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE INDEX "oauth_access_tokens_user_id_index" ON "public"."oauth_access_tokens" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_access_tokens" ADD CONSTRAINT "oauth_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE "public"."oauth_auth_codes" ADD CONSTRAINT "oauth_auth_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE INDEX "oauth_clients_user_id_index" ON "public"."oauth_clients" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE "public"."oauth_clients" ADD CONSTRAINT "oauth_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_personal_access_clients
-- ----------------------------
CREATE INDEX "oauth_personal_access_clients_client_id_index" ON "public"."oauth_personal_access_clients" USING btree (
  "client_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE "public"."oauth_personal_access_clients" ADD CONSTRAINT "oauth_personal_access_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE INDEX "oauth_refresh_tokens_access_token_id_index" ON "public"."oauth_refresh_tokens" USING btree (
  "access_token_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_refresh_tokens" ADD CONSTRAINT "oauth_refresh_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table owners
-- ----------------------------
CREATE INDEX "build_id_owner" ON "public"."owners" USING btree (
  "build_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "owner_id" ON "public"."owners" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_id_owner" ON "public"."owners" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table owners
-- ----------------------------
ALTER TABLE "public"."owners" ADD CONSTRAINT "owners_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table permissions
-- ----------------------------
CREATE UNIQUE INDEX "permission_id" ON "public"."permissions" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "permission_id_permission" ON "public"."permissions" USING btree (
  "permission_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "profile_id_permission" ON "public"."permissions" USING btree (
  "profile_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "pk_permissions" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table person_activities
-- ----------------------------
CREATE INDEX "activity_id_person_activity" ON "public"."person_activities" USING btree (
  "activity_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "person_activity_id" ON "public"."person_activities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_id_person_activity" ON "public"."person_activities" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table person_activities
-- ----------------------------
ALTER TABLE "public"."person_activities" ADD CONSTRAINT "person_activities_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table person_statuses
-- ----------------------------
CREATE UNIQUE INDEX "status_person_id" ON "public"."person_statuses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table person_statuses
-- ----------------------------
ALTER TABLE "public"."person_statuses" ADD CONSTRAINT "status_persons_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table person_types
-- ----------------------------
CREATE UNIQUE INDEX "type_person_id" ON "public"."person_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table person_types
-- ----------------------------
ALTER TABLE "public"."person_types" ADD CONSTRAINT "type_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table personal_details
-- ----------------------------
CREATE INDEX "degree_level_id_personal_detail" ON "public"."personal_details" USING btree (
  "degree_level_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_id_personal_detail" ON "public"."personal_details" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "personal_detail_id" ON "public"."personal_details" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table personal_details
-- ----------------------------
ALTER TABLE "public"."personal_details" ADD CONSTRAINT "personal_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table persons
-- ----------------------------
CREATE UNIQUE INDEX "person_id" ON "public"."persons" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "status_person_id_person" ON "public"."persons" USING btree (
  "status_person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_person_id_person" ON "public"."persons" USING btree (
  "type_person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table persons
-- ----------------------------
ALTER TABLE "public"."persons" ADD CONSTRAINT "pk_users" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table profile_cities
-- ----------------------------
CREATE INDEX "city_id_profile_city" ON "public"."profile_cities" USING btree (
  "city_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "profile_city_id" ON "public"."profile_cities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "profile_id_profile_city" ON "public"."profile_cities" USING btree (
  "profile_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table profile_cities
-- ----------------------------
ALTER TABLE "public"."profile_cities" ADD CONSTRAINT "pk_profiles" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table profiles
-- ----------------------------
CREATE UNIQUE INDEX "profile_id" ON "public"."profiles" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table profiles
-- ----------------------------
ALTER TABLE "public"."profiles" ADD CONSTRAINT "pk_type_profiles" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table qsas
-- ----------------------------
CREATE INDEX "company_id_qsa" ON "public"."qsas" USING btree (
  "company_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "partner_id_qsa" ON "public"."qsas" USING btree (
  "partner_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "qsa_id" ON "public"."qsas" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_qsa_id_qsa" ON "public"."qsas" USING btree (
  "type_qsa_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qsas
-- ----------------------------
ALTER TABLE "public"."qsas" ADD CONSTRAINT "qsas_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table qsas_types
-- ----------------------------
CREATE UNIQUE INDEX "type_qsa_id" ON "public"."qsas_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qsas_types
-- ----------------------------
ALTER TABLE "public"."qsas_types" ADD CONSTRAINT "type_qsas_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table retentions
-- ----------------------------
CREATE UNIQUE INDEX "retention_id" ON "public"."retentions" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table retentions
-- ----------------------------
ALTER TABLE "public"."retentions" ADD CONSTRAINT "retentions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rule_taxes
-- ----------------------------
CREATE UNIQUE INDEX "rule_tax_id" ON "public"."rule_taxes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rule_taxes
-- ----------------------------
ALTER TABLE "public"."rule_taxes" ADD CONSTRAINT "rule_taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sectors
-- ----------------------------
CREATE INDEX "district_id_sector" ON "public"."sectors" USING btree (
  "distric_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "sector_id" ON "public"."sectors" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sectors
-- ----------------------------
ALTER TABLE "public"."sectors" ADD CONSTRAINT "sectors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table service_activities
-- ----------------------------
CREATE INDEX "activity_id_service_activity" ON "public"."service_activities" USING btree (
  "activity_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "service_activity_id" ON "public"."service_activities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "service_id_service_activity" ON "public"."service_activities" USING btree (
  "service_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table service_activities
-- ----------------------------
ALTER TABLE "public"."service_activities" ADD CONSTRAINT "service_activities_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table services
-- ----------------------------
CREATE UNIQUE INDEX "service_id" ON "public"."services" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table services
-- ----------------------------
ALTER TABLE "public"."services" ADD CONSTRAINT "pk_services" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table simple_nationals
-- ----------------------------
CREATE UNIQUE INDEX "simple_national_id" ON "public"."simple_nationals" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table simple_nationals
-- ----------------------------
ALTER TABLE "public"."simple_nationals" ADD CONSTRAINT "simple_nationals_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table size_companies
-- ----------------------------
CREATE UNIQUE INDEX "size_company_id" ON "public"."size_companies" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table size_companies
-- ----------------------------
ALTER TABLE "public"."size_companies" ADD CONSTRAINT "size_companies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table special_regimes
-- ----------------------------
CREATE UNIQUE INDEX "special_regime_id" ON "public"."special_regimes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table special_regimes
-- ----------------------------
ALTER TABLE "public"."special_regimes" ADD CONSTRAINT "pk_special_regimes" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table states
-- ----------------------------
CREATE INDEX "counrty_id_state" ON "public"."states" USING btree (
  "country_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "state_id" ON "public"."states" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table states
-- ----------------------------
ALTER TABLE "public"."states" ADD CONSTRAINT "pk_states" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table street_blocks
-- ----------------------------
CREATE INDEX "block_id_street_block" ON "public"."street_blocks" USING btree (
  "block_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "street_block_id" ON "public"."street_blocks" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "street_id_street_block" ON "public"."street_blocks" USING btree (
  "street_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table street_blocks
-- ----------------------------
ALTER TABLE "public"."street_blocks" ADD CONSTRAINT "street_blocks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table street_types
-- ----------------------------
CREATE UNIQUE INDEX "type_street_id" ON "public"."street_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table street_types
-- ----------------------------
ALTER TABLE "public"."street_types" ADD CONSTRAINT "type_streets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table streets
-- ----------------------------
CREATE INDEX "neigborhood_id_street" ON "public"."streets" USING btree (
  "neighborhood_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "street_id" ON "public"."streets" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_street_id_street" ON "public"."streets" USING btree (
  "type_street_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table streets
-- ----------------------------
ALTER TABLE "public"."streets" ADD CONSTRAINT "streets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tax_types
-- ----------------------------
CREATE UNIQUE INDEX "type_tax_id" ON "public"."tax_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tax_types
-- ----------------------------
ALTER TABLE "public"."tax_types" ADD CONSTRAINT "type_taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tax_unities
-- ----------------------------
CREATE UNIQUE INDEX "unity_tax_id" ON "public"."tax_unities" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tax_unities
-- ----------------------------
ALTER TABLE "public"."tax_unities" ADD CONSTRAINT "unity_taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table taxes
-- ----------------------------
CREATE INDEX "rule_tax_id_tax" ON "public"."taxes" USING btree (
  "rule_tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "tax_id" ON "public"."taxes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "tax_id_tax" ON "public"."taxes" USING btree (
  "tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_tax_id_tax" ON "public"."taxes" USING btree (
  "type_tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "unity_tax_id_tax" ON "public"."taxes" USING btree (
  "unity_tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table taxes
-- ----------------------------
ALTER TABLE "public"."taxes" ADD CONSTRAINT "taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ticket_statuses
-- ----------------------------
CREATE UNIQUE INDEX "status_ticket_id" ON "public"."ticket_statuses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ticket_statuses
-- ----------------------------
ALTER TABLE "public"."ticket_statuses" ADD CONSTRAINT "status_tickets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tickets
-- ----------------------------
CREATE INDEX "covenant_id_ticket" ON "public"."tickets" USING btree (
  "covenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "emitter_id_ticket" ON "public"."tickets" USING btree (
  "emitter_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "payer_id" ON "public"."tickets" USING btree (
  "payer_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "status_ticket_id_ticket" ON "public"."tickets" USING btree (
  "status_ticket_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "ticket_id" ON "public"."tickets" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "tribute_id_ticket" ON "public"."tickets" USING btree (
  "tribute_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tickets
-- ----------------------------
ALTER TABLE "public"."tickets" ADD CONSTRAINT "tickets_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tribute_covenants
-- ----------------------------
CREATE INDEX "covenant_id_tribute_covenant" ON "public"."tribute_covenants" USING btree (
  "covenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "tribute_covenant_id" ON "public"."tribute_covenants" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "tribute_id_tribute_covenant" ON "public"."tribute_covenants" USING btree (
  "tribute_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tribute_covenants
-- ----------------------------
ALTER TABLE "public"."tribute_covenants" ADD CONSTRAINT "tribute_covenants_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tributes
-- ----------------------------
CREATE UNIQUE INDEX "tribute_id" ON "public"."tributes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tributes
-- ----------------------------
ALTER TABLE "public"."tributes" ADD CONSTRAINT "tributes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user_profile_actions
-- ----------------------------
CREATE UNIQUE INDEX "access_profile_action_id" ON "public"."user_profile_actions" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "access_profile_id_access_profile_action" ON "public"."user_profile_actions" USING btree (
  "user_profile_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "action_id_access_profile_action" ON "public"."user_profile_actions" USING btree (
  "action_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table user_profile_actions
-- ----------------------------
ALTER TABLE "public"."user_profile_actions" ADD CONSTRAINT "access_profile_actions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user_profiles
-- ----------------------------
CREATE INDEX "access_id_access_profile" ON "public"."user_profiles" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "access_profile_id" ON "public"."user_profiles" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "profile_id_access_profile" ON "public"."user_profiles" USING btree (
  "profile_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table user_profiles
-- ----------------------------
ALTER TABLE "public"."user_profiles" ADD CONSTRAINT "pk_access_profiles" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user_statuses
-- ----------------------------
CREATE UNIQUE INDEX "status_access_id" ON "public"."user_statuses" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table user_statuses
-- ----------------------------
ALTER TABLE "public"."user_statuses" ADD CONSTRAINT "status_accesses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user_types
-- ----------------------------
CREATE UNIQUE INDEX "type_access_id" ON "public"."user_types" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table user_types
-- ----------------------------
ALTER TABLE "public"."user_types" ADD CONSTRAINT "pk_type_accesses" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "access_id" ON "public"."users" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "person_id_access" ON "public"."users" USING btree (
  "person_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "status_access_id_access" ON "public"."users" USING btree (
  "status_access_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "type_access_id_access" ON "public"."users" USING btree (
  "type_access_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "pk_accesses" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table value_taxes
-- ----------------------------
CREATE INDEX "tax_id_value_tax" ON "public"."value_taxes" USING btree (
  "tax_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "value_tax_id" ON "public"."value_taxes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table value_taxes
-- ----------------------------
ALTER TABLE "public"."value_taxes" ADD CONSTRAINT "value_taxes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table vucs
-- ----------------------------
CREATE INDEX "build_standard_id_vuc" ON "public"."vucs" USING btree (
  "build_standard_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "vuc_id" ON "public"."vucs" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table vucs
-- ----------------------------
ALTER TABLE "public"."vucs" ADD CONSTRAINT "vucs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table vuts
-- ----------------------------
CREATE INDEX "street_id_vut" ON "public"."vuts" USING btree (
  "street_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "vut_id" ON "public"."vuts" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table vuts
-- ----------------------------
ALTER TABLE "public"."vuts" ADD CONSTRAINT "vuts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table actions
-- ----------------------------
ALTER TABLE "public"."actions" ADD CONSTRAINT "action_fk_permission" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table activity_addresses
-- ----------------------------
ALTER TABLE "public"."activity_addresses" ADD CONSTRAINT "activity_address_fk_address" FOREIGN KEY ("address_id") REFERENCES "public"."addresses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."activity_addresses" ADD CONSTRAINT "activity_address_fk_person_activity" FOREIGN KEY ("person_activity_id") REFERENCES "public"."person_activities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table activity_taxes
-- ----------------------------
ALTER TABLE "public"."activity_taxes" ADD CONSTRAINT "activity_tax_fk_activity" FOREIGN KEY ("activity_id") REFERENCES "public"."activities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."activity_taxes" ADD CONSTRAINT "activity_tax_fk_tax" FOREIGN KEY ("tax_id") REFERENCES "public"."taxes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table addresses
-- ----------------------------
ALTER TABLE "public"."addresses" ADD CONSTRAINT "address_fk_city" FOREIGN KEY ("city_id") REFERENCES "public"."cities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."addresses" ADD CONSTRAINT "address_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."addresses" ADD CONSTRAINT "address_fk_type_street" FOREIGN KEY ("type_street_id") REFERENCES "public"."street_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table aliquots
-- ----------------------------
ALTER TABLE "public"."aliquots" ADD CONSTRAINT "aliquot_fk_type_aliquot" FOREIGN KEY ("type_aliquot_id") REFERENCES "public"."aliquot_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table beneficiaries
-- ----------------------------
ALTER TABLE "public"."beneficiaries" ADD CONSTRAINT "beneficiary_fk_covenant" FOREIGN KEY ("covenant_id") REFERENCES "public"."covenants" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."beneficiaries" ADD CONSTRAINT "beneficiary_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table blocks
-- ----------------------------
ALTER TABLE "public"."blocks" ADD CONSTRAINT "block_fk_sector" FOREIGN KEY ("sector_id") REFERENCES "public"."sectors" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table build_corrections
-- ----------------------------
ALTER TABLE "public"."build_corrections" ADD CONSTRAINT "build_correction_fk_build" FOREIGN KEY ("build_id") REFERENCES "public"."buildings" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."build_corrections" ADD CONSTRAINT "build_correction_fk_correction" FOREIGN KEY ("correction_id") REFERENCES "public"."corrections" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table building_standards
-- ----------------------------
ALTER TABLE "public"."building_standards" ADD CONSTRAINT "build_standard_fk_type_build" FOREIGN KEY ("type_build_id") REFERENCES "public"."building_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table buildings
-- ----------------------------
ALTER TABLE "public"."buildings" ADD CONSTRAINT "build_fk_build_standard" FOREIGN KEY ("build_standard_id") REFERENCES "public"."building_standards" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."buildings" ADD CONSTRAINT "build_fk_status_build" FOREIGN KEY ("status_build_id") REFERENCES "public"."building_statuses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."buildings" ADD CONSTRAINT "build_fk_type_build" FOREIGN KEY ("type_build_id") REFERENCES "public"."building_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cities
-- ----------------------------
ALTER TABLE "public"."cities" ADD CONSTRAINT "city_fk_state" FOREIGN KEY ("state_id") REFERENCES "public"."states" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table companies
-- ----------------------------
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_legal_nature" FOREIGN KEY ("legal_nature_id") REFERENCES "public"."legal_natures" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_simples_national" FOREIGN KEY ("simples_national_id") REFERENCES "public"."simple_nationals" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_size_company" FOREIGN KEY ("size_company_id") REFERENCES "public"."size_companies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_special_regime" FOREIGN KEY ("special_regime_id") REFERENCES "public"."special_regimes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."companies" ADD CONSTRAINT "company_fk_type_company" FOREIGN KEY ("type_company_id") REFERENCES "public"."companie_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table corrections
-- ----------------------------
ALTER TABLE "public"."corrections" ADD CONSTRAINT "correction_fk_factor" FOREIGN KEY ("factor_id") REFERENCES "public"."factors" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table covenants
-- ----------------------------
ALTER TABLE "public"."covenants" ADD CONSTRAINT "covenant_fk_bank" FOREIGN KEY ("bank_id") REFERENCES "public"."banks" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."covenants" ADD CONSTRAINT "covenant_fk_person_assignor" FOREIGN KEY ("assignor_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."covenants" ADD CONSTRAINT "covenant_fk_person_fundraiser" FOREIGN KEY ("fundraiser_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."covenants" ADD CONSTRAINT "covenant_fk_type_covenant" FOREIGN KEY ("type_covenant_id") REFERENCES "public"."covenant_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table factors
-- ----------------------------
ALTER TABLE "public"."factors" ADD CONSTRAINT "factor_fk_type_factor" FOREIGN KEY ("type_factor_id") REFERENCES "public"."factor_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table invoices
-- ----------------------------
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_activity" FOREIGN KEY ("activity_id") REFERENCES "public"."activities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_person_emitter" FOREIGN KEY ("emitter_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_person_provider" FOREIGN KEY ("provider_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_person_taker" FOREIGN KEY ("taker_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_service" FOREIGN KEY ("service_id") REFERENCES "public"."services" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."invoices" ADD CONSTRAINT "invoice_fk_type_invoice" FOREIGN KEY ("type_invoice_id") REFERENCES "public"."invoice_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table iptus
-- ----------------------------
ALTER TABLE "public"."iptus" ADD CONSTRAINT "iptu_fk_aliquot" FOREIGN KEY ("aliquot_id") REFERENCES "public"."aliquots" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table isses
-- ----------------------------
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_aliquot" FOREIGN KEY ("aliquot_id") REFERENCES "public"."aliquots" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_deduction" FOREIGN KEY ("deduction_id") REFERENCES "public"."deductions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_incidence" FOREIGN KEY ("incidence_id") REFERENCES "public"."incidences" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_liability" FOREIGN KEY ("liability_id") REFERENCES "public"."liabilities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_retention" FOREIGN KEY ("retention_id") REFERENCES "public"."retentions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."isses" ADD CONSTRAINT "iss_fk_service" FOREIGN KEY ("service_id") REFERENCES "public"."services" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table itbis
-- ----------------------------
ALTER TABLE "public"."itbis" ADD CONSTRAINT "itbi_fk_aliquot" FOREIGN KEY ("aliquot_id") REFERENCES "public"."aliquots" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table neighborhoods
-- ----------------------------
ALTER TABLE "public"."neighborhoods" ADD CONSTRAINT "neighborhood_fk_district" FOREIGN KEY ("distric_id") REFERENCES "public"."districts" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table owners
-- ----------------------------
ALTER TABLE "public"."owners" ADD CONSTRAINT "owner_build" FOREIGN KEY ("build_id") REFERENCES "public"."buildings" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."owners" ADD CONSTRAINT "owner_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permission_fk_permission" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE SET NULL ON UPDATE SET NULL;
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permission_fk_profile" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table person_activities
-- ----------------------------
ALTER TABLE "public"."person_activities" ADD CONSTRAINT "person_activity_fk_activity" FOREIGN KEY ("activity_id") REFERENCES "public"."activities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."person_activities" ADD CONSTRAINT "person_activity_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table personal_details
-- ----------------------------
ALTER TABLE "public"."personal_details" ADD CONSTRAINT "personal_detail_fk_degree_level" FOREIGN KEY ("degree_level_id") REFERENCES "public"."degree_levels" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."personal_details" ADD CONSTRAINT "personal_detail_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table persons
-- ----------------------------
ALTER TABLE "public"."persons" ADD CONSTRAINT "person_fk_status_person" FOREIGN KEY ("status_person_id") REFERENCES "public"."person_statuses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."persons" ADD CONSTRAINT "person_fk_type_person" FOREIGN KEY ("type_person_id") REFERENCES "public"."person_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table profile_cities
-- ----------------------------
ALTER TABLE "public"."profile_cities" ADD CONSTRAINT "profile_city_fk_city" FOREIGN KEY ("city_id") REFERENCES "public"."cities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."profile_cities" ADD CONSTRAINT "profile_city_fk_profile" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qsas
-- ----------------------------
ALTER TABLE "public"."qsas" ADD CONSTRAINT "qsa_fk_company" FOREIGN KEY ("company_id") REFERENCES "public"."companies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."qsas" ADD CONSTRAINT "qsa_fk_person" FOREIGN KEY ("partner_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."qsas" ADD CONSTRAINT "qsa_fk_type_qsa" FOREIGN KEY ("type_qsa_id") REFERENCES "public"."qsas_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sectors
-- ----------------------------
ALTER TABLE "public"."sectors" ADD CONSTRAINT "sector_fk_distric" FOREIGN KEY ("distric_id") REFERENCES "public"."districts" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table service_activities
-- ----------------------------
ALTER TABLE "public"."service_activities" ADD CONSTRAINT "service_activity_fk_activity" FOREIGN KEY ("activity_id") REFERENCES "public"."activities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."service_activities" ADD CONSTRAINT "service_activity_fk_service" FOREIGN KEY ("service_id") REFERENCES "public"."services" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table states
-- ----------------------------
ALTER TABLE "public"."states" ADD CONSTRAINT "state_fk_country" FOREIGN KEY ("country_id") REFERENCES "public"."countries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table street_blocks
-- ----------------------------
ALTER TABLE "public"."street_blocks" ADD CONSTRAINT "street_block_fk_block" FOREIGN KEY ("block_id") REFERENCES "public"."blocks" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."street_blocks" ADD CONSTRAINT "street_block_fk_street" FOREIGN KEY ("street_id") REFERENCES "public"."streets" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table streets
-- ----------------------------
ALTER TABLE "public"."streets" ADD CONSTRAINT "street_fk_neighborhood" FOREIGN KEY ("neighborhood_id") REFERENCES "public"."neighborhoods" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."streets" ADD CONSTRAINT "street_fk_type_street" FOREIGN KEY ("type_street_id") REFERENCES "public"."street_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table taxes
-- ----------------------------
ALTER TABLE "public"."taxes" ADD CONSTRAINT "tax_fk_rule_tax" FOREIGN KEY ("rule_tax_id") REFERENCES "public"."rule_taxes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."taxes" ADD CONSTRAINT "tax_fk_tax" FOREIGN KEY ("tax_id") REFERENCES "public"."taxes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."taxes" ADD CONSTRAINT "tax_fk_type_tax" FOREIGN KEY ("type_tax_id") REFERENCES "public"."tax_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."taxes" ADD CONSTRAINT "tax_fk_unity_tax" FOREIGN KEY ("unity_tax_id") REFERENCES "public"."tax_unities" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tickets
-- ----------------------------
ALTER TABLE "public"."tickets" ADD CONSTRAINT "ticket_fk_covenant" FOREIGN KEY ("covenant_id") REFERENCES "public"."covenants" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tickets" ADD CONSTRAINT "ticket_fk_person_emitter" FOREIGN KEY ("emitter_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tickets" ADD CONSTRAINT "ticket_fk_person_payer" FOREIGN KEY ("payer_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tickets" ADD CONSTRAINT "ticket_fk_status_ticket" FOREIGN KEY ("status_ticket_id") REFERENCES "public"."ticket_statuses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tickets" ADD CONSTRAINT "ticket_fk_tribute" FOREIGN KEY ("tribute_id") REFERENCES "public"."tributes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tribute_covenants
-- ----------------------------
ALTER TABLE "public"."tribute_covenants" ADD CONSTRAINT "tribute_covenant_fk_covenant" FOREIGN KEY ("covenant_id") REFERENCES "public"."covenants" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tribute_covenants" ADD CONSTRAINT "tribute_covenant_fk_tribute" FOREIGN KEY ("tribute_id") REFERENCES "public"."tributes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_profile_actions
-- ----------------------------
ALTER TABLE "public"."user_profile_actions" ADD CONSTRAINT "access_profile_action_fk_access_profile" FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profiles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_profile_actions" ADD CONSTRAINT "access_profile_action_fk_action" FOREIGN KEY ("action_id") REFERENCES "public"."actions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_profiles
-- ----------------------------
ALTER TABLE "public"."user_profiles" ADD CONSTRAINT "access_profile_fk_access" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_profiles" ADD CONSTRAINT "access_profile_fk_profile" FOREIGN KEY ("profile_id") REFERENCES "public"."profiles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "access_fk_person" FOREIGN KEY ("person_id") REFERENCES "public"."persons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."users" ADD CONSTRAINT "access_fk_status_access" FOREIGN KEY ("status_access_id") REFERENCES "public"."user_statuses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."users" ADD CONSTRAINT "access_fk_type_access" FOREIGN KEY ("type_access_id") REFERENCES "public"."user_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table value_taxes
-- ----------------------------
ALTER TABLE "public"."value_taxes" ADD CONSTRAINT "value_tax_fk_tax" FOREIGN KEY ("tax_id") REFERENCES "public"."taxes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table vucs
-- ----------------------------
ALTER TABLE "public"."vucs" ADD CONSTRAINT "vuc_fk_build_standard" FOREIGN KEY ("build_standard_id") REFERENCES "public"."building_standards" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table vuts
-- ----------------------------
ALTER TABLE "public"."vuts" ADD CONSTRAINT "vut_fk_street" FOREIGN KEY ("street_id") REFERENCES "public"."streets" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
