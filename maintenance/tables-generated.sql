-- This file is automatically generated using maintenance/generateSchemaSql.php.
-- Source: maintenance/tables.json
-- Do not modify this file directly.
-- See https://www.mediawiki.org/wiki/Manual:Schema_changes
CREATE TABLE /*_*/site_identifiers (
  si_type VARBINARY(32) NOT NULL,
  si_key VARBINARY(32) NOT NULL,
  si_site INT UNSIGNED NOT NULL,
  INDEX site_ids_site (si_site),
  INDEX site_ids_key (si_key),
  PRIMARY KEY(si_type, si_key)
) /*$wgDBTableOptions*/;

CREATE TABLE /*_*/updatelog (
  ul_key VARCHAR(255) NOT NULL,
  ul_value BLOB DEFAULT NULL,
  PRIMARY KEY(ul_key)
) /*$wgDBTableOptions*/;

CREATE TABLE /*_*/actor (
  actor_id BIGINT UNSIGNED AUTO_INCREMENT NOT NULL,
  actor_user INT UNSIGNED DEFAULT NULL,
  actor_name VARBINARY(255) NOT NULL,
  UNIQUE INDEX actor_user (actor_user),
  UNIQUE INDEX actor_name (actor_name),
  PRIMARY KEY(actor_id)
) /*$wgDBTableOptions*/;

CREATE TABLE /*_*/user_former_groups (
  ufg_user INT UNSIGNED DEFAULT 0 NOT NULL,
  ufg_group VARBINARY(255) DEFAULT '' NOT NULL,
  PRIMARY KEY(ufg_user, ufg_group)
) /*$wgDBTableOptions*/;

CREATE TABLE /*_*/bot_passwords (
  bp_user INT UNSIGNED NOT NULL,
  bp_app_id VARBINARY(32) NOT NULL,
  bp_password TINYBLOB NOT NULL,
  bp_token BINARY(32) DEFAULT '' NOT NULL,
  bp_restrictions BLOB NOT NULL,
  bp_grants BLOB NOT NULL,
  PRIMARY KEY(bp_user, bp_app_id)
) /*$wgDBTableOptions*/;
