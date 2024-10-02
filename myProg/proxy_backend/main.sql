/*
 Navicat Premium Data Transfer

 Source Server         : proxy
 Source Server Type    : SQLite
 Source Server Version : 3035005
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005
 File Encoding         : 65001

 Date: 20/12/2023 14:36:10
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for _node_old_20231218
-- ----------------------------
DROP TABLE IF EXISTS "_node_old_20231218";
CREATE TABLE "_node_old_20231218" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "protocol" varchar(255) NOT NULL,
  "ip" varchar(255) NOT NULL,
  "port" integer NOT NULL,
  "is_vip" bool NOT NULL
);

-- ----------------------------
-- Records of _node_old_20231218
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(150) NOT NULL,
  UNIQUE ("name" ASC)
);

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "group_id" integer NOT NULL,
  "permission_id" integer NOT NULL,
  FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "content_type_id" integer NOT NULL,
  "codename" varchar(100) NOT NULL,
  "name" varchar(255) NOT NULL,
  FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "auth_permission" VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "auth_permission" VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "auth_permission" VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "auth_permission" VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO "auth_permission" VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO "auth_permission" VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO "auth_permission" VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "auth_permission" VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO "auth_permission" VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO "auth_permission" VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO "auth_permission" VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO "auth_permission" VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO "auth_permission" VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO "auth_permission" VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO "auth_permission" VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO "auth_permission" VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO "auth_permission" VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO "auth_permission" VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO "auth_permission" VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO "auth_permission" VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO "auth_permission" VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO "auth_permission" VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO "auth_permission" VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO "auth_permission" VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO "auth_permission" VALUES (25, 7, 'add_fetchers', 'Can add fetchers');
INSERT INTO "auth_permission" VALUES (26, 7, 'change_fetchers', 'Can change fetchers');
INSERT INTO "auth_permission" VALUES (27, 7, 'delete_fetchers', 'Can delete fetchers');
INSERT INTO "auth_permission" VALUES (28, 7, 'view_fetchers', 'Can view fetchers');
INSERT INTO "auth_permission" VALUES (29, 8, 'add_proxies', 'Can add proxies');
INSERT INTO "auth_permission" VALUES (30, 8, 'change_proxies', 'Can change proxies');
INSERT INTO "auth_permission" VALUES (31, 8, 'delete_proxies', 'Can delete proxies');
INSERT INTO "auth_permission" VALUES (32, 8, 'view_proxies', 'Can view proxies');
INSERT INTO "auth_permission" VALUES (33, 9, 'add_bookmark', 'Can add Bookmark');
INSERT INTO "auth_permission" VALUES (34, 9, 'change_bookmark', 'Can change Bookmark');
INSERT INTO "auth_permission" VALUES (35, 9, 'delete_bookmark', 'Can delete Bookmark');
INSERT INTO "auth_permission" VALUES (36, 9, 'view_bookmark', 'Can view Bookmark');
INSERT INTO "auth_permission" VALUES (37, 10, 'add_usersettings', 'Can add User Setting');
INSERT INTO "auth_permission" VALUES (38, 10, 'change_usersettings', 'Can change User Setting');
INSERT INTO "auth_permission" VALUES (39, 10, 'delete_usersettings', 'Can delete User Setting');
INSERT INTO "auth_permission" VALUES (40, 10, 'view_usersettings', 'Can view User Setting');
INSERT INTO "auth_permission" VALUES (41, 11, 'add_userwidget', 'Can add User Widget');
INSERT INTO "auth_permission" VALUES (42, 11, 'change_userwidget', 'Can change User Widget');
INSERT INTO "auth_permission" VALUES (43, 11, 'delete_userwidget', 'Can delete User Widget');
INSERT INTO "auth_permission" VALUES (44, 11, 'view_userwidget', 'Can view User Widget');
INSERT INTO "auth_permission" VALUES (45, 12, 'add_log', 'Can add log entry');
INSERT INTO "auth_permission" VALUES (46, 12, 'change_log', 'Can change log entry');
INSERT INTO "auth_permission" VALUES (47, 12, 'delete_log', 'Can delete log entry');
INSERT INTO "auth_permission" VALUES (48, 12, 'view_log', 'Can view log entry');
INSERT INTO "auth_permission" VALUES (49, 13, 'add_fetcher', 'Can add fetcher');
INSERT INTO "auth_permission" VALUES (50, 13, 'change_fetcher', 'Can change fetcher');
INSERT INTO "auth_permission" VALUES (51, 13, 'delete_fetcher', 'Can delete fetcher');
INSERT INTO "auth_permission" VALUES (52, 13, 'view_fetcher', 'Can view fetcher');
INSERT INTO "auth_permission" VALUES (53, 14, 'add_proxy', 'Can add proxy');
INSERT INTO "auth_permission" VALUES (54, 14, 'change_proxy', 'Can change proxy');
INSERT INTO "auth_permission" VALUES (55, 14, 'delete_proxy', 'Can delete proxy');
INSERT INTO "auth_permission" VALUES (56, 14, 'view_proxy', 'Can view proxy');
INSERT INTO "auth_permission" VALUES (57, 15, 'add_node', 'Can add node');
INSERT INTO "auth_permission" VALUES (58, 15, 'change_node', 'Can change node');
INSERT INTO "auth_permission" VALUES (59, 15, 'delete_node', 'Can delete node');
INSERT INTO "auth_permission" VALUES (60, 15, 'view_node', 'Can view node');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "password" varchar(128) NOT NULL,
  "last_login" datetime,
  "is_superuser" bool NOT NULL,
  "username" varchar(150) NOT NULL,
  "first_name" varchar(30) NOT NULL,
  "email" varchar(254) NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" datetime NOT NULL,
  "last_name" varchar(150) NOT NULL,
  UNIQUE ("username" ASC)
);

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "auth_user" VALUES (1, 'pbkdf2_sha256$180000$TFabAdJOX5eD$n/GPwFp8s4gihwOgUwnW6F4Qgz8E6zXpbaD2VCfa78Q=', '2023-11-12 12:15:01.500088', 1, 'admin', '', '', 1, 1, '2023-11-12 12:03:09.098233', '');
INSERT INTO "auth_user" VALUES (2, 'pbkdf2_sha256$180000$FtWCBWbhzTCF$bQxsAj5Y0gwL/lCDhGq5lXU6n729f46xRF8s6O70M+k=', '2023-12-18 07:55:15.024960', 1, 'leo', '', 'haoyichen1017@qq.com', 1, 1, '2023-11-17 10:03:25.919588', '');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "user_id" integer NOT NULL,
  "group_id" integer NOT NULL,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "user_id" integer NOT NULL,
  "permission_id" integer NOT NULL,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "action_time" datetime NOT NULL,
  "object_id" text,
  "object_repr" varchar(200) NOT NULL,
  "change_message" text NOT NULL,
  "content_type_id" integer,
  "user_id" integer NOT NULL,
  "action_flag" smallint unsigned NOT NULL,
  FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
   ("action_flag" >= 0)
);

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "app_label" varchar(100) NOT NULL,
  "model" varchar(100) NOT NULL
);

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "django_content_type" VALUES (4, 'auth', 'user');
INSERT INTO "django_content_type" VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES (6, 'sessions', 'session');
INSERT INTO "django_content_type" VALUES (7, 'pfetcher', 'fetchers');
INSERT INTO "django_content_type" VALUES (8, 'pfetcher', 'proxies');
INSERT INTO "django_content_type" VALUES (9, 'xadmin', 'bookmark');
INSERT INTO "django_content_type" VALUES (10, 'xadmin', 'usersettings');
INSERT INTO "django_content_type" VALUES (11, 'xadmin', 'userwidget');
INSERT INTO "django_content_type" VALUES (12, 'xadmin', 'log');
INSERT INTO "django_content_type" VALUES (13, 'fetcher', 'fetcher');
INSERT INTO "django_content_type" VALUES (14, 'fetcher', 'proxy');
INSERT INTO "django_content_type" VALUES (15, 'node', 'node');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "app" varchar(255) NOT NULL,
  "name" varchar(255) NOT NULL,
  "applied" datetime NOT NULL
);

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2023-11-10 11:13:32.319641');
INSERT INTO "django_migrations" VALUES (2, 'auth', '0001_initial', '2023-11-10 11:13:32.342491');
INSERT INTO "django_migrations" VALUES (3, 'admin', '0001_initial', '2023-11-10 11:13:32.352630');
INSERT INTO "django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-11-10 11:13:32.363419');
INSERT INTO "django_migrations" VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-10 11:13:32.378232');
INSERT INTO "django_migrations" VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-11-10 11:13:32.396366');
INSERT INTO "django_migrations" VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-11-10 11:13:32.402789');
INSERT INTO "django_migrations" VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-11-10 11:13:32.418552');
INSERT INTO "django_migrations" VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-11-10 11:13:32.429259');
INSERT INTO "django_migrations" VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-11-10 11:13:32.443695');
INSERT INTO "django_migrations" VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-11-10 11:13:32.445710');
INSERT INTO "django_migrations" VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-10 11:13:32.458931');
INSERT INTO "django_migrations" VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-11-10 11:13:32.463109');
INSERT INTO "django_migrations" VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-10 11:13:32.481318');
INSERT INTO "django_migrations" VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-11-10 11:13:32.491201');
INSERT INTO "django_migrations" VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-11-10 11:13:32.501005');
INSERT INTO "django_migrations" VALUES (17, 'pfetcher', '0001_initial', '2023-11-10 11:13:32.506171');
INSERT INTO "django_migrations" VALUES (18, 'pfetcher', '0002_auto_20231110_1855', '2023-11-10 11:13:32.516351');
INSERT INTO "django_migrations" VALUES (19, 'pfetcher', '0003_auto_20231110_1912', '2023-11-10 11:13:32.527018');
INSERT INTO "django_migrations" VALUES (20, 'pfetcher', '0004_auto_20231110_1912', '2023-11-10 11:13:32.534661');
INSERT INTO "django_migrations" VALUES (21, 'sessions', '0001_initial', '2023-11-10 11:13:32.542655');
INSERT INTO "django_migrations" VALUES (22, 'pfetcher', '0005_auto_20231110_1913', '2023-11-10 11:13:46.255272');
INSERT INTO "django_migrations" VALUES (23, 'pfetcher', '0006_auto_20231110_1914', '2023-11-10 11:14:18.507741');
INSERT INTO "django_migrations" VALUES (24, 'xadmin', '0001_initial', '2023-11-12 12:08:08.195099');
INSERT INTO "django_migrations" VALUES (25, 'xadmin', '0002_log', '2023-11-12 12:08:08.206379');
INSERT INTO "django_migrations" VALUES (26, 'xadmin', '0003_auto_20160715_0100', '2023-11-12 12:08:08.220375');
INSERT INTO "django_migrations" VALUES (27, 'pfetcher', '0007_auto_20231115_2037', '2023-11-15 12:37:15.482221');
INSERT INTO "django_migrations" VALUES (28, 'fetcher', '0001_initial', '2023-11-24 08:55:39.223526');
INSERT INTO "django_migrations" VALUES (29, 'fetcher', '0002_auto_20231124_1655', '2023-11-24 08:55:39.234527');
INSERT INTO "django_migrations" VALUES (30, 'fetcher', '0003_auto_20231124_1656', '2023-11-24 08:56:50.224128');
INSERT INTO "django_migrations" VALUES (31, 'node', '0001_initial', '2023-11-24 08:56:50.230125');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" (
  "session_key" varchar(40) NOT NULL,
  "session_data" text NOT NULL,
  "expire_date" datetime NOT NULL,
  PRIMARY KEY ("session_key")
);

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "django_session" VALUES ('mfwi3gju09vd2d7wqotokcnaamtz9h8i', 'ZGJiMzU4NjdmODY3ZGFmZDAzYmYyMjAyMWJmMDNiMDYzMGZiZmNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzYzZjU0NDhhMGRmOWRhZGY3NmIxOGZlYjc0YTU5MjhhZDJiM2FjIiwiX21lbnVzIjoiW3tcIm5hbWVcIjogXCJBdXRoZW50aWNhdGlvbiBhbmQgQXV0aG9yaXphdGlvblwiLCBcImljb25cIjogXCJmYXMgZmEtc2hpZWxkLWFsdFwiLCBcIm1vZGVsc1wiOiBbe1wibmFtZVwiOiBcIkdyb3Vwc1wiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiQXV0aGVudGljYXRpb24gYW5kIEF1dGhvcml6YXRpb25cIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJHcm91cHNcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXVzZXJzLWNvZ1wifV0sIFwiZWlkXCI6IDEwMDJ9LCB7XCJuYW1lXCI6IFwiVXNlcnNcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIiwgXCJ1cmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL3VzZXIvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiQXV0aGVudGljYXRpb24gYW5kIEF1dGhvcml6YXRpb25cIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJVc2Vyc1wiLCBcImljb25cIjogXCJmYXIgZmEtdXNlclwifV0sIFwiZWlkXCI6IDEwMDN9XSwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJQZmV0Y2hlclwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiRmV0Y2hlcnNzXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vcGZldGNoZXIvZmV0Y2hlcnMvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL3BmZXRjaGVyL2ZldGNoZXJzL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlBmZXRjaGVyXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJGZXRjaGVyc3NcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDV9LCB7XCJuYW1lXCI6IFwiUHJveGllc3NcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9wZmV0Y2hlci9wcm94aWVzL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9wZmV0Y2hlci9wcm94aWVzL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlBmZXRjaGVyXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJQcm94aWVzc1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwNn1dLCBcImVpZFwiOiAxMDA0fV0ifQ==', '2023-11-27 04:13:44.708876');
INSERT INTO "django_session" VALUES ('n4v0n4djwxlsl6nv2j7k853v07gu0aja', 'MWEwYzE2NjU1NDg5MTEyODYyN2IzMTg4NzA0YmViYTMzMzlmMjg2Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDFiYTNmZDExOWExMzU0ZmU4MjdiMzYzOGQ4ZDE3ZTI0ZTU5YWNiIn0=', '2023-12-07 08:44:06.817406');
INSERT INTO "django_session" VALUES ('8h93jzf2zc3g6z0erjy5lqz221a13x02', 'MWEwYzE2NjU1NDg5MTEyODYyN2IzMTg4NzA0YmViYTMzMzlmMjg2Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZDFiYTNmZDExOWExMzU0ZmU4MjdiMzYzOGQ4ZDE3ZTI0ZTU5YWNiIn0=', '2024-01-01 07:55:15.024960');

-- ----------------------------
-- Table structure for fetchers
-- ----------------------------
DROP TABLE IF EXISTS "fetchers";
CREATE TABLE "fetchers" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(255) NOT NULL,
  "enable" bool NOT NULL,
  "sum_proxies_cnt" integer NOT NULL,
  "last_proxies_cnt" integer NOT NULL,
  "last_fetch_date" text
);

-- ----------------------------
-- Records of fetchers
-- ----------------------------
INSERT INTO "fetchers" VALUES (1, 'uu-proxy.com', 1, 30, 10, '2023-12-20 09:29:50.229482');
INSERT INTO "fetchers" VALUES (2, 'www.kuaidaili.com', 1, 0, 0, '2023-12-20 09:29:50.160129');
INSERT INTO "fetchers" VALUES (3, 'www.goubanjia.com', 1, 0, 0, '2023-12-20 09:29:50.172404');
INSERT INTO "fetchers" VALUES (4, 'www.66ip.cn', 1, 0, 0, '2023-12-20 09:29:59.072160');
INSERT INTO "fetchers" VALUES (5, 'www.ip3366.net', 1, 30, 0, '2023-12-20 09:29:50.172404');
INSERT INTO "fetchers" VALUES (6, 'ip.jiangxianli.com', 1, 0, 0, '2023-12-20 09:29:59.056214');
INSERT INTO "fetchers" VALUES (7, 'ip.ihuan.me', 1, 0, 0, '2023-12-20 09:29:50.245099');
INSERT INTO "fetchers" VALUES (8, 'www.proxyscan.io', 1, 0, 0, '2023-12-20 09:29:59.056214');
INSERT INTO "fetchers" VALUES (9, 'www.89ip.cn', 1, 150, 0, '2023-12-20 09:29:50.229482');
INSERT INTO "fetchers" VALUES (10, 'www.kxdaili.com', 1, 394, 0, '2023-12-20 09:29:50.245099');
INSERT INTO "fetchers" VALUES (11, 'www.xiladaili.com', 1, 0, 0, '2023-12-20 09:29:59.064218');
INSERT INTO "fetchers" VALUES (12, 'www.xsdaili.cn', 1, 400, 0, '2023-12-20 09:29:50.245099');
INSERT INTO "fetchers" VALUES (13, 'www.proxy-list.download', 1, 6159, 2044, '2023-12-20 09:29:59.048213');
INSERT INTO "fetchers" VALUES (14, 'proxyscrape.com', 1, 0, 0, '2023-12-20 09:29:59.064218');

-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS "node";
CREATE TABLE "node" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "protocol" varchar(255) NOT NULL,
  "ip" varchar(255) NOT NULL,
  "port" integer NOT NULL
);

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO "node" VALUES (1, 'socks5', '127.0.0.1', 8900);
INSERT INTO "node" VALUES (2, 'socks5', '192.168.147.135', 8081);

-- ----------------------------
-- Table structure for proxy
-- ----------------------------
DROP TABLE IF EXISTS "proxy";
CREATE TABLE "proxy" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "fetcher_name" varchar(255) NOT NULL,
  "protocol" varchar(255) NOT NULL,
  "ip" varchar(255) NOT NULL,
  "port" integer NOT NULL,
  "validated" bool NOT NULL,
  "latency" integer,
  "validate_date" text,
  "validate_failed_cnt" integer NOT NULL,
  "to_validate_date" text NOT NULL
);

-- ----------------------------
-- Records of proxy
-- ----------------------------
INSERT INTO "proxy" VALUES (1, 'uu-proxy.com', 'socks5', '120.25.222.150', 1080, 0, NULL, '2023-12-20 10:08:30.201133', 2, '2023-12-20 10:28:30.201133');
INSERT INTO "proxy" VALUES (2, 'uu-proxy.com', 'http', '180.103.127.9', 7890, 1, 299, '2023-12-20 10:13:30.804531', 0, '2023-12-20 10:52:30.804531');
INSERT INTO "proxy" VALUES (3, 'uu-proxy.com', 'http', '117.160.250.134', 8899, 0, NULL, '2023-12-20 10:08:31.042783', 2, '2023-12-20 10:28:31.042783');
INSERT INTO "proxy" VALUES (4, 'uu-proxy.com', 'http', '119.91.255.214', 7890, 1, 1568, '2023-12-20 09:58:24.006586', 0, '2023-12-20 10:39:24.006586');
INSERT INTO "proxy" VALUES (5, 'uu-proxy.com', 'http', '117.160.250.133', 8899, 0, NULL, '2023-12-20 10:08:31.030781', 2, '2023-12-20 10:28:31.030781');
INSERT INTO "proxy" VALUES (6, 'uu-proxy.com', 'socks5', '139.198.29.235', 3128, 0, NULL, '2023-12-20 10:08:30.080773', 2, '2023-12-20 10:28:30.080773');
INSERT INTO "proxy" VALUES (7, 'uu-proxy.com', 'http', '117.160.250.130', 8899, 0, NULL, '2023-12-20 10:08:31.036784', 2, '2023-12-20 10:28:31.036784');
INSERT INTO "proxy" VALUES (8, 'uu-proxy.com', 'http', '111.173.119.171', 3128, 1, 1412, '2023-12-20 09:58:23.997696', 0, '2023-12-20 10:48:23.997696');
INSERT INTO "proxy" VALUES (9, 'uu-proxy.com', 'http', '117.160.250.138', 8899, 0, NULL, '2023-12-20 10:09:15.261180', 2, '2023-12-20 10:29:15.261180');
INSERT INTO "proxy" VALUES (10, 'uu-proxy.com', 'socks5', '47.100.184.89', 443, 0, NULL, '2023-12-20 10:08:30.196590', 2, '2023-12-20 10:28:30.196590');
INSERT INTO "proxy" VALUES (11, 'www.proxy-list.download', 'socks4', '36.67.66.100', 32404, 0, NULL, '2023-12-20 10:08:30.095500', 2, '2023-12-20 10:28:30.095500');
INSERT INTO "proxy" VALUES (12, 'www.proxy-list.download', 'socks4', '210.245.51.5', 4145, 0, NULL, '2023-12-20 10:08:30.215132', 2, '2023-12-20 10:28:30.215132');
INSERT INTO "proxy" VALUES (13, 'www.proxy-list.download', 'socks4', '176.104.176.188', 1080, 0, NULL, '2023-12-20 10:08:30.246345', 2, '2023-12-20 10:28:30.246345');
INSERT INTO "proxy" VALUES (14, 'www.proxy-list.download', 'socks4', '177.124.225.106', 4145, 0, NULL, '2023-12-20 10:08:30.090473', 2, '2023-12-20 10:28:30.090473');
INSERT INTO "proxy" VALUES (15, 'www.proxy-list.download', 'socks4', '217.29.18.206', 4145, 0, NULL, '2023-12-20 10:08:30.242337', 2, '2023-12-20 10:28:30.242337');
INSERT INTO "proxy" VALUES (16, 'www.proxy-list.download', 'socks4', '120.50.8.2', 4145, 0, NULL, '2023-12-20 10:08:30.173070', 2, '2023-12-20 10:28:30.173070');
INSERT INTO "proxy" VALUES (17, 'www.proxy-list.download', 'socks4', '92.84.56.10', 47054, 0, NULL, '2023-12-20 10:08:30.144583', 2, '2023-12-20 10:28:30.144583');
INSERT INTO "proxy" VALUES (18, 'www.proxy-list.download', 'socks4', '103.105.236.120', 53977, 0, NULL, '2023-12-20 10:08:30.471222', 2, '2023-12-20 10:28:30.471222');
INSERT INTO "proxy" VALUES (19, 'www.proxy-list.download', 'socks4', '202.51.118.42', 4145, 0, NULL, '2023-12-20 10:08:30.352785', 2, '2023-12-20 10:28:30.352785');
INSERT INTO "proxy" VALUES (20, 'www.proxy-list.download', 'socks4', '181.112.154.170', 45032, 0, NULL, '2023-12-20 10:08:30.381397', 2, '2023-12-20 10:28:30.381397');
INSERT INTO "proxy" VALUES (21, 'www.proxy-list.download', 'socks4', '80.82.147.4', 4153, 0, NULL, '2023-12-20 10:08:30.335234', 2, '2023-12-20 10:28:30.335234');
INSERT INTO "proxy" VALUES (22, 'www.proxy-list.download', 'socks4', '189.201.188.125', 4145, 0, NULL, '2023-12-20 10:08:30.366787', 2, '2023-12-20 10:28:30.366787');
INSERT INTO "proxy" VALUES (23, 'www.proxy-list.download', 'socks5', '98.190.102.62', 4145, 0, NULL, '2023-12-20 10:08:30.479232', 2, '2023-12-20 10:28:30.479232');
INSERT INTO "proxy" VALUES (24, 'www.proxy-list.download', 'socks4', '78.154.180.12', 1080, 0, NULL, '2023-12-20 10:08:30.340213', 2, '2023-12-20 10:28:30.340213');
INSERT INTO "proxy" VALUES (25, 'www.proxy-list.download', 'socks4', '188.247.39.14', 43032, 0, NULL, '2023-12-20 10:08:30.552114', 2, '2023-12-20 10:28:30.552114');
INSERT INTO "proxy" VALUES (26, 'www.proxy-list.download', 'http', '  </div><!-- /#cf-wrapper --', 80, 0, NULL, '2023-12-20 10:08:30.701062', 2, '2023-12-20 10:28:30.701062');
INSERT INTO "proxy" VALUES (27, 'www.proxy-list.download', 'socks4', '195.34.221.81', 4153, 0, NULL, '2023-12-20 10:08:30.608605', 2, '2023-12-20 10:28:30.608605');
INSERT INTO "proxy" VALUES (28, 'www.proxy-list.download', 'socks4', '174.77.111.197', 4145, 0, NULL, '2023-12-20 10:08:30.586652', 2, '2023-12-20 10:28:30.586652');
INSERT INTO "proxy" VALUES (29, 'www.proxy-list.download', 'socks4', '36.89.229.97', 50540, 0, NULL, '2023-12-20 10:08:30.561573', 2, '2023-12-20 10:28:30.561573');
INSERT INTO "proxy" VALUES (30, 'www.proxy-list.download', 'socks5', '98.190.102.40', 4145, 0, NULL, '2023-12-20 10:08:30.680384', 2, '2023-12-20 10:28:30.680384');
INSERT INTO "proxy" VALUES (31, 'www.proxy-list.download', 'socks4', '36.89.187.193', 44587, 0, NULL, '2023-12-20 10:08:30.416431', 2, '2023-12-20 10:28:30.416431');
INSERT INTO "proxy" VALUES (32, 'www.proxy-list.download', 'socks4', '41.76.242.14', 5678, 0, NULL, '2023-12-20 10:08:30.462232', 2, '2023-12-20 10:28:30.462232');
INSERT INTO "proxy" VALUES (33, 'www.proxy-list.download', 'socks4', '45.175.179.230', 4145, 0, NULL, '2023-12-20 10:08:30.744666', 2, '2023-12-20 10:28:30.744666');
INSERT INTO "proxy" VALUES (34, 'www.proxy-list.download', 'socks4', '80.82.147.1', 4153, 0, NULL, '2023-12-20 10:08:30.260331', 2, '2023-12-20 10:28:30.260331');
INSERT INTO "proxy" VALUES (35, 'www.proxy-list.download', 'socks4', '94.136.154.53', 60030, 0, NULL, '2023-12-20 10:08:30.186205', 2, '2023-12-20 10:28:30.186205');
INSERT INTO "proxy" VALUES (36, 'www.proxy-list.download', 'socks4', '222.165.221.9', 31523, 0, NULL, '2023-12-20 10:08:30.159499', 2, '2023-12-20 10:28:30.159499');
INSERT INTO "proxy" VALUES (37, 'www.proxy-list.download', 'socks4', '103.60.181.211', 31248, 0, NULL, '2023-12-20 10:08:30.505608', 2, '2023-12-20 10:28:30.505608');
INSERT INTO "proxy" VALUES (38, 'www.proxy-list.download', 'socks4', '103.114.0.3', 4153, 0, NULL, '2023-12-20 10:08:30.501595', 2, '2023-12-20 10:28:30.501595');
INSERT INTO "proxy" VALUES (39, 'www.proxy-list.download', 'http', '         ', 80, 0, NULL, '2023-12-20 10:08:30.125550', 2, '2023-12-20 10:28:30.125550');
INSERT INTO "proxy" VALUES (40, 'www.proxy-list.download', 'socks4', '50.195.7.180', 64312, 0, NULL, '2023-12-20 10:08:30.544540', 2, '2023-12-20 10:28:30.544540');
INSERT INTO "proxy" VALUES (41, 'www.proxy-list.download', 'socks4', '91.203.224.177', 43820, 0, NULL, '2023-12-20 10:08:30.228150', 2, '2023-12-20 10:28:30.228150');
INSERT INTO "proxy" VALUES (42, 'www.proxy-list.download', 'socks4', '116.212.131.174', 36362, 0, NULL, '2023-12-20 10:08:30.168053', 2, '2023-12-20 10:28:30.168053');
INSERT INTO "proxy" VALUES (43, 'www.proxy-list.download', 'socks5', '103.109.57.42', 3629, 0, NULL, '2023-12-20 10:08:30.224148', 2, '2023-12-20 10:28:30.224148');
INSERT INTO "proxy" VALUES (44, 'www.proxy-list.download', 'socks4', '203.205.35.201', 4145, 0, NULL, '2023-12-20 10:08:30.205138', 2, '2023-12-20 10:28:30.205138');
INSERT INTO "proxy" VALUES (45, 'www.proxy-list.download', 'socks4', '62.182.114.164', 59623, 0, NULL, '2023-12-20 10:08:30.130573', 2, '2023-12-20 10:28:30.130573');
INSERT INTO "proxy" VALUES (46, 'www.proxy-list.download', 'socks4', '117.242.147.97', 4153, 0, NULL, '2023-12-20 10:08:30.149574', 2, '2023-12-20 10:28:30.149574');
INSERT INTO "proxy" VALUES (47, 'www.proxy-list.download', 'http', '  window._cf_translation = {}', 80, 0, NULL, '2023-12-20 10:08:30.484241', 2, '2023-12-20 10:28:30.484241');
INSERT INTO "proxy" VALUES (48, 'www.proxy-list.download', 'socks4', '213.14.25.69', 1080, 0, NULL, '2023-12-20 10:08:30.344241', 2, '2023-12-20 10:28:30.344241');
INSERT INTO "proxy" VALUES (49, 'www.proxy-list.download', 'socks4', '101.51.105.41', 4145, 0, NULL, '2023-12-20 10:08:30.425817', 2, '2023-12-20 10:28:30.425817');
INSERT INTO "proxy" VALUES (50, 'www.proxy-list.download', 'socks4', '45.117.31.137', 4145, 0, NULL, '2023-12-20 10:08:30.434672', 2, '2023-12-20 10:28:30.434672');
INSERT INTO "proxy" VALUES (51, 'www.proxy-list.download', 'socks4', '187.4.165.58', 4153, 0, NULL, '2023-12-20 10:08:30.177074', 2, '2023-12-20 10:28:30.177074');
INSERT INTO "proxy" VALUES (52, 'www.proxy-list.download', 'socks4', '190.186.1.46', 33567, 0, NULL, '2023-12-20 10:08:30.496874', 2, '2023-12-20 10:28:30.496874');
INSERT INTO "proxy" VALUES (53, 'www.proxy-list.download', 'socks5', '219.147.112.150', 1080, 0, NULL, '2023-12-20 10:08:30.308213', 2, '2023-12-20 10:28:30.308213');
INSERT INTO "proxy" VALUES (54, 'www.proxy-list.download', 'socks4', '184.181.217.204', 4145, 0, NULL, '2023-12-20 10:08:30.237138', 2, '2023-12-20 10:28:30.237138');
INSERT INTO "proxy" VALUES (55, 'www.proxy-list.download', 'socks4', '13.49.144.251', 20017, 0, NULL, '2023-12-20 10:08:30.219156', 2, '2023-12-20 10:28:30.219156');
INSERT INTO "proxy" VALUES (56, 'www.proxy-list.download', 'socks4', '103.210.31.49', 31433, 0, NULL, '2023-12-20 10:08:30.135580', 2, '2023-12-20 10:28:30.135580');
INSERT INTO "proxy" VALUES (57, 'www.proxy-list.download', 'socks4', '143.255.52.198', 59616, 0, NULL, '2023-12-20 10:08:30.074926', 2, '2023-12-20 10:28:30.074926');
INSERT INTO "proxy" VALUES (58, 'www.proxy-list.download', 'socks4', '139.5.29.97', 36983, 0, NULL, '2023-12-20 10:08:30.116540', 2, '2023-12-20 10:28:30.116540');
INSERT INTO "proxy" VALUES (59, 'www.proxy-list.download', 'socks4', '157.119.50.70', 1080, 0, NULL, '2023-12-20 10:08:30.233130', 2, '2023-12-20 10:28:30.233130');
INSERT INTO "proxy" VALUES (60, 'www.proxy-list.download', 'socks5', '184.178.172.18', 15280, 0, NULL, '2023-12-20 10:08:30.085570', 2, '2023-12-20 10:28:30.085570');
INSERT INTO "proxy" VALUES (61, 'www.proxy-list.download', 'socks5', '175.24.2.65', 1080, 0, NULL, '2023-12-20 10:08:30.264332', 2, '2023-12-20 10:28:30.264332');
INSERT INTO "proxy" VALUES (62, 'www.proxy-list.download', 'socks4', '80.53.244.214', 35098, 0, NULL, '2023-12-20 10:08:30.475354', 2, '2023-12-20 10:28:30.475354');
INSERT INTO "proxy" VALUES (63, 'www.proxy-list.download', 'socks4', '103.211.8.225', 52616, 0, NULL, '2023-12-20 10:08:30.304209', 2, '2023-12-20 10:28:30.304209');
INSERT INTO "proxy" VALUES (64, 'www.proxy-list.download', 'socks4', '185.43.249.148', 39316, 0, NULL, '2023-12-20 10:08:30.313209', 2, '2023-12-20 10:28:30.313209');
INSERT INTO "proxy" VALUES (65, 'www.proxy-list.download', 'socks4', '185.66.228.149', 4145, 0, NULL, '2023-12-20 10:08:30.112549', 2, '2023-12-20 10:28:30.112549');
INSERT INTO "proxy" VALUES (66, 'www.proxy-list.download', 'socks4', '46.214.161.163', 4153, 0, NULL, '2023-12-20 10:08:30.164019', 2, '2023-12-20 10:28:30.164019');
INSERT INTO "proxy" VALUES (67, 'www.proxy-list.download', 'socks4', '138.97.2.187', 4145, 0, NULL, '2023-12-20 10:08:30.548526', 2, '2023-12-20 10:28:30.548526');
INSERT INTO "proxy" VALUES (68, 'www.proxy-list.download', 'socks4', '89.218.5.109', 50733, 0, NULL, '2023-12-20 10:08:30.182065', 2, '2023-12-20 10:28:30.182065');
INSERT INTO "proxy" VALUES (69, 'www.proxy-list.download', 'socks4', '1.186.60.25', 4153, 0, NULL, '2023-12-20 10:08:30.522472', 2, '2023-12-20 10:28:30.522472');
INSERT INTO "proxy" VALUES (70, 'www.proxy-list.download', 'socks4', '45.7.177.249', 39867, 0, NULL, '2023-12-20 10:08:30.210129', 2, '2023-12-20 10:28:30.210129');
INSERT INTO "proxy" VALUES (71, 'www.proxy-list.download', 'socks4', '202.29.218.138', 4153, 0, NULL, '2023-12-20 10:08:30.251334', 2, '2023-12-20 10:28:30.251334');
INSERT INTO "proxy" VALUES (72, 'www.proxy-list.download', 'socks4', '202.91.188.81', 4145, 0, NULL, '2023-12-20 10:08:30.104536', 2, '2023-12-20 10:28:30.104536');
INSERT INTO "proxy" VALUES (73, 'www.proxy-list.download', 'socks4', '185.134.99.238', 4153, 0, NULL, '2023-12-20 10:08:30.154478', 2, '2023-12-20 10:28:30.154478');
INSERT INTO "proxy" VALUES (74, 'www.proxy-list.download', 'https', '  window._cf_translation = {}', 80, 0, NULL, '2023-12-20 10:08:30.518470', 2, '2023-12-20 10:28:30.518470');
INSERT INTO "proxy" VALUES (75, 'www.proxy-list.download', 'socks4', '103.243.81.252', 30384, 0, NULL, '2023-12-20 10:08:30.348772', 2, '2023-12-20 10:28:30.348772');
INSERT INTO "proxy" VALUES (76, 'www.proxy-list.download', 'socks4', '103.12.150.254', 37983, 0, NULL, '2023-12-20 10:08:30.385396', 2, '2023-12-20 10:28:30.385396');
INSERT INTO "proxy" VALUES (77, 'www.proxy-list.download', 'socks4', '46.8.33.245', 4153, 0, NULL, '2023-12-20 10:08:30.450226', 2, '2023-12-20 10:28:30.450226');
INSERT INTO "proxy" VALUES (78, 'www.proxy-list.download', 'socks4', '103.78.213.73', 4145, 0, NULL, '2023-12-20 10:08:30.656181', 2, '2023-12-20 10:28:30.656181');
INSERT INTO "proxy" VALUES (79, 'www.proxy-list.download', 'socks4', '186.249.240.146', 50733, 0, NULL, '2023-12-20 10:08:30.440686', 2, '2023-12-20 10:28:30.440686');
INSERT INTO "proxy" VALUES (80, 'www.proxy-list.download', 'socks4', '77.239.148.134', 4145, 0, NULL, '2023-12-20 10:08:30.191198', 2, '2023-12-20 10:28:30.191198');
INSERT INTO "proxy" VALUES (81, 'www.proxy-list.download', 'socks4', '109.188.86.168', 4145, 0, NULL, '2023-12-20 10:08:30.121538', 2, '2023-12-20 10:28:30.121538');
INSERT INTO "proxy" VALUES (82, 'www.proxy-list.download', 'socks4', '98.188.47.150', 4145, 0, NULL, '2023-12-20 10:08:30.139570', 2, '2023-12-20 10:28:30.139570');
INSERT INTO "proxy" VALUES (83, 'www.proxy-list.download', 'socks4', '27.123.3.139', 4145, 0, NULL, '2023-12-20 10:08:30.099551', 2, '2023-12-20 10:28:30.099551');
INSERT INTO "proxy" VALUES (84, 'www.proxy-list.download', 'socks4', '203.188.242.222', 4145, 0, NULL, '2023-12-20 10:08:30.491791', 2, '2023-12-20 10:28:30.491791');
INSERT INTO "proxy" VALUES (85, 'www.proxy-list.download', 'socks4', '103.105.40.70', 4145, 0, NULL, '2023-12-20 10:08:30.358782', 2, '2023-12-20 10:28:30.358782');
INSERT INTO "proxy" VALUES (86, 'www.proxy-list.download', 'socks4', '117.102.124.234', 4145, 0, NULL, '2023-12-20 10:08:30.467221', 2, '2023-12-20 10:28:30.467221');
INSERT INTO "proxy" VALUES (87, 'www.proxy-list.download', 'socks4', '103.31.157.206', 4145, 0, NULL, '2023-12-20 10:08:30.454222', 2, '2023-12-20 10:28:30.454222');
INSERT INTO "proxy" VALUES (88, 'www.proxy-list.download', 'socks4', '131.221.148.73', 4153, 0, NULL, '2023-12-20 10:08:30.945381', 2, '2023-12-20 10:28:30.945381');
INSERT INTO "proxy" VALUES (89, 'www.proxy-list.download', 'socks5', '121.40.51.48', 1080, 0, NULL, '2023-12-20 10:08:30.808563', 2, '2023-12-20 10:28:30.808563');
INSERT INTO "proxy" VALUES (90, 'www.proxy-list.download', 'socks4', '41.190.92.84', 41207, 0, NULL, '2023-12-20 10:08:30.840881', 2, '2023-12-20 10:28:30.840881');
INSERT INTO "proxy" VALUES (91, 'www.proxy-list.download', 'socks4', '190.138.206.18', 31680, 0, NULL, '2023-12-20 10:08:30.971412', 2, '2023-12-20 10:28:30.971412');
INSERT INTO "proxy" VALUES (92, 'www.proxy-list.download', 'socks4', '88.85.97.150', 4153, 0, NULL, '2023-12-20 10:08:30.924289', 2, '2023-12-20 10:28:30.924289');
INSERT INTO "proxy" VALUES (93, 'www.proxy-list.download', 'socks4', '72.221.164.34', 60671, 0, NULL, '2023-12-20 10:08:30.830629', 2, '2023-12-20 10:28:30.830629');
INSERT INTO "proxy" VALUES (94, 'www.proxy-list.download', 'socks4', '91.143.46.78', 4153, 0, NULL, '2023-12-20 10:08:30.696052', 2, '2023-12-20 10:28:30.696052');
INSERT INTO "proxy" VALUES (95, 'www.proxy-list.download', 'socks4', '46.254.240.106', 43310, 0, NULL, '2023-12-20 10:08:30.966413', 2, '2023-12-20 10:28:30.966413');
INSERT INTO "proxy" VALUES (96, 'www.proxy-list.download', 'socks4', '181.15.154.154', 52033, 0, NULL, '2023-12-20 10:08:30.527470', 2, '2023-12-20 10:28:30.527470');
INSERT INTO "proxy" VALUES (97, 'www.proxy-list.download', 'socks4', '82.207.41.135', 54870, 0, NULL, '2023-12-20 10:08:30.934828', 2, '2023-12-20 10:28:30.934828');
INSERT INTO "proxy" VALUES (98, 'www.proxy-list.download', 'socks4', '89.22.254.55', 4153, 0, NULL, '2023-12-20 10:08:30.784647', 2, '2023-12-20 10:28:30.784647');
INSERT INTO "proxy" VALUES (99, 'www.proxy-list.download', 'socks5', '43.224.10.13', 6667, 0, NULL, '2023-12-20 10:08:30.875934', 2, '2023-12-20 10:28:30.875934');
INSERT INTO "proxy" VALUES (100, 'www.proxy-list.download', 'socks4', '201.184.130.194', 35943, 0, NULL, '2023-12-20 10:08:30.595646', 2, '2023-12-20 10:28:30.595646');
INSERT INTO "proxy" VALUES (101, 'www.proxy-list.download', 'socks4', '129.126.65.78', 4153, 0, NULL, '2023-12-20 10:08:30.794848', 2, '2023-12-20 10:28:30.794848');
INSERT INTO "proxy" VALUES (102, 'www.proxy-list.download', 'socks4', '169.239.223.136', 52178, 0, NULL, '2023-12-20 10:08:30.803561', 2, '2023-12-20 10:28:30.803561');
INSERT INTO "proxy" VALUES (103, 'www.proxy-list.download', 'http', '(function(){if(document.addEventListener&&window.XMLHttpRequest&&JSON&&JSON.stringify){var e=function(a){var c=document.getElementById("error-feedback-survey"),d=document.getElementById("error-feedback-success"),b=new XMLHttpRequest;a={event', 80, 0, NULL, '2023-12-20 10:08:30.950377', 2, '2023-12-20 10:28:30.950377');
INSERT INTO "proxy" VALUES (104, 'www.proxy-list.download', 'socks4', '119.57.115.58', 30622, 0, NULL, '2023-12-20 10:08:30.870935', 2, '2023-12-20 10:28:30.870935');
INSERT INTO "proxy" VALUES (105, 'www.proxy-list.download', 'socks4', '36.89.122.240', 56936, 0, NULL, '2023-12-20 10:08:30.760292', 2, '2023-12-20 10:28:30.760292');
INSERT INTO "proxy" VALUES (106, 'www.proxy-list.download', 'socks4', '200.81.144.33', 1080, 0, NULL, '2023-12-20 10:08:30.621440', 2, '2023-12-20 10:28:30.621440');
INSERT INTO "proxy" VALUES (107, 'www.proxy-list.download', 'socks4', '91.134.50.251', 1337, 0, NULL, '2023-12-20 10:08:30.666197', 2, '2023-12-20 10:28:30.666197');
INSERT INTO "proxy" VALUES (108, 'www.proxy-list.download', 'socks5', '51.195.201.48', 9095, 0, NULL, '2023-12-20 10:08:31.005500', 2, '2023-12-20 10:28:31.005500');
INSERT INTO "proxy" VALUES (109, 'www.proxy-list.download', 'socks4', '80.71.112.108', 55243, 0, NULL, '2023-12-20 10:08:30.819576', 2, '2023-12-20 10:28:30.819576');
INSERT INTO "proxy" VALUES (110, 'www.proxy-list.download', 'socks4', '190.151.94.2', 56093, 0, NULL, '2023-12-20 10:08:30.889937', 2, '2023-12-20 10:28:30.889937');
INSERT INTO "proxy" VALUES (111, 'www.proxy-list.download', 'http', '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /', 80, 0, NULL, '2023-12-20 10:08:30.855911', 2, '2023-12-20 10:28:30.855911');
INSERT INTO "proxy" VALUES (112, 'www.proxy-list.download', 'socks4', '213.230.69.33', 1080, 0, NULL, '2023-12-20 10:08:30.850913', 2, '2023-12-20 10:28:30.850913');
INSERT INTO "proxy" VALUES (113, 'www.proxy-list.download', 'socks5', '222.129.33.141', 57114, 0, NULL, '2023-12-20 10:08:30.774524', 2, '2023-12-20 10:28:30.774524');
INSERT INTO "proxy" VALUES (114, 'www.proxy-list.download', 'socks4', '222.165.194.68', 50486, 0, NULL, '2023-12-20 10:08:30.940361', 2, '2023-12-20 10:28:30.940361');
INSERT INTO "proxy" VALUES (115, 'www.proxy-list.download', 'socks4', '181.196.246.246', 4145, 0, NULL, '2023-12-20 10:08:30.294814', 2, '2023-12-20 10:28:30.294814');
INSERT INTO "proxy" VALUES (116, 'www.proxy-list.download', 'socks5', '220.248.188.75', 17211, 0, NULL, '2023-12-20 10:08:30.727052', 2, '2023-12-20 10:28:30.727052');
INSERT INTO "proxy" VALUES (117, 'www.proxy-list.download', 'socks4', '83.171.98.129', 49901, 0, NULL, '2023-12-20 10:08:30.599652', 2, '2023-12-20 10:28:30.599652');
INSERT INTO "proxy" VALUES (118, 'www.proxy-list.download', 'socks4', '50.237.206.138', 64312, 0, NULL, '2023-12-20 10:08:30.984440', 2, '2023-12-20 10:28:30.984440');
INSERT INTO "proxy" VALUES (119, 'www.proxy-list.download', 'socks4', '177.92.9.10', 4145, 0, NULL, '2023-12-20 10:08:31.026045', 2, '2023-12-20 10:28:31.026045');
INSERT INTO "proxy" VALUES (120, 'www.proxy-list.download', 'socks4', '206.189.158.28', 11007, 0, NULL, '2023-12-20 10:08:31.016030', 2, '2023-12-20 10:28:31.016030');
INSERT INTO "proxy" VALUES (121, 'www.proxy-list.download', 'socks4', '119.82.252.122', 47516, 0, NULL, '2023-12-20 10:08:30.670596', 2, '2023-12-20 10:28:30.670596');
INSERT INTO "proxy" VALUES (122, 'www.proxy-list.download', 'socks4', '103.102.141.56', 4145, 0, NULL, '2023-12-20 10:08:30.990439', 2, '2023-12-20 10:28:30.990439');
INSERT INTO "proxy" VALUES (123, 'www.proxy-list.download', 'socks4', '103.76.201.118', 8291, 0, NULL, '2023-12-20 10:08:30.994450', 2, '2023-12-20 10:28:30.994450');
INSERT INTO "proxy" VALUES (124, 'www.proxy-list.download', 'socks4', '88.247.165.215', 41165, 0, NULL, '2023-12-20 10:08:30.835655', 2, '2023-12-20 10:28:30.835655');
INSERT INTO "proxy" VALUES (125, 'www.proxy-list.download', 'socks4', '85.217.192.39', 4145, 0, NULL, '2023-12-20 10:08:30.860927', 2, '2023-12-20 10:28:30.860927');
INSERT INTO "proxy" VALUES (126, 'www.proxy-list.download', 'socks4', '93.99.13.46', 4153, 0, NULL, '2023-12-20 10:08:30.706049', 2, '2023-12-20 10:28:30.706049');
INSERT INTO "proxy" VALUES (127, 'www.proxy-list.download', 'socks4', '178.216.2.229', 1488, 0, NULL, '2023-12-20 10:08:30.768729', 2, '2023-12-20 10:28:30.768729');
INSERT INTO "proxy" VALUES (128, 'www.proxy-list.download', 'socks4', '49.248.32.110', 41363, 0, NULL, '2023-12-20 10:08:30.915337', 2, '2023-12-20 10:28:30.915337');
INSERT INTO "proxy" VALUES (129, 'www.proxy-list.download', 'socks5', '174.75.211.222', 4145, 0, NULL, '2023-12-20 10:08:30.845922', 2, '2023-12-20 10:28:30.845922');
INSERT INTO "proxy" VALUES (130, 'www.proxy-list.download', 'socks4', '217.113.22.18', 3629, 0, NULL, '2023-12-20 10:08:30.604417', 2, '2023-12-20 10:28:30.604417');
INSERT INTO "proxy" VALUES (131, 'www.proxy-list.download', 'socks4', '103.12.246.49', 4145, 0, NULL, '2023-12-20 10:08:30.578752', 2, '2023-12-20 10:28:30.578752');
INSERT INTO "proxy" VALUES (132, 'www.proxy-list.download', 'socks4', '92.247.127.161', 4153, 0, NULL, '2023-12-20 10:08:30.403414', 2, '2023-12-20 10:28:30.403414');
INSERT INTO "proxy" VALUES (133, 'www.proxy-list.download', 'socks4', '182.52.51.10', 35719, 0, NULL, '2023-12-20 10:08:30.690023', 2, '2023-12-20 10:28:30.690023');
INSERT INTO "proxy" VALUES (134, 'www.proxy-list.download', 'https', '  <script>(function(){function d(){var b=a.getElementById("cf-footer-item-ip"),c=a.getElementById("cf-footer-ip-reveal");b&&"classList"in b&&(b.classList.remove("hidden"),c.addEventListener("click",function(){c.classList.add("hidden");a.getElementById("cf-footer-ip").classList.remove("hidden")}))}var a=document;document.addEventListener&&a.addEventListener("DOMContentLoaded",d)})();</script', 80, 0, NULL, '2023-12-20 10:08:30.399397', 2, '2023-12-20 10:28:30.399397');
INSERT INTO "proxy" VALUES (135, 'www.proxy-list.download', 'socks4', '81.163.36.139', 4145, 0, NULL, '2023-12-20 10:08:30.574643', 2, '2023-12-20 10:28:30.574643');
INSERT INTO "proxy" VALUES (136, 'www.proxy-list.download', 'socks4', '188.168.75.254', 33654, 0, NULL, '2023-12-20 10:08:30.894946', 2, '2023-12-20 10:28:30.894946');
INSERT INTO "proxy" VALUES (137, 'www.proxy-list.download', 'socks4', '195.58.19.193', 1080, 0, NULL, '2023-12-20 10:08:30.317225', 2, '2023-12-20 10:28:30.317225');
INSERT INTO "proxy" VALUES (138, 'www.proxy-list.download', 'socks4', '103.109.182.193', 47749, 0, NULL, '2023-12-20 10:08:30.920290', 2, '2023-12-20 10:28:30.920290');
INSERT INTO "proxy" VALUES (139, 'www.proxy-list.download', 'socks4', '81.214.137.255', 4153, 0, NULL, '2023-12-20 10:08:30.899948', 2, '2023-12-20 10:28:30.899948');
INSERT INTO "proxy" VALUES (140, 'www.proxy-list.download', 'socks4', '45.70.237.172', 4145, 0, NULL, '2023-12-20 10:08:30.634432', 2, '2023-12-20 10:28:30.634432');
INSERT INTO "proxy" VALUES (141, 'www.proxy-list.download', 'socks4', '116.0.2.162', 47068, 0, NULL, '2023-12-20 10:08:30.613400', 2, '2023-12-20 10:28:30.613400');
INSERT INTO "proxy" VALUES (142, 'www.proxy-list.download', 'socks4', '101.228.77.198', 4145, 0, NULL, '2023-12-20 10:08:30.910338', 2, '2023-12-20 10:28:30.910338');
INSERT INTO "proxy" VALUES (143, 'www.proxy-list.download', 'socks4', '103.57.80.156', 4145, 0, NULL, '2023-12-20 10:08:30.718050', 2, '2023-12-20 10:28:30.718050');
INSERT INTO "proxy" VALUES (144, 'www.proxy-list.download', 'socks4', '113.160.247.180', 4145, 0, NULL, '2023-12-20 10:08:30.661208', 2, '2023-12-20 10:28:30.661208');
INSERT INTO "proxy" VALUES (145, 'www.proxy-list.download', 'socks4', '103.79.96.154', 4153, 0, NULL, '2023-12-20 10:08:30.390394', 2, '2023-12-20 10:28:30.390394');
INSERT INTO "proxy" VALUES (146, 'www.proxy-list.download', 'socks4', '212.49.69.67', 5678, 0, NULL, '2023-12-20 10:08:30.565482', 2, '2023-12-20 10:28:30.565482');
INSERT INTO "proxy" VALUES (147, 'www.proxy-list.download', 'socks4', '77.233.10.37', 33683, 0, NULL, '2023-12-20 10:08:30.569473', 2, '2023-12-20 10:28:30.569473');
INSERT INTO "proxy" VALUES (148, 'www.proxy-list.download', 'socks4', '200.218.242.89', 4153, 0, NULL, '2023-12-20 10:08:30.362785', 2, '2023-12-20 10:28:30.362785');
INSERT INTO "proxy" VALUES (149, 'www.proxy-list.download', 'socks4', '103.115.119.254', 30543, 0, NULL, '2023-12-20 10:08:30.286518', 2, '2023-12-20 10:28:30.286518');
INSERT INTO "proxy" VALUES (150, 'www.proxy-list.download', 'socks4', '143.255.54.244', 59616, 0, NULL, '2023-12-20 10:08:30.268347', 2, '2023-12-20 10:28:30.268347');
INSERT INTO "proxy" VALUES (151, 'www.proxy-list.download', 'socks4', '2.183.8.121', 4153, 0, NULL, '2023-12-20 10:08:30.255348', 2, '2023-12-20 10:28:30.255348');
INSERT INTO "proxy" VALUES (152, 'www.proxy-list.download', 'socks4', '203.114.124.203', 4145, 0, NULL, '2023-12-20 10:08:30.752662', 2, '2023-12-20 10:28:30.752662');
INSERT INTO "proxy" VALUES (153, 'www.proxy-list.download', 'http', '          <div id="what-happened-section" class="w-1/2 md', 80, 0, NULL, '2023-12-20 10:08:30.591659', 2, '2023-12-20 10:28:30.591659');
INSERT INTO "proxy" VALUES (154, 'www.proxy-list.download', 'socks4', '103.10.59.73', 4145, 0, NULL, '2023-12-20 10:08:31.011030', 2, '2023-12-20 10:28:31.011030');
INSERT INTO "proxy" VALUES (155, 'www.proxy-list.download', 'socks4', '105.27.143.174', 4153, 0, NULL, '2023-12-20 10:08:31.021045', 2, '2023-12-20 10:28:31.021045');
INSERT INTO "proxy" VALUES (156, 'www.proxy-list.download', 'socks4', '110.77.145.159', 4145, 0, NULL, '2023-12-20 10:08:31.000486', 2, '2023-12-20 10:28:31.000486');
INSERT INTO "proxy" VALUES (157, 'www.proxy-list.download', 'socks4', '181.112.57.2', 45201, 0, NULL, '2023-12-20 10:08:30.790039', 2, '2023-12-20 10:28:30.790039');
INSERT INTO "proxy" VALUES (158, 'www.proxy-list.download', 'socks4', '45.71.81.255', 45337, 0, NULL, '2023-12-20 10:08:30.905754', 2, '2023-12-20 10:28:30.905754');
INSERT INTO "proxy" VALUES (159, 'www.proxy-list.download', 'socks4', '222.173.92.154', 32075, 0, NULL, '2023-12-20 10:08:30.394397', 2, '2023-12-20 10:28:30.394397');
INSERT INTO "proxy" VALUES (160, 'www.proxy-list.download', 'socks4', '1.179.198.226', 56428, 0, NULL, '2023-12-20 10:08:30.371797', 2, '2023-12-20 10:28:30.371797');
INSERT INTO "proxy" VALUES (161, 'www.proxy-list.download', 'socks4', '37.26.86.206', 4145, 0, NULL, '2023-12-20 10:08:30.377392', 2, '2023-12-20 10:28:30.377392');
INSERT INTO "proxy" VALUES (162, 'www.proxy-list.download', 'socks4', '203.170.67.157', 4145, 0, NULL, '2023-12-20 10:08:30.458229', 2, '2023-12-20 10:28:30.458229');
INSERT INTO "proxy" VALUES (163, 'www.proxy-list.download', 'socks4', '37.235.212.243', 4145, 0, NULL, '2023-12-20 10:08:30.685018', 2, '2023-12-20 10:28:30.685018');
INSERT INTO "proxy" VALUES (164, 'www.proxy-list.download', 'socks4', '200.218.242.145', 4153, 0, NULL, '2023-12-20 10:08:30.331218', 2, '2023-12-20 10:28:30.331218');
INSERT INTO "proxy" VALUES (165, 'www.proxy-list.download', 'socks4', '82.103.118.42', 1099, 0, NULL, '2023-12-20 10:08:30.557125', 2, '2023-12-20 10:28:30.557125');
INSERT INTO "proxy" VALUES (166, 'www.proxy-list.download', 'socks4', '103.44.18.248', 4145, 0, NULL, '2023-12-20 10:08:30.712053', 2, '2023-12-20 10:28:30.712053');
INSERT INTO "proxy" VALUES (167, 'www.proxy-list.download', 'socks4', '59.36.136.238', 1080, 0, NULL, '2023-12-20 10:08:30.539480', 2, '2023-12-20 10:28:30.539480');
INSERT INTO "proxy" VALUES (168, 'www.proxy-list.download', 'socks4', '178.173.171.10', 4145, 0, NULL, '2023-12-20 10:08:30.735050', 2, '2023-12-20 10:28:30.735050');
INSERT INTO "proxy" VALUES (169, 'www.proxy-list.download', 'socks4', '31.131.159.31', 4153, 0, NULL, '2023-12-20 10:08:30.884944', 2, '2023-12-20 10:28:30.884944');
INSERT INTO "proxy" VALUES (170, 'www.proxy-list.download', 'socks4', '27.50.22.30', 4145, 0, NULL, '2023-12-20 10:08:30.779512', 2, '2023-12-20 10:28:30.779512');
INSERT INTO "proxy" VALUES (171, 'www.proxy-list.download', 'socks5', '116.202.103.223', 29210, 0, NULL, '2023-12-20 10:08:30.955412', 2, '2023-12-20 10:28:30.955412');
INSERT INTO "proxy" VALUES (172, 'www.proxy-list.download', 'http', '    <div class="feedback-success feedback-hidden" id="error-feedback-success"', 80, 0, NULL, '2023-12-20 10:08:30.881043', 2, '2023-12-20 10:28:30.881043');
INSERT INTO "proxy" VALUES (173, 'www.proxy-list.download', 'socks4', '202.134.166.1', 4153, 0, NULL, '2023-12-20 10:08:30.535488', 2, '2023-12-20 10:28:30.535488');
INSERT INTO "proxy" VALUES (174, 'www.proxy-list.download', 'socks4', '103.207.96.21', 61287, 0, NULL, '2023-12-20 10:08:30.652169', 2, '2023-12-20 10:28:30.652169');
INSERT INTO "proxy" VALUES (175, 'www.proxy-list.download', 'socks4', '177.91.9.17', 59515, 0, NULL, '2023-12-20 10:08:30.272693', 2, '2023-12-20 10:28:30.272693');
INSERT INTO "proxy" VALUES (176, 'www.proxy-list.download', 'socks4', '195.210.172.43', 58350, 0, NULL, '2023-12-20 10:08:30.675401', 2, '2023-12-20 10:28:30.675401');
INSERT INTO "proxy" VALUES (177, 'www.proxy-list.download', 'socks4', '103.194.242.254', 40247, 0, NULL, '2023-12-20 10:08:30.445232', 2, '2023-12-20 10:28:30.445232');
INSERT INTO "proxy" VALUES (178, 'www.proxy-list.download', 'socks4', '177.67.162.42', 4145, 0, NULL, '2023-12-20 10:08:30.531467', 2, '2023-12-20 10:28:30.531467');
INSERT INTO "proxy" VALUES (179, 'www.proxy-list.download', 'socks4', '190.145.255.246', 4145, 0, NULL, '2023-12-20 10:08:30.429833', 2, '2023-12-20 10:28:30.429833');
INSERT INTO "proxy" VALUES (180, 'www.proxy-list.download', 'socks4', '182.253.192.186', 46634, 0, NULL, '2023-12-20 10:08:30.582658', 2, '2023-12-20 10:28:30.582658');
INSERT INTO "proxy" VALUES (181, 'www.proxy-list.download', 'socks4', '5.153.140.180', 4145, 0, NULL, '2023-12-20 10:08:30.412416', 2, '2023-12-20 10:28:30.412416');
INSERT INTO "proxy" VALUES (182, 'www.proxy-list.download', 'http', '', 80, 0, NULL, '2023-12-20 10:08:30.420954', 2, '2023-12-20 10:28:30.420954');
INSERT INTO "proxy" VALUES (183, 'www.proxy-list.download', 'socks4', '119.82.253.24', 61910, 0, NULL, '2023-12-20 10:08:30.487781', 2, '2023-12-20 10:28:30.487781');
INSERT INTO "proxy" VALUES (184, 'www.proxy-list.download', 'socks4', '103.92.212.242', 52658, 0, NULL, '2023-12-20 10:08:30.509469', 2, '2023-12-20 10:28:30.509469');
INSERT INTO "proxy" VALUES (185, 'www.proxy-list.download', 'socks4', '103.112.62.149', 44550, 0, NULL, '2023-12-20 10:08:30.814577', 2, '2023-12-20 10:28:30.814577');
INSERT INTO "proxy" VALUES (186, 'www.proxy-list.download', 'socks4', '200.218.242.97', 4153, 0, NULL, '2023-12-20 10:08:30.300210', 2, '2023-12-20 10:28:30.300210');
INSERT INTO "proxy" VALUES (187, 'www.proxy-list.download', 'socks4', '79.134.7.134', 49230, 0, NULL, '2023-12-20 10:08:30.626433', 2, '2023-12-20 10:28:30.626433');
INSERT INTO "proxy" VALUES (188, 'www.proxy-list.download', 'socks4', '101.132.36.83', 3129, 0, NULL, '2023-12-20 10:08:30.630441', 2, '2023-12-20 10:28:30.630441');
INSERT INTO "proxy" VALUES (189, 'www.proxy-list.download', 'socks4', '103.135.174.132', 1080, 0, NULL, '2023-12-20 10:08:30.617434', 2, '2023-12-20 10:28:30.617434');
INSERT INTO "proxy" VALUES (190, 'www.proxy-list.download', 'socks4', '185.27.60.83', 53292, 0, NULL, '2023-12-20 10:08:30.407425', 2, '2023-12-20 10:28:30.407425');
INSERT INTO "proxy" VALUES (191, 'www.proxy-list.download', 'socks4', '92.39.70.138', 60722, 0, NULL, '2023-12-20 10:08:30.326228', 2, '2023-12-20 10:28:30.327213');
INSERT INTO "proxy" VALUES (192, 'www.proxy-list.download', 'socks4', '50.242.122.141', 32100, 0, NULL, '2023-12-20 10:08:30.639429', 2, '2023-12-20 10:28:30.639429');
INSERT INTO "proxy" VALUES (193, 'www.proxy-list.download', 'socks4', '168.196.115.193', 4153, 0, NULL, '2023-12-20 10:08:30.960415', 2, '2023-12-20 10:28:30.960415');
INSERT INTO "proxy" VALUES (194, 'www.proxy-list.download', 'socks4', '187.237.164.37', 4153, 0, NULL, '2023-12-20 10:08:30.281520', 2, '2023-12-20 10:28:30.281520');
INSERT INTO "proxy" VALUES (195, 'www.proxy-list.download', 'socks4', '103.111.22.65', 58563, 0, NULL, '2023-12-20 10:08:30.977441', 2, '2023-12-20 10:28:30.977441');
INSERT INTO "proxy" VALUES (196, 'www.proxy-list.download', 'socks4', '177.66.247.81', 4145, 0, NULL, '2023-12-20 10:08:30.798861', 2, '2023-12-20 10:28:30.798861');
INSERT INTO "proxy" VALUES (197, 'www.proxy-list.download', 'socks4', '192.252.215.5', 16137, 0, NULL, '2023-12-20 10:08:30.825631', 2, '2023-12-20 10:28:30.825631');
INSERT INTO "proxy" VALUES (198, 'www.proxy-list.download', 'socks4', '187.108.86.40', 35376, 0, NULL, '2023-12-20 10:08:30.866091', 2, '2023-12-20 10:28:30.866091');
INSERT INTO "proxy" VALUES (199, 'www.proxy-list.download', 'socks4', '168.195.196.25', 53496, 0, NULL, '2023-12-20 10:08:30.277514', 2, '2023-12-20 10:28:30.277514');
INSERT INTO "proxy" VALUES (200, 'www.proxy-list.download', 'socks4', '176.221.116.10', 4145, 0, NULL, '2023-12-20 10:08:30.322209', 2, '2023-12-20 10:28:30.322209');
INSERT INTO "proxy" VALUES (201, 'www.proxy-list.download', 'socks4', '177.37.166.166', 4153, 0, NULL, '2023-12-20 10:08:30.643168', 2, '2023-12-20 10:28:30.643168');
INSERT INTO "proxy" VALUES (202, 'www.proxy-list.download', 'socks5', '119.187.146.163', 1080, 0, NULL, '2023-12-20 10:08:31.507372', 2, '2023-12-20 10:28:31.507372');
INSERT INTO "proxy" VALUES (203, 'www.proxy-list.download', 'socks4', '83.168.84.130', 4153, 0, NULL, '2023-12-20 10:08:31.601839', 2, '2023-12-20 10:28:31.601839');
INSERT INTO "proxy" VALUES (204, 'www.proxy-list.download', 'socks4', '91.230.199.174', 32151, 0, NULL, '2023-12-20 10:08:30.514469', 2, '2023-12-20 10:28:30.514469');
INSERT INTO "proxy" VALUES (205, 'www.proxy-list.download', 'socks4', '183.81.154.59', 4145, 0, NULL, '2023-12-20 10:08:30.290801', 2, '2023-12-20 10:28:30.290801');
INSERT INTO "proxy" VALUES (206, 'www.proxy-list.download', 'socks4', '103.212.92.253', 41363, 0, NULL, '2023-12-20 10:08:30.648167', 2, '2023-12-20 10:28:30.648167');
INSERT INTO "proxy" VALUES (207, 'www.proxy-list.download', 'socks4', '103.109.59.77', 1080, 0, NULL, '2023-12-20 10:08:31.597011', 2, '2023-12-20 10:28:31.597011');
INSERT INTO "proxy" VALUES (208, 'www.proxy-list.download', 'socks4', '203.170.67.237', 4145, 0, NULL, '2023-12-20 10:08:31.587899', 2, '2023-12-20 10:28:31.587899');
INSERT INTO "proxy" VALUES (209, 'www.proxy-list.download', 'socks4', '220.169.127.172', 49765, 0, NULL, '2023-12-20 10:08:31.542394', 2, '2023-12-20 10:28:31.542394');
INSERT INTO "proxy" VALUES (210, 'www.proxy-list.download', 'socks4', '213.217.241.101', 4145, 0, NULL, '2023-12-20 10:08:31.538385', 2, '2023-12-20 10:28:31.538385');
INSERT INTO "proxy" VALUES (211, 'www.proxy-list.download', 'socks4', '36.95.24.169', 5678, 0, NULL, '2023-12-20 10:08:31.547394', 2, '2023-12-20 10:28:31.547394');
INSERT INTO "proxy" VALUES (212, 'www.proxy-list.download', 'socks4', '119.42.123.215', 4145, 0, NULL, '2023-12-20 10:08:31.502727', 2, '2023-12-20 10:28:31.502727');
INSERT INTO "proxy" VALUES (213, 'www.proxy-list.download', 'socks4', '200.68.13.26', 46903, 0, NULL, '2023-12-20 10:08:31.446022', 2, '2023-12-20 10:28:31.446022');
INSERT INTO "proxy" VALUES (214, 'www.proxy-list.download', 'socks4', '165.90.51.222', 4145, 0, NULL, '2023-12-20 10:08:31.441026', 2, '2023-12-20 10:28:31.441026');
INSERT INTO "proxy" VALUES (215, 'www.proxy-list.download', 'socks4', '37.57.37.213', 1080, 0, NULL, '2023-12-20 10:08:31.435027', 2, '2023-12-20 10:28:31.435027');
INSERT INTO "proxy" VALUES (216, 'www.proxy-list.download', 'socks4', '117.102.102.155', 4153, 0, NULL, '2023-12-20 10:08:31.417676', 2, '2023-12-20 10:28:31.417676');
INSERT INTO "proxy" VALUES (217, 'www.proxy-list.download', 'socks4', '179.107.58.124', 4145, 0, NULL, '2023-12-20 10:08:31.426516', 2, '2023-12-20 10:28:31.426516');
INSERT INTO "proxy" VALUES (218, 'www.proxy-list.download', 'https', '        <button class="border border-solid bg-white cf-button cursor-pointer ml-4 px-4 py-2 rounded" id="feedback-button-yes" type="button">Yes</button', 80, 0, NULL, '2023-12-20 10:08:31.450026', 2, '2023-12-20 10:28:31.450026');
INSERT INTO "proxy" VALUES (219, 'www.proxy-list.download', 'socks4', '80.94.118.192', 4145, 0, NULL, '2023-12-20 10:08:31.403445', 2, '2023-12-20 10:28:31.403445');
INSERT INTO "proxy" VALUES (220, 'www.proxy-list.download', 'socks4', '103.68.35.166', 4145, 0, NULL, '2023-12-20 10:08:31.529406', 2, '2023-12-20 10:28:31.529406');
INSERT INTO "proxy" VALUES (221, 'www.proxy-list.download', 'socks4', '103.209.65.12', 6667, 0, NULL, '2023-12-20 10:08:31.400449', 2, '2023-12-20 10:28:31.400449');
INSERT INTO "proxy" VALUES (222, 'www.proxy-list.download', 'http', '</script', 80, 0, NULL, '2023-12-20 10:08:38.165782', 2, '2023-12-20 10:28:38.165782');
INSERT INTO "proxy" VALUES (223, 'www.proxy-list.download', 'socks4', '94.236.153.194', 4145, 0, NULL, '2023-12-20 10:08:31.459012', 2, '2023-12-20 10:28:31.459012');
INSERT INTO "proxy" VALUES (224, 'www.proxy-list.download', 'socks4', '175.141.163.189', 4153, 0, NULL, '2023-12-20 10:08:31.516366', 2, '2023-12-20 10:28:31.516366');
INSERT INTO "proxy" VALUES (225, 'www.proxy-list.download', 'socks4', '82.99.203.76', 58523, 0, NULL, '2023-12-20 10:08:31.583894', 2, '2023-12-20 10:28:31.583894');
INSERT INTO "proxy" VALUES (226, 'www.proxy-list.download', 'socks4', '192.252.209.155', 14455, 0, NULL, '2023-12-20 10:08:31.382167', 2, '2023-12-20 10:28:31.382167');
INSERT INTO "proxy" VALUES (227, 'www.proxy-list.download', 'socks4', '103.10.133.81', 4153, 0, NULL, '2023-12-20 10:08:31.395164', 2, '2023-12-20 10:28:31.395164');
INSERT INTO "proxy" VALUES (228, 'www.proxy-list.download', 'socks4', '86.34.157.3', 4145, 0, NULL, '2023-12-20 10:08:31.472552', 2, '2023-12-20 10:28:31.472552');
INSERT INTO "proxy" VALUES (229, 'www.proxy-list.download', 'socks4', '187.33.92.54', 4153, 0, NULL, '2023-12-20 10:08:31.463360', 2, '2023-12-20 10:28:31.463360');
INSERT INTO "proxy" VALUES (230, 'www.proxy-list.download', 'socks4', '103.199.157.145', 41610, 0, NULL, '2023-12-20 10:08:31.561580', 2, '2023-12-20 10:28:31.561580');
INSERT INTO "proxy" VALUES (231, 'www.proxy-list.download', 'socks4', '89.249.244.111', 4145, 0, NULL, '2023-12-20 10:08:31.253340', 2, '2023-12-20 10:28:31.253340');
INSERT INTO "proxy" VALUES (232, 'www.proxy-list.download', 'socks4', '80.71.112.100', 55243, 0, NULL, '2023-12-20 10:08:31.339565', 2, '2023-12-20 10:28:31.339565');
INSERT INTO "proxy" VALUES (233, 'www.proxy-list.download', 'socks4', '85.237.191.62', 1080, 0, NULL, '2023-12-20 10:08:31.651447', 2, '2023-12-20 10:28:31.651447');
INSERT INTO "proxy" VALUES (234, 'www.proxy-list.download', 'socks4', '200.48.13.26', 4153, 0, NULL, '2023-12-20 10:08:31.368629', 2, '2023-12-20 10:28:31.368629');
INSERT INTO "proxy" VALUES (235, 'www.proxy-list.download', 'socks4', '187.111.193.95', 44681, 0, NULL, '2023-12-20 10:08:31.246337', 2, '2023-12-20 10:28:31.246337');
INSERT INTO "proxy" VALUES (236, 'www.proxy-list.download', 'http', '      <section class="w-240 lg', 80, 0, NULL, '2023-12-20 10:08:31.047802', 2, '2023-12-20 10:28:31.047802');
INSERT INTO "proxy" VALUES (237, 'www.proxy-list.download', 'https', '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /', 80, 0, NULL, '2023-12-20 10:08:31.328564', 2, '2023-12-20 10:28:31.328564');
INSERT INTO "proxy" VALUES (238, 'www.proxy-list.download', 'socks4', '103.115.255.102', 36331, 0, NULL, '2023-12-20 10:08:31.356613', 2, '2023-12-20 10:28:31.357612');
INSERT INTO "proxy" VALUES (239, 'www.proxy-list.download', 'socks4', '82.76.135.94', 3629, 0, NULL, '2023-12-20 10:08:31.310566', 2, '2023-12-20 10:28:31.310566');
INSERT INTO "proxy" VALUES (240, 'www.proxy-list.download', 'socks4', '180.180.170.188', 3629, 0, NULL, '2023-12-20 10:08:31.334563', 2, '2023-12-20 10:28:31.334563');
INSERT INTO "proxy" VALUES (241, 'www.proxy-list.download', 'socks4', '185.255.47.206', 5678, 0, NULL, '2023-12-20 10:08:31.296492', 2, '2023-12-20 10:28:31.296492');
INSERT INTO "proxy" VALUES (242, 'www.proxy-list.download', 'socks5', '43.224.10.43', 6667, 0, NULL, '2023-12-20 10:08:31.551385', 2, '2023-12-20 10:28:31.551385');
INSERT INTO "proxy" VALUES (243, 'www.proxy-list.download', 'socks4', '177.129.207.36', 4153, 0, NULL, '2023-12-20 10:08:31.525384', 2, '2023-12-20 10:28:31.525384');
INSERT INTO "proxy" VALUES (244, 'www.proxy-list.download', 'socks4', '203.160.63.49', 4145, 0, NULL, '2023-12-20 10:08:31.275434', 2, '2023-12-20 10:28:31.275434');
INSERT INTO "proxy" VALUES (245, 'www.proxy-list.download', 'socks4', '177.105.68.63', 4153, 0, NULL, '2023-12-20 10:08:31.679067', 2, '2023-12-20 10:28:31.679067');
INSERT INTO "proxy" VALUES (246, 'www.proxy-list.download', 'socks4', '185.66.58.140', 42647, 0, NULL, '2023-12-20 10:08:31.322571', 2, '2023-12-20 10:28:31.322571');
INSERT INTO "proxy" VALUES (247, 'www.proxy-list.download', 'socks5', '208.113.222.205', 57226, 0, NULL, '2023-12-20 10:08:31.316564', 2, '2023-12-20 10:28:31.316564');
INSERT INTO "proxy" VALUES (248, 'www.proxy-list.download', 'socks4', '220.133.209.253', 4145, 0, NULL, '2023-12-20 10:08:31.512364', 2, '2023-12-20 10:28:31.512364');
INSERT INTO "proxy" VALUES (249, 'www.proxy-list.download', 'socks5', '188.166.34.137', 9000, 0, NULL, '2023-12-20 10:08:31.467363', 2, '2023-12-20 10:28:31.467363');
INSERT INTO "proxy" VALUES (250, 'www.proxy-list.download', 'socks4', '91.203.114.71', 42905, 0, NULL, '2023-12-20 10:08:31.494009', 2, '2023-12-20 10:28:31.494009');
INSERT INTO "proxy" VALUES (251, 'www.proxy-list.download', 'socks4', '103.211.8.65', 52616, 0, NULL, '2023-12-20 10:08:31.499006', 2, '2023-12-20 10:28:31.499006');
INSERT INTO "proxy" VALUES (252, 'www.proxy-list.download', 'socks4', '218.106.167.98', 4145, 0, NULL, '2023-12-20 10:08:31.261430', 2, '2023-12-20 10:28:31.261430');
INSERT INTO "proxy" VALUES (253, 'www.proxy-list.download', 'socks4', '45.5.194.138', 22222, 0, NULL, '2023-12-20 10:08:31.682689', 2, '2023-12-20 10:28:31.682689');
INSERT INTO "proxy" VALUES (254, 'www.proxy-list.download', 'socks4', '1.9.167.35', 60489, 0, NULL, '2023-12-20 10:08:31.350564', 2, '2023-12-20 10:28:31.350564');
INSERT INTO "proxy" VALUES (255, 'www.proxy-list.download', 'socks4', '190.217.1.137', 55170, 0, NULL, '2023-12-20 10:08:31.268435', 2, '2023-12-20 10:28:31.268435');
INSERT INTO "proxy" VALUES (256, 'www.proxy-list.download', 'socks4', '110.78.164.188', 4153, 0, NULL, '2023-12-20 10:08:31.520369', 2, '2023-12-20 10:28:31.520369');
INSERT INTO "proxy" VALUES (257, 'www.proxy-list.download', 'socks4', '1.53.137.92', 4145, 0, NULL, '2023-12-20 10:08:31.556606', 2, '2023-12-20 10:28:31.556606');
INSERT INTO "proxy" VALUES (258, 'www.proxy-list.download', 'socks4', '103.15.242.216', 55492, 0, NULL, '2023-12-20 10:08:31.533381', 2, '2023-12-20 10:28:31.533381');
INSERT INTO "proxy" VALUES (259, 'www.proxy-list.download', 'socks4', '189.113.217.35', 43603, 0, NULL, '2023-12-20 10:08:31.565582', 2, '2023-12-20 10:28:31.565582');
INSERT INTO "proxy" VALUES (260, 'www.proxy-list.download', 'socks4', '143.255.108.173', 4153, 0, NULL, '2023-12-20 10:08:31.387162', 2, '2023-12-20 10:28:31.387162');
INSERT INTO "proxy" VALUES (261, 'www.proxy-list.download', 'socks4', '186.47.82.6', 46723, 0, NULL, '2023-12-20 10:08:31.344597', 2, '2023-12-20 10:28:31.344597');
INSERT INTO "proxy" VALUES (262, 'www.proxy-list.download', 'socks4', '177.91.44.101', 4153, 0, NULL, '2023-12-20 10:08:31.687687', 2, '2023-12-20 10:28:31.687687');
INSERT INTO "proxy" VALUES (263, 'www.proxy-list.download', 'socks5', '183.164.226.253', 4216, 0, NULL, '2023-12-20 10:08:31.281905', 2, '2023-12-20 10:28:31.281905');
INSERT INTO "proxy" VALUES (264, 'www.proxy-list.download', 'socks4', '79.124.62.26', 443, 0, NULL, '2023-12-20 10:08:31.288905', 2, '2023-12-20 10:28:31.288905');
INSERT INTO "proxy" VALUES (265, 'www.proxy-list.download', 'socks5', '188.227.224.110', 9051, 0, NULL, '2023-12-20 10:08:31.378168', 2, '2023-12-20 10:28:31.378168');
INSERT INTO "proxy" VALUES (266, 'www.proxy-list.download', 'socks4', '103.102.14.185', 1080, 0, NULL, '2023-12-20 10:08:31.661258', 2, '2023-12-20 10:28:31.661258');
INSERT INTO "proxy" VALUES (267, 'www.proxy-list.download', 'socks4', '186.215.202.34', 4145, 0, NULL, '2023-12-20 10:08:31.665812', 2, '2023-12-20 10:28:31.665812');
INSERT INTO "proxy" VALUES (268, 'www.proxy-list.download', 'socks4', '200.218.242.85', 4153, 0, NULL, '2023-12-20 10:08:31.302233', 2, '2023-12-20 10:28:31.302233');
INSERT INTO "proxy" VALUES (269, 'www.proxy-list.download', 'socks4', '103.104.185.102', 5678, 0, NULL, '2023-12-20 10:08:31.240340', 2, '2023-12-20 10:28:31.240340');
INSERT INTO "proxy" VALUES (270, 'www.proxy-list.download', 'socks4', '187.103.232.26', 4153, 0, NULL, '2023-12-20 10:08:31.642411', 2, '2023-12-20 10:28:31.642411');
INSERT INTO "proxy" VALUES (271, 'www.proxy-list.download', 'socks4', '185.47.184.253', 45463, 0, NULL, '2023-12-20 10:08:31.363609', 2, '2023-12-20 10:28:31.363609');
INSERT INTO "proxy" VALUES (272, 'www.proxy-list.download', 'socks4', '43.224.10.44', 6667, 0, NULL, '2023-12-20 10:08:31.669816', 2, '2023-12-20 10:28:31.669816');
INSERT INTO "proxy" VALUES (273, 'www.proxy-list.download', 'https', '<script defer src="https', 80, 0, NULL, '2023-12-20 10:08:31.674814', 2, '2023-12-20 10:28:31.674814');
INSERT INTO "proxy" VALUES (274, 'www.proxy-list.download', 'socks4', '176.106.36.183', 1080, 0, NULL, '2023-12-20 10:08:31.656252', 2, '2023-12-20 10:28:31.656252');
INSERT INTO "proxy" VALUES (275, 'www.proxy-list.download', 'https', '          <div id="what-happened-section" class="w-1/2 md', 80, 0, NULL, '2023-12-20 10:08:31.373611', 2, '2023-12-20 10:28:31.373611');
INSERT INTO "proxy" VALUES (276, 'www.proxy-list.download', 'socks4', '190.90.20.230', 1080, 0, NULL, '2023-12-20 10:08:31.574332', 2, '2023-12-20 10:28:31.574332');
INSERT INTO "proxy" VALUES (277, 'www.proxy-list.download', 'socks4', '77.92.53.7', 4145, 0, NULL, '2023-12-20 10:08:31.422536', 2, '2023-12-20 10:28:31.422536');
INSERT INTO "proxy" VALUES (278, 'www.proxy-list.download', 'socks4', '197.248.190.170', 58496, 0, NULL, '2023-12-20 10:08:31.480570', 2, '2023-12-20 10:28:31.480570');
INSERT INTO "proxy" VALUES (279, 'www.proxy-list.download', 'https', '  <p class="text-13"', 80, 0, NULL, '2023-12-20 10:08:31.454038', 2, '2023-12-20 10:28:31.454038');
INSERT INTO "proxy" VALUES (280, 'www.proxy-list.download', 'socks4', '82.137.250.157', 1099, 0, NULL, '2023-12-20 10:08:31.430015', 2, '2023-12-20 10:28:31.430015');
INSERT INTO "proxy" VALUES (281, 'www.proxy-list.download', 'socks4', '178.165.91.245', 3629, 0, NULL, '2023-12-20 10:08:31.484993', 2, '2023-12-20 10:28:31.484993');
INSERT INTO "proxy" VALUES (282, 'www.proxy-list.download', 'socks4', '114.242.116.52', 4145, 0, NULL, '2023-12-20 10:08:31.704814', 2, '2023-12-20 10:28:31.704814');
INSERT INTO "proxy" VALUES (283, 'www.proxy-list.download', 'socks4', '103.85.67.169', 4145, 0, NULL, '2023-12-20 10:08:31.718379', 2, '2023-12-20 10:28:31.718379');
INSERT INTO "proxy" VALUES (284, 'www.proxy-list.download', 'socks4', '27.54.166.212', 57995, 0, NULL, '2023-12-20 10:08:31.629394', 2, '2023-12-20 10:28:31.629394');
INSERT INTO "proxy" VALUES (285, 'www.proxy-list.download', 'socks4', '185.46.221.11', 4153, 0, NULL, '2023-12-20 10:08:32.005806', 2, '2023-12-20 10:28:32.005806');
INSERT INTO "proxy" VALUES (286, 'www.proxy-list.download', 'socks4', '122.102.43.82', 59725, 0, NULL, '2023-12-20 10:08:31.744297', 2, '2023-12-20 10:28:31.744297');
INSERT INTO "proxy" VALUES (287, 'www.proxy-list.download', 'socks4', '189.198.210.234', 4153, 0, NULL, '2023-12-20 10:08:31.758161', 2, '2023-12-20 10:28:31.758161');
INSERT INTO "proxy" VALUES (288, 'www.proxy-list.download', 'socks4', '89.250.149.114', 59599, 0, NULL, '2023-12-20 10:08:31.592894', 2, '2023-12-20 10:28:31.592894');
INSERT INTO "proxy" VALUES (289, 'www.proxy-list.download', 'https', '      </header', 80, 0, NULL, '2023-12-20 10:08:31.570322', 2, '2023-12-20 10:28:31.570322');
INSERT INTO "proxy" VALUES (290, 'www.proxy-list.download', 'socks4', '194.244.16.58', 35573, 0, NULL, '2023-12-20 10:08:32.024040', 2, '2023-12-20 10:28:32.024040');
INSERT INTO "proxy" VALUES (291, 'www.proxy-list.download', 'socks4', '191.7.208.101', 31576, 0, NULL, '2023-12-20 10:08:32.001797', 2, '2023-12-20 10:28:32.001797');
INSERT INTO "proxy" VALUES (292, 'www.proxy-list.download', 'socks4', '193.34.161.137', 44436, 0, NULL, '2023-12-20 10:08:32.011129', 2, '2023-12-20 10:28:32.011129');
INSERT INTO "proxy" VALUES (293, 'www.proxy-list.download', 'socks4', '95.80.85.33', 1080, 0, NULL, '2023-12-20 10:08:31.991784', 2, '2023-12-20 10:28:31.991784');
INSERT INTO "proxy" VALUES (294, 'www.proxy-list.download', 'socks4', '190.7.155.43', 4153, 0, NULL, '2023-12-20 10:08:31.391162', 2, '2023-12-20 10:28:31.391162');
INSERT INTO "proxy" VALUES (295, 'www.proxy-list.download', 'socks4', '95.0.66.97', 1080, 0, NULL, '2023-12-20 10:08:31.408497', 2, '2023-12-20 10:28:31.408497');
INSERT INTO "proxy" VALUES (296, 'www.proxy-list.download', 'socks4', '62.122.201.246', 50129, 0, NULL, '2023-12-20 10:08:31.606010', 2, '2023-12-20 10:28:31.606010');
INSERT INTO "proxy" VALUES (297, 'www.proxy-list.download', 'socks4', '77.76.151.72', 5678, 0, NULL, '2023-12-20 10:08:31.767305', 2, '2023-12-20 10:28:31.767305');
INSERT INTO "proxy" VALUES (298, 'www.proxy-list.download', 'socks4', '121.13.252.61', 61401, 0, NULL, '2023-12-20 10:08:31.476536', 2, '2023-12-20 10:28:31.476536');
INSERT INTO "proxy" VALUES (299, 'www.proxy-list.download', 'socks4', '88.255.106.27', 1080, 0, NULL, '2023-12-20 10:08:31.490012', 2, '2023-12-20 10:28:31.490012');
INSERT INTO "proxy" VALUES (300, 'www.proxy-list.download', 'socks4', '50.235.92.65', 32100, 0, NULL, '2023-12-20 10:08:31.763312', 2, '2023-12-20 10:28:31.763312');
INSERT INTO "proxy" VALUES (301, 'www.proxy-list.download', 'socks4', '202.129.52.172', 4153, 0, NULL, '2023-12-20 10:08:31.724296', 2, '2023-12-20 10:28:31.724296');
INSERT INTO "proxy" VALUES (302, 'www.proxy-list.download', 'socks4', '103.78.25.206', 8291, 0, NULL, '2023-12-20 10:08:31.714365', 2, '2023-12-20 10:28:31.714365');
INSERT INTO "proxy" VALUES (303, 'www.proxy-list.download', 'socks4', '115.124.86.250', 5678, 0, NULL, '2023-12-20 10:08:31.615403', 2, '2023-12-20 10:28:31.615403');
INSERT INTO "proxy" VALUES (304, 'www.proxy-list.download', 'socks4', '217.21.60.36', 1080, 0, NULL, '2023-12-20 10:08:31.691699', 2, '2023-12-20 10:28:31.691699');
INSERT INTO "proxy" VALUES (305, 'www.proxy-list.download', 'socks4', '103.37.82.38', 61409, 0, NULL, '2023-12-20 10:08:31.638577', 2, '2023-12-20 10:28:31.638577');
INSERT INTO "proxy" VALUES (306, 'www.proxy-list.download', 'socks4', '80.106.59.35', 4153, 0, NULL, '2023-12-20 10:08:31.709382', 2, '2023-12-20 10:28:31.709382');
INSERT INTO "proxy" VALUES (307, 'www.proxy-list.download', 'socks4', '182.93.84.136', 60312, 0, NULL, '2023-12-20 10:08:31.620390', 2, '2023-12-20 10:28:31.620390');
INSERT INTO "proxy" VALUES (308, 'www.proxy-list.download', 'socks4', '123.207.94.24', 1080, 0, NULL, '2023-12-20 10:08:31.610504', 2, '2023-12-20 10:28:31.610504');
INSERT INTO "proxy" VALUES (309, 'www.proxy-list.download', 'socks4', '103.107.94.185', 34083, 0, NULL, '2023-12-20 10:08:31.578862', 2, '2023-12-20 10:28:31.578862');
INSERT INTO "proxy" VALUES (310, 'www.proxy-list.download', 'socks4', '46.8.159.147', 4145, 0, NULL, '2023-12-20 10:08:31.700810', 2, '2023-12-20 10:28:31.700810');
INSERT INTO "proxy" VALUES (311, 'www.proxy-list.download', 'socks4', '213.174.0.72', 1080, 0, NULL, '2023-12-20 10:08:31.696686', 2, '2023-12-20 10:28:31.696686');
INSERT INTO "proxy" VALUES (312, 'www.proxy-list.download', 'socks4', '78.92.254.9', 53718, 0, NULL, '2023-12-20 10:08:31.413484', 2, '2023-12-20 10:28:31.413484');
INSERT INTO "proxy" VALUES (313, 'www.proxy-list.download', 'socks4', '80.89.150.134', 3629, 0, NULL, '2023-12-20 10:08:31.771313', 2, '2023-12-20 10:28:31.771313');
INSERT INTO "proxy" VALUES (314, 'www.proxy-list.download', 'socks4', '222.129.33.40', 57114, 0, NULL, '2023-12-20 10:08:31.647424', 2, '2023-12-20 10:28:31.647424');
INSERT INTO "proxy" VALUES (315, 'www.proxy-list.download', 'socks4', '82.135.174.3', 8080, 0, NULL, '2023-12-20 10:08:31.633403', 2, '2023-12-20 10:28:31.633403');
INSERT INTO "proxy" VALUES (316, 'www.proxy-list.download', 'socks4', '36.89.94.139', 43028, 0, NULL, '2023-12-20 10:08:31.624414', 2, '2023-12-20 10:28:31.624414');
INSERT INTO "proxy" VALUES (317, 'www.proxy-list.download', 'socks4', '85.159.6.20', 3629, 0, NULL, '2023-12-20 10:08:31.960181', 2, '2023-12-20 10:28:31.960181');
INSERT INTO "proxy" VALUES (318, 'www.proxy-list.download', 'socks4', '170.239.255.253', 4145, 0, NULL, '2023-12-20 10:08:31.950627', 2, '2023-12-20 10:28:31.950627');
INSERT INTO "proxy" VALUES (319, 'www.proxy-list.download', 'socks4', '5.63.187.116', 36684, 0, NULL, '2023-12-20 10:08:31.978195', 2, '2023-12-20 10:28:31.978195');
INSERT INTO "proxy" VALUES (320, 'www.proxy-list.download', 'socks4', '103.85.106.107', 4153, 0, NULL, '2023-12-20 10:08:31.891917', 2, '2023-12-20 10:28:31.891917');
INSERT INTO "proxy" VALUES (321, 'www.proxy-list.download', 'socks4', '223.165.243.161', 47205, 0, NULL, '2023-12-20 10:08:31.897085', 2, '2023-12-20 10:28:31.897085');
INSERT INTO "proxy" VALUES (322, 'www.proxy-list.download', 'socks4', '103.10.56.190', 4153, 0, NULL, '2023-12-20 10:08:31.909631', 2, '2023-12-20 10:28:31.909631');
INSERT INTO "proxy" VALUES (323, 'www.proxy-list.download', 'socks4', '118.97.204.93', 51372, 0, NULL, '2023-12-20 10:08:31.919616', 2, '2023-12-20 10:28:31.919616');
INSERT INTO "proxy" VALUES (324, 'www.proxy-list.download', 'socks4', '79.132.205.34', 61731, 0, NULL, '2023-12-20 10:08:31.937613', 2, '2023-12-20 10:28:31.937613');
INSERT INTO "proxy" VALUES (325, 'www.proxy-list.download', 'socks4', '181.211.11.78', 33145, 0, NULL, '2023-12-20 10:08:31.861489', 2, '2023-12-20 10:28:31.861489');
INSERT INTO "proxy" VALUES (326, 'www.proxy-list.download', 'socks4', '112.66.72.81', 4145, 0, NULL, '2023-12-20 10:08:31.848503', 2, '2023-12-20 10:28:31.848503');
INSERT INTO "proxy" VALUES (327, 'www.proxy-list.download', 'socks4', '218.108.31.28', 4145, 0, NULL, '2023-12-20 10:08:31.905664', 2, '2023-12-20 10:28:31.905664');
INSERT INTO "proxy" VALUES (328, 'www.proxy-list.download', 'socks4', '79.165.225.234', 4153, 0, NULL, '2023-12-20 10:08:32.033081', 2, '2023-12-20 10:28:32.033081');
INSERT INTO "proxy" VALUES (329, 'www.proxy-list.download', 'socks4', '103.212.94.253', 41363, 0, NULL, '2023-12-20 10:08:31.928625', 2, '2023-12-20 10:28:31.928625');
INSERT INTO "proxy" VALUES (330, 'www.proxy-list.download', 'socks4', '154.72.197.106', 61423, 0, NULL, '2023-12-20 10:08:32.046586', 2, '2023-12-20 10:28:32.046586');
INSERT INTO "proxy" VALUES (331, 'www.proxy-list.download', 'socks4', '129.205.244.158', 1080, 0, NULL, '2023-12-20 10:08:31.965200', 2, '2023-12-20 10:28:31.965200');
INSERT INTO "proxy" VALUES (332, 'www.proxy-list.download', 'socks4', '110.78.153.49', 4145, 0, NULL, '2023-12-20 10:08:31.969182', 2, '2023-12-20 10:28:31.969182');
INSERT INTO "proxy" VALUES (333, 'www.proxy-list.download', 'socks4', '81.183.253.34', 4145, 0, NULL, '2023-12-20 10:08:31.914631', 2, '2023-12-20 10:28:31.914631');
INSERT INTO "proxy" VALUES (334, 'www.proxy-list.download', 'socks4', '122.116.122.6', 4145, 0, NULL, '2023-12-20 10:08:31.901090', 2, '2023-12-20 10:28:31.901090');
INSERT INTO "proxy" VALUES (335, 'www.proxy-list.download', 'socks4', '195.9.80.22', 4145, 0, NULL, '2023-12-20 10:08:31.942613', 2, '2023-12-20 10:28:31.942613');
INSERT INTO "proxy" VALUES (336, 'www.proxy-list.download', 'socks4', '212.34.239.253', 1080, 0, NULL, '2023-12-20 10:08:31.974194', 2, '2023-12-20 10:28:31.974194');
INSERT INTO "proxy" VALUES (337, 'www.proxy-list.download', 'socks4', '109.183.189.238', 36729, 0, NULL, '2023-12-20 10:08:31.946611', 2, '2023-12-20 10:28:31.946611');
INSERT INTO "proxy" VALUES (338, 'www.proxy-list.download', 'socks4', '105.247.28.74', 4153, 0, NULL, '2023-12-20 10:08:31.933613', 2, '2023-12-20 10:28:31.933613');
INSERT INTO "proxy" VALUES (339, 'www.proxy-list.download', 'socks4', '220.132.86.14', 4145, 0, NULL, '2023-12-20 10:08:31.924611', 2, '2023-12-20 10:28:31.924611');
INSERT INTO "proxy" VALUES (340, 'www.proxy-list.download', 'socks5', '172.104.240.74', 9053, 0, NULL, '2023-12-20 10:08:31.955625', 2, '2023-12-20 10:28:31.955625');
INSERT INTO "proxy" VALUES (341, 'www.proxy-list.download', 'socks4', '103.212.93.193', 45639, 0, NULL, '2023-12-20 10:08:32.029019', 2, '2023-12-20 10:28:32.029019');
INSERT INTO "proxy" VALUES (342, 'www.proxy-list.download', 'socks4', '95.0.217.19', 1080, 0, NULL, '2023-12-20 10:08:31.780408', 2, '2023-12-20 10:28:31.780408');
INSERT INTO "proxy" VALUES (343, 'www.proxy-list.download', 'socks4', '103.68.35.162', 4145, 0, NULL, '2023-12-20 10:08:31.821866', 2, '2023-12-20 10:28:31.821866');
INSERT INTO "proxy" VALUES (344, 'www.proxy-list.download', 'socks4', '62.122.201.170', 31871, 0, NULL, '2023-12-20 10:08:31.812547', 2, '2023-12-20 10:28:31.812547');
INSERT INTO "proxy" VALUES (345, 'www.proxy-list.download', 'socks4', '103.60.187.1', 52195, 0, NULL, '2023-12-20 10:08:32.059330', 2, '2023-12-20 10:28:32.059330');
INSERT INTO "proxy" VALUES (346, 'www.proxy-list.download', 'socks4', '175.139.179.65', 41527, 0, NULL, '2023-12-20 10:08:32.094959', 2, '2023-12-20 10:28:32.094959');
INSERT INTO "proxy" VALUES (347, 'www.proxy-list.download', 'socks4', '103.133.37.77', 4153, 0, NULL, '2023-12-20 10:08:32.152309', 2, '2023-12-20 10:28:32.152309');
INSERT INTO "proxy" VALUES (348, 'www.proxy-list.download', 'socks4', '195.29.155.98', 58617, 0, NULL, '2023-12-20 10:08:31.987465', 2, '2023-12-20 10:28:31.987465');
INSERT INTO "proxy" VALUES (349, 'www.proxy-list.download', 'socks4', '45.125.63.46', 44110, 0, NULL, '2023-12-20 10:08:32.063330', 2, '2023-12-20 10:28:32.063330');
INSERT INTO "proxy" VALUES (350, 'www.proxy-list.download', 'socks4', '85.238.167.170', 42762, 0, NULL, '2023-12-20 10:08:32.086072', 2, '2023-12-20 10:28:32.086072');
INSERT INTO "proxy" VALUES (351, 'www.proxy-list.download', 'socks4', '37.57.3.244', 1080, 0, NULL, '2023-12-20 10:08:32.077344', 2, '2023-12-20 10:28:32.077344');
INSERT INTO "proxy" VALUES (352, 'www.proxy-list.download', 'socks4', '46.182.130.71', 3629, 0, NULL, '2023-12-20 10:08:31.982474', 2, '2023-12-20 10:28:31.982474');
INSERT INTO "proxy" VALUES (353, 'www.proxy-list.download', 'socks4', '192.111.139.165', 4145, 0, NULL, '2023-12-20 10:08:31.734294', 2, '2023-12-20 10:28:31.734294');
INSERT INTO "proxy" VALUES (354, 'www.proxy-list.download', 'socks4', '177.39.218.70', 4153, 0, NULL, '2023-12-20 10:08:31.729293', 2, '2023-12-20 10:28:31.729293');
INSERT INTO "proxy" VALUES (355, 'www.proxy-list.download', 'socks4', '181.209.74.234', 4153, 0, NULL, '2023-12-20 10:08:31.816559', 2, '2023-12-20 10:28:31.816559');
INSERT INTO "proxy" VALUES (356, 'www.proxy-list.download', 'socks4', '192.111.130.2', 4145, 0, NULL, '2023-12-20 10:08:31.802421', 2, '2023-12-20 10:28:31.802421');
INSERT INTO "proxy" VALUES (357, 'www.proxy-list.download', 'socks4', '156.38.29.74', 1080, 0, NULL, '2023-12-20 10:08:32.120645', 2, '2023-12-20 10:28:32.120645');
INSERT INTO "proxy" VALUES (358, 'www.proxy-list.download', 'socks4', '37.98.231.2', 1080, 0, NULL, '2023-12-20 10:08:32.116662', 2, '2023-12-20 10:28:32.116662');
INSERT INTO "proxy" VALUES (359, 'www.proxy-list.download', 'socks4', '185.55.2.214', 1080, 0, NULL, '2023-12-20 10:08:32.148249', 2, '2023-12-20 10:28:32.148249');
INSERT INTO "proxy" VALUES (360, 'www.proxy-list.download', 'socks4', '183.88.240.53', 4145, 0, NULL, '2023-12-20 10:08:31.739296', 2, '2023-12-20 10:28:31.739296');
INSERT INTO "proxy" VALUES (361, 'www.proxy-list.download', 'socks4', '', 80, 0, NULL, '2023-12-20 10:08:31.775844', 2, '2023-12-20 10:28:31.775844');
INSERT INTO "proxy" VALUES (362, 'www.proxy-list.download', 'socks4', '185.169.181.24', 4145, 0, NULL, '2023-12-20 10:08:32.139249', 2, '2023-12-20 10:28:32.139249');
INSERT INTO "proxy" VALUES (363, 'www.proxy-list.download', 'socks4', '83.97.106.21', 4145, 0, NULL, '2023-12-20 10:08:31.830502', 2, '2023-12-20 10:28:31.830502');
INSERT INTO "proxy" VALUES (364, 'www.proxy-list.download', 'socks4', '138.59.140.77', 57669, 0, NULL, '2023-12-20 10:08:31.754153', 2, '2023-12-20 10:28:31.754153');
INSERT INTO "proxy" VALUES (365, 'www.proxy-list.download', 'socks4', '36.89.156.211', 4145, 0, NULL, '2023-12-20 10:08:32.090954', 2, '2023-12-20 10:28:32.090954');
INSERT INTO "proxy" VALUES (366, 'www.proxy-list.download', 'socks4', '192.111.137.35', 4145, 0, NULL, '2023-12-20 10:08:32.125643', 2, '2023-12-20 10:28:32.125643');
INSERT INTO "proxy" VALUES (367, 'www.proxy-list.download', 'socks4', '109.245.239.125', 43125, 0, NULL, '2023-12-20 10:08:32.130246', 2, '2023-12-20 10:28:32.130246');
INSERT INTO "proxy" VALUES (368, 'www.proxy-list.download', 'socks4', '117.28.254.143', 4145, 0, NULL, '2023-12-20 10:08:32.055317', 2, '2023-12-20 10:28:32.055317');
INSERT INTO "proxy" VALUES (369, 'www.proxy-list.download', 'socks4', '187.216.81.185', 37640, 0, NULL, '2023-12-20 10:08:32.143249', 2, '2023-12-20 10:28:32.143249');
INSERT INTO "proxy" VALUES (370, 'www.proxy-list.download', 'socks4', '186.225.45.13', 45239, 0, NULL, '2023-12-20 10:08:32.068333', 2, '2023-12-20 10:28:32.068333');
INSERT INTO "proxy" VALUES (371, 'www.proxy-list.download', 'socks4', '88.135.44.252', 4153, 0, NULL, '2023-12-20 10:08:32.072320', 2, '2023-12-20 10:28:32.072320');
INSERT INTO "proxy" VALUES (372, 'www.proxy-list.download', 'socks4', '168.0.8.36', 4153, 0, NULL, '2023-12-20 10:08:32.108696', 2, '2023-12-20 10:28:32.108696');
INSERT INTO "proxy" VALUES (373, 'www.proxy-list.download', 'socks4', '170.79.181.118', 4153, 0, NULL, '2023-12-20 10:08:32.112675', 2, '2023-12-20 10:28:32.112675');
INSERT INTO "proxy" VALUES (374, 'www.proxy-list.download', 'socks4', '218.81.151.107', 4145, 0, NULL, '2023-12-20 10:08:32.134250', 2, '2023-12-20 10:28:32.134250');
INSERT INTO "proxy" VALUES (375, 'www.proxy-list.download', 'https', '      <section class="w-240 lg', 80, 0, NULL, '2023-12-20 10:08:31.749307', 2, '2023-12-20 10:28:31.749307');
INSERT INTO "proxy" VALUES (376, 'www.proxy-list.download', 'socks4', '103.110.59.3', 35294, 0, NULL, '2023-12-20 10:08:32.098991', 2, '2023-12-20 10:28:32.098991');
INSERT INTO "proxy" VALUES (377, 'www.proxy-list.download', 'socks4', '5.83.104.158', 4153, 0, NULL, '2023-12-20 10:08:32.103978', 2, '2023-12-20 10:28:32.103978');
INSERT INTO "proxy" VALUES (378, 'www.proxy-list.download', 'socks4', '177.22.111.246', 4145, 0, NULL, '2023-12-20 10:08:31.825751', 2, '2023-12-20 10:28:31.825751');
INSERT INTO "proxy" VALUES (379, 'www.proxy-list.download', 'socks4', '190.215.220.38', 33371, 0, NULL, '2023-12-20 10:08:31.843502', 2, '2023-12-20 10:28:31.843502');
INSERT INTO "proxy" VALUES (380, 'www.proxy-list.download', 'socks4', '122.50.5.98', 4153, 0, NULL, '2023-12-20 10:08:31.789417', 2, '2023-12-20 10:28:31.789417');
INSERT INTO "proxy" VALUES (381, 'www.proxy-list.download', 'socks4', '195.228.133.203', 4153, 0, NULL, '2023-12-20 10:08:31.839492', 2, '2023-12-20 10:28:31.839492');
INSERT INTO "proxy" VALUES (382, 'www.proxy-list.download', 'socks4', '103.94.133.94', 4153, 0, NULL, '2023-12-20 10:08:31.865503', 2, '2023-12-20 10:28:31.865503');
INSERT INTO "proxy" VALUES (383, 'www.proxy-list.download', 'socks4', '188.166.104.152', 4975, 0, NULL, '2023-12-20 10:08:31.806412', 2, '2023-12-20 10:28:31.806412');
INSERT INTO "proxy" VALUES (384, 'www.proxy-list.download', 'socks4', '185.5.246.222', 4153, 0, NULL, '2023-12-20 10:08:31.794410', 2, '2023-12-20 10:28:31.794410');
INSERT INTO "proxy" VALUES (385, 'www.proxy-list.download', 'socks4', '103.122.66.184', 4153, 0, NULL, '2023-12-20 10:08:31.852515', 2, '2023-12-20 10:28:31.852515');
INSERT INTO "proxy" VALUES (386, 'www.proxy-list.download', 'socks4', '201.220.128.92', 3000, 0, NULL, '2023-12-20 10:08:31.856501', 2, '2023-12-20 10:28:31.856501');
INSERT INTO "proxy" VALUES (387, 'www.proxy-list.download', 'socks4', '218.21.78.35', 4145, 0, NULL, '2023-12-20 10:08:31.879320', 2, '2023-12-20 10:28:31.879320');
INSERT INTO "proxy" VALUES (388, 'www.proxy-list.download', 'socks4', '85.196.136.9', 4153, 0, NULL, '2023-12-20 10:08:31.870506', 2, '2023-12-20 10:28:31.870506');
INSERT INTO "proxy" VALUES (389, 'www.proxy-list.download', 'socks4', '189.51.143.10', 4153, 0, NULL, '2023-12-20 10:08:31.874326', 2, '2023-12-20 10:28:31.874326');
INSERT INTO "proxy" VALUES (390, 'www.proxy-list.download', 'socks4', '89.22.17.62', 43110, 0, NULL, '2023-12-20 10:08:31.888243', 2, '2023-12-20 10:28:31.888243');
INSERT INTO "proxy" VALUES (391, 'www.proxy-list.download', 'socks4', '116.199.168.1', 4145, 0, NULL, '2023-12-20 10:08:31.883373', 2, '2023-12-20 10:28:31.883373');
INSERT INTO "proxy" VALUES (392, 'www.proxy-list.download', 'socks4', '106.14.173.45', 3129, 0, NULL, '2023-12-20 10:08:31.798421', 2, '2023-12-20 10:28:31.798421');
INSERT INTO "proxy" VALUES (393, 'www.proxy-list.download', 'socks4', '94.182.53.2', 4153, 0, NULL, '2023-12-20 10:08:31.785418', 2, '2023-12-20 10:28:31.785418');
INSERT INTO "proxy" VALUES (394, 'www.proxy-list.download', 'socks4', '92.242.254.12', 38890, 0, NULL, '2023-12-20 10:08:31.834501', 2, '2023-12-20 10:28:31.834501');
INSERT INTO "proxy" VALUES (395, 'www.proxy-list.download', 'socks4', '36.91.54.25', 39529, 0, NULL, '2023-12-20 10:08:32.081254', 2, '2023-12-20 10:28:32.081254');
INSERT INTO "proxy" VALUES (396, 'www.proxy-list.download', 'socks4', '213.216.80.33', 4153, 0, NULL, '2023-12-20 10:08:31.996933', 2, '2023-12-20 10:28:31.996933');
INSERT INTO "proxy" VALUES (397, 'www.proxy-list.download', 'socks4', '222.83.251.211', 4145, 0, NULL, '2023-12-20 10:08:32.037070', 2, '2023-12-20 10:28:32.037070');
INSERT INTO "proxy" VALUES (398, 'www.proxy-list.download', 'socks4', '217.169.211.50', 4153, 0, NULL, '2023-12-20 10:08:32.042063', 2, '2023-12-20 10:28:32.042063');
INSERT INTO "proxy" VALUES (399, 'www.proxy-list.download', 'socks4', '103.135.174.14', 1080, 0, NULL, '2023-12-20 10:08:32.050582', 2, '2023-12-20 10:28:32.050582');
INSERT INTO "proxy" VALUES (400, 'www.proxy-list.download', 'socks5', '192.111.135.21', 4145, 0, NULL, '2023-12-20 10:08:32.020020', 2, '2023-12-20 10:28:32.020020');
INSERT INTO "proxy" VALUES (401, 'www.proxy-list.download', 'socks4', '103.105.237.254', 53977, 0, NULL, '2023-12-20 10:08:32.156259', 2, '2023-12-20 10:28:32.156259');
INSERT INTO "proxy" VALUES (402, 'www.proxy-list.download', 'http', '</body', 80, 0, NULL, '2023-12-20 10:08:39.016311', 2, '2023-12-20 10:28:39.016311');
INSERT INTO "proxy" VALUES (403, 'www.proxy-list.download', 'socks4', '165.90.60.69', 4145, 0, NULL, '2023-12-20 10:08:32.015039', 2, '2023-12-20 10:28:32.015039');
INSERT INTO "proxy" VALUES (404, 'www.proxy-list.download', 'socks4', '78.188.61.165', 4145, 0, NULL, '2023-12-20 10:08:32.161246', 2, '2023-12-20 10:28:32.161246');
INSERT INTO "proxy" VALUES (405, 'www.proxy-list.download', 'socks4', '200.33.152.207', 47926, 0, NULL, '2023-12-20 10:08:32.165268', 2, '2023-12-20 10:28:32.165268');
INSERT INTO "proxy" VALUES (406, 'www.proxy-list.download', 'socks4', '190.109.72.21', 33633, 0, NULL, '2023-12-20 10:08:32.170246', 2, '2023-12-20 10:28:32.170246');
INSERT INTO "proxy" VALUES (407, 'www.proxy-list.download', 'socks4', '116.239.4.130', 4145, 0, NULL, '2023-12-20 10:08:37.190303', 2, '2023-12-20 10:28:37.190303');
INSERT INTO "proxy" VALUES (408, 'www.proxy-list.download', 'socks4', '176.113.209.13', 1080, 0, NULL, '2023-12-20 10:08:37.195210', 2, '2023-12-20 10:28:37.195210');
INSERT INTO "proxy" VALUES (409, 'www.proxy-list.download', 'socks4', '182.253.141.25', 4145, 0, NULL, '2023-12-20 10:08:37.200017', 2, '2023-12-20 10:28:37.200017');
INSERT INTO "proxy" VALUES (410, 'www.proxy-list.download', 'socks4', '168.228.51.197', 41037, 0, NULL, '2023-12-20 10:08:37.204011', 2, '2023-12-20 10:28:37.204011');
INSERT INTO "proxy" VALUES (411, 'www.proxy-list.download', 'socks4', '190.184.201.146', 32606, 0, NULL, '2023-12-20 10:08:37.208011', 2, '2023-12-20 10:28:37.208011');
INSERT INTO "proxy" VALUES (412, 'www.proxy-list.download', 'socks4', '101.255.54.188', 1081, 0, NULL, '2023-12-20 10:08:37.213011', 2, '2023-12-20 10:28:37.213011');
INSERT INTO "proxy" VALUES (413, 'www.proxy-list.download', 'socks4', '14.63.1.108', 4145, 0, NULL, '2023-12-20 10:08:37.217032', 2, '2023-12-20 10:28:37.217032');
INSERT INTO "proxy" VALUES (414, 'www.proxy-list.download', 'https', '    <span class="cf-footer-separator sm', 80, 0, NULL, '2023-12-20 10:08:37.222027', 2, '2023-12-20 10:28:37.222027');
INSERT INTO "proxy" VALUES (415, 'www.proxy-list.download', 'socks4', '103.36.11.161', 4145, 0, NULL, '2023-12-20 10:08:37.226035', 2, '2023-12-20 10:28:37.226035');
INSERT INTO "proxy" VALUES (416, 'www.proxy-list.download', 'socks4', '177.69.45.188', 33219, 0, NULL, '2023-12-20 10:08:37.230779', 2, '2023-12-20 10:28:37.230779');
INSERT INTO "proxy" VALUES (417, 'www.proxy-list.download', 'socks4', '190.144.91.252', 4153, 0, NULL, '2023-12-20 10:08:37.235768', 2, '2023-12-20 10:28:37.235768');
INSERT INTO "proxy" VALUES (418, 'www.proxy-list.download', 'socks4', '202.51.116.34', 5430, 0, NULL, '2023-12-20 10:08:37.240301', 2, '2023-12-20 10:28:37.240301');
INSERT INTO "proxy" VALUES (419, 'www.proxy-list.download', 'socks4', '109.86.219.4', 4145, 0, NULL, '2023-12-20 10:08:37.244317', 2, '2023-12-20 10:28:37.244317');
INSERT INTO "proxy" VALUES (420, 'www.proxy-list.download', 'socks4', '95.84.197.36', 4153, 0, NULL, '2023-12-20 10:08:37.249303', 2, '2023-12-20 10:28:37.249303');
INSERT INTO "proxy" VALUES (421, 'www.proxy-list.download', 'socks4', '200.53.217.25', 32866, 0, NULL, '2023-12-20 10:08:37.253299', 2, '2023-12-20 10:28:37.253299');
INSERT INTO "proxy" VALUES (422, 'www.proxy-list.download', 'socks4', '178.254.174.196', 4145, 0, NULL, '2023-12-20 10:08:37.258315', 2, '2023-12-20 10:28:37.258315');
INSERT INTO "proxy" VALUES (423, 'www.proxy-list.download', 'socks4', '202.151.163.10', 1080, 0, NULL, '2023-12-20 10:08:37.262313', 2, '2023-12-20 10:28:37.262313');
INSERT INTO "proxy" VALUES (424, 'www.proxy-list.download', 'socks4', '221.1.200.242', 43142, 0, NULL, '2023-12-20 10:08:37.267300', 2, '2023-12-20 10:28:37.267300');
INSERT INTO "proxy" VALUES (425, 'www.proxy-list.download', 'socks4', '119.93.234.41', 31622, 0, NULL, '2023-12-20 10:08:37.272324', 2, '2023-12-20 10:28:37.272324');
INSERT INTO "proxy" VALUES (426, 'www.proxy-list.download', 'socks4', '197.234.13.40', 4145, 0, NULL, '2023-12-20 10:08:37.277304', 2, '2023-12-20 10:28:37.277304');
INSERT INTO "proxy" VALUES (427, 'www.proxy-list.download', 'socks4', '103.10.54.81', 4153, 0, NULL, '2023-12-20 10:08:37.282301', 2, '2023-12-20 10:28:37.282301');
INSERT INTO "proxy" VALUES (428, 'www.proxy-list.download', 'socks4', '213.228.147.6', 4153, 0, NULL, '2023-12-20 10:08:37.287084', 2, '2023-12-20 10:28:37.287084');
INSERT INTO "proxy" VALUES (429, 'www.proxy-list.download', 'socks4', '185.81.106.52', 3629, 0, NULL, '2023-12-20 10:08:37.293042', 2, '2023-12-20 10:28:37.293042');
INSERT INTO "proxy" VALUES (430, 'www.proxy-list.download', 'socks4', '92.247.127.217', 4153, 0, NULL, '2023-12-20 10:08:37.299059', 2, '2023-12-20 10:28:37.299059');
INSERT INTO "proxy" VALUES (431, 'www.proxy-list.download', 'socks4', '178.254.148.37', 1080, 0, NULL, '2023-12-20 10:08:37.305046', 2, '2023-12-20 10:28:37.305046');
INSERT INTO "proxy" VALUES (432, 'www.proxy-list.download', 'socks4', '123.231.230.58', 31196, 0, NULL, '2023-12-20 10:08:37.311044', 2, '2023-12-20 10:28:37.311044');
INSERT INTO "proxy" VALUES (433, 'www.proxy-list.download', 'socks4', '162.223.88.228', 7777, 0, NULL, '2023-12-20 10:08:37.316043', 2, '2023-12-20 10:28:37.316043');
INSERT INTO "proxy" VALUES (434, 'www.proxy-list.download', 'socks4', '103.95.98.90', 4153, 0, NULL, '2023-12-20 10:08:37.322042', 2, '2023-12-20 10:28:37.322042');
INSERT INTO "proxy" VALUES (435, 'www.proxy-list.download', 'https', '<title>Access denied | www.proxy-list.download used Cloudflare to restrict access</title', 80, 0, NULL, '2023-12-20 10:08:37.364036', 2, '2023-12-20 10:28:37.364036');
INSERT INTO "proxy" VALUES (436, 'www.proxy-list.download', 'socks4', '117.242.147.5', 4153, 0, NULL, '2023-12-20 10:08:37.359046', 2, '2023-12-20 10:28:37.359046');
INSERT INTO "proxy" VALUES (437, 'www.proxy-list.download', 'https', '        Was this page helpful', 80, 0, NULL, '2023-12-20 10:08:37.354427', 2, '2023-12-20 10:28:37.354427');
INSERT INTO "proxy" VALUES (438, 'www.proxy-list.download', 'socks4', '170.84.48.48', 4145, 0, NULL, '2023-12-20 10:08:37.349429', 2, '2023-12-20 10:28:37.349429');
INSERT INTO "proxy" VALUES (439, 'www.proxy-list.download', 'socks4', '110.232.82.229', 4153, 0, NULL, '2023-12-20 10:08:37.343424', 2, '2023-12-20 10:28:37.343424');
INSERT INTO "proxy" VALUES (440, 'www.proxy-list.download', 'socks4', '62.87.151.138', 40402, 0, NULL, '2023-12-20 10:08:37.338437', 2, '2023-12-20 10:28:37.338437');
INSERT INTO "proxy" VALUES (441, 'www.proxy-list.download', 'socks4', '101.109.41.137', 4153, 0, NULL, '2023-12-20 10:08:37.332741', 2, '2023-12-20 10:28:37.332741');
INSERT INTO "proxy" VALUES (442, 'www.proxy-list.download', 'socks4', '118.70.220.116', 4145, 0, NULL, '2023-12-20 10:08:37.326757', 2, '2023-12-20 10:28:37.326757');
INSERT INTO "proxy" VALUES (443, 'www.proxy-list.download', 'socks4', '123.108.201.133', 35614, 0, NULL, '2023-12-20 10:08:37.417055', 2, '2023-12-20 10:28:37.417055');
INSERT INTO "proxy" VALUES (444, 'www.proxy-list.download', 'socks4', '103.102.142.184', 4145, 0, NULL, '2023-12-20 10:08:37.413053', 2, '2023-12-20 10:28:37.413053');
INSERT INTO "proxy" VALUES (445, 'www.proxy-list.download', 'socks4', '46.99.135.154', 4153, 0, NULL, '2023-12-20 10:08:37.408053', 2, '2023-12-20 10:28:37.408053');
INSERT INTO "proxy" VALUES (446, 'www.proxy-list.download', 'socks4', '150.129.57.251', 4153, 0, NULL, '2023-12-20 10:08:37.403041', 2, '2023-12-20 10:28:37.403041');
INSERT INTO "proxy" VALUES (447, 'www.proxy-list.download', 'socks4', '77.70.35.87', 57509, 0, NULL, '2023-12-20 10:08:37.398055', 2, '2023-12-20 10:28:37.398055');
INSERT INTO "proxy" VALUES (448, 'www.proxy-list.download', 'socks4', '103.123.170.191', 8291, 0, NULL, '2023-12-20 10:08:37.393481', 2, '2023-12-20 10:28:37.393481');
INSERT INTO "proxy" VALUES (449, 'www.proxy-list.download', 'socks4', '88.255.102.22', 1080, 0, NULL, '2023-12-20 10:08:37.388067', 2, '2023-12-20 10:28:37.388067');
INSERT INTO "proxy" VALUES (450, 'www.proxy-list.download', 'socks4', '200.105.179.250', 31247, 0, NULL, '2023-12-20 10:08:37.383075', 2, '2023-12-20 10:28:37.383075');
INSERT INTO "proxy" VALUES (451, 'www.proxy-list.download', 'socks4', '89.201.145.59', 1080, 0, NULL, '2023-12-20 10:08:37.378084', 2, '2023-12-20 10:28:37.378084');
INSERT INTO "proxy" VALUES (452, 'www.proxy-list.download', 'socks4', '177.72.115.161', 31164, 0, NULL, '2023-12-20 10:08:37.369063', 2, '2023-12-20 10:28:37.369063');
INSERT INTO "proxy" VALUES (453, 'www.proxy-list.download', 'socks4', '222.129.39.38', 57114, 0, NULL, '2023-12-20 10:08:37.480374', 2, '2023-12-20 10:28:37.480374');
INSERT INTO "proxy" VALUES (454, 'www.proxy-list.download', 'socks4', '116.58.227.197', 4145, 0, NULL, '2023-12-20 10:08:37.475155', 2, '2023-12-20 10:28:37.475155');
INSERT INTO "proxy" VALUES (455, 'www.proxy-list.download', 'socks4', '191.6.135.93', 4145, 0, NULL, '2023-12-20 10:08:37.471158', 2, '2023-12-20 10:28:37.471158');
INSERT INTO "proxy" VALUES (456, 'www.proxy-list.download', 'socks4', '202.29.226.54', 4153, 0, NULL, '2023-12-20 10:08:37.467116', 2, '2023-12-20 10:28:37.467116');
INSERT INTO "proxy" VALUES (457, 'www.proxy-list.download', 'socks4', '109.201.96.222', 4145, 0, NULL, '2023-12-20 10:08:37.462118', 2, '2023-12-20 10:28:37.462118');
INSERT INTO "proxy" VALUES (458, 'www.proxy-list.download', 'socks4', '103.87.206.249', 41916, 0, NULL, '2023-12-20 10:08:37.458117', 2, '2023-12-20 10:28:37.458117');
INSERT INTO "proxy" VALUES (459, 'www.proxy-list.download', 'socks4', '78.60.203.75', 54471, 0, NULL, '2023-12-20 10:08:37.453104', 2, '2023-12-20 10:28:37.453104');
INSERT INTO "proxy" VALUES (460, 'www.proxy-list.download', 'http', '        Thank you for your feedback', 80, 0, NULL, '2023-12-20 10:08:37.374068', 2, '2023-12-20 10:28:37.374068');
INSERT INTO "proxy" VALUES (461, 'www.proxy-list.download', 'socks4', '182.253.16.171', 4145, 0, NULL, '2023-12-20 10:08:37.448106', 2, '2023-12-20 10:28:37.448106');
INSERT INTO "proxy" VALUES (462, 'www.proxy-list.download', 'socks4', '46.227.36.152', 1080, 0, NULL, '2023-12-20 10:08:37.444104', 2, '2023-12-20 10:28:37.444104');
INSERT INTO "proxy" VALUES (463, 'www.proxy-list.download', 'socks4', '103.107.92.225', 34083, 0, NULL, '2023-12-20 10:08:37.439117', 2, '2023-12-20 10:28:37.439117');
INSERT INTO "proxy" VALUES (464, 'www.proxy-list.download', 'socks4', '125.16.134.218', 8291, 0, NULL, '2023-12-20 10:08:37.434743', 2, '2023-12-20 10:28:37.434743');
INSERT INTO "proxy" VALUES (465, 'www.proxy-list.download', 'socks4', '181.129.52.156', 44665, 0, NULL, '2023-12-20 10:08:37.430743', 2, '2023-12-20 10:28:37.430743');
INSERT INTO "proxy" VALUES (466, 'www.proxy-list.download', 'socks4', '60.12.214.184', 46849, 0, NULL, '2023-12-20 10:08:37.425901', 2, '2023-12-20 10:28:37.425901');
INSERT INTO "proxy" VALUES (467, 'www.proxy-list.download', 'socks4', '45.79.207.110', 9200, 0, NULL, '2023-12-20 10:08:37.422071', 2, '2023-12-20 10:28:37.422071');
INSERT INTO "proxy" VALUES (468, 'www.proxy-list.download', 'socks4', '36.66.172.121', 37552, 0, NULL, '2023-12-20 10:08:37.536516', 2, '2023-12-20 10:28:37.536516');
INSERT INTO "proxy" VALUES (469, 'www.proxy-list.download', 'https', '      <div class="cf-error-footer cf-wrapper w-240 lg', 80, 0, NULL, '2023-12-20 10:08:37.531505', 2, '2023-12-20 10:28:37.531505');
INSERT INTO "proxy" VALUES (470, 'www.proxy-list.download', 'socks4', '36.67.51.186', 31212, 0, NULL, '2023-12-20 10:08:37.526709', 2, '2023-12-20 10:28:37.526709');
INSERT INTO "proxy" VALUES (471, 'www.proxy-list.download', 'socks4', '5.2.200.203', 1080, 0, NULL, '2023-12-20 10:08:37.521734', 2, '2023-12-20 10:28:37.521734');
INSERT INTO "proxy" VALUES (472, 'www.proxy-list.download', 'socks5', '222.129.32.188', 57114, 0, NULL, '2023-12-20 10:08:37.517094', 2, '2023-12-20 10:28:37.517094');
INSERT INTO "proxy" VALUES (473, 'www.proxy-list.download', 'socks4', '119.82.252.106', 40782, 0, NULL, '2023-12-20 10:08:37.512095', 2, '2023-12-20 10:28:37.512095');
INSERT INTO "proxy" VALUES (474, 'www.proxy-list.download', 'socks5', '37.200.66.166', 9051, 0, NULL, '2023-12-20 10:08:37.506098', 2, '2023-12-20 10:28:37.506098');
INSERT INTO "proxy" VALUES (475, 'www.proxy-list.download', 'socks4', '103.87.228.84', 4145, 0, NULL, '2023-12-20 10:08:37.500152', 2, '2023-12-20 10:28:37.500152');
INSERT INTO "proxy" VALUES (476, 'www.proxy-list.download', 'socks4', '187.111.193.81', 44681, 0, NULL, '2023-12-20 10:08:37.490086', 2, '2023-12-20 10:28:37.490086');
INSERT INTO "proxy" VALUES (477, 'www.proxy-list.download', 'socks4', '103.31.157.205', 4145, 0, NULL, '2023-12-20 10:08:37.495098', 2, '2023-12-20 10:28:37.495098');
INSERT INTO "proxy" VALUES (478, 'www.proxy-list.download', 'socks4', '118.97.107.65', 5430, 0, NULL, '2023-12-20 10:08:37.485363', 2, '2023-12-20 10:28:37.485363');
INSERT INTO "proxy" VALUES (479, 'www.proxy-list.download', 'socks4', '185.169.181.23', 4145, 0, NULL, '2023-12-20 10:08:37.598516', 2, '2023-12-20 10:28:37.598516');
INSERT INTO "proxy" VALUES (480, 'www.proxy-list.download', 'socks4', '138.255.227.9', 4153, 0, NULL, '2023-12-20 10:08:37.593510', 2, '2023-12-20 10:28:37.593510');
INSERT INTO "proxy" VALUES (481, 'www.proxy-list.download', 'socks4', '37.221.204.206', 35433, 0, NULL, '2023-12-20 10:08:37.588483', 2, '2023-12-20 10:28:37.588483');
INSERT INTO "proxy" VALUES (482, 'www.proxy-list.download', 'socks4', '103.233.103.237', 4153, 0, NULL, '2023-12-20 10:08:37.583006', 2, '2023-12-20 10:28:37.583006');
INSERT INTO "proxy" VALUES (483, 'www.proxy-list.download', 'socks4', '116.68.162.105', 1080, 0, NULL, '2023-12-20 10:08:37.573011', 2, '2023-12-20 10:28:37.573011');
INSERT INTO "proxy" VALUES (484, 'www.proxy-list.download', 'socks4', '181.41.241.239', 4145, 0, NULL, '2023-12-20 10:08:37.578186', 2, '2023-12-20 10:28:37.578186');
INSERT INTO "proxy" VALUES (485, 'www.proxy-list.download', 'socks5', '121.205.215.44', 4216, 0, NULL, '2023-12-20 10:08:37.568134', 2, '2023-12-20 10:28:37.568134');
INSERT INTO "proxy" VALUES (486, 'www.proxy-list.download', 'socks4', '174.93.149.68', 4153, 0, NULL, '2023-12-20 10:08:37.563158', 2, '2023-12-20 10:28:37.563158');
INSERT INTO "proxy" VALUES (487, 'www.proxy-list.download', 'http', '  <script>(function(){function d(){var b=a.getElementById("cf-footer-item-ip"),c=a.getElementById("cf-footer-ip-reveal");b&&"classList"in b&&(b.classList.remove("hidden"),c.addEventListener("click",function(){c.classList.add("hidden");a.getElementById("cf-footer-ip").classList.remove("hidden")}))}var a=document;document.addEventListener&&a.addEventListener("DOMContentLoaded",d)})();</script', 80, 0, NULL, '2023-12-20 10:08:37.558396', 2, '2023-12-20 10:28:37.558396');
INSERT INTO "proxy" VALUES (488, 'www.proxy-list.download', 'socks4', '209.16.78.27', 54321, 0, NULL, '2023-12-20 10:08:37.553394', 2, '2023-12-20 10:28:37.553394');
INSERT INTO "proxy" VALUES (489, 'www.proxy-list.download', 'socks4', '176.235.164.177', 40276, 0, NULL, '2023-12-20 10:08:37.547374', 2, '2023-12-20 10:28:37.547374');
INSERT INTO "proxy" VALUES (490, 'www.proxy-list.download', 'socks4', '170.0.203.14', 1080, 0, NULL, '2023-12-20 10:08:37.542364', 2, '2023-12-20 10:28:37.542364');
INSERT INTO "proxy" VALUES (491, 'www.proxy-list.download', 'socks4', '176.104.243.57', 4153, 0, NULL, '2023-12-20 10:08:37.658968', 2, '2023-12-20 10:28:37.658968');
INSERT INTO "proxy" VALUES (492, 'www.proxy-list.download', 'socks5', '184.181.217.210', 4145, 0, NULL, '2023-12-20 10:08:37.653959', 2, '2023-12-20 10:28:37.653959');
INSERT INTO "proxy" VALUES (493, 'www.proxy-list.download', 'socks4', '187.111.193.82', 44681, 0, NULL, '2023-12-20 10:08:37.643916', 2, '2023-12-20 10:28:37.643916');
INSERT INTO "proxy" VALUES (494, 'www.proxy-list.download', 'socks4', '36.89.149.173', 4145, 0, NULL, '2023-12-20 10:08:37.638920', 2, '2023-12-20 10:28:37.638920');
INSERT INTO "proxy" VALUES (495, 'www.proxy-list.download', 'socks4', '103.87.169.180', 1088, 0, NULL, '2023-12-20 10:08:37.633406', 2, '2023-12-20 10:28:37.633406');
INSERT INTO "proxy" VALUES (496, 'www.proxy-list.download', 'socks4', '177.21.19.87', 3629, 0, NULL, '2023-12-20 10:08:37.628549', 2, '2023-12-20 10:28:37.628549');
INSERT INTO "proxy" VALUES (497, 'www.proxy-list.download', 'socks4', '45.5.209.12', 4145, 0, NULL, '2023-12-20 10:08:37.623989', 2, '2023-12-20 10:28:37.623989');
INSERT INTO "proxy" VALUES (498, 'www.proxy-list.download', 'socks4', '202.152.38.75', 49420, 0, NULL, '2023-12-20 10:08:37.648951', 2, '2023-12-20 10:28:37.648951');
INSERT INTO "proxy" VALUES (499, 'www.proxy-list.download', 'socks4', '154.73.85.149', 57932, 0, NULL, '2023-12-20 10:08:37.618989', 2, '2023-12-20 10:28:37.618989');
INSERT INTO "proxy" VALUES (500, 'www.proxy-list.download', 'socks4', '85.105.156.8', 4153, 0, NULL, '2023-12-20 10:08:37.614225', 2, '2023-12-20 10:28:37.614225');
INSERT INTO "proxy" VALUES (501, 'www.proxy-list.download', 'socks4', '179.106.150.7', 59624, 0, NULL, '2023-12-20 10:08:37.609000', 2, '2023-12-20 10:28:37.609000');
INSERT INTO "proxy" VALUES (502, 'www.proxy-list.download', 'http', '<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:37.604452', 2, '2023-12-20 10:28:37.604452');
INSERT INTO "proxy" VALUES (503, 'www.proxy-list.download', 'socks4', '177.87.223.194', 49233, 0, NULL, '2023-12-20 10:08:37.739524', 2, '2023-12-20 10:28:37.739524');
INSERT INTO "proxy" VALUES (504, 'www.proxy-list.download', 'socks4', '218.21.96.128', 51080, 0, NULL, '2023-12-20 10:08:37.733518', 2, '2023-12-20 10:28:37.733518');
INSERT INTO "proxy" VALUES (505, 'www.proxy-list.download', 'socks4', '103.78.27.36', 4145, 0, NULL, '2023-12-20 10:08:37.727519', 2, '2023-12-20 10:28:37.727519');
INSERT INTO "proxy" VALUES (506, 'www.proxy-list.download', 'socks4', '202.124.46.101', 4145, 0, NULL, '2023-12-20 10:08:37.721998', 2, '2023-12-20 10:28:37.721998');
INSERT INTO "proxy" VALUES (507, 'www.proxy-list.download', 'socks4', '182.53.200.46', 4153, 0, NULL, '2023-12-20 10:08:37.715997', 2, '2023-12-20 10:28:37.715997');
INSERT INTO "proxy" VALUES (508, 'www.proxy-list.download', 'socks4', '189.44.178.170', 4145, 0, NULL, '2023-12-20 10:08:37.709999', 2, '2023-12-20 10:28:37.709999');
INSERT INTO "proxy" VALUES (509, 'www.proxy-list.download', 'socks4', '88.135.42.145', 4145, 0, NULL, '2023-12-20 10:08:37.703998', 2, '2023-12-20 10:28:37.703998');
INSERT INTO "proxy" VALUES (510, 'www.proxy-list.download', 'socks4', '202.144.201.193', 43870, 0, NULL, '2023-12-20 10:08:37.698002', 2, '2023-12-20 10:28:37.698002');
INSERT INTO "proxy" VALUES (511, 'www.proxy-list.download', 'socks4', '1.10.189.133', 50855, 0, NULL, '2023-12-20 10:08:37.691999', 2, '2023-12-20 10:28:37.691999');
INSERT INTO "proxy" VALUES (512, 'www.proxy-list.download', 'socks4', '103.138.212.242', 31016, 0, NULL, '2023-12-20 10:08:37.685999', 2, '2023-12-20 10:28:37.685999');
INSERT INTO "proxy" VALUES (513, 'www.proxy-list.download', 'socks4', '61.247.178.158', 36187, 0, NULL, '2023-12-20 10:08:37.681002', 2, '2023-12-20 10:28:37.681002');
INSERT INTO "proxy" VALUES (514, 'www.proxy-list.download', 'socks4', '66.135.227.181', 4145, 0, NULL, '2023-12-20 10:08:37.676013', 2, '2023-12-20 10:28:37.676013');
INSERT INTO "proxy" VALUES (515, 'www.proxy-list.download', 'socks4', '121.205.218.107', 1080, 0, NULL, '2023-12-20 10:08:37.670872', 2, '2023-12-20 10:28:37.670872');
INSERT INTO "proxy" VALUES (516, 'www.proxy-list.download', 'socks4', '187.4.165.90', 4153, 0, NULL, '2023-12-20 10:08:37.664944', 2, '2023-12-20 10:28:37.664944');
INSERT INTO "proxy" VALUES (517, 'www.proxy-list.download', 'socks4', '203.189.154.151', 1080, 0, NULL, '2023-12-20 10:08:37.802042', 2, '2023-12-20 10:28:37.802042');
INSERT INTO "proxy" VALUES (518, 'www.proxy-list.download', 'https', '           <span data-translate="error">Error</span', 80, 0, NULL, '2023-12-20 10:08:37.792512', 2, '2023-12-20 10:28:37.792512');
INSERT INTO "proxy" VALUES (519, 'www.proxy-list.download', 'socks4', '118.174.232.106', 48954, 0, NULL, '2023-12-20 10:08:37.786424', 2, '2023-12-20 10:28:37.786424');
INSERT INTO "proxy" VALUES (520, 'www.proxy-list.download', 'socks4', '41.85.189.66', 39475, 0, NULL, '2023-12-20 10:08:37.781425', 2, '2023-12-20 10:28:37.781425');
INSERT INTO "proxy" VALUES (521, 'www.proxy-list.download', 'socks4', '14.115.106.190', 3629, 0, NULL, '2023-12-20 10:08:37.775402', 2, '2023-12-20 10:28:37.775402');
INSERT INTO "proxy" VALUES (522, 'www.proxy-list.download', 'socks4', '201.184.152.138', 44742, 0, NULL, '2023-12-20 10:08:37.770403', 2, '2023-12-20 10:28:37.770403');
INSERT INTO "proxy" VALUES (523, 'www.proxy-list.download', 'socks4', '43.224.118.46', 1080, 0, NULL, '2023-12-20 10:08:37.758405', 2, '2023-12-20 10:28:37.758405');
INSERT INTO "proxy" VALUES (524, 'www.proxy-list.download', 'socks4', '202.146.245.156', 44550, 0, NULL, '2023-12-20 10:08:37.751522', 2, '2023-12-20 10:28:37.751522');
INSERT INTO "proxy" VALUES (525, 'www.proxy-list.download', 'http', '   ', 80, 0, NULL, '2023-12-20 10:08:37.797481', 2, '2023-12-20 10:28:37.797481');
INSERT INTO "proxy" VALUES (526, 'www.proxy-list.download', 'socks4', '84.221.212.22', 4145, 0, NULL, '2023-12-20 10:08:37.764403', 2, '2023-12-20 10:28:37.764403');
INSERT INTO "proxy" VALUES (527, 'www.proxy-list.download', 'socks4', '177.38.39.130', 9090, 0, NULL, '2023-12-20 10:08:37.872045', 2, '2023-12-20 10:28:37.872045');
INSERT INTO "proxy" VALUES (528, 'www.proxy-list.download', 'socks4', '113.53.247.221', 4153, 0, NULL, '2023-12-20 10:08:37.867048', 2, '2023-12-20 10:28:37.867048');
INSERT INTO "proxy" VALUES (529, 'www.proxy-list.download', 'socks4', '82.142.135.10', 4145, 0, NULL, '2023-12-20 10:08:37.862047', 2, '2023-12-20 10:28:37.862047');
INSERT INTO "proxy" VALUES (530, 'www.proxy-list.download', 'socks4', '116.237.143.152', 4145, 0, NULL, '2023-12-20 10:08:37.857052', 2, '2023-12-20 10:28:37.857052');
INSERT INTO "proxy" VALUES (531, 'www.proxy-list.download', 'socks4', '200.119.125.194', 58564, 0, NULL, '2023-12-20 10:08:37.852513', 2, '2023-12-20 10:28:37.852513');
INSERT INTO "proxy" VALUES (532, 'www.proxy-list.download', 'socks4', '202.138.242.6', 38373, 0, NULL, '2023-12-20 10:08:37.848506', 2, '2023-12-20 10:28:37.848506');
INSERT INTO "proxy" VALUES (533, 'www.proxy-list.download', 'socks4', '103.51.44.41', 4145, 0, NULL, '2023-12-20 10:08:37.843408', 2, '2023-12-20 10:28:37.843408');
INSERT INTO "proxy" VALUES (534, 'www.proxy-list.download', 'socks4', '134.249.151.4', 54965, 0, NULL, '2023-12-20 10:08:37.838313', 2, '2023-12-20 10:28:37.838313');
INSERT INTO "proxy" VALUES (535, 'www.proxy-list.download', 'socks4', '201.220.128.88', 3000, 0, NULL, '2023-12-20 10:08:37.746519', 2, '2023-12-20 10:28:37.746519');
INSERT INTO "proxy" VALUES (536, 'www.proxy-list.download', 'socks4', '192.111.139.162', 4145, 0, NULL, '2023-12-20 10:08:37.834301', 2, '2023-12-20 10:28:37.834301');
INSERT INTO "proxy" VALUES (537, 'www.proxy-list.download', 'socks4', '177.93.72.38', 4153, 0, NULL, '2023-12-20 10:08:37.829328', 2, '2023-12-20 10:28:37.829328');
INSERT INTO "proxy" VALUES (538, 'www.proxy-list.download', 'socks4', '103.76.190.81', 4153, 0, NULL, '2023-12-20 10:08:37.825443', 2, '2023-12-20 10:28:37.825443');
INSERT INTO "proxy" VALUES (539, 'www.proxy-list.download', 'socks4', '81.89.69.37', 4153, 0, NULL, '2023-12-20 10:08:37.820624', 2, '2023-12-20 10:28:37.820624');
INSERT INTO "proxy" VALUES (540, 'www.proxy-list.download', 'socks4', '213.81.178.190', 4145, 0, NULL, '2023-12-20 10:08:37.816052', 2, '2023-12-20 10:28:37.816052');
INSERT INTO "proxy" VALUES (541, 'www.proxy-list.download', 'socks4', '201.184.242.26', 4153, 0, NULL, '2023-12-20 10:08:37.812048', 2, '2023-12-20 10:28:37.812048');
INSERT INTO "proxy" VALUES (542, 'www.proxy-list.download', 'socks4', '203.77.240.76', 4145, 0, NULL, '2023-12-20 10:08:37.807051', 2, '2023-12-20 10:28:37.807051');
INSERT INTO "proxy" VALUES (543, 'www.proxy-list.download', 'socks4', '41.76.157.202', 8291, 0, NULL, '2023-12-20 10:08:37.929436', 2, '2023-12-20 10:28:37.929436');
INSERT INTO "proxy" VALUES (544, 'www.proxy-list.download', 'socks4', '187.125.30.122', 4153, 0, NULL, '2023-12-20 10:08:37.925172', 2, '2023-12-20 10:28:37.925172');
INSERT INTO "proxy" VALUES (545, 'www.proxy-list.download', 'socks4', '110.93.13.215', 5678, 0, NULL, '2023-12-20 10:08:37.920172', 2, '2023-12-20 10:28:37.920172');
INSERT INTO "proxy" VALUES (546, 'www.proxy-list.download', 'socks4', '41.79.236.164', 1080, 0, NULL, '2023-12-20 10:08:37.915641', 2, '2023-12-20 10:28:37.915641');
INSERT INTO "proxy" VALUES (547, 'www.proxy-list.download', 'socks4', '213.219.210.180', 4145, 0, NULL, '2023-12-20 10:08:37.910640', 2, '2023-12-20 10:28:37.910640');
INSERT INTO "proxy" VALUES (548, 'www.proxy-list.download', 'socks4', '116.226.98.221', 4145, 0, NULL, '2023-12-20 10:08:37.905641', 2, '2023-12-20 10:28:37.905641');
INSERT INTO "proxy" VALUES (549, 'www.proxy-list.download', 'socks4', '91.205.146.79', 3629, 0, NULL, '2023-12-20 10:08:37.896653', 2, '2023-12-20 10:28:37.896653');
INSERT INTO "proxy" VALUES (550, 'www.proxy-list.download', 'socks4', '202.21.115.94', 44574, 0, NULL, '2023-12-20 10:08:37.901632', 2, '2023-12-20 10:28:37.901632');
INSERT INTO "proxy" VALUES (551, 'www.proxy-list.download', 'socks4', '190.13.82.242', 4153, 0, NULL, '2023-12-20 10:08:37.892356', 2, '2023-12-20 10:28:37.892356');
INSERT INTO "proxy" VALUES (552, 'www.proxy-list.download', 'socks4', '192.111.135.21', 4145, 0, NULL, '2023-12-20 10:08:37.887356', 2, '2023-12-20 10:28:37.887356');
INSERT INTO "proxy" VALUES (553, 'www.proxy-list.download', 'socks5', '98.162.96.41', 4145, 0, NULL, '2023-12-20 10:08:37.881693', 2, '2023-12-20 10:28:37.881693');
INSERT INTO "proxy" VALUES (554, 'www.proxy-list.download', 'socks4', '178.158.23.244', 4145, 0, NULL, '2023-12-20 10:08:37.986464', 2, '2023-12-20 10:28:37.986464');
INSERT INTO "proxy" VALUES (555, 'www.proxy-list.download', 'socks4', '41.242.70.5', 4145, 0, NULL, '2023-12-20 10:08:37.981438', 2, '2023-12-20 10:28:37.981438');
INSERT INTO "proxy" VALUES (556, 'www.proxy-list.download', 'socks4', '185.139.56.133', 4145, 0, NULL, '2023-12-20 10:08:37.976462', 2, '2023-12-20 10:28:37.976462');
INSERT INTO "proxy" VALUES (557, 'www.proxy-list.download', 'https', '          </div', 80, 0, NULL, '2023-12-20 10:08:37.972550', 2, '2023-12-20 10:28:37.972550');
INSERT INTO "proxy" VALUES (558, 'www.proxy-list.download', 'socks4', '1.20.100.111', 41480, 0, NULL, '2023-12-20 10:08:37.968136', 2, '2023-12-20 10:28:37.968136');
INSERT INTO "proxy" VALUES (559, 'www.proxy-list.download', 'socks4', '80.80.167.246', 10801, 0, NULL, '2023-12-20 10:08:37.958140', 2, '2023-12-20 10:28:37.958140');
INSERT INTO "proxy" VALUES (560, 'www.proxy-list.download', 'socks4', '85.175.99.105', 4145, 0, NULL, '2023-12-20 10:08:37.954133', 2, '2023-12-20 10:28:37.954133');
INSERT INTO "proxy" VALUES (561, 'www.proxy-list.download', 'socks4', '103.221.254.102', 54409, 0, NULL, '2023-12-20 10:08:37.949134', 2, '2023-12-20 10:28:37.949134');
INSERT INTO "proxy" VALUES (562, 'www.proxy-list.download', 'socks4', '113.176.88.10', 45587, 0, NULL, '2023-12-20 10:08:37.944136', 2, '2023-12-20 10:28:37.944136');
INSERT INTO "proxy" VALUES (563, 'www.proxy-list.download', 'socks4', '94.74.68.72', 4153, 0, NULL, '2023-12-20 10:08:37.876684', 2, '2023-12-20 10:28:37.876684');
INSERT INTO "proxy" VALUES (564, 'www.proxy-list.download', 'socks4', '159.224.243.185', 61303, 0, NULL, '2023-12-20 10:08:37.938427', 2, '2023-12-20 10:28:37.938427');
INSERT INTO "proxy" VALUES (565, 'www.proxy-list.download', 'socks4', '186.211.83.6', 1080, 0, NULL, '2023-12-20 10:08:37.963132', 2, '2023-12-20 10:28:37.963132');
INSERT INTO "proxy" VALUES (566, 'www.proxy-list.download', 'socks4', '41.169.70.219', 31255, 0, NULL, '2023-12-20 10:08:37.934437', 2, '2023-12-20 10:28:37.934437');
INSERT INTO "proxy" VALUES (567, 'www.proxy-list.download', 'socks4', '194.67.9.178', 4153, 0, NULL, '2023-12-20 10:08:38.052534', 2, '2023-12-20 10:28:38.052534');
INSERT INTO "proxy" VALUES (568, 'www.proxy-list.download', 'socks4', '188.65.237.16', 3629, 0, NULL, '2023-12-20 10:08:38.047541', 2, '2023-12-20 10:28:38.047541');
INSERT INTO "proxy" VALUES (569, 'www.proxy-list.download', 'socks4', '197.211.209.236', 61253, 0, NULL, '2023-12-20 10:08:38.041616', 2, '2023-12-20 10:28:38.041616');
INSERT INTO "proxy" VALUES (570, 'www.proxy-list.download', 'socks4', '103.106.32.105', 31110, 0, NULL, '2023-12-20 10:08:38.036393', 2, '2023-12-20 10:28:38.036393');
INSERT INTO "proxy" VALUES (571, 'www.proxy-list.download', 'socks4', '82.209.216.156', 1080, 0, NULL, '2023-12-20 10:08:38.031196', 2, '2023-12-20 10:28:38.031196');
INSERT INTO "proxy" VALUES (572, 'www.proxy-list.download', 'socks4', '92.86.92.126', 42740, 0, NULL, '2023-12-20 10:08:38.026195', 2, '2023-12-20 10:28:38.026195');
INSERT INTO "proxy" VALUES (573, 'www.proxy-list.download', 'socks4', '104.248.48.176', 30588, 0, NULL, '2023-12-20 10:08:38.021198', 2, '2023-12-20 10:28:38.021198');
INSERT INTO "proxy" VALUES (574, 'www.proxy-list.download', 'socks4', '84.224.46.220', 4145, 0, NULL, '2023-12-20 10:08:38.016206', 2, '2023-12-20 10:28:38.016206');
INSERT INTO "proxy" VALUES (575, 'www.proxy-list.download', 'socks4', '203.150.113.197', 14153, 0, NULL, '2023-12-20 10:08:38.011207', 2, '2023-12-20 10:28:38.011207');
INSERT INTO "proxy" VALUES (576, 'www.proxy-list.download', 'socks5', '159.65.69.186', 9200, 0, NULL, '2023-12-20 10:08:38.006208', 2, '2023-12-20 10:28:38.006208');
INSERT INTO "proxy" VALUES (577, 'www.proxy-list.download', 'socks4', '103.208.200.222', 41151, 0, NULL, '2023-12-20 10:08:38.001439', 2, '2023-12-20 10:28:38.001439');
INSERT INTO "proxy" VALUES (578, 'www.proxy-list.download', 'https', ' ', 80, 0, NULL, '2023-12-20 10:08:37.996438', 2, '2023-12-20 10:28:37.996438');
INSERT INTO "proxy" VALUES (579, 'www.proxy-list.download', 'socks4', '85.128.16.46', 1080, 0, NULL, '2023-12-20 10:08:37.991453', 2, '2023-12-20 10:28:37.991453');
INSERT INTO "proxy" VALUES (580, 'www.proxy-list.download', 'socks4', '61.141.21.34', 1080, 0, NULL, '2023-12-20 10:08:38.126377', 2, '2023-12-20 10:28:38.126377');
INSERT INTO "proxy" VALUES (581, 'www.proxy-list.download', 'socks4', '184.178.172.14', 4145, 0, NULL, '2023-12-20 10:08:38.121364', 2, '2023-12-20 10:28:38.121364');
INSERT INTO "proxy" VALUES (582, 'www.proxy-list.download', 'socks4', '84.243.108.186', 3629, 0, NULL, '2023-12-20 10:08:38.116363', 2, '2023-12-20 10:28:38.116363');
INSERT INTO "proxy" VALUES (583, 'www.proxy-list.download', 'socks4', '187.189.81.144', 4153, 0, NULL, '2023-12-20 10:08:38.111363', 2, '2023-12-20 10:28:38.111363');
INSERT INTO "proxy" VALUES (584, 'www.proxy-list.download', 'socks4', '189.45.172.74', 4153, 0, NULL, '2023-12-20 10:08:38.105501', 2, '2023-12-20 10:28:38.105501');
INSERT INTO "proxy" VALUES (585, 'www.proxy-list.download', 'socks4', '109.238.222.1', 4153, 0, NULL, '2023-12-20 10:08:38.100374', 2, '2023-12-20 10:28:38.100374');
INSERT INTO "proxy" VALUES (586, 'www.proxy-list.download', 'socks4', '103.66.233.137', 4145, 0, NULL, '2023-12-20 10:08:38.095375', 2, '2023-12-20 10:28:38.095375');
INSERT INTO "proxy" VALUES (587, 'www.proxy-list.download', 'socks4', '51.254.182.63', 44241, 0, NULL, '2023-12-20 10:08:38.091359', 2, '2023-12-20 10:28:38.091359');
INSERT INTO "proxy" VALUES (588, 'www.proxy-list.download', 'socks4', '116.199.170.65', 4145, 0, NULL, '2023-12-20 10:08:38.086330', 2, '2023-12-20 10:28:38.086330');
INSERT INTO "proxy" VALUES (589, 'www.proxy-list.download', 'socks4', '200.218.242.33', 4153, 0, NULL, '2023-12-20 10:08:38.081331', 2, '2023-12-20 10:28:38.081331');
INSERT INTO "proxy" VALUES (590, 'www.proxy-list.download', 'socks4', '186.147.235.6', 4153, 0, NULL, '2023-12-20 10:08:38.076536', 2, '2023-12-20 10:28:38.076536');
INSERT INTO "proxy" VALUES (591, 'www.proxy-list.download', 'socks4', '103.15.83.74', 30023, 0, NULL, '2023-12-20 10:08:38.070548', 2, '2023-12-20 10:28:38.070548');
INSERT INTO "proxy" VALUES (592, 'www.proxy-list.download', 'socks4', '103.220.207.17', 56250, 0, NULL, '2023-12-20 10:08:38.065541', 2, '2023-12-20 10:28:38.065541');
INSERT INTO "proxy" VALUES (593, 'www.proxy-list.download', 'socks4', '185.152.12.49', 54680, 0, NULL, '2023-12-20 10:08:38.058535', 2, '2023-12-20 10:28:38.058535');
INSERT INTO "proxy" VALUES (594, 'www.proxy-list.download', 'http', '      <div class="feedback-hidden py-8 text-center" id="error-feedback"', 80, 0, NULL, '2023-12-20 10:08:38.185304', 2, '2023-12-20 10:28:38.185304');
INSERT INTO "proxy" VALUES (595, 'www.proxy-list.download', 'socks4', '189.91.84.25', 43907, 0, NULL, '2023-12-20 10:08:38.176304', 2, '2023-12-20 10:28:38.176304');
INSERT INTO "proxy" VALUES (596, 'www.proxy-list.download', 'socks4', '185.75.5.158', 43131, 0, NULL, '2023-12-20 10:08:38.171305', 2, '2023-12-20 10:28:38.171305');
INSERT INTO "proxy" VALUES (597, 'www.proxy-list.download', 'socks4', '190.215.117.69', 4153, 0, NULL, '2023-12-20 10:08:38.180306', 2, '2023-12-20 10:28:38.180306');
INSERT INTO "proxy" VALUES (598, 'www.proxy-list.download', 'socks4', '189.52.165.134', 1080, 0, NULL, '2023-12-20 10:08:38.621766', 2, '2023-12-20 10:28:38.621766');
INSERT INTO "proxy" VALUES (599, 'www.proxy-list.download', 'socks4', '202.144.201.35', 43870, 0, NULL, '2023-12-20 10:08:38.253100', 2, '2023-12-20 10:28:38.253100');
INSERT INTO "proxy" VALUES (600, 'www.proxy-list.download', 'socks4', '5.17.89.13', 4145, 0, NULL, '2023-12-20 10:08:38.145966', 2, '2023-12-20 10:28:38.145966');
INSERT INTO "proxy" VALUES (601, 'www.proxy-list.download', 'socks4', '45.116.2.17', 4145, 0, NULL, '2023-12-20 10:08:38.135928', 2, '2023-12-20 10:28:38.135928');
INSERT INTO "proxy" VALUES (602, 'www.proxy-list.download', 'socks4', '195.93.173.24', 9050, 0, NULL, '2023-12-20 10:08:38.191543', 2, '2023-12-20 10:28:38.191543');
INSERT INTO "proxy" VALUES (603, 'www.proxy-list.download', 'socks4', '176.10.45.206', 1080, 0, NULL, '2023-12-20 10:08:38.382231', 2, '2023-12-20 10:28:38.382231');
INSERT INTO "proxy" VALUES (604, 'www.proxy-list.download', 'socks4', '86.125.112.230', 30897, 0, NULL, '2023-12-20 10:08:38.131375', 2, '2023-12-20 10:28:38.131375');
INSERT INTO "proxy" VALUES (605, 'www.proxy-list.download', 'socks5', '222.129.36.157', 57114, 0, NULL, '2023-12-20 10:08:38.141422', 2, '2023-12-20 10:28:38.141422');
INSERT INTO "proxy" VALUES (606, 'www.proxy-list.download', 'socks4', '177.84.146.29', 32720, 0, NULL, '2023-12-20 10:08:38.353210', 2, '2023-12-20 10:28:38.353210');
INSERT INTO "proxy" VALUES (607, 'www.proxy-list.download', 'socks4', '24.122.219.155', 4153, 0, NULL, '2023-12-20 10:08:38.261977', 2, '2023-12-20 10:28:38.261977');
INSERT INTO "proxy" VALUES (608, 'www.proxy-list.download', 'socks4', '93.83.108.58', 4153, 0, NULL, '2023-12-20 10:08:38.559905', 2, '2023-12-20 10:28:38.559905');
INSERT INTO "proxy" VALUES (609, 'www.proxy-list.download', 'socks4', '113.53.29.218', 45189, 0, NULL, '2023-12-20 10:08:38.505137', 2, '2023-12-20 10:28:38.505137');
INSERT INTO "proxy" VALUES (610, 'www.proxy-list.download', 'socks4', '37.252.64.48', 38571, 0, NULL, '2023-12-20 10:08:38.160892', 2, '2023-12-20 10:28:38.160892');
INSERT INTO "proxy" VALUES (611, 'www.proxy-list.download', 'socks4', '191.6.93.191', 4145, 0, NULL, '2023-12-20 10:08:38.155937', 2, '2023-12-20 10:28:38.155937');
INSERT INTO "proxy" VALUES (612, 'www.proxy-list.download', 'socks4', '185.136.150.252', 4145, 0, NULL, '2023-12-20 10:08:38.196532', 2, '2023-12-20 10:28:38.196532');
INSERT INTO "proxy" VALUES (613, 'www.proxy-list.download', 'socks4', '101.255.125.57', 4145, 0, NULL, '2023-12-20 10:08:38.453124', 2, '2023-12-20 10:28:38.453124');
INSERT INTO "proxy" VALUES (614, 'www.proxy-list.download', 'https', '<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:38.395612', 2, '2023-12-20 10:28:38.395612');
INSERT INTO "proxy" VALUES (615, 'www.proxy-list.download', 'http', '<script defer src="https', 80, 0, NULL, '2023-12-20 10:08:38.421408', 2, '2023-12-20 10:28:38.421408');
INSERT INTO "proxy" VALUES (616, 'www.proxy-list.download', 'socks4', '103.84.39.101', 30740, 0, NULL, '2023-12-20 10:08:38.629763', 2, '2023-12-20 10:28:38.629763');
INSERT INTO "proxy" VALUES (617, 'www.proxy-list.download', 'socks4', '190.90.140.55', 50419, 0, NULL, '2023-12-20 10:08:38.430408', 2, '2023-12-20 10:28:38.430408');
INSERT INTO "proxy" VALUES (618, 'www.proxy-list.download', 'socks4', '181.113.135.254', 50083, 0, NULL, '2023-12-20 10:08:38.722029', 2, '2023-12-20 10:28:38.722029');
INSERT INTO "proxy" VALUES (619, 'www.proxy-list.download', 'socks5', '121.205.213.141', 4216, 0, NULL, '2023-12-20 10:08:38.509151', 2, '2023-12-20 10:28:38.509151');
INSERT INTO "proxy" VALUES (620, 'www.proxy-list.download', 'socks4', '181.129.62.67', 40729, 0, NULL, '2023-12-20 10:08:38.439127', 2, '2023-12-20 10:28:38.439127');
INSERT INTO "proxy" VALUES (621, 'www.proxy-list.download', 'socks4', '80.240.250.222', 4145, 0, NULL, '2023-12-20 10:08:38.150612', 2, '2023-12-20 10:28:38.150612');
INSERT INTO "proxy" VALUES (622, 'www.proxy-list.download', 'socks4', '110.77.232.153', 4145, 0, NULL, '2023-12-20 10:08:38.295383', 2, '2023-12-20 10:28:38.295383');
INSERT INTO "proxy" VALUES (623, 'www.proxy-list.download', 'http', '           <span>1015</span', 80, 0, NULL, '2023-12-20 10:08:38.236816', 2, '2023-12-20 10:28:38.236816');
INSERT INTO "proxy" VALUES (624, 'www.proxy-list.download', 'socks4', '168.227.146.34', 10801, 0, NULL, '2023-12-20 10:08:38.820988', 2, '2023-12-20 10:28:38.820988');
INSERT INTO "proxy" VALUES (625, 'www.proxy-list.download', 'http', '      </header', 80, 0, NULL, '2023-12-20 10:08:38.400597', 2, '2023-12-20 10:28:38.400597');
INSERT INTO "proxy" VALUES (626, 'www.proxy-list.download', 'socks5', '123.56.89.191', 1081, 0, NULL, '2023-12-20 10:08:38.386943', 2, '2023-12-20 10:28:38.386943');
INSERT INTO "proxy" VALUES (627, 'www.proxy-list.download', 'socks4', '103.36.11.174', 4145, 0, NULL, '2023-12-20 10:08:38.242713', 2, '2023-12-20 10:28:38.242713');
INSERT INTO "proxy" VALUES (628, 'www.proxy-list.download', 'socks4', '103.248.30.2', 5678, 0, NULL, '2023-12-20 10:08:38.217413', 2, '2023-12-20 10:28:38.217413');
INSERT INTO "proxy" VALUES (629, 'www.proxy-list.download', 'socks4', '79.106.224.231', 58437, 0, NULL, '2023-12-20 10:08:38.498585', 2, '2023-12-20 10:28:38.498585');
INSERT INTO "proxy" VALUES (630, 'www.proxy-list.download', 'socks4', '182.52.30.158', 4153, 0, NULL, '2023-12-20 10:08:38.221756', 2, '2023-12-20 10:28:38.221756');
INSERT INTO "proxy" VALUES (631, 'www.proxy-list.download', 'socks4', '117.220.171.209', 4153, 0, NULL, '2023-12-20 10:08:38.257977', 2, '2023-12-20 10:28:38.257977');
INSERT INTO "proxy" VALUES (632, 'www.proxy-list.download', 'socks4', '109.75.34.152', 59341, 0, NULL, '2023-12-20 10:08:38.443141', 2, '2023-12-20 10:28:38.443141');
INSERT INTO "proxy" VALUES (633, 'www.proxy-list.download', 'socks4', '103.114.97.74', 1080, 0, NULL, '2023-12-20 10:08:38.289385', 2, '2023-12-20 10:28:38.289385');
INSERT INTO "proxy" VALUES (634, 'www.proxy-list.download', 'https', '   ', 80, 0, NULL, '2023-12-20 10:08:38.377198', 2, '2023-12-20 10:28:38.377198');
INSERT INTO "proxy" VALUES (635, 'www.proxy-list.download', 'socks4', '51.83.185.71', 9095, 0, NULL, '2023-12-20 10:08:38.363200', 2, '2023-12-20 10:28:38.363200');
INSERT INTO "proxy" VALUES (636, 'www.proxy-list.download', 'socks4', '188.43.117.38', 51307, 0, NULL, '2023-12-20 10:08:38.373198', 2, '2023-12-20 10:28:38.373198');
INSERT INTO "proxy" VALUES (637, 'www.proxy-list.download', 'socks4', '89.25.23.211', 4153, 0, NULL, '2023-12-20 10:08:38.368210', 2, '2023-12-20 10:28:38.368210');
INSERT INTO "proxy" VALUES (638, 'www.proxy-list.download', 'socks4', '119.82.251.250', 31678, 0, NULL, '2023-12-20 10:08:38.202411', 2, '2023-12-20 10:28:38.202411');
INSERT INTO "proxy" VALUES (639, 'www.proxy-list.download', 'socks4', '110.172.162.249', 34047, 0, NULL, '2023-12-20 10:08:38.310381', 2, '2023-12-20 10:28:38.310381');
INSERT INTO "proxy" VALUES (640, 'www.proxy-list.download', 'socks4', '103.76.20.155', 43818, 0, NULL, '2023-12-20 10:08:38.247611', 2, '2023-12-20 10:28:38.247611');
INSERT INTO "proxy" VALUES (641, 'www.proxy-list.download', 'socks4', '103.52.209.41', 1080, 0, NULL, '2023-12-20 10:08:38.359203', 2, '2023-12-20 10:28:38.359203');
INSERT INTO "proxy" VALUES (642, 'www.proxy-list.download', 'socks4', '106.240.89.60', 4145, 0, NULL, '2023-12-20 10:08:38.300395', 2, '2023-12-20 10:28:38.300395');
INSERT INTO "proxy" VALUES (643, 'www.proxy-list.download', 'socks5', '72.195.34.41', 4145, 0, NULL, '2023-12-20 10:08:38.267711', 2, '2023-12-20 10:28:38.267711');
INSERT INTO "proxy" VALUES (644, 'www.proxy-list.download', 'socks5', '192.111.129.145', 16894, 0, NULL, '2023-12-20 10:08:38.726035', 2, '2023-12-20 10:28:38.726035');
INSERT INTO "proxy" VALUES (645, 'www.proxy-list.download', 'socks4', '187.45.170.142', 4153, 0, NULL, '2023-12-20 10:08:38.426411', 2, '2023-12-20 10:28:38.426411');
INSERT INTO "proxy" VALUES (646, 'www.proxy-list.download', 'socks4', '196.192.181.235', 4153, 0, NULL, '2023-12-20 10:08:38.896169', 2, '2023-12-20 10:28:38.896169');
INSERT INTO "proxy" VALUES (647, 'www.proxy-list.download', 'socks4', '78.38.123.110', 4153, 0, NULL, '2023-12-20 10:08:38.785945', 2, '2023-12-20 10:28:38.785945');
INSERT INTO "proxy" VALUES (648, 'www.proxy-list.download', 'socks4', '80.107.16.17', 4145, 0, NULL, '2023-12-20 10:08:38.933641', 2, '2023-12-20 10:28:38.933641');
INSERT INTO "proxy" VALUES (649, 'www.proxy-list.download', 'socks4', '182.53.96.56', 4145, 0, NULL, '2023-12-20 10:08:38.226595', 2, '2023-12-20 10:28:38.226595');
INSERT INTO "proxy" VALUES (650, 'www.proxy-list.download', 'socks4', '180.180.175.37', 4145, 0, NULL, '2023-12-20 10:08:38.749568', 2, '2023-12-20 10:28:38.749568');
INSERT INTO "proxy" VALUES (651, 'www.proxy-list.download', 'socks4', '168.119.37.152', 10243, 0, NULL, '2023-12-20 10:08:38.480851', 2, '2023-12-20 10:28:38.480851');
INSERT INTO "proxy" VALUES (652, 'www.proxy-list.download', 'socks4', '186.225.250.26', 53084, 0, NULL, '2023-12-20 10:08:38.704033', 2, '2023-12-20 10:28:38.704033');
INSERT INTO "proxy" VALUES (653, 'www.proxy-list.download', 'socks4', '103.61.198.234', 4145, 0, NULL, '2023-12-20 10:08:38.537276', 2, '2023-12-20 10:28:38.537276');
INSERT INTO "proxy" VALUES (654, 'www.proxy-list.download', 'socks4', '154.66.245.47', 54925, 0, NULL, '2023-12-20 10:08:38.634969', 2, '2023-12-20 10:28:38.634969');
INSERT INTO "proxy" VALUES (655, 'www.proxy-list.download', 'socks4', '91.247.250.215', 4145, 0, NULL, '2023-12-20 10:08:38.685646', 2, '2023-12-20 10:28:38.685646');
INSERT INTO "proxy" VALUES (656, 'www.proxy-list.download', 'socks4', '46.227.37.37', 1088, 0, NULL, '2023-12-20 10:08:38.458125', 2, '2023-12-20 10:28:38.458125');
INSERT INTO "proxy" VALUES (657, 'www.proxy-list.download', 'socks4', '46.232.133.26', 4153, 0, NULL, '2023-12-20 10:08:38.591932', 2, '2023-12-20 10:28:38.591932');
INSERT INTO "proxy" VALUES (658, 'www.proxy-list.download', 'socks4', '79.101.40.114', 4153, 0, NULL, '2023-12-20 10:08:38.404610', 2, '2023-12-20 10:28:38.404610');
INSERT INTO "proxy" VALUES (659, 'www.proxy-list.download', 'socks4', '190.121.142.166', 4153, 0, NULL, '2023-12-20 10:08:38.344747', 2, '2023-12-20 10:28:38.344747');
INSERT INTO "proxy" VALUES (660, 'www.proxy-list.download', 'socks4', '43.248.24.234', 4145, 0, NULL, '2023-12-20 10:08:38.434420', 2, '2023-12-20 10:28:38.434420');
INSERT INTO "proxy" VALUES (661, 'www.proxy-list.download', 'socks4', '103.133.82.125', 4153, 0, NULL, '2023-12-20 10:08:38.541276', 2, '2023-12-20 10:28:38.541276');
INSERT INTO "proxy" VALUES (662, 'www.proxy-list.download', 'socks5', '106.52.187.222', 1080, 0, NULL, '2023-12-20 10:08:38.325393', 2, '2023-12-20 10:28:38.325393');
INSERT INTO "proxy" VALUES (663, 'www.proxy-list.download', 'socks4', '103.206.253.59', 53934, 0, NULL, '2023-12-20 10:08:38.212463', 2, '2023-12-20 10:28:38.212463');
INSERT INTO "proxy" VALUES (664, 'www.proxy-list.download', 'socks4', '36.67.66.202', 5678, 0, NULL, '2023-12-20 10:08:38.493597', 2, '2023-12-20 10:28:38.493597');
INSERT INTO "proxy" VALUES (665, 'www.proxy-list.download', 'socks4', '176.227.188.16', 4145, 0, NULL, '2023-12-20 10:08:38.231601', 2, '2023-12-20 10:28:38.231601');
INSERT INTO "proxy" VALUES (666, 'www.proxy-list.download', 'socks4', '78.8.189.147', 52036, 0, NULL, '2023-12-20 10:08:38.408611', 2, '2023-12-20 10:28:38.408611');
INSERT INTO "proxy" VALUES (667, 'www.proxy-list.download', 'http', '        <button class="border border-solid bg-white cf-button cursor-pointer ml-4 px-4 py-2 rounded" id="feedback-button-no" type="button">No</button', 80, 0, NULL, '2023-12-20 10:08:38.330383', 2, '2023-12-20 10:28:38.330383');
INSERT INTO "proxy" VALUES (668, 'www.proxy-list.download', 'socks4', '186.250.20.13', 4153, 0, NULL, '2023-12-20 10:08:38.613752', 2, '2023-12-20 10:28:38.613752');
INSERT INTO "proxy" VALUES (669, 'www.proxy-list.download', 'socks4', '89.218.169.122', 4153, 0, NULL, '2023-12-20 10:08:38.272710', 2, '2023-12-20 10:28:38.272710');
INSERT INTO "proxy" VALUES (670, 'www.proxy-list.download', 'socks4', '84.247.236.114', 4153, 0, NULL, '2023-12-20 10:08:38.735021', 2, '2023-12-20 10:28:38.735021');
INSERT INTO "proxy" VALUES (671, 'www.proxy-list.download', 'socks4', '84.47.226.66', 4145, 0, NULL, '2023-12-20 10:08:38.207412', 2, '2023-12-20 10:28:38.207412');
INSERT INTO "proxy" VALUES (672, 'www.proxy-list.download', 'socks4', '61.148.199.206', 4145, 0, NULL, '2023-12-20 10:08:38.417410', 2, '2023-12-20 10:28:38.417410');
INSERT INTO "proxy" VALUES (673, 'www.proxy-list.download', 'socks4', '41.217.242.11', 47599, 0, NULL, '2023-12-20 10:08:38.316384', 2, '2023-12-20 10:28:38.316384');
INSERT INTO "proxy" VALUES (674, 'www.proxy-list.download', 'socks4', '154.79.242.178', 10801, 0, NULL, '2023-12-20 10:08:38.391611', 2, '2023-12-20 10:28:38.391611');
INSERT INTO "proxy" VALUES (675, 'www.proxy-list.download', 'socks4', '185.51.92.84', 51327, 0, NULL, '2023-12-20 10:08:38.648062', 2, '2023-12-20 10:28:38.648062');
INSERT INTO "proxy" VALUES (676, 'www.proxy-list.download', 'socks4', '93.64.183.162', 32889, 0, NULL, '2023-12-20 10:08:38.758488', 2, '2023-12-20 10:28:38.758488');
INSERT INTO "proxy" VALUES (677, 'www.proxy-list.download', 'socks4', '200.41.182.243', 4145, 0, NULL, '2023-12-20 10:08:38.604497', 2, '2023-12-20 10:28:38.604497');
INSERT INTO "proxy" VALUES (678, 'www.proxy-list.download', 'socks4', '80.71.112.107', 55243, 0, NULL, '2023-12-20 10:08:38.600503', 2, '2023-12-20 10:28:38.600503');
INSERT INTO "proxy" VALUES (679, 'www.proxy-list.download', 'socks4', '118.175.93.148', 59403, 0, NULL, '2023-12-20 10:08:38.653046', 2, '2023-12-20 10:28:38.653046');
INSERT INTO "proxy" VALUES (680, 'www.proxy-list.download', 'socks4', '80.71.112.114', 55243, 0, NULL, '2023-12-20 10:08:38.279351', 2, '2023-12-20 10:28:38.279351');
INSERT INTO "proxy" VALUES (681, 'www.proxy-list.download', 'https', '         <span class="inline-block md', 80, 0, NULL, '2023-12-20 10:08:38.943178', 2, '2023-12-20 10:28:38.943178');
INSERT INTO "proxy" VALUES (682, 'www.proxy-list.download', 'socks4', '217.72.1.254', 30357, 0, NULL, '2023-12-20 10:08:38.413600', 2, '2023-12-20 10:28:38.413600');
INSERT INTO "proxy" VALUES (683, 'www.proxy-list.download', 'socks4', '77.234.235.174', 4153, 0, NULL, '2023-12-20 10:08:38.349656', 2, '2023-12-20 10:28:38.349656');
INSERT INTO "proxy" VALUES (684, 'www.proxy-list.download', 'socks4', '222.217.68.17', 35165, 0, NULL, '2023-12-20 10:08:38.929627', 2, '2023-12-20 10:28:38.929627');
INSERT INTO "proxy" VALUES (685, 'www.proxy-list.download', 'socks4', '181.166.106.224', 42315, 0, NULL, '2023-12-20 10:08:38.638971', 2, '2023-12-20 10:28:38.638971');
INSERT INTO "proxy" VALUES (686, 'www.proxy-list.download', 'socks4', '103.225.228.21', 31094, 0, NULL, '2023-12-20 10:08:38.532466', 2, '2023-12-20 10:28:38.532466');
INSERT INTO "proxy" VALUES (687, 'www.proxy-list.download', 'socks4', '43.245.94.226', 4153, 0, NULL, '2023-12-20 10:08:38.484855', 2, '2023-12-20 10:28:38.484855');
INSERT INTO "proxy" VALUES (688, 'www.proxy-list.download', 'socks4', '201.159.95.125', 39618, 0, NULL, '2023-12-20 10:08:38.564907', 2, '2023-12-20 10:28:38.564907');
INSERT INTO "proxy" VALUES (689, 'www.proxy-list.download', 'socks4', '180.167.201.241', 4145, 0, NULL, '2023-12-20 10:08:38.657944', 2, '2023-12-20 10:28:38.657944');
INSERT INTO "proxy" VALUES (690, 'www.proxy-list.download', 'socks4', '204.101.61.82', 4145, 0, NULL, '2023-12-20 10:08:38.595929', 2, '2023-12-20 10:28:38.595929');
INSERT INTO "proxy" VALUES (691, 'www.proxy-list.download', 'socks4', '125.27.10.84', 4153, 0, NULL, '2023-12-20 10:08:38.699021', 2, '2023-12-20 10:28:38.699021');
INSERT INTO "proxy" VALUES (692, 'www.proxy-list.download', 'socks4', '138.68.73.161', 1080, 0, NULL, '2023-12-20 10:08:38.476138', 2, '2023-12-20 10:28:38.476138');
INSERT INTO "proxy" VALUES (693, 'www.proxy-list.download', 'socks4', '200.199.8.113', 35938, 0, NULL, '2023-12-20 10:08:38.467145', 2, '2023-12-20 10:28:38.467145');
INSERT INTO "proxy" VALUES (694, 'www.proxy-list.download', 'socks4', '202.62.37.187', 4153, 0, NULL, '2023-12-20 10:08:38.712037', 2, '2023-12-20 10:28:38.712037');
INSERT INTO "proxy" VALUES (695, 'www.proxy-list.download', 'http', '<meta name="viewport" content="width=device-width,initial-scale=1" /', 80, 0, NULL, '2023-12-20 10:08:38.885590', 2, '2023-12-20 10:28:38.885590');
INSERT INTO "proxy" VALUES (696, 'www.proxy-list.download', 'socks4', '177.105.68.179', 4153, 0, NULL, '2023-12-20 10:08:38.717021', 2, '2023-12-20 10:28:38.717021');
INSERT INTO "proxy" VALUES (697, 'www.proxy-list.download', 'socks4', '95.107.199.90', 4145, 0, NULL, '2023-12-20 10:08:38.608497', 2, '2023-12-20 10:28:38.608497');
INSERT INTO "proxy" VALUES (698, 'www.proxy-list.download', 'socks4', '46.188.82.63', 4153, 0, NULL, '2023-12-20 10:08:38.625765', 2, '2023-12-20 10:28:38.625765');
INSERT INTO "proxy" VALUES (699, 'www.proxy-list.download', 'http', '      Your IP', 80, 0, NULL, '2023-12-20 10:08:38.546903', 2, '2023-12-20 10:28:38.546903');
INSERT INTO "proxy" VALUES (700, 'www.proxy-list.download', 'socks4', '103.12.151.6', 37983, 0, NULL, '2023-12-20 10:08:38.514455', 2, '2023-12-20 10:28:38.514455');
INSERT INTO "proxy" VALUES (701, 'www.proxy-list.download', 'socks4', '183.89.34.76', 4145, 0, NULL, '2023-12-20 10:08:38.708022', 2, '2023-12-20 10:28:38.708022');
INSERT INTO "proxy" VALUES (702, 'www.proxy-list.download', 'https', '  <script', 80, 0, NULL, '2023-12-20 10:08:38.776223', 2, '2023-12-20 10:28:38.776223');
INSERT INTO "proxy" VALUES (703, 'www.proxy-list.download', 'socks4', '109.245.214.49', 59278, 0, NULL, '2023-12-20 10:08:38.554916', 2, '2023-12-20 10:28:38.554916');
INSERT INTO "proxy" VALUES (704, 'www.proxy-list.download', 'socks4', '203.217.169.217', 4153, 0, NULL, '2023-12-20 10:08:38.528460', 2, '2023-12-20 10:28:38.528460');
INSERT INTO "proxy" VALUES (705, 'www.proxy-list.download', 'socks4', '50.84.210.194', 39593, 0, NULL, '2023-12-20 10:08:38.801648', 2, '2023-12-20 10:28:38.801648');
INSERT INTO "proxy" VALUES (706, 'www.proxy-list.download', 'socks4', '210.245.51.14', 4145, 0, NULL, '2023-12-20 10:08:38.855551', 2, '2023-12-20 10:28:38.855551');
INSERT INTO "proxy" VALUES (707, 'www.proxy-list.download', 'socks4', '50.236.148.246', 31699, 0, NULL, '2023-12-20 10:08:38.523479', 2, '2023-12-20 10:28:38.523479');
INSERT INTO "proxy" VALUES (708, 'www.proxy-list.download', 'socks4', '103.85.122.20', 4145, 0, NULL, '2023-12-20 10:08:38.550904', 2, '2023-12-20 10:28:38.550904');
INSERT INTO "proxy" VALUES (709, 'www.proxy-list.download', 'socks5', '165.22.43.8', 30081, 0, NULL, '2023-12-20 10:08:38.587073', 2, '2023-12-20 10:28:38.587073');
INSERT INTO "proxy" VALUES (710, 'www.proxy-list.download', 'socks4', '94.182.25.74', 4145, 0, NULL, '2023-12-20 10:08:38.489591', 2, '2023-12-20 10:28:38.489591');
INSERT INTO "proxy" VALUES (711, 'www.proxy-list.download', 'socks4', '77.48.137.3', 50523, 0, NULL, '2023-12-20 10:08:38.617754', 2, '2023-12-20 10:28:38.617754');
INSERT INTO "proxy" VALUES (712, 'www.proxy-list.download', 'socks4', '212.3.146.80', 3629, 0, NULL, '2023-12-20 10:08:38.731022', 2, '2023-12-20 10:28:38.731022');
INSERT INTO "proxy" VALUES (713, 'www.proxy-list.download', 'http', '</head', 80, 0, NULL, '2023-12-20 10:08:38.740050', 2, '2023-12-20 10:28:38.740050');
INSERT INTO "proxy" VALUES (714, 'www.proxy-list.download', 'socks4', '200.206.63.34', 4145, 0, NULL, '2023-12-20 10:08:38.334935', 2, '2023-12-20 10:28:38.334935');
INSERT INTO "proxy" VALUES (715, 'www.proxy-list.download', 'socks4', '58.27.237.218', 1080, 0, NULL, '2023-12-20 10:08:38.644058', 2, '2023-12-20 10:28:38.644058');
INSERT INTO "proxy" VALUES (716, 'www.proxy-list.download', 'socks4', '196.15.247.74', 4153, 0, NULL, '2023-12-20 10:08:38.576924', 2, '2023-12-20 10:28:38.576924');
INSERT INTO "proxy" VALUES (717, 'www.proxy-list.download', 'socks4', '190.85.184.114', 4153, 0, NULL, '2023-12-20 10:08:38.320396', 2, '2023-12-20 10:28:38.320396');
INSERT INTO "proxy" VALUES (718, 'www.proxy-list.download', 'socks4', '217.171.62.42', 4153, 0, NULL, '2023-12-20 10:08:38.305394', 2, '2023-12-20 10:28:38.305394');
INSERT INTO "proxy" VALUES (719, 'www.proxy-list.download', 'socks4', '81.18.49.5', 1080, 0, NULL, '2023-12-20 10:08:38.472124', 2, '2023-12-20 10:28:38.472124');
INSERT INTO "proxy" VALUES (720, 'www.proxy-list.download', 'socks4', '186.103.154.235', 4153, 0, NULL, '2023-12-20 10:08:38.339945', 2, '2023-12-20 10:28:38.339945');
INSERT INTO "proxy" VALUES (721, 'www.proxy-list.download', 'socks4', '103.240.33.169', 8291, 0, NULL, '2023-12-20 10:08:38.781394', 2, '2023-12-20 10:28:38.781394');
INSERT INTO "proxy" VALUES (722, 'www.proxy-list.download', 'socks4', '217.145.199.45', 56746, 0, NULL, '2023-12-20 10:08:38.582084', 2, '2023-12-20 10:28:38.582084');
INSERT INTO "proxy" VALUES (723, 'www.proxy-list.download', 'socks4', '177.54.195.48', 4145, 0, NULL, '2023-12-20 10:08:38.519452', 2, '2023-12-20 10:28:38.519452');
INSERT INTO "proxy" VALUES (724, 'www.proxy-list.download', 'https', '      Your IP', 80, 0, NULL, '2023-12-20 10:08:38.984456', 2, '2023-12-20 10:28:38.984456');
INSERT INTO "proxy" VALUES (725, 'www.proxy-list.download', 'socks4', '189.201.191.69', 4145, 0, NULL, '2023-12-20 10:08:38.911433', 2, '2023-12-20 10:28:38.911433');
INSERT INTO "proxy" VALUES (726, 'www.proxy-list.download', 'https', '    <div id="error-feedback-survey" class="footer-line-wrapper"', 80, 0, NULL, '2023-12-20 10:08:38.753500', 2, '2023-12-20 10:28:38.753500');
INSERT INTO "proxy" VALUES (727, 'www.proxy-list.download', 'socks4', '45.229.174.77', 4145, 0, NULL, '2023-12-20 10:08:38.850571', 2, '2023-12-20 10:28:38.850571');
INSERT INTO "proxy" VALUES (728, 'www.proxy-list.download', 'socks4', '103.15.242.215', 55492, 0, NULL, '2023-12-20 10:08:38.999109', 2, '2023-12-20 10:28:38.999109');
INSERT INTO "proxy" VALUES (729, 'www.proxy-list.download', 'http', '<!--[if gt IE 8]><!--> <html class="no-js" lang="en-US"> <!--<![endif]--', 80, 0, NULL, '2023-12-20 10:08:39.030260', 2, '2023-12-20 10:28:39.030260');
INSERT INTO "proxy" VALUES (730, 'www.proxy-list.download', 'socks4', '212.156.86.130', 4145, 0, NULL, '2023-12-20 10:08:38.966696', 2, '2023-12-20 10:28:38.966696');
INSERT INTO "proxy" VALUES (731, 'www.proxy-list.download', 'socks4', '46.44.16.54', 3629, 0, NULL, '2023-12-20 10:08:39.091140', 2, '2023-12-20 10:28:39.091140');
INSERT INTO "proxy" VALUES (732, 'www.proxy-list.download', 'https', '    </div', 80, 0, NULL, '2023-12-20 10:08:38.284351', 2, '2023-12-20 10:28:38.284351');
INSERT INTO "proxy" VALUES (733, 'www.proxy-list.download', 'http', '    <span class="cf-footer-separator sm', 80, 0, NULL, '2023-12-20 10:08:39.059363', 2, '2023-12-20 10:28:39.059363');
INSERT INTO "proxy" VALUES (734, 'www.proxy-list.download', 'socks4', '103.220.207.242', 1080, 0, NULL, '2023-12-20 10:08:38.871588', 2, '2023-12-20 10:28:38.871588');
INSERT INTO "proxy" VALUES (735, 'www.proxy-list.download', 'socks4', '85.30.248.210', 4153, 0, NULL, '2023-12-20 10:08:38.744050', 2, '2023-12-20 10:28:38.744050');
INSERT INTO "proxy" VALUES (736, 'www.proxy-list.download', 'socks4', '180.250.170.210', 40108, 0, NULL, '2023-12-20 10:08:38.762489', 2, '2023-12-20 10:28:38.762489');
INSERT INTO "proxy" VALUES (737, 'www.proxy-list.download', 'socks4', '41.169.152.154', 4153, 0, NULL, '2023-12-20 10:08:38.806461', 2, '2023-12-20 10:28:38.806461');
INSERT INTO "proxy" VALUES (738, 'www.proxy-list.download', 'socks4', '131.221.165.53', 4153, 0, NULL, '2023-12-20 10:08:38.881588', 2, '2023-12-20 10:28:38.881588');
INSERT INTO "proxy" VALUES (739, 'www.proxy-list.download', 'socks4', '180.180.152.94', 4145, 0, NULL, '2023-12-20 10:08:38.810451', 2, '2023-12-20 10:28:38.810451');
INSERT INTO "proxy" VALUES (740, 'www.proxy-list.download', 'socks4', '43.225.150.154', 10801, 0, NULL, '2023-12-20 10:08:38.771609', 2, '2023-12-20 10:28:38.771609');
INSERT INTO "proxy" VALUES (741, 'www.proxy-list.download', 'socks4', '168.227.41.201', 5678, 0, NULL, '2023-12-20 10:08:38.767486', 2, '2023-12-20 10:28:38.767486');
INSERT INTO "proxy" VALUES (742, 'www.proxy-list.download', 'socks4', '103.250.166.04', 6667, 0, NULL, '2023-12-20 10:08:38.891164', 2, '2023-12-20 10:28:38.891164');
INSERT INTO "proxy" VALUES (743, 'www.proxy-list.download', 'socks4', '210.48.139.228', 4145, 0, NULL, '2023-12-20 10:08:39.007104', 2, '2023-12-20 10:28:39.007104');
INSERT INTO "proxy" VALUES (744, 'www.proxy-list.download', 'socks4', '182.134.157.200', 57114, 0, NULL, '2023-12-20 10:08:38.861546', 2, '2023-12-20 10:28:38.861546');
INSERT INTO "proxy" VALUES (745, 'www.proxy-list.download', 'socks4', '103.67.16.6', 4153, 0, NULL, '2023-12-20 10:08:38.830530', 2, '2023-12-20 10:28:38.830530');
INSERT INTO "proxy" VALUES (746, 'www.proxy-list.download', 'socks4', '186.42.174.218', 3629, 0, NULL, '2023-12-20 10:08:39.038256', 2, '2023-12-20 10:28:39.038256');
INSERT INTO "proxy" VALUES (747, 'www.proxy-list.download', 'socks4', '103.85.106.110', 4153, 0, NULL, '2023-12-20 10:08:38.948158', 2, '2023-12-20 10:28:38.948158');
INSERT INTO "proxy" VALUES (748, 'www.proxy-list.download', 'socks4', '118.70.196.124', 4145, 0, NULL, '2023-12-20 10:08:38.907401', 2, '2023-12-20 10:28:38.907401');
INSERT INTO "proxy" VALUES (749, 'www.proxy-list.download', 'socks4', '185.208.100.72', 4145, 0, NULL, '2023-12-20 10:08:38.866553', 2, '2023-12-20 10:28:38.866553');
INSERT INTO "proxy" VALUES (750, 'www.proxy-list.download', 'socks4', '91.219.88.121', 47334, 0, NULL, '2023-12-20 10:08:38.815988', 2, '2023-12-20 10:28:38.815988');
INSERT INTO "proxy" VALUES (751, 'www.proxy-list.download', 'socks4', '81.219.10.62', 4145, 0, NULL, '2023-12-20 10:08:38.680632', 2, '2023-12-20 10:28:38.680632');
INSERT INTO "proxy" VALUES (752, 'www.proxy-list.download', 'socks4', '45.7.177.176', 39867, 0, NULL, '2023-12-20 10:08:38.666646', 2, '2023-12-20 10:28:38.666646');
INSERT INTO "proxy" VALUES (753, 'www.proxy-list.download', 'socks4', '87.103.175.22', 1080, 0, NULL, '2023-12-20 10:08:38.876577', 2, '2023-12-20 10:28:38.876577');
INSERT INTO "proxy" VALUES (754, 'www.proxy-list.download', 'socks4', '89.173.82.166', 4153, 0, NULL, '2023-12-20 10:08:38.921627', 2, '2023-12-20 10:28:38.921627');
INSERT INTO "proxy" VALUES (755, 'www.proxy-list.download', 'socks4', '188.255.208.246', 1080, 0, NULL, '2023-12-20 10:08:38.925638', 2, '2023-12-20 10:28:38.925638');
INSERT INTO "proxy" VALUES (756, 'www.proxy-list.download', 'socks4', '45.124.171.145', 4145, 0, NULL, '2023-12-20 10:08:38.971695', 2, '2023-12-20 10:28:38.971695');
INSERT INTO "proxy" VALUES (757, 'www.proxy-list.download', 'socks4', '118.174.233.45', 55084, 0, NULL, '2023-12-20 10:08:38.661956', 2, '2023-12-20 10:28:38.661956');
INSERT INTO "proxy" VALUES (758, 'www.proxy-list.download', 'socks4', '168.181.121.195', 57010, 0, NULL, '2023-12-20 10:08:38.448294', 2, '2023-12-20 10:28:38.448294');
INSERT INTO "proxy" VALUES (759, 'www.proxy-list.download', 'socks4', '185.218.29.222', 30211, 0, NULL, '2023-12-20 10:08:38.463126', 2, '2023-12-20 10:28:38.463126');
INSERT INTO "proxy" VALUES (760, 'www.proxy-list.download', 'socks4', '60.216.101.46', 49327, 0, NULL, '2023-12-20 10:08:38.962708', 2, '2023-12-20 10:28:38.962708');
INSERT INTO "proxy" VALUES (761, 'www.proxy-list.download', 'socks5', '218.6.105.152', 4216, 0, NULL, '2023-12-20 10:08:39.003104', 2, '2023-12-20 10:28:39.003104');
INSERT INTO "proxy" VALUES (762, 'www.proxy-list.download', 'socks4', '181.129.59.108', 4153, 0, NULL, '2023-12-20 10:08:38.675649', 2, '2023-12-20 10:28:38.675649');
INSERT INTO "proxy" VALUES (763, 'www.proxy-list.download', 'socks4', '5.83.104.173', 4153, 0, NULL, '2023-12-20 10:08:39.086108', 2, '2023-12-20 10:28:39.086108');
INSERT INTO "proxy" VALUES (764, 'www.proxy-list.download', 'socks4', '103.224.48.38', 31433, 0, NULL, '2023-12-20 10:08:38.835557', 2, '2023-12-20 10:28:38.835557');
INSERT INTO "proxy" VALUES (765, 'www.proxy-list.download', 'socks4', '207.97.174.134', 1080, 0, NULL, '2023-12-20 10:08:38.572913', 2, '2023-12-20 10:28:38.572913');
INSERT INTO "proxy" VALUES (766, 'www.proxy-list.download', 'https', '<script', 80, 0, NULL, '2023-12-20 10:08:38.791931', 2, '2023-12-20 10:28:38.791931');
INSERT INTO "proxy" VALUES (767, 'www.proxy-list.download', 'socks4', '58.211.134.98', 47442, 0, NULL, '2023-12-20 10:08:38.568916', 2, '2023-12-20 10:28:38.568916');
INSERT INTO "proxy" VALUES (768, 'www.proxy-list.download', 'socks4', '186.211.164.14', 4153, 0, NULL, '2023-12-20 10:08:38.845285', 2, '2023-12-20 10:28:38.845285');
INSERT INTO "proxy" VALUES (769, 'www.proxy-list.download', 'socks4', '186.84.174.13', 59341, 0, NULL, '2023-12-20 10:08:38.796637', 2, '2023-12-20 10:28:38.796637');
INSERT INTO "proxy" VALUES (770, 'www.proxy-list.download', 'socks4', '67.206.200.42', 4153, 0, NULL, '2023-12-20 10:08:39.020849', 2, '2023-12-20 10:28:39.020849');
INSERT INTO "proxy" VALUES (771, 'www.proxy-list.download', 'socks4', '195.22.253.238', 4145, 0, NULL, '2023-12-20 10:08:39.077368', 2, '2023-12-20 10:28:39.077368');
INSERT INTO "proxy" VALUES (772, 'www.proxy-list.download', 'socks4', '192.111.129.150', 4145, 0, NULL, '2023-12-20 10:08:38.691021', 2, '2023-12-20 10:28:38.691021');
INSERT INTO "proxy" VALUES (773, 'www.proxy-list.download', 'socks5', '115.221.245.167', 1080, 0, NULL, '2023-12-20 10:08:38.916628', 2, '2023-12-20 10:28:38.916628');
INSERT INTO "proxy" VALUES (774, 'www.proxy-list.download', 'socks4', '46.29.116.6', 4145, 0, NULL, '2023-12-20 10:08:38.938302', 2, '2023-12-20 10:28:38.938302');
INSERT INTO "proxy" VALUES (775, 'www.proxy-list.download', 'socks4', '109.238.223.67', 61150, 0, NULL, '2023-12-20 10:08:39.024860', 2, '2023-12-20 10:28:39.024860');
INSERT INTO "proxy" VALUES (776, 'www.proxy-list.download', 'socks4', '94.232.11.178', 58028, 0, NULL, '2023-12-20 10:08:39.095653', 2, '2023-12-20 10:28:39.095653');
INSERT INTO "proxy" VALUES (777, 'www.proxy-list.download', 'socks4', '201.148.126.202', 4145, 0, NULL, '2023-12-20 10:08:38.975708', 2, '2023-12-20 10:28:38.975708');
INSERT INTO "proxy" VALUES (778, 'www.proxy-list.download', 'socks4', '188.166.34.137', 9000, 0, NULL, '2023-12-20 10:08:39.035260', 2, '2023-12-20 10:28:39.035260');
INSERT INTO "proxy" VALUES (779, 'www.proxy-list.download', 'socks4', '185.21.39.46', 58351, 0, NULL, '2023-12-20 10:08:39.104467', 2, '2023-12-20 10:28:39.104467');
INSERT INTO "proxy" VALUES (780, 'www.proxy-list.download', 'socks4', '77.232.167.200', 31293, 0, NULL, '2023-12-20 10:08:38.988456', 2, '2023-12-20 10:28:38.988456');
INSERT INTO "proxy" VALUES (781, 'www.proxy-list.download', 'socks4', '216.154.201.132', 54321, 0, NULL, '2023-12-20 10:08:38.902403', 2, '2023-12-20 10:28:38.902403');
INSERT INTO "proxy" VALUES (782, 'www.proxy-list.download', 'socks4', '79.108.206.93', 4145, 0, NULL, '2023-12-20 10:08:39.044350', 2, '2023-12-20 10:28:39.044350');
INSERT INTO "proxy" VALUES (783, 'www.proxy-list.download', 'http', '      <div class="cf-error-footer cf-wrapper w-240 lg', 80, 0, NULL, '2023-12-20 10:08:38.826531', 2, '2023-12-20 10:28:38.826531');
INSERT INTO "proxy" VALUES (784, 'www.proxy-list.download', 'socks4', '103.125.117.202', 4145, 0, NULL, '2023-12-20 10:08:38.695202', 2, '2023-12-20 10:28:38.695202');
INSERT INTO "proxy" VALUES (785, 'www.proxy-list.download', 'socks4', '83.234.76.155', 4145, 0, NULL, '2023-12-20 10:08:38.994387', 2, '2023-12-20 10:28:38.994387');
INSERT INTO "proxy" VALUES (786, 'www.proxy-list.download', 'socks4', '1.20.220.79', 4145, 0, NULL, '2023-12-20 10:08:38.953125', 2, '2023-12-20 10:28:38.953125');
INSERT INTO "proxy" VALUES (787, 'www.proxy-list.download', 'socks5', '51.11.240.222', 8085, 0, NULL, '2023-12-20 10:08:38.671634', 2, '2023-12-20 10:28:38.671634');
INSERT INTO "proxy" VALUES (788, 'www.proxy-list.download', 'socks4', '118.181.226.166', 38130, 0, NULL, '2023-12-20 10:08:38.980451', 2, '2023-12-20 10:28:38.980451');
INSERT INTO "proxy" VALUES (789, 'www.proxy-list.download', 'socks4', '177.93.72.130', 4153, 0, NULL, '2023-12-20 10:08:39.131315', 2, '2023-12-20 10:28:39.131315');
INSERT INTO "proxy" VALUES (790, 'www.proxy-list.download', 'socks4', '88.213.214.254', 4145, 0, NULL, '2023-12-20 10:08:39.054388', 2, '2023-12-20 10:28:39.054388');
INSERT INTO "proxy" VALUES (791, 'www.proxy-list.download', 'socks4', '213.108.216.59', 1080, 0, NULL, '2023-12-20 10:08:39.072379', 2, '2023-12-20 10:28:39.072379');
INSERT INTO "proxy" VALUES (792, 'www.proxy-list.download', 'socks4', '41.162.94.52', 30022, 0, NULL, '2023-12-20 10:08:39.122358', 2, '2023-12-20 10:28:39.122358');
INSERT INTO "proxy" VALUES (793, 'www.proxy-list.download', 'socks4', '177.10.200.110', 4145, 0, NULL, '2023-12-20 10:08:39.082407', 2, '2023-12-20 10:28:39.082407');
INSERT INTO "proxy" VALUES (794, 'www.proxy-list.download', 'socks4', '175.100.103.132', 1081, 0, NULL, '2023-12-20 10:08:39.064378', 2, '2023-12-20 10:28:39.064378');
INSERT INTO "proxy" VALUES (795, 'www.proxy-list.download', 'socks4', '186.249.83.86', 4145, 0, NULL, '2023-12-20 10:08:39.114359', 2, '2023-12-20 10:28:39.114359');
INSERT INTO "proxy" VALUES (796, 'www.proxy-list.download', 'socks4', '190.85.65.50', 4153, 0, NULL, '2023-12-20 10:08:38.840401', 2, '2023-12-20 10:28:38.840401');
INSERT INTO "proxy" VALUES (797, 'www.proxy-list.download', 'socks4', '187.103.15.17', 40559, 0, NULL, '2023-12-20 10:08:38.957711', 2, '2023-12-20 10:28:38.957711');
INSERT INTO "proxy" VALUES (798, 'www.proxy-list.download', 'socks4', '157.119.50.74', 1080, 0, NULL, '2023-12-20 10:08:39.068366', 2, '2023-12-20 10:28:39.068366');
INSERT INTO "proxy" VALUES (799, 'www.proxy-list.download', 'socks4', '88.87.74.87', 4145, 0, NULL, '2023-12-20 10:08:39.012317', 2, '2023-12-20 10:28:39.012317');
INSERT INTO "proxy" VALUES (800, 'www.proxy-list.download', 'socks4', '83.136.179.91', 4145, 0, NULL, '2023-12-20 10:08:39.100643', 2, '2023-12-20 10:28:39.100643');
INSERT INTO "proxy" VALUES (801, 'www.proxy-list.download', 'socks4', '119.93.123.229', 4145, 0, NULL, '2023-12-20 10:08:39.243954', 2, '2023-12-20 10:28:39.243954');
INSERT INTO "proxy" VALUES (802, 'www.proxy-list.download', 'socks4', '91.121.33.63', 1000, 0, NULL, '2023-12-20 10:08:39.158698', 2, '2023-12-20 10:28:39.158698');
INSERT INTO "proxy" VALUES (803, 'www.proxy-list.download', 'socks4', '217.25.221.60', 4145, 0, NULL, '2023-12-20 10:08:39.149848', 2, '2023-12-20 10:28:39.149848');
INSERT INTO "proxy" VALUES (804, 'www.proxy-list.download', 'socks5', '192.252.209.155', 14455, 0, NULL, '2023-12-20 10:08:44.367096', 2, '2023-12-20 10:28:44.367096');
INSERT INTO "proxy" VALUES (805, 'www.proxy-list.download', 'socks4', '132.255.110.195', 4153, 0, NULL, '2023-12-20 10:08:44.670746', 2, '2023-12-20 10:28:44.670746');
INSERT INTO "proxy" VALUES (806, 'www.proxy-list.download', 'socks4', '103.76.148.241', 4145, 0, NULL, '2023-12-20 10:08:44.727228', 2, '2023-12-20 10:28:44.727228');
INSERT INTO "proxy" VALUES (807, 'www.proxy-list.download', 'socks4', '185.61.94.65', 43110, 0, NULL, '2023-12-20 10:08:39.195573', 2, '2023-12-20 10:28:39.195573');
INSERT INTO "proxy" VALUES (808, 'www.proxy-list.download', 'https', '<meta name="viewport" content="width=device-width,initial-scale=1" /', 80, 0, NULL, '2023-12-20 10:08:39.199599', 2, '2023-12-20 10:28:39.199599');
INSERT INTO "proxy" VALUES (809, 'www.proxy-list.download', 'socks4', '1.10.189.84', 44452, 0, NULL, '2023-12-20 10:08:39.261485', 2, '2023-12-20 10:28:39.261485');
INSERT INTO "proxy" VALUES (810, 'www.proxy-list.download', 'socks4', '218.26.101.226', 53813, 0, NULL, '2023-12-20 10:08:44.439716', 2, '2023-12-20 10:28:44.439716');
INSERT INTO "proxy" VALUES (811, 'www.proxy-list.download', 'socks4', '103.73.183.4', 8291, 0, NULL, '2023-12-20 10:08:39.190245', 2, '2023-12-20 10:28:39.190245');
INSERT INTO "proxy" VALUES (812, 'www.proxy-list.download', 'socks4', '201.33.170.25', 31337, 0, NULL, '2023-12-20 10:08:39.234979', 2, '2023-12-20 10:28:39.234979');
INSERT INTO "proxy" VALUES (813, 'www.proxy-list.download', 'socks4', '202.57.33.134', 4145, 0, NULL, '2023-12-20 10:08:39.167713', 2, '2023-12-20 10:28:39.167713');
INSERT INTO "proxy" VALUES (814, 'www.proxy-list.download', 'socks4', '41.206.35.222', 5678, 0, NULL, '2023-12-20 10:08:39.252473', 2, '2023-12-20 10:28:39.252473');
INSERT INTO "proxy" VALUES (815, 'www.proxy-list.download', 'socks4', '45.7.177.226', 39867, 0, NULL, '2023-12-20 10:08:39.257476', 2, '2023-12-20 10:28:39.257476');
INSERT INTO "proxy" VALUES (816, 'www.proxy-list.download', 'socks4', '186.251.208.148', 10801, 0, NULL, '2023-12-20 10:08:39.280488', 2, '2023-12-20 10:28:39.280488');
INSERT INTO "proxy" VALUES (817, 'www.proxy-list.download', 'socks5', '60.13.42.157', 1080, 0, NULL, '2023-12-20 10:08:39.176749', 2, '2023-12-20 10:28:39.176749');
INSERT INTO "proxy" VALUES (818, 'www.proxy-list.download', 'socks4', '101.51.106.70', 39164, 0, NULL, '2023-12-20 10:08:44.482432', 2, '2023-12-20 10:28:44.482432');
INSERT INTO "proxy" VALUES (819, 'www.proxy-list.download', 'socks4', '190.217.68.211', 4145, 0, NULL, '2023-12-20 10:08:39.140323', 2, '2023-12-20 10:28:39.140323');
INSERT INTO "proxy" VALUES (820, 'www.proxy-list.download', 'socks4', '213.80.166.5', 38442, 0, NULL, '2023-12-20 10:08:39.182241', 2, '2023-12-20 10:28:39.182241');
INSERT INTO "proxy" VALUES (821, 'www.proxy-list.download', 'socks4', '109.87.143.67', 10801, 0, NULL, '2023-12-20 10:08:39.222290', 2, '2023-12-20 10:28:39.222290');
INSERT INTO "proxy" VALUES (822, 'www.proxy-list.download', 'socks4', '91.211.172.104', 46344, 0, NULL, '2023-12-20 10:08:44.607366', 2, '2023-12-20 10:28:44.607366');
INSERT INTO "proxy" VALUES (823, 'www.proxy-list.download', 'socks4', '190.152.71.46', 4153, 0, NULL, '2023-12-20 10:08:44.473502', 2, '2023-12-20 10:28:44.473502');
INSERT INTO "proxy" VALUES (824, 'www.proxy-list.download', 'https', '</head', 80, 0, NULL, '2023-12-20 10:08:39.270485', 2, '2023-12-20 10:28:39.270485');
INSERT INTO "proxy" VALUES (825, 'www.proxy-list.download', 'socks4', '81.2.47.181', 4145, 0, NULL, '2023-12-20 10:08:39.127311', 2, '2023-12-20 10:28:39.127311');
INSERT INTO "proxy" VALUES (826, 'www.proxy-list.download', 'socks4', '213.6.38.50', 59422, 0, NULL, '2023-12-20 10:08:44.533363', 2, '2023-12-20 10:28:44.533363');
INSERT INTO "proxy" VALUES (827, 'www.proxy-list.download', 'socks4', '188.119.30.75', 4153, 0, NULL, '2023-12-20 10:08:44.381108', 2, '2023-12-20 10:28:44.381108');
INSERT INTO "proxy" VALUES (828, 'www.proxy-list.download', 'socks5', '113.128.33.60', 53405, 0, NULL, '2023-12-20 10:08:44.520010', 2, '2023-12-20 10:28:44.520010');
INSERT INTO "proxy" VALUES (829, 'www.proxy-list.download', 'socks4', '187.103.75.245', 4145, 0, NULL, '2023-12-20 10:08:44.400130', 2, '2023-12-20 10:28:44.400130');
INSERT INTO "proxy" VALUES (830, 'www.proxy-list.download', 'socks5', '124.115.21.11', 1080, 0, NULL, '2023-12-20 10:08:44.920587', 2, '2023-12-20 10:28:44.920587');
INSERT INTO "proxy" VALUES (831, 'www.proxy-list.download', 'socks4', '177.93.79.18', 4145, 0, NULL, '2023-12-20 10:08:44.782589', 2, '2023-12-20 10:28:44.782589');
INSERT INTO "proxy" VALUES (832, 'www.proxy-list.download', 'socks4', '190.121.142.158', 4145, 0, NULL, '2023-12-20 10:08:44.699230', 2, '2023-12-20 10:28:44.699230');
INSERT INTO "proxy" VALUES (833, 'www.proxy-list.download', 'socks4', '200.69.136.235', 4145, 0, NULL, '2023-12-20 10:08:44.764216', 2, '2023-12-20 10:28:44.764216');
INSERT INTO "proxy" VALUES (834, 'www.proxy-list.download', 'socks4', '170.247.112.77', 4145, 0, NULL, '2023-12-20 10:08:44.962012', 2, '2023-12-20 10:28:44.962012');
INSERT INTO "proxy" VALUES (835, 'www.proxy-list.download', 'socks4', '51.195.201.48', 9095, 0, NULL, '2023-12-20 10:08:39.153859', 2, '2023-12-20 10:28:39.153859');
INSERT INTO "proxy" VALUES (836, 'www.proxy-list.download', 'socks4', '92.255.185.6', 4145, 0, NULL, '2023-12-20 10:08:39.218286', 2, '2023-12-20 10:28:39.218286');
INSERT INTO "proxy" VALUES (837, 'www.proxy-list.download', 'socks4', '114.242.116.51', 4145, 0, NULL, '2023-12-20 10:08:39.285844', 2, '2023-12-20 10:28:39.285844');
INSERT INTO "proxy" VALUES (838, 'www.proxy-list.download', 'socks4', '43.252.183.66', 4153, 0, NULL, '2023-12-20 10:08:39.248791', 2, '2023-12-20 10:28:39.248791');
INSERT INTO "proxy" VALUES (839, 'www.proxy-list.download', 'socks4', '80.89.137.214', 4145, 0, NULL, '2023-12-20 10:08:39.266471', 2, '2023-12-20 10:28:39.266471');
INSERT INTO "proxy" VALUES (840, 'www.proxy-list.download', 'socks4', '109.238.222.5', 42401, 0, NULL, '2023-12-20 10:08:44.741220', 2, '2023-12-20 10:28:44.741220');
INSERT INTO "proxy" VALUES (841, 'www.proxy-list.download', 'socks4', '154.79.254.170', 10801, 0, NULL, '2023-12-20 10:08:44.580174', 2, '2023-12-20 10:28:44.580174');
INSERT INTO "proxy" VALUES (842, 'www.proxy-list.download', 'socks4', '197.234.13.91', 4145, 0, NULL, '2023-12-20 10:08:44.358464', 2, '2023-12-20 10:28:44.358464');
INSERT INTO "proxy" VALUES (843, 'www.proxy-list.download', 'socks4', '194.228.129.189', 56211, 0, NULL, '2023-12-20 10:08:39.204572', 2, '2023-12-20 10:28:39.204572');
INSERT INTO "proxy" VALUES (844, 'www.proxy-list.download', 'socks4', '203.153.109.150', 49947, 0, NULL, '2023-12-20 10:08:44.660743', 2, '2023-12-20 10:28:44.660743');
INSERT INTO "proxy" VALUES (845, 'www.proxy-list.download', 'socks5', '184.181.217.204', 4145, 0, NULL, '2023-12-20 10:08:44.529366', 2, '2023-12-20 10:28:44.529366');
INSERT INTO "proxy" VALUES (846, 'www.proxy-list.download', 'socks4', '70.82.75.118', 4153, 0, NULL, '2023-12-20 10:08:39.238956', 2, '2023-12-20 10:28:39.238956');
INSERT INTO "proxy" VALUES (847, 'www.proxy-list.download', 'socks4', '185.237.8.38', 4145, 0, NULL, '2023-12-20 10:08:39.226300', 2, '2023-12-20 10:28:39.226300');
INSERT INTO "proxy" VALUES (848, 'www.proxy-list.download', 'socks4', '178.168.120.136', 4153, 0, NULL, '2023-12-20 10:08:39.049361', 2, '2023-12-20 10:28:39.049361');
INSERT INTO "proxy" VALUES (849, 'www.proxy-list.download', 'socks4', '187.111.193.88', 44681, 0, NULL, '2023-12-20 10:08:39.209585', 2, '2023-12-20 10:28:39.209585');
INSERT INTO "proxy" VALUES (850, 'www.proxy-list.download', 'https', '<!--[if gt IE 8]><!--> <html class="no-js" lang="en-US"> <!--<![endif]--', 80, 0, NULL, '2023-12-20 10:08:39.162696', 2, '2023-12-20 10:28:39.162696');
INSERT INTO "proxy" VALUES (851, 'www.proxy-list.download', 'socks4', '177.105.68.172', 4153, 0, NULL, '2023-12-20 10:08:39.118371', 2, '2023-12-20 10:28:39.118371');
INSERT INTO "proxy" VALUES (852, 'www.proxy-list.download', 'socks4', '43.230.62.157', 4145, 0, NULL, '2023-12-20 10:08:39.172741', 2, '2023-12-20 10:28:39.172741');
INSERT INTO "proxy" VALUES (853, 'www.proxy-list.download', 'socks4', '41.86.56.224', 41833, 0, NULL, '2023-12-20 10:08:39.145314', 2, '2023-12-20 10:28:39.145314');
INSERT INTO "proxy" VALUES (854, 'www.proxy-list.download', 'socks4', '202.57.132.77', 4145, 0, NULL, '2023-12-20 10:08:39.109372', 2, '2023-12-20 10:28:39.109372');
INSERT INTO "proxy" VALUES (855, 'www.proxy-list.download', 'socks4', '43.252.107.54', 4145, 0, NULL, '2023-12-20 10:08:39.275475', 2, '2023-12-20 10:28:39.275475');
INSERT INTO "proxy" VALUES (856, 'www.proxy-list.download', 'socks5', '98.126.23.24', 2846, 0, NULL, '2023-12-20 10:08:39.136314', 2, '2023-12-20 10:28:39.136314');
INSERT INTO "proxy" VALUES (857, 'www.proxy-list.download', 'socks4', '168.121.139.199', 4145, 0, NULL, '2023-12-20 10:08:39.230298', 2, '2023-12-20 10:28:39.230298');
INSERT INTO "proxy" VALUES (858, 'www.proxy-list.download', 'socks4', '62.183.98.181', 4145, 0, NULL, '2023-12-20 10:08:39.186230', 2, '2023-12-20 10:28:39.186230');
INSERT INTO "proxy" VALUES (859, 'www.proxy-list.download', 'socks4', '185.162.141.236', 50579, 0, NULL, '2023-12-20 10:08:39.300270', 2, '2023-12-20 10:28:39.300270');
INSERT INTO "proxy" VALUES (860, 'www.proxy-list.download', 'socks4', '77.89.204.254', 4145, 0, NULL, '2023-12-20 10:08:39.305256', 2, '2023-12-20 10:28:39.305256');
INSERT INTO "proxy" VALUES (861, 'www.proxy-list.download', 'socks4', '72.212.63.101', 4145, 0, NULL, '2023-12-20 10:08:44.419152', 2, '2023-12-20 10:28:44.419152');
INSERT INTO "proxy" VALUES (862, 'www.proxy-list.download', 'socks4', '31.210.225.135', 4153, 0, NULL, '2023-12-20 10:08:44.665743', 2, '2023-12-20 10:28:44.665743');
INSERT INTO "proxy" VALUES (863, 'www.proxy-list.download', 'socks4', '45.7.177.188', 39867, 0, NULL, '2023-12-20 10:08:44.478497', 2, '2023-12-20 10:28:44.478497');
INSERT INTO "proxy" VALUES (864, 'www.proxy-list.download', 'http', '<link rel="stylesheet" id="cf_styles-css" href="/cdn-cgi/styles/main.css" /', 80, 0, NULL, '2023-12-20 10:08:44.376108', 2, '2023-12-20 10:28:44.376108');
INSERT INTO "proxy" VALUES (865, 'www.proxy-list.download', 'socks4', '213.14.25.65', 1080, 0, NULL, '2023-12-20 10:08:44.405116', 2, '2023-12-20 10:28:44.405116');
INSERT INTO "proxy" VALUES (866, 'www.proxy-list.download', 'socks4', '87.103.174.147', 3629, 0, NULL, '2023-12-20 10:08:44.694965', 2, '2023-12-20 10:28:44.694965');
INSERT INTO "proxy" VALUES (867, 'www.proxy-list.download', 'socks4', '200.199.8.118', 35938, 0, NULL, '2023-12-20 10:08:44.444412', 2, '2023-12-20 10:28:44.444412');
INSERT INTO "proxy" VALUES (868, 'www.proxy-list.download', 'socks4', '177.86.64.241', 3629, 0, NULL, '2023-12-20 10:08:44.561145', 2, '2023-12-20 10:28:44.561145');
INSERT INTO "proxy" VALUES (869, 'www.proxy-list.download', 'socks4', '187.111.193.85', 44681, 0, NULL, '2023-12-20 10:08:44.454764', 2, '2023-12-20 10:28:44.454764');
INSERT INTO "proxy" VALUES (870, 'www.proxy-list.download', 'socks4', '210.245.51.43', 4145, 0, NULL, '2023-12-20 10:08:44.464517', 2, '2023-12-20 10:28:44.464517');
INSERT INTO "proxy" VALUES (871, 'www.proxy-list.download', 'socks4', '197.231.198.172', 37765, 0, NULL, '2023-12-20 10:08:44.340496', 2, '2023-12-20 10:28:44.340496');
INSERT INTO "proxy" VALUES (872, 'www.proxy-list.download', 'socks4', '109.86.244.225', 57649, 0, NULL, '2023-12-20 10:08:44.626388', 2, '2023-12-20 10:28:44.626388');
INSERT INTO "proxy" VALUES (873, 'www.proxy-list.download', 'socks4', '79.173.124.177', 4153, 0, NULL, '2023-12-20 10:08:44.872180', 2, '2023-12-20 10:28:44.872180');
INSERT INTO "proxy" VALUES (874, 'www.proxy-list.download', 'socks4', '83.69.90.191', 1099, 0, NULL, '2023-12-20 10:08:45.274928', 2, '2023-12-20 10:28:45.274928');
INSERT INTO "proxy" VALUES (875, 'www.proxy-list.download', 'socks4', '197.221.158.186', 1080, 0, NULL, '2023-12-20 10:08:44.809658', 2, '2023-12-20 10:28:44.809658');
INSERT INTO "proxy" VALUES (876, 'www.proxy-list.download', 'socks4', '178.19.247.25', 41624, 0, NULL, '2023-12-20 10:08:44.703228', 2, '2023-12-20 10:28:44.703228');
INSERT INTO "proxy" VALUES (877, 'www.proxy-list.download', 'socks4', '103.107.92.1', 44578, 0, NULL, '2023-12-20 10:08:44.390129', 2, '2023-12-20 10:28:44.390129');
INSERT INTO "proxy" VALUES (878, 'www.proxy-list.download', 'socks4', '178.143.12.103', 4153, 0, NULL, '2023-12-20 10:08:44.745216', 2, '2023-12-20 10:28:44.745216');
INSERT INTO "proxy" VALUES (879, 'www.proxy-list.download', 'socks4', '5.182.26.129', 4145, 0, NULL, '2023-12-20 10:08:44.570182', 2, '2023-12-20 10:28:44.570182');
INSERT INTO "proxy" VALUES (880, 'www.proxy-list.download', 'socks4', '103.57.80.68', 4145, 0, NULL, '2023-12-20 10:08:44.621834', 2, '2023-12-20 10:28:44.621834');
INSERT INTO "proxy" VALUES (881, 'www.proxy-list.download', 'socks4', '95.65.124.252', 50748, 0, NULL, '2023-12-20 10:08:44.386095', 2, '2023-12-20 10:28:44.386095');
INSERT INTO "proxy" VALUES (882, 'www.proxy-list.download', 'socks4', '182.78.194.78', 55664, 0, NULL, '2023-12-20 10:08:44.722218', 2, '2023-12-20 10:28:44.722218');
INSERT INTO "proxy" VALUES (883, 'www.proxy-list.download', 'socks4', '1.179.183.73', 61468, 0, NULL, '2023-12-20 10:08:44.449293', 2, '2023-12-20 10:28:44.449293');
INSERT INTO "proxy" VALUES (884, 'www.proxy-list.download', 'socks5', '184.178.172.28', 15294, 0, NULL, '2023-12-20 10:08:44.685050', 2, '2023-12-20 10:28:44.685050');
INSERT INTO "proxy" VALUES (885, 'www.proxy-list.download', 'socks4', '195.68.152.18', 4153, 0, NULL, '2023-12-20 10:08:44.589170', 2, '2023-12-20 10:28:44.589170');
INSERT INTO "proxy" VALUES (886, 'www.proxy-list.download', 'socks4', '177.23.184.166', 4145, 0, NULL, '2023-12-20 10:08:44.593194', 2, '2023-12-20 10:28:44.593194');
INSERT INTO "proxy" VALUES (887, 'www.proxy-list.download', 'socks5', '117.68.147.8', 3000, 0, NULL, '2023-12-20 10:08:44.795633', 2, '2023-12-20 10:28:44.795633');
INSERT INTO "proxy" VALUES (888, 'www.proxy-list.download', 'socks4', '36.67.27.205', 35159, 0, NULL, '2023-12-20 10:08:44.976712', 2, '2023-12-20 10:28:44.976712');
INSERT INTO "proxy" VALUES (889, 'www.proxy-list.download', 'socks4', '2.50.18.118', 4145, 0, NULL, '2023-12-20 10:08:44.773215', 2, '2023-12-20 10:28:44.773215');
INSERT INTO "proxy" VALUES (890, 'www.proxy-list.download', 'socks4', '177.73.248.26', 55290, 0, NULL, '2023-12-20 10:08:44.708219', 2, '2023-12-20 10:28:44.708219');
INSERT INTO "proxy" VALUES (891, 'www.proxy-list.download', 'socks4', '110.78.186.155', 4145, 0, NULL, '2023-12-20 10:08:44.867166', 2, '2023-12-20 10:28:44.867166');
INSERT INTO "proxy" VALUES (892, 'www.proxy-list.download', 'https', '</script', 80, 0, NULL, '2023-12-20 10:08:44.759215', 2, '2023-12-20 10:28:44.759215');
INSERT INTO "proxy" VALUES (893, 'www.proxy-list.download', 'socks4', '103.85.106.109', 4153, 0, NULL, '2023-12-20 10:08:44.372094', 2, '2023-12-20 10:28:44.372094');
INSERT INTO "proxy" VALUES (894, 'www.proxy-list.download', 'https', '<link rel="stylesheet" id="cf_styles-css" href="/cdn-cgi/styles/main.css" /', 80, 0, NULL, '2023-12-20 10:08:44.488021', 2, '2023-12-20 10:28:44.488021');
INSERT INTO "proxy" VALUES (895, 'www.proxy-list.download', 'socks4', '91.226.5.245', 36604, 0, NULL, '2023-12-20 10:08:44.877165', 2, '2023-12-20 10:28:44.877165');
INSERT INTO "proxy" VALUES (896, 'www.proxy-list.download', 'http', '          </div', 80, 0, NULL, '2023-12-20 10:08:39.294729', 2, '2023-12-20 10:28:39.295715');
INSERT INTO "proxy" VALUES (897, 'www.proxy-list.download', 'socks4', '212.42.116.29', 4145, 0, NULL, '2023-12-20 10:08:44.409130', 2, '2023-12-20 10:28:44.409130');
INSERT INTO "proxy" VALUES (898, 'www.proxy-list.download', 'socks4', '190.234.135.232', 4153, 0, NULL, '2023-12-20 10:08:44.778133', 2, '2023-12-20 10:28:44.778133');
INSERT INTO "proxy" VALUES (899, 'www.proxy-list.download', 'socks4', '36.89.193.169', 48043, 0, NULL, '2023-12-20 10:08:44.820353', 2, '2023-12-20 10:28:44.820353');
INSERT INTO "proxy" VALUES (900, 'www.proxy-list.download', 'socks4', '132.255.94.2', 31337, 0, NULL, '2023-12-20 10:08:44.717228', 2, '2023-12-20 10:28:44.717228');
INSERT INTO "proxy" VALUES (901, 'www.proxy-list.download', 'socks4', '103.116.203.245', 40927, 0, NULL, '2023-12-20 10:08:44.825319', 2, '2023-12-20 10:28:44.825319');
INSERT INTO "proxy" VALUES (902, 'www.proxy-list.download', 'socks4', '36.89.183.253', 56739, 0, NULL, '2023-12-20 10:08:44.791620', 2, '2023-12-20 10:28:44.791620');
INSERT INTO "proxy" VALUES (903, 'www.proxy-list.download', 'socks4', '202.191.126.100', 4153, 0, NULL, '2023-12-20 10:08:44.543146', 2, '2023-12-20 10:28:44.543146');
INSERT INTO "proxy" VALUES (904, 'www.proxy-list.download', 'http', '    </span', 80, 0, NULL, '2023-12-20 10:08:39.290848', 2, '2023-12-20 10:28:39.290848');
INSERT INTO "proxy" VALUES (905, 'www.proxy-list.download', 'socks4', '212.56.194.238', 4145, 0, NULL, '2023-12-20 10:08:39.214292', 2, '2023-12-20 10:28:39.214292');
INSERT INTO "proxy" VALUES (906, 'www.proxy-list.download', 'http', '</html', 80, 0, NULL, '2023-12-20 10:08:44.425126', 2, '2023-12-20 10:28:44.425126');
INSERT INTO "proxy" VALUES (907, 'www.proxy-list.download', 'socks4', '148.77.34.194', 44070, 0, NULL, '2023-12-20 10:08:44.901153', 2, '2023-12-20 10:28:44.901153');
INSERT INTO "proxy" VALUES (908, 'www.proxy-list.download', 'socks4', '94.136.157.81', 60030, 0, NULL, '2023-12-20 10:08:44.646855', 2, '2023-12-20 10:28:44.646855');
INSERT INTO "proxy" VALUES (909, 'www.proxy-list.download', 'socks4', '203.223.44.102', 53945, 0, NULL, '2023-12-20 10:08:44.459766', 2, '2023-12-20 10:28:44.459766');
INSERT INTO "proxy" VALUES (910, 'www.proxy-list.download', 'socks4', '187.141.129.86', 4153, 0, NULL, '2023-12-20 10:08:44.506016', 2, '2023-12-20 10:28:44.506016');
INSERT INTO "proxy" VALUES (911, 'www.proxy-list.download', 'socks4', '82.207.59.154', 3629, 0, NULL, '2023-12-20 10:08:44.497016', 2, '2023-12-20 10:28:44.497016');
INSERT INTO "proxy" VALUES (912, 'www.proxy-list.download', 'socks4', '45.5.119.86', 4153, 0, NULL, '2023-12-20 10:08:44.363107', 2, '2023-12-20 10:28:44.363107');
INSERT INTO "proxy" VALUES (913, 'www.proxy-list.download', 'socks4', '187.33.91.85', 4153, 0, NULL, '2023-12-20 10:08:44.511004', 2, '2023-12-20 10:28:44.511004');
INSERT INTO "proxy" VALUES (914, 'www.proxy-list.download', 'socks4', '187.111.193.80', 44681, 0, NULL, '2023-12-20 10:08:44.689983', 2, '2023-12-20 10:28:44.689983');
INSERT INTO "proxy" VALUES (915, 'www.proxy-list.download', 'socks4', '46.39.29.4', 3629, 0, NULL, '2023-12-20 10:08:44.844044', 2, '2023-12-20 10:28:44.844044');
INSERT INTO "proxy" VALUES (916, 'www.proxy-list.download', 'socks4', '203.160.63.113', 4145, 0, NULL, '2023-12-20 10:08:44.349452', 2, '2023-12-20 10:28:44.349452');
INSERT INTO "proxy" VALUES (917, 'www.proxy-list.download', 'socks4', '213.173.75.243', 4153, 0, NULL, '2023-12-20 10:08:44.502008', 2, '2023-12-20 10:28:44.502008');
INSERT INTO "proxy" VALUES (918, 'www.proxy-list.download', 'socks4', '197.210.120.76', 5678, 0, NULL, '2023-12-20 10:08:44.492004', 2, '2023-12-20 10:28:44.492004');
INSERT INTO "proxy" VALUES (919, 'www.proxy-list.download', 'socks4', '180.210.222.105', 1080, 0, NULL, '2023-12-20 10:08:44.565332', 2, '2023-12-20 10:28:44.565332');
INSERT INTO "proxy" VALUES (920, 'www.proxy-list.download', 'socks4', '187.188.17.134', 4153, 0, NULL, '2023-12-20 10:08:44.415149', 2, '2023-12-20 10:28:44.415149');
INSERT INTO "proxy" VALUES (921, 'www.proxy-list.download', 'socks4', '36.66.192.35', 38420, 0, NULL, '2023-12-20 10:08:44.631371', 2, '2023-12-20 10:28:44.631371');
INSERT INTO "proxy" VALUES (922, 'www.proxy-list.download', 'socks4', '189.1.26.17', 4153, 0, NULL, '2023-12-20 10:08:44.616853', 2, '2023-12-20 10:28:44.616853');
INSERT INTO "proxy" VALUES (923, 'www.proxy-list.download', 'socks4', '202.182.54.186', 4145, 0, NULL, '2023-12-20 10:08:44.814848', 2, '2023-12-20 10:28:44.814848');
INSERT INTO "proxy" VALUES (924, 'www.proxy-list.download', 'socks4', '95.140.27.135', 59193, 0, NULL, '2023-12-20 10:08:44.575172', 2, '2023-12-20 10:28:44.575172');
INSERT INTO "proxy" VALUES (925, 'www.proxy-list.download', 'socks4', '202.5.37.241', 49151, 0, NULL, '2023-12-20 10:08:44.353466', 2, '2023-12-20 10:28:44.353466');
INSERT INTO "proxy" VALUES (926, 'www.proxy-list.download', 'socks4', '87.247.3.234', 46511, 0, NULL, '2023-12-20 10:08:44.430122', 2, '2023-12-20 10:28:44.430122');
INSERT INTO "proxy" VALUES (927, 'www.proxy-list.download', 'socks4', '45.112.57.230', 47509, 0, NULL, '2023-12-20 10:08:44.395129', 2, '2023-12-20 10:28:44.395129');
INSERT INTO "proxy" VALUES (928, 'www.proxy-list.download', 'socks4', '202.158.49.142', 39172, 0, NULL, '2023-12-20 10:08:44.800174', 2, '2023-12-20 10:28:44.800174');
INSERT INTO "proxy" VALUES (929, 'www.proxy-list.download', 'socks4', '50.250.56.129', 48380, 0, NULL, '2023-12-20 10:08:44.905164', 2, '2023-12-20 10:28:44.905164');
INSERT INTO "proxy" VALUES (930, 'www.proxy-list.download', 'socks4', '191.253.89.73', 4145, 0, NULL, '2023-12-20 10:08:44.641923', 2, '2023-12-20 10:28:44.641923');
INSERT INTO "proxy" VALUES (931, 'www.proxy-list.download', 'socks4', '144.136.211.198', 4153, 0, NULL, '2023-12-20 10:08:44.754231', 2, '2023-12-20 10:28:44.754231');
INSERT INTO "proxy" VALUES (932, 'www.proxy-list.download', 'socks5', '208.113.155.120', 41154, 0, NULL, '2023-12-20 10:08:44.839321', 2, '2023-12-20 10:28:44.839321');
INSERT INTO "proxy" VALUES (933, 'www.proxy-list.download', 'http', ' ', 80, 0, NULL, '2023-12-20 10:08:44.650731', 2, '2023-12-20 10:28:44.650731');
INSERT INTO "proxy" VALUES (934, 'www.proxy-list.download', 'socks4', '200.54.221.202', 4145, 0, NULL, '2023-12-20 10:08:44.602374', 2, '2023-12-20 10:28:44.602374');
INSERT INTO "proxy" VALUES (935, 'www.proxy-list.download', 'socks4', '45.114.68.94', 4153, 0, NULL, '2023-12-20 10:08:44.957012', 2, '2023-12-20 10:28:44.957012');
INSERT INTO "proxy" VALUES (936, 'www.proxy-list.download', 'socks4', '164.163.250.83', 4145, 0, NULL, '2023-12-20 10:08:45.222371', 2, '2023-12-20 10:28:45.222371');
INSERT INTO "proxy" VALUES (937, 'www.proxy-list.download', 'http', '            <p>The owner of this website (www.proxy-list.download) has banned you temporarily from accessing this website.</p', 80, 0, NULL, '2023-12-20 10:08:44.675752', 2, '2023-12-20 10:28:44.675752');
INSERT INTO "proxy" VALUES (938, 'www.proxy-list.download', 'socks4', '103.112.61.241', 44550, 0, NULL, '2023-12-20 10:08:44.736215', 2, '2023-12-20 10:28:44.736215');
INSERT INTO "proxy" VALUES (939, 'www.proxy-list.download', 'https', '</html', 80, 0, NULL, '2023-12-20 10:08:44.713226', 2, '2023-12-20 10:28:44.713226');
INSERT INTO "proxy" VALUES (940, 'www.proxy-list.download', 'socks4', '37.57.50.130', 4145, 0, NULL, '2023-12-20 10:08:44.926586', 2, '2023-12-20 10:28:44.926586');
INSERT INTO "proxy" VALUES (941, 'www.proxy-list.download', 'socks4', '81.177.73.10', 4153, 0, NULL, '2023-12-20 10:08:44.524661', 2, '2023-12-20 10:28:44.524661');
INSERT INTO "proxy" VALUES (942, 'www.proxy-list.download', 'socks4', '46.8.33.180', 4153, 0, NULL, '2023-12-20 10:08:44.680031', 2, '2023-12-20 10:28:44.680031');
INSERT INTO "proxy" VALUES (943, 'www.proxy-list.download', 'socks4', '122.55.202.100', 4145, 0, NULL, '2023-12-20 10:08:44.515004', 2, '2023-12-20 10:28:44.515004');
INSERT INTO "proxy" VALUES (944, 'www.proxy-list.download', 'socks4', '24.37.245.42', 51056, 0, NULL, '2023-12-20 10:08:44.556158', 2, '2023-12-20 10:28:44.556158');
INSERT INTO "proxy" VALUES (945, 'www.proxy-list.download', 'socks4', '186.1.182.194', 4153, 0, NULL, '2023-12-20 10:08:44.655744', 2, '2023-12-20 10:28:44.655744');
INSERT INTO "proxy" VALUES (946, 'www.proxy-list.download', 'socks4', '82.147.153.2', 4153, 0, NULL, '2023-12-20 10:08:44.434692', 2, '2023-12-20 10:28:44.434692');
INSERT INTO "proxy" VALUES (947, 'www.proxy-list.download', 'socks4', '181.112.48.142', 35275, 0, NULL, '2023-12-20 10:08:44.468509', 2, '2023-12-20 10:28:44.468509');
INSERT INTO "proxy" VALUES (948, 'www.proxy-list.download', 'socks5', '115.231.175.80', 3000, 0, NULL, '2023-12-20 10:08:44.538378', 2, '2023-12-20 10:28:44.538378');
INSERT INTO "proxy" VALUES (949, 'www.proxy-list.download', 'socks4', '45.64.122.210', 46458, 0, NULL, '2023-12-20 10:08:44.598367', 2, '2023-12-20 10:28:44.598367');
INSERT INTO "proxy" VALUES (950, 'www.proxy-list.download', 'socks5', '106.52.2.26', 1080, 0, NULL, '2023-12-20 10:08:44.848485', 2, '2023-12-20 10:28:44.848485');
INSERT INTO "proxy" VALUES (951, 'www.proxy-list.download', 'socks4', '211.20.145.204', 4153, 0, NULL, '2023-12-20 10:08:44.786602', 2, '2023-12-20 10:28:44.786602');
INSERT INTO "proxy" VALUES (952, 'www.proxy-list.download', 'socks4', '91.203.25.28', 4153, 0, NULL, '2023-12-20 10:08:44.547156', 2, '2023-12-20 10:28:44.547156');
INSERT INTO "proxy" VALUES (953, 'www.proxy-list.download', 'socks4', '190.104.26.227', 33638, 0, NULL, '2023-12-20 10:08:44.635385', 2, '2023-12-20 10:28:44.635385');
INSERT INTO "proxy" VALUES (954, 'www.proxy-list.download', 'socks4', '45.70.0.250', 4145, 0, NULL, '2023-12-20 10:08:45.111151', 2, '2023-12-20 10:28:45.111151');
INSERT INTO "proxy" VALUES (955, 'www.proxy-list.download', 'socks4', '200.108.198.205', 4153, 0, NULL, '2023-12-20 10:08:44.834335', 2, '2023-12-20 10:28:44.834335');
INSERT INTO "proxy" VALUES (956, 'www.proxy-list.download', 'socks4', '103.194.192.29', 51289, 0, NULL, '2023-12-20 10:08:44.967011', 2, '2023-12-20 10:28:44.967011');
INSERT INTO "proxy" VALUES (957, 'www.proxy-list.download', 'socks4', '177.129.17.52', 54962, 0, NULL, '2023-12-20 10:08:44.939755', 2, '2023-12-20 10:28:44.939755');
INSERT INTO "proxy" VALUES (958, 'www.proxy-list.download', 'socks4', '200.5.203.58', 56142, 0, NULL, '2023-12-20 10:08:44.998243', 2, '2023-12-20 10:28:44.998243');
INSERT INTO "proxy" VALUES (959, 'www.proxy-list.download', 'socks4', '93.63.75.62', 1080, 0, NULL, '2023-12-20 10:08:44.972010', 2, '2023-12-20 10:28:44.972010');
INSERT INTO "proxy" VALUES (960, 'www.proxy-list.download', 'socks4', '103.106.112.11', 5430, 0, NULL, '2023-12-20 10:08:44.830317', 2, '2023-12-20 10:28:44.830317');
INSERT INTO "proxy" VALUES (961, 'www.proxy-list.download', 'http', '<title>Access denied | www.proxy-list.download used Cloudflare to restrict access</title', 80, 0, NULL, '2023-12-20 10:08:44.891152', 2, '2023-12-20 10:28:44.891152');
INSERT INTO "proxy" VALUES (962, 'www.proxy-list.download', 'socks4', '83.136.176.64', 4145, 0, NULL, '2023-12-20 10:08:45.036417', 2, '2023-12-20 10:28:45.036417');
INSERT INTO "proxy" VALUES (963, 'www.proxy-list.download', 'socks4', '202.186.230.87', 4145, 0, NULL, '2023-12-20 10:08:44.945323', 2, '2023-12-20 10:28:44.945323');
INSERT INTO "proxy" VALUES (964, 'www.proxy-list.download', 'socks4', '200.85.95.234', 4153, 0, NULL, '2023-12-20 10:08:45.106167', 2, '2023-12-20 10:28:45.106167');
INSERT INTO "proxy" VALUES (965, 'www.proxy-list.download', 'socks4', '87.103.196.236', 1080, 0, NULL, '2023-12-20 10:08:45.083777', 2, '2023-12-20 10:28:45.083777');
INSERT INTO "proxy" VALUES (966, 'www.proxy-list.download', 'socks4', '103.106.32.217', 31110, 0, NULL, '2023-12-20 10:08:44.910151', 2, '2023-12-20 10:28:44.910151');
INSERT INTO "proxy" VALUES (967, 'www.proxy-list.download', 'socks4', '103.79.96.181', 4153, 0, NULL, '2023-12-20 10:08:45.088385', 2, '2023-12-20 10:28:45.088385');
INSERT INTO "proxy" VALUES (968, 'www.proxy-list.download', 'socks4', '101.255.140.101', 1081, 0, NULL, '2023-12-20 10:08:44.896158', 2, '2023-12-20 10:28:44.896158');
INSERT INTO "proxy" VALUES (969, 'www.proxy-list.download', 'socks4', '212.107.233.222', 3629, 0, NULL, '2023-12-20 10:08:45.182960', 2, '2023-12-20 10:28:45.182960');
INSERT INTO "proxy" VALUES (970, 'www.proxy-list.download', 'socks4', '212.42.99.22', 4145, 0, NULL, '2023-12-20 10:08:44.858150', 2, '2023-12-20 10:28:44.858150');
INSERT INTO "proxy" VALUES (971, 'www.proxy-list.download', 'socks4', '177.105.68.177', 4153, 0, NULL, '2023-12-20 10:08:45.149767', 2, '2023-12-20 10:28:45.149767');
INSERT INTO "proxy" VALUES (972, 'www.proxy-list.download', 'socks4', '69.163.160.185', 29802, 0, NULL, '2023-12-20 10:08:45.130172', 2, '2023-12-20 10:28:45.130172');
INSERT INTO "proxy" VALUES (973, 'www.proxy-list.download', 'socks4', '190.167.220.7', 4153, 0, NULL, '2023-12-20 10:08:44.768228', 2, '2023-12-20 10:28:44.768228');
INSERT INTO "proxy" VALUES (974, 'www.proxy-list.download', 'socks4', '92.242.255.11', 31024, 0, NULL, '2023-12-20 10:08:45.064073', 2, '2023-12-20 10:28:45.064073');
INSERT INTO "proxy" VALUES (975, 'www.proxy-list.download', 'socks4', '203.209.190.202', 4153, 0, NULL, '2023-12-20 10:08:44.611846', 2, '2023-12-20 10:28:44.611846');
INSERT INTO "proxy" VALUES (976, 'www.proxy-list.download', 'socks4', '1.9.167.36', 60489, 0, NULL, '2023-12-20 10:08:45.050429', 2, '2023-12-20 10:28:45.050429');
INSERT INTO "proxy" VALUES (977, 'www.proxy-list.download', 'socks4', '91.219.100.72', 4153, 0, NULL, '2023-12-20 10:08:45.102143', 2, '2023-12-20 10:28:45.102143');
INSERT INTO "proxy" VALUES (978, 'www.proxy-list.download', 'socks4', '91.147.210.86', 4145, 0, NULL, '2023-12-20 10:08:44.887151', 2, '2023-12-20 10:28:44.887151');
INSERT INTO "proxy" VALUES (979, 'www.proxy-list.download', 'socks4', '62.73.127.98', 10801, 0, NULL, '2023-12-20 10:08:44.952012', 2, '2023-12-20 10:28:44.952012');
INSERT INTO "proxy" VALUES (980, 'www.proxy-list.download', 'socks5', '69.163.161.209', 38713, 0, NULL, '2023-12-20 10:08:45.092288', 2, '2023-12-20 10:28:45.092288');
INSERT INTO "proxy" VALUES (981, 'www.proxy-list.download', 'socks4', '200.41.150.83', 61084, 0, NULL, '2023-12-20 10:08:44.804680', 2, '2023-12-20 10:28:44.804680');
INSERT INTO "proxy" VALUES (982, 'www.proxy-list.download', 'socks4', '103.84.134.1', 1080, 0, NULL, '2023-12-20 10:08:45.269844', 2, '2023-12-20 10:28:45.269844');
INSERT INTO "proxy" VALUES (983, 'www.proxy-list.download', 'socks4', '121.58.243.202', 4145, 0, NULL, '2023-12-20 10:08:45.125172', 2, '2023-12-20 10:28:45.125172');
INSERT INTO "proxy" VALUES (984, 'www.proxy-list.download', 'socks4', '94.101.138.16', 4153, 0, NULL, '2023-12-20 10:08:45.264889', 2, '2023-12-20 10:28:45.264889');
INSERT INTO "proxy" VALUES (985, 'www.proxy-list.download', 'https', 'b.send(JSON.stringify(a));c.classList.add("feedback-hidden");d.classList.remove("feedback-hidden")};document.addEventListener("DOMContentLoaded",function(){var a=document.getElementById("error-feedback"),c=document.getElementById("feedback-button-yes"),d=document.getElementById("feedback-button-no");"classList"in a&&(a.classList.remove("feedback-hidden"),c.addEventListener("click",function(){e(!0)}),d.addEventListener("click",function(){e(!1)}))})}})()', 80, 0, NULL, '2023-12-20 10:08:44.914166', 2, '2023-12-20 10:28:44.914166');
INSERT INTO "proxy" VALUES (986, 'www.proxy-list.download', 'socks4', '202.169.246.55', 4145, 0, NULL, '2023-12-20 10:08:44.853164', 2, '2023-12-20 10:28:44.853164');
INSERT INTO "proxy" VALUES (987, 'www.proxy-list.download', 'socks5', '101.132.36.83', 3129, 0, NULL, '2023-12-20 10:08:45.022416', 2, '2023-12-20 10:28:45.022416');
INSERT INTO "proxy" VALUES (988, 'www.proxy-list.download', 'socks4', '103.70.204.65', 59311, 0, NULL, '2023-12-20 10:08:44.862383', 2, '2023-12-20 10:28:44.862383');
INSERT INTO "proxy" VALUES (989, 'www.proxy-list.download', 'socks4', '103.35.111.101', 4145, 0, NULL, '2023-12-20 10:08:44.584185', 2, '2023-12-20 10:28:44.584185');
INSERT INTO "proxy" VALUES (990, 'www.proxy-list.download', 'socks4', '80.82.147.2', 4153, 0, NULL, '2023-12-20 10:08:45.293684', 2, '2023-12-20 10:28:45.293684');
INSERT INTO "proxy" VALUES (991, 'www.proxy-list.download', 'socks4', '176.98.156.64', 4145, 0, NULL, '2023-12-20 10:08:44.993269', 2, '2023-12-20 10:28:44.993269');
INSERT INTO "proxy" VALUES (992, 'www.proxy-list.download', 'socks4', '116.90.229.186', 47694, 0, NULL, '2023-12-20 10:08:45.012266', 2, '2023-12-20 10:28:45.012266');
INSERT INTO "proxy" VALUES (993, 'www.proxy-list.download', 'socks4', '187.190.237.69', 39835, 0, NULL, '2023-12-20 10:08:44.750232', 2, '2023-12-20 10:28:44.750232');
INSERT INTO "proxy" VALUES (994, 'www.proxy-list.download', 'socks4', '59.91.122.1', 46726, 0, NULL, '2023-12-20 10:08:44.882282', 2, '2023-12-20 10:28:44.882282');
INSERT INTO "proxy" VALUES (995, 'www.proxy-list.download', 'socks4', '101.255.117.2', 51122, 0, NULL, '2023-12-20 10:08:45.178109', 2, '2023-12-20 10:28:45.178109');
INSERT INTO "proxy" VALUES (996, 'www.proxy-list.download', 'socks4', '85.185.152.148', 4145, 0, NULL, '2023-12-20 10:08:45.144200', 2, '2023-12-20 10:28:45.144200');
INSERT INTO "proxy" VALUES (997, 'www.proxy-list.download', 'socks4', '79.106.35.61', 1080, 0, NULL, '2023-12-20 10:08:44.731230', 2, '2023-12-20 10:28:44.731230');
INSERT INTO "proxy" VALUES (998, 'www.proxy-list.download', 'socks4', '1.0.133.100', 51327, 0, NULL, '2023-12-20 10:08:45.115193', 2, '2023-12-20 10:28:45.115193');
INSERT INTO "proxy" VALUES (999, 'www.proxy-list.download', 'socks4', '78.133.186.129', 4153, 0, NULL, '2023-12-20 10:08:44.934586', 2, '2023-12-20 10:28:44.934586');
INSERT INTO "proxy" VALUES (1000, 'www.proxy-list.download', 'socks4', '91.233.250.106', 4145, 0, NULL, '2023-12-20 10:08:45.140172', 2, '2023-12-20 10:28:45.140172');
INSERT INTO "proxy" VALUES (1001, 'www.proxy-list.download', 'socks4', '95.19.50.60', 4145, 0, NULL, '2023-12-20 10:08:45.339146', 2, '2023-12-20 10:28:45.339146');
INSERT INTO "proxy" VALUES (1002, 'www.proxy-list.download', 'socks4', '190.145.174.26', 4153, 0, NULL, '2023-12-20 10:08:45.451162', 2, '2023-12-20 10:28:45.451162');
INSERT INTO "proxy" VALUES (1003, 'www.proxy-list.download', 'socks4', '118.175.93.25', 52026, 0, NULL, '2023-12-20 10:08:45.493177', 2, '2023-12-20 10:28:45.493177');
INSERT INTO "proxy" VALUES (1004, 'www.proxy-list.download', 'socks4', '103.44.14.129', 4145, 0, NULL, '2023-12-20 10:08:45.679863', 2, '2023-12-20 10:28:45.679863');
INSERT INTO "proxy" VALUES (1005, 'www.proxy-list.download', 'socks4', '191.7.209.74', 39383, 0, NULL, '2023-12-20 10:08:45.309259', 2, '2023-12-20 10:28:45.309259');
INSERT INTO "proxy" VALUES (1006, 'www.proxy-list.download', 'socks4', '103.232.64.226', 4145, 0, NULL, '2023-12-20 10:08:44.552147', 2, '2023-12-20 10:28:44.552147');
INSERT INTO "proxy" VALUES (1007, 'www.proxy-list.download', 'socks4', '180.211.191.94', 4153, 0, NULL, '2023-12-20 10:08:45.389992', 2, '2023-12-20 10:28:45.389992');
INSERT INTO "proxy" VALUES (1008, 'www.proxy-list.download', 'socks4', '186.0.239.225', 3629, 0, NULL, '2023-12-20 10:08:45.342720', 2, '2023-12-20 10:28:45.342720');
INSERT INTO "proxy" VALUES (1009, 'www.proxy-list.download', 'socks4', '103.242.125.243', 4145, 0, NULL, '2023-12-20 10:08:45.446432', 2, '2023-12-20 10:28:45.446432');
INSERT INTO "proxy" VALUES (1010, 'www.proxy-list.download', 'socks4', '113.160.58.230', 4145, 0, NULL, '2023-12-20 10:08:45.385998', 2, '2023-12-20 10:28:45.385998');
INSERT INTO "proxy" VALUES (1011, 'www.proxy-list.download', 'socks4', '170.244.64.129', 31476, 0, NULL, '2023-12-20 10:08:45.041415', 2, '2023-12-20 10:28:45.041415');
INSERT INTO "proxy" VALUES (1012, 'www.proxy-list.download', 'https', '         </h1', 80, 0, NULL, '2023-12-20 10:08:45.381981', 2, '2023-12-20 10:28:45.381981');
INSERT INTO "proxy" VALUES (1013, 'www.proxy-list.download', 'socks4', '45.169.98.242', 4153, 0, NULL, '2023-12-20 10:08:45.231371', 2, '2023-12-20 10:28:45.231371');
INSERT INTO "proxy" VALUES (1014, 'www.proxy-list.download', 'socks4', '155.133.83.161', 58351, 0, NULL, '2023-12-20 10:08:45.120171', 2, '2023-12-20 10:28:45.120171');
INSERT INTO "proxy" VALUES (1015, 'www.proxy-list.download', 'socks4', '103.200.37.31', 1080, 0, NULL, '2023-12-20 10:08:45.334259', 2, '2023-12-20 10:28:45.334259');
INSERT INTO "proxy" VALUES (1016, 'www.proxy-list.download', 'socks4', '189.80.219.59', 4145, 0, NULL, '2023-12-20 10:08:45.237358', 2, '2023-12-20 10:28:45.237358');
INSERT INTO "proxy" VALUES (1017, 'www.proxy-list.download', 'http', '    <span class="cf-footer-item sm', 80, 0, NULL, '2023-12-20 10:08:44.981714', 2, '2023-12-20 10:28:44.981714');
INSERT INTO "proxy" VALUES (1018, 'www.proxy-list.download', 'socks4', '155.133.83.61', 58351, 0, NULL, '2023-12-20 10:08:46.028592', 2, '2023-12-20 10:28:46.028592');
INSERT INTO "proxy" VALUES (1019, 'www.proxy-list.download', 'socks4', '176.36.20.67', 35356, 0, NULL, '2023-12-20 10:08:45.510185', 2, '2023-12-20 10:28:45.510185');
INSERT INTO "proxy" VALUES (1020, 'www.proxy-list.download', 'socks4', '24.139.143.226', 4153, 0, NULL, '2023-12-20 10:08:45.278855', 2, '2023-12-20 10:28:45.278855');
INSERT INTO "proxy" VALUES (1021, 'www.proxy-list.download', 'socks4', '170.239.252.250', 4145, 0, NULL, '2023-12-20 10:08:45.711091', 2, '2023-12-20 10:28:45.711091');
INSERT INTO "proxy" VALUES (1022, 'www.proxy-list.download', 'socks4', '1.20.97.181', 34102, 0, NULL, '2023-12-20 10:08:45.407732', 2, '2023-12-20 10:28:45.407732');
INSERT INTO "proxy" VALUES (1023, 'www.proxy-list.download', 'socks4', '103.74.120.89', 4145, 0, NULL, '2023-12-20 10:08:45.069078', 2, '2023-12-20 10:28:45.069078');
INSERT INTO "proxy" VALUES (1024, 'www.proxy-list.download', 'socks4', '36.84.100.230', 34432, 0, NULL, '2023-12-20 10:08:45.097144', 2, '2023-12-20 10:28:45.097144');
INSERT INTO "proxy" VALUES (1025, 'www.proxy-list.download', 'socks4', '103.60.138.65', 4153, 0, NULL, '2023-12-20 10:08:45.582506', 2, '2023-12-20 10:28:45.582506');
INSERT INTO "proxy" VALUES (1026, 'www.proxy-list.download', 'socks4', '131.161.65.47', 4153, 0, NULL, '2023-12-20 10:08:45.192959', 2, '2023-12-20 10:28:45.192959');
INSERT INTO "proxy" VALUES (1027, 'www.proxy-list.download', 'socks4', '181.129.49.4', 31240, 0, NULL, '2023-12-20 10:08:45.153782', 2, '2023-12-20 10:28:45.153782');
INSERT INTO "proxy" VALUES (1028, 'www.proxy-list.download', 'socks4', '103.196.53.209', 44110, 0, NULL, '2023-12-20 10:08:45.017423', 2, '2023-12-20 10:28:45.017423');
INSERT INTO "proxy" VALUES (1029, 'www.proxy-list.download', 'socks4', '202.51.100.33', 5430, 0, NULL, '2023-12-20 10:08:45.187966', 2, '2023-12-20 10:28:45.187966');
INSERT INTO "proxy" VALUES (1030, 'www.proxy-list.download', 'socks4', '103.120.135.33', 4145, 0, NULL, '2023-12-20 10:08:45.059556', 2, '2023-12-20 10:28:45.059556');
INSERT INTO "proxy" VALUES (1031, 'www.proxy-list.download', 'socks4', '37.17.168.163', 61865, 0, NULL, '2023-12-20 10:08:45.501351', 2, '2023-12-20 10:28:45.501351');
INSERT INTO "proxy" VALUES (1032, 'www.proxy-list.download', 'https', '  </div><!-- /#cf-wrapper --', 80, 0, NULL, '2023-12-20 10:08:45.172394', 2, '2023-12-20 10:28:45.172394');
INSERT INTO "proxy" VALUES (1033, 'www.proxy-list.download', 'socks4', '77.89.207.22', 4145, 0, NULL, '2023-12-20 10:08:45.007240', 2, '2023-12-20 10:28:45.007240');
INSERT INTO "proxy" VALUES (1034, 'www.proxy-list.download', 'socks4', '45.228.96.2', 4153, 0, NULL, '2023-12-20 10:08:45.247093', 2, '2023-12-20 10:28:45.247093');
INSERT INTO "proxy" VALUES (1035, 'www.proxy-list.download', 'socks4', '175.41.45.129', 34432, 0, NULL, '2023-12-20 10:08:45.055415', 2, '2023-12-20 10:28:45.055415');
INSERT INTO "proxy" VALUES (1036, 'www.proxy-list.download', 'socks5', '222.129.36.92', 57114, 0, NULL, '2023-12-20 10:08:45.168407', 2, '2023-12-20 10:28:45.168407');
INSERT INTO "proxy" VALUES (1037, 'www.proxy-list.download', 'socks4', '45.116.3.249', 4145, 0, NULL, '2023-12-20 10:08:45.203506', 2, '2023-12-20 10:28:45.203506');
INSERT INTO "proxy" VALUES (1038, 'www.proxy-list.download', 'socks4', '95.79.112.74', 3629, 0, NULL, '2023-12-20 10:08:45.426720', 2, '2023-12-20 10:28:45.426720');
INSERT INTO "proxy" VALUES (1039, 'www.proxy-list.download', 'socks4', '179.27.86.36', 4153, 0, NULL, '2023-12-20 10:08:45.026642', 2, '2023-12-20 10:28:45.026642');
INSERT INTO "proxy" VALUES (1040, 'www.proxy-list.download', 'socks4', '121.58.243.205', 4145, 0, NULL, '2023-12-20 10:08:45.256099', 2, '2023-12-20 10:28:45.256099');
INSERT INTO "proxy" VALUES (1041, 'www.proxy-list.download', 'socks4', '222.74.69.234', 38051, 0, NULL, '2023-12-20 10:08:45.283835', 2, '2023-12-20 10:28:45.283835');
INSERT INTO "proxy" VALUES (1042, 'www.proxy-list.download', 'socks4', '190.128.135.130', 44915, 0, NULL, '2023-12-20 10:08:45.420739', 2, '2023-12-20 10:28:45.420739');
INSERT INTO "proxy" VALUES (1043, 'www.proxy-list.download', 'https', '  <div id="cf-wrapper"', 80, 0, NULL, '2023-12-20 10:08:45.158768', 2, '2023-12-20 10:28:45.158768');
INSERT INTO "proxy" VALUES (1044, 'www.proxy-list.download', 'socks4', '181.129.74.58', 30431, 0, NULL, '2023-12-20 10:08:45.045416', 2, '2023-12-20 10:28:45.045416');
INSERT INTO "proxy" VALUES (1045, 'www.proxy-list.download', 'socks4', '202.62.227.41', 31606, 0, NULL, '2023-12-20 10:08:45.299273', 2, '2023-12-20 10:28:45.299273');
INSERT INTO "proxy" VALUES (1046, 'www.proxy-list.download', 'socks4', '186.193.2.22', 31063, 0, NULL, '2023-12-20 10:08:44.987301', 2, '2023-12-20 10:28:44.987301');
INSERT INTO "proxy" VALUES (1047, 'www.proxy-list.download', 'http', '      <span class="cf-footer-separator sm', 80, 0, NULL, '2023-12-20 10:08:45.213512', 2, '2023-12-20 10:28:45.213512');
INSERT INTO "proxy" VALUES (1048, 'www.proxy-list.download', 'socks4', '186.1.181.62', 4153, 0, NULL, '2023-12-20 10:08:45.227357', 2, '2023-12-20 10:28:45.227357');
INSERT INTO "proxy" VALUES (1049, 'www.proxy-list.download', 'socks4', '187.19.205.226', 4145, 0, NULL, '2023-12-20 10:08:45.031438', 2, '2023-12-20 10:28:45.031438');
INSERT INTO "proxy" VALUES (1050, 'www.proxy-list.download', 'socks4', '202.58.108.98', 36819, 0, NULL, '2023-12-20 10:08:45.074072', 2, '2023-12-20 10:28:45.074072');
INSERT INTO "proxy" VALUES (1051, 'www.proxy-list.download', 'socks4', '50.207.130.238', 54321, 0, NULL, '2023-12-20 10:08:45.252088', 2, '2023-12-20 10:28:45.252088');
INSERT INTO "proxy" VALUES (1052, 'www.proxy-list.download', 'socks4', '213.101.151.4', 1080, 0, NULL, '2023-12-20 10:08:45.368992', 2, '2023-12-20 10:28:45.368992');
INSERT INTO "proxy" VALUES (1053, 'www.proxy-list.download', 'socks4', '177.207.192.137', 4145, 0, NULL, '2023-12-20 10:08:45.479651', 2, '2023-12-20 10:28:45.479651');
INSERT INTO "proxy" VALUES (1054, 'www.proxy-list.download', 'socks4', '114.89.83.28', 4145, 0, NULL, '2023-12-20 10:08:45.497177', 2, '2023-12-20 10:28:45.497177');
INSERT INTO "proxy" VALUES (1055, 'www.proxy-list.download', 'http', '  <script', 80, 0, NULL, '2023-12-20 10:08:45.242357', 2, '2023-12-20 10:28:45.242357');
INSERT INTO "proxy" VALUES (1056, 'www.proxy-list.download', 'socks4', '113.53.29.228', 13629, 0, NULL, '2023-12-20 10:08:45.162783', 2, '2023-12-20 10:28:45.162783');
INSERT INTO "proxy" VALUES (1057, 'www.proxy-list.download', 'socks4', '182.253.243.16', 5678, 0, NULL, '2023-12-20 10:08:45.078087', 2, '2023-12-20 10:28:45.078087');
INSERT INTO "proxy" VALUES (1058, 'www.proxy-list.download', 'socks4', '14.201.234.2', 43238, 0, NULL, '2023-12-20 10:08:45.197958', 2, '2023-12-20 10:28:45.197958');
INSERT INTO "proxy" VALUES (1059, 'www.proxy-list.download', 'socks4', '170.246.85.107', 37163, 0, NULL, '2023-12-20 10:08:45.217521', 2, '2023-12-20 10:28:45.217521');
INSERT INTO "proxy" VALUES (1060, 'www.proxy-list.download', 'socks4', '200.85.137.46', 4153, 0, NULL, '2023-12-20 10:08:45.003239', 2, '2023-12-20 10:28:45.003239');
INSERT INTO "proxy" VALUES (1061, 'www.proxy-list.download', 'socks4', '117.242.147.73', 46152, 0, NULL, '2023-12-20 10:08:45.208506', 2, '2023-12-20 10:28:45.208506');
INSERT INTO "proxy" VALUES (1062, 'www.proxy-list.download', 'http', '    <div class="cf-alert cf-alert-error cf-cookie-error hidden" id="cookie-alert" data-translate="enable_cookies">Please enable cookies.</div', 80, 0, NULL, '2023-12-20 10:08:45.135171', 2, '2023-12-20 10:28:45.135171');
INSERT INTO "proxy" VALUES (1063, 'www.proxy-list.download', 'socks4', '1.186.40.2', 39651, 0, NULL, '2023-12-20 10:08:45.394665', 2, '2023-12-20 10:28:45.394665');
INSERT INTO "proxy" VALUES (1064, 'www.proxy-list.download', 'socks4', '187.216.81.183', 37640, 0, NULL, '2023-12-20 10:08:45.416732', 2, '2023-12-20 10:28:45.416732');
INSERT INTO "proxy" VALUES (1065, 'www.proxy-list.download', 'socks4', '77.241.20.215', 55915, 0, NULL, '2023-12-20 10:08:45.372992', 2, '2023-12-20 10:28:45.372992');
INSERT INTO "proxy" VALUES (1066, 'www.proxy-list.download', 'socks4', '77.236.196.27', 4153, 0, NULL, '2023-12-20 10:08:45.626689', 2, '2023-12-20 10:28:45.626689');
INSERT INTO "proxy" VALUES (1067, 'www.proxy-list.download', 'socks4', '45.6.229.227', 4145, 0, NULL, '2023-12-20 10:08:45.764505', 2, '2023-12-20 10:28:45.764505');
INSERT INTO "proxy" VALUES (1068, 'www.proxy-list.download', 'socks5', '43.224.8.116', 6667, 0, NULL, '2023-12-20 10:08:45.617463', 2, '2023-12-20 10:28:45.617463');
INSERT INTO "proxy" VALUES (1069, 'www.proxy-list.download', 'socks4', '176.56.107.171', 46064, 0, NULL, '2023-12-20 10:08:45.567518', 2, '2023-12-20 10:28:45.567518');
INSERT INTO "proxy" VALUES (1070, 'www.proxy-list.download', 'socks4', '188.75.139.60', 4145, 0, NULL, '2023-12-20 10:08:45.355998', 2, '2023-12-20 10:28:45.355998');
INSERT INTO "proxy" VALUES (1071, 'www.proxy-list.download', 'https', '      <span class="cf-footer-separator sm', 80, 0, NULL, '2023-12-20 10:08:45.288700', 2, '2023-12-20 10:28:45.288700');
INSERT INTO "proxy" VALUES (1072, 'www.proxy-list.download', 'socks4', '59.153.83.170', 1081, 0, NULL, '2023-12-20 10:08:45.654866', 2, '2023-12-20 10:28:45.654866');
INSERT INTO "proxy" VALUES (1073, 'www.proxy-list.download', 'socks4', '169.255.65.254', 1080, 0, NULL, '2023-12-20 10:08:45.599459', 2, '2023-12-20 10:28:45.599459');
INSERT INTO "proxy" VALUES (1074, 'www.proxy-list.download', 'socks4', '177.105.68.220', 4153, 0, NULL, '2023-12-20 10:08:45.488193', 2, '2023-12-20 10:28:45.488193');
INSERT INTO "proxy" VALUES (1075, 'www.proxy-list.download', 'socks4', '84.54.132.0', 4145, 0, NULL, '2023-12-20 10:08:45.576505', 2, '2023-12-20 10:28:45.576505');
INSERT INTO "proxy" VALUES (1076, 'www.proxy-list.download', 'socks4', '87.248.171.235', 4145, 0, NULL, '2023-12-20 10:08:45.377984', 2, '2023-12-20 10:28:45.377984');
INSERT INTO "proxy" VALUES (1077, 'www.proxy-list.download', 'socks4', '50.235.92.14', 32100, 0, NULL, '2023-12-20 10:08:45.595167', 2, '2023-12-20 10:28:45.595167');
INSERT INTO "proxy" VALUES (1078, 'www.proxy-list.download', 'https', '</body', 80, 0, NULL, '2023-12-20 10:08:45.524516', 2, '2023-12-20 10:28:45.524516');
INSERT INTO "proxy" VALUES (1079, 'www.proxy-list.download', 'socks4', '181.196.181.146', 4145, 0, NULL, '2023-12-20 10:08:45.461149', 2, '2023-12-20 10:28:45.461149');
INSERT INTO "proxy" VALUES (1080, 'www.proxy-list.download', 'socks4', '103.90.74.242', 4153, 0, NULL, '2023-12-20 10:08:45.550515', 2, '2023-12-20 10:28:45.550515');
INSERT INTO "proxy" VALUES (1081, 'www.proxy-list.download', 'socks4', '80.191.169.66', 4145, 0, NULL, '2023-12-20 10:08:45.725091', 2, '2023-12-20 10:28:45.725091');
INSERT INTO "proxy" VALUES (1082, 'www.proxy-list.download', 'socks5', '218.64.122.99', 7302, 0, NULL, '2023-12-20 10:08:45.635687', 2, '2023-12-20 10:28:45.635687');
INSERT INTO "proxy" VALUES (1083, 'www.proxy-list.download', 'socks4', '89.133.95.177', 4145, 0, NULL, '2023-12-20 10:08:45.705274', 2, '2023-12-20 10:28:45.705274');
INSERT INTO "proxy" VALUES (1084, 'www.proxy-list.download', 'socks4', '109.245.241.89', 4145, 0, NULL, '2023-12-20 10:08:45.474724', 2, '2023-12-20 10:28:45.474724');
INSERT INTO "proxy" VALUES (1085, 'www.proxy-list.download', 'socks4', '150.129.52.74', 6667, 0, NULL, '2023-12-20 10:08:45.360987', 2, '2023-12-20 10:28:45.360987');
INSERT INTO "proxy" VALUES (1086, 'www.proxy-list.download', 'socks4', '185.123.194.28', 3629, 0, NULL, '2023-12-20 10:08:45.621675', 2, '2023-12-20 10:28:45.621675');
INSERT INTO "proxy" VALUES (1087, 'www.proxy-list.download', 'http', '    <div id="error-feedback-survey" class="footer-line-wrapper"', 80, 0, NULL, '2023-12-20 10:08:45.604450', 2, '2023-12-20 10:28:45.604450');
INSERT INTO "proxy" VALUES (1088, 'www.proxy-list.download', 'socks4', '202.168.146.99', 1080, 0, NULL, '2023-12-20 10:08:45.642678', 2, '2023-12-20 10:28:45.642678');
INSERT INTO "proxy" VALUES (1089, 'www.proxy-list.download', 'socks5', '98.185.94.94', 4145, 0, NULL, '2023-12-20 10:08:45.520170', 2, '2023-12-20 10:28:45.520170');
INSERT INTO "proxy" VALUES (1090, 'www.proxy-list.download', 'socks4', '88.255.217.114', 1080, 0, NULL, '2023-12-20 10:08:45.304266', 2, '2023-12-20 10:28:45.304266');
INSERT INTO "proxy" VALUES (1091, 'www.proxy-list.download', 'socks4', '167.250.160.206', 4153, 0, NULL, '2023-12-20 10:08:45.586653', 2, '2023-12-20 10:28:45.586653');
INSERT INTO "proxy" VALUES (1092, 'www.proxy-list.download', 'socks4', '168.227.158.9', 4145, 0, NULL, '2023-12-20 10:08:45.591157', 2, '2023-12-20 10:28:45.591157');
INSERT INTO "proxy" VALUES (1093, 'www.proxy-list.download', 'socks4', '8.210.163.246', 50032, 0, NULL, '2023-12-20 10:08:45.666868', 2, '2023-12-20 10:28:45.666868');
INSERT INTO "proxy" VALUES (1094, 'www.proxy-list.download', 'socks4', '190.217.1.101', 55170, 0, NULL, '2023-12-20 10:08:45.465164', 2, '2023-12-20 10:28:45.465164');
INSERT INTO "proxy" VALUES (1095, 'www.proxy-list.download', 'socks4', '213.109.6.85', 60269, 0, NULL, '2023-12-20 10:08:45.658862', 2, '2023-12-20 10:28:45.658862');
INSERT INTO "proxy" VALUES (1096, 'www.proxy-list.download', 'socks4', '77.37.131.73', 4145, 0, NULL, '2023-12-20 10:08:45.364981', 2, '2023-12-20 10:28:45.364981');
INSERT INTO "proxy" VALUES (1097, 'www.proxy-list.download', 'socks4', '180.211.141.158', 4153, 0, NULL, '2023-12-20 10:08:45.768492', 2, '2023-12-20 10:28:45.768492');
INSERT INTO "proxy" VALUES (1098, 'www.proxy-list.download', 'socks4', '170.0.52.6', 4153, 0, NULL, '2023-12-20 10:08:45.630687', 2, '2023-12-20 10:28:45.630687');
INSERT INTO "proxy" VALUES (1099, 'www.proxy-list.download', 'socks4', '194.135.75.74', 34768, 0, NULL, '2023-12-20 10:08:45.721113', 2, '2023-12-20 10:28:45.721113');
INSERT INTO "proxy" VALUES (1100, 'www.proxy-list.download', 'socks4', '222.129.34.122', 57114, 0, NULL, '2023-12-20 10:08:46.034592', 2, '2023-12-20 10:28:46.034592');
INSERT INTO "proxy" VALUES (1101, 'www.proxy-list.download', 'http', '    </div', 80, 0, NULL, '2023-12-20 10:08:45.456160', 2, '2023-12-20 10:28:45.456160');
INSERT INTO "proxy" VALUES (1102, 'www.proxy-list.download', 'socks4', '213.81.219.27', 1080, 0, NULL, '2023-12-20 10:08:46.073091', 2, '2023-12-20 10:28:46.073091');
INSERT INTO "proxy" VALUES (1103, 'www.proxy-list.download', 'socks4', '79.106.35.223', 1080, 0, NULL, '2023-12-20 10:08:46.104117', 2, '2023-12-20 10:28:46.104117');
INSERT INTO "proxy" VALUES (1104, 'www.proxy-list.download', 'socks4', '190.228.171.254', 4145, 0, NULL, '2023-12-20 10:08:45.670863', 2, '2023-12-20 10:28:45.670863');
INSERT INTO "proxy" VALUES (1105, 'www.proxy-list.download', 'socks4', '91.237.161.211', 56889, 0, NULL, '2023-12-20 10:08:45.470727', 2, '2023-12-20 10:28:45.470727');
INSERT INTO "proxy" VALUES (1106, 'www.proxy-list.download', 'socks4', '131.221.217.176', 4145, 0, NULL, '2023-12-20 10:08:45.328365', 2, '2023-12-20 10:28:45.328365');
INSERT INTO "proxy" VALUES (1107, 'www.proxy-list.download', 'socks4', '31.10.110.132', 4145, 0, NULL, '2023-12-20 10:08:45.431436', 2, '2023-12-20 10:28:45.431436');
INSERT INTO "proxy" VALUES (1108, 'www.proxy-list.download', 'socks4', '66.135.227.178', 4145, 0, NULL, '2023-12-20 10:08:45.675859', 2, '2023-12-20 10:28:45.675859');
INSERT INTO "proxy" VALUES (1109, 'www.proxy-list.download', 'socks4', '103.28.114.94', 1080, 0, NULL, '2023-12-20 10:08:45.716092', 2, '2023-12-20 10:28:45.716092');
INSERT INTO "proxy" VALUES (1110, 'www.proxy-list.download', 'socks4', '200.29.176.174', 4145, 0, NULL, '2023-12-20 10:08:45.412719', 2, '2023-12-20 10:28:45.412719');
INSERT INTO "proxy" VALUES (1111, 'www.proxy-list.download', 'socks4', '195.244.36.206', 4153, 0, NULL, '2023-12-20 10:08:45.323273', 2, '2023-12-20 10:28:45.323273');
INSERT INTO "proxy" VALUES (1112, 'www.proxy-list.download', 'socks4', '106.242.5.206', 4145, 0, NULL, '2023-12-20 10:08:45.260096', 2, '2023-12-20 10:28:45.260096');
INSERT INTO "proxy" VALUES (1113, 'www.proxy-list.download', 'socks4', '182.16.171.65', 51459, 0, NULL, '2023-12-20 10:08:45.318269', 2, '2023-12-20 10:28:45.318269');
INSERT INTO "proxy" VALUES (1114, 'www.proxy-list.download', 'socks4', '138.99.93.224', 4145, 0, NULL, '2023-12-20 10:08:45.403665', 2, '2023-12-20 10:28:45.403665');
INSERT INTO "proxy" VALUES (1115, 'www.proxy-list.download', 'socks4', '1.20.198.254', 4153, 0, NULL, '2023-12-20 10:08:46.191262', 2, '2023-12-20 10:28:46.191262');
INSERT INTO "proxy" VALUES (1116, 'www.proxy-list.download', 'socks4', '187.44.110.157', 4145, 0, NULL, '2023-12-20 10:08:45.351979', 2, '2023-12-20 10:28:45.351979');
INSERT INTO "proxy" VALUES (1117, 'www.proxy-list.download', 'socks4', '186.248.111.102', 5678, 0, NULL, '2023-12-20 10:08:45.528526', 2, '2023-12-20 10:28:45.528526');
INSERT INTO "proxy" VALUES (1118, 'www.proxy-list.download', 'socks4', '119.93.122.233', 4145, 0, NULL, '2023-12-20 10:08:45.943849', 2, '2023-12-20 10:28:45.943849');
INSERT INTO "proxy" VALUES (1119, 'www.proxy-list.download', 'socks4', '46.227.37.157', 1088, 0, NULL, '2023-12-20 10:08:45.347881', 2, '2023-12-20 10:28:45.347881');
INSERT INTO "proxy" VALUES (1120, 'www.proxy-list.download', 'http', '</div', 80, 0, NULL, '2023-12-20 10:08:45.829185', 2, '2023-12-20 10:28:45.829185');
INSERT INTO "proxy" VALUES (1121, 'www.proxy-list.download', 'https', '(function(){if(document.addEventListener&&window.XMLHttpRequest&&JSON&&JSON.stringify){var e=function(a){var c=document.getElementById("error-feedback-survey"),d=document.getElementById("error-feedback-success"),b=new XMLHttpRequest;a={event', 80, 0, NULL, '2023-12-20 10:08:46.108117', 2, '2023-12-20 10:28:46.108117');
INSERT INTO "proxy" VALUES (1122, 'www.proxy-list.download', 'socks4', '85.185.152.146', 4145, 0, NULL, '2023-12-20 10:08:46.006357', 2, '2023-12-20 10:28:46.006357');
INSERT INTO "proxy" VALUES (1123, 'www.proxy-list.download', 'https', '    </div><!-- /#cf-error-details --', 80, 0, NULL, '2023-12-20 10:08:45.646687', 2, '2023-12-20 10:28:45.646687');
INSERT INTO "proxy" VALUES (1124, 'www.proxy-list.download', 'socks4', '180.211.179.150', 40153, 0, NULL, '2023-12-20 10:08:45.824177', 2, '2023-12-20 10:28:45.824177');
INSERT INTO "proxy" VALUES (1125, 'www.proxy-list.download', 'socks4', '78.38.122.249', 4153, 0, NULL, '2023-12-20 10:08:45.483191', 2, '2023-12-20 10:28:45.483191');
INSERT INTO "proxy" VALUES (1126, 'www.proxy-list.download', 'socks4', '80.92.181.3', 44550, 0, NULL, '2023-12-20 10:08:45.734319', 2, '2023-12-20 10:28:45.734319');
INSERT INTO "proxy" VALUES (1127, 'www.proxy-list.download', 'socks4', '177.72.113.246', 53025, 0, NULL, '2023-12-20 10:08:45.612450', 2, '2023-12-20 10:28:45.612450');
INSERT INTO "proxy" VALUES (1128, 'www.proxy-list.download', 'socks4', '103.243.46.6', 4145, 0, NULL, '2023-12-20 10:08:45.608444', 2, '2023-12-20 10:28:45.608444');
INSERT INTO "proxy" VALUES (1129, 'www.proxy-list.download', 'socks4', '109.160.55.202', 4145, 0, NULL, '2023-12-20 10:08:45.650678', 2, '2023-12-20 10:28:45.650678');
INSERT INTO "proxy" VALUES (1130, 'www.proxy-list.download', 'socks4', '185.43.8.43', 54125, 0, NULL, '2023-12-20 10:08:46.046211', 2, '2023-12-20 10:28:46.046211');
INSERT INTO "proxy" VALUES (1131, 'www.proxy-list.download', 'socks4', '103.239.255.170', 58733, 0, NULL, '2023-12-20 10:08:45.506195', 2, '2023-12-20 10:28:45.506195');
INSERT INTO "proxy" VALUES (1132, 'www.proxy-list.download', 'socks4', '77.121.5.131', 1080, 0, NULL, '2023-12-20 10:08:45.907411', 2, '2023-12-20 10:28:45.907411');
INSERT INTO "proxy" VALUES (1133, 'www.proxy-list.download', 'socks4', '95.154.104.147', 31387, 0, NULL, '2023-12-20 10:08:45.730319', 2, '2023-12-20 10:28:45.730319');
INSERT INTO "proxy" VALUES (1134, 'www.proxy-list.download', 'socks4', '168.194.83.45', 44328, 0, NULL, '2023-12-20 10:08:46.086116', 2, '2023-12-20 10:28:46.086116');
INSERT INTO "proxy" VALUES (1135, 'www.proxy-list.download', 'socks5', '140.237.14.92', 4216, 0, NULL, '2023-12-20 10:08:45.789380', 2, '2023-12-20 10:28:45.789380');
INSERT INTO "proxy" VALUES (1136, 'www.proxy-list.download', 'socks4', '177.139.130.157', 4153, 0, NULL, '2023-12-20 10:08:46.053211', 2, '2023-12-20 10:28:46.053211');
INSERT INTO "proxy" VALUES (1137, 'www.proxy-list.download', 'socks4', '185.94.219.160', 1080, 0, NULL, '2023-12-20 10:08:46.129272', 2, '2023-12-20 10:28:46.129272');
INSERT INTO "proxy" VALUES (1138, 'www.proxy-list.download', 'socks4', '63.151.9.74', 64312, 0, NULL, '2023-12-20 10:08:45.313273', 2, '2023-12-20 10:28:45.313273');
INSERT INTO "proxy" VALUES (1139, 'www.proxy-list.download', 'socks4', '45.226.48.54', 34739, 0, NULL, '2023-12-20 10:08:45.662850', 2, '2023-12-20 10:28:45.662850');
INSERT INTO "proxy" VALUES (1140, 'www.proxy-list.download', 'socks4', '69.163.161.118', 20243, 0, NULL, '2023-12-20 10:08:46.012979', 2, '2023-12-20 10:28:46.012979');
INSERT INTO "proxy" VALUES (1141, 'www.proxy-list.download', 'socks4', '80.191.169.69', 4145, 0, NULL, '2023-12-20 10:08:45.399660', 2, '2023-12-20 10:28:45.399660');
INSERT INTO "proxy" VALUES (1142, 'www.proxy-list.download', 'socks4', '77.120.163.103', 42208, 0, NULL, '2023-12-20 10:08:46.064109', 2, '2023-12-20 10:28:46.064109');
INSERT INTO "proxy" VALUES (1143, 'www.proxy-list.download', 'socks5', '121.42.9.57', 7201, 0, NULL, '2023-12-20 10:08:45.834181', 2, '2023-12-20 10:28:45.834181');
INSERT INTO "proxy" VALUES (1144, 'www.proxy-list.download', 'socks4', '131.221.217.141', 4145, 0, NULL, '2023-12-20 10:08:45.738807', 2, '2023-12-20 10:28:45.738807');
INSERT INTO "proxy" VALUES (1145, 'www.proxy-list.download', 'socks4', '67.204.21.17', 64312, 0, NULL, '2023-12-20 10:08:45.970462', 2, '2023-12-20 10:28:45.970462');
INSERT INTO "proxy" VALUES (1146, 'www.proxy-list.download', 'socks4', '91.205.128.233', 4145, 0, NULL, '2023-12-20 10:08:45.778507', 2, '2023-12-20 10:28:45.778507');
INSERT INTO "proxy" VALUES (1147, 'www.proxy-list.download', 'socks4', '46.188.82.11', 54136, 0, NULL, '2023-12-20 10:08:45.742827', 2, '2023-12-20 10:28:45.742827');
INSERT INTO "proxy" VALUES (1148, 'www.proxy-list.download', 'socks4', '95.156.125.190', 55711, 0, NULL, '2023-12-20 10:08:45.895106', 2, '2023-12-20 10:28:45.895106');
INSERT INTO "proxy" VALUES (1149, 'www.proxy-list.download', 'http', '<script', 80, 0, NULL, '2023-12-20 10:08:46.133117', 2, '2023-12-20 10:28:46.133117');
INSERT INTO "proxy" VALUES (1150, 'www.proxy-list.download', 'socks4', '91.201.240.101', 3629, 0, NULL, '2023-12-20 10:08:45.699458', 2, '2023-12-20 10:28:45.699458');
INSERT INTO "proxy" VALUES (1151, 'www.proxy-list.download', 'socks4', '176.241.94.228', 10801, 0, NULL, '2023-12-20 10:08:45.558951', 2, '2023-12-20 10:28:45.558951');
INSERT INTO "proxy" VALUES (1152, 'www.proxy-list.download', 'socks4', '101.51.141.17', 4153, 0, NULL, '2023-12-20 10:08:45.923246', 2, '2023-12-20 10:28:45.923246');
INSERT INTO "proxy" VALUES (1153, 'www.proxy-list.download', 'socks4', '202.141.233.166', 53124, 0, NULL, '2023-12-20 10:08:46.078090', 2, '2023-12-20 10:28:46.078090');
INSERT INTO "proxy" VALUES (1154, 'www.proxy-list.download', 'https', '    <span class="cf-footer-item sm', 80, 0, NULL, '2023-12-20 10:08:45.689458', 2, '2023-12-20 10:28:45.689458');
INSERT INTO "proxy" VALUES (1155, 'www.proxy-list.download', 'socks4', '46.100.74.74', 4153, 0, NULL, '2023-12-20 10:08:46.229313', 2, '2023-12-20 10:28:46.229313');
INSERT INTO "proxy" VALUES (1156, 'www.proxy-list.download', 'socks4', '41.223.108.13', 1080, 0, NULL, '2023-12-20 10:08:45.995703', 2, '2023-12-20 10:28:45.995703');
INSERT INTO "proxy" VALUES (1157, 'www.proxy-list.download', 'socks4', '177.44.175.198', 4153, 0, NULL, '2023-12-20 10:08:45.794389', 2, '2023-12-20 10:28:45.794389');
INSERT INTO "proxy" VALUES (1158, 'www.proxy-list.download', 'socks4', '94.159.6.254', 4153, 0, NULL, '2023-12-20 10:08:46.023599', 2, '2023-12-20 10:28:46.023599');
INSERT INTO "proxy" VALUES (1159, 'www.proxy-list.download', 'socks4', '179.43.97.40', 33238, 0, NULL, '2023-12-20 10:08:46.082103', 2, '2023-12-20 10:28:46.082103');
INSERT INTO "proxy" VALUES (1160, 'www.proxy-list.download', 'socks4', '36.84.100.165', 34432, 0, NULL, '2023-12-20 10:08:45.554937', 2, '2023-12-20 10:28:45.554937');
INSERT INTO "proxy" VALUES (1161, 'www.proxy-list.download', 'socks4', '186.46.187.26', 43076, 0, NULL, '2023-12-20 10:08:45.773506', 2, '2023-12-20 10:28:45.773506');
INSERT INTO "proxy" VALUES (1162, 'www.proxy-list.download', 'socks5', '192.111.139.165', 4145, 0, NULL, '2023-12-20 10:08:45.694468', 2, '2023-12-20 10:28:45.694468');
INSERT INTO "proxy" VALUES (1163, 'www.proxy-list.download', 'socks4', '202.29.226.134', 32241, 0, NULL, '2023-12-20 10:08:45.751806', 2, '2023-12-20 10:28:45.751806');
INSERT INTO "proxy" VALUES (1164, 'www.proxy-list.download', 'socks5', '192.111.130.2', 4145, 0, NULL, '2023-12-20 10:08:45.804199', 2, '2023-12-20 10:28:45.804199');
INSERT INTO "proxy" VALUES (1165, 'www.proxy-list.download', 'socks4', '82.147.44.130', 4153, 0, NULL, '2023-12-20 10:08:46.212780', 2, '2023-12-20 10:28:46.212780');
INSERT INTO "proxy" VALUES (1166, 'www.proxy-list.download', 'https', '<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:46.017978', 2, '2023-12-20 10:28:46.017978');
INSERT INTO "proxy" VALUES (1167, 'www.proxy-list.download', 'socks4', '190.7.180.225', 30225, 0, NULL, '2023-12-20 10:08:45.436415', 2, '2023-12-20 10:28:45.436415');
INSERT INTO "proxy" VALUES (1168, 'www.proxy-list.download', 'socks4', '170.254.148.94', 4153, 0, NULL, '2023-12-20 10:08:45.515170', 2, '2023-12-20 10:28:45.515170');
INSERT INTO "proxy" VALUES (1169, 'www.proxy-list.download', 'socks4', '189.201.191.17', 4145, 0, NULL, '2023-12-20 10:08:45.572506', 2, '2023-12-20 10:28:45.572506');
INSERT INTO "proxy" VALUES (1170, 'www.proxy-list.download', 'socks5', '', 80, 0, NULL, '2023-12-20 10:08:45.980045', 2, '2023-12-20 10:28:45.980045');
INSERT INTO "proxy" VALUES (1171, 'www.proxy-list.download', 'socks4', '190.7.141.66', 40225, 0, NULL, '2023-12-20 10:08:45.562937', 2, '2023-12-20 10:28:45.562937');
INSERT INTO "proxy" VALUES (1172, 'www.proxy-list.download', 'socks4', '181.129.52.154', 44665, 0, NULL, '2023-12-20 10:08:45.755827', 2, '2023-12-20 10:28:45.755827');
INSERT INTO "proxy" VALUES (1173, 'www.proxy-list.download', 'socks4', '103.106.35.230', 31110, 0, NULL, '2023-12-20 10:08:45.440415', 2, '2023-12-20 10:28:45.440415');
INSERT INTO "proxy" VALUES (1174, 'www.proxy-list.download', 'socks4', '197.232.47.102', 52567, 0, NULL, '2023-12-20 10:08:45.938851', 2, '2023-12-20 10:28:45.938851');
INSERT INTO "proxy" VALUES (1175, 'www.proxy-list.download', 'socks4', '187.84.191.50', 4145, 0, NULL, '2023-12-20 10:08:45.799380', 2, '2023-12-20 10:28:45.799380');
INSERT INTO "proxy" VALUES (1176, 'www.proxy-list.download', 'socks4', '116.254.100.165', 50536, 0, NULL, '2023-12-20 10:08:45.928061', 2, '2023-12-20 10:28:45.928061');
INSERT INTO "proxy" VALUES (1177, 'www.proxy-list.download', 'socks4', '180.183.173.254', 8291, 0, NULL, '2023-12-20 10:08:45.901388', 2, '2023-12-20 10:28:45.901388');
INSERT INTO "proxy" VALUES (1178, 'www.proxy-list.download', 'socks4', '98.126.23.24', 2808, 0, NULL, '2023-12-20 10:08:46.069092', 2, '2023-12-20 10:28:46.069092');
INSERT INTO "proxy" VALUES (1179, 'www.proxy-list.download', 'socks4', '62.94.202.114', 4153, 0, NULL, '2023-12-20 10:08:45.819181', 2, '2023-12-20 10:28:45.819181');
INSERT INTO "proxy" VALUES (1180, 'www.proxy-list.download', 'socks4', '90.183.101.238', 47009, 0, NULL, '2023-12-20 10:08:45.542552', 2, '2023-12-20 10:28:45.542552');
INSERT INTO "proxy" VALUES (1181, 'www.proxy-list.download', 'socks4', '175.143.51.221', 4145, 0, NULL, '2023-12-20 10:08:46.040589', 2, '2023-12-20 10:28:46.040589');
INSERT INTO "proxy" VALUES (1182, 'www.proxy-list.download', 'socks4', '138.97.236.2', 1080, 0, NULL, '2023-12-20 10:08:46.091130', 2, '2023-12-20 10:28:46.091130');
INSERT INTO "proxy" VALUES (1183, 'www.proxy-list.download', 'socks4', '83.211.162.198', 4145, 0, NULL, '2023-12-20 10:08:46.095132', 2, '2023-12-20 10:28:46.095132');
INSERT INTO "proxy" VALUES (1184, 'www.proxy-list.download', 'socks4', '109.73.180.67', 5678, 0, NULL, '2023-12-20 10:08:45.917415', 2, '2023-12-20 10:28:45.917415');
INSERT INTO "proxy" VALUES (1185, 'www.proxy-list.download', 'socks4', '103.247.216.17', 5678, 0, NULL, '2023-12-20 10:08:46.100106', 2, '2023-12-20 10:28:46.100106');
INSERT INTO "proxy" VALUES (1186, 'www.proxy-list.download', 'socks4', '85.208.76.1', 4153, 0, NULL, '2023-12-20 10:08:45.684860', 2, '2023-12-20 10:28:45.684860');
INSERT INTO "proxy" VALUES (1187, 'www.proxy-list.download', 'socks4', '195.22.253.235', 4145, 0, NULL, '2023-12-20 10:08:45.985051', 2, '2023-12-20 10:28:45.985051');
INSERT INTO "proxy" VALUES (1188, 'www.proxy-list.download', 'socks4', '181.113.135.214', 57101, 0, NULL, '2023-12-20 10:08:45.814177', 2, '2023-12-20 10:28:45.814177');
INSERT INTO "proxy" VALUES (1189, 'www.proxy-list.download', 'socks4', '88.255.217.115', 1080, 0, NULL, '2023-12-20 10:08:46.246924', 2, '2023-12-20 10:28:46.246924');
INSERT INTO "proxy" VALUES (1190, 'www.proxy-list.download', 'socks4', '179.106.150.5', 59624, 0, NULL, '2023-12-20 10:08:45.533664', 2, '2023-12-20 10:28:45.533664');
INSERT INTO "proxy" VALUES (1191, 'www.proxy-list.download', 'socks4', '103.106.219.222', 4145, 0, NULL, '2023-12-20 10:08:45.975459', 2, '2023-12-20 10:28:45.975459');
INSERT INTO "proxy" VALUES (1192, 'www.proxy-list.download', 'socks4', '103.91.128.182', 4153, 0, NULL, '2023-12-20 10:08:45.546524', 2, '2023-12-20 10:28:45.546524');
INSERT INTO "proxy" VALUES (1193, 'www.proxy-list.download', 'socks4', '112.78.134.229', 41517, 0, NULL, '2023-12-20 10:08:45.537526', 2, '2023-12-20 10:28:45.537526');
INSERT INTO "proxy" VALUES (1194, 'www.proxy-list.download', 'socks4', '191.53.112.170', 35618, 0, NULL, '2023-12-20 10:08:45.784496', 2, '2023-12-20 10:28:45.784496');
INSERT INTO "proxy" VALUES (1195, 'www.proxy-list.download', 'socks4', '131.161.68.41', 35944, 0, NULL, '2023-12-20 10:08:46.001358', 2, '2023-12-20 10:28:46.001358');
INSERT INTO "proxy" VALUES (1196, 'www.proxy-list.download', 'https', '    <span id="cf-footer-item-ip" class="cf-footer-item hidden sm', 80, 0, NULL, '2023-12-20 10:08:46.059208', 2, '2023-12-20 10:28:46.059208');
INSERT INTO "proxy" VALUES (1197, 'www.proxy-list.download', 'socks4', '185.161.245.1', 1080, 0, NULL, '2023-12-20 10:08:45.990705', 2, '2023-12-20 10:28:45.990705');
INSERT INTO "proxy" VALUES (1198, 'www.proxy-list.download', 'socks4', '182.48.83.170', 41542, 0, NULL, '2023-12-20 10:08:45.809191', 2, '2023-12-20 10:28:45.809191');
INSERT INTO "proxy" VALUES (1199, 'www.proxy-list.download', 'socks4', '98.126.23.24', 2942, 0, NULL, '2023-12-20 10:08:46.593334', 2, '2023-12-20 10:28:46.593334');
INSERT INTO "proxy" VALUES (1200, 'www.proxy-list.download', 'socks4', '80.70.22.16', 4153, 0, NULL, '2023-12-20 10:08:45.760482', 2, '2023-12-20 10:28:45.760482');
INSERT INTO "proxy" VALUES (1201, 'www.proxy-list.download', 'socks4', '185.51.92.108', 51327, 0, NULL, '2023-12-20 10:08:46.517547', 2, '2023-12-20 10:28:46.517547');
INSERT INTO "proxy" VALUES (1202, 'www.proxy-list.download', 'socks5', '174.64.199.79', 4145, 0, NULL, '2023-12-20 10:08:45.746819', 2, '2023-12-20 10:28:45.746819');
INSERT INTO "proxy" VALUES (1203, 'www.proxy-list.download', 'socks4', '213.14.31.122', 35314, 0, NULL, '2023-12-20 10:08:46.665386', 2, '2023-12-20 10:28:46.665386');
INSERT INTO "proxy" VALUES (1204, 'www.proxy-list.download', 'socks4', '192.111.129.145', 16894, 0, NULL, '2023-12-20 10:08:46.177684', 2, '2023-12-20 10:28:46.177684');
INSERT INTO "proxy" VALUES (1205, 'www.proxy-list.download', 'socks4', '119.243.95.62', 1080, 0, NULL, '2023-12-20 10:08:46.311130', 2, '2023-12-20 10:28:46.311130');
INSERT INTO "proxy" VALUES (1206, 'www.proxy-list.download', 'socks4', '91.216.66.70', 47658, 0, NULL, '2023-12-20 10:08:46.623214', 2, '2023-12-20 10:28:46.623214');
INSERT INTO "proxy" VALUES (1207, 'www.proxy-list.download', 'socks4', '116.202.103.223', 12565, 0, NULL, '2023-12-20 10:08:46.173675', 2, '2023-12-20 10:28:46.173675');
INSERT INTO "proxy" VALUES (1208, 'www.proxy-list.download', 'socks4', '179.1.1.11', 4145, 0, NULL, '2023-12-20 10:08:46.116120', 2, '2023-12-20 10:28:46.116120');
INSERT INTO "proxy" VALUES (1209, 'www.proxy-list.download', 'socks4', '109.94.182.128', 4145, 0, NULL, '2023-12-20 10:08:46.613195', 2, '2023-12-20 10:28:46.613195');
INSERT INTO "proxy" VALUES (1210, 'www.proxy-list.download', 'socks5', '113.120.61.189', 43644, 0, NULL, '2023-12-20 10:08:46.233313', 2, '2023-12-20 10:28:46.233313');
INSERT INTO "proxy" VALUES (1211, 'www.proxy-list.download', 'socks4', '60.161.153.36', 57114, 0, NULL, '2023-12-20 10:08:45.843413', 2, '2023-12-20 10:28:45.843413');
INSERT INTO "proxy" VALUES (1212, 'www.proxy-list.download', 'socks4', '89.28.14.239', 4145, 0, NULL, '2023-12-20 10:08:45.881098', 2, '2023-12-20 10:28:45.881098');
INSERT INTO "proxy" VALUES (1213, 'www.proxy-list.download', 'socks4', '185.17.134.149', 61535, 0, NULL, '2023-12-20 10:08:46.401460', 2, '2023-12-20 10:28:46.401460');
INSERT INTO "proxy" VALUES (1214, 'www.proxy-list.download', 'socks4', '115.127.23.165', 35294, 0, NULL, '2023-12-20 10:08:46.120117', 2, '2023-12-20 10:28:46.120117');
INSERT INTO "proxy" VALUES (1215, 'www.proxy-list.download', 'socks4', '89.25.23.210', 4153, 0, NULL, '2023-12-20 10:08:46.159107', 2, '2023-12-20 10:28:46.159107');
INSERT INTO "proxy" VALUES (1216, 'www.proxy-list.download', 'socks4', '189.14.194.113', 4145, 0, NULL, '2023-12-20 10:08:46.154117', 2, '2023-12-20 10:28:46.154117');
INSERT INTO "proxy" VALUES (1217, 'www.proxy-list.download', 'socks4', '190.214.50.158', 40637, 0, NULL, '2023-12-20 10:08:46.455772', 2, '2023-12-20 10:28:46.455772');
INSERT INTO "proxy" VALUES (1218, 'www.proxy-list.download', 'socks4', '109.161.94.251', 3629, 0, NULL, '2023-12-20 10:08:46.317117', 2, '2023-12-20 10:28:46.317117');
INSERT INTO "proxy" VALUES (1219, 'www.proxy-list.download', 'socks4', '36.255.104.1', 1080, 0, NULL, '2023-12-20 10:08:46.124117', 2, '2023-12-20 10:28:46.124117');
INSERT INTO "proxy" VALUES (1220, 'www.proxy-list.download', 'socks4', '85.196.136.21', 4153, 0, NULL, '2023-12-20 10:08:46.138106', 2, '2023-12-20 10:28:46.138106');
INSERT INTO "proxy" VALUES (1221, 'www.proxy-list.download', 'socks4', '78.188.119.253', 5678, 0, NULL, '2023-12-20 10:08:46.410485', 2, '2023-12-20 10:28:46.410485');
INSERT INTO "proxy" VALUES (1222, 'www.proxy-list.download', 'socks4', '170.0.203.10', 1080, 0, NULL, '2023-12-20 10:08:46.241946', 2, '2023-12-20 10:28:46.241946');
INSERT INTO "proxy" VALUES (1223, 'www.proxy-list.download', 'socks4', '186.219.210.86', 44410, 0, NULL, '2023-12-20 10:08:46.142107', 2, '2023-12-20 10:28:46.142107');
INSERT INTO "proxy" VALUES (1224, 'www.proxy-list.download', 'socks4', '103.18.77.46', 4145, 0, NULL, '2023-12-20 10:08:45.953856', 2, '2023-12-20 10:28:45.953856');
INSERT INTO "proxy" VALUES (1225, 'www.proxy-list.download', 'socks4', '177.86.64.253', 3629, 0, NULL, '2023-12-20 10:08:46.425358', 2, '2023-12-20 10:28:46.425358');
INSERT INTO "proxy" VALUES (1226, 'www.proxy-list.download', 'socks4', '180.210.222.101', 1080, 0, NULL, '2023-12-20 10:08:45.869098', 2, '2023-12-20 10:28:45.869098');
INSERT INTO "proxy" VALUES (1227, 'www.proxy-list.download', 'socks4', '85.237.62.189', 3629, 0, NULL, '2023-12-20 10:08:46.199799', 2, '2023-12-20 10:28:46.199799');
INSERT INTO "proxy" VALUES (1228, 'www.proxy-list.download', 'socks5', '222.129.37.77', 57114, 0, NULL, '2023-12-20 10:08:45.933837', 2, '2023-12-20 10:28:45.933837');
INSERT INTO "proxy" VALUES (1229, 'www.proxy-list.download', 'socks4', '103.94.7.250', 4145, 0, NULL, '2023-12-20 10:08:46.544540', 2, '2023-12-20 10:28:46.544540');
INSERT INTO "proxy" VALUES (1230, 'www.proxy-list.download', 'socks4', '83.103.195.183', 4145, 0, NULL, '2023-12-20 10:08:46.489409', 2, '2023-12-20 10:28:46.489409');
INSERT INTO "proxy" VALUES (1231, 'www.proxy-list.download', 'socks4', '82.155.28.72', 34245, 0, NULL, '2023-12-20 10:08:46.182678', 2, '2023-12-20 10:28:46.182678');
INSERT INTO "proxy" VALUES (1232, 'www.proxy-list.download', 'socks4', '31.43.33.56', 4153, 0, NULL, '2023-12-20 10:08:46.357769', 2, '2023-12-20 10:28:46.357769');
INSERT INTO "proxy" VALUES (1233, 'www.proxy-list.download', 'socks4', '191.103.254.145', 52973, 0, NULL, '2023-12-20 10:08:46.260388', 2, '2023-12-20 10:28:46.260388');
INSERT INTO "proxy" VALUES (1234, 'www.proxy-list.download', 'socks4', '103.192.156.171', 4145, 0, NULL, '2023-12-20 10:08:46.306130', 2, '2023-12-20 10:28:46.306130');
INSERT INTO "proxy" VALUES (1235, 'www.proxy-list.download', 'socks4', '208.113.152.12', 32690, 0, NULL, '2023-12-20 10:08:46.659593', 2, '2023-12-20 10:28:46.659593');
INSERT INTO "proxy" VALUES (1236, 'www.proxy-list.download', 'https', '</div', 80, 0, NULL, '2023-12-20 10:08:46.112117', 2, '2023-12-20 10:28:46.112117');
INSERT INTO "proxy" VALUES (1237, 'www.proxy-list.download', 'socks4', '121.205.216.101', 1080, 0, NULL, '2023-12-20 10:08:45.965458', 2, '2023-12-20 10:28:45.965458');
INSERT INTO "proxy" VALUES (1238, 'www.proxy-list.download', 'socks4', '43.225.151.198', 4153, 0, NULL, '2023-12-20 10:08:46.204819', 2, '2023-12-20 10:28:46.204819');
INSERT INTO "proxy" VALUES (1239, 'www.proxy-list.download', 'socks4', '208.113.223.164', 21829, 0, NULL, '2023-12-20 10:08:46.770812', 2, '2023-12-20 10:28:46.770812');
INSERT INTO "proxy" VALUES (1240, 'www.proxy-list.download', 'socks4', '203.77.239.201', 4153, 0, NULL, '2023-12-20 10:08:46.637725', 2, '2023-12-20 10:28:46.637725');
INSERT INTO "proxy" VALUES (1241, 'www.proxy-list.download', 'socks4', '131.161.35.20', 44550, 0, NULL, '2023-12-20 10:08:46.483412', 2, '2023-12-20 10:28:46.483412');
INSERT INTO "proxy" VALUES (1242, 'www.proxy-list.download', 'socks5', '165.227.174.249', 33080, 0, NULL, '2023-12-20 10:08:46.729134', 2, '2023-12-20 10:28:46.729134');
INSERT INTO "proxy" VALUES (1243, 'www.proxy-list.download', 'socks4', '96.9.79.233', 58618, 0, NULL, '2023-12-20 10:08:46.734140', 2, '2023-12-20 10:28:46.734140');
INSERT INTO "proxy" VALUES (1244, 'www.proxy-list.download', 'socks4', '176.108.176.181', 4153, 0, NULL, '2023-12-20 10:08:46.752153', 2, '2023-12-20 10:28:46.752153');
INSERT INTO "proxy" VALUES (1245, 'www.proxy-list.download', 'socks4', '154.79.254.176', 10801, 0, NULL, '2023-12-20 10:08:46.757135', 2, '2023-12-20 10:28:46.757135');
INSERT INTO "proxy" VALUES (1246, 'www.proxy-list.download', 'socks4', '103.86.1.2', 4145, 0, NULL, '2023-12-20 10:08:46.461412', 2, '2023-12-20 10:28:46.461412');
INSERT INTO "proxy" VALUES (1247, 'www.proxy-list.download', 'socks4', '101.51.141.81', 4153, 0, NULL, '2023-12-20 10:08:46.372115', 2, '2023-12-20 10:28:46.372115');
INSERT INTO "proxy" VALUES (1248, 'www.proxy-list.download', 'socks4', '210.245.51.33', 4145, 0, NULL, '2023-12-20 10:08:47.047215', 2, '2023-12-20 10:28:47.047215');
INSERT INTO "proxy" VALUES (1249, 'www.proxy-list.download', 'socks4', '105.247.148.210', 37159, 0, NULL, '2023-12-20 10:08:46.341560', 2, '2023-12-20 10:28:46.341560');
INSERT INTO "proxy" VALUES (1250, 'www.proxy-list.download', 'socks4', '138.0.102.246', 31533, 0, NULL, '2023-12-20 10:08:46.351640', 2, '2023-12-20 10:28:46.351640');
INSERT INTO "proxy" VALUES (1251, 'www.proxy-list.download', 'socks4', '103.106.32.234', 31110, 0, NULL, '2023-12-20 10:08:46.555280', 2, '2023-12-20 10:28:46.556284');
INSERT INTO "proxy" VALUES (1252, 'www.proxy-list.download', 'socks4', '58.215.201.98', 38596, 0, NULL, '2023-12-20 10:08:45.959458', 2, '2023-12-20 10:28:45.959458');
INSERT INTO "proxy" VALUES (1253, 'www.proxy-list.download', 'socks4', '190.109.74.1', 33633, 0, NULL, '2023-12-20 10:08:46.208794', 2, '2023-12-20 10:28:46.208794');
INSERT INTO "proxy" VALUES (1254, 'www.proxy-list.download', 'socks4', '88.199.82.114', 54194, 0, NULL, '2023-12-20 10:08:46.237955', 2, '2023-12-20 10:28:46.237955');
INSERT INTO "proxy" VALUES (1255, 'www.proxy-list.download', 'https', '      </section', 80, 0, NULL, '2023-12-20 10:08:46.582334', 2, '2023-12-20 10:28:46.582334');
INSERT INTO "proxy" VALUES (1256, 'www.proxy-list.download', 'socks4', '88.255.102.114', 1082, 0, NULL, '2023-12-20 10:08:46.250925', 2, '2023-12-20 10:28:46.250925');
INSERT INTO "proxy" VALUES (1257, 'www.proxy-list.download', 'socks4', '79.164.171.32', 50059, 0, NULL, '2023-12-20 10:08:46.331765', 2, '2023-12-20 10:28:46.331765');
INSERT INTO "proxy" VALUES (1258, 'www.proxy-list.download', 'socks4', '222.129.38.180', 57114, 0, NULL, '2023-12-20 10:08:46.271390', 2, '2023-12-20 10:28:46.271390');
INSERT INTO "proxy" VALUES (1259, 'www.proxy-list.download', 'socks4', '187.62.88.9', 4153, 0, NULL, '2023-12-20 10:08:46.743133', 2, '2023-12-20 10:28:46.743133');
INSERT INTO "proxy" VALUES (1260, 'www.proxy-list.download', 'socks5', '72.195.114.169', 4145, 0, NULL, '2023-12-20 10:08:46.225306', 2, '2023-12-20 10:28:46.225306');
INSERT INTO "proxy" VALUES (1261, 'www.proxy-list.download', 'socks4', '186.204.78.90', 4153, 0, NULL, '2023-12-20 10:08:46.326773', 2, '2023-12-20 10:28:46.326773');
INSERT INTO "proxy" VALUES (1262, 'www.proxy-list.download', 'socks4', '202.58.108.49', 36819, 0, NULL, '2023-12-20 10:08:46.381107', 2, '2023-12-20 10:28:46.381107');
INSERT INTO "proxy" VALUES (1263, 'www.proxy-list.download', 'socks4', '80.68.76.178', 4153, 0, NULL, '2023-12-20 10:08:46.766139', 2, '2023-12-20 10:28:46.766139');
INSERT INTO "proxy" VALUES (1264, 'www.proxy-list.download', 'http', '  </p', 80, 0, NULL, '2023-12-20 10:08:47.196850', 2, '2023-12-20 10:28:47.196850');
INSERT INTO "proxy" VALUES (1265, 'www.proxy-list.download', 'socks4', '45.232.226.137', 52104, 0, NULL, '2023-12-20 10:08:46.286393', 2, '2023-12-20 10:28:46.286393');
INSERT INTO "proxy" VALUES (1266, 'www.proxy-list.download', 'socks4', '94.154.220.93', 5678, 0, NULL, '2023-12-20 10:08:46.420472', 2, '2023-12-20 10:28:46.420472');
INSERT INTO "proxy" VALUES (1267, 'www.proxy-list.download', 'socks4', '189.91.100.50', 43573, 0, NULL, '2023-12-20 10:08:45.858101', 2, '2023-12-20 10:28:45.858101');
INSERT INTO "proxy" VALUES (1268, 'www.proxy-list.download', 'socks4', '78.9.110.94', 1080, 0, NULL, '2023-12-20 10:08:46.367459', 2, '2023-12-20 10:28:46.367459');
INSERT INTO "proxy" VALUES (1269, 'www.proxy-list.download', 'socks4', '146.196.98.202', 4153, 0, NULL, '2023-12-20 10:08:46.438277', 2, '2023-12-20 10:28:46.438277');
INSERT INTO "proxy" VALUES (1270, 'www.proxy-list.download', 'socks4', '94.198.215.22', 52477, 0, NULL, '2023-12-20 10:08:46.187217', 2, '2023-12-20 10:28:46.187217');
INSERT INTO "proxy" VALUES (1271, 'www.proxy-list.download', 'socks4', '117.4.107.199', 51796, 0, NULL, '2023-12-20 10:08:46.163117', 2, '2023-12-20 10:28:46.163117');
INSERT INTO "proxy" VALUES (1272, 'www.proxy-list.download', 'socks4', '61.19.40.50', 58377, 0, NULL, '2023-12-20 10:08:46.810419', 2, '2023-12-20 10:28:46.810419');
INSERT INTO "proxy" VALUES (1273, 'www.proxy-list.download', 'socks4', '45.112.1.169', 4145, 0, NULL, '2023-12-20 10:08:45.876099', 2, '2023-12-20 10:28:45.876099');
INSERT INTO "proxy" VALUES (1274, 'www.proxy-list.download', 'socks4', '195.29.106.2', 4153, 0, NULL, '2023-12-20 10:08:46.255924', 2, '2023-12-20 10:28:46.255924');
INSERT INTO "proxy" VALUES (1275, 'www.proxy-list.download', 'socks4', '123.213.70.176', 4145, 0, NULL, '2023-12-20 10:08:46.150117', 2, '2023-12-20 10:28:46.150117');
INSERT INTO "proxy" VALUES (1276, 'www.proxy-list.download', 'socks4', '85.109.58.222', 1080, 0, NULL, '2023-12-20 10:08:45.863098', 2, '2023-12-20 10:28:45.863098');
INSERT INTO "proxy" VALUES (1277, 'www.proxy-list.download', 'socks4', '170.0.203.11', 1080, 0, NULL, '2023-12-20 10:08:45.849106', 2, '2023-12-20 10:28:45.849106');
INSERT INTO "proxy" VALUES (1278, 'www.proxy-list.download', 'socks4', '185.12.20.205', 1080, 0, NULL, '2023-12-20 10:08:46.146117', 2, '2023-12-20 10:28:46.146117');
INSERT INTO "proxy" VALUES (1279, 'www.proxy-list.download', 'socks4', '186.150.207.141', 1080, 0, NULL, '2023-12-20 10:08:45.948853', 2, '2023-12-20 10:28:45.948853');
INSERT INTO "proxy" VALUES (1280, 'www.proxy-list.download', 'socks4', '103.205.130.59', 4145, 0, NULL, '2023-12-20 10:08:46.301123', 2, '2023-12-20 10:28:46.301123');
INSERT INTO "proxy" VALUES (1281, 'www.proxy-list.download', 'socks4', '31.28.241.117', 4145, 0, NULL, '2023-12-20 10:08:46.377097', 2, '2023-12-20 10:28:46.377097');
INSERT INTO "proxy" VALUES (1282, 'www.proxy-list.download', 'socks4', '184.178.172.18', 15280, 0, NULL, '2023-12-20 10:08:46.881730', 2, '2023-12-20 10:28:46.881730');
INSERT INTO "proxy" VALUES (1283, 'www.proxy-list.download', 'socks4', '103.199.97.5', 39825, 0, NULL, '2023-12-20 10:08:46.779811', 2, '2023-12-20 10:28:46.779811');
INSERT INTO "proxy" VALUES (1284, 'www.proxy-list.download', 'socks4', '190.0.242.217', 51327, 0, NULL, '2023-12-20 10:08:47.043199', 2, '2023-12-20 10:28:47.043199');
INSERT INTO "proxy" VALUES (1285, 'www.proxy-list.download', 'socks4', '186.207.131.216', 44550, 0, NULL, '2023-12-20 10:08:46.996574', 2, '2023-12-20 10:28:46.996574');
INSERT INTO "proxy" VALUES (1286, 'www.proxy-list.download', 'socks4', '119.57.115.55', 30622, 0, NULL, '2023-12-20 10:08:46.783644', 2, '2023-12-20 10:28:46.783644');
INSERT INTO "proxy" VALUES (1287, 'www.proxy-list.download', 'https', '  </p', 80, 0, NULL, '2023-12-20 10:08:46.195786', 2, '2023-12-20 10:28:46.195786');
INSERT INTO "proxy" VALUES (1288, 'www.proxy-list.download', 'socks4', '45.229.174.75', 4145, 0, NULL, '2023-12-20 10:08:46.528538', 2, '2023-12-20 10:28:46.528538');
INSERT INTO "proxy" VALUES (1289, 'www.proxy-list.download', 'socks4', '178.22.221.201', 4145, 0, NULL, '2023-12-20 10:08:45.888100', 2, '2023-12-20 10:28:45.888100');
INSERT INTO "proxy" VALUES (1290, 'www.proxy-list.download', 'socks4', '177.66.247.233', 4145, 0, NULL, '2023-12-20 10:08:45.912437', 2, '2023-12-20 10:28:45.912437');
INSERT INTO "proxy" VALUES (1291, 'www.proxy-list.download', 'socks4', '213.14.25.66', 1080, 0, NULL, '2023-12-20 10:08:45.853101', 2, '2023-12-20 10:28:45.853101');
INSERT INTO "proxy" VALUES (1292, 'www.proxy-list.download', 'socks4', '36.66.61.7', 46118, 0, NULL, '2023-12-20 10:08:46.216515', 2, '2023-12-20 10:28:46.216515');
INSERT INTO "proxy" VALUES (1293, 'www.proxy-list.download', 'socks4', '159.224.37.181', 31429, 0, NULL, '2023-12-20 10:08:46.168105', 2, '2023-12-20 10:28:46.168105');
INSERT INTO "proxy" VALUES (1294, 'www.proxy-list.download', 'socks4', '202.129.52.171', 4153, 0, NULL, '2023-12-20 10:08:45.838191', 2, '2023-12-20 10:28:45.838191');
INSERT INTO "proxy" VALUES (1295, 'www.proxy-list.download', 'socks4', '167.172.123.221', 9200, 0, NULL, '2023-12-20 10:08:46.220511', 2, '2023-12-20 10:28:46.220511');
INSERT INTO "proxy" VALUES (1296, 'www.proxy-list.download', 'http', '  <p class="text-13"', 80, 0, NULL, '2023-12-20 10:08:46.477412', 2, '2023-12-20 10:28:46.477412');
INSERT INTO "proxy" VALUES (1297, 'www.proxy-list.download', 'socks4', '103.23.101.30', 4145, 0, NULL, '2023-12-20 10:08:46.395649', 2, '2023-12-20 10:28:46.395649');
INSERT INTO "proxy" VALUES (1298, 'www.proxy-list.download', 'socks4', '184.185.2.244', 4145, 0, NULL, '2023-12-20 10:08:46.682392', 2, '2023-12-20 10:28:46.682392');
INSERT INTO "proxy" VALUES (1299, 'www.proxy-list.download', 'socks4', '158.58.197.227', 50128, 0, NULL, '2023-12-20 10:08:46.522558', 2, '2023-12-20 10:28:46.522558');
INSERT INTO "proxy" VALUES (1300, 'www.proxy-list.download', 'socks4', '123.201.131.62', 1080, 0, NULL, '2023-12-20 10:08:46.648786', 2, '2023-12-20 10:28:46.648786');
INSERT INTO "proxy" VALUES (1301, 'www.proxy-list.download', 'socks4', '31.206.38.46', 37630, 0, NULL, '2023-12-20 10:08:46.471423', 2, '2023-12-20 10:28:46.471423');
INSERT INTO "proxy" VALUES (1302, 'www.proxy-list.download', 'socks4', '88.12.14.233', 4153, 0, NULL, '2023-12-20 10:08:46.494409', 2, '2023-12-20 10:28:46.494409');
INSERT INTO "proxy" VALUES (1303, 'www.proxy-list.download', 'socks4', '188.225.202.1', 59311, 0, NULL, '2023-12-20 10:08:46.390651', 2, '2023-12-20 10:28:46.390651');
INSERT INTO "proxy" VALUES (1304, 'www.proxy-list.download', 'socks4', '182.52.108.104', 14153, 0, NULL, '2023-12-20 10:08:46.276406', 2, '2023-12-20 10:28:46.276406');
INSERT INTO "proxy" VALUES (1305, 'www.proxy-list.download', 'http', '    <div id="cf-error-details" class="p-0"', 80, 0, NULL, '2023-12-20 10:08:46.719135', 2, '2023-12-20 10:28:46.719135');
INSERT INTO "proxy" VALUES (1306, 'www.proxy-list.download', 'socks4', '179.40.75.1', 61362, 0, NULL, '2023-12-20 10:08:46.292150', 2, '2023-12-20 10:28:46.292150');
INSERT INTO "proxy" VALUES (1307, 'www.proxy-list.download', 'socks4', '88.199.82.68', 54194, 0, NULL, '2023-12-20 10:08:46.670391', 2, '2023-12-20 10:28:46.670391');
INSERT INTO "proxy" VALUES (1308, 'www.proxy-list.download', 'socks4', '1.179.173.114', 4153, 0, NULL, '2023-12-20 10:08:46.607918', 2, '2023-12-20 10:28:46.607918');
INSERT INTO "proxy" VALUES (1309, 'www.proxy-list.download', 'socks5', '174.77.111.197', 4145, 0, NULL, '2023-12-20 10:08:46.577345', 2, '2023-12-20 10:28:46.577345');
INSERT INTO "proxy" VALUES (1310, 'www.proxy-list.download', 'socks4', '84.53.239.95', 4145, 0, NULL, '2023-12-20 10:08:46.386107', 2, '2023-12-20 10:28:46.386107');
INSERT INTO "proxy" VALUES (1311, 'www.proxy-list.download', 'socks4', '85.29.147.222', 4145, 0, NULL, '2023-12-20 10:08:46.296115', 2, '2023-12-20 10:28:46.296115');
INSERT INTO "proxy" VALUES (1312, 'www.proxy-list.download', 'socks4', '186.225.194.78', 34110, 0, NULL, '2023-12-20 10:08:46.724142', 2, '2023-12-20 10:28:46.724142');
INSERT INTO "proxy" VALUES (1313, 'www.proxy-list.download', 'socks4', '94.247.241.70', 51006, 0, NULL, '2023-12-20 10:08:46.973577', 2, '2023-12-20 10:28:46.973577');
INSERT INTO "proxy" VALUES (1314, 'www.proxy-list.download', 'socks4', '85.113.140.196', 3629, 0, NULL, '2023-12-20 10:08:46.336768', 2, '2023-12-20 10:28:46.336768');
INSERT INTO "proxy" VALUES (1315, 'www.proxy-list.download', 'socks4', '121.40.51.48', 1080, 0, NULL, '2023-12-20 10:08:46.774826', 2, '2023-12-20 10:28:46.774826');
INSERT INTO "proxy" VALUES (1316, 'www.proxy-list.download', 'socks4', '185.17.132.158', 4145, 0, NULL, '2023-12-20 10:08:46.362763', 2, '2023-12-20 10:28:46.362763');
INSERT INTO "proxy" VALUES (1317, 'www.proxy-list.download', 'http', '      <button type="button" id="cf-footer-ip-reveal" class="cf-footer-ip-reveal-btn">Click to reveal</button', 80, 0, NULL, '2023-12-20 10:08:46.265389', 2, '2023-12-20 10:28:46.265389');
INSERT INTO "proxy" VALUES (1318, 'www.proxy-list.download', 'socks4', '196.0.113.10', 31651, 0, NULL, '2023-12-20 10:08:46.885739', 2, '2023-12-20 10:28:46.885739');
INSERT INTO "proxy" VALUES (1319, 'www.proxy-list.download', 'socks4', '187.84.191.41', 38392, 0, NULL, '2023-12-20 10:08:46.907393', 2, '2023-12-20 10:28:46.907393');
INSERT INTO "proxy" VALUES (1320, 'www.proxy-list.download', 'socks4', '143.202.136.51', 4153, 0, NULL, '2023-12-20 10:08:46.978575', 2, '2023-12-20 10:28:46.978575');
INSERT INTO "proxy" VALUES (1321, 'www.proxy-list.download', 'socks5', '184.185.2.45', 4145, 0, NULL, '2023-12-20 10:08:47.177280', 2, '2023-12-20 10:28:47.177280');
INSERT INTO "proxy" VALUES (1322, 'www.proxy-list.download', 'socks4', '182.253.142.11', 4145, 0, NULL, '2023-12-20 10:08:46.566878', 2, '2023-12-20 10:28:46.566878');
INSERT INTO "proxy" VALUES (1323, 'www.proxy-list.download', 'socks4', '192.81.225.233', 4153, 0, NULL, '2023-12-20 10:08:46.836101', 2, '2023-12-20 10:28:46.836101');
INSERT INTO "proxy" VALUES (1324, 'www.proxy-list.download', 'socks4', '185.169.181.17', 4145, 0, NULL, '2023-12-20 10:08:46.848792', 2, '2023-12-20 10:28:46.848792');
INSERT INTO "proxy" VALUES (1325, 'www.proxy-list.download', 'socks4', '37.26.136.181', 39323, 0, NULL, '2023-12-20 10:08:47.006328', 2, '2023-12-20 10:28:47.006328');
INSERT INTO "proxy" VALUES (1326, 'www.proxy-list.download', 'socks4', '183.88.253.18', 4153, 0, NULL, '2023-12-20 10:08:46.738134', 2, '2023-12-20 10:28:46.738134');
INSERT INTO "proxy" VALUES (1327, 'www.proxy-list.download', 'socks4', '116.58.247.161', 4145, 0, NULL, '2023-12-20 10:08:46.925322', 2, '2023-12-20 10:28:46.925322');
INSERT INTO "proxy" VALUES (1328, 'www.proxy-list.download', 'socks4', '41.162.107.130', 1080, 0, NULL, '2023-12-20 10:08:46.603361', 2, '2023-12-20 10:28:46.603361');
INSERT INTO "proxy" VALUES (1329, 'www.proxy-list.download', 'socks4', '79.143.225.152', 31270, 0, NULL, '2023-12-20 10:08:46.956135', 2, '2023-12-20 10:28:46.956135');
INSERT INTO "proxy" VALUES (1330, 'www.proxy-list.download', 'socks4', '43.224.10.13', 6667, 0, NULL, '2023-12-20 10:08:46.322114', 2, '2023-12-20 10:28:46.322114');
INSERT INTO "proxy" VALUES (1331, 'www.proxy-list.download', 'socks4', '103.47.93.214', 1080, 0, NULL, '2023-12-20 10:08:46.450776', 2, '2023-12-20 10:28:46.450776');
INSERT INTO "proxy" VALUES (1332, 'www.proxy-list.download', 'socks5', '135.181.203.208', 80, 0, NULL, '2023-12-20 10:08:46.653597', 2, '2023-12-20 10:28:46.653597');
INSERT INTO "proxy" VALUES (1333, 'www.proxy-list.download', 'socks4', '124.41.240.177', 52480, 0, NULL, '2023-12-20 10:08:46.511542', 2, '2023-12-20 10:28:46.511542');
INSERT INTO "proxy" VALUES (1334, 'www.proxy-list.download', 'socks5', '66.135.227.181', 4145, 0, NULL, '2023-12-20 10:08:46.346652', 2, '2023-12-20 10:28:46.346652');
INSERT INTO "proxy" VALUES (1335, 'www.proxy-list.download', 'socks4', '213.6.221.162', 5678, 0, NULL, '2023-12-20 10:08:46.688390', 2, '2023-12-20 10:28:46.688390');
INSERT INTO "proxy" VALUES (1336, 'www.proxy-list.download', 'socks4', '176.197.174.182', 4145, 0, NULL, '2023-12-20 10:08:46.714150', 2, '2023-12-20 10:28:46.714150');
INSERT INTO "proxy" VALUES (1337, 'www.proxy-list.download', 'socks4', '119.42.67.50', 4145, 0, NULL, '2023-12-20 10:08:47.137277', 2, '2023-12-20 10:28:47.137277');
INSERT INTO "proxy" VALUES (1338, 'www.proxy-list.download', 'socks4', '109.86.225.146', 4145, 0, NULL, '2023-12-20 10:08:47.024955', 2, '2023-12-20 10:28:47.024955');
INSERT INTO "proxy" VALUES (1339, 'www.proxy-list.download', 'socks4', '200.165.165.6', 4153, 0, NULL, '2023-12-20 10:08:46.406448', 2, '2023-12-20 10:28:46.406448');
INSERT INTO "proxy" VALUES (1340, 'www.proxy-list.download', 'socks4', '85.228.41.27', 4153, 0, NULL, '2023-12-20 10:08:47.029662', 2, '2023-12-20 10:28:47.029662');
INSERT INTO "proxy" VALUES (1341, 'www.proxy-list.download', 'socks4', '96.9.66.187', 1081, 0, NULL, '2023-12-20 10:08:46.940332', 2, '2023-12-20 10:28:46.940332');
INSERT INTO "proxy" VALUES (1342, 'www.proxy-list.download', 'socks4', '122.54.134.176', 4145, 0, NULL, '2023-12-20 10:08:47.173412', 2, '2023-12-20 10:28:47.173412');
INSERT INTO "proxy" VALUES (1343, 'www.proxy-list.download', 'socks4', '170.210.4.222', 38432, 0, NULL, '2023-12-20 10:08:46.844893', 2, '2023-12-20 10:28:46.844893');
INSERT INTO "proxy" VALUES (1344, 'www.proxy-list.download', 'socks4', '198.8.94.170', 4145, 0, NULL, '2023-12-20 10:08:46.761152', 2, '2023-12-20 10:28:46.761152');
INSERT INTO "proxy" VALUES (1345, 'www.proxy-list.download', 'socks4', '195.136.10.253', 1080, 0, NULL, '2023-12-20 10:08:46.444797', 2, '2023-12-20 10:28:46.444797');
INSERT INTO "proxy" VALUES (1346, 'www.proxy-list.download', 'socks4', '36.91.119.197', 5678, 0, NULL, '2023-12-20 10:08:47.128195', 2, '2023-12-20 10:28:47.128195');
INSERT INTO "proxy" VALUES (1347, 'www.proxy-list.download', 'socks4', '14.161.48.4', 4153, 0, NULL, '2023-12-20 10:08:46.644591', 2, '2023-12-20 10:28:46.644591');
INSERT INTO "proxy" VALUES (1348, 'www.proxy-list.download', 'socks4', '131.161.68.13', 38375, 0, NULL, '2023-12-20 10:08:46.431277', 2, '2023-12-20 10:28:46.432294');
INSERT INTO "proxy" VALUES (1349, 'www.proxy-list.download', 'socks4', '78.92.254.169', 53718, 0, NULL, '2023-12-20 10:08:46.627932', 2, '2023-12-20 10:28:46.627932');
INSERT INTO "proxy" VALUES (1350, 'www.proxy-list.download', 'socks4', '103.115.255.141', 36331, 0, NULL, '2023-12-20 10:08:47.106214', 2, '2023-12-20 10:28:47.106214');
INSERT INTO "proxy" VALUES (1351, 'www.proxy-list.download', 'socks5', '222.129.32.173', 57114, 0, NULL, '2023-12-20 10:08:46.961140', 2, '2023-12-20 10:28:46.961140');
INSERT INTO "proxy" VALUES (1352, 'www.proxy-list.download', 'socks4', '180.211.91.190', 5430, 0, NULL, '2023-12-20 10:08:46.500397', 2, '2023-12-20 10:28:46.500397');
INSERT INTO "proxy" VALUES (1353, 'www.proxy-list.download', 'socks5', '188.166.104.152', 49981, 0, NULL, '2023-12-20 10:08:46.828088', 2, '2023-12-20 10:28:46.828088');
INSERT INTO "proxy" VALUES (1354, 'www.proxy-list.download', 'socks4', '177.91.44.99', 4153, 0, NULL, '2023-12-20 10:08:46.598354', 2, '2023-12-20 10:28:46.598354');
INSERT INTO "proxy" VALUES (1355, 'www.proxy-list.download', 'socks4', '81.17.81.34', 4145, 0, NULL, '2023-12-20 10:08:47.191268', 2, '2023-12-20 10:28:47.191268');
INSERT INTO "proxy" VALUES (1356, 'www.proxy-list.download', 'socks4', '45.70.0.17', 50387, 0, NULL, '2023-12-20 10:08:46.533546', 2, '2023-12-20 10:28:46.533546');
INSERT INTO "proxy" VALUES (1357, 'www.proxy-list.download', 'socks4', '195.162.81.91', 34862, 0, NULL, '2023-12-20 10:08:46.675385', 2, '2023-12-20 10:28:46.675385');
INSERT INTO "proxy" VALUES (1358, 'www.proxy-list.download', 'socks4', '103.107.92.209', 34083, 0, NULL, '2023-12-20 10:08:46.931332', 2, '2023-12-20 10:28:46.931332');
INSERT INTO "proxy" VALUES (1359, 'www.proxy-list.download', 'socks4', '103.106.35.41', 31110, 0, NULL, '2023-12-20 10:08:46.618223', 2, '2023-12-20 10:28:46.618223');
INSERT INTO "proxy" VALUES (1360, 'www.proxy-list.download', 'socks5', '192.111.139.162', 4145, 0, NULL, '2023-12-20 10:08:47.142267', 2, '2023-12-20 10:28:47.142267');
INSERT INTO "proxy" VALUES (1361, 'www.proxy-list.download', 'socks4', '177.12.177.53', 4153, 0, NULL, '2023-12-20 10:08:46.550543', 2, '2023-12-20 10:28:46.550543');
INSERT INTO "proxy" VALUES (1362, 'www.proxy-list.download', 'socks4', '103.23.101.175', 4153, 0, NULL, '2023-12-20 10:08:46.587358', 2, '2023-12-20 10:28:46.587358');
INSERT INTO "proxy" VALUES (1363, 'www.proxy-list.download', 'socks4', '110.74.195.64', 32744, 0, NULL, '2023-12-20 10:08:47.213425', 2, '2023-12-20 10:28:47.213425');
INSERT INTO "proxy" VALUES (1364, 'www.proxy-list.download', 'socks4', '222.165.223.140', 41541, 0, NULL, '2023-12-20 10:08:46.539539', 2, '2023-12-20 10:28:46.539539');
INSERT INTO "proxy" VALUES (1365, 'www.proxy-list.download', 'https', '         <h1 class="inline-block md', 80, 0, NULL, '2023-12-20 10:08:46.819024', 2, '2023-12-20 10:28:46.819024');
INSERT INTO "proxy" VALUES (1366, 'www.proxy-list.download', 'socks4', '45.118.115.130', 1089, 0, NULL, '2023-12-20 10:08:46.801433', 2, '2023-12-20 10:28:46.801433');
INSERT INTO "proxy" VALUES (1367, 'www.proxy-list.download', 'socks4', '89.237.33.193', 51549, 0, NULL, '2023-12-20 10:08:46.415476', 2, '2023-12-20 10:28:46.415476');
INSERT INTO "proxy" VALUES (1368, 'www.proxy-list.download', 'socks4', '185.178.220.126', 32000, 0, NULL, '2023-12-20 10:08:47.124215', 2, '2023-12-20 10:28:47.124215');
INSERT INTO "proxy" VALUES (1369, 'www.proxy-list.download', 'socks4', '94.253.15.25', 60270, 0, NULL, '2023-12-20 10:08:47.015954', 2, '2023-12-20 10:28:47.015954');
INSERT INTO "proxy" VALUES (1370, 'www.proxy-list.download', 'socks4', '58.252.219.12', 11337, 0, NULL, '2023-12-20 10:08:46.632917', 2, '2023-12-20 10:28:46.632917');
INSERT INTO "proxy" VALUES (1371, 'www.proxy-list.download', 'socks4', '103.211.8.129', 52616, 0, NULL, '2023-12-20 10:08:46.571892', 2, '2023-12-20 10:28:46.571892');
INSERT INTO "proxy" VALUES (1372, 'www.proxy-list.download', 'socks4', '188.255.209.21', 1080, 0, NULL, '2023-12-20 10:08:46.868738', 2, '2023-12-20 10:28:46.868738');
INSERT INTO "proxy" VALUES (1373, 'www.proxy-list.download', 'socks4', '183.81.154.58', 4145, 0, NULL, '2023-12-20 10:08:47.218572', 2, '2023-12-20 10:28:47.218572');
INSERT INTO "proxy" VALUES (1374, 'www.proxy-list.download', 'socks4', '94.206.11.86', 59483, 0, NULL, '2023-12-20 10:08:46.921393', 2, '2023-12-20 10:28:46.921393');
INSERT INTO "proxy" VALUES (1375, 'www.proxy-list.download', 'socks4', '187.19.127.178', 4145, 0, NULL, '2023-12-20 10:08:46.969587', 2, '2023-12-20 10:28:46.969587');
INSERT INTO "proxy" VALUES (1376, 'www.proxy-list.download', 'socks4', '182.52.238.111', 56382, 0, NULL, '2023-12-20 10:08:46.701376', 2, '2023-12-20 10:28:46.701376');
INSERT INTO "proxy" VALUES (1377, 'www.proxy-list.download', 'socks4', '1.179.180.98', 4145, 0, NULL, '2023-12-20 10:08:47.133277', 2, '2023-12-20 10:28:47.133277');
INSERT INTO "proxy" VALUES (1378, 'www.proxy-list.download', 'socks4', '89.231.32.193', 4145, 0, NULL, '2023-12-20 10:08:47.102197', 2, '2023-12-20 10:28:47.102197');
INSERT INTO "proxy" VALUES (1379, 'www.proxy-list.download', 'socks4', '103.211.11.41', 52616, 0, NULL, '2023-12-20 10:08:47.182285', 2, '2023-12-20 10:28:47.182285');
INSERT INTO "proxy" VALUES (1380, 'www.proxy-list.download', 'socks4', '186.211.199.118', 4145, 0, NULL, '2023-12-20 10:08:46.792633', 2, '2023-12-20 10:28:46.792633');
INSERT INTO "proxy" VALUES (1381, 'www.proxy-list.download', 'socks4', '103.110.109.17', 1080, 0, NULL, '2023-12-20 10:08:46.281390', 2, '2023-12-20 10:28:46.281390');
INSERT INTO "proxy" VALUES (1382, 'www.proxy-list.download', 'socks4', '45.7.177.10', 52246, 0, NULL, '2023-12-20 10:08:46.696450', 2, '2023-12-20 10:28:46.696450');
INSERT INTO "proxy" VALUES (1383, 'www.proxy-list.download', 'socks4', '103.25.122.41', 44550, 0, NULL, '2023-12-20 10:08:47.020088', 2, '2023-12-20 10:28:47.020088');
INSERT INTO "proxy" VALUES (1384, 'www.proxy-list.download', 'socks4', '103.82.233.2', 1089, 0, NULL, '2023-12-20 10:08:46.916404', 2, '2023-12-20 10:28:46.916404');
INSERT INTO "proxy" VALUES (1385, 'www.proxy-list.download', 'socks4', '179.108.249.118', 1080, 0, NULL, '2023-12-20 10:08:46.561350', 2, '2023-12-20 10:28:46.561350');
INSERT INTO "proxy" VALUES (1386, 'www.proxy-list.download', 'socks4', '201.139.124.30', 1080, 0, NULL, '2023-12-20 10:08:47.186288', 2, '2023-12-20 10:28:47.186288');
INSERT INTO "proxy" VALUES (1387, 'www.proxy-list.download', 'socks4', '186.235.184.194', 4153, 0, NULL, '2023-12-20 10:08:46.964141', 2, '2023-12-20 10:28:46.964141');
INSERT INTO "proxy" VALUES (1388, 'www.proxy-list.download', 'socks4', '202.52.248.254', 52094, 0, NULL, '2023-12-20 10:08:47.010968', 2, '2023-12-20 10:28:47.010968');
INSERT INTO "proxy" VALUES (1389, 'www.proxy-list.download', 'socks4', '176.98.75.120', 49697, 0, NULL, '2023-12-20 10:08:46.466410', 2, '2023-12-20 10:28:46.466410');
INSERT INTO "proxy" VALUES (1390, 'www.proxy-list.download', 'socks4', '95.84.158.121', 4153, 0, NULL, '2023-12-20 10:08:46.505400', 2, '2023-12-20 10:28:46.505400');
INSERT INTO "proxy" VALUES (1391, 'www.proxy-list.download', 'socks4', '176.98.95.105', 30759, 0, NULL, '2023-12-20 10:08:46.864756', 2, '2023-12-20 10:28:46.864756');
INSERT INTO "proxy" VALUES (1392, 'www.proxy-list.download', 'socks4', '103.199.157.81', 41610, 0, NULL, '2023-12-20 10:08:46.747312', 2, '2023-12-20 10:28:46.747312');
INSERT INTO "proxy" VALUES (1393, 'www.proxy-list.download', 'socks4', '194.44.243.186', 45529, 0, NULL, '2023-12-20 10:08:47.002326', 2, '2023-12-20 10:28:47.002326');
INSERT INTO "proxy" VALUES (1394, 'www.proxy-list.download', 'https', '        <button class="border border-solid bg-white cf-button cursor-pointer ml-4 px-4 py-2 rounded" id="feedback-button-no" type="button">No</button', 80, 0, NULL, '2023-12-20 10:08:46.853784', 2, '2023-12-20 10:28:46.853784');
INSERT INTO "proxy" VALUES (1395, 'www.proxy-list.download', 'socks4', '202.191.15.253', 4145, 0, NULL, '2023-12-20 10:08:46.841089', 2, '2023-12-20 10:28:46.841089');
INSERT INTO "proxy" VALUES (1396, 'www.proxy-list.download', 'socks4', '217.145.199.112', 56284, 0, NULL, '2023-12-20 10:08:46.708134', 2, '2023-12-20 10:28:46.708134');
INSERT INTO "proxy" VALUES (1397, 'www.proxy-list.download', 'https', '<meta name="robots" content="noindex, nofollow" /', 80, 0, NULL, '2023-12-20 10:08:47.110207', 2, '2023-12-20 10:28:47.110207');
INSERT INTO "proxy" VALUES (1398, 'www.proxy-list.download', 'socks4', '37.75.135.161', 37278, 0, NULL, '2023-12-20 10:08:46.787645', 2, '2023-12-20 10:28:46.787645');
INSERT INTO "proxy" VALUES (1399, 'www.proxy-list.download', 'socks4', '103.75.148.203', 4145, 0, NULL, '2023-12-20 10:08:47.222586', 2, '2023-12-20 10:28:47.222586');
INSERT INTO "proxy" VALUES (1400, 'www.proxy-list.download', 'socks4', '190.144.224.182', 44550, 0, NULL, '2023-12-20 10:08:47.258730', 2, '2023-12-20 10:28:47.258730');
INSERT INTO "proxy" VALUES (1401, 'www.proxy-list.download', 'socks4', '1.1.167.218', 4145, 0, NULL, '2023-12-20 10:08:47.061205', 2, '2023-12-20 10:28:47.061205');
INSERT INTO "proxy" VALUES (1402, 'www.proxy-list.download', 'socks4', '202.168.146.109', 1080, 0, NULL, '2023-12-20 10:08:47.056206', 2, '2023-12-20 10:28:47.056206');
INSERT INTO "proxy" VALUES (1403, 'www.proxy-list.download', 'socks4', '200.34.227.204', 4153, 0, NULL, '2023-12-20 10:08:46.815021', 2, '2023-12-20 10:28:46.815021');
INSERT INTO "proxy" VALUES (1404, 'www.proxy-list.download', 'socks4', '196.44.182.74', 1080, 0, NULL, '2023-12-20 10:08:47.169268', 2, '2023-12-20 10:28:47.169268');
INSERT INTO "proxy" VALUES (1405, 'www.proxy-list.download', 'socks4', '78.140.7.239', 40009, 0, NULL, '2023-12-20 10:08:47.066040', 2, '2023-12-20 10:28:47.066040');
INSERT INTO "proxy" VALUES (1406, 'www.proxy-list.download', 'http', '<meta http-equiv="X-UA-Compatible" content="IE=Edge" /', 80, 0, NULL, '2023-12-20 10:08:46.877739', 2, '2023-12-20 10:28:46.877739');
INSERT INTO "proxy" VALUES (1407, 'www.proxy-list.download', 'socks4', '85.117.56.103', 4145, 0, NULL, '2023-12-20 10:08:47.052210', 2, '2023-12-20 10:28:47.052210');
INSERT INTO "proxy" VALUES (1408, 'www.proxy-list.download', 'socks4', '217.25.198.133', 4145, 0, NULL, '2023-12-20 10:08:47.080023', 2, '2023-12-20 10:28:47.080023');
INSERT INTO "proxy" VALUES (1409, 'www.proxy-list.download', 'socks4', '5.196.63.119', 1080, 0, NULL, '2023-12-20 10:08:46.983590', 2, '2023-12-20 10:28:46.983590');
INSERT INTO "proxy" VALUES (1410, 'www.proxy-list.download', 'socks4', '78.159.199.217', 1080, 0, NULL, '2023-12-20 10:08:47.722946', 2, '2023-12-20 10:28:47.723926');
INSERT INTO "proxy" VALUES (1411, 'www.proxy-list.download', 'socks4', '77.108.90.3', 1099, 0, NULL, '2023-12-20 10:08:47.119199', 2, '2023-12-20 10:28:47.119199');
INSERT INTO "proxy" VALUES (1412, 'www.proxy-list.download', 'socks4', '185.61.92.207', 39949, 0, NULL, '2023-12-20 10:08:47.038240', 2, '2023-12-20 10:28:47.038240');
INSERT INTO "proxy" VALUES (1413, 'www.proxy-list.download', 'socks4', '45.7.176.234', 52246, 0, NULL, '2023-12-20 10:08:47.208425', 2, '2023-12-20 10:28:47.208425');
INSERT INTO "proxy" VALUES (1414, 'www.proxy-list.download', 'socks4', '191.243.54.245', 41599, 0, NULL, '2023-12-20 10:08:46.903403', 2, '2023-12-20 10:28:46.903403');
INSERT INTO "proxy" VALUES (1415, 'www.proxy-list.download', 'socks4', '190.210.3.210', 1080, 0, NULL, '2023-12-20 10:08:47.701535', 2, '2023-12-20 10:28:47.701535');
INSERT INTO "proxy" VALUES (1416, 'www.proxy-list.download', 'socks4', '188.170.189.26', 4145, 0, NULL, '2023-12-20 10:08:47.075018', 2, '2023-12-20 10:28:47.075018');
INSERT INTO "proxy" VALUES (1417, 'www.proxy-list.download', 'socks4', '138.121.32.182', 51372, 0, NULL, '2023-12-20 10:08:47.092033', 2, '2023-12-20 10:28:47.092033');
INSERT INTO "proxy" VALUES (1418, 'www.proxy-list.download', 'http', '  <div id="cf-wrapper"', 80, 0, NULL, '2023-12-20 10:08:47.718414', 2, '2023-12-20 10:28:47.718414');
INSERT INTO "proxy" VALUES (1419, 'www.proxy-list.download', 'socks4', '185.43.249.132', 39316, 0, NULL, '2023-12-20 10:08:46.946150', 2, '2023-12-20 10:28:46.946150');
INSERT INTO "proxy" VALUES (1420, 'www.proxy-list.download', 'socks4', '177.154.55.114', 51815, 0, NULL, '2023-12-20 10:08:47.164267', 2, '2023-12-20 10:28:47.164267');
INSERT INTO "proxy" VALUES (1421, 'www.proxy-list.download', 'socks4', '160.202.42.132', 36917, 0, NULL, '2023-12-20 10:08:47.201849', 2, '2023-12-20 10:28:47.201849');
INSERT INTO "proxy" VALUES (1422, 'www.proxy-list.download', 'socks4', '165.16.54.199', 31618, 0, NULL, '2023-12-20 10:08:47.661882', 2, '2023-12-20 10:28:47.661882');
INSERT INTO "proxy" VALUES (1423, 'www.proxy-list.download', 'socks4', '103.199.97.17', 39825, 0, NULL, '2023-12-20 10:08:47.084031', 2, '2023-12-20 10:28:47.084031');
INSERT INTO "proxy" VALUES (1424, 'www.proxy-list.download', 'socks4', '116.90.122.234', 4145, 0, NULL, '2023-12-20 10:08:46.857516', 2, '2023-12-20 10:28:46.857516');
INSERT INTO "proxy" VALUES (1425, 'www.proxy-list.download', 'socks4', '196.28.234.66', 1080, 0, NULL, '2023-12-20 10:08:46.824090', 2, '2023-12-20 10:28:46.824090');
INSERT INTO "proxy" VALUES (1426, 'www.proxy-list.download', 'socks4', '103.23.101.97', 4145, 0, NULL, '2023-12-20 10:08:46.806416', 2, '2023-12-20 10:28:46.806416');
INSERT INTO "proxy" VALUES (1427, 'www.proxy-list.download', 'socks4', '101.51.141.122', 4153, 0, NULL, '2023-12-20 10:08:47.227123', 2, '2023-12-20 10:28:47.227123');
INSERT INTO "proxy" VALUES (1428, 'www.proxy-list.download', 'socks4', '84.51.56.123', 4145, 0, NULL, '2023-12-20 10:08:47.151266', 2, '2023-12-20 10:28:47.151266');
INSERT INTO "proxy" VALUES (1429, 'www.proxy-list.download', 'socks4', '5.83.104.153', 4153, 0, NULL, '2023-12-20 10:08:46.832137', 2, '2023-12-20 10:28:46.832137');
INSERT INTO "proxy" VALUES (1430, 'www.proxy-list.download', 'socks4', '123.16.188.2', 60153, 0, NULL, '2023-12-20 10:08:46.796644', 2, '2023-12-20 10:28:46.796644');
INSERT INTO "proxy" VALUES (1431, 'www.proxy-list.download', 'socks4', '110.93.13.190', 45034, 0, NULL, '2023-12-20 10:08:46.950151', 2, '2023-12-20 10:28:46.950151');
INSERT INTO "proxy" VALUES (1432, 'www.proxy-list.download', 'socks4', '217.21.124.194', 4145, 0, NULL, '2023-12-20 10:08:46.936324', 2, '2023-12-20 10:28:46.936324');
INSERT INTO "proxy" VALUES (1433, 'www.proxy-list.download', 'socks4', '91.232.135.105', 80, 0, NULL, '2023-12-20 10:08:46.898764', 2, '2023-12-20 10:28:46.898764');
INSERT INTO "proxy" VALUES (1434, 'www.proxy-list.download', 'socks4', '203.189.156.47', 4153, 0, NULL, '2023-12-20 10:08:47.254728', 2, '2023-12-20 10:28:47.254728');
INSERT INTO "proxy" VALUES (1435, 'www.proxy-list.download', 'socks4', '187.72.239.185', 4145, 0, NULL, '2023-12-20 10:08:47.665880', 2, '2023-12-20 10:28:47.665880');
INSERT INTO "proxy" VALUES (1436, 'www.proxy-list.download', 'socks4', '103.69.20.38', 4145, 0, NULL, '2023-12-20 10:08:47.657892', 2, '2023-12-20 10:28:47.657892');
INSERT INTO "proxy" VALUES (1437, 'www.proxy-list.download', 'socks4', '152.32.78.24', 4145, 0, NULL, '2023-12-20 10:08:47.115203', 2, '2023-12-20 10:28:47.115203');
INSERT INTO "proxy" VALUES (1438, 'www.proxy-list.download', 'socks4', '188.190.101.143', 4145, 0, NULL, '2023-12-20 10:08:47.088033', 2, '2023-12-20 10:28:47.088033');
INSERT INTO "proxy" VALUES (1439, 'www.proxy-list.download', 'socks4', '91.98.4.130', 4145, 0, NULL, '2023-12-20 10:08:47.310306', 2, '2023-12-20 10:28:47.310306');
INSERT INTO "proxy" VALUES (1440, 'www.proxy-list.download', 'socks4', '170.254.92.198', 4153, 0, NULL, '2023-12-20 10:08:47.419639', 2, '2023-12-20 10:28:47.419639');
INSERT INTO "proxy" VALUES (1441, 'www.proxy-list.download', 'socks4', '103.107.68.149', 5430, 0, NULL, '2023-12-20 10:08:47.268816', 2, '2023-12-20 10:28:47.268816');
INSERT INTO "proxy" VALUES (1442, 'www.proxy-list.download', 'socks4', '124.41.240.66', 59534, 0, NULL, '2023-12-20 10:08:47.376921', 2, '2023-12-20 10:28:47.376921');
INSERT INTO "proxy" VALUES (1443, 'www.proxy-list.download', 'socks4', '122.200.145.129', 4153, 0, NULL, '2023-12-20 10:08:47.335574', 2, '2023-12-20 10:28:47.335574');
INSERT INTO "proxy" VALUES (1444, 'www.proxy-list.download', 'socks4', '36.84.59.53', 4145, 0, NULL, '2023-12-20 10:08:47.401567', 2, '2023-12-20 10:28:47.401567');
INSERT INTO "proxy" VALUES (1445, 'www.proxy-list.download', 'socks4', '119.187.146.163', 1080, 0, NULL, '2023-12-20 10:08:47.282339', 2, '2023-12-20 10:28:47.282339');
INSERT INTO "proxy" VALUES (1446, 'www.proxy-list.download', 'socks4', '165.16.105.186', 5678, 0, NULL, '2023-12-20 10:08:47.097038', 2, '2023-12-20 10:28:47.097038');
INSERT INTO "proxy" VALUES (1447, 'www.proxy-list.download', 'socks4', '186.177.141.223', 48683, 0, NULL, '2023-12-20 10:08:47.236832', 2, '2023-12-20 10:28:47.236832');
INSERT INTO "proxy" VALUES (1448, 'www.proxy-list.download', 'socks4', '203.160.61.104', 4145, 0, NULL, '2023-12-20 10:08:47.475770', 2, '2023-12-20 10:28:47.475770');
INSERT INTO "proxy" VALUES (1449, 'www.proxy-list.download', 'https', '    <div id="cf-error-details" class="p-0"', 80, 0, NULL, '2023-12-20 10:08:47.697897', 2, '2023-12-20 10:28:47.697897');
INSERT INTO "proxy" VALUES (1450, 'www.proxy-list.download', 'socks4', '210.246.240.42', 14153, 0, NULL, '2023-12-20 10:08:47.410525', 2, '2023-12-20 10:28:47.410525');
INSERT INTO "proxy" VALUES (1451, 'www.proxy-list.download', 'socks5', '54.215.46.91', 20087, 0, NULL, '2023-12-20 10:08:47.358217', 2, '2023-12-20 10:28:47.358217');
INSERT INTO "proxy" VALUES (1452, 'www.proxy-list.download', 'socks4', '218.81.0.91', 4145, 0, NULL, '2023-12-20 10:08:47.349231', 2, '2023-12-20 10:28:47.349231');
INSERT INTO "proxy" VALUES (1453, 'www.proxy-list.download', 'socks4', '77.244.42.178', 4145, 0, NULL, '2023-12-20 10:08:47.071019', 2, '2023-12-20 10:28:47.071019');
INSERT INTO "proxy" VALUES (1454, 'www.proxy-list.download', 'socks4', '103.69.20.99', 4145, 0, NULL, '2023-12-20 10:08:47.429172', 2, '2023-12-20 10:28:47.429172');
INSERT INTO "proxy" VALUES (1455, 'www.proxy-list.download', 'socks4', '80.71.112.116', 55243, 0, NULL, '2023-12-20 10:08:47.263728', 2, '2023-12-20 10:28:47.263728');
INSERT INTO "proxy" VALUES (1456, 'www.proxy-list.download', 'socks4', '103.229.85.22', 4145, 0, NULL, '2023-12-20 10:08:47.146278', 2, '2023-12-20 10:28:47.146278');
INSERT INTO "proxy" VALUES (1457, 'www.proxy-list.download', 'socks4', '223.100.166.3', 49247, 0, NULL, '2023-12-20 10:08:47.340618', 2, '2023-12-20 10:28:47.340618');
INSERT INTO "proxy" VALUES (1458, 'www.proxy-list.download', 'socks4', '45.226.48.61', 34739, 0, NULL, '2023-12-20 10:08:47.034210', 2, '2023-12-20 10:28:47.034210');
INSERT INTO "proxy" VALUES (1459, 'www.proxy-list.download', 'socks4', '195.225.49.131', 55774, 0, NULL, '2023-12-20 10:08:47.436895', 2, '2023-12-20 10:28:47.436895');
INSERT INTO "proxy" VALUES (1460, 'www.proxy-list.download', 'socks4', '155.0.181.254', 41174, 0, NULL, '2023-12-20 10:08:47.296401', 2, '2023-12-20 10:28:47.296401');
INSERT INTO "proxy" VALUES (1461, 'www.proxy-list.download', 'socks4', '188.255.209.149', 1080, 0, NULL, '2023-12-20 10:08:47.354222', 2, '2023-12-20 10:28:47.354222');
INSERT INTO "proxy" VALUES (1462, 'www.proxy-list.download', 'socks4', '109.102.254.170', 4145, 0, NULL, '2023-12-20 10:08:47.240690', 2, '2023-12-20 10:28:47.240690');
INSERT INTO "proxy" VALUES (1463, 'www.proxy-list.download', 'socks4', '176.98.95.132', 1080, 0, NULL, '2023-12-20 10:08:46.992603', 2, '2023-12-20 10:28:46.992603');
INSERT INTO "proxy" VALUES (1464, 'www.proxy-list.download', 'socks4', '213.81.182.29', 57534, 0, NULL, '2023-12-20 10:08:46.873727', 2, '2023-12-20 10:28:46.873727');
INSERT INTO "proxy" VALUES (1465, 'www.proxy-list.download', 'socks4', '202.91.89.129', 4153, 0, NULL, '2023-12-20 10:08:47.160286', 2, '2023-12-20 10:28:47.160286');
INSERT INTO "proxy" VALUES (1466, 'www.proxy-list.download', 'socks4', '186.219.211.6', 39427, 0, NULL, '2023-12-20 10:08:47.232110', 2, '2023-12-20 10:28:47.232110');
INSERT INTO "proxy" VALUES (1467, 'www.proxy-list.download', 'socks4', '46.13.11.82', 4153, 0, NULL, '2023-12-20 10:08:47.589876', 2, '2023-12-20 10:28:47.589876');
INSERT INTO "proxy" VALUES (1468, 'www.proxy-list.download', 'socks4', '118.173.233.149', 42500, 0, NULL, '2023-12-20 10:08:47.277333', 2, '2023-12-20 10:28:47.277333');
INSERT INTO "proxy" VALUES (1469, 'www.proxy-list.download', 'socks5', '154.72.204.78', 8080, 0, NULL, '2023-12-20 10:08:47.301719', 2, '2023-12-20 10:28:47.301719');
INSERT INTO "proxy" VALUES (1470, 'www.proxy-list.download', 'socks4', '120.236.253.116', 1081, 0, NULL, '2023-12-20 10:08:47.445873', 2, '2023-12-20 10:28:47.445873');
INSERT INTO "proxy" VALUES (1471, 'www.proxy-list.download', 'socks4', '80.73.87.202', 4153, 0, NULL, '2023-12-20 10:08:47.688883', 2, '2023-12-20 10:28:47.688883');
INSERT INTO "proxy" VALUES (1472, 'www.proxy-list.download', 'socks4', '77.46.138.37', 33608, 0, NULL, '2023-12-20 10:08:46.894752', 2, '2023-12-20 10:28:46.894752');
INSERT INTO "proxy" VALUES (1473, 'www.proxy-list.download', 'socks4', '189.2.127.243', 4153, 0, NULL, '2023-12-20 10:08:47.910422', 2, '2023-12-20 10:28:47.910422');
INSERT INTO "proxy" VALUES (1474, 'www.proxy-list.download', 'socks4', '222.191.243.187', 45730, 0, NULL, '2023-12-20 10:08:47.527624', 2, '2023-12-20 10:28:47.527624');
INSERT INTO "proxy" VALUES (1475, 'www.proxy-list.download', 'socks5', '24.249.199.4', 4145, 0, NULL, '2023-12-20 10:08:47.441879', 2, '2023-12-20 10:28:47.441879');
INSERT INTO "proxy" VALUES (1476, 'www.proxy-list.download', 'socks4', '1.179.148.9', 36476, 0, NULL, '2023-12-20 10:08:47.372286', 2, '2023-12-20 10:28:47.372286');
INSERT INTO "proxy" VALUES (1477, 'www.proxy-list.download', 'socks4', '45.124.24.215', 1080, 0, NULL, '2023-12-20 10:08:47.633761', 2, '2023-12-20 10:28:47.633761');
INSERT INTO "proxy" VALUES (1478, 'www.proxy-list.download', 'socks4', '213.136.89.190', 52010, 0, NULL, '2023-12-20 10:08:47.380909', 2, '2023-12-20 10:28:47.380909');
INSERT INTO "proxy" VALUES (1479, 'www.proxy-list.download', 'socks4', '187.111.192.221', 37498, 0, NULL, '2023-12-20 10:08:47.540170', 2, '2023-12-20 10:28:47.540170');
INSERT INTO "proxy" VALUES (1480, 'www.proxy-list.download', 'socks4', '212.170.207.29', 4153, 0, NULL, '2023-12-20 10:08:47.245701', 2, '2023-12-20 10:28:47.245701');
INSERT INTO "proxy" VALUES (1481, 'www.proxy-list.download', 'socks4', '189.51.116.5', 4145, 0, NULL, '2023-12-20 10:08:47.326026', 2, '2023-12-20 10:28:47.326026');
INSERT INTO "proxy" VALUES (1482, 'www.proxy-list.download', 'socks4', '36.94.35.217', 32016, 0, NULL, '2023-12-20 10:08:47.249716', 2, '2023-12-20 10:28:47.249716');
INSERT INTO "proxy" VALUES (1483, 'www.proxy-list.download', 'socks4', '202.62.99.170', 4145, 0, NULL, '2023-12-20 10:08:47.273337', 2, '2023-12-20 10:28:47.273337');
INSERT INTO "proxy" VALUES (1484, 'www.proxy-list.download', 'socks4', '170.81.35.26', 33566, 0, NULL, '2023-12-20 10:08:47.638483', 2, '2023-12-20 10:28:47.638483');
INSERT INTO "proxy" VALUES (1485, 'www.proxy-list.download', 'http', '    </div><!-- /#cf-error-details --', 80, 0, NULL, '2023-12-20 10:08:47.406522', 2, '2023-12-20 10:28:47.406522');
INSERT INTO "proxy" VALUES (1486, 'www.proxy-list.download', 'https', '        Thank you for your feedback', 80, 0, NULL, '2023-12-20 10:08:47.577863', 2, '2023-12-20 10:28:47.577863');
INSERT INTO "proxy" VALUES (1487, 'www.proxy-list.download', 'socks4', '113.160.234.147', 31797, 0, NULL, '2023-12-20 10:08:47.706376', 2, '2023-12-20 10:28:47.706376');
INSERT INTO "proxy" VALUES (1488, 'www.proxy-list.download', 'socks4', '200.85.139.57', 4153, 0, NULL, '2023-12-20 10:08:47.615753', 2, '2023-12-20 10:28:47.615753');
INSERT INTO "proxy" VALUES (1489, 'www.proxy-list.download', 'socks4', '202.55.175.237', 1080, 0, NULL, '2023-12-20 10:08:47.714424', 2, '2023-12-20 10:28:47.714424');
INSERT INTO "proxy" VALUES (1490, 'www.proxy-list.download', 'socks5', '183.166.132.124', 3000, 0, NULL, '2023-12-20 10:08:47.522606', 2, '2023-12-20 10:28:47.522606');
INSERT INTO "proxy" VALUES (1491, 'www.proxy-list.download', 'socks4', '86.120.79.84', 4145, 0, NULL, '2023-12-20 10:08:47.292440', 2, '2023-12-20 10:28:47.292440');
INSERT INTO "proxy" VALUES (1492, 'www.proxy-list.download', 'socks4', '186.46.6.233', 52854, 0, NULL, '2023-12-20 10:08:47.794929', 2, '2023-12-20 10:28:47.794929');
INSERT INTO "proxy" VALUES (1493, 'www.proxy-list.download', 'socks4', '62.176.1.194', 56069, 0, NULL, '2023-12-20 10:08:46.889754', 2, '2023-12-20 10:28:46.889754');
INSERT INTO "proxy" VALUES (1494, 'www.proxy-list.download', 'socks4', '103.83.174.95', 4145, 0, NULL, '2023-12-20 10:08:46.987594', 2, '2023-12-20 10:28:46.987594');
INSERT INTO "proxy" VALUES (1495, 'www.proxy-list.download', 'socks4', '190.196.20.166', 44907, 0, NULL, '2023-12-20 10:08:47.156267', 2, '2023-12-20 10:28:47.156267');
INSERT INTO "proxy" VALUES (1496, 'www.proxy-list.download', 'socks4', '81.163.254.104', 3629, 0, NULL, '2023-12-20 10:08:47.315321', 2, '2023-12-20 10:28:47.315321');
INSERT INTO "proxy" VALUES (1497, 'www.proxy-list.download', 'https', '</div><!-- /.error-footer --', 80, 0, NULL, '2023-12-20 10:08:47.598876', 2, '2023-12-20 10:28:47.598876');
INSERT INTO "proxy" VALUES (1498, 'www.proxy-list.download', 'socks4', '113.105.180.62', 4145, 0, NULL, '2023-12-20 10:08:47.415524', 2, '2023-12-20 10:28:47.415524');
INSERT INTO "proxy" VALUES (1499, 'www.proxy-list.download', 'socks4', '114.69.232.37', 4145, 0, NULL, '2023-12-20 10:08:47.775927', 2, '2023-12-20 10:28:47.775927');
INSERT INTO "proxy" VALUES (1500, 'www.proxy-list.download', 'socks4', '91.210.47.85', 30806, 0, NULL, '2023-12-20 10:08:47.809600', 2, '2023-12-20 10:28:47.809600');
INSERT INTO "proxy" VALUES (1501, 'www.proxy-list.download', 'socks4', '46.150.23.93', 58820, 0, NULL, '2023-12-20 10:08:47.345508', 2, '2023-12-20 10:28:47.345508');
INSERT INTO "proxy" VALUES (1502, 'www.proxy-list.download', 'socks4', '43.241.30.222', 4145, 0, NULL, '2023-12-20 10:08:47.368283', 2, '2023-12-20 10:28:47.368283');
INSERT INTO "proxy" VALUES (1503, 'www.proxy-list.download', 'socks4', '103.57.80.58', 4145, 0, NULL, '2023-12-20 10:08:47.364218', 2, '2023-12-20 10:28:47.364218');
INSERT INTO "proxy" VALUES (1504, 'www.proxy-list.download', 'socks4', '103.112.60.33', 44550, 0, NULL, '2023-12-20 10:08:47.507591', 2, '2023-12-20 10:28:47.507591');
INSERT INTO "proxy" VALUES (1505, 'www.proxy-list.download', 'socks4', '62.106.122.90', 44818, 0, NULL, '2023-12-20 10:08:47.766142', 2, '2023-12-20 10:28:47.766142');
INSERT INTO "proxy" VALUES (1506, 'www.proxy-list.download', 'socks4', '88.116.29.106', 1081, 0, NULL, '2023-12-20 10:08:47.692928', 2, '2023-12-20 10:28:47.692928');
INSERT INTO "proxy" VALUES (1507, 'www.proxy-list.download', 'socks4', '36.67.174.77', 4153, 0, NULL, '2023-12-20 10:08:47.287333', 2, '2023-12-20 10:28:47.287333');
INSERT INTO "proxy" VALUES (1508, 'www.proxy-list.download', 'socks4', '92.247.31.37', 4145, 0, NULL, '2023-12-20 10:08:47.862339', 2, '2023-12-20 10:28:47.862339');
INSERT INTO "proxy" VALUES (1509, 'www.proxy-list.download', 'socks4', '96.9.86.70', 53304, 0, NULL, '2023-12-20 10:08:47.385911', 2, '2023-12-20 10:28:47.385911');
INSERT INTO "proxy" VALUES (1510, 'www.proxy-list.download', 'socks4', '103.76.172.230', 4153, 0, NULL, '2023-12-20 10:08:47.466887', 2, '2023-12-20 10:28:47.466887');
INSERT INTO "proxy" VALUES (1511, 'www.proxy-list.download', 'socks4', '41.74.4.166', 4153, 0, NULL, '2023-12-20 10:08:47.557172', 2, '2023-12-20 10:28:47.557172');
INSERT INTO "proxy" VALUES (1512, 'www.proxy-list.download', 'socks4', '8.9.36.10', 1080, 0, NULL, '2023-12-20 10:08:47.727953', 2, '2023-12-20 10:28:47.727953');
INSERT INTO "proxy" VALUES (1513, 'www.proxy-list.download', 'socks4', '1.20.96.156', 4153, 0, NULL, '2023-12-20 10:08:47.940004', 2, '2023-12-20 10:28:47.940004');
INSERT INTO "proxy" VALUES (1514, 'www.proxy-list.download', 'socks4', '91.230.138.11', 4145, 0, NULL, '2023-12-20 10:08:47.560892', 2, '2023-12-20 10:28:47.560892');
INSERT INTO "proxy" VALUES (1515, 'www.proxy-list.download', 'socks4', '193.109.42.114', 4153, 0, NULL, '2023-12-20 10:08:47.619750', 2, '2023-12-20 10:28:47.619750');
INSERT INTO "proxy" VALUES (1516, 'www.proxy-list.download', 'socks4', '192.158.15.201', 50877, 0, NULL, '2023-12-20 10:08:47.628760', 2, '2023-12-20 10:28:47.628760');
INSERT INTO "proxy" VALUES (1517, 'www.proxy-list.download', 'socks4', '197.231.196.44', 37765, 0, NULL, '2023-12-20 10:08:47.493074', 2, '2023-12-20 10:28:47.493074');
INSERT INTO "proxy" VALUES (1518, 'www.proxy-list.download', 'socks4', '154.117.155.42', 52428, 0, NULL, '2023-12-20 10:08:47.484444', 2, '2023-12-20 10:28:47.484444');
INSERT INTO "proxy" VALUES (1519, 'www.proxy-list.download', 'socks5', '140.143.164.213', 1080, 0, NULL, '2023-12-20 10:08:47.568876', 2, '2023-12-20 10:28:47.568876');
INSERT INTO "proxy" VALUES (1520, 'www.proxy-list.download', 'socks4', '103.226.143.86', 1080, 0, NULL, '2023-12-20 10:08:47.751927', 2, '2023-12-20 10:28:47.751927');
INSERT INTO "proxy" VALUES (1521, 'www.proxy-list.download', 'socks4', '5.83.104.148', 4153, 0, NULL, '2023-12-20 10:08:47.829164', 2, '2023-12-20 10:28:47.829164');
INSERT INTO "proxy" VALUES (1522, 'www.proxy-list.download', 'socks4', '177.91.44.96', 4153, 0, NULL, '2023-12-20 10:08:47.502075', 2, '2023-12-20 10:28:47.502075');
INSERT INTO "proxy" VALUES (1523, 'www.proxy-list.download', 'socks4', '67.22.223.9', 39593, 0, NULL, '2023-12-20 10:08:47.594875', 2, '2023-12-20 10:28:47.594875');
INSERT INTO "proxy" VALUES (1524, 'www.proxy-list.download', 'socks4', '177.66.184.237', 4153, 0, NULL, '2023-12-20 10:08:47.479756', 2, '2023-12-20 10:28:47.479756');
INSERT INTO "proxy" VALUES (1525, 'www.proxy-list.download', 'socks4', '141.98.51.70', 1080, 0, NULL, '2023-12-20 10:08:47.573867', 2, '2023-12-20 10:28:47.573867');
INSERT INTO "proxy" VALUES (1526, 'www.proxy-list.download', 'socks4', '84.236.158.242', 9999, 0, NULL, '2023-12-20 10:08:47.649267', 2, '2023-12-20 10:28:47.649267');
INSERT INTO "proxy" VALUES (1527, 'www.proxy-list.download', 'socks4', '202.51.112.22', 5430, 0, NULL, '2023-12-20 10:08:47.842792', 2, '2023-12-20 10:28:47.842792');
INSERT INTO "proxy" VALUES (1528, 'www.proxy-list.download', 'socks4', '203.215.181.218', 36342, 0, NULL, '2023-12-20 10:08:47.934019', 2, '2023-12-20 10:28:47.934019');
INSERT INTO "proxy" VALUES (1529, 'www.proxy-list.download', 'socks4', '197.234.13.92', 4145, 0, NULL, '2023-12-20 10:08:47.896406', 2, '2023-12-20 10:28:47.896406');
INSERT INTO "proxy" VALUES (1530, 'www.proxy-list.download', 'socks4', '103.105.236.153', 53977, 0, NULL, '2023-12-20 10:08:47.886409', 2, '2023-12-20 10:28:47.886409');
INSERT INTO "proxy" VALUES (1531, 'www.proxy-list.download', 'https', '      <header class="mx-auto pt-10 lg', 80, 0, NULL, '2023-12-20 10:08:47.881883', 2, '2023-12-20 10:28:47.881883');
INSERT INTO "proxy" VALUES (1532, 'www.proxy-list.download', 'socks5', '138.68.73.161', 1080, 0, NULL, '2023-12-20 10:08:47.853321', 2, '2023-12-20 10:28:47.853321');
INSERT INTO "proxy" VALUES (1533, 'www.proxy-list.download', 'socks4', '82.99.232.18', 39999, 0, NULL, '2023-12-20 10:08:47.710373', 2, '2023-12-20 10:28:47.710373');
INSERT INTO "proxy" VALUES (1534, 'www.proxy-list.download', 'socks4', '89.207.93.238', 9000, 0, NULL, '2023-12-20 10:08:47.624762', 2, '2023-12-20 10:28:47.624762');
INSERT INTO "proxy" VALUES (1535, 'www.proxy-list.download', 'socks5', '172.104.4.144', 9050, 0, NULL, '2023-12-20 10:08:47.653255', 2, '2023-12-20 10:28:47.653255');
INSERT INTO "proxy" VALUES (1536, 'www.proxy-list.download', 'socks4', '93.158.228.230', 31065, 0, NULL, '2023-12-20 10:08:47.548166', 2, '2023-12-20 10:28:47.548166');
INSERT INTO "proxy" VALUES (1537, 'www.proxy-list.download', 'socks4', '186.219.96.12', 52017, 0, NULL, '2023-12-20 10:08:47.867361', 2, '2023-12-20 10:28:47.867361');
INSERT INTO "proxy" VALUES (1538, 'www.proxy-list.download', 'socks4', '180.180.171.113', 4145, 0, NULL, '2023-12-20 10:08:47.920007', 2, '2023-12-20 10:28:47.920007');
INSERT INTO "proxy" VALUES (1539, 'www.proxy-list.download', 'socks4', '59.153.121.162', 1080, 0, NULL, '2023-12-20 10:08:47.746940', 2, '2023-12-20 10:28:47.746940');
INSERT INTO "proxy" VALUES (1540, 'www.proxy-list.download', 'socks4', '190.215.220.37', 33371, 0, NULL, '2023-12-20 10:08:47.741932', 2, '2023-12-20 10:28:47.741932');
INSERT INTO "proxy" VALUES (1541, 'www.proxy-list.download', 'socks4', '77.93.42.134', 46235, 0, NULL, '2023-12-20 10:08:47.674883', 2, '2023-12-20 10:28:47.674883');
INSERT INTO "proxy" VALUES (1542, 'www.proxy-list.download', 'socks4', '189.89.168.132', 4145, 0, NULL, '2023-12-20 10:08:47.544182', 2, '2023-12-20 10:28:47.544182');
INSERT INTO "proxy" VALUES (1543, 'www.proxy-list.download', 'https', '           ', 80, 0, NULL, '2023-12-20 10:08:47.397921', 2, '2023-12-20 10:28:47.397921');
INSERT INTO "proxy" VALUES (1544, 'www.proxy-list.download', 'socks4', '69.163.166.172', 38713, 0, NULL, '2023-12-20 10:08:47.424186', 2, '2023-12-20 10:28:47.424186');
INSERT INTO "proxy" VALUES (1545, 'www.proxy-list.download', 'socks4', '45.117.228.81', 4145, 0, NULL, '2023-12-20 10:08:47.393921', 2, '2023-12-20 10:28:47.393921');
INSERT INTO "proxy" VALUES (1546, 'www.proxy-list.download', 'socks4', '85.90.163.235', 4153, 0, NULL, '2023-12-20 10:08:46.912394', 2, '2023-12-20 10:28:46.912394');
INSERT INTO "proxy" VALUES (1547, 'www.proxy-list.download', 'socks4', '95.168.96.42', 47180, 0, NULL, '2023-12-20 10:08:47.679040', 2, '2023-12-20 10:28:47.679040');
INSERT INTO "proxy" VALUES (1548, 'www.proxy-list.download', 'http', '<head', 80, 0, NULL, '2023-12-20 10:08:54.936948', 2, '2023-12-20 10:28:54.936948');
INSERT INTO "proxy" VALUES (1549, 'www.proxy-list.download', 'socks4', '87.124.164.13', 4145, 0, NULL, '2023-12-20 10:08:47.305714', 2, '2023-12-20 10:28:47.305714');
INSERT INTO "proxy" VALUES (1550, 'www.proxy-list.download', 'socks5', '222.129.38.21', 57114, 0, NULL, '2023-12-20 10:08:47.900406', 2, '2023-12-20 10:28:47.900406');
INSERT INTO "proxy" VALUES (1551, 'www.proxy-list.download', 'socks4', '131.0.246.113', 4153, 0, NULL, '2023-12-20 10:08:47.872090', 2, '2023-12-20 10:28:47.872090');
INSERT INTO "proxy" VALUES (1552, 'www.proxy-list.download', 'socks4', '124.158.150.205', 4145, 0, NULL, '2023-12-20 10:08:47.330576', 2, '2023-12-20 10:28:47.330576');
INSERT INTO "proxy" VALUES (1553, 'www.proxy-list.download', 'http', '    <span id="cf-footer-item-ip" class="cf-footer-item hidden sm', 80, 0, NULL, '2023-12-20 10:08:47.388921', 2, '2023-12-20 10:28:47.388921');
INSERT INTO "proxy" VALUES (1554, 'www.proxy-list.download', 'http', 'b.send(JSON.stringify(a));c.classList.add("feedback-hidden");d.classList.remove("feedback-hidden")};document.addEventListener("DOMContentLoaded",function(){var a=document.getElementById("error-feedback"),c=document.getElementById("feedback-button-yes"),d=document.getElementById("feedback-button-no");"classList"in a&&(a.classList.remove("feedback-hidden"),c.addEventListener("click",function(){e(!0)}),d.addEventListener("click",function(){e(!1)}))})}})()', 80, 0, NULL, '2023-12-20 10:08:47.876896', 2, '2023-12-20 10:28:47.876896');
INSERT INTO "proxy" VALUES (1555, 'www.proxy-list.download', 'socks4', '186.208.112.246', 4153, 0, NULL, '2023-12-20 10:08:47.736941', 2, '2023-12-20 10:28:47.736941');
INSERT INTO "proxy" VALUES (1556, 'www.proxy-list.download', 'socks4', '170.244.0.179', 4145, 0, NULL, '2023-12-20 10:08:47.770941', 2, '2023-12-20 10:28:47.770941');
INSERT INTO "proxy" VALUES (1557, 'www.proxy-list.download', 'socks4', '200.5.251.2', 4153, 0, NULL, '2023-12-20 10:08:47.815583', 2, '2023-12-20 10:28:47.815583');
INSERT INTO "proxy" VALUES (1558, 'www.proxy-list.download', 'socks4', '118.174.196.250', 4153, 0, NULL, '2023-12-20 10:08:47.683884', 2, '2023-12-20 10:28:47.683884');
INSERT INTO "proxy" VALUES (1559, 'www.proxy-list.download', 'socks4', '187.62.191.3', 33428, 0, NULL, '2023-12-20 10:08:47.449887', 2, '2023-12-20 10:28:47.449887');
INSERT INTO "proxy" VALUES (1560, 'www.proxy-list.download', 'socks4', '170.81.34.54', 4153, 0, NULL, '2023-12-20 10:08:47.497074', 2, '2023-12-20 10:28:47.497074');
INSERT INTO "proxy" VALUES (1561, 'www.proxy-list.download', 'socks4', '210.245.51.76', 4145, 0, NULL, '2023-12-20 10:08:47.536167', 2, '2023-12-20 10:28:47.536167');
INSERT INTO "proxy" VALUES (1562, 'www.proxy-list.download', 'socks4', '177.91.44.97', 4153, 0, NULL, '2023-12-20 10:08:47.585876', 2, '2023-12-20 10:28:47.585876');
INSERT INTO "proxy" VALUES (1563, 'www.proxy-list.download', 'socks4', '89.251.144.37', 30048, 0, NULL, '2023-12-20 10:08:47.461889', 2, '2023-12-20 10:28:47.461889');
INSERT INTO "proxy" VALUES (1564, 'www.proxy-list.download', 'socks4', '101.51.141.2', 4153, 0, NULL, '2023-12-20 10:08:47.847323', 2, '2023-12-20 10:28:47.847323');
INSERT INTO "proxy" VALUES (1565, 'www.proxy-list.download', 'socks4', '91.144.142.19', 46138, 0, NULL, '2023-12-20 10:08:47.453892', 2, '2023-12-20 10:28:47.453892');
INSERT INTO "proxy" VALUES (1566, 'www.proxy-list.download', 'socks4', '188.133.160.22', 4145, 0, NULL, '2023-12-20 10:08:47.517597', 2, '2023-12-20 10:28:47.517597');
INSERT INTO "proxy" VALUES (1567, 'www.proxy-list.download', 'socks4', '202.182.59.188', 1089, 0, NULL, '2023-12-20 10:08:47.857323', 2, '2023-12-20 10:28:47.857323');
INSERT INTO "proxy" VALUES (1568, 'www.proxy-list.download', 'socks4', '5.189.130.21', 1080, 0, NULL, '2023-12-20 10:08:47.532164', 2, '2023-12-20 10:28:47.532164');
INSERT INTO "proxy" VALUES (1569, 'www.proxy-list.download', 'socks4', '93.167.67.69', 4145, 0, NULL, '2023-12-20 10:08:47.607209', 2, '2023-12-20 10:28:47.607209');
INSERT INTO "proxy" VALUES (1570, 'www.proxy-list.download', 'socks4', '50.192.195.69', 39792, 0, NULL, '2023-12-20 10:08:47.564876', 2, '2023-12-20 10:28:47.564876');
INSERT INTO "proxy" VALUES (1571, 'www.proxy-list.download', 'socks4', '52.144.86.82', 1080, 0, NULL, '2023-12-20 10:08:47.645255', 2, '2023-12-20 10:28:47.645255');
INSERT INTO "proxy" VALUES (1572, 'www.proxy-list.download', 'https', '<meta charset="UTF-8" /', 80, 0, NULL, '2023-12-20 10:08:47.512592', 2, '2023-12-20 10:28:47.512592');
INSERT INTO "proxy" VALUES (1573, 'www.proxy-list.download', 'http', '         </h1', 80, 0, NULL, '2023-12-20 10:08:47.784929', 2, '2023-12-20 10:28:47.784929');
INSERT INTO "proxy" VALUES (1574, 'www.proxy-list.download', 'socks4', '185.46.170.253', 4145, 0, NULL, '2023-12-20 10:08:47.457887', 2, '2023-12-20 10:28:47.457887');
INSERT INTO "proxy" VALUES (1575, 'www.proxy-list.download', 'socks4', '103.47.94.97', 1080, 0, NULL, '2023-12-20 10:08:47.432887', 2, '2023-12-20 10:28:47.432887');
INSERT INTO "proxy" VALUES (1576, 'www.proxy-list.download', 'socks4', '202.51.111.217', 5430, 0, NULL, '2023-12-20 10:08:47.756926', 2, '2023-12-20 10:28:47.756926');
INSERT INTO "proxy" VALUES (1577, 'www.proxy-list.download', 'socks4', '50.250.75.153', 39593, 0, NULL, '2023-12-20 10:08:47.552177', 2, '2023-12-20 10:28:47.552177');
INSERT INTO "proxy" VALUES (1578, 'www.proxy-list.download', 'socks4', '67.206.213.202', 4145, 0, NULL, '2023-12-20 10:08:47.834164', 2, '2023-12-20 10:28:47.834164');
INSERT INTO "proxy" VALUES (1579, 'www.proxy-list.download', 'socks4', '109.69.0.69', 1080, 0, NULL, '2023-12-20 10:08:47.670884', 2, '2023-12-20 10:28:47.670884');
INSERT INTO "proxy" VALUES (1580, 'www.proxy-list.download', 'socks4', '50.244.116.145', 54321, 0, NULL, '2023-12-20 10:08:47.915405', 2, '2023-12-20 10:28:47.915405');
INSERT INTO "proxy" VALUES (1581, 'www.proxy-list.download', 'socks4', '103.52.37.1', 4145, 0, NULL, '2023-12-20 10:08:47.603018', 2, '2023-12-20 10:28:47.603018');
INSERT INTO "proxy" VALUES (1582, 'www.proxy-list.download', 'socks4', '95.0.206.62', 1082, 0, NULL, '2023-12-20 10:08:47.820583', 2, '2023-12-20 10:28:47.820583');
INSERT INTO "proxy" VALUES (1583, 'www.proxy-list.download', 'socks4', '89.17.51.234', 3629, 0, NULL, '2023-12-20 10:08:47.582037', 2, '2023-12-20 10:28:47.582037');
INSERT INTO "proxy" VALUES (1584, 'www.proxy-list.download', 'socks4', '190.196.66.76', 33371, 0, NULL, '2023-12-20 10:08:47.761942', 2, '2023-12-20 10:28:47.761942');
INSERT INTO "proxy" VALUES (1585, 'www.proxy-list.download', 'socks5', '98.185.94.76', 4145, 0, NULL, '2023-12-20 10:08:47.824589', 2, '2023-12-20 10:28:47.824589');
INSERT INTO "proxy" VALUES (1586, 'www.proxy-list.download', 'socks4', '213.138.77.238', 4145, 0, NULL, '2023-12-20 10:08:47.489050', 2, '2023-12-20 10:28:47.489050');
INSERT INTO "proxy" VALUES (1587, 'www.proxy-list.download', 'socks4', '197.232.21.22', 58253, 0, NULL, '2023-12-20 10:08:47.798933', 2, '2023-12-20 10:28:47.798933');
INSERT INTO "proxy" VALUES (1588, 'www.proxy-list.download', 'socks4', '94.66.86.165', 4145, 0, NULL, '2023-12-20 10:08:47.905408', 2, '2023-12-20 10:28:47.905408');
INSERT INTO "proxy" VALUES (1589, 'www.proxy-list.download', 'socks4', '177.184.67.61', 4145, 0, NULL, '2023-12-20 10:08:47.804135', 2, '2023-12-20 10:28:47.804135');
INSERT INTO "proxy" VALUES (1590, 'www.proxy-list.download', 'socks4', '78.8.189.242', 52036, 0, NULL, '2023-12-20 10:08:47.732932', 2, '2023-12-20 10:28:47.732932');
INSERT INTO "proxy" VALUES (1591, 'www.proxy-list.download', 'socks4', '190.4.204.163', 4145, 0, NULL, '2023-12-20 10:08:47.611222', 2, '2023-12-20 10:28:47.611222');
INSERT INTO "proxy" VALUES (1592, 'www.proxy-list.download', 'socks4', '121.241.90.242', 52115, 0, NULL, '2023-12-20 10:08:47.789927', 2, '2023-12-20 10:28:47.789927');
INSERT INTO "proxy" VALUES (1593, 'www.proxy-list.download', 'socks4', '45.227.159.7', 4153, 0, NULL, '2023-12-20 10:08:47.780938', 2, '2023-12-20 10:28:47.780938');
INSERT INTO "proxy" VALUES (1594, 'www.proxy-list.download', 'socks4', '177.36.159.34', 4145, 0, NULL, '2023-12-20 10:08:47.470903', 2, '2023-12-20 10:28:47.470903');
INSERT INTO "proxy" VALUES (1595, 'www.proxy-list.download', 'socks4', '5.141.81.106', 44271, 0, NULL, '2023-12-20 10:08:47.838152', 2, '2023-12-20 10:28:47.838152');
INSERT INTO "proxy" VALUES (1596, 'www.proxy-list.download', 'socks4', '85.62.101.113', 1080, 0, NULL, '2023-12-20 10:08:47.930010', 2, '2023-12-20 10:28:47.930010');
INSERT INTO "proxy" VALUES (1597, 'www.proxy-list.download', 'socks4', '202.70.34.82', 47642, 0, NULL, '2023-12-20 10:08:47.891406', 2, '2023-12-20 10:28:47.891406');
INSERT INTO "proxy" VALUES (1598, 'www.proxy-list.download', 'socks4', '82.114.83.238', 4153, 0, NULL, '2023-12-20 10:08:47.925004', 2, '2023-12-20 10:28:47.925004');
INSERT INTO "proxy" VALUES (1599, 'www.proxy-list.download', 'socks4', '200.85.169.18', 50577, 0, NULL, '2023-12-20 10:08:53.188800', 2, '2023-12-20 10:28:53.188800');
INSERT INTO "proxy" VALUES (1600, 'www.proxy-list.download', 'socks4', '1.20.100.45', 43943, 0, NULL, '2023-12-20 10:08:53.499067', 2, '2023-12-20 10:28:53.499067');
INSERT INTO "proxy" VALUES (1601, 'www.proxy-list.download', 'socks5', '188.120.245.247', 12432, 0, NULL, '2023-12-20 10:08:53.162096', 2, '2023-12-20 10:28:53.162096');
INSERT INTO "proxy" VALUES (1602, 'www.proxy-list.download', 'socks5', '184.178.172.5', 15303, 0, NULL, '2023-12-20 10:08:53.184100', 2, '2023-12-20 10:28:53.184100');
INSERT INTO "proxy" VALUES (1603, 'www.proxy-list.download', 'socks4', '178.93.34.64', 10801, 0, NULL, '2023-12-20 10:08:53.375006', 2, '2023-12-20 10:28:53.375006');
INSERT INTO "proxy" VALUES (1604, 'www.proxy-list.download', 'socks4', '103.226.143.254', 1080, 0, NULL, '2023-12-20 10:08:53.686295', 2, '2023-12-20 10:28:53.686295');
INSERT INTO "proxy" VALUES (1605, 'www.proxy-list.download', 'socks4', '46.146.214.244', 31952, 0, NULL, '2023-12-20 10:08:53.733828', 2, '2023-12-20 10:28:53.733828');
INSERT INTO "proxy" VALUES (1606, 'www.proxy-list.download', 'socks4', '41.79.49.23', 4145, 0, NULL, '2023-12-20 10:08:53.143799', 2, '2023-12-20 10:28:53.143799');
INSERT INTO "proxy" VALUES (1607, 'www.proxy-list.download', 'socks4', '45.249.79.185', 3629, 0, NULL, '2023-12-20 10:08:53.369992', 2, '2023-12-20 10:28:53.369992');
INSERT INTO "proxy" VALUES (1608, 'www.proxy-list.download', 'socks4', '144.126.196.87', 1080, 0, NULL, '2023-12-20 10:08:53.455137', 2, '2023-12-20 10:28:53.455137');
INSERT INTO "proxy" VALUES (1609, 'www.proxy-list.download', 'socks5', '207.97.174.134', 1080, 0, NULL, '2023-12-20 10:08:53.399163', 2, '2023-12-20 10:28:53.399163');
INSERT INTO "proxy" VALUES (1610, 'www.proxy-list.download', 'socks4', '103.113.106.227', 4145, 0, NULL, '2023-12-20 10:08:53.394006', 2, '2023-12-20 10:28:53.394006');
INSERT INTO "proxy" VALUES (1611, 'www.proxy-list.download', 'socks4', '79.125.162.222', 4145, 0, NULL, '2023-12-20 10:08:53.013391', 2, '2023-12-20 10:28:53.013391');
INSERT INTO "proxy" VALUES (1612, 'www.proxy-list.download', 'socks4', '181.143.223.139', 4145, 0, NULL, '2023-12-20 10:08:53.364033', 2, '2023-12-20 10:28:53.364033');
INSERT INTO "proxy" VALUES (1613, 'www.proxy-list.download', 'socks4', '190.228.171.11', 4145, 0, NULL, '2023-12-20 10:08:53.256048', 2, '2023-12-20 10:28:53.256048');
INSERT INTO "proxy" VALUES (1614, 'www.proxy-list.download', 'socks4', '178.134.155.82', 49483, 0, NULL, '2023-12-20 10:08:53.201578', 2, '2023-12-20 10:28:53.201578');
INSERT INTO "proxy" VALUES (1615, 'www.proxy-list.download', 'socks4', '186.159.3.41', 51445, 0, NULL, '2023-12-20 10:08:53.323404', 2, '2023-12-20 10:28:53.323404');
INSERT INTO "proxy" VALUES (1616, 'www.proxy-list.download', 'socks5', '192.111.129.150', 4145, 0, NULL, '2023-12-20 10:08:53.422042', 2, '2023-12-20 10:28:53.422042');
INSERT INTO "proxy" VALUES (1617, 'www.proxy-list.download', 'socks4', '106.51.2.56', 4145, 0, NULL, '2023-12-20 10:08:53.072831', 2, '2023-12-20 10:28:53.072831');
INSERT INTO "proxy" VALUES (1618, 'www.proxy-list.download', 'socks4', '124.109.33.176', 4153, 0, NULL, '2023-12-20 10:08:53.220003', 2, '2023-12-20 10:28:53.220003');
INSERT INTO "proxy" VALUES (1619, 'www.proxy-list.download', 'socks4', '181.48.70.30', 4153, 0, NULL, '2023-12-20 10:08:53.353439', 2, '2023-12-20 10:28:53.353439');
INSERT INTO "proxy" VALUES (1620, 'www.proxy-list.download', 'socks4', '41.75.113.217', 1080, 0, NULL, '2023-12-20 10:08:53.081380', 2, '2023-12-20 10:28:53.081380');
INSERT INTO "proxy" VALUES (1621, 'www.proxy-list.download', 'socks4', '187.243.253.182', 43015, 0, NULL, '2023-12-20 10:08:53.413006', 2, '2023-12-20 10:28:53.413006');
INSERT INTO "proxy" VALUES (1622, 'www.proxy-list.download', 'socks4', '113.11.39.110', 4153, 0, NULL, '2023-12-20 10:08:53.004403', 2, '2023-12-20 10:28:53.004403');
INSERT INTO "proxy" VALUES (1623, 'www.proxy-list.download', 'https', '        <h2 class="text-gray-600 leading-1.3 text-3xl lg', 80, 0, NULL, '2023-12-20 10:08:53.197560', 2, '2023-12-20 10:28:53.197560');
INSERT INTO "proxy" VALUES (1624, 'www.proxy-list.download', 'socks5', '124.65.117.38', 7302, 0, NULL, '2023-12-20 10:08:53.431042', 2, '2023-12-20 10:28:53.431042');
INSERT INTO "proxy" VALUES (1625, 'www.proxy-list.download', 'socks4', '200.108.196.108', 4145, 0, NULL, '2023-12-20 10:08:53.166095', 2, '2023-12-20 10:28:53.166095');
INSERT INTO "proxy" VALUES (1626, 'www.proxy-list.download', 'socks4', '203.209.190.154', 4153, 0, NULL, '2023-12-20 10:08:53.265793', 2, '2023-12-20 10:28:53.265793');
INSERT INTO "proxy" VALUES (1627, 'www.proxy-list.download', 'socks4', '117.141.96.35', 4145, 0, NULL, '2023-12-20 10:08:53.914394', 2, '2023-12-20 10:28:53.914394');
INSERT INTO "proxy" VALUES (1628, 'www.proxy-list.download', 'socks4', '110.74.222.159', 61274, 0, NULL, '2023-12-20 10:08:53.508221', 2, '2023-12-20 10:28:53.508221');
INSERT INTO "proxy" VALUES (1629, 'www.proxy-list.download', 'socks5', '195.93.173.58', 9050, 0, NULL, '2023-12-20 10:08:53.724981', 2, '2023-12-20 10:28:53.724981');
INSERT INTO "proxy" VALUES (1630, 'www.proxy-list.download', 'https', '    </span', 80, 0, NULL, '2023-12-20 10:08:53.436823', 2, '2023-12-20 10:28:53.436823');
INSERT INTO "proxy" VALUES (1631, 'www.proxy-list.download', 'socks4', '177.10.144.22', 1080, 0, NULL, '2023-12-20 10:08:53.840130', 2, '2023-12-20 10:28:53.840130');
INSERT INTO "proxy" VALUES (1632, 'www.proxy-list.download', 'socks4', '201.184.154.98', 4153, 0, NULL, '2023-12-20 10:08:53.503076', 2, '2023-12-20 10:28:53.503076');
INSERT INTO "proxy" VALUES (1633, 'www.proxy-list.download', 'socks4', '202.91.177.65', 4145, 0, NULL, '2023-12-20 10:08:53.715285', 2, '2023-12-20 10:28:53.715285');
INSERT INTO "proxy" VALUES (1634, 'www.proxy-list.download', 'socks4', '202.79.40.97', 36953, 0, NULL, '2023-12-20 10:08:53.343420', 2, '2023-12-20 10:28:53.343420');
INSERT INTO "proxy" VALUES (1635, 'www.proxy-list.download', 'socks4', '193.239.101.6', 4145, 0, NULL, '2023-12-20 10:08:53.697296', 2, '2023-12-20 10:28:53.697296');
INSERT INTO "proxy" VALUES (1636, 'www.proxy-list.download', 'socks4', '129.126.99.254', 4153, 0, NULL, '2023-12-20 10:08:53.941422', 2, '2023-12-20 10:28:53.941422');
INSERT INTO "proxy" VALUES (1637, 'www.proxy-list.download', 'socks4', '186.224.225.98', 4145, 0, NULL, '2023-12-20 10:08:53.871141', 2, '2023-12-20 10:28:53.871141');
INSERT INTO "proxy" VALUES (1638, 'www.proxy-list.download', 'socks4', '202.144.201.129', 43870, 0, NULL, '2023-12-20 10:08:53.936417', 2, '2023-12-20 10:28:53.936417');
INSERT INTO "proxy" VALUES (1639, 'www.proxy-list.download', 'socks4', '78.165.73.190', 4153, 0, NULL, '2023-12-20 10:08:53.787842', 2, '2023-12-20 10:28:53.787842');
INSERT INTO "proxy" VALUES (1640, 'www.proxy-list.download', 'socks4', '50.250.34.229', 53412, 0, NULL, '2023-12-20 10:08:53.889831', 2, '2023-12-20 10:28:53.889831');
INSERT INTO "proxy" VALUES (1641, 'www.proxy-list.download', 'socks5', '192.111.137.35', 4145, 0, NULL, '2023-12-20 10:08:53.773839', 2, '2023-12-20 10:28:53.773839');
INSERT INTO "proxy" VALUES (1642, 'www.proxy-list.download', 'socks4', '91.192.2.168', 30226, 0, NULL, '2023-12-20 10:08:53.653371', 2, '2023-12-20 10:28:53.653371');
INSERT INTO "proxy" VALUES (1643, 'www.proxy-list.download', 'socks4', '181.112.229.210', 40704, 0, NULL, '2023-12-20 10:08:53.179115', 2, '2023-12-20 10:28:53.179115');
INSERT INTO "proxy" VALUES (1644, 'www.proxy-list.download', 'socks4', '180.171.128.26', 4145, 0, NULL, '2023-12-20 10:08:53.031806', 2, '2023-12-20 10:28:53.031806');
INSERT INTO "proxy" VALUES (1645, 'www.proxy-list.download', 'socks4', '45.6.15.79', 4145, 0, NULL, '2023-12-20 10:08:53.104370', 2, '2023-12-20 10:28:53.104370');
INSERT INTO "proxy" VALUES (1646, 'www.proxy-list.download', 'socks4', '1.10.189.156', 51336, 0, NULL, '2023-12-20 10:08:53.192705', 2, '2023-12-20 10:28:53.192705');
INSERT INTO "proxy" VALUES (1647, 'www.proxy-list.download', 'socks4', '134.236.242.161', 4153, 0, NULL, '2023-12-20 10:08:53.281332', 2, '2023-12-20 10:28:53.281332');
INSERT INTO "proxy" VALUES (1648, 'www.proxy-list.download', 'socks4', '187.33.70.110', 4153, 0, NULL, '2023-12-20 10:08:53.801847', 2, '2023-12-20 10:28:53.801847');
INSERT INTO "proxy" VALUES (1649, 'www.proxy-list.download', 'socks4', '201.93.159.234', 4145, 0, NULL, '2023-12-20 10:08:53.223996', 2, '2023-12-20 10:28:53.223996');
INSERT INTO "proxy" VALUES (1650, 'www.proxy-list.download', 'socks4', '110.78.147.48', 4145, 0, NULL, '2023-12-20 10:08:53.018396', 2, '2023-12-20 10:28:53.018396');
INSERT INTO "proxy" VALUES (1651, 'www.proxy-list.download', 'socks4', '194.44.20.22', 1080, 0, NULL, '2023-12-20 10:08:53.233521', 2, '2023-12-20 10:28:53.233521');
INSERT INTO "proxy" VALUES (1652, 'www.proxy-list.download', 'socks4', '79.124.23.9', 4153, 0, NULL, '2023-12-20 10:08:53.275774', 2, '2023-12-20 10:28:53.275774');
INSERT INTO "proxy" VALUES (1653, 'www.proxy-list.download', 'socks4', '188.255.213.97', 1080, 0, NULL, '2023-12-20 10:08:53.086384', 2, '2023-12-20 10:28:53.086384');
INSERT INTO "proxy" VALUES (1654, 'www.proxy-list.download', 'socks4', '36.89.143.21', 53541, 0, NULL, '2023-12-20 10:08:53.091371', 2, '2023-12-20 10:28:53.091371');
INSERT INTO "proxy" VALUES (1655, 'www.proxy-list.download', 'socks4', '86.57.181.122', 51801, 0, NULL, '2023-12-20 10:08:52.999700', 2, '2023-12-20 10:28:52.999700');
INSERT INTO "proxy" VALUES (1656, 'www.proxy-list.download', 'https', '            <p>The owner of this website (www.proxy-list.download) has banned you temporarily from accessing this website.</p', 80, 0, NULL, '2023-12-20 10:08:53.125571', 2, '2023-12-20 10:28:53.125571');
INSERT INTO "proxy" VALUES (1657, 'www.proxy-list.download', 'socks4', '195.211.30.115', 60507, 0, NULL, '2023-12-20 10:08:53.009392', 2, '2023-12-20 10:28:53.009392');
INSERT INTO "proxy" VALUES (1658, 'www.proxy-list.download', 'socks4', '212.1.97.230', 4145, 0, NULL, '2023-12-20 10:08:53.851019', 2, '2023-12-20 10:28:53.851019');
INSERT INTO "proxy" VALUES (1659, 'www.proxy-list.download', 'socks4', '132.255.94.150', 4153, 0, NULL, '2023-12-20 10:08:53.157330', 2, '2023-12-20 10:28:53.157330');
INSERT INTO "proxy" VALUES (1660, 'www.proxy-list.download', 'socks4', '41.180.82.158', 4153, 0, NULL, '2023-12-20 10:08:53.384997', 2, '2023-12-20 10:28:53.384997');
INSERT INTO "proxy" VALUES (1661, 'www.proxy-list.download', 'socks4', '116.58.254.9', 4145, 0, NULL, '2023-12-20 10:08:53.040332', 2, '2023-12-20 10:28:53.040332');
INSERT INTO "proxy" VALUES (1662, 'www.proxy-list.download', 'socks4', '108.29.77.74', 54321, 0, NULL, '2023-12-20 10:08:53.845905', 2, '2023-12-20 10:28:53.845905');
INSERT INTO "proxy" VALUES (1663, 'www.proxy-list.download', 'socks4', '195.133.153.186', 1080, 0, NULL, '2023-12-20 10:08:53.642453', 2, '2023-12-20 10:28:53.642453');
INSERT INTO "proxy" VALUES (1664, 'www.proxy-list.download', 'https', '<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:53.676296', 2, '2023-12-20 10:28:53.676296');
INSERT INTO "proxy" VALUES (1665, 'www.proxy-list.download', 'socks5', '222.129.36.115', 57114, 0, NULL, '2023-12-20 10:08:53.045326', 2, '2023-12-20 10:28:53.045326');
INSERT INTO "proxy" VALUES (1666, 'www.proxy-list.download', 'socks4', '118.174.46.146', 45764, 0, NULL, '2023-12-20 10:08:53.333559', 2, '2023-12-20 10:28:53.333559');
INSERT INTO "proxy" VALUES (1667, 'www.proxy-list.download', 'socks4', '190.196.66.74', 33371, 0, NULL, '2023-12-20 10:08:53.751866', 2, '2023-12-20 10:28:53.751866');
INSERT INTO "proxy" VALUES (1668, 'www.proxy-list.download', 'socks4', '181.13.198.90', 4153, 0, NULL, '2023-12-20 10:08:53.533109', 2, '2023-12-20 10:28:53.533109');
INSERT INTO "proxy" VALUES (1669, 'www.proxy-list.download', 'socks4', '162.216.204.146', 1080, 0, NULL, '2023-12-20 10:08:53.317362', 2, '2023-12-20 10:28:53.317362');
INSERT INTO "proxy" VALUES (1670, 'www.proxy-list.download', 'socks4', '113.53.83.212', 30724, 0, NULL, '2023-12-20 10:08:53.464146', 2, '2023-12-20 10:28:53.464146');
INSERT INTO "proxy" VALUES (1671, 'www.proxy-list.download', 'socks4', '43.252.106.58', 4153, 0, NULL, '2023-12-20 10:08:53.112319', 2, '2023-12-20 10:28:53.112319');
INSERT INTO "proxy" VALUES (1672, 'www.proxy-list.download', 'socks4', '43.255.217.186', 48326, 0, NULL, '2023-12-20 10:08:53.946327', 2, '2023-12-20 10:28:53.946327');
INSERT INTO "proxy" VALUES (1673, 'www.proxy-list.download', 'socks4', '202.136.88.68', 1080, 0, NULL, '2023-12-20 10:08:53.440809', 2, '2023-12-20 10:28:53.440809');
INSERT INTO "proxy" VALUES (1674, 'www.proxy-list.download', 'socks4', '62.133.136.75', 4153, 0, NULL, '2023-12-20 10:08:53.269786', 2, '2023-12-20 10:28:53.270786');
INSERT INTO "proxy" VALUES (1675, 'www.proxy-list.download', 'https', '<head', 80, 0, NULL, '2023-12-20 10:08:55.040385', 2, '2023-12-20 10:28:55.040385');
INSERT INTO "proxy" VALUES (1676, 'www.proxy-list.download', 'socks4', '202.72.209.3', 44550, 0, NULL, '2023-12-20 10:08:53.312382', 2, '2023-12-20 10:28:53.312382');
INSERT INTO "proxy" VALUES (1677, 'www.proxy-list.download', 'socks4', '51.254.182.54', 1000, 0, NULL, '2023-12-20 10:08:53.054276', 2, '2023-12-20 10:28:53.054276');
INSERT INTO "proxy" VALUES (1678, 'www.proxy-list.download', 'socks4', '79.106.35.139', 1080, 0, NULL, '2023-12-20 10:08:53.389994', 2, '2023-12-20 10:28:53.389994');
INSERT INTO "proxy" VALUES (1679, 'www.proxy-list.download', 'socks4', '190.124.164.78', 1080, 0, NULL, '2023-12-20 10:08:53.077512', 2, '2023-12-20 10:28:53.077512');
INSERT INTO "proxy" VALUES (1680, 'www.proxy-list.download', 'socks5', '27.153.141.90', 4216, 0, NULL, '2023-12-20 10:08:53.036325', 2, '2023-12-20 10:28:53.036325');
INSERT INTO "proxy" VALUES (1681, 'www.proxy-list.download', 'socks4', '85.21.200.26', 4153, 0, NULL, '2023-12-20 10:08:53.450125', 2, '2023-12-20 10:28:53.450125');
INSERT INTO "proxy" VALUES (1682, 'www.proxy-list.download', 'https', '', 80, 0, NULL, '2023-12-20 10:08:53.307333', 2, '2023-12-20 10:28:53.307333');
INSERT INTO "proxy" VALUES (1683, 'www.proxy-list.download', 'socks4', '86.105.57.12', 4153, 0, NULL, '2023-12-20 10:08:53.718987', 2, '2023-12-20 10:28:53.718987');
INSERT INTO "proxy" VALUES (1684, 'www.proxy-list.download', 'socks4', '184.105.133.1', 48324, 0, NULL, '2023-12-20 10:08:53.063998', 2, '2023-12-20 10:28:53.063998');
INSERT INTO "proxy" VALUES (1685, 'www.proxy-list.download', 'socks4', '90.168.34.174', 4145, 0, NULL, '2023-12-20 10:08:53.805850', 2, '2023-12-20 10:28:53.805850');
INSERT INTO "proxy" VALUES (1686, 'www.proxy-list.download', 'socks5', '192.252.215.5', 16137, 0, NULL, '2023-12-20 10:08:52.990708', 2, '2023-12-20 10:28:52.990708');
INSERT INTO "proxy" VALUES (1687, 'www.proxy-list.download', 'socks4', '46.63.81.195', 4145, 0, NULL, '2023-12-20 10:08:53.026389', 2, '2023-12-20 10:28:53.026389');
INSERT INTO "proxy" VALUES (1688, 'www.proxy-list.download', 'socks4', '27.123.213.172', 4145, 0, NULL, '2023-12-20 10:08:53.099370', 2, '2023-12-20 10:28:53.099370');
INSERT INTO "proxy" VALUES (1689, 'www.proxy-list.download', 'socks4', '1.4.157.35', 36202, 0, NULL, '2023-12-20 10:08:53.861020', 2, '2023-12-20 10:28:53.861020');
INSERT INTO "proxy" VALUES (1690, 'www.proxy-list.download', 'socks4', '185.34.22.225', 46169, 0, NULL, '2023-12-20 10:08:53.206105', 2, '2023-12-20 10:28:53.206105');
INSERT INTO "proxy" VALUES (1691, 'www.proxy-list.download', 'socks4', '222.184.254.170', 40044, 0, NULL, '2023-12-20 10:08:53.215027', 2, '2023-12-20 10:28:53.215027');
INSERT INTO "proxy" VALUES (1692, 'www.proxy-list.download', 'socks4', '178.134.153.205', 14888, 0, NULL, '2023-12-20 10:08:53.049338', 2, '2023-12-20 10:28:53.049338');
INSERT INTO "proxy" VALUES (1693, 'www.proxy-list.download', 'socks4', '45.117.228.153', 4145, 0, NULL, '2023-12-20 10:08:53.297332', 2, '2023-12-20 10:28:53.297332');
INSERT INTO "proxy" VALUES (1694, 'www.proxy-list.download', 'socks4', '89.22.249.241', 4145, 0, NULL, '2023-12-20 10:08:53.884852', 2, '2023-12-20 10:28:53.884852');
INSERT INTO "proxy" VALUES (1695, 'www.proxy-list.download', 'socks4', '95.165.163.188', 36496, 0, NULL, '2023-12-20 10:08:52.976348', 2, '2023-12-20 10:28:52.976348');
INSERT INTO "proxy" VALUES (1696, 'www.proxy-list.download', 'socks4', '103.134.18.209', 1080, 0, NULL, '2023-12-20 10:08:53.920379', 2, '2023-12-20 10:28:53.920379');
INSERT INTO "proxy" VALUES (1697, 'www.proxy-list.download', 'socks4', '109.104.212.25', 4153, 0, NULL, '2023-12-20 10:08:53.728843', 2, '2023-12-20 10:28:53.728843');
INSERT INTO "proxy" VALUES (1698, 'www.proxy-list.download', 'socks4', '185.241.102.1', 4145, 0, NULL, '2023-12-20 10:08:53.925382', 2, '2023-12-20 10:28:53.925382');
INSERT INTO "proxy" VALUES (1699, 'www.proxy-list.download', 'socks4', '222.129.34.219', 57114, 0, NULL, '2023-12-20 10:08:53.479077', 2, '2023-12-20 10:28:53.479077');
INSERT INTO "proxy" VALUES (1700, 'www.proxy-list.download', 'socks4', '177.11.75.18', 51327, 0, NULL, '2023-12-20 10:08:53.573517', 2, '2023-12-20 10:28:53.573517');
INSERT INTO "proxy" VALUES (1701, 'www.proxy-list.download', 'socks4', '131.108.118.103', 4145, 0, NULL, '2023-12-20 10:08:53.445809', 2, '2023-12-20 10:28:53.445809');
INSERT INTO "proxy" VALUES (1702, 'www.proxy-list.download', 'socks4', '88.12.19.206', 4145, 0, NULL, '2023-12-20 10:08:53.783826', 2, '2023-12-20 10:28:53.783826');
INSERT INTO "proxy" VALUES (1703, 'www.proxy-list.download', 'socks4', '213.222.34.200', 4145, 0, NULL, '2023-12-20 10:08:53.557436', 2, '2023-12-20 10:28:53.557436');
INSERT INTO "proxy" VALUES (1704, 'www.proxy-list.download', 'socks4', '186.211.8.1', 35852, 0, NULL, '2023-12-20 10:08:53.626078', 2, '2023-12-20 10:28:53.626078');
INSERT INTO "proxy" VALUES (1705, 'www.proxy-list.download', 'socks4', '202.6.224.51', 1080, 0, NULL, '2023-12-20 10:08:53.631093', 2, '2023-12-20 10:28:53.631093');
INSERT INTO "proxy" VALUES (1706, 'www.proxy-list.download', 'socks4', '200.225.140.130', 36564, 0, NULL, '2023-12-20 10:08:53.228535', 2, '2023-12-20 10:28:53.228535');
INSERT INTO "proxy" VALUES (1707, 'www.proxy-list.download', 'socks4', '5.102.58.41', 5678, 0, NULL, '2023-12-20 10:08:53.746882', 2, '2023-12-20 10:28:53.746882');
INSERT INTO "proxy" VALUES (1708, 'www.proxy-list.download', 'socks4', '114.6.74.102', 1080, 0, NULL, '2023-12-20 10:08:53.416996', 2, '2023-12-20 10:28:53.416996');
INSERT INTO "proxy" VALUES (1709, 'www.proxy-list.download', 'socks4', '103.52.211.206', 1080, 0, NULL, '2023-12-20 10:08:53.130559', 2, '2023-12-20 10:28:53.130559');
INSERT INTO "proxy" VALUES (1710, 'www.proxy-list.download', 'socks4', '148.77.34.200', 54321, 0, NULL, '2023-12-20 10:08:53.147793', 2, '2023-12-20 10:28:53.147793');
INSERT INTO "proxy" VALUES (1711, 'www.proxy-list.download', 'socks4', '103.47.93.199', 1080, 0, NULL, '2023-12-20 10:08:53.287329', 2, '2023-12-20 10:28:53.287329');
INSERT INTO "proxy" VALUES (1712, 'www.proxy-list.download', 'socks4', '150.107.205.20', 54714, 0, NULL, '2023-12-20 10:08:53.292330', 2, '2023-12-20 10:28:53.292330');
INSERT INTO "proxy" VALUES (1713, 'www.proxy-list.download', 'socks4', '106.104.151.142', 53046, 0, NULL, '2023-12-20 10:08:53.251038', 2, '2023-12-20 10:28:53.251038');
INSERT INTO "proxy" VALUES (1714, 'www.proxy-list.download', 'socks4', '190.109.168.241', 42732, 0, NULL, '2023-12-20 10:08:53.171111', 2, '2023-12-20 10:28:53.171233');
INSERT INTO "proxy" VALUES (1715, 'www.proxy-list.download', 'socks4', '117.54.200.134', 443, 0, NULL, '2023-12-20 10:08:53.755866', 2, '2023-12-20 10:28:53.755866');
INSERT INTO "proxy" VALUES (1716, 'www.proxy-list.download', 'socks4', '184.181.217.210', 4145, 0, NULL, '2023-12-20 10:08:53.568517', 2, '2023-12-20 10:28:53.568517');
INSERT INTO "proxy" VALUES (1717, 'www.proxy-list.download', 'socks4', '36.67.27.189', 49524, 0, NULL, '2023-12-20 10:08:53.493078', 2, '2023-12-20 10:28:53.493078');
INSERT INTO "proxy" VALUES (1718, 'www.proxy-list.download', 'socks4', '115.231.175.80', 3000, 0, NULL, '2023-12-20 10:08:53.067829', 2, '2023-12-20 10:28:53.067829');
INSERT INTO "proxy" VALUES (1719, 'www.proxy-list.download', 'socks4', '162.247.18.162', 4153, 0, NULL, '2023-12-20 10:08:53.547790', 2, '2023-12-20 10:28:53.547790');
INSERT INTO "proxy" VALUES (1720, 'www.proxy-list.download', 'socks4', '190.120.254.17', 4145, 0, NULL, '2023-12-20 10:08:53.246350', 2, '2023-12-20 10:28:53.246350');
INSERT INTO "proxy" VALUES (1721, 'www.proxy-list.download', 'https', '         ', 80, 0, NULL, '2023-12-20 10:08:53.328396', 2, '2023-12-20 10:28:53.328396');
INSERT INTO "proxy" VALUES (1722, 'www.proxy-list.download', 'socks4', '103.35.108.145', 4145, 0, NULL, '2023-12-20 10:08:53.238340', 2, '2023-12-20 10:28:53.238340');
INSERT INTO "proxy" VALUES (1723, 'www.proxy-list.download', 'socks4', '111.90.187.94', 14888, 0, NULL, '2023-12-20 10:08:53.951330', 2, '2023-12-20 10:28:53.951330');
INSERT INTO "proxy" VALUES (1724, 'www.proxy-list.download', 'socks4', '202.144.201.197', 43870, 0, NULL, '2023-12-20 10:08:53.769852', 2, '2023-12-20 10:28:53.769852');
INSERT INTO "proxy" VALUES (1725, 'www.proxy-list.download', 'socks4', '196.25.237.218', 58902, 0, NULL, '2023-12-20 10:08:53.483067', 2, '2023-12-20 10:28:53.483067');
INSERT INTO "proxy" VALUES (1726, 'www.proxy-list.download', 'socks4', '92.51.73.14', 4153, 0, NULL, '2023-12-20 10:08:53.778838', 2, '2023-12-20 10:28:53.778838');
INSERT INTO "proxy" VALUES (1727, 'www.proxy-list.download', 'socks5', '121.206.205.75', 4216, 0, NULL, '2023-12-20 10:08:53.474112', 2, '2023-12-20 10:28:53.474112');
INSERT INTO "proxy" VALUES (1728, 'www.proxy-list.download', 'socks4', '201.219.217.70', 31337, 0, NULL, '2023-12-20 10:08:53.876139', 2, '2023-12-20 10:28:53.876139');
INSERT INTO "proxy" VALUES (1729, 'www.proxy-list.download', 'socks4', '213.0.92.122', 4153, 0, NULL, '2023-12-20 10:08:53.614043', 2, '2023-12-20 10:28:53.614043');
INSERT INTO "proxy" VALUES (1730, 'www.proxy-list.download', 'socks4', '111.92.240.134', 45441, 0, NULL, '2023-12-20 10:08:53.665263', 2, '2023-12-20 10:28:53.665263');
INSERT INTO "proxy" VALUES (1731, 'www.proxy-list.download', 'socks4', '84.22.138.150', 4145, 0, NULL, '2023-12-20 10:08:53.710310', 2, '2023-12-20 10:28:53.710310');
INSERT INTO "proxy" VALUES (1732, 'www.proxy-list.download', 'socks4', '176.108.104.84', 38954, 0, NULL, '2023-12-20 10:08:53.260420', 2, '2023-12-20 10:28:53.260420');
INSERT INTO "proxy" VALUES (1733, 'www.proxy-list.download', 'http', '<meta name="robots" content="noindex, nofollow" /', 80, 0, NULL, '2023-12-20 10:08:53.175105', 2, '2023-12-20 10:28:53.175105');
INSERT INTO "proxy" VALUES (1734, 'www.proxy-list.download', 'socks4', '190.217.1.9', 55170, 0, NULL, '2023-12-20 10:08:53.211107', 2, '2023-12-20 10:28:53.211107');
INSERT INTO "proxy" VALUES (1735, 'www.proxy-list.download', 'socks5', '188.165.233.121', 9151, 0, NULL, '2023-12-20 10:08:53.108378', 2, '2023-12-20 10:28:53.108378');
INSERT INTO "proxy" VALUES (1736, 'www.proxy-list.download', 'socks5', '72.195.34.42', 4145, 0, NULL, '2023-12-20 10:08:53.523119', 2, '2023-12-20 10:28:53.523119');
INSERT INTO "proxy" VALUES (1737, 'www.proxy-list.download', 'socks4', '36.66.98.233', 52851, 0, NULL, '2023-12-20 10:08:53.590057', 2, '2023-12-20 10:28:53.590057');
INSERT INTO "proxy" VALUES (1738, 'www.proxy-list.download', 'socks4', '119.46.2.245', 4145, 0, NULL, '2023-12-20 10:08:52.986389', 2, '2023-12-20 10:28:52.986389');
INSERT INTO "proxy" VALUES (1739, 'www.proxy-list.download', 'http', '<!DOCTYPE html', 80, 0, NULL, '2023-12-20 10:08:53.702301', 2, '2023-12-20 10:28:53.702301');
INSERT INTO "proxy" VALUES (1740, 'www.proxy-list.download', 'socks4', '178.48.68.61', 4145, 0, NULL, '2023-12-20 10:08:53.760425', 2, '2023-12-20 10:28:53.760425');
INSERT INTO "proxy" VALUES (1741, 'www.proxy-list.download', 'socks4', '109.105.205.230', 4145, 0, NULL, '2023-12-20 10:08:53.348600', 2, '2023-12-20 10:28:53.348600');
INSERT INTO "proxy" VALUES (1742, 'www.proxy-list.download', 'socks4', '195.9.89.66', 3629, 0, NULL, '2023-12-20 10:08:53.737871', 2, '2023-12-20 10:28:53.737871');
INSERT INTO "proxy" VALUES (1743, 'www.proxy-list.download', 'socks4', '200.140.44.245', 4145, 0, NULL, '2023-12-20 10:08:53.542788', 2, '2023-12-20 10:28:53.542788');
INSERT INTO "proxy" VALUES (1744, 'www.proxy-list.download', 'socks4', '94.181.33.149', 40840, 0, NULL, '2023-12-20 10:08:53.742855', 2, '2023-12-20 10:28:53.742855');
INSERT INTO "proxy" VALUES (1745, 'www.proxy-list.download', 'socks4', '102.177.161.1', 4145, 0, NULL, '2023-12-20 10:08:53.706297', 2, '2023-12-20 10:28:53.706297');
INSERT INTO "proxy" VALUES (1746, 'www.proxy-list.download', 'socks4', '134.249.113.100', 1080, 0, NULL, '2023-12-20 10:08:53.513064', 2, '2023-12-20 10:28:53.513064');
INSERT INTO "proxy" VALUES (1747, 'www.proxy-list.download', 'socks4', '154.120.133.190', 30303, 0, NULL, '2023-12-20 10:08:53.602044', 2, '2023-12-20 10:28:53.602044');
INSERT INTO "proxy" VALUES (1748, 'www.proxy-list.download', 'socks4', '121.205.216.231', 1080, 0, NULL, '2023-12-20 10:08:53.358467', 2, '2023-12-20 10:28:53.358467');
INSERT INTO "proxy" VALUES (1749, 'www.proxy-list.download', 'socks4', '59.153.121.182', 1080, 0, NULL, '2023-12-20 10:08:52.995699', 2, '2023-12-20 10:28:52.995699');
INSERT INTO "proxy" VALUES (1750, 'www.proxy-list.download', 'socks4', '213.6.204.153', 42820, 0, NULL, '2023-12-20 10:08:53.059279', 2, '2023-12-20 10:28:53.059279');
INSERT INTO "proxy" VALUES (1751, 'www.proxy-list.download', 'socks4', '149.56.1.48', 8181, 0, NULL, '2023-12-20 10:08:53.095380', 2, '2023-12-20 10:28:53.095380');
INSERT INTO "proxy" VALUES (1752, 'www.proxy-list.download', 'socks4', '83.69.125.126', 4145, 0, NULL, '2023-12-20 10:08:53.620062', 2, '2023-12-20 10:28:53.620062');
INSERT INTO "proxy" VALUES (1753, 'www.proxy-list.download', 'socks4', '69.163.161.209', 38713, 0, NULL, '2023-12-20 10:08:53.152341', 2, '2023-12-20 10:28:53.152341');
INSERT INTO "proxy" VALUES (1754, 'www.proxy-list.download', 'socks4', '118.172.181.147', 51411, 0, NULL, '2023-12-20 10:08:53.459156', 2, '2023-12-20 10:28:53.459156');
INSERT INTO "proxy" VALUES (1755, 'www.proxy-list.download', 'http', '        <button class="border border-solid bg-white cf-button cursor-pointer ml-4 px-4 py-2 rounded" id="feedback-button-yes" type="button">Yes</button', 80, 0, NULL, '2023-12-20 10:08:53.117560', 2, '2023-12-20 10:28:53.117560');
INSERT INTO "proxy" VALUES (1756, 'www.proxy-list.download', 'socks4', '89.237.33.60', 51549, 0, NULL, '2023-12-20 10:08:53.138755', 2, '2023-12-20 10:28:53.138755');
INSERT INTO "proxy" VALUES (1757, 'www.proxy-list.download', 'socks4', '103.70.206.193', 59311, 0, NULL, '2023-12-20 10:08:53.856021', 2, '2023-12-20 10:28:53.856021');
INSERT INTO "proxy" VALUES (1758, 'www.proxy-list.download', 'socks4', '213.56.166.35', 1080, 0, NULL, '2023-12-20 10:08:53.134755', 2, '2023-12-20 10:28:53.134755');
INSERT INTO "proxy" VALUES (1759, 'www.proxy-list.download', 'socks4', '103.4.94.178', 41350, 0, NULL, '2023-12-20 10:08:53.121571', 2, '2023-12-20 10:28:53.121571');
INSERT INTO "proxy" VALUES (1760, 'www.proxy-list.download', 'socks4', '93.61.50.221', 4153, 0, NULL, '2023-12-20 10:08:53.022391', 2, '2023-12-20 10:28:53.022391');
INSERT INTO "proxy" VALUES (1761, 'www.proxy-list.download', 'socks4', '202.51.178.126', 59341, 0, NULL, '2023-12-20 10:08:53.338574', 2, '2023-12-20 10:28:53.338574');
INSERT INTO "proxy" VALUES (1762, 'www.proxy-list.download', 'socks4', '45.7.205.103', 31083, 0, NULL, '2023-12-20 10:08:53.302331', 2, '2023-12-20 10:28:53.302331');
INSERT INTO "proxy" VALUES (1763, 'www.proxy-list.download', 'socks4', '177.85.200.45', 35933, 0, NULL, '2023-12-20 10:08:53.408014', 2, '2023-12-20 10:28:53.408014');
INSERT INTO "proxy" VALUES (1764, 'www.proxy-list.download', 'https', '    <div class="cf-alert cf-alert-error cf-cookie-error hidden" id="cookie-alert" data-translate="enable_cookies">Please enable cookies.</div', 80, 0, NULL, '2023-12-20 10:08:53.469119', 2, '2023-12-20 10:28:53.469119');
INSERT INTO "proxy" VALUES (1765, 'www.proxy-list.download', 'socks4', '185.183.12.25', 4145, 0, NULL, '2023-12-20 10:08:53.403992', 2, '2023-12-20 10:28:53.403992');
INSERT INTO "proxy" VALUES (1766, 'www.proxy-list.download', 'http', '        Was this page helpful', 80, 0, NULL, '2023-12-20 10:08:53.670286', 2, '2023-12-20 10:28:53.670286');
INSERT INTO "proxy" VALUES (1767, 'www.proxy-list.download', 'socks4', '187.60.41.252', 4145, 0, NULL, '2023-12-20 10:08:53.648454', 2, '2023-12-20 10:28:53.648454');
INSERT INTO "proxy" VALUES (1768, 'www.proxy-list.download', 'socks4', '91.206.148.243', 59175, 0, NULL, '2023-12-20 10:08:53.834290', 2, '2023-12-20 10:28:53.834290');
INSERT INTO "proxy" VALUES (1769, 'www.proxy-list.download', 'socks4', '103.251.223.13', 4145, 0, NULL, '2023-12-20 10:08:53.814408', 2, '2023-12-20 10:28:53.814408');
INSERT INTO "proxy" VALUES (1770, 'www.proxy-list.download', 'socks4', '179.108.158.122', 4145, 0, NULL, '2023-12-20 10:08:53.380001', 2, '2023-12-20 10:28:53.380001');
INSERT INTO "proxy" VALUES (1771, 'www.proxy-list.download', 'socks4', '220.175.145.63', 57114, 0, NULL, '2023-12-20 10:08:53.797857', 2, '2023-12-20 10:28:53.797857');
INSERT INTO "proxy" VALUES (1772, 'www.proxy-list.download', 'socks4', '170.238.73.46', 4153, 0, NULL, '2023-12-20 10:08:53.905378', 2, '2023-12-20 10:28:53.905378');
INSERT INTO "proxy" VALUES (1773, 'www.proxy-list.download', 'socks4', '103.240.33.185', 8291, 0, NULL, '2023-12-20 10:08:53.894823', 2, '2023-12-20 10:28:53.894823');
INSERT INTO "proxy" VALUES (1774, 'www.proxy-list.download', 'socks4', '27.123.255.82', 47094, 0, NULL, '2023-12-20 10:08:53.823410', 2, '2023-12-20 10:28:53.823410');
INSERT INTO "proxy" VALUES (1775, 'www.proxy-list.download', 'https', '      <div class="feedback-hidden py-8 text-center" id="error-feedback"', 80, 0, NULL, '2023-12-20 10:08:53.552888', 2, '2023-12-20 10:28:53.552888');
INSERT INTO "proxy" VALUES (1776, 'www.proxy-list.download', 'socks4', '209.13.96.166', 39921, 0, NULL, '2023-12-20 10:08:53.637124', 2, '2023-12-20 10:28:53.637124');
INSERT INTO "proxy" VALUES (1777, 'www.proxy-list.download', 'socks4', '169.255.75.117', 47650, 0, NULL, '2023-12-20 10:08:53.659273', 2, '2023-12-20 10:28:53.659273');
INSERT INTO "proxy" VALUES (1778, 'www.proxy-list.download', 'socks4', '117.252.65.119', 5678, 0, NULL, '2023-12-20 10:08:53.596066', 2, '2023-12-20 10:28:53.596066');
INSERT INTO "proxy" VALUES (1779, 'www.proxy-list.download', 'socks4', '92.247.127.249', 4153, 0, NULL, '2023-12-20 10:08:53.930380', 2, '2023-12-20 10:28:53.930380');
INSERT INTO "proxy" VALUES (1780, 'www.proxy-list.download', 'socks4', '193.109.42.117', 4153, 0, NULL, '2023-12-20 10:08:53.518078', 2, '2023-12-20 10:28:53.518078');
INSERT INTO "proxy" VALUES (1781, 'www.proxy-list.download', 'socks4', '114.242.116.57', 4145, 0, NULL, '2023-12-20 10:08:53.879840', 2, '2023-12-20 10:28:53.879840');
INSERT INTO "proxy" VALUES (1782, 'www.proxy-list.download', 'socks4', '80.123.143.202', 30622, 0, NULL, '2023-12-20 10:08:53.528101', 2, '2023-12-20 10:28:53.528101');
INSERT INTO "proxy" VALUES (1783, 'www.proxy-list.download', 'socks4', '183.87.39.174', 40252, 0, NULL, '2023-12-20 10:08:53.692308', 2, '2023-12-20 10:28:53.692308');
INSERT INTO "proxy" VALUES (1784, 'www.proxy-list.download', 'http', '      <span class="hidden" id="cf-footer-ip">211.83.127.204</span', 80, 0, NULL, '2023-12-20 10:08:53.488077', 2, '2023-12-20 10:28:53.488077');
INSERT INTO "proxy" VALUES (1785, 'www.proxy-list.download', 'socks4', '186.211.2.54', 4145, 0, NULL, '2023-12-20 10:08:53.818398', 2, '2023-12-20 10:28:53.818398');
INSERT INTO "proxy" VALUES (1786, 'www.proxy-list.download', 'socks4', '118.174.232.128', 53505, 0, NULL, '2023-12-20 10:08:53.792857', 2, '2023-12-20 10:28:53.792857');
INSERT INTO "proxy" VALUES (1787, 'www.proxy-list.download', 'socks4', '187.60.41.254', 4145, 0, NULL, '2023-12-20 10:08:53.562518', 2, '2023-12-20 10:28:53.562518');
INSERT INTO "proxy" VALUES (1788, 'www.proxy-list.download', 'socks4', '118.174.234.21', 38471, 0, NULL, '2023-12-20 10:08:53.427028', 2, '2023-12-20 10:28:53.427028');
INSERT INTO "proxy" VALUES (1789, 'www.proxy-list.download', 'socks4', '125.19.99.90', 4145, 0, NULL, '2023-12-20 10:08:53.899392', 2, '2023-12-20 10:28:53.899392');
INSERT INTO "proxy" VALUES (1790, 'www.proxy-list.download', 'socks4', '101.51.121.29', 4153, 0, NULL, '2023-12-20 10:08:53.681309', 2, '2023-12-20 10:28:53.681309');
INSERT INTO "proxy" VALUES (1791, 'www.proxy-list.download', 'socks4', '123.108.252.170', 51403, 0, NULL, '2023-12-20 10:08:53.582045', 2, '2023-12-20 10:28:53.582045');
INSERT INTO "proxy" VALUES (1792, 'www.proxy-list.download', 'socks4', '217.15.195.141', 33955, 0, NULL, '2023-12-20 10:08:53.809846', 2, '2023-12-20 10:28:53.809846');
INSERT INTO "proxy" VALUES (1793, 'www.proxy-list.download', 'socks4', '103.138.212.218', 31016, 0, NULL, '2023-12-20 10:08:53.608043', 2, '2023-12-20 10:28:53.608043');
INSERT INTO "proxy" VALUES (1794, 'www.proxy-list.download', 'socks4', '36.89.188.123', 48183, 0, NULL, '2023-12-20 10:08:53.764953', 2, '2023-12-20 10:28:53.764953');
INSERT INTO "proxy" VALUES (1795, 'www.proxy-list.download', 'socks4', '200.218.242.117', 4153, 0, NULL, '2023-12-20 10:08:53.538109', 2, '2023-12-20 10:28:53.538109');
INSERT INTO "proxy" VALUES (1796, 'www.proxy-list.download', 'socks4', '168.181.121.197', 57010, 0, NULL, '2023-12-20 10:08:53.242343', 2, '2023-12-20 10:28:53.242343');
INSERT INTO "proxy" VALUES (1797, 'www.proxy-list.download', 'socks4', '46.38.0.135', 4153, 0, NULL, '2023-12-20 10:08:54.475026', 2, '2023-12-20 10:28:54.475026');
INSERT INTO "proxy" VALUES (1798, 'www.proxy-list.download', 'http', '      </section', 80, 0, NULL, '2023-12-20 10:08:54.188045', 2, '2023-12-20 10:28:54.188045');
INSERT INTO "proxy" VALUES (1799, 'www.proxy-list.download', 'socks4', '124.109.44.126', 4145, 0, NULL, '2023-12-20 10:08:54.055429', 2, '2023-12-20 10:28:54.055429');
INSERT INTO "proxy" VALUES (1800, 'www.proxy-list.download', 'https', '           <span>1015</span', 80, 0, NULL, '2023-12-20 10:08:54.184032', 2, '2023-12-20 10:28:54.184032');
INSERT INTO "proxy" VALUES (1801, 'www.proxy-list.download', 'socks4', '194.213.43.166', 59316, 0, NULL, '2023-12-20 10:08:54.267224', 2, '2023-12-20 10:28:54.267224');
INSERT INTO "proxy" VALUES (1802, 'www.proxy-list.download', 'socks4', '196.6.234.140', 4153, 0, NULL, '2023-12-20 10:08:54.437150', 2, '2023-12-20 10:28:54.437150');
INSERT INTO "proxy" VALUES (1803, 'www.proxy-list.download', 'socks4', '202.168.146.121', 1080, 0, NULL, '2023-12-20 10:08:54.402129', 2, '2023-12-20 10:28:54.402129');
INSERT INTO "proxy" VALUES (1804, 'www.proxy-list.download', 'socks4', '105.29.95.34', 4153, 0, NULL, '2023-12-20 10:08:54.286291', 2, '2023-12-20 10:28:54.286291');
INSERT INTO "proxy" VALUES (1805, 'www.proxy-list.download', 'socks4', '188.175.191.162', 4145, 0, NULL, '2023-12-20 10:08:54.096480', 2, '2023-12-20 10:28:54.096480');
INSERT INTO "proxy" VALUES (1806, 'www.proxy-list.download', 'socks4', '190.13.84.221', 4145, 0, NULL, '2023-12-20 10:08:54.124011', 2, '2023-12-20 10:28:54.124011');
INSERT INTO "proxy" VALUES (1807, 'www.proxy-list.download', 'socks4', '178.150.237.227', 4145, 0, NULL, '2023-12-20 10:08:54.101478', 2, '2023-12-20 10:28:54.101478');
INSERT INTO "proxy" VALUES (1808, 'www.proxy-list.download', 'socks4', '118.172.47.97', 51327, 0, NULL, '2023-12-20 10:08:54.255224', 2, '2023-12-20 10:28:54.255224');
INSERT INTO "proxy" VALUES (1809, 'www.proxy-list.download', 'socks4', '89.251.147.97', 30048, 0, NULL, '2023-12-20 10:08:53.970225', 2, '2023-12-20 10:28:53.970225');
INSERT INTO "proxy" VALUES (1810, 'www.proxy-list.download', 'socks4', '168.227.15.229', 50813, 0, NULL, '2023-12-20 10:08:54.148609', 2, '2023-12-20 10:28:54.148609');
INSERT INTO "proxy" VALUES (1811, 'www.proxy-list.download', 'socks4', '192.169.201.24', 60541, 0, NULL, '2023-12-20 10:08:54.494428', 2, '2023-12-20 10:28:54.494428');
INSERT INTO "proxy" VALUES (1812, 'www.proxy-list.download', 'socks4', '187.11.232.71', 4153, 0, NULL, '2023-12-20 10:08:54.002634', 2, '2023-12-20 10:28:54.002634');
INSERT INTO "proxy" VALUES (1813, 'www.proxy-list.download', 'socks4', '103.232.33.147', 1080, 0, NULL, '2023-12-20 10:08:54.178026', 2, '2023-12-20 10:28:54.178026');
INSERT INTO "proxy" VALUES (1814, 'www.proxy-list.download', 'socks4', '80.79.66.82', 3629, 0, NULL, '2023-12-20 10:08:54.198042', 2, '2023-12-20 10:28:54.198042');
INSERT INTO "proxy" VALUES (1815, 'www.proxy-list.download', 'socks4', '62.201.220.50', 60212, 0, NULL, '2023-12-20 10:08:54.325278', 2, '2023-12-20 10:28:54.325278');
INSERT INTO "proxy" VALUES (1816, 'www.proxy-list.download', 'socks4', '195.69.218.198', 60687, 0, NULL, '2023-12-20 10:08:53.997633', 2, '2023-12-20 10:28:53.997633');
INSERT INTO "proxy" VALUES (1817, 'www.proxy-list.download', 'socks4', '185.113.6.254', 4145, 0, NULL, '2023-12-20 10:08:54.250236', 2, '2023-12-20 10:28:54.250236');
INSERT INTO "proxy" VALUES (1818, 'www.proxy-list.download', 'socks4', '122.200.150.249', 4153, 0, NULL, '2023-12-20 10:08:54.034637', 2, '2023-12-20 10:28:54.034637');
INSERT INTO "proxy" VALUES (1819, 'www.proxy-list.download', 'socks4', '103.82.11.237', 4153, 0, NULL, '2023-12-20 10:08:54.398129', 2, '2023-12-20 10:28:54.398129');
INSERT INTO "proxy" VALUES (1820, 'www.proxy-list.download', 'socks4', '178.128.58.12', 9050, 0, NULL, '2023-12-20 10:08:54.220086', 2, '2023-12-20 10:28:54.220086');
INSERT INTO "proxy" VALUES (1821, 'www.proxy-list.download', 'socks4', '125.26.99.228', 44052, 0, NULL, '2023-12-20 10:08:53.991667', 2, '2023-12-20 10:28:53.991667');
INSERT INTO "proxy" VALUES (1822, 'www.proxy-list.download', 'socks4', '92.45.51.221', 1080, 0, NULL, '2023-12-20 10:08:54.153626', 2, '2023-12-20 10:28:54.153626');
INSERT INTO "proxy" VALUES (1823, 'www.proxy-list.download', 'http', '</div><!-- /.error-footer --', 80, 0, NULL, '2023-12-20 10:08:54.112835', 2, '2023-12-20 10:28:54.112835');
INSERT INTO "proxy" VALUES (1824, 'www.proxy-list.download', 'socks4', '220.247.166.135', 34432, 0, NULL, '2023-12-20 10:08:54.301278', 2, '2023-12-20 10:28:54.301278');
INSERT INTO "proxy" VALUES (1825, 'www.proxy-list.download', 'socks4', '69.163.163.24', 37628, 0, NULL, '2023-12-20 10:08:54.027637', 2, '2023-12-20 10:28:54.027637');
INSERT INTO "proxy" VALUES (1826, 'www.proxy-list.download', 'socks4', '185.155.34.81', 4153, 0, NULL, '2023-12-20 10:08:54.091480', 2, '2023-12-20 10:28:54.091480');
INSERT INTO "proxy" VALUES (1827, 'www.proxy-list.download', 'socks4', '85.125.194.18', 1080, 0, NULL, '2023-12-20 10:08:53.957316', 2, '2023-12-20 10:28:53.957316');
INSERT INTO "proxy" VALUES (1828, 'www.proxy-list.download', 'socks4', '62.244.140.12', 33070, 0, NULL, '2023-12-20 10:08:53.910378', 2, '2023-12-20 10:28:53.910378');
INSERT INTO "proxy" VALUES (1829, 'www.proxy-list.download', 'socks4', '176.236.163.36', 59311, 0, NULL, '2023-12-20 10:08:53.865738', 2, '2023-12-20 10:28:53.865738');
INSERT INTO "proxy" VALUES (1830, 'www.proxy-list.download', 'socks4', '103.233.154.19', 4145, 0, NULL, '2023-12-20 10:08:54.237314', 2, '2023-12-20 10:28:54.237314');
INSERT INTO "proxy" VALUES (1831, 'www.proxy-list.download', 'socks4', '200.215.171.238', 5678, 0, NULL, '2023-12-20 10:08:54.291275', 2, '2023-12-20 10:28:54.291275');
INSERT INTO "proxy" VALUES (1832, 'www.proxy-list.download', 'socks4', '213.6.66.66', 57391, 0, NULL, '2023-12-20 10:08:54.079476', 2, '2023-12-20 10:28:54.079476');
INSERT INTO "proxy" VALUES (1833, 'www.proxy-list.download', 'socks5', '114.96.218.231', 3000, 0, NULL, '2023-12-20 10:08:54.276248', 2, '2023-12-20 10:28:54.276248');
INSERT INTO "proxy" VALUES (1834, 'www.proxy-list.download', 'socks4', '103.250.148.82', 41889, 0, NULL, '2023-12-20 10:08:54.246200', 2, '2023-12-20 10:28:54.246200');
INSERT INTO "proxy" VALUES (1835, 'www.proxy-list.download', 'socks4', '202.57.55.242', 38268, 0, NULL, '2023-12-20 10:08:54.044875', 2, '2023-12-20 10:28:54.044875');
INSERT INTO "proxy" VALUES (1836, 'www.proxy-list.download', 'socks4', '103.220.206.122', 1080, 0, NULL, '2023-12-20 10:08:54.085480', 2, '2023-12-20 10:28:54.085480');
INSERT INTO "proxy" VALUES (1837, 'www.proxy-list.download', 'socks4', '103.69.20.43', 4145, 0, NULL, '2023-12-20 10:08:53.829410', 2, '2023-12-20 10:28:53.829410');
INSERT INTO "proxy" VALUES (1838, 'www.proxy-list.download', 'socks4', '171.100.8.82', 49181, 0, NULL, '2023-12-20 10:08:54.241193', 2, '2023-12-20 10:28:54.241193');
INSERT INTO "proxy" VALUES (1839, 'www.proxy-list.download', 'socks4', '174.64.199.82', 4145, 0, NULL, '2023-12-20 10:08:54.165463', 2, '2023-12-20 10:28:54.165463');
INSERT INTO "proxy" VALUES (1840, 'www.proxy-list.download', 'socks4', '78.189.64.42', 4145, 0, NULL, '2023-12-20 10:08:54.320275', 2, '2023-12-20 10:28:54.320275');
INSERT INTO "proxy" VALUES (1841, 'www.proxy-list.download', 'socks4', '154.61.227.8', 64312, 0, NULL, '2023-12-20 10:08:54.215685', 2, '2023-12-20 10:28:54.215685');
INSERT INTO "proxy" VALUES (1842, 'www.proxy-list.download', 'socks4', '188.19.64.122', 4145, 0, NULL, '2023-12-20 10:08:54.135032', 2, '2023-12-20 10:28:54.135032');
INSERT INTO "proxy" VALUES (1843, 'www.proxy-list.download', 'socks4', '167.249.212.17', 56616, 0, NULL, '2023-12-20 10:08:54.272285', 2, '2023-12-20 10:28:54.272285');
INSERT INTO "proxy" VALUES (1844, 'www.proxy-list.download', 'socks4', '183.88.212.247', 1080, 0, NULL, '2023-12-20 10:08:54.118831', 2, '2023-12-20 10:28:54.118831');
INSERT INTO "proxy" VALUES (1845, 'www.proxy-list.download', 'socks4', '190.109.72.41', 33633, 0, NULL, '2023-12-20 10:08:54.428130', 2, '2023-12-20 10:28:54.428130');
INSERT INTO "proxy" VALUES (1846, 'www.proxy-list.download', 'socks4', '89.132.116.240', 4145, 0, NULL, '2023-12-20 10:08:54.366518', 2, '2023-12-20 10:28:54.366518');
INSERT INTO "proxy" VALUES (1847, 'www.proxy-list.download', 'socks4', '168.227.106.100', 48609, 0, NULL, '2023-12-20 10:08:54.353495', 2, '2023-12-20 10:28:54.353495');
INSERT INTO "proxy" VALUES (1848, 'www.proxy-list.download', 'socks4', '81.163.36.210', 42967, 0, NULL, '2023-12-20 10:08:54.407119', 2, '2023-12-20 10:28:54.407119');
INSERT INTO "proxy" VALUES (1849, 'www.proxy-list.download', 'socks4', '88.255.132.179', 1082, 0, NULL, '2023-12-20 10:08:54.296279', 2, '2023-12-20 10:28:54.296279');
INSERT INTO "proxy" VALUES (1850, 'www.proxy-list.download', 'socks4', '195.13.188.150', 4153, 0, NULL, '2023-12-20 10:08:54.370132', 2, '2023-12-20 10:28:54.370132');
INSERT INTO "proxy" VALUES (1851, 'www.proxy-list.download', 'socks4', '190.53.46.2', 45580, 0, NULL, '2023-12-20 10:08:54.415130', 2, '2023-12-20 10:28:54.415130');
INSERT INTO "proxy" VALUES (1852, 'www.proxy-list.download', 'socks4', '202.162.219.10', 1080, 0, NULL, '2023-12-20 10:08:54.380129', 2, '2023-12-20 10:28:54.380129');
INSERT INTO "proxy" VALUES (1853, 'www.proxy-list.download', 'socks4', '154.79.252.214', 10801, 0, NULL, '2023-12-20 10:08:54.411272', 2, '2023-12-20 10:28:54.411272');
INSERT INTO "proxy" VALUES (1854, 'www.proxy-list.download', 'socks4', '103.60.181.210', 31248, 0, NULL, '2023-12-20 10:08:54.338797', 2, '2023-12-20 10:28:54.338797');
INSERT INTO "proxy" VALUES (1855, 'www.proxy-list.download', 'http', '           <span data-translate="error">Error</span', 80, 0, NULL, '2023-12-20 10:08:54.211061', 2, '2023-12-20 10:28:54.211061');
INSERT INTO "proxy" VALUES (1856, 'www.proxy-list.download', 'https', '    <div class="feedback-success feedback-hidden" id="error-feedback-success"', 80, 0, NULL, '2023-12-20 10:08:54.329312', 2, '2023-12-20 10:28:54.329312');
INSERT INTO "proxy" VALUES (1857, 'www.proxy-list.download', 'https', '<!DOCTYPE html', 80, 0, NULL, '2023-12-20 10:08:53.976221', 2, '2023-12-20 10:28:53.976221');
INSERT INTO "proxy" VALUES (1858, 'www.proxy-list.download', 'socks4', '202.124.46.97', 4145, 0, NULL, '2023-12-20 10:08:54.420117', 2, '2023-12-20 10:28:54.420117');
INSERT INTO "proxy" VALUES (1859, 'www.proxy-list.download', 'socks4', '102.176.179.26', 4153, 0, NULL, '2023-12-20 10:08:54.315290', 2, '2023-12-20 10:28:54.315290');
INSERT INTO "proxy" VALUES (1860, 'www.proxy-list.download', 'socks4', '203.170.68.97', 4145, 0, NULL, '2023-12-20 10:08:54.193049', 2, '2023-12-20 10:28:54.193049');
INSERT INTO "proxy" VALUES (1861, 'www.proxy-list.download', 'http', '      <header class="mx-auto pt-10 lg', 80, 0, NULL, '2023-12-20 10:08:54.311275', 2, '2023-12-20 10:28:54.311275');
INSERT INTO "proxy" VALUES (1862, 'www.proxy-list.download', 'socks4', '92.249.219.47', 59587, 0, NULL, '2023-12-20 10:08:54.375131', 2, '2023-12-20 10:28:54.375131');
INSERT INTO "proxy" VALUES (1863, 'www.proxy-list.download', 'socks4', '201.82.6.49', 4153, 0, NULL, '2023-12-20 10:08:54.263235', 2, '2023-12-20 10:28:54.263235');
INSERT INTO "proxy" VALUES (1864, 'www.proxy-list.download', 'socks4', '119.2.9.169', 4145, 0, NULL, '2023-12-20 10:08:54.361530', 2, '2023-12-20 10:28:54.361530');
INSERT INTO "proxy" VALUES (1865, 'www.proxy-list.download', 'socks4', '176.236.14.2', 4153, 0, NULL, '2023-12-20 10:08:53.964250', 2, '2023-12-20 10:28:53.964250');
INSERT INTO "proxy" VALUES (1866, 'www.proxy-list.download', 'socks4', '177.72.113.225', 31164, 0, NULL, '2023-12-20 10:08:54.228091', 2, '2023-12-20 10:28:54.228091');
INSERT INTO "proxy" VALUES (1867, 'www.proxy-list.download', 'socks4', '157.25.197.74', 1080, 0, NULL, '2023-12-20 10:08:54.233080', 2, '2023-12-20 10:28:54.233080');
INSERT INTO "proxy" VALUES (1868, 'www.proxy-list.download', 'socks4', '45.234.148.1', 4153, 0, NULL, '2023-12-20 10:08:54.070433', 2, '2023-12-20 10:28:54.070433');
INSERT INTO "proxy" VALUES (1869, 'www.proxy-list.download', 'socks4', '72.195.34.41', 4145, 0, NULL, '2023-12-20 10:08:54.049886', 2, '2023-12-20 10:28:54.049886');
INSERT INTO "proxy" VALUES (1870, 'www.proxy-list.download', 'socks4', '46.253.39.142', 57136, 0, NULL, '2023-12-20 10:08:54.105480', 2, '2023-12-20 10:28:54.105480');
INSERT INTO "proxy" VALUES (1871, 'www.proxy-list.download', 'socks4', '103.225.89.54', 4153, 0, NULL, '2023-12-20 10:08:54.471018', 2, '2023-12-20 10:28:54.471018');
INSERT INTO "proxy" VALUES (1872, 'www.proxy-list.download', 'socks4', '78.90.81.184', 42636, 0, NULL, '2023-12-20 10:08:54.765254', 2, '2023-12-20 10:28:54.765254');
INSERT INTO "proxy" VALUES (1873, 'www.proxy-list.download', 'http', '           ', 80, 0, NULL, '2023-12-20 10:08:54.334320', 2, '2023-12-20 10:28:54.334320');
INSERT INTO "proxy" VALUES (1874, 'www.proxy-list.download', 'socks4', '89.222.132.31', 3629, 0, NULL, '2023-12-20 10:08:54.829954', 2, '2023-12-20 10:28:54.829954');
INSERT INTO "proxy" VALUES (1875, 'www.proxy-list.download', 'socks5', '114.99.200.41', 3000, 0, NULL, '2023-12-20 10:08:54.655140', 2, '2023-12-20 10:28:54.655140');
INSERT INTO "proxy" VALUES (1876, 'www.proxy-list.download', 'socks4', '79.106.165.30', 50194, 0, NULL, '2023-12-20 10:08:54.706305', 2, '2023-12-20 10:28:54.706305');
INSERT INTO "proxy" VALUES (1877, 'www.proxy-list.download', 'socks4', '89.132.207.82', 4145, 0, NULL, '2023-12-20 10:08:54.453171', 2, '2023-12-20 10:28:54.453171');
INSERT INTO "proxy" VALUES (1878, 'www.proxy-list.download', 'socks4', '223.206.34.251', 4153, 0, NULL, '2023-12-20 10:08:54.530534', 2, '2023-12-20 10:28:54.530534');
INSERT INTO "proxy" VALUES (1879, 'www.proxy-list.download', 'socks5', '184.178.172.14', 4145, 0, NULL, '2023-12-20 10:08:54.384130', 2, '2023-12-20 10:28:54.384130');
INSERT INTO "proxy" VALUES (1880, 'www.proxy-list.download', 'socks4', '192.139.192.90', 4153, 0, NULL, '2023-12-20 10:08:54.646131', 2, '2023-12-20 10:28:54.646131');
INSERT INTO "proxy" VALUES (1881, 'www.proxy-list.download', 'https', '<meta http-equiv="X-UA-Compatible" content="IE=Edge" /', 80, 0, NULL, '2023-12-20 10:08:54.623169', 2, '2023-12-20 10:28:54.623169');
INSERT INTO "proxy" VALUES (1882, 'www.proxy-list.download', 'socks4', '187.19.150.221', 80, 0, NULL, '2023-12-20 10:08:54.575321', 2, '2023-12-20 10:28:54.575321');
INSERT INTO "proxy" VALUES (1883, 'www.proxy-list.download', 'socks4', '82.114.94.68', 59311, 0, NULL, '2023-12-20 10:08:54.899340', 2, '2023-12-20 10:28:54.899340');
INSERT INTO "proxy" VALUES (1884, 'www.proxy-list.download', 'socks4', '203.202.253.186', 58309, 0, NULL, '2023-12-20 10:08:54.525978', 2, '2023-12-20 10:28:54.525978');
INSERT INTO "proxy" VALUES (1885, 'www.proxy-list.download', 'socks4', '177.74.143.97', 4145, 0, NULL, '2023-12-20 10:08:54.461883', 2, '2023-12-20 10:28:54.461883');
INSERT INTO "proxy" VALUES (1886, 'www.proxy-list.download', 'socks4', '80.53.255.194', 4153, 0, NULL, '2023-12-20 10:08:54.347825', 2, '2023-12-20 10:28:54.347825');
INSERT INTO "proxy" VALUES (1887, 'www.proxy-list.download', 'socks4', '202.58.108.1', 36819, 0, NULL, '2023-12-20 10:08:54.799145', 2, '2023-12-20 10:28:54.799145');
INSERT INTO "proxy" VALUES (1888, 'www.proxy-list.download', 'socks4', '137.74.64.237', 1080, 0, NULL, '2023-12-20 10:08:54.445322', 2, '2023-12-20 10:28:54.445322');
INSERT INTO "proxy" VALUES (1889, 'www.proxy-list.download', 'http', '         <h1 class="inline-block md', 80, 0, NULL, '2023-12-20 10:08:54.845774', 2, '2023-12-20 10:28:54.845774');
INSERT INTO "proxy" VALUES (1890, 'www.proxy-list.download', 'socks4', '139.159.48.155', 39593, 0, NULL, '2023-12-20 10:08:54.610178', 2, '2023-12-20 10:28:54.610178');
INSERT INTO "proxy" VALUES (1891, 'www.proxy-list.download', 'socks4', '80.71.112.99', 55243, 0, NULL, '2023-12-20 10:08:54.142033', 2, '2023-12-20 10:28:54.142033');
INSERT INTO "proxy" VALUES (1892, 'www.proxy-list.download', 'socks4', '201.59.201.92', 61150, 0, NULL, '2023-12-20 10:08:54.862229', 2, '2023-12-20 10:28:54.862229');
INSERT INTO "proxy" VALUES (1893, 'www.proxy-list.download', 'socks4', '109.200.156.2', 4153, 0, NULL, '2023-12-20 10:08:53.986649', 2, '2023-12-20 10:28:53.986649');
INSERT INTO "proxy" VALUES (1894, 'www.proxy-list.download', 'socks4', '200.52.144.170', 33865, 0, NULL, '2023-12-20 10:08:54.499422', 2, '2023-12-20 10:28:54.499422');
INSERT INTO "proxy" VALUES (1895, 'www.proxy-list.download', 'socks4', '177.21.30.32', 4145, 0, NULL, '2023-12-20 10:08:54.794166', 2, '2023-12-20 10:28:54.794166');
INSERT INTO "proxy" VALUES (1896, 'www.proxy-list.download', 'socks4', '113.160.247.115', 4145, 0, NULL, '2023-12-20 10:08:54.790342', 2, '2023-12-20 10:28:54.790342');
INSERT INTO "proxy" VALUES (1897, 'www.proxy-list.download', 'socks4', '213.96.16.193', 4145, 0, NULL, '2023-12-20 10:08:54.819220', 2, '2023-12-20 10:28:54.819220');
INSERT INTO "proxy" VALUES (1898, 'www.proxy-list.download', 'socks4', '87.255.4.21', 4153, 0, NULL, '2023-12-20 10:08:54.586448', 2, '2023-12-20 10:28:54.586448');
INSERT INTO "proxy" VALUES (1899, 'www.proxy-list.download', 'socks4', '69.70.59.54', 4153, 0, NULL, '2023-12-20 10:08:54.202038', 2, '2023-12-20 10:28:54.202038');
INSERT INTO "proxy" VALUES (1900, 'www.proxy-list.download', 'socks5', '150.129.52.74', 6667, 0, NULL, '2023-12-20 10:08:54.424119', 2, '2023-12-20 10:28:54.424119');
INSERT INTO "proxy" VALUES (1901, 'www.proxy-list.download', 'https', '      <span class="hidden" id="cf-footer-ip">211.83.127.204</span', 80, 0, NULL, '2023-12-20 10:08:54.449176', 2, '2023-12-20 10:28:54.449176');
INSERT INTO "proxy" VALUES (1902, 'www.proxy-list.download', 'socks4', '103.221.254.125', 40781, 0, NULL, '2023-12-20 10:08:54.702291', 2, '2023-12-20 10:28:54.702291');
INSERT INTO "proxy" VALUES (1903, 'www.proxy-list.download', 'socks4', '117.222.62.103', 42981, 0, NULL, '2023-12-20 10:08:54.581371', 2, '2023-12-20 10:28:54.581371');
INSERT INTO "proxy" VALUES (1904, 'www.proxy-list.download', 'socks4', '191.98.81.192', 4153, 0, NULL, '2023-12-20 10:08:54.555729', 2, '2023-12-20 10:28:54.555729');
INSERT INTO "proxy" VALUES (1905, 'www.proxy-list.download', 'socks4', '202.166.205.87', 58637, 0, NULL, '2023-12-20 10:08:54.804172', 2, '2023-12-20 10:28:54.804172');
INSERT INTO "proxy" VALUES (1906, 'www.proxy-list.download', 'socks4', '103.111.55.210', 46154, 0, NULL, '2023-12-20 10:08:54.130034', 2, '2023-12-20 10:28:54.130034');
INSERT INTO "proxy" VALUES (1907, 'www.proxy-list.download', 'socks4', '212.3.109.7', 4145, 0, NULL, '2023-12-20 10:08:54.022637', 2, '2023-12-20 10:28:54.022637');
INSERT INTO "proxy" VALUES (1908, 'www.proxy-list.download', 'socks4', '36.37.139.2', 59296, 0, NULL, '2023-12-20 10:08:54.207059', 2, '2023-12-20 10:28:54.207059');
INSERT INTO "proxy" VALUES (1909, 'www.proxy-list.download', 'socks5', '66.135.227.178', 4145, 0, NULL, '2023-12-20 10:08:54.016634', 2, '2023-12-20 10:28:54.016634');
INSERT INTO "proxy" VALUES (1910, 'www.proxy-list.download', 'socks4', '185.122.44.218', 43153, 0, NULL, '2023-12-20 10:08:54.721301', 2, '2023-12-20 10:28:54.721301');
INSERT INTO "proxy" VALUES (1911, 'www.proxy-list.download', 'socks4', '103.134.202.26', 1080, 0, NULL, '2023-12-20 10:08:54.641122', 2, '2023-12-20 10:28:54.641122');
INSERT INTO "proxy" VALUES (1912, 'www.proxy-list.download', 'socks4', '118.174.46.144', 45764, 0, NULL, '2023-12-20 10:08:54.542199', 2, '2023-12-20 10:28:54.542199');
INSERT INTO "proxy" VALUES (1913, 'www.proxy-list.download', 'socks4', '103.78.38.34', 5430, 0, NULL, '2023-12-20 10:08:54.457886', 2, '2023-12-20 10:28:54.457886');
INSERT INTO "proxy" VALUES (1914, 'www.proxy-list.download', 'http', '<body', 80, 0, NULL, '2023-12-20 10:08:54.950948', 2, '2023-12-20 10:28:54.950948');
INSERT INTO "proxy" VALUES (1915, 'www.proxy-list.download', 'socks4', '5.58.47.25', 3629, 0, NULL, '2023-12-20 10:08:54.357503', 2, '2023-12-20 10:28:54.357503');
INSERT INTO "proxy" VALUES (1916, 'www.proxy-list.download', 'http', '<meta charset="UTF-8" /', 80, 0, NULL, '2023-12-20 10:08:54.159624', 2, '2023-12-20 10:28:54.159624');
INSERT INTO "proxy" VALUES (1917, 'www.proxy-list.download', 'socks4', '192.140.42.83', 59057, 0, NULL, '2023-12-20 10:08:54.917909', 2, '2023-12-20 10:28:54.917909');
INSERT INTO "proxy" VALUES (1918, 'www.proxy-list.download', 'socks4', '202.168.146.126', 1080, 0, NULL, '2023-12-20 10:08:54.393130', 2, '2023-12-20 10:28:54.393130');
INSERT INTO "proxy" VALUES (1919, 'www.proxy-list.download', 'socks4', '176.52.253.14', 4145, 0, NULL, '2023-12-20 10:08:54.074464', 2, '2023-12-20 10:28:54.074464');
INSERT INTO "proxy" VALUES (1920, 'www.proxy-list.download', 'socks4', '181.129.51.147', 47562, 0, NULL, '2023-12-20 10:08:54.534514', 2, '2023-12-20 10:28:54.534514');
INSERT INTO "proxy" VALUES (1921, 'www.proxy-list.download', 'socks4', '117.158.64.100', 1080, 0, NULL, '2023-12-20 10:08:54.306277', 2, '2023-12-20 10:28:54.306277');
INSERT INTO "proxy" VALUES (1922, 'www.proxy-list.download', 'socks4', '103.83.173.234', 4145, 0, NULL, '2023-12-20 10:08:54.761240', 2, '2023-12-20 10:28:54.761240');
INSERT INTO "proxy" VALUES (1923, 'www.proxy-list.download', 'socks4', '36.90.3.150', 4145, 0, NULL, '2023-12-20 10:08:54.343785', 2, '2023-12-20 10:28:54.343785');
INSERT INTO "proxy" VALUES (1924, 'www.proxy-list.download', 'socks4', '176.235.99.12', 5678, 0, NULL, '2023-12-20 10:08:54.065431', 2, '2023-12-20 10:28:54.065431');
INSERT INTO "proxy" VALUES (1925, 'www.proxy-list.download', 'socks4', '116.232.115.203', 4145, 0, NULL, '2023-12-20 10:08:54.756028', 2, '2023-12-20 10:28:54.756028');
INSERT INTO "proxy" VALUES (1926, 'www.proxy-list.download', 'socks4', '45.163.200.2', 4145, 0, NULL, '2023-12-20 10:08:54.751031', 2, '2023-12-20 10:28:54.751031');
INSERT INTO "proxy" VALUES (1927, 'www.proxy-list.download', 'socks4', '82.202.99.217', 4153, 0, NULL, '2023-12-20 10:08:53.981234', 2, '2023-12-20 10:28:53.981234');
INSERT INTO "proxy" VALUES (1928, 'www.proxy-list.download', 'socks4', '132.255.44.48', 4153, 0, NULL, '2023-12-20 10:08:54.432156', 2, '2023-12-20 10:28:54.432156');
INSERT INTO "proxy" VALUES (1929, 'www.proxy-list.download', 'socks4', '31.28.99.25', 55767, 0, NULL, '2023-12-20 10:08:54.281249', 2, '2023-12-20 10:28:54.281249');
INSERT INTO "proxy" VALUES (1930, 'www.proxy-list.download', 'socks4', '5.83.104.138', 4153, 0, NULL, '2023-12-20 10:08:54.172054', 2, '2023-12-20 10:28:54.172054');
INSERT INTO "proxy" VALUES (1931, 'www.proxy-list.download', 'socks4', '103.79.96.165', 4153, 0, NULL, '2023-12-20 10:08:54.224080', 2, '2023-12-20 10:28:54.224080');
INSERT INTO "proxy" VALUES (1932, 'www.proxy-list.download', 'socks4', '103.36.9.7', 4145, 0, NULL, '2023-12-20 10:08:54.857525', 2, '2023-12-20 10:28:54.857525');
INSERT INTO "proxy" VALUES (1933, 'www.proxy-list.download', 'socks4', '103.212.92.201', 35265, 0, NULL, '2023-12-20 10:08:54.538662', 2, '2023-12-20 10:28:54.538662');
INSERT INTO "proxy" VALUES (1934, 'www.proxy-list.download', 'socks4', '210.48.204.134', 54391, 0, NULL, '2023-12-20 10:08:54.259221', 2, '2023-12-20 10:28:54.259221');
INSERT INTO "proxy" VALUES (1935, 'www.proxy-list.download', 'socks4', '103.48.183.113', 4145, 0, NULL, '2023-12-20 10:08:54.389136', 2, '2023-12-20 10:28:54.389136');
INSERT INTO "proxy" VALUES (1936, 'www.proxy-list.download', 'socks4', '200.108.205.182', 4153, 0, NULL, '2023-12-20 10:08:54.011633', 2, '2023-12-20 10:28:54.011633');
INSERT INTO "proxy" VALUES (1937, 'www.proxy-list.download', 'socks4', '46.8.247.3', 38279, 0, NULL, '2023-12-20 10:08:54.060430', 2, '2023-12-20 10:28:54.060430');
INSERT INTO "proxy" VALUES (1938, 'www.proxy-list.download', 'socks4', '89.237.34.190', 51549, 0, NULL, '2023-12-20 10:08:54.650150', 2, '2023-12-20 10:28:54.650150');
INSERT INTO "proxy" VALUES (1939, 'www.proxy-list.download', 'socks4', '180.211.162.114', 44923, 0, NULL, '2023-12-20 10:08:54.877315', 2, '2023-12-20 10:28:54.877315');
INSERT INTO "proxy" VALUES (1940, 'www.proxy-list.download', 'socks4', '188.26.5.254', 4145, 0, NULL, '2023-12-20 10:08:54.490177', 2, '2023-12-20 10:28:54.490177');
INSERT INTO "proxy" VALUES (1941, 'www.proxy-list.download', 'socks4', '45.250.65.188', 5678, 0, NULL, '2023-12-20 10:08:54.006636', 2, '2023-12-20 10:28:54.006636');
INSERT INTO "proxy" VALUES (1942, 'www.proxy-list.download', 'socks4', '177.105.68.70', 4153, 0, NULL, '2023-12-20 10:08:54.039876', 2, '2023-12-20 10:28:54.039876');
INSERT INTO "proxy" VALUES (1943, 'www.proxy-list.download', 'socks4', '92.247.125.169', 4153, 0, NULL, '2023-12-20 10:08:54.520990', 2, '2023-12-20 10:28:54.520990');
INSERT INTO "proxy" VALUES (1944, 'www.proxy-list.download', 'socks4', '116.0.37.130', 61992, 0, NULL, '2023-12-20 10:08:54.893354', 2, '2023-12-20 10:28:54.893354');
INSERT INTO "proxy" VALUES (1945, 'www.proxy-list.download', 'socks4', '190.131.247.30', 4153, 0, NULL, '2023-12-20 10:08:54.664482', 2, '2023-12-20 10:28:54.664482');
INSERT INTO "proxy" VALUES (1946, 'www.proxy-list.download', 'socks4', '187.111.195.0', 60988, 0, NULL, '2023-12-20 10:08:54.511999', 2, '2023-12-20 10:28:54.511999');
INSERT INTO "proxy" VALUES (1947, 'www.proxy-list.download', 'socks4', '188.136.167.33', 4145, 0, NULL, '2023-12-20 10:08:54.615156', 2, '2023-12-20 10:28:54.615156');
INSERT INTO "proxy" VALUES (1948, 'www.proxy-list.download', 'https', '<body', 80, 0, NULL, '2023-12-20 10:08:54.931962', 2, '2023-12-20 10:28:54.931962');
INSERT INTO "proxy" VALUES (1949, 'www.proxy-list.download', 'socks5', '47.115.42.157', 8044, 0, NULL, '2023-12-20 10:08:54.736031', 2, '2023-12-20 10:28:54.736031');
INSERT INTO "proxy" VALUES (1950, 'www.proxy-list.download', 'socks4', '45.4.55.10', 40486, 0, NULL, '2023-12-20 10:08:54.633086', 2, '2023-12-20 10:28:54.633086');
INSERT INTO "proxy" VALUES (1951, 'www.proxy-list.download', 'socks4', '103.110.109.65', 1080, 0, NULL, '2023-12-20 10:08:54.659973', 2, '2023-12-20 10:28:54.659973');
INSERT INTO "proxy" VALUES (1952, 'www.proxy-list.download', 'socks4', '91.181.235.31', 4145, 0, NULL, '2023-12-20 10:08:54.601879', 2, '2023-12-20 10:28:54.601879');
INSERT INTO "proxy" VALUES (1953, 'www.proxy-list.download', 'socks4', '98.172.142.6', 64312, 0, NULL, '2023-12-20 10:08:54.678264', 2, '2023-12-20 10:28:54.678264');
INSERT INTO "proxy" VALUES (1954, 'www.proxy-list.download', 'socks5', '198.8.94.170', 4145, 0, NULL, '2023-12-20 10:08:54.551186', 2, '2023-12-20 10:28:54.551186');
INSERT INTO "proxy" VALUES (1955, 'www.proxy-list.download', 'socks4', '165.22.43.8', 30081, 0, NULL, '2023-12-20 10:08:54.637085', 2, '2023-12-20 10:28:54.637085');
INSERT INTO "proxy" VALUES (1956, 'www.proxy-list.download', 'socks4', '177.223.58.68', 48733, 0, NULL, '2023-12-20 10:08:54.882328', 2, '2023-12-20 10:28:54.882328');
INSERT INTO "proxy" VALUES (1957, 'www.proxy-list.download', 'socks4', '45.6.92.131', 4153, 0, NULL, '2023-12-20 10:08:54.564746', 2, '2023-12-20 10:28:54.564746');
INSERT INTO "proxy" VALUES (1958, 'www.proxy-list.download', 'socks4', '185.37.89.7', 3629, 0, NULL, '2023-12-20 10:08:54.570315', 2, '2023-12-20 10:28:54.570315');
INSERT INTO "proxy" VALUES (1959, 'www.proxy-list.download', 'socks4', '185.20.90.50', 10801, 0, NULL, '2023-12-20 10:08:54.851184', 2, '2023-12-20 10:28:54.851184');
INSERT INTO "proxy" VALUES (1960, 'www.proxy-list.download', 'socks4', '103.135.174.130', 1080, 0, NULL, '2023-12-20 10:08:54.770244', 2, '2023-12-20 10:28:54.770244');
INSERT INTO "proxy" VALUES (1961, 'www.proxy-list.download', 'socks4', '109.72.97.66', 4145, 0, NULL, '2023-12-20 10:08:54.784258', 2, '2023-12-20 10:28:54.784258');
INSERT INTO "proxy" VALUES (1962, 'www.proxy-list.download', 'socks4', '90.146.16.34', 4145, 0, NULL, '2023-12-20 10:08:54.515989', 2, '2023-12-20 10:28:54.515989');
INSERT INTO "proxy" VALUES (1963, 'www.proxy-list.download', 'socks4', '77.46.138.1', 33608, 0, NULL, '2023-12-20 10:08:54.867228', 2, '2023-12-20 10:28:54.867228');
INSERT INTO "proxy" VALUES (1964, 'www.proxy-list.download', 'socks4', '72.139.68.174', 40048, 0, NULL, '2023-12-20 10:08:54.814171', 2, '2023-12-20 10:28:54.814171');
INSERT INTO "proxy" VALUES (1965, 'www.proxy-list.download', 'socks4', '183.87.69.233', 36185, 0, NULL, '2023-12-20 10:08:54.922911', 2, '2023-12-20 10:28:54.922911');
INSERT INTO "proxy" VALUES (1966, 'www.proxy-list.download', 'socks4', '139.255.191.13', 4153, 0, NULL, '2023-12-20 10:08:54.746033', 2, '2023-12-20 10:28:54.746033');
INSERT INTO "proxy" VALUES (1967, 'www.proxy-list.download', 'socks4', '121.13.252.58', 61401, 0, NULL, '2023-12-20 10:08:54.687277', 2, '2023-12-20 10:28:54.687277');
INSERT INTO "proxy" VALUES (1968, 'www.proxy-list.download', 'socks4', '62.99.178.46', 43636, 0, NULL, '2023-12-20 10:08:54.466140', 2, '2023-12-20 10:28:54.466140');
INSERT INTO "proxy" VALUES (1969, 'www.proxy-list.download', 'socks4', '41.33.66.229', 1080, 0, NULL, '2023-12-20 10:08:54.716292', 2, '2023-12-20 10:28:54.716292');
INSERT INTO "proxy" VALUES (1970, 'www.proxy-list.download', 'socks4', '90.181.150.211', 4145, 0, NULL, '2023-12-20 10:08:54.441157', 2, '2023-12-20 10:28:54.441157');
INSERT INTO "proxy" VALUES (1971, 'www.proxy-list.download', 'socks4', '201.204.168.106', 45923, 0, NULL, '2023-12-20 10:08:54.507978', 2, '2023-12-20 10:28:54.507978');
INSERT INTO "proxy" VALUES (1972, 'www.proxy-list.download', 'socks4', '45.230.200.121', 5678, 0, NULL, '2023-12-20 10:08:54.711291', 2, '2023-12-20 10:28:54.711291');
INSERT INTO "proxy" VALUES (1973, 'www.proxy-list.download', 'http', '        <h2 class="text-gray-600 leading-1.3 text-3xl lg', 80, 0, NULL, '2023-12-20 10:08:54.485618', 2, '2023-12-20 10:28:54.485618');
INSERT INTO "proxy" VALUES (1974, 'www.proxy-list.download', 'socks4', '103.199.159.217', 41610, 0, NULL, '2023-12-20 10:08:54.692306', 2, '2023-12-20 10:28:54.692306');
INSERT INTO "proxy" VALUES (1975, 'www.proxy-list.download', 'socks4', '193.193.240.36', 48785, 0, NULL, '2023-12-20 10:08:54.775240', 2, '2023-12-20 10:28:54.775240');
INSERT INTO "proxy" VALUES (1976, 'www.proxy-list.download', 'socks4', '59.152.111.241', 41542, 0, NULL, '2023-12-20 10:08:54.742017', 2, '2023-12-20 10:28:54.742017');
INSERT INTO "proxy" VALUES (1977, 'www.proxy-list.download', 'socks4', '83.168.84.142', 4153, 0, NULL, '2023-12-20 10:08:54.683277', 2, '2023-12-20 10:28:54.683277');
INSERT INTO "proxy" VALUES (1978, 'www.proxy-list.download', 'socks4', '91.82.41.200', 10801, 0, NULL, '2023-12-20 10:08:54.696301', 2, '2023-12-20 10:28:54.696301');
INSERT INTO "proxy" VALUES (1979, 'www.proxy-list.download', 'socks4', '188.119.30.83', 4153, 0, NULL, '2023-12-20 10:08:54.503977', 2, '2023-12-20 10:28:54.503977');
INSERT INTO "proxy" VALUES (1980, 'www.proxy-list.download', 'socks4', '194.135.97.126', 4145, 0, NULL, '2023-12-20 10:08:54.731359', 2, '2023-12-20 10:28:54.731359');
INSERT INTO "proxy" VALUES (1981, 'www.proxy-list.download', 'socks4', '89.237.35.10', 51549, 0, NULL, '2023-12-20 10:08:54.835957', 2, '2023-12-20 10:28:54.835957');
INSERT INTO "proxy" VALUES (1982, 'www.proxy-list.download', 'socks4', '109.122.81.9', 57553, 0, NULL, '2023-12-20 10:08:54.888359', 2, '2023-12-20 10:28:54.888359');
INSERT INTO "proxy" VALUES (1983, 'www.proxy-list.download', 'socks4', '59.153.121.170', 1080, 0, NULL, '2023-12-20 10:08:54.840955', 2, '2023-12-20 10:28:54.840955');
INSERT INTO "proxy" VALUES (1984, 'www.proxy-list.download', 'socks4', '184.105.134.166', 48324, 0, NULL, '2023-12-20 10:08:54.479629', 2, '2023-12-20 10:28:54.479629');
INSERT INTO "proxy" VALUES (1985, 'www.proxy-list.download', 'socks4', '119.10.179.33', 5430, 0, NULL, '2023-12-20 10:08:54.605904', 2, '2023-12-20 10:28:54.605904');
INSERT INTO "proxy" VALUES (1986, 'www.proxy-list.download', 'socks4', '110.78.164.234', 4153, 0, NULL, '2023-12-20 10:08:54.673278', 2, '2023-12-20 10:28:54.673278');
INSERT INTO "proxy" VALUES (1987, 'www.proxy-list.download', 'socks4', '191.243.72.2', 4145, 0, NULL, '2023-12-20 10:08:54.824966', 2, '2023-12-20 10:28:54.824966');
INSERT INTO "proxy" VALUES (1988, 'www.proxy-list.download', 'socks4', '119.2.7.97', 4145, 0, NULL, '2023-12-20 10:08:54.591452', 2, '2023-12-20 10:28:54.591452');
INSERT INTO "proxy" VALUES (1989, 'www.proxy-list.download', 'socks4', '94.76.92.10', 4145, 0, NULL, '2023-12-20 10:08:54.669267', 2, '2023-12-20 10:28:54.669267');
INSERT INTO "proxy" VALUES (1990, 'www.proxy-list.download', 'socks4', '72.195.34.58', 4145, 0, NULL, '2023-12-20 10:08:54.779254', 2, '2023-12-20 10:28:54.779254');
INSERT INTO "proxy" VALUES (1991, 'www.proxy-list.download', 'socks4', '109.104.164.105', 1080, 0, NULL, '2023-12-20 10:08:54.596896', 2, '2023-12-20 10:28:54.596896');
INSERT INTO "proxy" VALUES (1992, 'www.proxy-list.download', 'socks4', '197.234.13.18', 4145, 0, NULL, '2023-12-20 10:08:54.809184', 2, '2023-12-20 10:28:54.809184');
INSERT INTO "proxy" VALUES (1993, 'www.proxy-list.download', 'socks4', '222.129.34.51', 57114, 0, NULL, '2023-12-20 10:08:54.726302', 2, '2023-12-20 10:28:54.726302');
INSERT INTO "proxy" VALUES (1994, 'www.proxy-list.download', 'socks4', '24.172.34.114', 60133, 0, NULL, '2023-12-20 10:08:54.904343', 2, '2023-12-20 10:28:54.904343');
INSERT INTO "proxy" VALUES (1995, 'www.proxy-list.download', 'socks4', '79.106.35.20', 1080, 0, NULL, '2023-12-20 10:08:55.111343', 2, '2023-12-20 10:28:55.111343');
INSERT INTO "proxy" VALUES (1996, 'www.proxy-list.download', 'socks4', '103.47.218.76', 4145, 0, NULL, '2023-12-20 10:08:55.159067', 2, '2023-12-20 10:28:55.159067');
INSERT INTO "proxy" VALUES (1997, 'www.proxy-list.download', 'socks4', '218.81.50.59', 4145, 0, NULL, '2023-12-20 10:08:54.872259', 2, '2023-12-20 10:28:54.872259');
INSERT INTO "proxy" VALUES (1998, 'www.proxy-list.download', 'socks4', '191.98.192.145', 4145, 0, NULL, '2023-12-20 10:08:55.003004', 2, '2023-12-20 10:28:55.003004');
INSERT INTO "proxy" VALUES (1999, 'www.proxy-list.download', 'socks4', '195.78.112.235', 39401, 0, NULL, '2023-12-20 10:08:54.998004', 2, '2023-12-20 10:28:54.998004');
INSERT INTO "proxy" VALUES (2000, 'www.proxy-list.download', 'socks4', '182.73.143.146', 53977, 0, NULL, '2023-12-20 10:08:54.559751', 2, '2023-12-20 10:28:54.559751');
INSERT INTO "proxy" VALUES (2001, 'www.proxy-list.download', 'http', '<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:54.628086', 2, '2023-12-20 10:28:54.628086');
INSERT INTO "proxy" VALUES (2002, 'www.proxy-list.download', 'socks4', '201.158.106.71', 4145, 0, NULL, '2023-12-20 10:08:55.099340', 2, '2023-12-20 10:28:55.099340');
INSERT INTO "proxy" VALUES (2003, 'www.proxy-list.download', 'socks4', '202.57.46.140', 4145, 0, NULL, '2023-12-20 10:08:54.974247', 2, '2023-12-20 10:28:54.974247');
INSERT INTO "proxy" VALUES (2004, 'www.proxy-list.download', 'socks4', '46.55.25.191', 61308, 0, NULL, '2023-12-20 10:08:55.116710', 2, '2023-12-20 10:28:55.116710');
INSERT INTO "proxy" VALUES (2005, 'www.proxy-list.download', 'socks4', '37.193.91.79', 4153, 0, NULL, '2023-12-20 10:08:55.054673', 2, '2023-12-20 10:28:55.054673');
INSERT INTO "proxy" VALUES (2006, 'www.proxy-list.download', 'https', '      <button type="button" id="cf-footer-ip-reveal" class="cf-footer-ip-reveal-btn">Click to reveal</button', 80, 0, NULL, '2023-12-20 10:08:54.619169', 2, '2023-12-20 10:28:54.619169');
INSERT INTO "proxy" VALUES (2007, 'www.proxy-list.download', 'socks4', '185.212.139.40', 4145, 0, NULL, '2023-12-20 10:08:55.007017', 2, '2023-12-20 10:28:55.007017');
INSERT INTO "proxy" VALUES (2008, 'www.proxy-list.download', 'socks4', '36.72.118.156', 4145, 0, NULL, '2023-12-20 10:08:54.914023', 2, '2023-12-20 10:28:54.914023');
INSERT INTO "proxy" VALUES (2009, 'www.proxy-list.download', 'http', '            <h2 class="text-3xl leading-tight font-normal mb-4 text-black-dark antialiased" data-translate="what_happened">What happened?</h2', 80, 0, NULL, '2023-12-20 10:08:54.908929', 2, '2023-12-20 10:28:54.908929');
INSERT INTO "proxy" VALUES (2010, 'www.proxy-list.download', 'socks4', '77.120.93.135', 52263, 0, NULL, '2023-12-20 10:08:54.993234', 2, '2023-12-20 10:28:54.993234');
INSERT INTO "proxy" VALUES (2011, 'www.proxy-list.download', 'socks4', '103.104.215.234', 5678, 0, NULL, '2023-12-20 10:08:54.546197', 2, '2023-12-20 10:28:54.546197');
INSERT INTO "proxy" VALUES (2012, 'www.proxy-list.download', 'socks4', '115.124.86.147', 5678, 0, NULL, '2023-12-20 10:08:55.049389', 2, '2023-12-20 10:28:55.049389');
INSERT INTO "proxy" VALUES (2013, 'www.proxy-list.download', 'socks4', '187.49.207.65', 4153, 0, NULL, '2023-12-20 10:08:55.203563', 2, '2023-12-20 10:28:55.203563');
INSERT INTO "proxy" VALUES (2014, 'www.proxy-list.download', 'socks5', '222.129.35.9', 57114, 0, NULL, '2023-12-20 10:08:55.138000', 2, '2023-12-20 10:28:55.138000');
INSERT INTO "proxy" VALUES (2015, 'www.proxy-list.download', 'socks4', '177.137.168.159', 4145, 0, NULL, '2023-12-20 10:08:55.020939', 2, '2023-12-20 10:28:55.020939');
INSERT INTO "proxy" VALUES (2016, 'www.proxy-list.download', 'socks4', '46.175.186.24', 4153, 0, NULL, '2023-12-20 10:08:55.199567', 2, '2023-12-20 10:28:55.199567');
INSERT INTO "proxy" VALUES (2017, 'www.proxy-list.download', 'socks4', '121.13.229.213', 61401, 0, NULL, '2023-12-20 10:08:55.083345', 2, '2023-12-20 10:28:55.083345');
INSERT INTO "proxy" VALUES (2018, 'www.proxy-list.download', 'socks4', '176.197.100.134', 3629, 0, NULL, '2023-12-20 10:08:55.105351', 2, '2023-12-20 10:28:55.105351');
INSERT INTO "proxy" VALUES (2019, 'www.proxy-list.download', 'socks4', '103.250.68.66', 54621, 0, NULL, '2023-12-20 10:08:55.025927', 2, '2023-12-20 10:28:55.025927');
INSERT INTO "proxy" VALUES (2020, 'www.proxy-list.download', 'socks4', '186.211.187.50', 4153, 0, NULL, '2023-12-20 10:08:55.015938', 2, '2023-12-20 10:28:55.015938');
INSERT INTO "proxy" VALUES (2021, 'www.proxy-list.download', 'socks4', '45.65.131.128', 4145, 0, NULL, '2023-12-20 10:08:55.194563', 2, '2023-12-20 10:28:55.194563');
INSERT INTO "proxy" VALUES (2022, 'www.proxy-list.download', 'socks4', '113.53.82.92', 35731, 0, NULL, '2023-12-20 10:08:54.941951', 2, '2023-12-20 10:28:54.941951');
INSERT INTO "proxy" VALUES (2023, 'www.proxy-list.download', 'socks4', '170.84.48.105', 55731, 0, NULL, '2023-12-20 10:08:55.045375', 2, '2023-12-20 10:28:55.045375');
INSERT INTO "proxy" VALUES (2024, 'www.proxy-list.download', 'http', '<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en-US"> <![endif]--', 80, 0, NULL, '2023-12-20 10:08:55.208562', 2, '2023-12-20 10:28:55.208562');
INSERT INTO "proxy" VALUES (2025, 'www.proxy-list.download', 'socks4', '92.242.126.154', 44718, 0, NULL, '2023-12-20 10:08:55.148870', 2, '2023-12-20 10:28:55.148870');
INSERT INTO "proxy" VALUES (2026, 'www.proxy-list.download', 'socks4', '103.115.255.65', 36331, 0, NULL, '2023-12-20 10:08:54.983233', 2, '2023-12-20 10:28:54.983233');
INSERT INTO "proxy" VALUES (2027, 'www.proxy-list.download', 'socks4', '91.205.241.86', 3629, 0, NULL, '2023-12-20 10:08:55.094343', 2, '2023-12-20 10:28:55.094343');
INSERT INTO "proxy" VALUES (2028, 'www.proxy-list.download', 'socks4', '103.107.68.13', 5430, 0, NULL, '2023-12-20 10:08:55.126804', 2, '2023-12-20 10:28:55.126804');
INSERT INTO "proxy" VALUES (2029, 'www.proxy-list.download', 'socks4', '190.182.88.214', 30956, 0, NULL, '2023-12-20 10:08:54.965237', 2, '2023-12-20 10:28:54.965237');
INSERT INTO "proxy" VALUES (2030, 'www.proxy-list.download', 'socks4', '80.91.118.61', 1080, 0, NULL, '2023-12-20 10:08:54.927895', 2, '2023-12-20 10:28:54.927895');
INSERT INTO "proxy" VALUES (2031, 'www.proxy-list.download', 'socks4', '177.69.19.49', 4145, 0, NULL, '2023-12-20 10:08:55.184566', 2, '2023-12-20 10:28:55.184566');
INSERT INTO "proxy" VALUES (2032, 'www.proxy-list.download', 'socks4', '178.134.198.90', 4153, 0, NULL, '2023-12-20 10:08:55.121586', 2, '2023-12-20 10:28:55.121586');
INSERT INTO "proxy" VALUES (2033, 'www.proxy-list.download', 'socks4', '103.53.76.82', 1089, 0, NULL, '2023-12-20 10:08:54.945962', 2, '2023-12-20 10:28:54.945962');
INSERT INTO "proxy" VALUES (2034, 'www.proxy-list.download', 'socks4', '185.94.218.57', 44421, 0, NULL, '2023-12-20 10:08:54.979237', 2, '2023-12-20 10:28:54.979237');
INSERT INTO "proxy" VALUES (2035, 'www.proxy-list.download', 'socks4', '194.38.0.163', 4145, 0, NULL, '2023-12-20 10:08:55.011938', 2, '2023-12-20 10:28:55.011938');
INSERT INTO "proxy" VALUES (2036, 'www.proxy-list.download', 'http', '         <span class="inline-block md', 80, 0, NULL, '2023-12-20 10:08:54.988247', 2, '2023-12-20 10:28:54.988247');
INSERT INTO "proxy" VALUES (2037, 'www.proxy-list.download', 'socks4', '51.11.240.222', 8085, 0, NULL, '2023-12-20 10:08:55.164094', 2, '2023-12-20 10:28:55.164094');
INSERT INTO "proxy" VALUES (2038, 'www.proxy-list.download', 'socks4', '45.70.237.162', 4145, 0, NULL, '2023-12-20 10:08:55.058672', 2, '2023-12-20 10:28:55.058672');
INSERT INTO "proxy" VALUES (2039, 'www.proxy-list.download', 'socks4', '103.211.11.13', 52616, 0, NULL, '2023-12-20 10:08:55.189570', 2, '2023-12-20 10:28:55.189570');
INSERT INTO "proxy" VALUES (2040, 'www.proxy-list.download', 'https', '            <h2 class="text-3xl leading-tight font-normal mb-4 text-black-dark antialiased" data-translate="what_happened">What happened?</h2', 80, 0, NULL, '2023-12-20 10:08:55.179669', 2, '2023-12-20 10:28:55.179669');
INSERT INTO "proxy" VALUES (2041, 'www.proxy-list.download', 'socks4', '213.16.99.222', 4145, 0, NULL, '2023-12-20 10:08:54.960197', 2, '2023-12-20 10:28:54.960197');
INSERT INTO "proxy" VALUES (2042, 'www.proxy-list.download', 'socks4', '82.103.70.227', 4145, 0, NULL, '2023-12-20 10:08:55.170649', 2, '2023-12-20 10:28:55.170649');
INSERT INTO "proxy" VALUES (2043, 'www.proxy-list.download', 'socks4', '188.168.27.71', 38071, 0, NULL, '2023-12-20 10:08:55.075273', 2, '2023-12-20 10:28:55.075273');
INSERT INTO "proxy" VALUES (2044, 'www.proxy-list.download', 'socks4', '195.248.242.249', 1080, 0, NULL, '2023-12-20 10:08:55.089345', 2, '2023-12-20 10:28:55.089345');
INSERT INTO "proxy" VALUES (2045, 'www.proxy-list.download', 'socks4', '116.239.27.130', 4145, 0, NULL, '2023-12-20 10:08:55.132170', 2, '2023-12-20 10:28:55.132170');
INSERT INTO "proxy" VALUES (2046, 'www.proxy-list.download', 'socks4', '93.87.75.118', 47505, 0, NULL, '2023-12-20 10:08:54.955210', 2, '2023-12-20 10:28:54.955210');
INSERT INTO "proxy" VALUES (2047, 'www.proxy-list.download', 'socks4', '185.77.169.26', 4153, 0, NULL, '2023-12-20 10:08:55.035857', 2, '2023-12-20 10:28:55.035857');
INSERT INTO "proxy" VALUES (2048, 'www.proxy-list.download', 'socks4', '37.57.40.167', 4145, 0, NULL, '2023-12-20 10:08:55.063671', 2, '2023-12-20 10:28:55.063671');
INSERT INTO "proxy" VALUES (2049, 'www.proxy-list.download', 'socks4', '168.121.139.31', 4145, 0, NULL, '2023-12-20 10:08:55.030848', 2, '2023-12-20 10:28:55.030848');
INSERT INTO "proxy" VALUES (2050, 'www.proxy-list.download', 'socks4', '194.85.124.150', 4153, 0, NULL, '2023-12-20 10:08:55.154071', 2, '2023-12-20 10:28:55.154071');
INSERT INTO "proxy" VALUES (2051, 'www.proxy-list.download', 'socks4', '177.105.68.135', 4153, 0, NULL, '2023-12-20 10:08:55.068726', 2, '2023-12-20 10:28:55.068726');
INSERT INTO "proxy" VALUES (2052, 'www.proxy-list.download', 'socks5', '112.98.218.73', 57658, 0, NULL, '2023-12-20 10:08:54.969235', 2, '2023-12-20 10:28:54.969235');
INSERT INTO "proxy" VALUES (2053, 'www.proxy-list.download', 'socks5', '208.113.152.12', 32690, 0, NULL, '2023-12-20 10:08:55.142998', 2, '2023-12-20 10:28:55.142998');
INSERT INTO "proxy" VALUES (2054, 'www.proxy-list.download', 'socks4', '138.121.198.90', 42494, 0, NULL, '2023-12-20 10:08:55.174680', 2, '2023-12-20 10:28:55.174680');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('django_migrations', 31);
INSERT INTO "sqlite_sequence" VALUES ('django_admin_log', 0);
INSERT INTO "sqlite_sequence" VALUES ('django_content_type', 15);
INSERT INTO "sqlite_sequence" VALUES ('auth_permission', 60);
INSERT INTO "sqlite_sequence" VALUES ('auth_user', 2);
INSERT INTO "sqlite_sequence" VALUES ('auth_group', 0);
INSERT INTO "sqlite_sequence" VALUES ('xadmin_log', 0);
INSERT INTO "sqlite_sequence" VALUES ('xadmin_usersettings', 1);
INSERT INTO "sqlite_sequence" VALUES ('proxy', 2054);
INSERT INTO "sqlite_sequence" VALUES ('fetchers', 14);
INSERT INTO "sqlite_sequence" VALUES ('node', 2);

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS "xadmin_bookmark";
CREATE TABLE "xadmin_bookmark" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "title" varchar(128) NOT NULL,
  "url_name" varchar(64) NOT NULL,
  "query" varchar(1000) NOT NULL,
  "is_share" bool NOT NULL,
  "content_type_id" integer NOT NULL,
  "user_id" integer,
  FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS "xadmin_log";
CREATE TABLE "xadmin_log" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "action_time" datetime NOT NULL,
  "ip_addr" char(39),
  "object_id" text,
  "object_repr" varchar(200) NOT NULL,
  "message" text NOT NULL,
  "content_type_id" integer,
  "user_id" integer NOT NULL,
  "action_flag" varchar(32) NOT NULL,
  FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS "xadmin_usersettings";
CREATE TABLE "xadmin_usersettings" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "key" varchar(256) NOT NULL,
  "value" text NOT NULL,
  "user_id" integer NOT NULL,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO "xadmin_usersettings" VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS "xadmin_userwidget";
CREATE TABLE "xadmin_userwidget" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "page_id" varchar(256) NOT NULL,
  "widget_type" varchar(50) NOT NULL,
  "value" text NOT NULL,
  "user_id" integer NOT NULL,
  FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED
);

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

-- ----------------------------
-- Auto increment value for auth_group
-- ----------------------------

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9"
ON "auth_group_permissions" (
  "group_id" ASC
);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq"
ON "auth_group_permissions" (
  "group_id" ASC,
  "permission_id" ASC
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e"
ON "auth_group_permissions" (
  "permission_id" ASC
);

-- ----------------------------
-- Auto increment value for auth_permission
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 60 WHERE name = 'auth_permission';

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b"
ON "auth_permission" (
  "content_type_id" ASC
);
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq"
ON "auth_permission" (
  "content_type_id" ASC,
  "codename" ASC
);

-- ----------------------------
-- Auto increment value for auth_user
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'auth_user';

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id_97559544"
ON "auth_user_groups" (
  "group_id" ASC
);
CREATE INDEX "auth_user_groups_user_id_6a12ed8b"
ON "auth_user_groups" (
  "user_id" ASC
);
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq"
ON "auth_user_groups" (
  "user_id" ASC,
  "group_id" ASC
);

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c"
ON "auth_user_user_permissions" (
  "permission_id" ASC
);
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b"
ON "auth_user_user_permissions" (
  "user_id" ASC
);
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq"
ON "auth_user_user_permissions" (
  "user_id" ASC,
  "permission_id" ASC
);

-- ----------------------------
-- Auto increment value for django_admin_log
-- ----------------------------

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb"
ON "django_admin_log" (
  "content_type_id" ASC
);
CREATE INDEX "django_admin_log_user_id_c564eba6"
ON "django_admin_log" (
  "user_id" ASC
);

-- ----------------------------
-- Auto increment value for django_content_type
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 15 WHERE name = 'django_content_type';

-- ----------------------------
-- Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq"
ON "django_content_type" (
  "app_label" ASC,
  "model" ASC
);

-- ----------------------------
-- Auto increment value for django_migrations
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 31 WHERE name = 'django_migrations';

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663"
ON "django_session" (
  "expire_date" ASC
);

-- ----------------------------
-- Auto increment value for fetchers
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 14 WHERE name = 'fetchers';

-- ----------------------------
-- Auto increment value for node
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'node';

-- ----------------------------
-- Auto increment value for proxy
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2054 WHERE name = 'proxy';

-- ----------------------------
-- Indexes structure for table xadmin_bookmark
-- ----------------------------
CREATE INDEX "xadmin_bookmark_content_type_id_60941679"
ON "xadmin_bookmark" (
  "content_type_id" ASC
);
CREATE INDEX "xadmin_bookmark_user_id_42d307fc"
ON "xadmin_bookmark" (
  "user_id" ASC
);

-- ----------------------------
-- Auto increment value for xadmin_log
-- ----------------------------

-- ----------------------------
-- Indexes structure for table xadmin_log
-- ----------------------------
CREATE INDEX "xadmin_log_content_type_id_2a6cb852"
ON "xadmin_log" (
  "content_type_id" ASC
);
CREATE INDEX "xadmin_log_user_id_bb16a176"
ON "xadmin_log" (
  "user_id" ASC
);

-- ----------------------------
-- Auto increment value for xadmin_usersettings
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1 WHERE name = 'xadmin_usersettings';

-- ----------------------------
-- Indexes structure for table xadmin_usersettings
-- ----------------------------
CREATE INDEX "xadmin_usersettings_user_id_edeabe4a"
ON "xadmin_usersettings" (
  "user_id" ASC
);

-- ----------------------------
-- Indexes structure for table xadmin_userwidget
-- ----------------------------
CREATE INDEX "xadmin_userwidget_user_id_c159233a"
ON "xadmin_userwidget" (
  "user_id" ASC
);

PRAGMA foreign_keys = true;
