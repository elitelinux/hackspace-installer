#GLPI Dump database on 2014-05-27 16:58

### Dump table glpi_alerts

DROP TABLE IF EXISTS `glpi_alerts`;
CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authldapreplicates

DROP TABLE IF EXISTS `glpi_authldapreplicates`;
CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authldaps_id` (`authldaps_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authldaps

DROP TABLE IF EXISTS `glpi_authldaps`;
CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_default` (`is_default`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_authmails

DROP TABLE IF EXISTS `glpi_authmails`;
CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_autoupdatesystems

DROP TABLE IF EXISTS `glpi_autoupdatesystems`;
CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_blacklists

DROP TABLE IF EXISTS `glpi_blacklists`;
CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_blacklists` VALUES ('1','1','empty IP','',NULL);
INSERT INTO `glpi_blacklists` VALUES ('2','1','localhost','127.0.0.1',NULL);
INSERT INTO `glpi_blacklists` VALUES ('3','1','zero IP','0.0.0.0',NULL);
INSERT INTO `glpi_blacklists` VALUES ('4','2','empty MAC','',NULL);

### Dump table glpi_bookmarks

DROP TABLE IF EXISTS `glpi_bookmarks`;
CREATE TABLE `glpi_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php BOOKMARK_* constant',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_private` (`is_private`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_bookmarks_users

DROP TABLE IF EXISTS `glpi_bookmarks_users`;
CREATE TABLE `glpi_bookmarks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bookmarks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  KEY `bookmarks_id` (`bookmarks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_budgets

DROP TABLE IF EXISTS `glpi_budgets`;
CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `begin_date` (`begin_date`),
  KEY `is_template` (`is_template`),
  KEY `date_mod` (`date_mod`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_calendars

DROP TABLE IF EXISTS `glpi_calendars`;
CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_calendars` VALUES ('1','Default','0','1','Default calendar',NULL,'[0,43200,43200,43200,43200,43200,0]');
INSERT INTO `glpi_calendars` VALUES ('2','24x7','0','1',NULL,'2014-02-27 02:04:14','[86399,86399,86399,86399,86399,86399,86399]');

### Dump table glpi_calendars_holidays

DROP TABLE IF EXISTS `glpi_calendars_holidays`;
CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  KEY `holidays_id` (`holidays_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_calendarsegments

DROP TABLE IF EXISTS `glpi_calendarsegments`;
CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `day` (`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_calendarsegments` VALUES ('1','1','0','0','1','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('2','1','0','0','2','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('3','1','0','0','3','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('4','1','0','0','4','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('5','1','0','0','5','08:00:00','20:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('6','2','0','1','0','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('7','2','0','1','1','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('8','2','0','1','2','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('9','2','0','1','3','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('10','2','0','1','4','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('11','2','0','1','5','00:00:00','24:00:00');
INSERT INTO `glpi_calendarsegments` VALUES ('12','2','0','1','6','00:00:00','24:00:00');

### Dump table glpi_cartridgeitems

DROP TABLE IF EXISTS `glpi_cartridgeitems`;
CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridgeitems_printermodels

DROP TABLE IF EXISTS `glpi_cartridgeitems_printermodels`;
CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridgeitemtypes

DROP TABLE IF EXISTS `glpi_cartridgeitemtypes`;
CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_cartridges

DROP TABLE IF EXISTS `glpi_cartridges`;
CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`),
  KEY `printers_id` (`printers_id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computerdisks

DROP TABLE IF EXISTS `glpi_computerdisks`;
CREATE TABLE `glpi_computerdisks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `device` (`device`),
  KEY `mountpoint` (`mountpoint`),
  KEY `totalsize` (`totalsize`),
  KEY `freesize` (`freesize`),
  KEY `computers_id` (`computers_id`),
  KEY `filesystems_id` (`filesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computermodels

DROP TABLE IF EXISTS `glpi_computermodels`;
CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers

DROP TABLE IF EXISTS `glpi_computers`;
CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `os_license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_licenseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `computermodels_id` (`computermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `computertypes_id` (`computertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_items

DROP TABLE IF EXISTS `glpi_computers_items`;
CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_softwarelicenses

DROP TABLE IF EXISTS `glpi_computers_softwarelicenses`;
CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwarelicenses_id`),
  KEY `computers_id` (`computers_id`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computers_softwareversions

DROP TABLE IF EXISTS `glpi_computers_softwareversions`;
CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  KEY `softwareversions_id` (`softwareversions_id`),
  KEY `computers_info` (`entities_id`,`is_template_computer`,`is_deleted_computer`),
  KEY `is_template` (`is_template_computer`),
  KEY `is_deleted` (`is_deleted_computer`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computertypes

DROP TABLE IF EXISTS `glpi_computertypes`;
CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_computervirtualmachines

DROP TABLE IF EXISTS `glpi_computervirtualmachines`;
CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  KEY `vcpu` (`vcpu`),
  KEY `ram` (`ram`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `uuid` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_configs

DROP TABLE IF EXISTS `glpi_configs`;
CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_jobs_at_login` tinyint(1) NOT NULL DEFAULT '0',
  `cut` int(11) NOT NULL DEFAULT '255',
  `list_limit` int(11) NOT NULL DEFAULT '20',
  `list_limit_max` int(11) NOT NULL DEFAULT '50',
  `url_maxlength` int(11) NOT NULL DEFAULT '30',
  `version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_loglevel` int(11) NOT NULL DEFAULT '5',
  `use_mailing` tinyint(1) NOT NULL DEFAULT '0',
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `use_anonymous_helpdesk` tinyint(1) NOT NULL DEFAULT '0',
  `use_anonymous_followups` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT 'en_GB' COMMENT 'see define.php CFG_GLPI[language] array',
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT '#fff2f2',
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffe0e0',
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffcece',
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffbfbf',
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffadad',
  `priority_6` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ff5555',
  `date_tax` date NOT NULL DEFAULT '2005-12-31',
  `cas_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_port` int(11) NOT NULL DEFAULT '443',
  `cas_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `existing_auth_server_field_clean_domain` tinyint(1) NOT NULL DEFAULT '0',
  `planning_begin` time NOT NULL DEFAULT '08:00:00',
  `planning_end` time NOT NULL DEFAULT '20:00:00',
  `utf8_conv` int(11) NOT NULL DEFAULT '0',
  `use_public_faq` tinyint(1) NOT NULL DEFAULT '0',
  `url_base` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_link_in_mail` tinyint(1) NOT NULL DEFAULT '0',
  `text_login` text COLLATE utf8_unicode_ci,
  `founded_new_version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_max` int(11) NOT NULL DEFAULT '100',
  `ajax_wildcard` char(1) COLLATE utf8_unicode_ci DEFAULT '*',
  `use_ajax` tinyint(1) NOT NULL DEFAULT '0',
  `ajax_min_textsearch_load` int(11) NOT NULL DEFAULT '0',
  `ajax_buffertime_load` int(11) NOT NULL DEFAULT '0',
  `ajax_limit_count` int(11) NOT NULL DEFAULT '50',
  `use_ajax_autocompletion` tinyint(1) NOT NULL DEFAULT '1',
  `is_users_auto_add` tinyint(1) NOT NULL DEFAULT '1',
  `date_format` int(11) NOT NULL DEFAULT '0',
  `number_format` int(11) NOT NULL DEFAULT '0',
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_ids_visible` tinyint(1) NOT NULL DEFAULT '0',
  `dropdown_chars_limit` int(11) NOT NULL DEFAULT '50',
  `smtp_mode` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php MAIL_* constant',
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) NOT NULL DEFAULT '25',
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_port` int(11) NOT NULL DEFAULT '8080',
  `proxy_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followup_on_update_ticket` tinyint(1) NOT NULL DEFAULT '1',
  `keep_tickets_on_delete` tinyint(1) NOT NULL DEFAULT '1',
  `time_step` int(11) DEFAULT '5',
  `decimal_number` int(11) DEFAULT '2',
  `helpdesk_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `central_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentcategories_id_forticket` int(11) NOT NULL DEFAULT '0' COMMENT 'default category for documents added with a ticket',
  `monitors_management_restrict` int(11) NOT NULL DEFAULT '2',
  `phones_management_restrict` int(11) NOT NULL DEFAULT '2',
  `peripherals_management_restrict` int(11) NOT NULL DEFAULT '2',
  `printers_management_restrict` int(11) NOT NULL DEFAULT '2',
  `use_log_in_files` tinyint(1) NOT NULL DEFAULT '0',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `is_contact_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_user_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_group_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_location_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `state_autoupdate_mode` int(11) NOT NULL DEFAULT '0',
  `is_contact_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_group_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_location_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `state_autoclean_mode` int(11) NOT NULL DEFAULT '0',
  `use_flat_dropdowntree` tinyint(1) NOT NULL DEFAULT '0',
  `use_autoname_by_entity` tinyint(1) NOT NULL DEFAULT '1',
  `is_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `is_not_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id_ondelete` int(11) NOT NULL DEFAULT '0' COMMENT 'category applyed when a software is deleted',
  `x509_email_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_cn_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_o_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x509_ou_restrict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_mailcollector_filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `followup_private` tinyint(1) NOT NULL DEFAULT '0',
  `task_private` tinyint(1) NOT NULL DEFAULT '0',
  `default_software_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `names_format` int(11) NOT NULL DEFAULT '0' COMMENT 'see *NAME_BEFORE constant in define.php',
  `default_graphtype` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'svg',
  `default_requesttypes_id` int(11) NOT NULL DEFAULT '1',
  `use_noright_users_add` tinyint(1) NOT NULL DEFAULT '1',
  `cron_limit` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Number of tasks execute by external cron',
  `priority_matrix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'json encoded array for Urgence / Impact to Protority',
  `urgency_mask` int(11) NOT NULL DEFAULT '62',
  `impact_mask` int(11) NOT NULL DEFAULT '62',
  `user_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `auto_create_infocoms` tinyint(1) NOT NULL DEFAULT '0',
  `use_slave_for_search` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfers_id_auto` int(11) NOT NULL DEFAULT '0',
  `show_count_on_tabs` tinyint(1) NOT NULL DEFAULT '1',
  `refresh_ticket_list` int(11) NOT NULL DEFAULT '0',
  `set_default_tech` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_view` int(11) NOT NULL DEFAULT '2',
  `allow_search_all` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_global` tinyint(1) NOT NULL DEFAULT '1',
  `display_count_on_home` int(11) NOT NULL DEFAULT '5',
  `use_password_security` tinyint(1) NOT NULL DEFAULT '0',
  `password_min_length` int(11) NOT NULL DEFAULT '8',
  `password_need_number` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_letter` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_caps` tinyint(1) NOT NULL DEFAULT '1',
  `password_need_symbol` tinyint(1) NOT NULL DEFAULT '1',
  `use_check_pref` tinyint(1) NOT NULL DEFAULT '0',
  `notification_to_myself` tinyint(1) NOT NULL DEFAULT '1',
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#06ff00',
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ffb800',
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ff0000',
  `duedatewarning_less` int(11) NOT NULL DEFAULT '20',
  `duedatecritical_less` int(11) NOT NULL DEFAULT '5',
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '%',
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '%',
  `realname_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_ssofield` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssovariables_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_configs` VALUES ('1','1','150','15','100','80',' 0.84.5','5','1','comunicaciones@sentidoskreativos.com','Sentidos Kreativos','comunicaciones@sentidoskreativos.com','Sentidos Kreativos','Sentidos Kreativos - Pasión por Innovar
http://www.sentidoskreativos.com','1','1','es_CO','#fff2f2','#ffe0e0','#ffcece','#ffbfbf','#ffadad','#ff5555','2014-01-01','','443','',NULL,'0','06:00:00','22:00:00','1','1','http://oficina.sentidoskreativos.com','0','Smart Cities App','','100','*','1','0','500','10','1','1','1','2',';','1','100','0','localhost','25',NULL,NULL,'8080',NULL,'1','1','5','2',NULL,NULL,'0','2','2','2','2','1','-18000','1','1','1','1','0','0','0','0','0','0','1','0','1','1','1',NULL,NULL,NULL,NULL,'2097152','0','0','1','1','svg','1','1','30','{\"1\":{\"1\":\"1\",\"2\":\"1\",\"3\":\"2\",\"4\":\"2\",\"5\":\"2\"},\"2\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"2\",\"4\":\"3\",\"5\":\"3\"},\"3\":{\"1\":\"2\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"5\":\"4\"},\"4\":{\"1\":\"2\",\"2\":\"3\",\"3\":\"4\",\"4\":\"4\",\"5\":\"5\"},\"5\":{\"1\":\"2\",\"2\":\"3\",\"3\":\"4\",\"4\":\"5\",\"5\":\"5\"}}','62','62','0','1','0',NULL,NULL,'0','1','1','0','2','1','1','30','1','8','1','1','1','1','0','1','#06ff00','#ffb800','#ff0000','20','5','%','%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0');

### Dump table glpi_consumableitems

DROP TABLE IF EXISTS `glpi_consumableitems`;
CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_consumableitemtypes

DROP TABLE IF EXISTS `glpi_consumableitemtypes`;
CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_consumables

DROP TABLE IF EXISTS `glpi_consumables`;
CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_in` (`date_in`),
  KEY `date_out` (`date_out`),
  KEY `consumableitems_id` (`consumableitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacts

DROP TABLE IF EXISTS `glpi_contacts`;
CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `contacttypes_id` (`contacttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `usertitles_id` (`usertitles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacts_suppliers

DROP TABLE IF EXISTS `glpi_contacts_suppliers`;
CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  KEY `contacts_id` (`contacts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contacttypes

DROP TABLE IF EXISTS `glpi_contacttypes`;
CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contractcosts

DROP TABLE IF EXISTS `glpi_contractcosts`;
CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `contracts_id` (`contracts_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts

DROP TABLE IF EXISTS `glpi_contracts`;
CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin_date` (`begin_date`),
  KEY `name` (`name`),
  KEY `contracttypes_id` (`contracttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `use_monday` (`use_monday`),
  KEY `use_saturday` (`use_saturday`),
  KEY `alert` (`alert`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts_items

DROP TABLE IF EXISTS `glpi_contracts_items`;
CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracts_suppliers

DROP TABLE IF EXISTS `glpi_contracts_suppliers`;
CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_contracttypes

DROP TABLE IF EXISTS `glpi_contracttypes`;
CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_crontasklogs

DROP TABLE IF EXISTS `glpi_crontasklogs`;
CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `crontasks_id` (`crontasks_id`),
  KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_crontasklogs` VALUES ('1','16','0','2014-02-22 16:32:26','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('2','16','1','2014-02-22 16:32:26','2','0.229926','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('3','17','0','2014-02-22 16:32:34','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('4','17','3','2014-02-22 16:32:34','2','0.0272989','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('5','18','0','2014-02-22 16:39:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('6','18','5','2014-02-22 16:39:02','2','0.151984','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('7','19','0','2014-02-22 16:45:55','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('8','19','7','2014-02-22 16:45:55','2','0.015516','0','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('9','20','0','2014-02-22 17:19:27','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('10','20','9','2014-02-22 17:19:27','2','0.338323','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('11','21','0','2014-02-22 17:26:29','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('12','21','11','2014-02-22 17:26:29','2','0.015754','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('13','5','0','2014-02-22 17:26:50','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('14','5','13','2014-02-22 17:26:50','2','0.017894','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('15','6','0','2014-02-22 17:43:09','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('16','6','15','2014-02-22 17:43:09','2','0.0372381','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('17','8','0','2014-02-22 17:55:33','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('18','8','17','2014-02-22 17:55:33','2','7.45553','225','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('19','9','0','2014-02-23 12:54:59','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('20','9','19','2014-02-23 12:54:59','2','0.128533','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('21','12','0','2014-02-23 12:55:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('22','12','21','2014-02-23 12:55:48','2','0.0286691','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('23','13','0','2014-02-23 13:01:10','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('24','13','23','2014-02-23 13:01:10','1','0.0494909','1','Limpiar 1 archivo gráfico creado desde hace mas de 3600 segundos
');
INSERT INTO `glpi_crontasklogs` VALUES ('25','13','23','2014-02-23 13:01:10','2','0.0509169','1','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('26','14','0','2014-02-23 19:47:38','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('27','14','26','2014-02-23 19:47:38','2','0.246401','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('28','15','0','2014-02-24 06:32:07','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('29','15','28','2014-02-24 06:32:07','2','1.18502','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('30','17','0','2014-02-24 11:19:51','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('31','17','30','2014-02-24 11:19:51','2','0.316386','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('32','21','0','2014-02-24 11:25:01','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('33','21','32','2014-02-24 11:25:01','2','0.024966','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('34','20','0','2014-02-24 11:31:58','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('35','20','34','2014-02-24 11:31:58','2','0.0699949','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('36','16','0','2014-02-24 13:54:28','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('37','16','36','2014-02-24 13:54:28','2','0.184344','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('38','9','0','2014-02-24 14:01:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('39','9','38','2014-02-24 14:01:08','2','0.0907249','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('40','13','0','2014-02-24 14:06:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('41','13','40','2014-02-24 14:06:54','2','0.199844','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('42','18','0','2014-02-24 14:14:34','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('43','18','42','2014-02-24 14:14:34','2','0.325076','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('44','19','0','2014-02-24 14:27:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('45','19','44','2014-02-24 14:27:08','2','0.170322','0','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('46','5','0','2014-02-24 14:46:21','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('47','5','46','2014-02-24 14:46:21','2','0.056531','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('48','6','0','2014-02-24 15:54:37','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('49','6','48','2014-02-24 15:54:37','2','0.213962','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('50','14','0','2014-02-24 15:59:53','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('51','14','50','2014-02-24 15:59:53','2','0.0171988','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('52','17','0','2014-02-24 16:10:12','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('53','17','52','2014-02-24 16:10:12','2','0.179592','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('54','21','0','2014-02-24 16:15:28','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('55','21','54','2014-02-24 16:15:28','2','0.020803','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('56','20','0','2014-02-24 16:20:55','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('57','20','56','2014-02-24 16:20:55','2','0.018049','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('58','12','0','2014-02-24 16:26:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('59','12','58','2014-02-24 16:26:02','2','0.0448589','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('60','9','0','2014-02-24 16:50:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('61','9','60','2014-02-24 16:50:52','2','0.479831','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('62','13','0','2014-02-24 17:01:50','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('63','13','62','2014-02-24 17:01:50','2','0.204999','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('64','17','0','2014-02-24 17:07:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('65','17','64','2014-02-24 17:07:02','2','0.0346608','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('66','21','0','2014-02-24 21:27:38','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('67','21','66','2014-02-24 21:27:38','2','0.538108','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('68','14','0','2014-02-24 21:34:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('69','14','68','2014-02-24 21:34:02','2','0.176242','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('70','9','0','2014-02-24 21:40:41','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('71','9','70','2014-02-24 21:40:41','2','0.454444','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('72','17','0','2014-02-24 21:45:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('73','17','72','2014-02-24 21:45:54','2','0.0170648','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('74','20','0','2014-02-24 21:54:06','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('75','20','74','2014-02-24 21:54:06','2','0.0698109','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('76','13','0','2014-02-24 22:03:36','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('77','13','76','2014-02-24 22:03:36','2','0.107488','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('78','15','0','2014-02-24 22:08:47','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('79','15','78','2014-02-24 22:08:47','2','0.0527101','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('80','21','0','2014-02-24 22:17:44','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('81','21','80','2014-02-24 22:17:44','2','0.0221429','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('82','9','0','2014-02-24 22:22:47','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('83','9','82','2014-02-24 22:22:47','2','0.134047','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('84','17','0','2014-02-24 22:28:31','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('85','17','84','2014-02-24 22:28:31','2','0.0449469','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('86','21','0','2014-02-24 22:47:31','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('87','21','86','2014-02-24 22:47:31','2','0.086149','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('88','9','0','2014-02-24 22:54:54','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('89','9','88','2014-02-24 22:54:54','2','0.0791419','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('90','17','0','2014-02-24 23:03:14','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('91','17','90','2014-02-24 23:03:14','2','0.0221419','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('92','14','0','2014-02-24 23:11:23','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('93','14','92','2014-02-24 23:11:23','2','0.0246372','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('94','21','0','2014-02-25 06:50:40','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('95','21','94','2014-02-25 06:50:40','2','0.637903','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('96','20','0','2014-02-25 06:58:04','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('97','20','96','2014-02-25 06:58:04','2','1.07228','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('98','13','0','2014-02-25 06:58:20','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('99','13','98','2014-02-25 06:58:20','2','0.610658','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('100','9','0','2014-02-25 07:03:22','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('101','9','100','2014-02-25 07:03:22','2','0.130987','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('102','17','0','2014-02-25 07:23:09','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('103','17','102','2014-02-25 07:23:09','2','0.225397','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('104','14','0','2014-02-25 07:39:51','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('105','14','104','2014-02-25 07:39:51','2','0.165572','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('106','16','0','2014-02-26 22:12:22','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('107','16','106','2014-02-26 22:12:22','2','0.242533','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('108','21','0','2014-02-26 22:26:26','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('109','21','108','2014-02-26 22:26:26','2','0.312271','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('110','9','0','2014-02-26 22:36:23','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('111','9','110','2014-02-26 22:36:23','2','0.222201','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('112','17','0','2014-02-26 22:37:56','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('113','17','112','2014-02-26 22:37:56','2','0.10913','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('114','13','0','2014-02-26 22:44:54','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('115','13','114','2014-02-26 22:44:54','2','0.172981','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('116','20','0','2014-02-26 22:51:03','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('117','20','116','2014-02-26 22:51:03','2','0.103967','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('118','14','0','2014-02-27 00:07:58','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('119','14','118','2014-02-27 00:07:58','2','0.598472','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('120','15','0','2014-02-27 00:16:18','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('121','15','120','2014-02-27 00:16:18','2','0.0473149','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('122','18','0','2014-02-27 00:29:08','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('123','18','122','2014-02-27 00:29:08','2','0.407508','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('124','19','0','2014-02-27 00:36:22','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('125','19','124','2014-02-27 00:36:22','2','0.0340788','0','Action completed, fully processed');
INSERT INTO `glpi_crontasklogs` VALUES ('126','5','0','2014-02-27 00:41:31','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('127','5','126','2014-02-27 00:41:31','2','0.254856','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('128','6','0','2014-02-27 00:48:05','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('129','6','128','2014-02-27 00:48:05','2','0.0572391','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('130','12','0','2014-02-27 00:53:41','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('131','12','130','2014-02-27 00:53:41','1','0.079813','1','Clean 1 session file created since more than 180 seconds
');
INSERT INTO `glpi_crontasklogs` VALUES ('132','12','130','2014-02-27 00:53:41','2','0.0927539','1','Action completed, fully processed');
INSERT INTO `glpi_crontasklogs` VALUES ('133','21','0','2014-02-27 00:59:15','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('134','21','133','2014-02-27 00:59:15','2','0.0660479','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('135','17','0','2014-02-27 01:04:29','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('136','17','135','2014-02-27 01:04:29','2','0.0335801','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('137','9','0','2014-02-27 01:09:59','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('138','9','137','2014-02-27 01:09:59','2','0.171343','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('139','13','0','2014-02-27 01:19:46','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('140','13','139','2014-02-27 01:19:46','2','0.103794','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('141','20','0','2014-02-27 01:26:30','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('142','20','141','2014-02-27 01:26:30','2','0.0615439','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('143','21','0','2014-02-27 01:32:28','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('144','21','143','2014-02-27 01:32:28','2','0.062511','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('145','14','0','2014-02-27 01:37:33','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('146','14','145','2014-02-27 01:37:33','2','0.067492','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('147','17','0','2014-02-27 01:49:19','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('148','17','147','2014-02-27 01:49:19','2','0.050143','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('149','9','0','2014-02-27 01:54:22','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('150','9','149','2014-02-27 01:54:22','2','0.556881','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('151','21','0','2014-02-27 02:00:01','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('152','21','151','2014-02-27 02:00:01','2','0.141902','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('153','17','0','2014-02-27 02:05:02','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('154','17','153','2014-02-27 02:05:02','2','0.0616031','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('155','9','0','2014-02-27 12:05:05','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('156','9','155','2014-02-27 12:05:05','2','5.88167','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('157','21','0','2014-02-27 12:15:34','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('158','21','157','2014-02-27 12:15:34','2','0.085597','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('159','17','0','2014-02-27 12:16:27','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('160','17','159','2014-02-27 12:16:27','2','0.0527451','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('161','13','0','2014-02-27 12:16:49','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('162','13','161','2014-02-27 12:16:49','1','0.0834532','8','Limpiar 8 archivos gráficos creados desde hace mas de 3600 segundos
');
INSERT INTO `glpi_crontasklogs` VALUES ('163','13','161','2014-02-27 12:16:49','2','0.084955','8','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('164','20','0','2014-02-27 12:16:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('165','20','164','2014-02-27 12:16:54','2','0.0614669','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('166','14','0','2014-02-27 13:46:23','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('167','14','166','2014-02-27 13:46:23','2','2.58665','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('168','16','0','2014-02-27 20:59:04','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('169','16','168','2014-02-27 20:59:04','2','1.52403','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('170','9','0','2014-02-27 22:17:55','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('171','9','170','2014-02-27 22:17:55','2','1.34092','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('172','15','0','2014-02-27 22:39:05','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('173','15','172','2014-02-27 22:39:05','2','0.148954','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('174','21','0','2014-02-27 22:44:17','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('175','21','174','2014-02-27 22:44:17','2','0.304798','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('176','17','0','2014-02-27 22:49:40','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('177','17','176','2014-02-27 22:49:40','2','0.131977','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('178','13','0','2014-02-27 22:56:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('179','13','178','2014-02-27 22:56:48','2','0.153312','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('180','20','0','2014-02-27 23:02:16','0','0','0','Run mode: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('181','20','180','2014-02-27 23:02:16','2','0.306223','0','Action completed, no processing required');
INSERT INTO `glpi_crontasklogs` VALUES ('182','14','0','2014-02-27 23:11:00','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('183','14','182','2014-02-27 23:11:00','2','0.0791869','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('184','9','0','2014-02-28 23:30:39','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('185','9','184','2014-02-28 23:30:39','2','1.30622','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('186','21','0','2014-03-01 02:40:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('187','21','186','2014-03-01 02:40:32','2','0.255565','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('188','17','0','2014-03-01 02:45:43','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('189','17','188','2014-03-01 02:45:43','2','0.025538','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('190','13','0','2014-03-01 03:10:24','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('191','13','190','2014-03-01 03:10:24','1','0.142861','1','Limpieza del fichero de gráficas 1 creado hace más de 3600 segundos
');
INSERT INTO `glpi_crontasklogs` VALUES ('192','13','190','2014-03-01 03:10:24','2','0.143941','1','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('193','20','0','2014-03-01 03:17:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('194','20','193','2014-03-01 03:17:13','2','0.131209','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('195','14','0','2014-03-01 03:22:37','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('196','14','195','2014-03-01 03:22:37','2','0.0920632','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('197','18','0','2014-03-01 09:41:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('198','18','197','2014-03-01 09:41:48','2','0.794916','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('199','19','0','2014-03-01 10:03:43','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('200','19','199','2014-03-01 10:03:43','2','0.0689559','0','Acción finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('201','5','0','2014-03-01 10:33:53','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('202','5','201','2014-03-01 10:33:53','2','0.374687','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('203','6','0','2014-03-01 10:36:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('204','6','203','2014-03-01 10:36:08','2','0.032711','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('205','12','0','2014-03-04 07:27:14','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('206','12','205','2014-03-04 07:27:14','2','0.189461','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('207','16','0','2014-03-04 21:13:04','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('208','16','207','2014-03-04 21:13:04','2','0.557087','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('209','15','0','2014-03-04 21:57:31','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('210','15','209','2014-03-04 21:57:31','2','0.568299','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('211','9','0','2014-03-04 22:15:36','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('212','9','211','2014-03-04 22:15:36','2','0.447838','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('213','21','0','2014-03-08 12:33:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('214','21','213','2014-03-08 12:33:32','2','0.429704','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('215','17','0','2014-03-10 20:01:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('216','17','215','2014-03-10 20:01:54','2','0.520698','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('217','13','0','2014-03-12 09:14:44','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('218','13','217','2014-03-12 09:14:44','2','0.675361','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('219','20','0','2014-03-12 09:15:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('220','20','219','2014-03-12 09:15:32','2','0.137684','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('221','14','0','2014-03-12 10:25:43','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('222','14','221','2014-03-12 10:25:43','2','3.12047','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('223','8','0','2014-03-12 10:51:46','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('224','8','223','2014-03-12 10:51:46','2','38.092','492','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('225','18','0','2014-03-12 11:03:47','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('226','18','225','2014-03-12 11:03:47','2','0.988695','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('227','19','0','2014-03-12 11:09:20','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('228','19','227','2014-03-12 11:09:20','2','0.056684','0','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('229','5','0','2014-03-12 11:23:35','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('230','5','229','2014-03-12 11:23:35','2','1.68186','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('231','6','0','2014-03-12 11:26:31','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('232','6','231','2014-03-12 11:26:31','2','0.109418','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('233','9','0','2014-03-12 11:31:50','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('234','9','233','2014-03-12 11:31:50','2','0.260362','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('235','12','0','2014-03-12 11:37:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('236','12','235','2014-03-12 11:37:13','2','0.0221491','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('237','16','0','2014-03-12 11:42:49','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('238','16','237','2014-03-12 11:42:49','2','0.265724','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('239','15','0','2014-03-12 11:48:12','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('240','15','239','2014-03-12 11:48:12','2','0.0583858','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('241','21','0','2014-03-12 11:53:36','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('242','21','241','2014-03-12 11:53:36','2','0.149203','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('243','17','0','2014-03-12 11:58:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('244','17','243','2014-03-12 11:58:48','2','0.104179','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('245','13','0','2014-03-12 12:04:06','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('246','13','245','2014-03-12 12:04:06','2','0.159838','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('247','20','0','2014-03-12 12:09:28','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('248','20','247','2014-03-12 12:09:28','2','1.66478','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('249','14','0','2014-03-12 12:14:44','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('250','14','249','2014-03-12 12:14:44','2','0.22506','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('251','9','0','2014-03-12 12:20:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('252','9','251','2014-03-12 12:20:02','2','1.33038','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('253','21','0','2014-03-12 12:25:21','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('254','21','253','2014-03-12 12:25:21','2','0.178247','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('255','17','0','2014-03-12 12:30:35','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('256','17','255','2014-03-12 12:30:35','2','0.0704801','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('257','9','0','2014-03-12 12:36:01','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('258','9','257','2014-03-12 12:36:01','2','0.754438','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('259','21','0','2014-03-12 12:41:38','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('260','21','259','2014-03-12 12:41:38','2','0.399312','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('261','17','0','2014-03-12 12:46:53','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('262','17','261','2014-03-12 12:46:53','2','0.13936','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('263','9','0','2014-03-12 12:52:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('264','9','263','2014-03-12 12:52:08','2','0.120839','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('265','21','0','2014-03-12 14:30:44','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('266','21','265','2014-03-12 14:30:44','2','0.251044','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('267','17','0','2014-03-12 14:41:33','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('268','17','267','2014-03-12 14:41:33','2','0.24923','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('269','9','0','2014-03-12 14:48:18','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('270','9','269','2014-03-12 14:48:18','2','0.143871','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('271','13','0','2014-03-12 14:53:21','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('272','13','271','2014-03-12 14:53:21','2','0.0478041','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('273','20','0','2014-03-12 14:53:34','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('274','20','273','2014-03-12 14:53:34','2','0.069062','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('275','14','0','2014-03-12 15:05:39','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('276','14','275','2014-03-12 15:05:39','2','0.333356','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('277','21','0','2014-03-12 15:15:44','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('278','21','277','2014-03-12 15:15:44','2','0.053947','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('279','17','0','2014-03-12 15:43:38','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('280','17','279','2014-03-12 15:43:38','2','0.178847','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('281','9','0','2014-03-12 15:54:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('282','9','281','2014-03-12 15:54:32','2','0.192456','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('283','21','0','2014-03-12 16:07:40','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('284','21','283','2014-03-12 16:07:40','2','0.11596','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('285','17','0','2014-03-12 16:13:22','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('286','17','285','2014-03-12 16:13:22','2','0.02422','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('287','13','0','2014-03-12 16:19:27','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('288','13','287','2014-03-12 16:19:27','2','0.0640478','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('289','20','0','2014-03-12 16:39:18','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('290','20','289','2014-03-12 16:39:18','2','0.146428','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('291','9','0','2014-03-12 16:52:06','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('292','9','291','2014-03-12 16:52:06','2','0.0847151','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('293','14','0','2014-03-12 17:15:19','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('294','14','293','2014-03-12 17:15:19','2','0.225143','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('295','21','0','2014-03-12 18:24:15','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('296','21','295','2014-03-12 18:24:15','2','0.251393','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('297','17','0','2014-03-13 12:07:07','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('298','17','297','2014-03-13 12:07:07','2','0.981017','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('299','9','0','2014-03-13 12:15:23','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('300','9','299','2014-03-13 12:15:23','2','0.224454','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('301','13','0','2014-03-13 12:26:23','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('302','13','301','2014-03-13 12:26:23','2','0.110287','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('303','20','0','2014-03-13 12:32:30','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('304','20','303','2014-03-13 12:32:30','2','0.178291','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('305','14','0','2014-03-13 12:56:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('306','14','305','2014-03-13 12:56:13','2','0.132302','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('307','21','0','2014-03-14 12:50:59','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('308','21','307','2014-03-14 12:50:59','2','0.42708','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('309','16','0','2014-03-14 15:16:07','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('310','16','309','2014-03-14 15:16:07','2','0.272768','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('311','15','0','2014-03-14 15:19:36','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('312','15','311','2014-03-14 15:19:36','2','0.033165','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('313','18','0','2014-03-14 15:36:33','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('314','18','313','2014-03-14 15:36:33','2','0.0720561','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('315','19','0','2014-03-14 15:42:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('316','19','315','2014-03-14 15:42:52','2','0.0269551','0','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('317','5','0','2014-03-14 15:47:57','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('318','5','317','2014-03-14 15:47:57','2','0.0374289','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('319','6','0','2014-03-14 16:37:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('320','6','319','2014-03-14 16:37:13','2','0.38966','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('321','12','0','2014-03-14 16:46:56','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('322','12','321','2014-03-14 16:46:56','2','0.020205','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('323','17','0','2014-03-14 16:46:57','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('324','17','323','2014-03-14 16:46:57','2','0.109476','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('325','9','0','2014-03-14 17:30:04','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('326','9','325','2014-03-14 17:30:04','2','0.405198','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('327','13','0','2014-03-14 18:16:03','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('328','13','327','2014-03-14 18:16:03','2','0.313689','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('329','20','0','2014-03-14 19:56:21','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('330','20','329','2014-03-14 19:56:21','2','0.188816','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('331','14','0','2014-03-14 23:16:57','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('332','14','331','2014-03-14 23:16:57','2','0.269294','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('333','21','0','2014-03-14 23:47:11','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('334','21','333','2014-03-14 23:47:11','2','0.183705','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('335','17','0','2014-03-14 23:52:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('336','17','335','2014-03-14 23:52:13','2','0.354615','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('337','9','0','2014-03-15 00:06:26','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('338','9','337','2014-03-15 00:06:26','2','0.15954','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('339','13','0','2014-03-15 00:44:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('340','13','339','2014-03-15 00:44:08','2','0.102986','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('341','20','0','2014-03-15 00:50:03','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('342','20','341','2014-03-15 00:50:03','2','0.0668981','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('343','21','0','2014-03-15 01:03:42','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('344','21','343','2014-03-15 01:03:42','2','0.107632','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('345','17','0','2014-03-15 01:11:23','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('346','17','345','2014-03-15 01:11:23','2','0.04444','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('347','9','0','2014-03-15 01:16:19','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('348','9','347','2014-03-15 01:16:19','2','0.0604649','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('349','14','0','2014-03-15 01:33:26','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('350','14','349','2014-03-15 01:33:26','2','0.144359','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('351','21','0','2014-03-15 01:39:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('352','21','351','2014-03-15 01:39:08','2','0.0788422','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('353','17','0','2014-03-15 01:47:05','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('354','17','353','2014-03-15 01:47:05','2','0.0272291','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('355','9','0','2014-03-15 02:05:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('356','9','355','2014-03-15 02:05:08','2','0.287613','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('357','13','0','2014-03-15 16:46:30','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('358','13','357','2014-03-15 16:46:30','2','0.645275','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('359','21','0','2014-03-15 17:34:56','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('360','21','359','2014-03-15 17:34:56','2','0.423659','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('361','20','0','2014-03-15 17:35:29','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('362','20','361','2014-03-15 17:35:29','2','0.151844','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('363','17','0','2014-03-17 08:40:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('364','17','363','2014-03-17 08:40:48','2','1.52006','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('365','9','0','2014-03-21 12:08:56','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('366','9','365','2014-03-21 12:08:56','2','1.8721','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('367','14','0','2014-03-22 01:29:12','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('368','14','367','2014-03-22 01:29:12','2','0.559884','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('369','16','0','2014-03-27 20:26:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('370','16','369','2014-03-27 20:26:52','2','0.283097','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('371','15','0','2014-03-28 21:54:27','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('372','15','371','2014-03-28 21:54:27','2','0.493578','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('373','18','0','2014-04-03 16:23:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('374','18','373','2014-04-03 16:23:52','2','1.37787','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('375','19','0','2014-04-03 16:30:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('376','19','375','2014-04-03 16:30:32','2','0.065201','0','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('377','5','0','2014-04-03 16:35:57','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('378','5','377','2014-04-03 16:35:57','2','0.138153','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('379','6','0','2014-04-03 16:40:06','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('380','6','379','2014-04-03 16:40:06','2','0.149008','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('381','12','0','2014-04-03 16:46:03','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('382','12','381','2014-04-03 16:46:03','1','0.134719','11','Limpia los ficheros de sesión 11 creados desde hace más de 180 segundos
');
INSERT INTO `glpi_crontasklogs` VALUES ('383','12','381','2014-04-03 16:46:03','2','0.143601','11','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('384','21','0','2014-04-03 16:56:03','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('385','21','384','2014-04-03 16:56:03','2','0.0357101','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('386','13','0','2014-04-03 17:02:02','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('387','13','386','2014-04-03 17:02:02','2','0.260688','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('388','20','0','2014-04-03 17:09:49','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('389','20','388','2014-04-03 17:09:49','2','0.056798','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('390','17','0','2014-04-03 17:16:33','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('391','17','390','2014-04-03 17:16:33','2','0.0359251','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('392','8','0','2014-04-03 17:23:22','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('393','8','392','2014-04-03 17:23:22','2','4.92286','511','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('394','9','0','2014-04-03 17:28:25','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('395','9','394','2014-04-03 17:28:25','2','0.0641561','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('396','14','0','2014-04-03 17:43:09','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('397','14','396','2014-04-03 17:43:09','2','0.0594878','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('398','16','0','2014-04-03 18:01:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('399','16','398','2014-04-03 18:01:54','2','0.147897','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('400','15','0','2014-04-04 07:33:13','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('401','15','400','2014-04-04 07:33:13','2','0.190659','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('402','21','0','2014-04-04 08:23:39','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('403','21','402','2014-04-04 08:23:39','2','2.70711','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('404','17','0','2014-04-04 08:38:29','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('405','17','404','2014-04-04 08:38:29','2','0.150835','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('406','9','0','2014-04-04 08:44:04','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('407','9','406','2014-04-04 08:44:04','2','0.122056','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('408','13','0','2014-04-04 08:50:40','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('409','13','408','2014-04-04 08:50:40','2','0.377494','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('410','20','0','2014-04-04 08:55:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('411','20','410','2014-04-04 08:55:52','2','0.328094','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('412','14','0','2014-04-04 09:04:03','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('413','14','412','2014-04-04 09:04:03','2','0.194162','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('414','16','0','2014-04-04 09:09:48','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('415','16','414','2014-04-04 09:09:48','2','0.128913','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('416','21','0','2014-04-04 09:19:38','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('417','21','416','2014-04-04 09:19:38','2','0.0814741','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('418','17','0','2014-04-04 10:00:28','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('419','17','418','2014-04-04 10:00:28','2','1.33739','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('420','9','0','2014-04-04 10:05:36','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('421','9','420','2014-04-04 10:05:36','2','0.09707','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('422','21','0','2014-04-04 10:10:54','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('423','21','422','2014-04-04 10:10:54','2','0.254485','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('424','13','0','2014-04-04 10:17:59','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('425','13','424','2014-04-04 10:17:59','2','0.730527','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('426','20','0','2014-04-04 10:23:10','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('427','20','426','2014-04-04 10:23:10','2','0.14851','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('428','14','0','2014-04-04 10:30:35','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('429','14','428','2014-04-04 10:30:35','2','0.170506','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('430','17','0','2014-04-04 10:40:25','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('431','17','430','2014-04-04 10:40:25','2','0.345704','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('432','9','0','2014-04-04 10:46:04','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('433','9','432','2014-04-04 10:46:04','2','1.04765','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('434','21','0','2014-04-04 10:52:34','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('435','21','434','2014-04-04 10:52:34','2','0.282156','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('436','17','0','2014-04-28 19:19:08','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('437','17','436','2014-04-28 19:19:08','2','0.168963','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('438','9','0','2014-04-28 19:23:16','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('439','9','438','2014-04-28 19:23:16','2','0.16831','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('440','21','0','2014-05-26 16:54:40','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('441','21','440','2014-05-26 16:54:40','2','0.246328','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('442','13','0','2014-05-27 11:39:01','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('443','13','442','2014-05-27 11:39:01','2','2.3535','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('444','20','0','2014-05-27 11:39:23','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('445','20','444','2014-05-27 11:39:23','2','0.64864','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('446','14','0','2014-05-27 14:37:26','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('447','14','446','2014-05-27 14:37:26','2','1.44934','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('448','18','0','2014-05-27 14:44:18','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('449','18','448','2014-05-27 14:44:18','2','0.569218','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('450','19','0','2014-05-27 14:56:52','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('451','19','450','2014-05-27 14:56:52','2','0.0349841','0','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('452','5','0','2014-05-27 15:02:05','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('453','5','452','2014-05-27 15:02:05','2','0.0843458','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('454','6','0','2014-05-27 15:09:30','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('455','6','454','2014-05-27 15:09:30','2','0.099658','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('456','12','0','2014-05-27 15:28:31','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('457','12','456','2014-05-27 15:28:31','2','0.554927','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('458','15','0','2014-05-27 15:35:39','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('459','15','458','2014-05-27 15:35:39','2','0.147751','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('460','16','0','2014-05-27 15:40:58','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('461','16','460','2014-05-27 15:40:58','2','0.109732','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('462','8','0','2014-05-27 15:43:19','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('463','8','462','2014-05-27 15:43:19','2','25.6907','511','Tarea finalizada, proceso completo');
INSERT INTO `glpi_crontasklogs` VALUES ('464','17','0','2014-05-27 15:51:53','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('465','17','464','2014-05-27 15:51:53','2','0.032526','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('466','9','0','2014-05-27 15:56:53','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('467','9','466','2014-05-27 15:56:53','2','0.0563478','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('468','21','0','2014-05-27 16:05:32','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('469','21','468','2014-05-27 16:05:32','2','1.0477','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('470','13','0','2014-05-27 16:06:35','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('471','13','470','2014-05-27 16:06:35','2','0.305461','0','Tarea finalizada. nada que hacer');
INSERT INTO `glpi_crontasklogs` VALUES ('472','20','0','2014-05-27 16:08:23','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('473','20','472','2014-05-27 16:08:23','2','0.398385','0','Acción completada, nada por hacer.');
INSERT INTO `glpi_crontasklogs` VALUES ('474','14','0','2014-05-27 16:58:51','0','0','0','Modo de ejecución: GLPI');
INSERT INTO `glpi_crontasklogs` VALUES ('475','14','474','2014-05-27 16:58:51','2','0.0970199','0','Tarea finalizada. nada que hacer');

### Dump table glpi_crontasks

DROP TABLE IF EXISTS `glpi_crontasks`;
CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`name`),
  KEY `mode` (`mode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';

INSERT INTO `glpi_crontasks` VALUES ('2','CartridgeItem','cartridge','86400','10','0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('3','ConsumableItem','consumable','86400','10','0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('4','SoftwareLicense','software','86400',NULL,'0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('5','Contract','contract','86400',NULL,'1','1','3','0','24','30','2014-05-27 15:02:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('6','InfoCom','infocom','86400',NULL,'1','1','3','0','24','30','2014-05-27 15:09:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('7','CronTask','logs','86400','30','0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('8','CronTask','optimize','604800',NULL,'1','1','3','0','24','30','2014-05-27 15:43:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('9','MailCollector','mailgate','600','10','1','1','3','0','24','30','2014-05-27 15:56:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('10','DBconnection','checkdbreplicate','300',NULL,'0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('11','CronTask','checkupdate','604800',NULL,'0','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('12','CronTask','session','86400',NULL,'1','1','3','0','24','30','2014-05-27 15:28:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('13','CronTask','graph','3600',NULL,'1','1','3','0','24','30','2014-05-27 16:06:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('14','ReservationItem','reservation','3600',NULL,'1','1','3','0','24','30','2014-05-27 16:58:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('15','Ticket','closeticket','43200',NULL,'1','1','3','0','24','30','2014-05-27 15:35:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('16','Ticket','alertnotclosed','43200',NULL,'1','1','3','0','24','30','2014-05-27 15:41:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('17','SlaLevel_Ticket','slaticket','300',NULL,'1','1','3','0','24','30','2014-05-27 15:51:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('18','Ticket','createinquest','86400',NULL,'1','1','3','0','24','30','2014-05-27 14:44:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('19','Crontask','watcher','86400',NULL,'1','1','3','0','24','30','2014-05-27 14:56:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('20','TicketRecurrent','ticketrecurrent','3600',NULL,'1','1','3','0','24','30','2014-05-27 16:08:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('21','PlanningRecall','planningrecall','300',NULL,'1','1','3','0','24','30','2014-05-27 16:05:00',NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('24','PluginAccountsAccount','AccountsAlert','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('25','PluginBadgesBadge','BadgesAlert','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('35','PluginAdditionalalertsOcsAlert','AdditionalalertsOcs','86400',NULL,'1','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('36','PluginAdditionalalertsOcsAlert','AdditionalalertsNewOcs','3600',NULL,'1','1','3','0','24','30',NULL,NULL,NULL);
INSERT INTO `glpi_crontasks` VALUES ('37','PluginAdditionalalertsInfocomAlert','AdditionalalertsNotInfocom','3600',NULL,'1','1','3','0','24','30',NULL,NULL,NULL);

### Dump table glpi_devicecases

DROP TABLE IF EXISTS `glpi_devicecases`;
CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecasetypes_id` (`devicecasetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicecasetypes

DROP TABLE IF EXISTS `glpi_devicecasetypes`;
CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicecontrols

DROP TABLE IF EXISTS `glpi_devicecontrols`;
CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicedrives

DROP TABLE IF EXISTS `glpi_devicedrives`;
CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicegraphiccards

DROP TABLE IF EXISTS `glpi_devicegraphiccards`;
CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_deviceharddrives

DROP TABLE IF EXISTS `glpi_deviceharddrives`;
CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicememories

DROP TABLE IF EXISTS `glpi_devicememories`;
CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicememorytypes_id` (`devicememorytypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicememorytypes

DROP TABLE IF EXISTS `glpi_devicememorytypes`;
CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_devicememorytypes` VALUES ('1','EDO',NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('2','DDR',NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('3','SDRAM',NULL);
INSERT INTO `glpi_devicememorytypes` VALUES ('4','SDRAM-2',NULL);

### Dump table glpi_devicemotherboards

DROP TABLE IF EXISTS `glpi_devicemotherboards`;
CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicenetworkcards

DROP TABLE IF EXISTS `glpi_devicenetworkcards`;
CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicepcis

DROP TABLE IF EXISTS `glpi_devicepcis`;
CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicepowersupplies

DROP TABLE IF EXISTS `glpi_devicepowersupplies`;
CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_deviceprocessors

DROP TABLE IF EXISTS `glpi_deviceprocessors`;
CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_devicesoundcards

DROP TABLE IF EXISTS `glpi_devicesoundcards`;
CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_displaypreferences

DROP TABLE IF EXISTS `glpi_displaypreferences`;
CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  KEY `rank` (`rank`),
  KEY `num` (`num`),
  KEY `itemtype` (`itemtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_displaypreferences` VALUES ('32','Computer','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('34','Computer','45','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('33','Computer','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('31','Computer','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('30','Computer','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('86','DocumentType','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('49','Monitor','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('50','Monitor','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('51','Monitor','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('52','Monitor','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('44','Printer','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('38','NetworkEquipment','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('39','NetworkEquipment','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('45','Printer','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('46','Printer','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('63','Software','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('62','Software','5','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('61','Software','23','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('83','CartridgeItem','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('82','CartridgeItem','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('57','Peripheral','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('56','Peripheral','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('55','Peripheral','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('29','Computer','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('35','Computer','3','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('36','Computer','19','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('37','Computer','17','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('40','NetworkEquipment','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('41','NetworkEquipment','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('42','NetworkEquipment','11','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('43','NetworkEquipment','19','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('47','Printer','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('48','Printer','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('53','Monitor','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('54','Monitor','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('58','Peripheral','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('59','Peripheral','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('60','Peripheral','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('64','Contact','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('65','Contact','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('66','Contact','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('67','Contact','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('68','Contact','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('69','Supplier','9','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('70','Supplier','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('71','Supplier','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('72','Supplier','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('73','Supplier','10','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('74','Supplier','6','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('75','Contract','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('76','Contract','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('77','Contract','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('78','Contract','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('79','Contract','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('80','Contract','11','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('84','CartridgeItem','23','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('85','CartridgeItem','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('88','DocumentType','6','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('89','DocumentType','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('90','DocumentType','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('91','Document','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('92','Document','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('93','Document','7','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('94','Document','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('95','Document','16','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('96','User','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('98','User','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('99','User','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('100','User','3','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('101','ConsumableItem','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('102','ConsumableItem','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('103','ConsumableItem','23','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('104','ConsumableItem','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('105','NetworkEquipment','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('106','Printer','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('107','Monitor','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('108','Peripheral','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('109','User','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('110','Phone','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('111','Phone','23','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('112','Phone','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('113','Phone','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('114','Phone','40','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('115','Phone','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('116','Phone','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('117','Group','16','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('118','AllAssets','31','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('119','ReservationItem','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('120','ReservationItem','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('125','Budget','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('122','Software','72','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('123','Software','163','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('124','Budget','5','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('126','Budget','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('127','Budget','19','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('128','Crontask','8','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('129','Crontask','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('130','Crontask','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('131','Crontask','7','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('132','RequestType','14','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('133','RequestType','15','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('134','NotificationTemplate','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('135','NotificationTemplate','16','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('136','Notification','5','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('137','Notification','6','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('138','Notification','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('139','Notification','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('140','Notification','80','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('141','Notification','86','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('142','MailCollector','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('143','MailCollector','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('144','AuthLDAP','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('145','AuthLDAP','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('146','AuthMail','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('147','AuthMail','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('210','IPNetwork','14','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('209','WifiNetwork','10','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('150','Profile','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('151','Profile','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('152','Profile','19','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('153','Transfer','19','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('154','TicketValidation','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('155','TicketValidation','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('156','TicketValidation','8','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('157','TicketValidation','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('158','TicketValidation','9','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('159','TicketValidation','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('160','NotImportedEmail','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('161','NotImportedEmail','5','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('162','NotImportedEmail','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('163','NotImportedEmail','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('164','NotImportedEmail','16','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('165','NotImportedEmail','19','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('166','RuleRightParameter','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('167','Ticket','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('168','Ticket','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('169','Ticket','15','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('170','Ticket','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('171','Ticket','4','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('172','Ticket','5','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('173','Ticket','7','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('174','Calendar','19','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('175','Holiday','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('176','Holiday','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('177','Holiday','13','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('178','SLA','4','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('179','Ticket','18','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('180','AuthLdap','30','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('181','AuthMail','6','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('208','FQDN','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('183','FieldUnicity','1','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('184','FieldUnicity','80','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('185','FieldUnicity','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('186','FieldUnicity','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('187','FieldUnicity','86','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('188','FieldUnicity','30','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('189','Problem','21','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('190','Problem','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('191','Problem','19','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('192','Problem','15','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('193','Problem','3','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('194','Problem','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('195','Problem','18','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('196','Vlan','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('197','TicketRecurrent','11','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('198','TicketRecurrent','12','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('199','TicketRecurrent','13','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('200','TicketRecurrent','15','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('201','TicketRecurrent','14','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('202','Reminder','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('203','Reminder','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('204','Reminder','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('205','Reminder','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('206','Reminder','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('207','Reminder','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('211','IPNetwork','10','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('212','IPNetwork','11','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('213','IPNetwork','12','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('214','IPNetwork','13','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('215','NetworkName','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('216','NetworkName','13','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('217','RSSFeed','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('218','RSSFeed','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('219','RSSFeed','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('220','RSSFeed','19','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('221','RSSFeed','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('222','RSSFeed','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('223','Blacklist','12','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('224','Blacklist','11','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('225','ReservationItem','5','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('262','PluginAccountsHelpdesk','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('261','PluginAccountsHelpdesk','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('260','PluginAccountsHelpdesk','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('259','PluginAccountsHelpdesk','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('258','PluginAccountsHelpdesk','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('257','PluginAccountsHelpdesk','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('253','PluginAccountsAccount','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('252','PluginAccountsAccount','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('251','PluginAccountsAccount','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('250','PluginCustomfieldsDropdownsItem','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('249','PluginCustomfieldsDropdownsItem','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('256','PluginAccountsAccount','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('255','PluginAccountsAccount','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('254','PluginAccountsAccount','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('245','PluginAppliancesAppliance','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('246','PluginAppliancesAppliance','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('247','PluginAppliancesAppliance','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('248','PluginAppliancesAppliance','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('263','PluginAccountsGroup','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('264','PluginAccountsGroup','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('265','PluginAccountsGroup','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('266','PluginAccountsGroup','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('267','PluginAccountsGroup','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('268','PluginAccountsGroup','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('269','PluginAccountsGroup','8','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('270','PluginBadgesBadge','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('271','PluginBadgesBadge','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('272','PluginBadgesBadge','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('273','PluginPositionsPosition','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('274','PluginCertificatesCertificate','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('275','PluginCertificatesCertificate','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('276','PluginCertificatesCertificate','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('277','PluginDatabasesDatabase','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('278','PluginDatabasesDatabase','6','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('279','PluginDatabasesDatabase','7','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('280','PluginDomainsDomain','2','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('281','PluginDomainsDomain','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('282','PluginDomainsDomain','4','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('283','PluginDomainsDomain','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('284','PluginDomainsDomain','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('285','PluginWebapplicationsWebapplication','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('286','PluginWebapplicationsWebapplication','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('287','PluginWebapplicationsWebapplication','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('288','PluginWebapplicationsWebapplication','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('289','PluginWebapplicationsWebapplication','8','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('290','PluginResourcesResource','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('291','PluginResourcesResource','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('292','PluginResourcesResource','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('293','PluginResourcesResource','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('294','PluginResourcesResource','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('295','PluginResourcesResource','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('296','PluginResourcesTask','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('297','PluginResourcesTask','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('298','PluginResourcesTask','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('299','PluginResourcesTask','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('300','PluginResourcesTask','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('301','PluginResourcesDirectory','34','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('302','PluginResourcesDirectory','9','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('303','PluginResourcesDirectory','4320','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('304','PluginResourcesDirectory','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('305','PluginResourcesDirectory','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('306','PluginResourcesDirectory','10','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('307','PluginResourcesDirectory','6','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('308','PluginResourcesDirectory','11','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('309','PluginResourcesDirectory','4313','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('310','PluginResourcesDirectory','4314','10','0');
INSERT INTO `glpi_displaypreferences` VALUES ('311','PluginResourcesDirectory','4316','11','0');
INSERT INTO `glpi_displaypreferences` VALUES ('312','PluginResourcesChecklistconfig','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('313','PluginResourcesChecklistconfig','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('314','PluginResourcesChecklistconfig','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('315','PluginResourcesResourceResting','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('316','PluginResourcesResourceResting','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('317','PluginResourcesResourceResting','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('318','PluginResourcesResourceResting','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('319','PluginResourcesResourceHoliday','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('320','PluginResourcesResourceHoliday','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('321','PluginResourcesResourceHoliday','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('322','PluginResourcesResourceHoliday','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('323','PluginResourcesEmployment','9','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('324','PluginResourcesEmployment','5','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('325','PluginResourcesEmployment','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('326','PluginResourcesEmployment','6','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('327','PluginResourcesEmployment','7','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('328','PluginResourcesEmployment','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('329','PluginResourcesEmployment','10','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('330','PluginResourcesBudget','6','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('331','PluginResourcesBudget','7','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('332','PluginResourcesBudget','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('333','PluginResourcesBudget','3','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('334','PluginResourcesBudget','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('335','PluginResourcesBudget','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('336','PluginResourcesBudget','9','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('337','PluginResourcesRecap','4350','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('338','PluginResourcesRecap','4351','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('339','PluginResourcesRecap','4352','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('340','PluginResourcesRecap','4353','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('341','PluginResourcesRecap','4354','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('342','PluginResourcesRecap','4355','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('343','PluginResourcesRecap','4356','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('344','PluginResourcesRecap','4357','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('345','PluginResourcesRecap','4358','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('346','PluginResourcesRecap','4359','10','0');
INSERT INTO `glpi_displaypreferences` VALUES ('347','PluginResourcesRecap','4360','11','0');
INSERT INTO `glpi_displaypreferences` VALUES ('348','PluginResourcesRecap','4361','12','0');
INSERT INTO `glpi_displaypreferences` VALUES ('349','PluginResourcesRecap','4362','13','0');
INSERT INTO `glpi_displaypreferences` VALUES ('350','PluginResourcesRecap','4363','14','0');
INSERT INTO `glpi_displaypreferences` VALUES ('351','PluginResourcesRecap','4364','15','0');
INSERT INTO `glpi_displaypreferences` VALUES ('352','PluginResourcesRecap','4365','16','0');
INSERT INTO `glpi_displaypreferences` VALUES ('353','PluginResourcesRecap','4366','17','0');
INSERT INTO `glpi_displaypreferences` VALUES ('354','PluginResourcesRecap','4367','18','0');
INSERT INTO `glpi_displaypreferences` VALUES ('355','PluginResourcesRecap','4368','19','0');
INSERT INTO `glpi_displaypreferences` VALUES ('356','PluginResourcesRecap','4369','20','0');
INSERT INTO `glpi_displaypreferences` VALUES ('357','PluginResourcesRecap','4370','21','0');
INSERT INTO `glpi_displaypreferences` VALUES ('358','PluginIdeaboxIdeabox','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('359','PluginIdeaboxIdeabox','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('360','PluginIdeaboxIdeabox','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('361','PluginIdeaboxComment','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('362','PluginIdeaboxComment','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('363','PluginIdeaboxComment','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('364','PluginProjetProjet','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('365','PluginProjetProjet','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('366','PluginProjetProjet','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('367','PluginProjetProjet','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('368','PluginProjetProjet','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('369','PluginProjetProjet','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('370','PluginProjetTask','7','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('371','PluginProjetTask','10','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('372','PluginProjetTask','11','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('373','PluginProjetTask','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('374','PluginProjetTask','8','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('375','PluginProjetTask','9','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('376','PluginProjetTask','16','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('377','PluginMreportingConfig','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('378','PluginMreportingConfig','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('379','PluginMreportingConfig','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('380','PluginMreportingConfig','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('381','PluginMreportingConfig','6','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('382','PluginMreportingConfig','8','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('383','PluginRoutetablesRoutetable','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('384','PluginRoutetablesRoutetable','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('385','PluginRoutetablesRoutetable','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('386','PluginRoutetablesRoutetable','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('387','PluginGenericobjectType','10','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('388','PluginGenericobjectType','9','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('389','PluginGenericobjectType','8','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('390','PluginGenericobjectType','7','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('391','PluginGenericobjectType','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('392','PluginGenericobjectType','2','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('393','PluginGenericobjectType','4','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('394','PluginGenericobjectType','11','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('395','PluginGenericobjectType','12','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('396','PluginGenericobjectType','14','10','0');
INSERT INTO `glpi_displaypreferences` VALUES ('397','PluginGenericobjectType','15','11','0');
INSERT INTO `glpi_displaypreferences` VALUES ('398','PluginRacksRack','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('399','PluginRacksRack','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('400','PluginRacksRack','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('401','PluginRacksRack','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('402','PluginAddressingAddressing','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('403','PluginAddressingAddressing','3','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('404','PluginAddressingAddressing','4','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('405','PluginAddressingAddressing','1000','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('406','PluginAddressingAddressing','1001','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('407','PluginArchiresLocationQuery','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('408','PluginArchiresLocationQuery','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('409','PluginArchiresLocationQuery','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('410','PluginArchiresLocationQuery','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('411','PluginArchiresLocationQuery','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('412','PluginArchiresLocationQuery','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('413','PluginArchiresLocationQuery','8','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('414','PluginArchiresNetworkEquipmentQuery','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('415','PluginArchiresNetworkEquipmentQuery','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('416','PluginArchiresNetworkEquipmentQuery','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('417','PluginArchiresNetworkEquipmentQuery','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('418','PluginArchiresNetworkEquipmentQuery','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('419','PluginArchiresNetworkEquipmentQuery','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('420','PluginArchiresApplianceQuery','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('421','PluginArchiresApplianceQuery','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('422','PluginArchiresApplianceQuery','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('423','PluginArchiresApplianceQuery','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('424','PluginArchiresApplianceQuery','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('425','PluginArchiresApplianceQuery','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('426','PluginFormcreatorForm','0','0','0');
INSERT INTO `glpi_displaypreferences` VALUES ('427','PluginFormcreatorForm','1','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('428','PluginFormcreatorForm','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('429','PluginFormcreatorForm','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('430','PluginFormcreatorForm','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('431','PluginShellcommandsShellcommand','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('432','PluginShellcommandsShellcommand','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('433','PluginShellcommandsShellcommand','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('434','PluginShellcommandsShellcommand','5','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('435','PluginOcsinventoryngOcsServer','3','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('436','PluginOcsinventoryngOcsServer','19','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('437','PluginOcsinventoryngOcsServer','6','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('438','PluginOcsinventoryngNotimportedcomputer','2','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('439','PluginOcsinventoryngNotimportedcomputer','3','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('440','PluginOcsinventoryngNotimportedcomputer','4','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('441','PluginOcsinventoryngNotimportedcomputer','5','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('442','PluginOcsinventoryngNotimportedcomputer','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('443','PluginOcsinventoryngNotimportedcomputer','7','6','0');
INSERT INTO `glpi_displaypreferences` VALUES ('444','PluginOcsinventoryngNotimportedcomputer','8','7','0');
INSERT INTO `glpi_displaypreferences` VALUES ('445','PluginOcsinventoryngNotimportedcomputer','9','8','0');
INSERT INTO `glpi_displaypreferences` VALUES ('446','PluginOcsinventoryngNotimportedcomputer','10','9','0');
INSERT INTO `glpi_displaypreferences` VALUES ('447','PluginOcsinventoryngDetail','5','1','0');
INSERT INTO `glpi_displaypreferences` VALUES ('448','PluginOcsinventoryngDetail','2','2','0');
INSERT INTO `glpi_displaypreferences` VALUES ('449','PluginOcsinventoryngDetail','3','3','0');
INSERT INTO `glpi_displaypreferences` VALUES ('450','PluginOcsinventoryngDetail','4','4','0');
INSERT INTO `glpi_displaypreferences` VALUES ('451','PluginOcsinventoryngDetail','6','5','0');
INSERT INTO `glpi_displaypreferences` VALUES ('452','PluginOcsinventoryngDetail','80','6','0');

### Dump table glpi_documentcategories

DROP TABLE IF EXISTS `glpi_documentcategories`;
CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `unicity` (`documentcategories_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documents

DROP TABLE IF EXISTS `glpi_documents`;
CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `users_id` (`users_id`),
  KEY `documentcategories_id` (`documentcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sha1sum` (`sha1sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documents_items

DROP TABLE IF EXISTS `glpi_documents_items`;
CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_documenttypes

DROP TABLE IF EXISTS `glpi_documenttypes`;
CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ext`),
  KEY `name` (`name`),
  KEY `is_uploadable` (`is_uploadable`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_documenttypes` VALUES ('1','JPEG','jpg','jpg-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('2','PNG','png','png-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('3','GIF','gif','gif-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('4','BMP','bmp','bmp-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('5','Photoshop','psd','psd-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('6','TIFF','tif','tif-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('7','AIFF','aiff','aiff-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('8','Windows Media','asf','asf-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('9','Windows Media','avi','avi-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('44','C source','c','c-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('27','RealAudio','rm','rm-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('16','Midi','mid','mid-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('17','QuickTime','mov','mov-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('18','MP3','mp3','mp3-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('19','MPEG','mpg','mpg-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('20','Ogg Vorbis','ogg','ogg-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('24','QuickTime','qt','qt-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('10','BZip','bz2','bz2-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('25','RealAudio','ra','ra-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('26','RealAudio','ram','ram-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('11','Word','doc','doc-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('12','DjVu','djvu','','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('42','MNG','mng','','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('13','PostScript','eps','ps-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('14','GZ','gz','gz-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('37','WAV','wav','wav-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('15','HTML','html','html-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('34','Flash','swf','swf-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('21','PDF','pdf','pdf-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('22','PowerPoint','ppt','ppt-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('23','PostScript','ps','ps-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('40','Windows Media','wmv','wmv-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('28','RTF','rtf','rtf-dist.png','','1','2004-12-13 19:47:21',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('29','StarOffice','sdd','sdd-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('30','StarOffice','sdw','sdw-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('31','Stuffit','sit','sit-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('43','Adobe Illustrator','ai','ai-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('32','OpenOffice Impress','sxi','sxi-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('33','OpenOffice','sxw','sxw-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('46','DVI','dvi','dvi-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('35','TGZ','tgz','tgz-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('36','texte','txt','txt-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('49','RedHat/Mandrake/SuSE','rpm','rpm-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('38','Excel','xls','xls-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('39','XML','xml','xml-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('41','Zip','zip','zip-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('45','Debian','deb','deb-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('47','C header','h','h-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('48','Pascal','pas','pas-dist.png','','1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('50','OpenOffice Calc','sxc','sxc-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('51','LaTeX','tex','tex-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('52','GIMP multi-layer','xcf','xcf-dist.png','','1','2004-12-13 19:47:22',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('53','JPEG','jpeg','jpg-dist.png','','1','2005-03-07 22:23:17',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('54','Oasis Open Office Writer','odt','odt-dist.png','','1','2006-01-21 17:41:13',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('55','Oasis Open Office Calc','ods','ods-dist.png','','1','2006-01-21 17:41:31',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('56','Oasis Open Office Impress','odp','odp-dist.png','','1','2006-01-21 17:42:54',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('57','Oasis Open Office Impress Template','otp','odp-dist.png','','1','2006-01-21 17:43:58',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('58','Oasis Open Office Writer Template','ott','odt-dist.png','','1','2006-01-21 17:44:41',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('59','Oasis Open Office Calc Template','ots','ods-dist.png','','1','2006-01-21 17:45:30',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('60','Oasis Open Office Math','odf','odf-dist.png','','1','2006-01-21 17:48:05',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('61','Oasis Open Office Draw','odg','odg-dist.png','','1','2006-01-21 17:48:31',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('62','Oasis Open Office Draw Template','otg','odg-dist.png','','1','2006-01-21 17:49:46',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('63','Oasis Open Office Base','odb','odb-dist.png','','1','2006-01-21 18:03:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('64','Oasis Open Office HTML','oth','oth-dist.png','','1','2006-01-21 18:05:27',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('65','Oasis Open Office Writer Master','odm','odm-dist.png','','1','2006-01-21 18:06:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('66','Oasis Open Office Chart','odc','','','1','2006-01-21 18:07:48',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('67','Oasis Open Office Image','odi','','','1','2006-01-21 18:08:18',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('68','Word XML','docx','doc-dist.png',NULL,'1','2011-01-18 11:40:42',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('69','Excel XML','xlsx','xls-dist.png',NULL,'1','2011-01-18 11:40:42',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('70','PowerPoint XML','pptx','ppt-dist.png',NULL,'1','2011-01-18 11:40:42',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('71','Comma-Separated Values','csv','csv-dist.png',NULL,'1','2011-12-06 09:48:34',NULL);
INSERT INTO `glpi_documenttypes` VALUES ('72','Scalable Vector Graphics','svg','svg-dist.png',NULL,'1','2011-12-06 09:48:34',NULL);

### Dump table glpi_domains

DROP TABLE IF EXISTS `glpi_domains`;
CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities

DROP TABLE IF EXISTS `glpi_entities`;
CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_entities` VALUES ('0','Smart Cities','-1','Smart Cities','Ruta base','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','-1','0','0','-10','1',NULL,'1','0','0',NULL,'0','0','0','0','0','1','-10','0','0','10','10');
INSERT INTO `glpi_entities` VALUES ('1','Ciudadania','0','Smart Cities > Ciudadania','Ciudadanía inteligente','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 17:16:30','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('2','Economía','0','Smart Cities > Economía','Economía inteligente','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 17:17:23','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('3','Energía & Infraestructura','0','Smart Cities > Energía & Infraestructura','Energía & Infraestructura Inteligente','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 17:23:19','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('4','Gobernanza & Entidades Publicas','0','Smart Cities > Gobernanza & Entidades Publicas','Gobernanza & Entidades Publicas','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 17:32:14','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('5','Medio Ambiente & Biodiversidad','0','Smart Cities > Medio Ambiente & Biodiversidad','Medio Ambiente & Biodiversidad','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 18:02:21','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('6','Movilidad & Transporte','0','Smart Cities > Movilidad & Transporte','Movilidad y transporte inteligente','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-03 18:03:33','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('7','Salud, Deporte & Calidad de Vida','0','Smart Cities > Salud, Deporte & Calidad de Vida','Salud, Deporte & Calidad de Vida','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 07:35:19','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('8','Seguridad & Riesgo','0','Smart Cities > Seguridad & Riesgo','Seguridad & Riesgo','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 08:24:10','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('9','Turismo & Relaciones Internacionales','0','Smart Cities > Turismo & Relaciones Internacionales','Turismo & Relaciones Internacionales','2',NULL,'[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 08:38:56','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('10','Control Social','1','Smart Cities > Ciudadania > Control Social','Control Social','3','{\"10\":\"10\"}','[\"0\",\"1\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:06:05','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('11','Derechos Humanos','1','Smart Cities > Ciudadania > Derechos Humanos','Derechos Humanos','3','{\"11\":\"11\"}','[\"0\",\"1\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:10:03','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('12','Juventud Proactiva','1','Smart Cities > Ciudadania > Juventud Proactiva','Juventud Proactiva','3','{\"12\":\"12\"}','[\"0\",\"1\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:10:30','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('13','1','2','Smart Cities > Economía > 1','1','3',NULL,'{\"0\":\"0\",\"2\":\"2\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:13:20','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('14','2','2','Smart Cities > Economía > 2','2','3',NULL,'{\"0\":\"0\",\"2\":\"2\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:13:39','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('15','3','2','Smart Cities > Economía > 3','3','3',NULL,'{\"0\":\"0\",\"2\":\"2\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 09:19:35','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('16','1','3','Smart Cities > Energía & Infraestructura > 1','1','3',NULL,'{\"0\":\"0\",\"3\":\"3\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:01:50','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('17','2','3','Smart Cities > Energía & Infraestructura > 2','2','3',NULL,'{\"0\":\"0\",\"3\":\"3\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:02:14','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('18','3','3','Smart Cities > Energía & Infraestructura > 3','2','3',NULL,'{\"0\":\"0\",\"3\":\"3\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:02:49','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('19','1','4','Smart Cities > Gobernanza & Entidades Publicas > 1','1','3',NULL,'{\"0\":\"0\",\"4\":\"4\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:05:33','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('20','2','4','Smart Cities > Gobernanza & Entidades Publicas > 2','2','3',NULL,'{\"0\":\"0\",\"4\":\"4\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:05:52','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('21','3','4','Smart Cities > Gobernanza & Entidades Publicas > 3','3','3',NULL,'{\"0\":\"0\",\"4\":\"4\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:06:08','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('22','1','5','Smart Cities > Medio Ambiente & Biodiversidad > 1','1','3',NULL,'{\"0\":\"0\",\"5\":\"5\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:10:29','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('23','2','5','Smart Cities > Medio Ambiente & Biodiversidad > 2','2','3',NULL,'{\"0\":\"0\",\"5\":\"5\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:11:04','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('24','3','5','Smart Cities > Medio Ambiente & Biodiversidad > 3','3','3',NULL,'{\"0\":\"0\",\"5\":\"5\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:14:36','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('25','1','6','Smart Cities > Movilidad & Transporte > 1','1','3',NULL,'{\"0\":\"0\",\"6\":\"6\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:17:37','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('26','2','6','Smart Cities > Movilidad & Transporte > 2','2','3',NULL,'{\"0\":\"0\",\"6\":\"6\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:23:05','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('27','3','6','Smart Cities > Movilidad & Transporte > 3','3','3',NULL,'{\"0\":\"0\",\"6\":\"6\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:23:22','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('28','1','7','Smart Cities > Salud, Deporte & Calidad de Vida > 1','1','3',NULL,'{\"0\":\"0\",\"7\":\"7\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:24:01','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('29','2','7','Smart Cities > Salud, Deporte & Calidad de Vida > 2','2','3',NULL,'{\"0\":\"0\",\"7\":\"7\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:24:20','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('30','3','7','Smart Cities > Salud, Deporte & Calidad de Vida > 3','3','3',NULL,'{\"0\":\"0\",\"7\":\"7\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:24:40','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('31','1','8','Smart Cities > Seguridad & Riesgo > 1','1','3',NULL,'{\"0\":\"0\",\"8\":\"8\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:25:01','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('32','2','8','Smart Cities > Seguridad & Riesgo > 2','2','3',NULL,'{\"0\":\"0\",\"8\":\"8\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:25:28','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('33','3','8','Smart Cities > Seguridad & Riesgo > 3','3','3',NULL,'{\"0\":\"0\",\"8\":\"8\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:25:55','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('34','1','9','Smart Cities > Turismo & Relaciones Internacionales > 1','1','3',NULL,'{\"0\":\"0\",\"9\":\"9\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:26:16','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('35','2','9','Smart Cities > Turismo & Relaciones Internacionales > 2','2','3',NULL,'{\"0\":\"0\",\"9\":\"9\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:26:43','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');
INSERT INTO `glpi_entities` VALUES ('36','3','9','Smart Cities > Turismo & Relaciones Internacionales > 3','3','3',NULL,'{\"0\":\"0\",\"9\":\"9\"}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','2014-04-04 10:27:03','-2','0','-10',NULL,'-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2');

### Dump table glpi_entities_knowbaseitems

DROP TABLE IF EXISTS `glpi_entities_knowbaseitems`;
CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities_reminders

DROP TABLE IF EXISTS `glpi_entities_reminders`;
CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_entities_rssfeeds

DROP TABLE IF EXISTS `glpi_entities_rssfeeds`;
CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_events

DROP TABLE IF EXISTS `glpi_events`;
CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `level` (`level`),
  KEY `item` (`type`,`items_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_events` VALUES ('1','-1','system','2014-02-22 16:32:44','login','3','glpi inicio de sesión desde la IP 181.135.39.143');
INSERT INTO `glpi_events` VALUES ('2','2','users','2014-02-22 16:47:33','setup','5','glpi actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('3','2','users','2014-02-22 17:20:02','setup','5','glpi actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('4','-1','system','2014-02-22 17:26:46','login','3','Inicio de sesión fallido para elite.linux desde la IP 181.135.39.143');
INSERT INTO `glpi_events` VALUES ('5','-1','system','2014-02-22 17:26:59','login','3','elitelinux inicio de sesión desde la IP 181.135.39.143');
INSERT INTO `glpi_events` VALUES ('6','4','RequestType','2014-02-24 15:55:28','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('7','2','RequestType','2014-02-24 15:56:15','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('8','1','RequestType','2014-02-24 15:57:50','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('9','2','RequestType','2014-02-24 15:58:16','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('10','3','RequestType','2014-02-24 15:58:52','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('11','5','RequestType','2014-02-24 15:59:51','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('12','6','RequestType','2014-02-24 16:00:30','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('13','7','RequestType','2014-02-24 16:02:17','setup','4','elitelinux agrega el elemento Red Social');
INSERT INTO `glpi_events` VALUES ('14','8','RequestType','2014-02-24 16:11:09','setup','4','elitelinux agrega el elemento Mensajería Instantánea');
INSERT INTO `glpi_events` VALUES ('15','9','RequestType','2014-02-24 16:12:28','setup','4','elitelinux agrega el elemento Mensaje de Texto SMS');
INSERT INTO `glpi_events` VALUES ('16','10','RequestType','2014-02-24 16:15:26','setup','4','elitelinux agrega el elemento Grabación de Audio ó Video');
INSERT INTO `glpi_events` VALUES ('17','9','RequestType','2014-02-24 16:16:37','setup','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('18','1','links','2014-02-24 16:22:45','setup','4','elitelinux agrega el elemento HackSpace-GLPI 0.84.4');
INSERT INTO `glpi_events` VALUES ('19','1','links','2014-02-24 16:24:04','setup','4','elitelinux agrega un enlace con un elemento');
INSERT INTO `glpi_events` VALUES ('20','3','notificationtemplates','2014-02-24 17:03:13','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('21','6','notificationtemplates','2014-02-24 17:04:29','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('22','8','notificationtemplates','2014-02-24 17:05:19','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('23','9','notificationtemplates','2014-02-24 17:05:51','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('24','12','notificationtemplates','2014-02-24 17:06:42','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('25','12','notificationtemplates','2014-02-24 17:07:07','notification','4','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('26','-1','system','2014-02-24 21:28:25','login','3','elitelinux inicio de sesión desde la IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('27','2','users','2014-02-24 22:03:50','setup','5','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('28','-1','system','2014-02-24 22:47:32','login','3','elitelinux log in from IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('29','2','users','2014-02-24 22:47:50','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('30','2','users','2014-02-24 22:47:55','setup','5','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('31','2','users','2014-02-24 22:48:59','setup','5','elitelinux actualizado un elemento');
INSERT INTO `glpi_events` VALUES ('32','2','users','2014-02-24 22:55:53','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('33','2','users','2014-02-24 23:12:28','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('34','-1','system','2014-02-25 06:50:52','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('35','2','users','2014-02-25 07:03:54','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('36','-1','system','2014-02-26 22:12:29','login','3','elitelinux inicio de sesión desde la IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('37','-1','system','2014-02-26 22:39:35','login','3','elitelinux log in from IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('38','-1','system','2014-02-27 12:08:13','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('39','6','users','2014-02-27 12:15:30','setup','4','elitelinux adds the item daniac');
INSERT INTO `glpi_events` VALUES ('40','-1','system','2014-02-27 12:16:36','login','3','Inicio de sesión fallido para daniac desde la IP 181.136.52.50');
INSERT INTO `glpi_events` VALUES ('41','-1','system','2014-02-27 12:18:19','login','3','daniac inicio de sesión desde la IP 181.136.52.50');
INSERT INTO `glpi_events` VALUES ('42','-1','system','2014-02-27 22:32:44','login','3','elitelinux inicio de sesión desde la IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('43','2','users','2014-02-27 22:43:04','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('44','2','users','2014-02-27 22:57:28','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('45','2','users','2014-02-27 23:02:29','setup','5','elitelinux updates an item');
INSERT INTO `glpi_events` VALUES ('46','-1','system','2014-02-28 23:30:50','login','3','elitelinux inicio de sesión desde la IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('47','-1','system','2014-03-01 02:40:37','login','3','elitelinux accesos desde la IP 190.250.113.45');
INSERT INTO `glpi_events` VALUES ('48','4','users','2014-03-01 02:44:07','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('49','5','users','2014-03-01 10:34:19','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('50','5','users','2014-03-01 10:35:02','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('51','3','users','2014-03-01 10:35:46','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('52','-1','system','2014-03-02 20:04:02','login','3','Inicio de sesión fallido para  desde la IP 181.133.132.161');
INSERT INTO `glpi_events` VALUES ('53','-1','system','2014-03-04 21:45:00','login','3','elitelinux inicio de sesión desde la IP 190.250.175.114');
INSERT INTO `glpi_events` VALUES ('54','-1','system','2014-03-12 09:14:47','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('55','-1','system','2014-03-12 09:15:34','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('56','-1','system','2014-03-12 11:26:41','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('57','-1','system','2014-03-12 14:30:47','login','3','elitelinux accesos desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('58','-1','system','2014-03-12 14:53:56','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('59','-1','system','2014-03-12 15:05:42','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('60','-1','system','2014-03-14 15:19:38','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('61','-1','system','2014-03-15 16:50:24','login','3','elitelinux inicio de sesión desde la IP 181.133.132.161');
INSERT INTO `glpi_events` VALUES ('62','-1','system','2014-03-15 17:36:02','login','3','normal inicio de sesión desde la IP 181.133.132.161');
INSERT INTO `glpi_events` VALUES ('63','-1','system','2014-04-03 16:24:39','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('64','0','Entity','2014-04-03 16:27:53','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('65','1','Location','2014-04-03 16:29:35','setup','4','elitelinux añade el elemento Comuna 1');
INSERT INTO `glpi_events` VALUES ('66','2','Location','2014-04-03 16:30:18','setup','4','elitelinux añade el elemento Comuna 2');
INSERT INTO `glpi_events` VALUES ('67','-1','system','2014-04-03 16:40:16','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('68','-1','system','2014-04-03 16:46:05','login','3','elitelinux accesos desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('69','1','Entity','2014-04-03 17:16:30','setup','4','elitelinux añade el elemento Ciudadania');
INSERT INTO `glpi_events` VALUES ('70','2','Entity','2014-04-03 17:17:23','setup','4','elitelinux añade el elemento Economía');
INSERT INTO `glpi_events` VALUES ('71','3','Entity','2014-04-03 17:23:19','setup','4','elitelinux añade el elemento Gobernanza');
INSERT INTO `glpi_events` VALUES ('72','3','Entity','2014-04-03 17:28:14','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('73','4','Entity','2014-04-03 17:32:14','setup','4','elitelinux añade el elemento Gobernanza');
INSERT INTO `glpi_events` VALUES ('74','5','Entity','2014-04-03 18:02:21','setup','4','elitelinux añade el elemento Medio Ambiente');
INSERT INTO `glpi_events` VALUES ('75','6','Entity','2014-04-03 18:03:33','setup','4','elitelinux añade el elemento Movilidad');
INSERT INTO `glpi_events` VALUES ('76','6','Entity','2014-04-04 07:34:02','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('77','7','Entity','2014-04-04 07:35:19','setup','4','elitelinux añade el elemento Salud & Calidad de Vida');
INSERT INTO `glpi_events` VALUES ('78','8','Entity','2014-04-04 08:24:10','setup','4','elitelinux añade el elemento Seguridad & Riesgo');
INSERT INTO `glpi_events` VALUES ('79','3','Entity','2014-04-04 08:26:57','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('80','9','Entity','2014-04-04 08:38:56','setup','4','elitelinux añade el elemento Relaciones & Turismo');
INSERT INTO `glpi_events` VALUES ('81','9','Entity','2014-04-04 08:50:30','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('82','9','Entity','2014-04-04 08:54:05','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('83','4','Entity','2014-04-04 08:55:47','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('84','5','Entity','2014-04-04 08:57:07','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('85','7','Entity','2014-04-04 09:04:23','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('86','10','Entity','2014-04-04 09:06:05','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('87','11','Entity','2014-04-04 09:10:03','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('88','12','Entity','2014-04-04 09:10:30','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('89','13','Entity','2014-04-04 09:13:20','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('90','14','Entity','2014-04-04 09:13:39','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('91','15','Entity','2014-04-04 09:19:35','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('92','16','Entity','2014-04-04 10:01:50','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('93','17','Entity','2014-04-04 10:02:14','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('94','18','Entity','2014-04-04 10:02:49','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('95','19','Entity','2014-04-04 10:05:33','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('96','20','Entity','2014-04-04 10:05:52','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('97','21','Entity','2014-04-04 10:06:08','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('98','22','Entity','2014-04-04 10:10:29','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('99','23','Entity','2014-04-04 10:11:04','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('100','24','Entity','2014-04-04 10:14:36','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('101','25','Entity','2014-04-04 10:17:37','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('102','26','Entity','2014-04-04 10:23:05','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('103','27','Entity','2014-04-04 10:23:22','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('104','28','Entity','2014-04-04 10:24:01','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('105','29','Entity','2014-04-04 10:24:20','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('106','30','Entity','2014-04-04 10:24:40','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('107','31','Entity','2014-04-04 10:25:01','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('108','32','Entity','2014-04-04 10:25:28','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('109','33','Entity','2014-04-04 10:25:55','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('110','34','Entity','2014-04-04 10:26:16','setup','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('111','35','Entity','2014-04-04 10:26:43','setup','4','elitelinux añade el elemento 2');
INSERT INTO `glpi_events` VALUES ('112','36','Entity','2014-04-04 10:27:03','setup','4','elitelinux añade el elemento 3');
INSERT INTO `glpi_events` VALUES ('113','10','Entity','2014-04-04 10:31:06','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('114','10','Entity','2014-04-04 10:44:07','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('115','11','Entity','2014-04-04 10:44:41','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('116','12','Entity','2014-04-04 10:47:22','setup','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('117','-1','system','2014-04-28 19:19:19','login','3','elitelinux inicio de sesión desde la IP 190.248.8.18');
INSERT INTO `glpi_events` VALUES ('118','-1','system','2014-05-26 16:55:05','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('119','-1','system','2014-05-27 14:37:14','login','3','Inicio de sesión fallido para  desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('120','-1','system','2014-05-27 14:39:11','login','3','elitelinux inicio de sesión desde la IP 190.145.55.180');
INSERT INTO `glpi_events` VALUES ('121','1','ticket','2014-05-27 15:31:40','tracking','4','elitelinux añade el elemento 1');
INSERT INTO `glpi_events` VALUES ('122','7','users','2014-05-27 15:51:49','setup','4','elitelinux añade el elemento sergioherrera');
INSERT INTO `glpi_events` VALUES ('123','7','users','2014-05-27 15:52:28','setup','5','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('124','1','ticket','2014-05-27 15:53:02','tracking','4','elitelinux actualiza un elemento');
INSERT INTO `glpi_events` VALUES ('125','1','ticket','2014-05-27 15:53:30','tracking','4','elitelinux añade un seguimiento');
INSERT INTO `glpi_events` VALUES ('126','-1','system','2014-05-27 15:57:36','login','3','sergioherrera inicio de sesión desde la IP 181.133.192.202');

### Dump table glpi_fieldblacklists

DROP TABLE IF EXISTS `glpi_fieldblacklists`;
CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_fieldunicities

DROP TABLE IF EXISTS `glpi_fieldunicities`;
CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';

INSERT INTO `glpi_fieldunicities` VALUES ('1','Resources creation','1','PluginResourcesResource','0','name,firstname','1','1','1','');

### Dump table glpi_filesystems

DROP TABLE IF EXISTS `glpi_filesystems`;
CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_filesystems` VALUES ('1','ext',NULL);
INSERT INTO `glpi_filesystems` VALUES ('2','ext2',NULL);
INSERT INTO `glpi_filesystems` VALUES ('3','ext3',NULL);
INSERT INTO `glpi_filesystems` VALUES ('4','ext4',NULL);
INSERT INTO `glpi_filesystems` VALUES ('5','FAT',NULL);
INSERT INTO `glpi_filesystems` VALUES ('6','FAT32',NULL);
INSERT INTO `glpi_filesystems` VALUES ('7','VFAT',NULL);
INSERT INTO `glpi_filesystems` VALUES ('8','HFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('9','HPFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('10','HTFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('11','JFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('12','JFS2',NULL);
INSERT INTO `glpi_filesystems` VALUES ('13','NFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('14','NTFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('15','ReiserFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('16','SMBFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('17','UDF',NULL);
INSERT INTO `glpi_filesystems` VALUES ('18','UFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('19','XFS',NULL);
INSERT INTO `glpi_filesystems` VALUES ('20','ZFS',NULL);

### Dump table glpi_fqdns

DROP TABLE IF EXISTS `glpi_fqdns`;
CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `fqdn` (`fqdn`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups

DROP TABLE IF EXISTS `glpi_groups`;
CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ldap_field` (`ldap_field`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `ldap_value` (`ldap_value`(200)),
  KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  KEY `groups_id` (`groups_id`),
  KEY `is_requester` (`is_requester`),
  KEY `is_assign` (`is_assign`),
  KEY `is_notify` (`is_notify`),
  KEY `is_itemgroup` (`is_itemgroup`),
  KEY `is_usergroup` (`is_usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_knowbaseitems

DROP TABLE IF EXISTS `glpi_groups_knowbaseitems`;
CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_problems

DROP TABLE IF EXISTS `glpi_groups_problems`;
CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_reminders

DROP TABLE IF EXISTS `glpi_groups_reminders`;
CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_rssfeeds

DROP TABLE IF EXISTS `glpi_groups_rssfeeds`;
CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_tickets

DROP TABLE IF EXISTS `glpi_groups_tickets`;
CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_groups_users

DROP TABLE IF EXISTS `glpi_groups_users`;
CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_manager` (`is_manager`),
  KEY `is_userdelegate` (`is_userdelegate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_holidays

DROP TABLE IF EXISTS `glpi_holidays`;
CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_perpetual` (`is_perpetual`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_infocoms

DROP TABLE IF EXISTS `glpi_infocoms`;
CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `buy_date` (`buy_date`),
  KEY `alert` (`alert`),
  KEY `budgets_id` (`budgets_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_interfacetypes

DROP TABLE IF EXISTS `glpi_interfacetypes`;
CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_interfacetypes` VALUES ('1','IDE',NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('2','SATA',NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('3','SCSI',NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('4','USB',NULL);
INSERT INTO `glpi_interfacetypes` VALUES ('5','AGP','');
INSERT INTO `glpi_interfacetypes` VALUES ('6','PCI','');
INSERT INTO `glpi_interfacetypes` VALUES ('7','PCIe','');
INSERT INTO `glpi_interfacetypes` VALUES ('8','PCI-X','');

### Dump table glpi_ipaddresses

DROP TABLE IF EXISTS `glpi_ipaddresses`;
CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_0` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_1` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_2` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_3` int(10) unsigned NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `textual` (`name`),
  KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipaddresses_ipnetworks

DROP TABLE IF EXISTS `glpi_ipaddresses_ipnetworks`;
CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  KEY `ipnetworks_id` (`ipnetworks_id`),
  KEY `ipaddresses_id` (`ipaddresses_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipnetworks

DROP TABLE IF EXISTS `glpi_ipnetworks`;
CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_0` int(10) unsigned NOT NULL DEFAULT '0',
  `address_1` int(10) unsigned NOT NULL DEFAULT '0',
  `address_2` int(10) unsigned NOT NULL DEFAULT '0',
  `address_3` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask_0` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_1` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_2` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_3` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_0` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_1` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_2` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_3` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `network_definition` (`entities_id`,`address`,`netmask`),
  KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ipnetworks_vlans

DROP TABLE IF EXISTS `glpi_ipnetworks_vlans`;
CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicecases

DROP TABLE IF EXISTS `glpi_items_devicecases`;
CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecases_id` (`devicecases_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicecontrols

DROP TABLE IF EXISTS `glpi_items_devicecontrols`;
CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecontrols_id` (`devicecontrols_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicedrives

DROP TABLE IF EXISTS `glpi_items_devicedrives`;
CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicedrives_id` (`devicedrives_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicegraphiccards

DROP TABLE IF EXISTS `glpi_items_devicegraphiccards`;
CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  KEY `specificity` (`memory`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_deviceharddrives

DROP TABLE IF EXISTS `glpi_items_deviceharddrives`;
CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceharddrives_id` (`deviceharddrives_id`),
  KEY `specificity` (`capacity`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicememories

DROP TABLE IF EXISTS `glpi_items_devicememories`;
CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicememories_id` (`devicememories_id`),
  KEY `specificity` (`size`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicemotherboards

DROP TABLE IF EXISTS `glpi_items_devicemotherboards`;
CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicemotherboards_id` (`devicemotherboards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicenetworkcards

DROP TABLE IF EXISTS `glpi_items_devicenetworkcards`;
CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  KEY `specificity` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicepcis

DROP TABLE IF EXISTS `glpi_items_devicepcis`;
CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepcis_id` (`devicepcis_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicepowersupplies

DROP TABLE IF EXISTS `glpi_items_devicepowersupplies`;
CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_deviceprocessors

DROP TABLE IF EXISTS `glpi_items_deviceprocessors`;
CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceprocessors_id` (`deviceprocessors_id`),
  KEY `specificity` (`frequency`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_devicesoundcards

DROP TABLE IF EXISTS `glpi_items_devicesoundcards`;
CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicesoundcards_id` (`devicesoundcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_items_problems

DROP TABLE IF EXISTS `glpi_items_problems`;
CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_itilcategories

DROP TABLE IF EXISTS `glpi_itilcategories`;
CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  KEY `is_incident` (`is_incident`),
  KEY `is_request` (`is_request`),
  KEY `is_problem` (`is_problem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitemcategories

DROP TABLE IF EXISTS `glpi_knowbaseitemcategories`;
CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems

DROP TABLE IF EXISTS `glpi_knowbaseitems`;
CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `is_faq` (`is_faq`),
  KEY `date_mod` (`date_mod`),
  FULLTEXT KEY `fulltext` (`name`,`answer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems_profiles

DROP TABLE IF EXISTS `glpi_knowbaseitems_profiles`;
CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_knowbaseitems_users

DROP TABLE IF EXISTS `glpi_knowbaseitems_users`;
CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_links

DROP TABLE IF EXISTS `glpi_links`;
CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_links` VALUES ('1','0','0','HackSpace-GLPI 0.84.4','https://github.com/elitelinux/hack-space/archive/master.zip','Enlace al archivo de descarga de la Aplicación HackSpace GLPI');

### Dump table glpi_links_itemtypes

DROP TABLE IF EXISTS `glpi_links_itemtypes`;
CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  KEY `links_id` (`links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_links_itemtypes` VALUES ('1','1','Software');

### Dump table glpi_locations

DROP TABLE IF EXISTS `glpi_locations`;
CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  KEY `locations_id` (`locations_id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_locations` VALUES ('1','0','0','Comuna 1','0','Comuna 1','Comuna 1','1',NULL,NULL,'01','01');
INSERT INTO `glpi_locations` VALUES ('2','0','0','Comuna 2','0','Comuna 2','Comuna 02','1',NULL,NULL,'02','02');

### Dump table glpi_logs

DROP TABLE IF EXISTS `glpi_logs`;
CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `itemtype_link` (`itemtype_link`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_logs` VALUES ('1','Profile','4','','0','glpi (2)','2014-02-22 16:34:37','1','Super-Admin','Sistema');
INSERT INTO `glpi_logs` VALUES ('2','Profile','3','','0','glpi (2)','2014-02-22 16:35:03','1','Admin','Administrador');
INSERT INTO `glpi_logs` VALUES ('3','Profile','3','','0','glpi (2)','2014-02-22 16:35:03','118','0','1');
INSERT INTO `glpi_logs` VALUES ('4','Profile','6','','0','glpi (2)','2014-02-22 16:35:56','1','Technician','Técnico');
INSERT INTO `glpi_logs` VALUES ('5','Profile','6','','0','glpi (2)','2014-02-22 16:35:56','118','0','1');
INSERT INTO `glpi_logs` VALUES ('6','Profile','2','','0','glpi (2)','2014-02-22 16:36:32','1','Observer','Observador');
INSERT INTO `glpi_logs` VALUES ('7','Profile','2','','0','glpi (2)','2014-02-22 16:36:32','118','0','1');
INSERT INTO `glpi_logs` VALUES ('8','Profile','5','','0','glpi (2)','2014-02-22 16:37:11','1','Hotliner','Cliente');
INSERT INTO `glpi_logs` VALUES ('9','Profile','1','','0','glpi (2)','2014-02-22 16:39:00','1','Self-Service','Usuari@');
INSERT INTO `glpi_logs` VALUES ('10','Profile','1','','0','glpi (2)','2014-02-22 16:39:00','118','0','1');
INSERT INTO `glpi_logs` VALUES ('11','User','2','','0','Villa Juan Fernando (2)','2014-02-22 16:47:33','1','glpi','Administrador');
INSERT INTO `glpi_logs` VALUES ('12','User','2','','0','Villa Juan Fernando (2)','2014-02-22 16:47:33','34','','Villa');
INSERT INTO `glpi_logs` VALUES ('13','User','2','','0','Villa Juan Fernando (2)','2014-02-22 16:47:33','9','','Juan Fernando');
INSERT INTO `glpi_logs` VALUES ('14','User','2','','0','Villa Juan Fernando (2)','2014-02-22 16:47:33','22','','CINO');
INSERT INTO `glpi_logs` VALUES ('15','User','2','UserEmail','17','Villa Juan Fernando (2)','2014-02-22 16:47:33','0','','elite.linux@gmail.com (1)');
INSERT INTO `glpi_logs` VALUES ('16','UserEmail','1','0','20','Villa Juan Fernando (2)','2014-02-22 16:47:33','0','','');
INSERT INTO `glpi_logs` VALUES ('17','User','2','','0','Villa Juan Fernando (2)','2014-02-22 17:20:02','1','Administrador','elitelinux');
INSERT INTO `glpi_logs` VALUES ('18','NotificationTemplate','3','','0','Villa Juan Fernando (2)','2014-02-24 17:03:13','1','Alert Reservation','Alerta de Reserva');
INSERT INTO `glpi_logs` VALUES ('19','NotificationTemplate','3','','0','Villa Juan Fernando (2)','2014-02-24 17:03:13','16','','Alerta que se genera cuando se realiza una reserva');
INSERT INTO `glpi_logs` VALUES ('20','NotificationTemplate','6','','0','Villa Juan Fernando (2)','2014-02-24 17:04:29','1','Alert Tickets not closed','Alerta Tickets sin cerrar');
INSERT INTO `glpi_logs` VALUES ('21','NotificationTemplate','6','','0','Villa Juan Fernando (2)','2014-02-24 17:04:29','16','','Alerta que se Genera cuando los Tickets no están cerrados');
INSERT INTO `glpi_logs` VALUES ('22','NotificationTemplate','8','','0','Villa Juan Fernando (2)','2014-02-24 17:05:19','1','Cartridges','Cartuchos');
INSERT INTO `glpi_logs` VALUES ('23','NotificationTemplate','8','','0','Villa Juan Fernando (2)','2014-02-24 17:05:19','16','','Notificación relacionada con cartuchos de impresora');
INSERT INTO `glpi_logs` VALUES ('24','NotificationTemplate','9','','0','Villa Juan Fernando (2)','2014-02-24 17:05:51','1','Consumables','Consumibles');
INSERT INTO `glpi_logs` VALUES ('25','NotificationTemplate','9','','0','Villa Juan Fernando (2)','2014-02-24 17:05:51','16','','Notificación relacionada con elementos consumibles');
INSERT INTO `glpi_logs` VALUES ('26','NotificationTemplate','12','','0','Villa Juan Fernando (2)','2014-02-24 17:06:42','1','Contracts','Contractos');
INSERT INTO `glpi_logs` VALUES ('27','NotificationTemplate','12','','0','Villa Juan Fernando (2)','2014-02-24 17:06:42','16','','Notificación relacionada a los contratos');
INSERT INTO `glpi_logs` VALUES ('28','NotificationTemplate','12','','0','Villa Juan Fernando (2)','2014-02-24 17:07:07','1','Contractos','Contratos');
INSERT INTO `glpi_logs` VALUES ('29','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-24 22:03:50','17','','en_US');
INSERT INTO `glpi_logs` VALUES ('30','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-24 22:47:50','17','en_US','NULL');
INSERT INTO `glpi_logs` VALUES ('31','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-24 22:48:59','17','','en_US');
INSERT INTO `glpi_logs` VALUES ('34','PluginThemesTheme','1','0','20','Juan Fernando Villa (2) (2)','2014-02-27 00:55:05','0','','');
INSERT INTO `glpi_logs` VALUES ('35','PluginThemesTheme','2','0','20','Juan Fernando Villa (2) (2)','2014-02-27 00:55:05','0','','');
INSERT INTO `glpi_logs` VALUES ('36','NotificationTemplate','38','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('37','NotificationTemplate','38','NotificationTemplateTranslation','17','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','Template translation (38)');
INSERT INTO `glpi_logs` VALUES ('38','NotificationTemplateTranslation','38','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('39','Notification','89','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('40','Notification','90','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('41','Notification','91','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('42','Notification','92','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('43','NotificationTemplate','39','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('44','NotificationTemplate','39','NotificationTemplateTranslation','17','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','Template translation (39)');
INSERT INTO `glpi_logs` VALUES ('45','NotificationTemplateTranslation','39','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('46','Notification','93','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('47','NotificationTemplate','40','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('48','NotificationTemplate','40','NotificationTemplateTranslation','17','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','Template translation (40)');
INSERT INTO `glpi_logs` VALUES ('49','NotificationTemplateTranslation','40','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('50','Notification','94','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:04:52','0','','');
INSERT INTO `glpi_logs` VALUES ('51','NotificationTemplate','44','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:21:02','0','','');
INSERT INTO `glpi_logs` VALUES ('52','NotificationTemplate','44','NotificationTemplateTranslation','17','Juan Fernando Villa (2) (2)','2014-02-27 01:21:02','0','','Template translation (44)');
INSERT INTO `glpi_logs` VALUES ('53','NotificationTemplateTranslation','44','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:21:02','0','','');
INSERT INTO `glpi_logs` VALUES ('54','Notification','100','0','20','Juan Fernando Villa (2) (2)','2014-02-27 01:21:02','0','','');
INSERT INTO `glpi_logs` VALUES ('55','Calendar','2','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('56','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (6)');
INSERT INTO `glpi_logs` VALUES ('57','CalendarSegment','6','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('58','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (7)');
INSERT INTO `glpi_logs` VALUES ('59','CalendarSegment','7','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('60','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (8)');
INSERT INTO `glpi_logs` VALUES ('61','CalendarSegment','8','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('62','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (9)');
INSERT INTO `glpi_logs` VALUES ('63','CalendarSegment','9','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('64','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (10)');
INSERT INTO `glpi_logs` VALUES ('65','CalendarSegment','10','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('66','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (11)');
INSERT INTO `glpi_logs` VALUES ('67','CalendarSegment','11','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('68','Calendar','2','CalendarSegment','17','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','N/A (12)');
INSERT INTO `glpi_logs` VALUES ('69','CalendarSegment','12','0','20','Juan Fernando Villa (2) (2)','2014-02-27 02:04:14','0','','');
INSERT INTO `glpi_logs` VALUES ('70','User','6','UserEmail','17','Juan Fernando Villa (2) (2)','2014-02-27 12:15:30','0','','kreativemedia@sentidoskreativos.com (2)');
INSERT INTO `glpi_logs` VALUES ('71','UserEmail','2','0','20','Juan Fernando Villa (2) (2)','2014-02-27 12:15:30','0','','');
INSERT INTO `glpi_logs` VALUES ('72','User','6','Profile','17','Juan Fernando Villa (2) (2)','2014-02-27 12:15:30','0','','Administrador (3)');
INSERT INTO `glpi_logs` VALUES ('73','User','6','0','20','Juan Fernando Villa (2) (2)','2014-02-27 12:15:30','0','','');
INSERT INTO `glpi_logs` VALUES ('74','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-27 22:43:04','17','en_US','es_ES');
INSERT INTO `glpi_logs` VALUES ('75','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-27 22:57:28','17','es_ES','en_US');
INSERT INTO `glpi_logs` VALUES ('76','User','2','','0','Juan Fernando Villa (2) (2)','2014-02-27 23:02:29','17','en_US','es_ES');
INSERT INTO `glpi_logs` VALUES ('77','PluginThemesTheme','3','0','20','Juan Fernando Villa (2) (2)','2014-03-12 11:24:27','0','','');
INSERT INTO `glpi_logs` VALUES ('78','PluginThemesTheme','4','0','20','Juan Fernando Villa (2) (2)','2014-03-12 14:42:27','0','','');
INSERT INTO `glpi_logs` VALUES ('79','PluginThemesTheme','5','0','20','Juan Fernando Villa (2) (2)','2014-03-12 14:48:44','0','','');
INSERT INTO `glpi_logs` VALUES ('80','PluginThemesTheme','1','0','20','Juan Fernando Villa (2) (2)','2014-03-12 15:15:48','0','','');
INSERT INTO `glpi_logs` VALUES ('81','PluginThemesTheme','2','0','20','Juan Fernando Villa (2) (2)','2014-03-12 15:15:48','0','','');
INSERT INTO `glpi_logs` VALUES ('82','PluginThemesTheme','3','0','20','Juan Fernando Villa (2) (2)','2014-03-12 15:16:18','0','','');
INSERT INTO `glpi_logs` VALUES ('83','PluginThemesTheme','4','0','20','Juan Fernando Villa (2) (2)','2014-03-12 15:45:03','0','','');
INSERT INTO `glpi_logs` VALUES ('84','User','5','','0','normal (5) (5)','2014-03-15 17:36:02','15','0','1');
INSERT INTO `glpi_logs` VALUES ('85','Entity','0','','0','Juan Fernando Villa (2) (2)','2014-04-03 16:27:53','14','Root entity','Smart Cities');
INSERT INTO `glpi_logs` VALUES ('86','Entity','0','','0','Juan Fernando Villa (2) (2)','2014-04-03 16:27:53','1','Root entity','Smart Cities');
INSERT INTO `glpi_logs` VALUES ('87','Entity','0','','0','Juan Fernando Villa (2) (2)','2014-04-03 16:27:53','16','','Ruta base');
INSERT INTO `glpi_logs` VALUES ('88','Location','1','0','20','Juan Fernando Villa (2) (2)','2014-04-03 16:29:35','0','','');
INSERT INTO `glpi_logs` VALUES ('89','Location','2','0','20','Juan Fernando Villa (2) (2)','2014-04-03 16:30:18','0','','');
INSERT INTO `glpi_logs` VALUES ('90','Entity','1','0','20','Juan Fernando Villa (2) (2)','2014-04-03 17:16:30','0','','');
INSERT INTO `glpi_logs` VALUES ('91','Entity','2','0','20','Juan Fernando Villa (2) (2)','2014-04-03 17:17:23','0','','');
INSERT INTO `glpi_logs` VALUES ('92','Entity','3','0','20','Juan Fernando Villa (2) (2)','2014-04-03 17:23:19','0','','');
INSERT INTO `glpi_logs` VALUES ('93','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-03 17:28:14','14','Gobernanza','Energía');
INSERT INTO `glpi_logs` VALUES ('94','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-03 17:28:14','1','Smart Cities > Gobernanza','Smart Cities > Energía');
INSERT INTO `glpi_logs` VALUES ('95','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-03 17:28:14','16','Gobierno Inteligente','Energía Inteligente');
INSERT INTO `glpi_logs` VALUES ('96','Entity','4','0','20','Juan Fernando Villa (2) (2)','2014-04-03 17:32:14','0','','');
INSERT INTO `glpi_logs` VALUES ('97','Entity','5','0','20','Juan Fernando Villa (2) (2)','2014-04-03 18:02:21','0','','');
INSERT INTO `glpi_logs` VALUES ('98','Entity','6','0','20','Juan Fernando Villa (2) (2)','2014-04-03 18:03:33','0','','');
INSERT INTO `glpi_logs` VALUES ('99','Entity','6','','0','Juan Fernando Villa (2) (2)','2014-04-04 07:34:02','14','Movilidad','Movilidad & Transporte');
INSERT INTO `glpi_logs` VALUES ('100','Entity','6','','0','Juan Fernando Villa (2) (2)','2014-04-04 07:34:02','1','Smart Cities > Movilidad','Smart Cities > Movilidad & Transporte');
INSERT INTO `glpi_logs` VALUES ('101','Entity','6','','0','Juan Fernando Villa (2) (2)','2014-04-04 07:34:02','16','Movilidad inteligente','Movilidad y transporte inteligente');
INSERT INTO `glpi_logs` VALUES ('102','Entity','7','0','20','Juan Fernando Villa (2) (2)','2014-04-04 07:35:19','0','','');
INSERT INTO `glpi_logs` VALUES ('103','Entity','8','0','20','Juan Fernando Villa (2) (2)','2014-04-04 08:24:10','0','','');
INSERT INTO `glpi_logs` VALUES ('104','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:26:57','14','Energía','Energía & Infraestructura');
INSERT INTO `glpi_logs` VALUES ('105','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:26:57','1','Smart Cities > Energía','Smart Cities > Energía & Infraestructura');
INSERT INTO `glpi_logs` VALUES ('106','Entity','3','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:26:57','16','Energía Inteligente','Energía & Infraestructura Inteligente');
INSERT INTO `glpi_logs` VALUES ('107','Entity','9','0','20','Juan Fernando Villa (2) (2)','2014-04-04 08:38:56','0','','');
INSERT INTO `glpi_logs` VALUES ('108','Entity','9','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:50:30','14','Relaciones & Turismo','Turismo & Relaciones Internacionales');
INSERT INTO `glpi_logs` VALUES ('109','Entity','9','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:50:30','1','Smart Cities > Relaciones & Turismo','Smart Cities > Turismo & Relaciones Internacionales');
INSERT INTO `glpi_logs` VALUES ('110','Entity','9','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:50:30','16','Relaciones & Turismo','Turismo & Relaciones Internacionales');
INSERT INTO `glpi_logs` VALUES ('111','Entity','4','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:55:47','14','Gobernanza','Gobernanza & Entidades Publicas');
INSERT INTO `glpi_logs` VALUES ('112','Entity','4','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:55:47','1','Smart Cities > Gobernanza','Smart Cities > Gobernanza & Entidades Publicas');
INSERT INTO `glpi_logs` VALUES ('113','Entity','4','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:55:47','16','Gobierno Inteligente','Gobernanza & Entidades Publicas');
INSERT INTO `glpi_logs` VALUES ('114','Entity','5','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:57:07','14','Medio Ambiente','Medio Ambiente & Biodiversidad');
INSERT INTO `glpi_logs` VALUES ('115','Entity','5','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:57:07','1','Smart Cities > Medio Ambiente','Smart Cities > Medio Ambiente & Biodiversidad');
INSERT INTO `glpi_logs` VALUES ('116','Entity','5','','0','Juan Fernando Villa (2) (2)','2014-04-04 08:57:07','16','Medio Ambiente inteligente','Medio Ambiente & Biodiversidad');
INSERT INTO `glpi_logs` VALUES ('117','Entity','7','','0','Juan Fernando Villa (2) (2)','2014-04-04 09:04:23','14','Salud & Calidad de Vida','Salud, Deporte & Calidad de Vida');
INSERT INTO `glpi_logs` VALUES ('118','Entity','7','','0','Juan Fernando Villa (2) (2)','2014-04-04 09:04:23','1','Smart Cities > Salud & Calidad de Vida','Smart Cities > Salud, Deporte & Calidad de Vida');
INSERT INTO `glpi_logs` VALUES ('119','Entity','7','','0','Juan Fernando Villa (2) (2)','2014-04-04 09:04:23','16','Salud & Calidad de Vida','Salud, Deporte & Calidad de Vida');
INSERT INTO `glpi_logs` VALUES ('120','Entity','1','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:06:05','0','','1 (10)');
INSERT INTO `glpi_logs` VALUES ('121','Entity','10','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:06:05','0','','');
INSERT INTO `glpi_logs` VALUES ('122','Entity','1','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:10:03','0','','2 (11)');
INSERT INTO `glpi_logs` VALUES ('123','Entity','11','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:10:03','0','','');
INSERT INTO `glpi_logs` VALUES ('124','Entity','1','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:10:30','0','','3 (12)');
INSERT INTO `glpi_logs` VALUES ('125','Entity','12','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:10:30','0','','');
INSERT INTO `glpi_logs` VALUES ('126','Entity','2','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:13:20','0','','1 (13)');
INSERT INTO `glpi_logs` VALUES ('127','Entity','13','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:13:20','0','','');
INSERT INTO `glpi_logs` VALUES ('128','Entity','2','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:13:39','0','','2 (14)');
INSERT INTO `glpi_logs` VALUES ('129','Entity','14','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:13:39','0','','');
INSERT INTO `glpi_logs` VALUES ('130','Entity','2','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 09:19:35','0','','3 (15)');
INSERT INTO `glpi_logs` VALUES ('131','Entity','15','0','20','Juan Fernando Villa (2) (2)','2014-04-04 09:19:35','0','','');
INSERT INTO `glpi_logs` VALUES ('132','Entity','3','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:01:50','0','','1 (16)');
INSERT INTO `glpi_logs` VALUES ('133','Entity','16','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:01:50','0','','');
INSERT INTO `glpi_logs` VALUES ('134','Entity','3','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:02:14','0','','2 (17)');
INSERT INTO `glpi_logs` VALUES ('135','Entity','17','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:02:14','0','','');
INSERT INTO `glpi_logs` VALUES ('136','Entity','3','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:02:49','0','','3 (18)');
INSERT INTO `glpi_logs` VALUES ('137','Entity','18','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:02:49','0','','');
INSERT INTO `glpi_logs` VALUES ('138','Entity','4','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:05:33','0','','1 (19)');
INSERT INTO `glpi_logs` VALUES ('139','Entity','19','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:05:33','0','','');
INSERT INTO `glpi_logs` VALUES ('140','Entity','4','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:05:52','0','','2 (20)');
INSERT INTO `glpi_logs` VALUES ('141','Entity','20','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:05:52','0','','');
INSERT INTO `glpi_logs` VALUES ('142','Entity','4','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:06:08','0','','3 (21)');
INSERT INTO `glpi_logs` VALUES ('143','Entity','21','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:06:08','0','','');
INSERT INTO `glpi_logs` VALUES ('144','Entity','5','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:10:29','0','','1 (22)');
INSERT INTO `glpi_logs` VALUES ('145','Entity','22','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:10:29','0','','');
INSERT INTO `glpi_logs` VALUES ('146','Entity','5','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:11:04','0','','2 (23)');
INSERT INTO `glpi_logs` VALUES ('147','Entity','23','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:11:04','0','','');
INSERT INTO `glpi_logs` VALUES ('148','Entity','5','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:14:36','0','','3 (24)');
INSERT INTO `glpi_logs` VALUES ('149','Entity','24','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:14:36','0','','');
INSERT INTO `glpi_logs` VALUES ('150','Entity','6','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:17:37','0','','1 (25)');
INSERT INTO `glpi_logs` VALUES ('151','Entity','25','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:17:37','0','','');
INSERT INTO `glpi_logs` VALUES ('152','Entity','6','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:23:05','0','','2 (26)');
INSERT INTO `glpi_logs` VALUES ('153','Entity','26','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:23:05','0','','');
INSERT INTO `glpi_logs` VALUES ('154','Entity','6','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:23:22','0','','3 (27)');
INSERT INTO `glpi_logs` VALUES ('155','Entity','27','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:23:22','0','','');
INSERT INTO `glpi_logs` VALUES ('156','Entity','7','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:24:01','0','','1 (28)');
INSERT INTO `glpi_logs` VALUES ('157','Entity','28','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:24:01','0','','');
INSERT INTO `glpi_logs` VALUES ('158','Entity','7','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:24:20','0','','2 (29)');
INSERT INTO `glpi_logs` VALUES ('159','Entity','29','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:24:20','0','','');
INSERT INTO `glpi_logs` VALUES ('160','Entity','7','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:24:40','0','','3 (30)');
INSERT INTO `glpi_logs` VALUES ('161','Entity','30','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:24:40','0','','');
INSERT INTO `glpi_logs` VALUES ('162','Entity','8','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:25:01','0','','1 (31)');
INSERT INTO `glpi_logs` VALUES ('163','Entity','31','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:25:01','0','','');
INSERT INTO `glpi_logs` VALUES ('164','Entity','8','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:25:28','0','','2 (32)');
INSERT INTO `glpi_logs` VALUES ('165','Entity','32','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:25:28','0','','');
INSERT INTO `glpi_logs` VALUES ('166','Entity','8','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:25:55','0','','3 (33)');
INSERT INTO `glpi_logs` VALUES ('167','Entity','33','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:25:55','0','','');
INSERT INTO `glpi_logs` VALUES ('168','Entity','9','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:26:16','0','','1 (34)');
INSERT INTO `glpi_logs` VALUES ('169','Entity','34','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:26:16','0','','');
INSERT INTO `glpi_logs` VALUES ('170','Entity','9','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:26:43','0','','2 (35)');
INSERT INTO `glpi_logs` VALUES ('171','Entity','35','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:26:43','0','','');
INSERT INTO `glpi_logs` VALUES ('172','Entity','9','Entity','17','Juan Fernando Villa (2) (2)','2014-04-04 10:27:03','0','','3 (36)');
INSERT INTO `glpi_logs` VALUES ('173','Entity','36','0','20','Juan Fernando Villa (2) (2)','2014-04-04 10:27:03','0','','');
INSERT INTO `glpi_logs` VALUES ('174','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:31:06','14','1','Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('175','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:31:06','1','Smart Cities > Ciudadania > 1','Smart Cities > Ciudadania > Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('176','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:31:06','16','1','Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('177','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:07','14','Derechos Humanos','Control Social');
INSERT INTO `glpi_logs` VALUES ('178','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:07','1','Smart Cities > Ciudadania > Derechos Humanos','Smart Cities > Ciudadania > Control Social');
INSERT INTO `glpi_logs` VALUES ('179','Entity','10','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:07','16','Derechos Humanos','Control Social');
INSERT INTO `glpi_logs` VALUES ('180','Entity','11','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:41','14','2','Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('181','Entity','11','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:41','1','Smart Cities > Ciudadania > 2','Smart Cities > Ciudadania > Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('182','Entity','11','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:44:41','16','2','Derechos Humanos');
INSERT INTO `glpi_logs` VALUES ('183','Entity','12','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:47:22','14','3','Juventud Proactiva');
INSERT INTO `glpi_logs` VALUES ('184','Entity','12','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:47:22','1','Smart Cities > Ciudadania > 3','Smart Cities > Ciudadania > Juventud Proactiva');
INSERT INTO `glpi_logs` VALUES ('185','Entity','12','','0','Juan Fernando Villa (2) (2)','2014-04-04 10:47:22','16','3','Juventud Proactiva');
INSERT INTO `glpi_logs` VALUES ('186','Ticket','1','User','15','Juan Fernando Villa (2) (2)','2014-05-27 15:31:40','0','','Danny Villareal (6) (6)');
INSERT INTO `glpi_logs` VALUES ('187','Ticket','1','User','15','Juan Fernando Villa (2) (2)','2014-05-27 15:31:40','0','','Juan Fernando Villa (2) (2)');
INSERT INTO `glpi_logs` VALUES ('188','Ticket','1','','0','Juan Fernando Villa (2) (2)','2014-05-27 15:31:40','150','0','1120');
INSERT INTO `glpi_logs` VALUES ('189','Ticket','1','User','15','Juan Fernando Villa (2) (2)','2014-05-27 15:31:40','0','','tech (4) (4)');
INSERT INTO `glpi_logs` VALUES ('190','Ticket','1','0','20','Juan Fernando Villa (2) (2)','2014-05-27 15:31:40','0','','');
INSERT INTO `glpi_logs` VALUES ('191','User','7','UserEmail','17','Juan Fernando Villa (2) (2)','2014-05-27 15:51:49','0','','sergioandresherrera@gmail.com (3)');
INSERT INTO `glpi_logs` VALUES ('192','UserEmail','3','0','20','Juan Fernando Villa (2) (2)','2014-05-27 15:51:49','0','','');
INSERT INTO `glpi_logs` VALUES ('193','User','7','Profile','17','Juan Fernando Villa (2) (2)','2014-05-27 15:51:49','0','','Sistema (4)');
INSERT INTO `glpi_logs` VALUES ('194','User','7','0','20','Juan Fernando Villa (2) (2)','2014-05-27 15:51:49','0','','');
INSERT INTO `glpi_logs` VALUES ('195','Ticket','1','User','15','Juan Fernando Villa (2) (2)','2014-05-27 15:53:02','0','','Sergio Herrera (7) (7)');
INSERT INTO `glpi_logs` VALUES ('196','Ticket','1','TicketFollowup','17','Juan Fernando Villa (2) (2)','2014-05-27 15:53:30','0','','1');

### Dump table glpi_mailcollectors

DROP TABLE IF EXISTS `glpi_mailcollectors`;
CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refused` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_manufacturers

DROP TABLE IF EXISTS `glpi_manufacturers`;
CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitormodels

DROP TABLE IF EXISTS `glpi_monitormodels`;
CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitors

DROP TABLE IF EXISTS `glpi_monitors`;
CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `monitormodels_id` (`monitormodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `monitortypes_id` (`monitortypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_monitortypes

DROP TABLE IF EXISTS `glpi_monitortypes`;
CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_netpoints

DROP TABLE IF EXISTS `glpi_netpoints`;
CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `complete` (`entities_id`,`locations_id`,`name`),
  KEY `location_name` (`locations_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkaliases

DROP TABLE IF EXISTS `glpi_networkaliases`;
CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `networknames_id` (`networknames_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipmentfirmwares

DROP TABLE IF EXISTS `glpi_networkequipmentfirmwares`;
CREATE TABLE `glpi_networkequipmentfirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipmentmodels

DROP TABLE IF EXISTS `glpi_networkequipmentmodels`;
CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipments

DROP TABLE IF EXISTS `glpi_networkequipments`;
CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentfirmwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `domains_id` (`domains_id`),
  KEY `networkequipmentfirmwares_id` (`networkequipmentfirmwares_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkequipmenttypes

DROP TABLE IF EXISTS `glpi_networkequipmenttypes`;
CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkinterfaces

DROP TABLE IF EXISTS `glpi_networkinterfaces`;
CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networknames

DROP TABLE IF EXISTS `glpi_networknames`;
CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `FQDN` (`name`,`fqdns_id`),
  KEY `name` (`name`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `fqdns_id` (`fqdns_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportaggregates

DROP TABLE IF EXISTS `glpi_networkportaggregates`;
CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COLLATE utf8_unicode_ci COMMENT 'array of associated networkports_id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportaliases

DROP TABLE IF EXISTS `glpi_networkportaliases`;
CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `networkports_id_alias` (`networkports_id_alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportdialups

DROP TABLE IF EXISTS `glpi_networkportdialups`;
CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportethernets

DROP TABLE IF EXISTS `glpi_networkportethernets`;
CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `netpoint` (`netpoints_id`),
  KEY `type` (`type`),
  KEY `speed` (`speed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportlocals

DROP TABLE IF EXISTS `glpi_networkportlocals`;
CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports

DROP TABLE IF EXISTS `glpi_networkports`;
CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `on_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `mac` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports_networkports

DROP TABLE IF EXISTS `glpi_networkports_networkports`;
CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  KEY `networkports_id_2` (`networkports_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkports_vlans

DROP TABLE IF EXISTS `glpi_networkports_vlans`;
CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networkportwifis

DROP TABLE IF EXISTS `glpi_networkportwifis`;
CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only usefull in case of Managed node',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `essid` (`wifinetworks_id`),
  KEY `version` (`version`),
  KEY `mode` (`mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_networks

DROP TABLE IF EXISTS `glpi_networks`;
CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_notifications

DROP TABLE IF EXISTS `glpi_notifications`;
CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notifications` VALUES ('1','Alert Tickets not closed','0','Ticket','alertnotclosed','mail','6','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('2','New Ticket','0','Ticket','new','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('3','Update Ticket','0','Ticket','update','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('4','Close Ticket','0','Ticket','closed','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('5','Add Followup','0','Ticket','add_followup','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('6','Add Task','0','Ticket','add_task','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('7','Update Followup','0','Ticket','update_followup','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('8','Update Task','0','Ticket','update_task','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('9','Delete Followup','0','Ticket','delete_followup','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('10','Delete Task','0','Ticket','delete_task','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('11','Resolve ticket','0','Ticket','solved','mail','4','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('12','Ticket Validation','0','Ticket','validation','mail','7','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('13','New Reservation','0','Reservation','new','mail','2','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('14','Update Reservation','0','Reservation','update','mail','2','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('15','Delete Reservation','0','Reservation','delete','mail','2','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('16','Alert Reservation','0','Reservation','alert','mail','3','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('17','Contract Notice','0','Contract','notice','mail','12','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('18','Contract End','0','Contract','end','mail','12','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('19','MySQL Synchronization','0','DBConnection','desynchronization','mail','1','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('20','Cartridges','0','CartridgeItem','alert','mail','8','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('21','Consumables','0','ConsumableItem','alert','mail','9','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('22','Infocoms','0','Infocom','alert','mail','10','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('23','Software Licenses','0','SoftwareLicense','alert','mail','11','','1','1','2010-02-16 16:41:39');
INSERT INTO `glpi_notifications` VALUES ('24','Ticket Recall','0','Ticket','recall','mail','4','','1','1','2011-03-04 11:35:13');
INSERT INTO `glpi_notifications` VALUES ('25','Password Forget','0','User','passwordforget','mail','13','','1','1','2011-03-04 11:35:13');
INSERT INTO `glpi_notifications` VALUES ('26','Ticket Satisfaction','0','Ticket','satisfaction','mail','14','','1','1','2011-03-04 11:35:15');
INSERT INTO `glpi_notifications` VALUES ('27','Item not unique','0','FieldUnicity','refuse','mail','15','','1','1','2011-03-04 11:35:16');
INSERT INTO `glpi_notifications` VALUES ('28','Crontask Watcher','0','Crontask','alert','mail','16','','1','1','2011-03-04 11:35:16');
INSERT INTO `glpi_notifications` VALUES ('29','New Problem','0','Problem','new','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('30','Update Problem','0','Problem','update','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('31','Resolve Problem','0','Problem','solved','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('32','Add Task','0','Problem','add_task','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('33','Update Task','0','Problem','update_task','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('34','Delete Task','0','Problem','delete_task','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('35','Close Problem','0','Problem','closed','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('36','Delete Problem','0','Problem','delete','mail','17','','1','1','2011-12-06 09:48:33');
INSERT INTO `glpi_notifications` VALUES ('37','Ticket Validation Answer','0','Ticket','validation_answer','mail','7','','1','1','2014-01-15 14:35:24');
INSERT INTO `glpi_notifications` VALUES ('38','Contract End Periodicity','0','Contract','periodicity','mail','12','','1','1','2014-01-15 14:35:24');
INSERT INTO `glpi_notifications` VALUES ('39','Contract Notice Periodicity','0','Contract','periodicitynotice','mail','12','','1','1','2014-01-15 14:35:24');
INSERT INTO `glpi_notifications` VALUES ('40','Planning recall','0','PlanningRecall','planningrecall','mail','18','','1','1','2014-01-15 14:35:24');
INSERT INTO `glpi_notifications` VALUES ('41','Delete Ticket','0','Ticket','delete','mail','4','','1','1','2014-01-15 14:35:26');
INSERT INTO `glpi_notifications` VALUES ('47','Alert Accounts Which Expire','0','PluginAccountsAccount','AccountsWhichExpire','mail','22','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('46','Alert Expired Accounts','0','PluginAccountsAccount','ExpiredAccounts','mail','22','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('45','New Accounts','0','PluginAccountsAccount','new','mail','21','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('48','Alert Expired Badges','0','PluginBadgesBadge','ExpiredBadges','mail','23','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('49','Alert Badges Which Expire','0','PluginBadgesBadge','BadgesWhichExpire','mail','23','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('50','Alert Expired Certificates','0','PluginCertificatesCertificate','ExpiredCertificates','mail','24','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('51','Alert Certificates Which Expire','0','PluginCertificatesCertificate','CertificatesWhichExpire','mail','24','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('52','Alert Expired Domains','0','PluginDomainsDomain','ExpiredDomains','mail','25','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('53','Alert Domains Which Expire','0','PluginDomainsDomain','DomainsWhichExpire','mail','25','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('54','New Resource','0','PluginResourcesResource','new','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('55','Update Resource','0','PluginResourcesResource','update','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('56','Delete Resource','0','PluginResourcesResource','delete','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('57','New Resource Task','0','PluginResourcesResource','newtask','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('58','Update Resource Task','0','PluginResourcesResource','updatetask','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('59','Delete Resource Task','0','PluginResourcesResource','deletetask','mail','26','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('60','Alert Expired Resources Tasks','0','PluginResourcesResource','AlertExpiredTasks','mail','27','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('61','Alert Leaving Resources','0','PluginResourcesResource','AlertLeavingResources','mail','28','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('62','Alert Arrival Checklists','0','PluginResourcesResource','AlertArrivalChecklists','mail','29','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('63','Alert Leaving Checklists','0','PluginResourcesResource','AlertLeavingChecklists','mail','29','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('64','Leaving Resource','0','PluginResourcesResource','LeavingResource','mail','30','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('65','Resource Report Creation','0','PluginResourcesResource','report','mail','31','','1','1','2010-11-16 11:36:46');
INSERT INTO `glpi_notifications` VALUES ('66','New Resource Resting','0','PluginResourcesResource','newresting','mail','32','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('67','Update Resource Resting','0','PluginResourcesResource','updateresting','mail','32','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('68','Delete Resource Resting','0','PluginResourcesResource','deleteresting','mail','32','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('69','New Resource Holiday','0','PluginResourcesResource','newholiday','mail','33','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('70','Update Resource Holiday','0','PluginResourcesResource','updateholiday','mail','33','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('71','Delete Resource Holiday','0','PluginResourcesResource','deleteholiday','mail','33','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('72','Alert no validated typology','0','PluginTypologyTypology','AlertNotValidatedTypology','mail','34','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('73','New Idea','0','PluginIdeaboxIdeabox','new','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('74','Update Idea','0','PluginIdeaboxIdeabox','update','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('75','Delete Idea','0','PluginIdeaboxIdeabox','delete','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('76','New Idea Comment','0','PluginIdeaboxIdeabox','newcomment','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('77','Update Idea Comment','0','PluginIdeaboxIdeabox','updatecomment','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('78','Delete Idea Comment','0','PluginIdeaboxIdeabox','deletecomment','mail','35','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('79','New Project','0','PluginProjetProjet','new','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('80','Update Project','0','PluginProjetProjet','update','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('81','Delete Project','0','PluginProjetProjet','delete','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('82','New Project Task','0','PluginProjetProjet','newtask','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('83','Update Project Task','0','PluginProjetProjet','updatetask','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('84','Delete Project Task','0','PluginProjetProjet','deletetask','mail','36','','1','1','2010-05-16 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('85','Add Followup','0','PluginProjetProjet','add_followup','mail','36','','1','1','2013-10-21 15:26:22');
INSERT INTO `glpi_notifications` VALUES ('86','Update Followup','0','PluginProjetProjet','update_followup','mail','36','','1','1','2013-10-21 15:26:22');
INSERT INTO `glpi_notifications` VALUES ('87','Delete Followup','0','PluginProjetProjet','delete_followup','mail','36','','1','1','2013-10-21 15:26:22');
INSERT INTO `glpi_notifications` VALUES ('88','Alert Expired Projects Tasks','0','PluginProjetProjet','AlertExpiredTasks','mail','37','','1','1','2010-02-17 22:36:46');
INSERT INTO `glpi_notifications` VALUES ('89','New Order Validation','0','PluginOrderOrder','ask','mail','38','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('90','Confirm Order Validation','0','PluginOrderOrder','validation','mail','38','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('91','Cancel Order Validation','0','PluginOrderOrder','undovalidation','mail','38','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('92','Cancel Order','0','PluginOrderOrder','cancel','mail','38','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('93','Due date overtaken','0','PluginOrderOrder','duedate','mail','39','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('94','Order Delivered','0','PluginOrderOrder','delivered','mail','40','','1','1','2014-02-27 01:04:52');
INSERT INTO `glpi_notifications` VALUES ('95','Alert infocoms','0','PluginAdditionalalertsInfocomAlert','notinfocom','mail','41','','1','1','2010-03-13 10:36:46');
INSERT INTO `glpi_notifications` VALUES ('96','Alert new machines ocs','0','PluginAdditionalalertsOcsAlert','newocs','mail','42','','1','1','2010-03-20 10:36:46');
INSERT INTO `glpi_notifications` VALUES ('97','Alert ocs synchronization','0','PluginAdditionalalertsOcsAlert','ocs','mail','42','','1','1','2010-03-20 10:36:46');
INSERT INTO `glpi_notifications` VALUES ('98','Ticket User Rating','0','PluginHelpdeskratingHelpdeskrating','userrating','mail','43','','1','1','2010-07-12 10:52:00');
INSERT INTO `glpi_notifications` VALUES ('99','Ticket Tech Rating','0','PluginHelpdeskratingHelpdeskrating','techrating','mail','43','','1','1','2010-07-12 10:52:00');
INSERT INTO `glpi_notifications` VALUES ('100','Notification for \"More Reporting\"','0','PluginMreportingNotification','sendReporting','mail','44','','1','1','2014-02-27 01:21:02');
INSERT INTO `glpi_notifications` VALUES ('101','Computers not imported','0','PluginOcsinventoryngNotimportedcomputer','not_imported','mail','45','','1','1','2014-03-15 02:04:53');

### Dump table glpi_notificationtargets

DROP TABLE IF EXISTS `glpi_notificationtargets`;
CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items` (`type`,`items_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtargets` VALUES ('1','3','1','13');
INSERT INTO `glpi_notificationtargets` VALUES ('2','1','1','13');
INSERT INTO `glpi_notificationtargets` VALUES ('3','3','2','2');
INSERT INTO `glpi_notificationtargets` VALUES ('4','1','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('5','1','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('6','1','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('7','1','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('8','2','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('9','4','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('10','3','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('11','3','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('12','3','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('13','3','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('14','1','1','19');
INSERT INTO `glpi_notificationtargets` VALUES ('15','14','1','12');
INSERT INTO `glpi_notificationtargets` VALUES ('16','3','1','14');
INSERT INTO `glpi_notificationtargets` VALUES ('17','1','1','14');
INSERT INTO `glpi_notificationtargets` VALUES ('18','3','1','15');
INSERT INTO `glpi_notificationtargets` VALUES ('19','1','1','15');
INSERT INTO `glpi_notificationtargets` VALUES ('20','1','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('21','3','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('22','1','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('23','3','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('24','1','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('25','3','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('26','1','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('27','3','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('28','1','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('29','3','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('30','1','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('31','3','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('32','19','1','25');
INSERT INTO `glpi_notificationtargets` VALUES ('33','3','1','26');
INSERT INTO `glpi_notificationtargets` VALUES ('34','21','1','2');
INSERT INTO `glpi_notificationtargets` VALUES ('35','21','1','3');
INSERT INTO `glpi_notificationtargets` VALUES ('36','21','1','5');
INSERT INTO `glpi_notificationtargets` VALUES ('37','21','1','4');
INSERT INTO `glpi_notificationtargets` VALUES ('38','21','1','6');
INSERT INTO `glpi_notificationtargets` VALUES ('39','21','1','7');
INSERT INTO `glpi_notificationtargets` VALUES ('40','21','1','8');
INSERT INTO `glpi_notificationtargets` VALUES ('41','21','1','9');
INSERT INTO `glpi_notificationtargets` VALUES ('42','21','1','10');
INSERT INTO `glpi_notificationtargets` VALUES ('43','21','1','11');
INSERT INTO `glpi_notificationtargets` VALUES ('75','1','1','41');
INSERT INTO `glpi_notificationtargets` VALUES ('46','1','1','28');
INSERT INTO `glpi_notificationtargets` VALUES ('47','3','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('48','1','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('49','21','1','29');
INSERT INTO `glpi_notificationtargets` VALUES ('50','2','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('51','4','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('52','3','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('53','1','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('54','21','1','30');
INSERT INTO `glpi_notificationtargets` VALUES ('55','3','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('56','1','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('57','21','1','31');
INSERT INTO `glpi_notificationtargets` VALUES ('58','3','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('59','1','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('60','21','1','32');
INSERT INTO `glpi_notificationtargets` VALUES ('61','3','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('62','1','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('63','21','1','33');
INSERT INTO `glpi_notificationtargets` VALUES ('64','3','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('65','1','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('66','21','1','34');
INSERT INTO `glpi_notificationtargets` VALUES ('67','3','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('68','1','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('69','21','1','35');
INSERT INTO `glpi_notificationtargets` VALUES ('70','3','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('71','1','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('72','21','1','36');
INSERT INTO `glpi_notificationtargets` VALUES ('73','14','1','37');
INSERT INTO `glpi_notificationtargets` VALUES ('74','3','1','40');
INSERT INTO `glpi_notificationtargets` VALUES ('76','2','1','98');
INSERT INTO `glpi_notificationtargets` VALUES ('77','3','1','99');
INSERT INTO `glpi_notificationtargets` VALUES ('78','1','1','100');

### Dump table glpi_notificationtemplates

DROP TABLE IF EXISTS `glpi_notificationtemplates`;
CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtemplates` VALUES ('1','MySQL Synchronization','DBConnection','2010-02-01 15:51:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('2','Reservations','Reservation','2010-02-03 14:03:45','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('3','Alerta de Reserva','Reservation','2014-02-24 17:03:13','Alerta que se genera cuando se realiza una reserva',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('4','Tickets','Ticket','2010-02-07 21:39:15','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('5','Tickets (Simple)','Ticket','2010-02-07 21:39:15','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('6','Alerta Tickets sin cerrar','Ticket','2014-02-24 17:04:29','Alerta que se Genera cuando los Tickets no están cerrados',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('7','Tickets Validation','Ticket','2010-02-26 21:39:15','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('8','Cartuchos','CartridgeItem','2014-02-24 17:05:19','Notificación relacionada con cartuchos de impresora',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('9','Consumibles','ConsumableItem','2014-02-24 17:05:51','Notificación relacionada con elementos consumibles',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('10','Infocoms','Infocom','2010-02-16 13:17:55','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('11','Licenses','SoftwareLicense','2010-02-16 13:18:12','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('12','Contratos','Contract','2014-02-24 17:07:07','Notificación relacionada a los contratos',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('13','Password Forget','User','2011-03-04 11:35:13',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('14','Ticket Satisfaction','Ticket','2011-03-04 11:35:15',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('15','Item not unique','FieldUnicity','2011-03-04 11:35:16',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('16','Crontask','Crontask','2011-03-04 11:35:16',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('17','Problems','Problem','2011-12-06 09:48:33',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('18','Planning recall','PlanningRecall','2014-01-15 14:35:24',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('22','Alert Accounts','PluginAccountsAccount','2010-02-23 11:37:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('21','New Accounts','PluginAccountsAccount','2010-02-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('23','Alert Badges','PluginBadgesBadge','2010-02-23 23:44:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('24','Alert Certificates','PluginCertificatesCertificate','2010-02-24 21:34:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('25','Alert Domains','PluginDomainsDomain','2010-02-24 21:34:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('26','Resources','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('27','Alert Resources Tasks','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('28','Alert Leaving Resources','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('29','Alert Resources Checklists','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('30','Leaving Resource','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('31','Resource Report Creation','PluginResourcesResource','2010-11-16 11:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('32','Resource Resting','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('33','Resource Holiday','PluginResourcesResource','2010-05-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('34','Alert no validated typology','PluginTypologyTypology','2012-11-19 15:20:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('35','Idea','PluginIdeaboxIdeabox','2010-02-17 22:36:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('36','Projets','PluginProjetProjet','2010-12-29 11:04:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('37','Alert Projets Tasks','PluginProjetProjet','2010-12-29 11:04:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('38','Order Validation','PluginOrderOrder','2014-02-27 01:04:52','','');
INSERT INTO `glpi_notificationtemplates` VALUES ('39','Due date overtaken','PluginOrderOrder','2014-02-27 01:04:52','','');
INSERT INTO `glpi_notificationtemplates` VALUES ('40','Order Delivered','PluginOrderOrder','2014-02-27 01:04:52','','');
INSERT INTO `glpi_notificationtemplates` VALUES ('41','Alert infocoms','PluginAdditionalalertsInfocomAlert','2010-03-13 10:44:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('42','Alert machines ocs','PluginAdditionalalertsOcsAlert','2010-03-13 10:44:46','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('43','Ticketrated','PluginHelpdeskratingHelpdeskrating','2014-02-27 01:08:30',NULL,NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('44','Notification for \"More Reporting\"','PluginMreportingNotification','2014-02-27 01:21:02','',NULL);
INSERT INTO `glpi_notificationtemplates` VALUES ('45','Computers not imported','PluginOcsinventoryngNotimportedcomputer','2014-03-15 02:04:53','',NULL);

### Dump table glpi_notificationtemplatetranslations

DROP TABLE IF EXISTS `glpi_notificationtemplatetranslations`;
CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('1','1','','##lang.dbconnection.title##','##lang.dbconnection.delay## : ##dbconnection.delay##
','&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('2','2','','##reservation.action##','======================================================================
##lang.reservation.user##: ##reservation.user##
##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##
##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##
##lang.reservation.begin##: ##reservation.begin##
##lang.reservation.end##: ##reservation.end##
##lang.reservation.comment##: ##reservation.comment##
======================================================================
','&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;
&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('3','3','','##reservation.action##  ##reservation.entity##','##lang.reservation.entity## : ##reservation.entity## 

 
##FOREACHreservations## 
##lang.reservation.itemtype## : ##reservation.itemtype##

 ##lang.reservation.item## : ##reservation.item##
 
 ##reservation.url## 

 ##ENDFOREACHreservations##','&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;
##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;
 ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;
 &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;
 ##ENDFOREACHreservations##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('4','4','','##ticket.action## ##ticket.title##',' ##IFticket.storestatus=5##
 ##lang.ticket.url## : ##ticket.urlapprove##
 ##lang.ticket.autoclosewarning##
 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##
 ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##

 ##lang.ticket.description##

 ##lang.ticket.title## : ##ticket.title##
 ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##
 ##lang.ticket.creationdate## : ##ticket.creationdate##
 ##lang.ticket.closedate## : ##ticket.closedate##
 ##lang.ticket.requesttype## : ##ticket.requesttype##
##IFticket.itemtype## ##lang.ticket.item.name## : ##ticket.itemtype## - ##ticket.item.name## ##IFticket.item.model## - ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## - ##ticket.item.serial## ##ENDIFticket.item.serial##  ##IFticket.item.otherserial## -##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype##
##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##
 ##lang.ticket.status## : ##ticket.status##
##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##
 ##lang.ticket.urgency## : ##ticket.urgency##
 ##lang.ticket.impact## : ##ticket.impact##
 ##lang.ticket.priority## : ##ticket.priority##
##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##
##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
 ##lang.ticket.content## : ##ticket.content##
 ##IFticket.storestatus=6##

 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description##
 ##ENDIFticket.storestatus##
 ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##

##FOREACHtasks##

 [##task.date##] ##lang.task.isprivate## : ##task.isprivate##
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##','<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->
<div>##IFticket.storestatus=5##</div>
<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>
<div><strong>##lang.ticket.autoclosewarning##</strong></div>
<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>
<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>
<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>
<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br /> ##IFticket.itemtype## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;: ##ticket.itemtype## - ##ticket.item.name##    ##IFticket.item.model## - ##ticket.item.model##    ##ENDIFticket.item.model## ##IFticket.item.serial## -##ticket.item.serial## ##ENDIFticket.item.serial##&#160; ##IFticket.item.otherserial## -##ticket.item.otherserial##  ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## <br /> ##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>
<br />##IFticket.storestatus=6##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>
<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>
<p>##FOREACHfollowups##</p>
<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>
<p>##ENDFOREACHfollowups##</p>
<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>
<p>##FOREACHtasks##</p>
<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>
<p>##ENDFOREACHtasks##</p>');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('5','12','','##contract.action##  ##contract.entity##','##lang.contract.entity## : ##contract.entity##

##FOREACHcontracts##
##lang.contract.name## : ##contract.name##
##lang.contract.number## : ##contract.number##
##lang.contract.time## : ##contract.time##
##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##
##contract.url##
##ENDFOREACHcontracts##','&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;
&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :
##contract.name##&lt;br /&gt;
##lang.contract.number## : ##contract.number##&lt;br /&gt;
##lang.contract.time## : ##contract.time##&lt;br /&gt;
##IFcontract.type####lang.contract.type## : ##contract.type##
##ENDIFcontract.type##&lt;br /&gt;
&lt;a href=\"##contract.url##\"&gt;
##contract.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcontracts##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('6','5','','##ticket.action## ##ticket.title##','##lang.ticket.url## : ##ticket.url## 

##lang.ticket.description## 


##lang.ticket.title##  :##ticket.title## 

##lang.ticket.authors##  :##IFticket.authors##
##ticket.authors## ##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##   

##IFticket.category## ##lang.ticket.category##  :##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##

##lang.ticket.content##  : ##ticket.content##
##IFticket.itemtype##
##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##','&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;
##ticket.url##&lt;/a&gt;&lt;/div&gt;
&lt;div class=\"description b\"&gt;
##lang.ticket.description##&lt;/div&gt;
&lt;p&gt;&lt;span
style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##
&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.authors##&lt;/span&gt;
##IFticket.authors## ##ticket.authors##
##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##
&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160
;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;
##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.content##&lt;/span&gt;&#160;:
##ticket.content##&lt;br /&gt;##IFticket.itemtype##
&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;
##lang.ticket.item.name##&lt;/span&gt;&#160;:
##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('15','15','','##lang.unicity.action##','##lang.unicity.entity## : ##unicity.entity## 

##lang.unicity.itemtype## : ##unicity.itemtype## 

##lang.unicity.message## : ##unicity.message## 

##lang.unicity.action_user## : ##unicity.action_user## 

##lang.unicity.action_type## : ##unicity.action_type## 

##lang.unicity.date## : ##unicity.date##','&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;
&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;
&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;
&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('7','7','','##ticket.action## ##ticket.title##','##FOREACHvalidations##

##IFvalidation.storestatus=waiting##
##validation.submission.title##
##lang.validation.commentsubmission## : ##validation.commentsubmission##
##ENDIFvalidation.storestatus##
##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##

##lang.ticket.url## : ##ticket.urlvalidation##

##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
##IFvalidation.commentvalidation##
##lang.validation.commentvalidation## : ##validation.commentvalidation##
##ENDIFvalidation.commentvalidation##
##ENDFOREACHvalidations##','&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;
&lt;p&gt;##IFvalidation.storestatus=waiting##&lt;/p&gt;
&lt;div&gt;##validation.submission.title##&lt;/div&gt;
&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;
&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;&lt;/div&gt;
&lt;div&gt;
&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :
&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##
&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('8','6','','##ticket.action## ##ticket.entity##','##lang.ticket.entity## : ##ticket.entity##
 
##FOREACHtickets##

##lang.ticket.title## : ##ticket.title##
 ##lang.ticket.status## : ##ticket.status##

 ##ticket.url## 
 ##ENDFOREACHtickets##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##FOREACHtickets##                   
&lt;tr&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDFOREACHtickets##
&lt;/tbody&gt;
&lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('9','9','','##consumable.action##  ##consumable.entity##','##lang.consumable.entity## : ##consumable.entity##
 

##FOREACHconsumables##
##lang.consumable.item## : ##consumable.item##
 

##lang.consumable.reference## : ##consumable.reference##

##lang.consumable.remaining## : ##consumable.remaining##

##consumable.url## 

##ENDFOREACHconsumables##','&lt;p&gt;
##lang.consumable.entity## : ##consumable.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##
&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;
&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;
##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;
&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;
   ##ENDFOREACHconsumables##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('10','8','','##cartridge.action##  ##cartridge.entity##','##lang.cartridge.entity## : ##cartridge.entity##
 

##FOREACHcartridges##
##lang.cartridge.item## : ##cartridge.item##
 

##lang.cartridge.reference## : ##cartridge.reference##

##lang.cartridge.remaining## : ##cartridge.remaining##

##cartridge.url## 
 ##ENDFOREACHcartridges##','&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##
&lt;br /&gt;##lang.cartridge.item## :
##cartridge.item##&lt;br /&gt; &lt;br /&gt;
##lang.cartridge.reference## :
##cartridge.reference##&lt;br /&gt;
##lang.cartridge.remaining## :
##cartridge.remaining##&lt;br /&gt;
&lt;a href=\"##cartridge.url##\"&gt;
##cartridge.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcartridges##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('11','10','','##infocom.action##  ##infocom.entity##','##lang.infocom.entity## : ##infocom.entity## 
 

##FOREACHinfocoms## 

##lang.infocom.itemtype## : ##infocom.itemtype##

##lang.infocom.item## : ##infocom.item##
 

##lang.infocom.expirationdate## : ##infocom.expirationdate##

##infocom.url## 
 ##ENDFOREACHinfocoms##','&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##
&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;
##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;
##lang.infocom.expirationdate## : ##infocom.expirationdate##
&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;
##infocom.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHinfocoms##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('12','11','','##license.action##  ##license.entity##','##lang.license.entity## : ##license.entity##

##FOREACHlicenses## 

##lang.license.item## : ##license.item##

##lang.license.serial## : ##license.serial##

##lang.license.expirationdate## : ##license.expirationdate##

##license.url## 
 ##ENDFOREACHlicenses##','&lt;p&gt;
##lang.license.entity## : ##license.entity##&lt;br /&gt;
##FOREACHlicenses##
&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;
##lang.license.serial## : ##license.serial##&lt;br /&gt;
##lang.license.expirationdate## : ##license.expirationdate##
&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##
&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('13','13','','##user.action##','##user.realname## ##user.firstname##

##lang.passwordforget.information##

##lang.passwordforget.link## ##user.passwordforgeturl##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('14','14','','##ticket.action## ##ticket.title##','##lang.ticket.title## : ##ticket.title##

##lang.ticket.closedate## : ##ticket.closedate##

##lang.satisfaction.text## ##ticket.urlsatisfaction##','&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;
&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;
&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('16','16','','##crontask.action##','##lang.crontask.warning## 

##FOREACHcrontasks## 
 ##crontask.name## : ##crontask.description##
 
##ENDFOREACHcrontasks##','&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;
&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('17','17','','##problem.action## ##problem.title##','##IFproblem.storestatus=5##
 ##lang.problem.url## : ##problem.urlapprove##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##
 ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##

 ##lang.problem.description##

 ##lang.problem.title##  :##problem.title##
 ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##
 ##lang.problem.creationdate##  :##problem.creationdate##
 ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##
 ##lang.problem.status##  : ##problem.status##
 ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##
 ##lang.problem.urgency##  : ##problem.urgency##
 ##lang.problem.impact##  : ##problem.impact##
 ##lang.problem.priority## : ##problem.priority##
##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##
 ##lang.problem.content##  : ##problem.content##

##IFproblem.storestatus=6##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description##
##ENDIFproblem.storestatus##
 ##lang.problem.numberoftickets## : ##problem.numberoftickets##

##FOREACHtickets##
 [##ticket.date##] ##lang.problem.title## : ##ticket.title##
 ##lang.problem.content## ##ticket.content##

##ENDFOREACHtickets##
 ##lang.problem.numberoftasks## : ##problem.numberoftasks##

##FOREACHtasks##
 [##task.date##]
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##
','&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;
&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;
&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;
&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;
&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;
&lt;p&gt;##FOREACHtickets##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##
&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;
&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('18','18','','##recall.action##: ##recall.item.name##','##recall.action##: ##recall.item.name##

##recall.item.content##

##lang.recall.planning.begin##: ##recall.planning.begin##
##lang.recall.planning.end##: ##recall.planning.end##
##lang.recall.planning.state##: ##recall.planning.state##
##lang.recall.item.private##: ##recall.item.private##','&lt;p&gt;##recall.action##: &lt;a href=\"##recall.item.url##\"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;##recall.item.content##&lt;/p&gt;
&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;
&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('22','22','','##account.action## : ##account.entity##','##lang.account.entity## :##account.entity##
                        ##FOREACHaccounts##
                        ##lang.account.name## : ##account.name## - ##lang.account.dateexpiration## : ##account.dateexpiration##
                        ##ENDFOREACHaccounts##','&lt;p&gt;##lang.account.entity## :##account.entity##&lt;br /&gt; &lt;br /&gt;
                        ##FOREACHaccounts##&lt;br /&gt;
                        ##lang.account.name##  : ##account.name## - ##lang.account.dateexpiration## :  ##account.dateexpiration##&lt;br /&gt;
                        ##ENDFOREACHaccounts##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('21','21','','##lang.account.title##','##lang.account.url## : ##account.url##


                        ##lang.account.entity## : ##account.entity##

                        ##IFaccount.name####lang.account.name## : ##account.name##
##ENDIFaccount.name##
                        ##IFaccount.type####lang.account.type## : ##account.type##
##ENDIFaccount.type##
                        ##IFaccount.state####lang.account.state## : ##account.state##
##ENDIFaccount.state##
                        ##IFaccount.login####lang.account.login## : ##account.login##
##ENDIFaccount.login##
                        ##IFaccount.users_id####lang.account.users_id## : ##account.users_id##
##ENDIFaccount.users_id##
                        ##IFaccount.groups_id####lang.account.groups_id## : ##account.groups_id##
##ENDIFaccount.groups_id##
                        ##IFaccount.others####lang.account.others## : ##account.others##
##ENDIFaccount.others##
                        ##IFaccount.datecreation####lang.account.datecreation## : ##account.datecreation##
##ENDIFaccount.datecreation##
                        ##IFaccount.dateexpiration####lang.account.dateexpiration## : ##account.dateexpiration##
##ENDIFaccount.dateexpiration##
                        ##IFaccount.comment####lang.account.comment## : ##account.comment##
##ENDIFaccount.comment##','&lt;p&gt;&lt;strong&gt;##lang.account.url##&lt;/strong&gt; : &lt;a href=\"##account.url##\"&gt;##account.url##&lt;/a&gt;&lt;/p&gt;
                        &lt;p&gt;&lt;strong&gt;##lang.account.entity##&lt;/strong&gt; : ##account.entity##&lt;br /&gt; ##IFaccount.name##&lt;strong&gt;##lang.account.name##&lt;/strong&gt; : ##account.name##&lt;br /&gt;##ENDIFaccount.name##  ##IFaccount.type##&lt;strong&gt;##lang.account.type##&lt;/strong&gt; : ##account.type##&lt;br /&gt;##ENDIFaccount.type##  ##IFaccount.state##&lt;strong&gt;##lang.account.state##&lt;/strong&gt; : ##account.state##&lt;br /&gt;##ENDIFaccount.state##  ##IFaccount.login##&lt;strong&gt;##lang.account.login##&lt;/strong&gt; : ##account.login##&lt;br /&gt;##ENDIFaccount.login##  ##IFaccount.users##&lt;strong&gt;##lang.account.users##&lt;/strong&gt; : ##account.users##&lt;br /&gt;##ENDIFaccount.users##  ##IFaccount.groups##&lt;strong&gt;##lang.account.groups##&lt;/strong&gt; : ##account.groups##&lt;br /&gt;##ENDIFaccount.groups##  ##IFaccount.others##&lt;strong&gt;##lang.account.others##&lt;/strong&gt; : ##account.others##&lt;br /&gt;##ENDIFaccount.others##  ##IFaccount.datecreation##&lt;strong&gt;##lang.account.datecreation##&lt;/strong&gt; : ##account.datecreation##&lt;br /&gt;##ENDIFaccount.datecreation##  ##IFaccount.dateexpiration##&lt;strong&gt;##lang.account.dateexpiration##&lt;/strong&gt; : ##account.dateexpiration##&lt;br /&gt;##ENDIFaccount.dateexpiration##  ##IFaccount.comment##&lt;strong&gt;##lang.account.comment##&lt;/strong&gt; : ##account.comment####ENDIFaccount.comment##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('23','23','','##badge.action## : ##badge.entity##','##lang.badge.entity## :##badge.entity##
   ##FOREACHbadges##
   ##lang.badge.name## : ##badge.name## - ##lang.badge.dateexpiration## : ##badge.dateexpiration####IFbadge.serial## - ##lang.badge.serial## : ##badge.serial####ENDIFbadge.serial####IFbadge.users## - ##lang.badge.users## : ##badge.users####ENDIFbadge.users##
   ##ENDFOREACHbadges##','&lt;p&gt;##lang.badge.entity## :##badge.entity##&lt;br /&gt; &lt;br /&gt;
                        ##FOREACHbadges##&lt;br /&gt;
                        ##lang.badge.name##  : ##badge.name## - ##lang.badge.dateexpiration## :  ##badge.dateexpiration####IFbadge.serial## - ##lang.badge.serial## :  ##badge.serial####ENDIFbadge.serial####IFbadge.users## - ##lang.badge.users## :  ##badge.users####ENDIFbadge.users##&lt;br /&gt; 
                        ##ENDFOREACHbadges##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('24','24','','##certificate.action## : ##certificate.entity##','##lang.certificate.entity## :##certificate.entity##
   ##FOREACHcertificates##
   ##lang.certificate.name## : ##certificate.name## - ##lang.certificate.dateexpiration## : ##certificate.dateexpiration##
   ##ENDFOREACHcertificates##','&lt;p&gt;##lang.certificate.entity## :##certificate.entity##&lt;br /&gt; &lt;br /&gt;
                        ##FOREACHcertificates##&lt;br /&gt;
                        ##lang.certificate.name##  : ##certificate.name## - ##lang.certificate.dateexpiration## :  ##certificate.dateexpiration##&lt;br /&gt; 
                        ##ENDFOREACHcertificates##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('25','25','','##domain.action## : ##domain.entity##','##lang.domain.entity## :##domain.entity##
   ##FOREACHdomains##
   ##lang.domain.name## : ##domain.name## - ##lang.domain.dateexpiration## : ##domain.dateexpiration##
   ##ENDFOREACHdomains##','&lt;p&gt;##lang.domain.entity## :##domain.entity##&lt;br /&gt; &lt;br /&gt;
                        ##FOREACHdomains##&lt;br /&gt;
                        ##lang.domain.name##  : ##domain.name## - ##lang.domain.dateexpiration## :  ##domain.dateexpiration##&lt;br /&gt; 
                        ##ENDFOREACHdomains##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('26','26','','##lang.resource.title## -  ##resource.firstname## ##resource.name##','##lang.resource.url##  : ##resource.url##

   ##lang.resource.entity## : ##resource.entity##
   ##IFresource.name####lang.resource.name## : ##resource.name##
   ##ENDIFresource.name## ##IFresource.firstname####lang.resource.firstname## : ##resource.firstname##
   ##ENDIFresource.firstname## ##IFresource.type####lang.resource.type## : ##resource.type##
   ##ENDIFresource.type## ##IFresource.users####lang.resource.users## : ##resource.users##
   ##ENDIFresource.users## ##IFresource.usersrecipient####lang.resource.usersrecipient## : ##resource.usersrecipient##
   ##ENDIFresource.usersrecipient## ##IFresource.datedeclaration####lang.resource.datedeclaration## : ##resource.datedeclaration##
   ##ENDIFresource.datedeclaration## ##IFresource.datebegin####lang.resource.datebegin## : ##resource.datebegin##
   ##ENDIFresource.datebegin## ##IFresource.dateend####lang.resource.dateend## : ##resource.dateend##
   ##ENDIFresource.dateend## ##IFresource.department####lang.resource.department## : ##resource.department##
   ##ENDIFresource.department## ##IFresource.status####lang.resource.status## : ##resource.status##
   ##ENDIFresource.status## ##IFresource.location####lang.resource.location## : ##resource.location##
   ##ENDIFresource.location## ##IFresource.comment####lang.resource.comment## : ##resource.comment##
   ##ENDIFresource.comment## ##IFresource.usersleaving####lang.resource.usersleaving## : ##resource.usersleaving##
   ##ENDIFresource.usersleaving## ##IFresource.leaving####lang.resource.leaving## : ##resource.leaving##
   ##ENDIFresource.leaving## ##IFresource.helpdesk####lang.resource.helpdesk## : ##resource.helpdesk##
   ##ENDIFresource.helpdesk## ##FOREACHupdates##----------
   ##lang.update.title## :
   ##IFupdate.name####lang.resource.name## : ##update.name##
   ##ENDIFupdate.name## ##IFupdate.firstname####lang.resource.firstname## : ##update.firstname##
   ##ENDIFupdate.firstname## ##IFupdate.type####lang.resource.type## : ##update.type##
   ##ENDIFupdate.type## ##IFupdate.users####lang.resource.users## : ##update.users##
   ##ENDIFupdate.users## ##IFupdate.usersrecipient####lang.resource.usersrecipient## : ##update.usersrecipient##
   ##ENDIFupdate.usersrecipient## ##IFupdate.datedeclaration####lang.resource.datedeclaration## : ##update.datedeclaration##
   ##ENDIFupdate.datedeclaration## ##IFupdate.datebegin####lang.resource.datebegin## : ##update.datebegin##
   ##ENDIFupdate.datebegin## ##IFupdate.dateend####lang.resource.dateend## : ##update.dateend##
   ##ENDIFupdate.dateend## ##IFupdate.department####lang.resource.department## : ##update.department##
   ##ENDIFupdate.department## ##IFupdate.status####lang.resource.status## : ##update.status##
   ##ENDIFupdate.status## ##IFupdate.location####lang.resource.location## : ##update.location##
   ##ENDIFupdate.location## ##IFupdate.comment####lang.resource.comment## : ##update.comment##
   ##ENDIFupdate.comment## ##IFupdate.usersleaving####lang.resource.usersleaving## : ##update.usersleaving##
   ##ENDIFupdate.usersleaving## ##IFupdate.leaving####lang.resource.leaving## : ##update.leaving##
   ##ENDIFupdate.leaving## ##IFupdate.helpdesk####lang.resource.helpdesk## : ##update.helpdesk##
   ##ENDIFupdate.helpdesk## ----------##ENDFOREACHupdates##
   ##FOREACHtasks####lang.task.title## :
   ##IFtask.name####lang.task.name## : ##task.name##
   ##ENDIFtask.name## ##IFtask.type####lang.task.type## : ##task.type##
   ##ENDIFtask.type## ##IFtask.users####lang.task.users## : ##task.users##
   ##ENDIFtask.users## ##IFtask.groups####lang.task.groups## : ##task.groups##
   ##ENDIFtask.groups## ##IFtask.datebegin####lang.task.datebegin## : ##task.datebegin##
   ##ENDIFtask.datebegin## ##IFtask.dateend####lang.task.dateend## : ##task.dateend##
   ##ENDIFtask.dateend## ##IFtask.comment####lang.task.comment## : ##task.comment##
   ##ENDIFtask.comment## ##IFtask.finished####lang.task.finished## : ##task.finished##
   ##ENDIFtask.finished## ##IFtask.realtime####lang.task.realtime## : ##task.realtime##
   ##ENDIFtask.realtime## ----------##ENDFOREACHtasks## ','&lt;p&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.url##
                        &lt;/strong&gt; :
                        &lt;a href=\"##resource.url##\"&gt;##resource.url##
                        &lt;/a&gt;&lt;/span&gt; &lt;br /&gt;&lt;br /&gt;
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.entity##&lt;/strong&gt; : ##resource.entity##
                        &lt;/span&gt; &lt;br /&gt; ##IFresource.name##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.name##&lt;/strong&gt; : ##resource.name##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.name## ##IFresource.firstname##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.firstname##&lt;/strong&gt; : ##resource.firstname##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.firstname## ##IFresource.type##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.type##&lt;/strong&gt; :  ##resource.type##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFresource.type## ##IFresource.status##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.status##&lt;/strong&gt; :  ##resource.status##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFresource.status## ##IFresource.users##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.users##&lt;/strong&gt; :  ##resource.users##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFresource.users## ##IFresource.usersrecipient##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.usersrecipient##
                        &lt;/strong&gt; :  ##resource.usersrecipient##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFresource.usersrecipient## ##IFresource.datedeclaration##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.datedeclaration##
                        &lt;/strong&gt; :  ##resource.datedeclaration##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFresource.datedeclaration## ##IFresource.datebegin##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.datebegin##&lt;/strong&gt; :  ##resource.datebegin##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.datebegin## ##IFresource.dateend##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.dateend##&lt;/strong&gt; :  ##resource.dateend##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.dateend## ##IFresource.department##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.department##&lt;/strong&gt; :  ##resource.department##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.department## ##IFresource.location##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.location##&lt;/strong&gt; :  ##resource.location##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.location## ##IFresource.comment##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.comment##&lt;/strong&gt; :  ##resource.comment##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.comment## ##IFresource.usersleaving##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.usersleaving##&lt;/strong&gt; :  ##resource.usersleaving##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.usersleaving## ##IFresource.leaving##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.leaving##&lt;/strong&gt; :  ##resource.leaving##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.leaving## ##IFresource.helpdesk##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.helpdesk##&lt;/strong&gt; :  ##resource.helpdesk##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFresource.helpdesk##   ##FOREACHupdates##----------
                        &lt;br /&gt;
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.update.title## :&lt;/strong&gt;&lt;/span&gt;
                        &lt;br /&gt; ##IFupdate.name##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.name##&lt;/strong&gt; : ##update.name##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.name## ##IFupdate.firstname##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.firstname##&lt;/strong&gt; : ##update.firstname##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.firstname## ##IFupdate.type##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.type##&lt;/strong&gt; : ##update.type##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.type## ##IFupdate.status##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.status##&lt;/strong&gt; : ##update.status##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.status## ##IFupdate.users##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.users##&lt;/strong&gt; : ##update.users##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.users## ##IFupdate.usersrecipient##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.usersrecipient##&lt;/strong&gt; : ##update.usersrecipient##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.usersrecipient## ##IFupdate.datedeclaration##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.datedeclaration##
                        &lt;/strong&gt; : ##update.datedeclaration##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.datedeclaration## ##IFupdate.datebegin##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.datebegin##&lt;/strong&gt; : ##update.datebegin##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.datebegin## ##IFupdate.dateend##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.dateend##&lt;/strong&gt; : ##update.dateend##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.dateend## ##IFupdate.department##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.department##&lt;/strong&gt; : ##update.department##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.department## ##IFupdate.location##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.location##&lt;/strong&gt; : ##update.location##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.location## ##IFupdate.comment##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.comment##&lt;/strong&gt; : ##update.comment##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.comment## ##IFupdate.usersleaving##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.usersleaving##
                        &lt;/strong&gt; : ##update.usersleaving##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFupdate.usersleaving## ##IFupdate.leaving##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.leaving##&lt;/strong&gt; : ##update.leaving##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.leaving## ##IFupdate.helpdesk##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.resource.helpdesk##&lt;/strong&gt; : ##update.helpdesk##
                        &lt;br /&gt;&lt;/span&gt;##ENDIFupdate.helpdesk####ENDFOREACHupdates##   ##FOREACHtasks##----------
                        &lt;br /&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.title## :&lt;/strong&gt;&lt;/span&gt; &lt;br /&gt; ##IFtask.name##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.name##&lt;/strong&gt; : ##task.name##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.name## ##IFtask.type##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.type##&lt;/strong&gt; : ##task.type##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.type## ##IFtask.users##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.users##&lt;/strong&gt; : ##task.users##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.users## ##IFtask.groups##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.groups##&lt;/strong&gt; : ##task.groups##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.groups## ##IFtask.datebegin##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.datebegin##&lt;/strong&gt; : ##task.datebegin##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.datebegin## ##IFtask.dateend##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.dateend##&lt;/strong&gt; : ##task.dateend##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.dateend## ##IFtask.comment##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.comment##&lt;/strong&gt; : ##task.comment##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.comment## ##IFtask.finished##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.finished##&lt;/strong&gt; : ##task.finished##&lt;br /&gt;
                        &lt;/span&gt;##ENDIFtask.finished## ##IFtask.realtime##
                        &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
                        &lt;strong&gt;##lang.task.realtime##&lt;/strong&gt; : ##task.realtime##
                        &lt;/span&gt;##ENDIFtask.realtime##&lt;br /&gt;----------##ENDFOREACHtasks##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('27','27','','##resource.action## : ##resource.entity##','##FOREACHtasks##
   ##lang.task.name## : ##task.name##
   ##lang.task.type## : ##task.type##
   ##lang.task.users## : ##task.users##
   ##lang.task.groups## : ##task.groups##
   ##lang.task.datebegin## : ##task.datebegin##
   ##lang.task.dateend## : ##task.dateend##
   ##lang.task.comment## : ##task.comment##
   ##lang.task.resource## : ##task.resource##
   ##ENDFOREACHtasks##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.groups##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.comment##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.resource##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHtasks##
   &lt;tr&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.groups##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.comment##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.resource##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHtasks##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('28','28','','##resource.action## : ##resource.entity##','##FOREACHresources##
   ##lang.resource.name## : ##resource.name##
   ##lang.resource.firstname## : ##resource.firstname##
   ##lang.resource.type## : ##resource.type##
   ##lang.resource.location## : ##resource.location##
   ##lang.resource.users## : ##resource.users##
   ##lang.resource.dateend## : ##resource.dateend##
   ##ENDFOREACHresources##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.firstname##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHresources##
   &lt;tr&gt;
   &lt;td&gt;&lt;a href=\"##resource.url##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.name##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.firstname##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHresources##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('29','29','','##checklist.action## : ##checklist.entity##','##lang.checklist.title##

   ##FOREACHchecklists##
   ##lang.checklist.name## ##lang.checklist.firstname## : ##checklist.name## ##checklist.firstname##
   ##lang.checklist.datebegin## : ##checklist.datebegin##
   ##lang.checklist.dateend## : ##checklist.dateend##
   ##lang.checklist.entity## : ##checklist.entity##
   ##lang.checklist.location## : ##checklist.location##
   ##lang.checklist.type## : ##checklist.type##

   ##lang.checklist.title2## :
   ##tasklist.name##
   ##ENDFOREACHchecklists##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr bgcolor=\"#d9c4b8\"&gt;
   &lt;th colspan=\"7\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: center;\"&gt;##lang.checklist.title##&lt;/span&gt;&lt;/th&gt;
   &lt;/tr&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.name## ##lang.checklist.firstname##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.entity##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.checklist.title2##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHchecklists##
   &lt;tr&gt;
   &lt;td&gt;&lt;a href=\"##checklist.url##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.name## ##checklist.firstname##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.entity##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##checklist.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
   &lt;table width=\"100%\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt; ##tasklist.name## &lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   &lt;/tbody&gt;
   &lt;/table&gt;
   &lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHchecklists##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('30','30','','##lang.resource.title## -  ##resource.firstname## ##resource.name##','##lang.resource.title2##

   ##lang.resource.url## : ##resource.url##

   ##lang.resource.entity## : ##resource.entity##
   ##IFresource.name## ##lang.resource.name## : ##resource.name##
   ##ENDIFresource.name##
   ##IFresource.firstname## ##lang.resource.firstname## : ##resource.firstname##
   ##ENDIFresource.firstname##

   ##lang.resource.badge##','&lt;p&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.resource.title2##&lt;/strong&gt;
   &lt;p&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
   &lt;strong&gt;##lang.resource.url##&lt;/strong&gt; :
   &lt;a href=\"##resource.url##\"&gt;##resource.url##&lt;/a&gt;
   &lt;/span&gt; &lt;br /&gt;&lt;br /&gt;
   &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
   &lt;strong&gt;##lang.resource.entity##&lt;/strong&gt; : ##resource.entity##&lt;/span&gt;
   &lt;br /&gt; ##IFresource.name##
   &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
   &lt;strong&gt;##lang.resource.name##&lt;/strong&gt; : ##resource.name##&lt;br /&gt;
   &lt;/span&gt;##ENDIFresource.name## ##IFresource.firstname##
   &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
   &lt;strong&gt;##lang.resource.firstname##&lt;/strong&gt; : ##resource.firstname##
   &lt;br /&gt;&lt;/span&gt;##ENDIFresource.firstname##&lt;/p&gt;
   &lt;p&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.resource.badge##&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;
   &lt;/span&gt;&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('31','31','','##lang.resource.title## -  ##resource.firstname## ##resource.name##','##lang.resource.creationtitle##

##lang.resource.entity## : ##resource.entity##

##lang.resource.name## : ##resource.name##
##lang.resource.firstname## : ##resource.firstname##
##lang.resource.department## : ##resource.department##
##lang.resource.location## : ##resource.location##
##lang.resource.users## : ##resource.users##
##lang.resource.usersrecipient## : ##resource.usersrecipient##
##lang.resource.datedeclaration## : ##resource.datedeclaration##
##lang.resource.datebegin## : ##resource.datebegin##

##lang.resource.creation##

##lang.resource.datecreation## : ##resource.datecreation##
##lang.resource.login## : ##resource.login##
##lang.resource.email## : ##resource.email##

##lang.resource.informationtitle##

##IFresource.commentaires####lang.resource.commentaires## : ##resource.commentaires####ENDIFresource.commentaires##

##IFresource.informations####lang.resource.informations## : ##resource.informations####ENDIFresource.informations##','&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.creationtitle##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"2\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" colspan=\"2\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.location##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.location##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.usersrecipient##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.usersrecipient##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datedeclaration##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.datedeclaration##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.creation##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datecreation##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.datecreation##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.login##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.login##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.email##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.email##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.informationtitle##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
##IFresource.commentaires##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFresource.commentaires## ##IFresource.informations##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.informations##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.informations##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFresource.informations##
&lt;/tbody&gt;
&lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('32','32','','##lang.resource.title## -  ##resource.firstname## ##resource.name##','##lang.resource.restingtitle##
##lang.resource.openby## : ##resource.openby##
##lang.resource.entity## : ##resource.entity##

##lang.resource.name## : ##resource.name##
##lang.resource.firstname## : ##resource.firstname##

##lang.resource.department## : ##resource.department##
##lang.resource.users## : ##resource.users##

##lang.resource.resting##

##lang.resource.location## : ##resource.location##
##lang.resource.home## : ##resource.home##
##lang.resource.datebegin## : ##resource.datebegin##
##lang.resource.dateend## : ##resource.dateend##

##lang.resource.commentaires## : ##resource.commentaires##

##FOREACHupdates##
##lang.update.title##

##IFupdate.datebegin####lang.resource.datebegin## : ##update.datebegin####ENDIFupdate.datebegin##
##IFupdate.dateend####lang.resource.dateend## : ##update.dateend####ENDIFupdate.dateend##
##IFupdate.location####lang.resource.location## : ##update.location###ENDIFupdate.location##
##IFupdate.home####lang.resource.home## : ##update.home####ENDIFupdate.home##
##IFupdate.comment####lang.resource.comment## : ##update.comment####ENDIFupdate.comment##
##ENDFOREACHupdates##','&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.restingtitle##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.openby##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.openby##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.resting##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.location##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.location##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.home##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.home##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.dateend##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.dateend##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;##FOREACHupdates##&lt;/p&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.update.title##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
##IFupdate.datebegin##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datebegin## : ##update.datebegin##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.datebegin## ##IFupdate.dateend##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.dateend## : ##update.dateend##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.dateend## ##IFupdate.location##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.location## : ##update.location##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.location## ##IFupdate.home##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.home## : ##update.home##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.home## ##IFupdate.comment##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.comment## : ##update.comment##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.comment##
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;##ENDFOREACHupdates##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('33','33','','##lang.resource.title## -  ##resource.firstname## ##resource.name##','##lang.resource.holidaytitle##
##lang.resource.openby## : ##resource.openby##
##lang.resource.entity## : ##resource.entity##

##lang.resource.name## : ##resource.name##
##lang.resource.firstname## : ##resource.firstname##

##lang.resource.department## : ##resource.department##
##lang.resource.users## : ##resource.users##

##lang.resource.holiday##

##lang.resource.datebegin## : ##resource.datebegin##
##lang.resource.dateend## : ##resource.dateend##

##lang.resource.commentaires## : ##resource.commentaires##

##FOREACHupdates##
##lang.update.title##

##IFupdate.datebegin####lang.resource.datebegin## : ##update.datebegin####ENDIFupdate.datebegin##
##IFupdate.dateend####lang.resource.dateend## : ##update.dateend####ENDIFupdate.dateend##
##IFupdate.comment####lang.resource.comment## : ##update.comment####ENDIFupdate.comment##
##ENDFOREACHupdates##','&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.holidaytitle##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.entity##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.openby##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.openby##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.name##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.firstname##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.department##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.users##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.resource.holiday##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.datebegin##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.dateend##&lt;/span&gt;&lt;/td&gt;
&lt;td style=\"text-align: left;\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.dateend##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##resource.commentaires##&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;##FOREACHupdates##&lt;/p&gt;
&lt;p style=\"text-align: center;\"&gt;&lt;span style=\"font-size: 11px; font-family: verdana;\"&gt;##lang.update.title##&lt;/span&gt;&lt;/p&gt;
&lt;table border=\"1\" cellspacing=\"2\" cellpadding=\"3\" width=\"590px\" align=\"center\"&gt;
&lt;tbody&gt;
##IFupdate.datebegin##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.datebegin## : ##update.datebegin##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.datebegin## ##IFupdate.dateend##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.dateend## : ##update.dateend##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.dateend## ##IFupdate.comment##
&lt;tr&gt;
&lt;td style=\"text-align: left;\" colspan=\"4\" width=\"auto\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;
&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.resource.comment## : ##update.comment##
&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
##ENDIFupdate.comment##
&lt;/tbody&gt;
&lt;/table&gt;
&lt;p&gt;##ENDFOREACHupdates##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('34','34','','##typology.action## : ##typology.entity##','##FOREACHitems##
   ##lang.typology.name## : ##typology.name##
   ##lang.typology.itemtype## : ##typology.itemtype##
   ##lang.typology.items_id## : ##typology.items_id##
   ##lang.typology.itemlocation## : ##typology.itemlocation##
   ##lang.typology.itemuser## : ##typology.itemuser##
   ##lang.typology.error## : ##typology.error##
   ##ENDFOREACHitems##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.itemtype##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.items_id##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.itemlocation##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.itemuser##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.typology.error##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHtypologyitems##
   &lt;tr&gt;
   &lt;td&gt;&lt;a href=\"##typology.url##\" target=\"_blank\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.name##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.itemtype##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;a href=\"##typology.itemurl##\" target=\"_blank\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.items_id##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.itemlocation##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.itemuser##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##typology.error##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHtypologyitems##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('35','35','','##lang.ideabox.title##','##lang.ideabox.url## : ##ideabox.url##
   ##lang.ideabox.entity## : ##ideabox.entity##
   ##IFideabox.name####lang.ideabox.name## : ##ideabox.name##
   ##ENDIFideabox.name##
   ##IFideabox.comment####lang.ideabox.comment## : ##ideabox.comment##
   ##ENDIFideabox.comment##

   ##FOREACHupdates##----------
   ##lang.update.title##:
   ##IFupdate.name####lang.ideabox.name## : ##update.name####ENDIFupdate.name##
   ##IFupdate.comment##
   ##lang.ideabox.comment## : ##update.comment##
   ##ENDIFupdate.comment##
   ----------##ENDFOREACHupdates##

   ##lang.comment.title##
   ----------
   ##FOREACHcomments##
   ##IFcomment.name####lang.comment.name## : ##comment.name####ENDIFcomment.name##
   ##IFcomment.author####lang.comment.author## : ##comment.author####ENDIFcomment.author##
   ##IFcomment.datecomment####lang.comment.datecomment## : ##comment.datecomment####ENDIFcomment.datecomment##
   ##IFcomment.comment####lang.comment.comment## : ##comment.comment####ENDIFcomment.comment##
   -------
   ##ENDFOREACHcomments##','&lt;p&gt;&lt;strong&gt;##lang.ideabox.url##&lt;/strong&gt; : &lt;a href=\"##ideabox.url##\"&gt;##ideabox.url##&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;##lang.ideabox.entity##&lt;/strong&gt; : ##ideabox.entity##&lt;br /&gt; ##IFideabox.name##&lt;strong&gt;##lang.ideabox.name##&lt;/strong&gt; : ##ideabox.name####ENDIFideabox.name##&lt;br /&gt;&lt;br /&gt; ##IFideabox.comment##&lt;strong&gt;##lang.ideabox.comment##&lt;/strong&gt; : ##ideabox.comment####ENDIFideabox.comment##&lt;br /&gt;&lt;br /&gt;##FOREACHupdates##----------&lt;br /&gt;&lt;strong&gt;##lang.update.title## :&lt;/strong&gt;&lt;br /&gt;##IFupdate.name##&lt;strong&gt;##lang.ideabox.name##&lt;/strong&gt; : ##update.name####ENDIFupdate.name##&lt;br /&gt;##IFupdate.comment##&lt;br /&gt;&lt;strong&gt;##lang.ideabox.comment##&lt;/strong&gt; : ##update.comment##&lt;br /&gt;##ENDIFupdate.comment##&lt;br /&gt;----------##ENDFOREACHupdates##&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;##lang.comment.title## :&lt;/strong&gt;&lt;br /&gt;----------&lt;br /&gt;##FOREACHcomments####IFcomment.name##&lt;strong&gt;##lang.comment.name##&lt;/strong&gt; : ##comment.name####ENDIFcomment.name##&lt;br /&gt;##IFcomment.author##&lt;strong&gt;##lang.comment.author##&lt;/strong&gt; : ##comment.author####ENDIFcomment.author##&lt;br /&gt;##IFcomment.datecomment##&lt;strong&gt;##lang.comment.datecomment##&lt;/strong&gt; : ##comment.datecomment####ENDIFcomment.datecomment##&lt;br /&gt;##IFcomment.comment##&lt;strong&gt;##lang.comment.comment##&lt;/strong&gt; : ##comment.comment####ENDIFcomment.comment##&lt;br /&gt;----------&lt;br /&gt;##ENDFOREACHcomments##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('36','36','','##lang.projet.title## - ##projet.name##','##lang.projet.url## : ##projet.url##

##lang.projet.entity## : ##projet.entity##
##IFprojet.name####lang.projet.name## : ##projet.name####ENDIFprojet.name##
##IFprojet.datebegin####lang.projet.datebegin## : ##projet.datebegin####ENDIFprojet.datebegin##
##IFprojet.dateend####lang.projet.dateend## : ##projet.dateend####ENDIFprojet.dateend##
##IFprojet.users####lang.projet.users## : ##projet.users####ENDIFprojet.users##
##IFprojet.groups####lang.projet.groups## : ##projet.groups####ENDIFprojet.groups##
##IFprojet.status####lang.projet.status## : ##projet.status####ENDIFprojet.status##
##IFprojet.parent####lang.projet.parent## : ##projet.parent####ENDIFprojet.parent##
##IFprojet.advance####lang.projet.advance## : ##projet.advance####ENDIFprojet.advance##
##IFprojet.comment## ##lang.projet.comment## : ##projet.comment####ENDIFprojet.comment##
##IFprojet.description####lang.projet.description## : ##projet.description####ENDIFprojet.description##
##IFprojet.helpdesk####lang.projet.helpdesk## : ##projet.helpdesk####ENDIFprojet.helpdesk##
##FOREACHupdates##----------
##lang.update.title## : 
##IFupdate.name####lang.projet.name## : ##update.name####ENDIFupdate.name##
##IFupdate.datebegin####lang.projet.datebegin## : ##update.datebegin####ENDIFupdate.datebegin##
##IFupdate.dateend####lang.projet.dateend## : ##update.dateend####ENDIFupdate.dateend##
##IFupdate.users####lang.projet.users## : ##update.users####ENDIFupdate.users##
##IFupdate.groups####lang.projet.groups## : ##update.groups####ENDIFupdate.groups##
##IFupdate.status####lang.projet.status## : ##update.status####ENDIFupdate.status##
##IFupdate.parent####lang.projet.parent## : ##update.parent####ENDIFupdate.parent##
##IFupdate.advance####lang.projet.advance## : ##update.advance####ENDIFupdate.advance##
##IFupdate.comment## ##lang.projet.comment## : ##update.comment####ENDIFupdate.comment##
##IFupdate.description####lang.projet.description## : ##update.description####ENDIFupdate.description##
##IFupdate.helpdesk####lang.projet.helpdesk## : ##update.helpdesk####ENDIFupdate.helpdesk##
##ENDFOREACHupdates##----------
##IFfollowup.title## ##lang.followup.title####ENDIFfollowup.title##
##FOREACHfollowups##----------
##IFfollowup.recipient####lang.followup.recipient## : ##followup.recipient####ENDIFfollowup.recipient##
##IFfollowup.date####lang.followup.date## : ##followup.date####ENDIFfollowup.date##
##IFfollowup.description####lang.followup.description## : ##followup.description####ENDIFfollowup.description##
----------##ENDFOREACHfollowups##----------
##IFtask.title## ##lang.task.title####ENDIFtask.title##
##FOREACHtasks##----------
##IFtask.name####lang.task.name## : ##task.name####ENDIFtask.name##
##IFtask.users####lang.task.users## : ##task.users####ENDIFtask.users##
##IFtask.groups####lang.task.groups## : ##task.groups####ENDIFtask.groups##
##IFtask.contacts## ##lang.task.contacts## : ##task.contacts####ENDIFtask.contacts##
##IFtask.type####lang.task.type## : ##task.type####ENDIFtask.type##
##IFtask.status####lang.task.status## : ##task.status####ENDIFtask.status##
##IFtask.location####lang.task.location## : ##task.location####ENDIFtask.location##
##IFtask.advance####lang.task.advance## : ##task.advance####ENDIFtask.advance##
##IFtask.priority####lang.task.priority## : ##task.priority####ENDIFtask.priority##
##IFtask.comment####lang.task.comment## : ##task.comment####ENDIFtask.comment##
##IFtask.sub####lang.task.sub## : ##task.sub####ENDIFtask.sub##
##IFtask.others####lang.task.others## : ##task.others####ENDIFtask.others##
##IFtask.affect####lang.task.affect## : ##task.affect####ENDIFtask.affect##
##IFtask.depends####lang.task.depends## : ##task.depends####ENDIFtask.depends##
##IFtask.parenttask####lang.task.parenttask## : ##task.parenttask####ENDIFtask.parenttask##
##IFtask.realtime####lang.task.realtime## : ##task.realtime## ##ENDIFtask.realtime##
----------##ENDFOREACHtasks##','&lt;p&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.url##&lt;/strong&gt; : &lt;a href=\"##projet.url##\"&gt;##projet.url##&lt;/a&gt;&lt;/span&gt; &lt;br /&gt;&lt;br /&gt; &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.entity##&lt;/strong&gt; : ##projet.entity##&lt;/span&gt; &lt;br /&gt; ##IFprojet.name##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.name##&lt;/strong&gt; : ##projet.name##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.name## ##IFprojet.datebegin##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.datebegin##&lt;/strong&gt; :  ##projet.datebegin##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.datebegin## ##IFprojet.dateend##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.dateend##&lt;/strong&gt; :  ##projet.dateend##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.dateend## ##IFprojet.users##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.users##&lt;/strong&gt; :  ##projet.users##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.users## ##IFprojet.groups##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.groups##&lt;/strong&gt; :  ##projet.groups##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.groups## ##IFprojet.status##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.status##&lt;/strong&gt; :  ##projet.status##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.status## ##IFprojet.parent##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.parent##&lt;/strong&gt; :  ##projet.parent##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.parent## ##IFprojet.advance##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.advance##&lt;/strong&gt; :  ##projet.advance##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.advance## ##IFprojet.comment##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.comment##&lt;/strong&gt; :  ##projet.comment##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.comment## ##IFprojet.description##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.description##&lt;/strong&gt; :  ##projet.description##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.description## ##IFprojet.helpdesk##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.helpdesk##&lt;/strong&gt; :  ##projet.helpdesk##&lt;br /&gt;&lt;/span&gt;##ENDIFprojet.helpdesk##  ##FOREACHupdates##----------&lt;br /&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.update.title## :&lt;/strong&gt;&lt;/span&gt; &lt;br /&gt; ##IFupdate.name##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.name##&lt;/strong&gt; : ##update.name##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.name## ##IFupdate.datebegin##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.datebegin##&lt;/strong&gt; : ##update.datebegin##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.datebegin## ##IFupdate.dateend##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.dateend##&lt;/strong&gt; : ##update.dateend##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.dateend## ##IFupdate.users##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.users##&lt;/strong&gt; : ##update.users##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.users## ##IFupdate.groups##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.groups##&lt;/strong&gt; : ##update.groups##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.groups## ##IFupdate.status##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.status##&lt;/strong&gt; : ##update.status##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.status## ##IFupdate.parent##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.parent##&lt;/strong&gt; : ##update.parent##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.parent## ##IFupdate.advance##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.advance##&lt;/strong&gt; : ##update.advance##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.advance## ##IFupdate.comment##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.comment##&lt;/strong&gt; : ##update.comment##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.comment## ##IFupdate.description##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.description##&lt;/strong&gt; : ##update.description##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.description## ##IFupdate.helpdesk##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.projet.helpdesk##&lt;/strong&gt; : ##update.helpdesk##&lt;br /&gt;&lt;/span&gt;##ENDIFupdate.helpdesk##  ##ENDFOREACHupdates##----------&lt;br /&gt; ##IFtask.title##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.title##&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;##ENDIFtask.title## ##FOREACHtasks##----------&lt;br /&gt; ##IFtask.name##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.name##&lt;/strong&gt; : ##task.name##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.name## ##IFtask.users##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.users##&lt;/strong&gt; : ##task.users##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.users## ##IFtask.groups##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.groups##&lt;/strong&gt; : ##task.groups##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.groups## ##IFtask.contacts##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.contacts##&lt;/strong&gt; : ##task.contacts##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.contacts## ##IFtask.type##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.type##&lt;/strong&gt; : ##task.type##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.type## ##IFtask.status##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.status##&lt;/strong&gt; : ##task.status##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.status## ##IFtask.location##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.location##&lt;/strong&gt; : ##task.location##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.location## ##IFtask.advance##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.advance##&lt;/strong&gt; : ##task.advance##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.advance## ##IFtask.priority##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.priority##&lt;/strong&gt; : ##task.priority##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.priority## ##IFtask.comment##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.comment##&lt;/strong&gt; : ##task.comment##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.comment## ##IFtask.sub##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.sub##&lt;/strong&gt; : ##task.sub##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.sub## ##IFtask.others##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.others##&lt;/strong&gt; : ##task.others##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.others## ##IFtask.affect##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.affect##&lt;/strong&gt; : ##task.affect##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.affect## ##IFtask.depends##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.depends##&lt;/strong&gt; : ##task.depends##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.depends## ##IFtask.parenttask##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.parenttask##&lt;/strong&gt; : ##task.parenttask##&lt;br /&gt;&lt;/span&gt;##ENDIFtask.parenttask## ##IFtask.realtime##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;&lt;strong&gt;##lang.task.realtime##&lt;/strong&gt; : ##task.realtime##&lt;/span&gt;##ENDIFtask.realtime## &lt;br /&gt;----------##ENDFOREACHtasks##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('37','37','','##projet.action## : ##projet.entity##','##FOREACHtasks## 
   ##lang.task.name## : ##task.name##
   ##lang.task.type## : ##task.type##
   ##lang.task.users## : ##task.users##
   ##lang.task.groups## : ##task.groups##
   ##lang.task.datebegin## : ##task.datebegin##
   ##lang.task.dateend## : ##task.dateend##
   ##lang.task.comment## : ##task.comment##
   ##lang.task.projet## : ##task.projet##
   ##ENDFOREACHtasks##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.groups##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.comment##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.task.projet##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHtasks##
   &lt;tr&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.type##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.users##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.groups##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.datebegin##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.dateend##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.comment##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##task.projet##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHtasks##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('38','38','','##lang.ordervalidation.title##','##lang.ordervalidation.url## : ##ordervalidation.url##
            ##lang.ordervalidation.entity## : ##ordervalidation.entity##
            ##IFordervalidation.name####lang.ordervalidation.name## : ##ordervalidation.name##
            ##ENDIFordervalidation.name##
            ##IFordervalidation.numorder####lang.ordervalidation.numorder## : ##ordervalidation.numorder##
            ##ENDIFordervalidation.numorder##
            ##IFordervalidation.orderdate####lang.ordervalidation.orderdate##  : ##ordervalidation.orderdate####ENDIFordervalidation.orderdate##
            ##IFordervalidation.state####lang.ordervalidation.state## : ##ordervalidation.state####ENDIFordervalidation.state##
            ##IFordervalidation.users####lang.ordervalidation.users## : ##ordervalidation.users####ENDIFordervalidation.users##
            
            ##IFordervalidation.comment####lang.ordervalidation.comment## : ##ordervalidation.comment####ENDIFordervalidation.comment##','&lt;p&gt;&lt;strong&gt;##lang.ordervalidation.url##&lt;/strong&gt; : &lt;a href=\"##ordervalidation.url##\"&gt;##ordervalidation.url##&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;##lang.ordervalidation.entity##&lt;/strong&gt; : ##ordervalidation.entity##&lt;br /&gt; ##IFordervalidation.name##&lt;strong&gt;##lang.ordervalidation.name##&lt;/strong&gt; : ##ordervalidation.name####ENDIFordervalidation.name##&lt;br /&gt;##IFordervalidation.numorder##&lt;strong&gt;##lang.ordervalidation.numorder##&lt;/strong&gt; : ##ordervalidation.numorder####ENDIFordervalidation.numorder##&lt;br /&gt;##IFordervalidation.orderdate##&lt;strong&gt;##lang.ordervalidation.orderdate##&lt;/strong&gt; : ##ordervalidation.orderdate####ENDIFordervalidation.orderdate##&lt;br /&gt;##IFordervalidation.state##&lt;strong&gt;##lang.ordervalidation.state##&lt;/strong&gt; : ##ordervalidation.state####ENDIFordervalidation.state##&lt;br /&gt;##IFordervalidation.users##&lt;strong&gt;##lang.ordervalidation.users##&lt;/strong&gt; : ##ordervalidation.users####ENDIFordervalidation.users##&lt;br /&gt;&lt;br /&gt;##IFordervalidation.comment##&lt;strong&gt;##lang.ordervalidation.comment##&lt;/strong&gt; : ##ordervalidation.comment####ENDIFordervalidation.comment##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('39','39','','##order.action## ##order.entity##','##lang.order.entity## : ##order.entity##
 
##FOREACHorders##
##lang.order.item.name## : ##order.item.name##
 ##lang.order.item.numorder## : ##order.item.numorder##
 ##lang.order.item.orderdate## : ##order.item.orderdate##
 ##lang.order.item.duedate## : ##order.item.duedate##
 ##lang.order.item.deliverydate## : ##order.item.deliverydate##
 ##order.item.url## 
 ##ENDFOREACHorders##','##lang.order.entity## : ##order.entity##&lt;br /&gt; &lt;br /&gt;##FOREACHorders##&lt;br /&gt;##lang.order.item.name## : ##order.item.name##&lt;br /&gt; ##lang.order.item.numorder## : ##order.item.numorder##&lt;br /&gt; ##lang.order.item.orderdate## : ##order.item.orderdate##&lt;br /&gt; &lt;a&gt;##lang.order.item.duedate## : ##order.item.duedate##&lt;br /&gt; &lt;/a&gt;&lt;a&gt;##lang.order.item.deliverydate## : ##order.item.deliverydate##&lt;br /&gt; &lt;/a&gt;&lt;a&gt;##order.item.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHorders##');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('40','40','','##order.action## ##ordervalidation.name## ##ordervalidation.numorder##','##order.action##
##lang.ordervalidation.name## :
##ordervalidation.name##
##lang.ordervalidation.orderdate## :
##ordervalidation.orderdate##
##lang.ordervalidation.entity## :
##ordervalidation.entity##','&lt;p&gt;##order.action## &lt;br /&gt;&lt;br /&gt;&#160;
                ##lang.ordervalidation.name## : &lt;br /&gt;&#160;
                ##ordervalidation.name## &lt;br /&gt;&#160;
                ##lang.ordervalidation.orderdate## : &lt;br /&gt;&#160;
                ##ordervalidation.orderdate## &lt;br /&gt;&#160; &lt;br /&gt;&#160;
                ##lang.ordervalidation.entity## : &lt;br /&gt;&#160;##ordervalidation.entity##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('41','41','','##lang.notinfocom.title## : ##notinfocom.entity##','##FOREACHnotinfocoms##
   ##lang.notinfocom.name## : ##notinfocom.name##
   ##lang.notinfocom.computertype## : ##notinfocom.computertype##
   ##lang.notinfocom.operatingsystem## : ##notinfocom.operatingsystem##
   ##lang.notinfocom.state## : ##notinfocom.state##
   ##lang.notinfocom.location## : ##notinfocom.location##
   ##lang.notinfocom.user## : ##notinfocom.user## / ##notinfocom.group## / ##notinfocom.contact##
   ##ENDFOREACHnotinfocoms##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.computertype##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.operatingsystem##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.state##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.notinfocom.user##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHnotinfocoms##            
   &lt;tr&gt;
   &lt;td&gt;&lt;a href=\"##notinfocom.urlname##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.name##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.computertype##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.operatingsystem##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.state##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;a href=\"##notinfocom.urluser##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.user##&lt;/span&gt;&lt;/a&gt; / &lt;a href=\"##notinfocom.urlgroup##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.group##&lt;/span&gt;&lt;/a&gt; / &lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##notinfocom.contact##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHnotinfocoms##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('42','42','','##lang.ocsmachine.title## : ##ocsmachine.entity##','##FOREACHocsmachines##
   ##lang.ocsmachine.name## : ##ocsmachine.name##
   ##lang.ocsmachine.operatingsystem## : ##ocsmachine.operatingsystem##
   ##lang.ocsmachine.state## : ##ocsmachine.state##
   ##lang.ocsmachine.location## : ##ocsmachine.location##
   ##lang.ocsmachine.user## : ##ocsmachine.user## / ##lang.ocsmachine.group## : ##ocsmachine.group## / ##lang.ocsmachine.contact## : ##ocsmachine.contact##
   ##lang.ocsmachine.lastocsupdate## : ##ocsmachine.lastocsupdate##
   ##lang.ocsmachine.lastupdate## : ##ocsmachine.lastupdate##
   ##lang.ocsmachine.ocsserver## : ##ocsmachine.ocsserver##
   ##ENDFOREACHocsmachines##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;
   &lt;tbody&gt;
   &lt;tr&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.name##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.operatingsystem##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.state##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.user##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.lastocsupdate##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.lastupdate##&lt;/span&gt;&lt;/td&gt;
   &lt;td style=\"text-align: left;\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##lang.ocsmachine.ocsserver##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##FOREACHocsmachines##                 
   &lt;tr&gt;
   &lt;td&gt;&lt;a href=\"##ocsmachine.urlname##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.name##&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.operatingsystem##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.state##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.location##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;##IFocsmachine.user##&lt;a href=\"##ocsmachine.urluser##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.user##&lt;/span&gt;&lt;/a&gt; / ##ENDIFocsmachine.user####IFocsmachine.group##&lt;a href=\"##ocsmachine.urlgroup##\"&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.group##&lt;/span&gt;&lt;/a&gt; / ##ENDIFocsmachine.group####IFocsmachine.contact##&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.contact####ENDIFocsmachine.contact##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.lastocsupdate##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.lastupdate##&lt;/span&gt;&lt;/td&gt;
   &lt;td&gt;&lt;span style=\"font-family: Verdana; font-size: 11px; text-align: left;\"&gt;##ocsmachine.ocsserver##&lt;/span&gt;&lt;/td&gt;
   &lt;/tr&gt;
   ##ENDFOREACHocsmachines##
   &lt;/tbody&gt;
   &lt;/table&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('43','43','','##lang.helpdeskrating.event## ##helpdeskrating.ticketname##','URL: ##helpdeskrating.url##

Name: ##helpdeskrating.ticketname##

##lang.helpdeskrating.text_rating0##
##IFhelpdeskrating.event=userrating##
##lang.helpdeskrating.ratekat1##: ##helpdeskrating.ratekat1##
##lang.helpdeskrating.ratekat2##: ##helpdeskrating.ratekat2##
##lang.helpdeskrating.ratekat3##: ##helpdeskrating.ratekat3##
##lang.helpdeskrating.ratekat4##: ##helpdeskrating.ratekat4##
##lang.helpdeskrating.comment##: ##helpdeskrating.comment##
##ENDIFhelpdeskrating.event##
##IFhelpdeskrating.event=techrating##
##lang.helpdeskrating.ratetech0##: ##helpdeskrating.ratetech0##
 ##lang.helpdeskrating.ratetech1##: ##helpdeskrating.ratetech1##
 ##lang.helpdeskrating.ratetech2##: ##helpdeskrating.ratetech2##
 ##lang.helpdeskrating.comment##: ##helpdeskrating.comment##
 ##ENDIFhelpdeskrating.event##','&lt;p&gt;&lt;strong&gt;URL&lt;/strong&gt;: &lt;a href=\"##helpdeskrating.url##\"&gt;##helpdeskrating.url##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;Name&lt;/strong&gt;: ##helpdeskrating.ticketname##&lt;/p&gt;
&lt;p&gt;##lang.helpdeskrating.text_rating0##&lt;br /&gt;##IFhelpdeskrating.event=userrating##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.ratekat1##&lt;/strong&gt;: ##helpdeskrating.ratekat1##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.ratekat2##&lt;/strong&gt;: ##helpdeskrating.ratekat2##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.ratekat3##&lt;/strong&gt;: ##helpdeskrating.ratekat3##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.ratekat4##&lt;/strong&gt;: ##helpdeskrating.ratekat4##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.comment##&lt;/strong&gt;: ##helpdeskrating.comment##&lt;br /&gt;##ENDIFhelpdeskrating.event##&lt;br /&gt;##IFhelpdeskrating.event=techrating##&lt;br /&gt;&lt;strong&gt;##lang.helpdeskrating.ratetech0##&lt;/strong&gt;: ##helpdeskrating.ratetech0##&lt;br /&gt; &lt;strong&gt;##lang.helpdeskrating.ratetech1##&lt;/strong&gt;: ##helpdeskrating.ratetech1##&lt;br /&gt; &lt;strong&gt;##lang.helpdeskrating.ratetech2##&lt;/strong&gt;: ##helpdeskrating.ratetech2##&lt;br /&gt; &lt;strong&gt;##lang.helpdeskrating.comment##&lt;/strong&gt;: ##helpdeskrating.comment##&lt;br /&gt; ##ENDIFhelpdeskrating.event##&lt;/p&gt;');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('44','44','',' GLPI statistics reports','Hello,

GLPI reports are available.
You can download it at : ##mreporting.file_url##
','<p>Hello,</p>

<p>GLPI reports are available.<br />
   You can download it at : <a href=\"##mreporting.file_url##\">##mreporting.file_url##</a></p>
');
INSERT INTO `glpi_notificationtemplatetranslations` VALUES ('45','45','','##lang.notimported.action## : ##notimported.entity##','

##lang.notimported.action## :&#160;##notimported.entity##

##FOREACHnotimported##&#160;
##lang.notimported.reason## : ##notimported.reason##
##lang.notimported.name## : ##notimported.name##
##lang.notimported.deviceid## : ##notimported.deviceid##
##lang.notimported.tag## : ##notimported.tag##
##lang.notimported.serial## : ##notimported.serial## 

 ##notimported.url## 
##ENDFOREACHnotimported## 
','&lt;p&gt;##lang.notimported.action## :&#160;##notimported.entity##&lt;br /&gt;&lt;br /&gt;##FOREACHnotimported##&#160;&lt;br /&gt;##lang.notimported.reason## : ##notimported.reason##&lt;br /&gt;##lang.notimported.name## : ##notimported.name##&lt;br /&gt;##lang.notimported.deviceid## : ##notimported.deviceid##&lt;br /&gt;##lang.notimported.tag## : ##notimported.tag##&lt;br /&gt;##lang.notimported.serial## : ##notimported.serial##&lt;/p&gt;
&lt;p&gt;&lt;a href=\"##notimported.url##\"&gt;##notimported.url##&lt;/a&gt;&lt;br /&gt;##ENDFOREACHnotimported##&lt;/p&gt;');

### Dump table glpi_notimportedemails

DROP TABLE IF EXISTS `glpi_notimportedemails`;
CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `mailcollectors_id` (`mailcollectors_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### Dump table glpi_operatingsystems

DROP TABLE IF EXISTS `glpi_operatingsystems`;
CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemservicepacks

DROP TABLE IF EXISTS `glpi_operatingsystemservicepacks`;
CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_operatingsystemversions

DROP TABLE IF EXISTS `glpi_operatingsystemversions`;
CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripheralmodels

DROP TABLE IF EXISTS `glpi_peripheralmodels`;
CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripherals

DROP TABLE IF EXISTS `glpi_peripherals`;
CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `peripheralmodels_id` (`peripheralmodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `peripheraltypes_id` (`peripheraltypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_peripheraltypes

DROP TABLE IF EXISTS `glpi_peripheraltypes`;
CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonemodels

DROP TABLE IF EXISTS `glpi_phonemodels`;
CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonepowersupplies

DROP TABLE IF EXISTS `glpi_phonepowersupplies`;
CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phones

DROP TABLE IF EXISTS `glpi_phones`;
CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmware` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `phonemodels_id` (`phonemodels_id`),
  KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `phonetypes_id` (`phonetypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_phonetypes

DROP TABLE IF EXISTS `glpi_phonetypes`;
CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_planningrecalls

DROP TABLE IF EXISTS `glpi_planningrecalls`;
CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  KEY `users_id` (`users_id`),
  KEY `before_time` (`before_time`),
  KEY `when` (`when`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_accounts

DROP TABLE IF EXISTS `glpi_plugin_accounts_accounts`;
CREATE TABLE `glpi_plugin_accounts_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_accounts_accounttypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_accounts_accounttypes (id)',
  `plugin_accounts_accountstates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_accounts_accountstates (id)',
  `date_creation` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_accounts_accounttypes_id` (`plugin_accounts_accounttypes_id`),
  KEY `plugin_accounts_accountstates_id` (`plugin_accounts_accountstates_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_accounts_items

DROP TABLE IF EXISTS `glpi_plugin_accounts_accounts_items`;
CREATE TABLE `glpi_plugin_accounts_accounts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_accounts_accounts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_accounts_accounts_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_accountstates

DROP TABLE IF EXISTS `glpi_plugin_accounts_accountstates`;
CREATE TABLE `glpi_plugin_accounts_accountstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_accounttypes

DROP TABLE IF EXISTS `glpi_plugin_accounts_accounttypes`;
CREATE TABLE `glpi_plugin_accounts_accounttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_aeskeys

DROP TABLE IF EXISTS `glpi_plugin_accounts_aeskeys`;
CREATE TABLE `glpi_plugin_accounts_aeskeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_accounts_hashes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_accounts_hashes_id` (`plugin_accounts_hashes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_configs

DROP TABLE IF EXISTS `glpi_plugin_accounts_configs`;
CREATE TABLE `glpi_plugin_accounts_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_expired` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  `delay_whichexpire` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_accounts_configs` VALUES ('1','30','30');

### Dump table glpi_plugin_accounts_hashes

DROP TABLE IF EXISTS `glpi_plugin_accounts_hashes`;
CREATE TABLE `glpi_plugin_accounts_hashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_notificationstates

DROP TABLE IF EXISTS `glpi_plugin_accounts_notificationstates`;
CREATE TABLE `glpi_plugin_accounts_notificationstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_accounts_accountstates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_accounts_accountstates (id)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_accounts_profiles

DROP TABLE IF EXISTS `glpi_plugin_accounts_profiles`;
CREATE TABLE `glpi_plugin_accounts_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `accounts` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all_users` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_groups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_accounts_profiles` VALUES ('1','4','w','r','r','1');

### Dump table glpi_plugin_additionalalerts_configs

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_configs`;
CREATE TABLE `glpi_plugin_additionalalerts_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_ocs` int(11) NOT NULL DEFAULT '-1',
  `use_infocom_alert` tinyint(1) NOT NULL DEFAULT '-1',
  `use_newocs_alert` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_additionalalerts_configs` VALUES ('1','-1','-1','-1');

### Dump table glpi_plugin_additionalalerts_infocomalerts

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_infocomalerts`;
CREATE TABLE `glpi_plugin_additionalalerts_infocomalerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `use_infocom_alert` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_additionalalerts_notificationstates

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_notificationstates`;
CREATE TABLE `glpi_plugin_additionalalerts_notificationstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_additionalalerts_notificationtypes

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_notificationtypes`;
CREATE TABLE `glpi_plugin_additionalalerts_notificationtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_computertypes (id)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_additionalalerts_ocsalerts

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_ocsalerts`;
CREATE TABLE `glpi_plugin_additionalalerts_ocsalerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `delay_ocs` int(11) NOT NULL DEFAULT '-1',
  `use_newocs_alert` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_additionalalerts_profiles

DROP TABLE IF EXISTS `glpi_plugin_additionalalerts_profiles`;
CREATE TABLE `glpi_plugin_additionalalerts_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `additionalalerts` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_additionalalerts_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_addressing_addressings

DROP TABLE IF EXISTS `glpi_plugin_addressing_addressings`;
CREATE TABLE `glpi_plugin_addressing_addressings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networks (id)',
  `begin_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alloted_ip` tinyint(1) NOT NULL DEFAULT '0',
  `double_ip` tinyint(1) NOT NULL DEFAULT '0',
  `free_ip` tinyint(1) NOT NULL DEFAULT '0',
  `reserved_ip` tinyint(1) NOT NULL DEFAULT '0',
  `use_ping` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `networks_id` (`networks_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_addressing_configs

DROP TABLE IF EXISTS `glpi_plugin_addressing_configs`;
CREATE TABLE `glpi_plugin_addressing_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alloted_ip` tinyint(1) NOT NULL DEFAULT '0',
  `double_ip` tinyint(1) NOT NULL DEFAULT '0',
  `free_ip` tinyint(1) NOT NULL DEFAULT '0',
  `reserved_ip` tinyint(1) NOT NULL DEFAULT '0',
  `use_ping` tinyint(1) NOT NULL DEFAULT '0',
  `used_system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_addressing_configs` VALUES ('1','1','1','1','1','1','0');

### Dump table glpi_plugin_addressing_profiles

DROP TABLE IF EXISTS `glpi_plugin_addressing_profiles`;
CREATE TABLE `glpi_plugin_addressing_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `addressing` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_ping_in_equipment` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_addressing_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_appliances_appliances

DROP TABLE IF EXISTS `glpi_plugin_appliances_appliances`;
CREATE TABLE `glpi_plugin_appliances_appliances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_appliances_appliancetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `plugin_appliances_environments_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `relationtype` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `externalid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`externalid`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plugin_appliances_appliancetypes_id` (`plugin_appliances_appliancetypes_id`),
  KEY `plugin_appliances_environments_id` (`plugin_appliances_environments_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_appliances_items

DROP TABLE IF EXISTS `glpi_plugin_appliances_appliances_items`;
CREATE TABLE `glpi_plugin_appliances_appliances_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_appliances_appliances_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_appliances_appliances_id`,`items_id`,`itemtype`),
  KEY `plugin_appliances_appliances_id` (`plugin_appliances_appliances_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_appliancetypes

DROP TABLE IF EXISTS `glpi_plugin_appliances_appliancetypes`;
CREATE TABLE `glpi_plugin_appliances_appliancetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `externalid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `externalid` (`externalid`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_environments

DROP TABLE IF EXISTS `glpi_plugin_appliances_environments`;
CREATE TABLE `glpi_plugin_appliances_environments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_optvalues

DROP TABLE IF EXISTS `glpi_plugin_appliances_optvalues`;
CREATE TABLE `glpi_plugin_appliances_optvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_appliances_appliances_id` int(11) NOT NULL DEFAULT '0',
  `vvalues` int(11) NOT NULL DEFAULT '0',
  `champ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ttype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ddefault` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`vvalues`),
  KEY `plugin_appliances_appliances_id` (`plugin_appliances_appliances_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_optvalues_items

DROP TABLE IF EXISTS `glpi_plugin_appliances_optvalues_items`;
CREATE TABLE `glpi_plugin_appliances_optvalues_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_appliances_optvalues_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vvalue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_appliances_optvalues_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_appliances_profiles

DROP TABLE IF EXISTS `glpi_plugin_appliances_profiles`;
CREATE TABLE `glpi_plugin_appliances_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appliance` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_appliances_profiles` VALUES ('4','Sistema','w','1');

### Dump table glpi_plugin_appliances_relations

DROP TABLE IF EXISTS `glpi_plugin_appliances_relations`;
CREATE TABLE `glpi_plugin_appliances_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_appliances_appliances_items_id` int(11) NOT NULL DEFAULT '0',
  `relations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'locations_id,domains_id or networks_id',
  PRIMARY KEY (`id`),
  KEY `plugin_appliances_appliances_items_id` (`plugin_appliances_appliances_items_id`),
  KEY `relations_id` (`relations_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_appliancequeries

DROP TABLE IF EXISTS `glpi_plugin_archires_appliancequeries`;
CREATE TABLE `glpi_plugin_archires_appliancequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_appliances_appliances_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_appliances (id)',
  `networks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networks (id)',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `plugin_archires_views_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_archires_views (id)',
  `vlans_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_vlans (id)',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `appliances_id` (`plugin_appliances_appliances_id`),
  KEY `networks_id` (`networks_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plugin_archires_views_id` (`plugin_archires_views_id`),
  KEY `states_id` (`states_id`),
  KEY `vlans_id` (`vlans_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_imageitems

DROP TABLE IF EXISTS `glpi_plugin_archires_imageitems`;
CREATE TABLE `glpi_plugin_archires_imageitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_locationqueries

DROP TABLE IF EXISTS `glpi_plugin_archires_locationqueries`;
CREATE TABLE `glpi_plugin_archires_locationqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `child` smallint(6) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networks (id)',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `plugin_archires_views_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_archires_views (id)',
  `vlans_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_vlans (id)',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networks_id` (`networks_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plugin_archires_views_id` (`plugin_archires_views_id`),
  KEY `states_id` (`states_id`),
  KEY `vlans_id` (`vlans_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_networkequipmentqueries

DROP TABLE IF EXISTS `glpi_plugin_archires_networkequipmentqueries`;
CREATE TABLE `glpi_plugin_archires_networkequipmentqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networkequipments_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networkequipments (id)',
  `networks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networks (id)',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `plugin_archires_views_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_archires_views (id)',
  `vlans_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_vlans (id)',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `networkequipments_id` (`networkequipments_id`),
  KEY `networks_id` (`networks_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plugin_archires_views_id` (`plugin_archires_views_id`),
  KEY `states_id` (`states_id`),
  KEY `vlans_id` (`vlans_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_networkinterfacecolors

DROP TABLE IF EXISTS `glpi_plugin_archires_networkinterfacecolors`;
CREATE TABLE `glpi_plugin_archires_networkinterfacecolors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkinterfaces_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_networkinterfaces (id)',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `networkinterfaces_id` (`networkinterfaces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_profiles

DROP TABLE IF EXISTS `glpi_plugin_archires_profiles`;
CREATE TABLE `glpi_plugin_archires_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `archires` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_archires_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_archires_querytypes

DROP TABLE IF EXISTS `glpi_plugin_archires_querytypes`;
CREATE TABLE `glpi_plugin_archires_querytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `querytype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'RELATION to the 3 type of archires (type)',
  `type` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `plugin_archires_queries_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to the 3 queries tables (id)',
  PRIMARY KEY (`id`),
  KEY `plugin_archires_queries_id` (`plugin_archires_queries_id`),
  KEY `type` (`type`),
  KEY `querytype` (`querytype`),
  KEY `itemtype` (`itemtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_statecolors

DROP TABLE IF EXISTS `glpi_plugin_archires_statecolors`;
CREATE TABLE `glpi_plugin_archires_statecolors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `states_id` (`states_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_archires_views

DROP TABLE IF EXISTS `glpi_plugin_archires_views`;
CREATE TABLE `glpi_plugin_archires_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `computer` smallint(6) NOT NULL DEFAULT '0',
  `networking` smallint(6) NOT NULL DEFAULT '0',
  `printer` smallint(6) NOT NULL DEFAULT '0',
  `peripheral` smallint(6) NOT NULL DEFAULT '0',
  `phone` smallint(6) NOT NULL DEFAULT '0',
  `display_ports` smallint(6) NOT NULL DEFAULT '0',
  `display_ip` smallint(6) NOT NULL DEFAULT '0',
  `display_type` smallint(6) NOT NULL DEFAULT '0',
  `display_state` smallint(6) NOT NULL DEFAULT '0',
  `display_location` smallint(6) NOT NULL DEFAULT '0',
  `display_entity` smallint(6) NOT NULL DEFAULT '0',
  `engine` smallint(6) NOT NULL DEFAULT '0',
  `format` smallint(6) NOT NULL DEFAULT '0',
  `color` smallint(6) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_archires_views` VALUES ('1','0','default','1','1','1','1','1','0','0','0','0','0','0','0','1','0','0');

### Dump table glpi_plugin_archires_vlancolors

DROP TABLE IF EXISTS `glpi_plugin_archires_vlancolors`;
CREATE TABLE `glpi_plugin_archires_vlancolors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vlans_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_vlans (id)',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_badges_badges

DROP TABLE IF EXISTS `glpi_plugin_badges_badges`;
CREATE TABLE `glpi_plugin_badges_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_badges_badgetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_badges_badgetypes (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `date_affectation` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_badges_badgetypes_id` (`plugin_badges_badgetypes_id`),
  KEY `locations_id` (`locations_id`),
  KEY `date_expiration` (`date_expiration`),
  KEY `states_id` (`states_id`),
  KEY `users_id` (`users_id`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_badges_badgetypes

DROP TABLE IF EXISTS `glpi_plugin_badges_badgetypes`;
CREATE TABLE `glpi_plugin_badges_badgetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_badges_configs

DROP TABLE IF EXISTS `glpi_plugin_badges_configs`;
CREATE TABLE `glpi_plugin_badges_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_expired` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  `delay_whichexpire` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_badges_configs` VALUES ('1','30','30');

### Dump table glpi_plugin_badges_notificationstates

DROP TABLE IF EXISTS `glpi_plugin_badges_notificationstates`;
CREATE TABLE `glpi_plugin_badges_notificationstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  PRIMARY KEY (`id`),
  KEY `states_id` (`states_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_badges_profiles

DROP TABLE IF EXISTS `glpi_plugin_badges_profiles`;
CREATE TABLE `glpi_plugin_badges_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `badges` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_badges_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_barcode_configs

DROP TABLE IF EXISTS `glpi_plugin_barcode_configs`;
CREATE TABLE `glpi_plugin_barcode_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_barcode_configs` VALUES ('1','QRcode');

### Dump table glpi_plugin_barcode_configs_types

DROP TABLE IF EXISTS `glpi_plugin_barcode_configs_types`;
CREATE TABLE `glpi_plugin_barcode_configs_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orientation` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` int(11) DEFAULT NULL,
  `marginBottom` int(11) DEFAULT NULL,
  `marginLeft` int(11) DEFAULT NULL,
  `marginRight` int(11) DEFAULT NULL,
  `marginHorizontal` int(11) DEFAULT NULL,
  `marginVertical` int(11) DEFAULT NULL,
  `maxCodeWidth` int(11) DEFAULT NULL,
  `maxCodeHeight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('1','Code39','A4','Portrait','30','30','30','30','25','30','128','50');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('2','code128','A4','Portrait','30','30','30','30','25','30','110','70');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('3','ean13','A4','Portrait','30','30','30','30','25','30','110','70');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('4','int25','A4','Portrait','30','30','30','30','25','30','110','70');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('5','postnet','A4','Portrait','30','30','30','30','25','30','110','70');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('6','upca','A4','Portrait','30','30','30','30','25','30','110','70');
INSERT INTO `glpi_plugin_barcode_configs_types` VALUES ('7','QRcode','A4','Portrait','30','30','30','30','25','30','110','100');

### Dump table glpi_plugin_barcode_profiles

DROP TABLE IF EXISTS `glpi_plugin_barcode_profiles`;
CREATE TABLE `glpi_plugin_barcode_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `generate` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_barcode_profiles` VALUES ('4','Sistema','1','1');

### Dump table glpi_plugin_behaviors_configs

DROP TABLE IF EXISTS `glpi_plugin_behaviors_configs`;
CREATE TABLE `glpi_plugin_behaviors_configs` (
  `id` int(11) NOT NULL,
  `use_requester_item_group` tinyint(1) NOT NULL DEFAULT '0',
  `use_requester_user_group` tinyint(1) NOT NULL DEFAULT '0',
  `is_ticketsolutiontype_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `is_ticketrealtime_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `is_requester_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `is_ticketdate_locked` tinyint(1) NOT NULL DEFAULT '0',
  `use_assign_user_group` tinyint(1) NOT NULL DEFAULT '0',
  `tickets_id_format` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove_from_ocs` tinyint(1) NOT NULL DEFAULT '0',
  `add_notif` tinyint(1) NOT NULL DEFAULT '0',
  `use_lock` tinyint(1) NOT NULL DEFAULT '0',
  `single_tech_mode` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_certificates

DROP TABLE IF EXISTS `glpi_plugin_certificates_certificates`;
CREATE TABLE `glpi_plugin_certificates_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_certificates_certificatetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_certificates_certificatetypes (id)',
  `dns_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `auto_sign` smallint(6) NOT NULL DEFAULT '0',
  `date_query` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `plugin_certificates_certificatestates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_certificates_certificatestates (id)',
  `mailing` int(11) NOT NULL DEFAULT '0',
  `command` text COLLATE utf8_unicode_ci,
  `certificate_request` text COLLATE utf8_unicode_ci,
  `certificate_item` text COLLATE utf8_unicode_ci,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_certificates_certificatetypes_id` (`plugin_certificates_certificatetypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `plugin_certificates_certificatestates_id` (`plugin_certificates_certificatestates_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_certificates_items

DROP TABLE IF EXISTS `glpi_plugin_certificates_certificates_items`;
CREATE TABLE `glpi_plugin_certificates_certificates_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_certificates_certificates_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_certificates_certificates_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_certificatestates

DROP TABLE IF EXISTS `glpi_plugin_certificates_certificatestates`;
CREATE TABLE `glpi_plugin_certificates_certificatestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_certificatetypes

DROP TABLE IF EXISTS `glpi_plugin_certificates_certificatetypes`;
CREATE TABLE `glpi_plugin_certificates_certificatetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_configs

DROP TABLE IF EXISTS `glpi_plugin_certificates_configs`;
CREATE TABLE `glpi_plugin_certificates_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_expired` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  `delay_whichexpire` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_certificates_configs` VALUES ('1','30','30');

### Dump table glpi_plugin_certificates_notificationstates

DROP TABLE IF EXISTS `glpi_plugin_certificates_notificationstates`;
CREATE TABLE `glpi_plugin_certificates_notificationstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_certificates_certificatestates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_certificates_certificatestates (id)',
  PRIMARY KEY (`id`),
  KEY `plugin_certificates_certificatestates_id` (`plugin_certificates_certificatestates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_certificates_profiles

DROP TABLE IF EXISTS `glpi_plugin_certificates_profiles`;
CREATE TABLE `glpi_plugin_certificates_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `certificates` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_certificates_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_customfields_dropdowns

DROP TABLE IF EXISTS `glpi_plugin_customfields_dropdowns`;
CREATE TABLE `glpi_plugin_customfields_dropdowns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_entities` smallint(6) NOT NULL DEFAULT '0',
  `is_tree` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_customfields_dropdownsitems

DROP TABLE IF EXISTS `glpi_plugin_customfields_dropdownsitems`;
CREATE TABLE `glpi_plugin_customfields_dropdownsitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `plugin_customfields_dropdowns_id` int(11) NOT NULL DEFAULT '0',
  `plugin_customfields_dropdownsitems_id` int(11) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;


### Dump table glpi_plugin_customfields_fields

DROP TABLE IF EXISTS `glpi_plugin_customfields_fields`;
CREATE TABLE `glpi_plugin_customfields_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `system_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'int(11)',
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sopt_pos` int(11) NOT NULL DEFAULT '0',
  `required` smallint(6) NOT NULL DEFAULT '0',
  `entities` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*',
  `restricted` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_customfields_itemtypes

DROP TABLE IF EXISTS `glpi_plugin_customfields_itemtypes`;
CREATE TABLE `glpi_plugin_customfields_itemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('1','Version','160');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('2','Computer','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('3','ComputerDisk','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('4','Monitor','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('5','Software','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('6','SoftwareVersion','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('7','SoftwareLicense','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('8','NetworkEquipment','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('9','NetworkPort','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('10','Peripheral','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('11','Printer','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('12','CartridgeItem','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('13','ConsumableItem','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('14','Phone','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('15','Ticket','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('16','Contact','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('17','Supplier','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('18','Contract','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('19','Document','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('20','User','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('21','Group','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('22','Entity','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('23','DeviceProcessor','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('24','DeviceMemory','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('25','DeviceMotherboard','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('26','DeviceNetworkCard','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('27','DeviceHardDrive','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('28','DeviceDrive','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('29','DeviceControl','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('30','DeviceGraphicCard','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('31','DeviceSoundCard','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('32','DeviceCase','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('33','DevicePowerSupply','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('34','DevicePci','0');
INSERT INTO `glpi_plugin_customfields_itemtypes` VALUES ('35','Budget','0');

### Dump table glpi_plugin_customfields_profiles

DROP TABLE IF EXISTS `glpi_plugin_customfields_profiles`;
CREATE TABLE `glpi_plugin_customfields_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_dashboard_count

DROP TABLE IF EXISTS `glpi_plugin_dashboard_count`;
CREATE TABLE `glpi_plugin_dashboard_count` (
  `type` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  `quant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_dashboard_count` VALUES ('1','0','0');

### Dump table glpi_plugin_databases_databasecategories

DROP TABLE IF EXISTS `glpi_plugin_databases_databasecategories`;
CREATE TABLE `glpi_plugin_databases_databasecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_databases

DROP TABLE IF EXISTS `glpi_plugin_databases_databases`;
CREATE TABLE `glpi_plugin_databases_databases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_databases_databasecategories_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_databasecategories (id)',
  `plugin_databases_databasetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_databasetypes (id)',
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `plugin_databases_servertypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_servertypes (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_databases_databasecategories_id` (`plugin_databases_databasecategories_id`),
  KEY `plugin_databases_databasetypes_id` (`plugin_databases_databasetypes_id`),
  KEY `plugin_databases_servertypes_id` (`plugin_databases_servertypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_databases_items

DROP TABLE IF EXISTS `glpi_plugin_databases_databases_items`;
CREATE TABLE `glpi_plugin_databases_databases_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_databases_databases_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_databases (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_databases_databases_id`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_databasetypes

DROP TABLE IF EXISTS `glpi_plugin_databases_databasetypes`;
CREATE TABLE `glpi_plugin_databases_databasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_instances

DROP TABLE IF EXISTS `glpi_plugin_databases_instances`;
CREATE TABLE `glpi_plugin_databases_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_databases_databases_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_databases (id)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_databases_databases_id` (`plugin_databases_databases_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_profiles

DROP TABLE IF EXISTS `glpi_plugin_databases_profiles`;
CREATE TABLE `glpi_plugin_databases_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `databases` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_databases_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_databases_scripts

DROP TABLE IF EXISTS `glpi_plugin_databases_scripts`;
CREATE TABLE `glpi_plugin_databases_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_databases_databases_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_databases (id)',
  `plugin_databases_scripttypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_databases_scripttypes (id)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_databases_databases_id` (`plugin_databases_databases_id`),
  KEY `plugin_databases_scripttypes_id` (`plugin_databases_scripttypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_scripttypes

DROP TABLE IF EXISTS `glpi_plugin_databases_scripttypes`;
CREATE TABLE `glpi_plugin_databases_scripttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_databases_servertypes

DROP TABLE IF EXISTS `glpi_plugin_databases_servertypes`;
CREATE TABLE `glpi_plugin_databases_servertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_databases_servertypes` VALUES ('1','Mysql','');
INSERT INTO `glpi_plugin_databases_servertypes` VALUES ('2','Oracle','');
INSERT INTO `glpi_plugin_databases_servertypes` VALUES ('3','SQL','');

### Dump table glpi_plugin_domains_configs

DROP TABLE IF EXISTS `glpi_plugin_domains_configs`;
CREATE TABLE `glpi_plugin_domains_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay_expired` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  `delay_whichexpire` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_domains_configs` VALUES ('1','30','30');

### Dump table glpi_plugin_domains_domains

DROP TABLE IF EXISTS `glpi_plugin_domains_domains`;
CREATE TABLE `glpi_plugin_domains_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_domains_domaintypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_domains_domaintypes (id)',
  `date_creation` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `others` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_domains_domaintypes_id` (`plugin_domains_domaintypes_id`),
  KEY `users_id` (`users_id_tech`),
  KEY `groups_id` (`groups_id_tech`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_domains_domains_items

DROP TABLE IF EXISTS `glpi_plugin_domains_domains_items`;
CREATE TABLE `glpi_plugin_domains_domains_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_domains_domains_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_domains_domains_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_domains_domaintypes

DROP TABLE IF EXISTS `glpi_plugin_domains_domaintypes`;
CREATE TABLE `glpi_plugin_domains_domaintypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_domains_profiles

DROP TABLE IF EXISTS `glpi_plugin_domains_profiles`;
CREATE TABLE `glpi_plugin_domains_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `domains` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_domains_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_environment_profiles

DROP TABLE IF EXISTS `glpi_plugin_environment_profiles`;
CREATE TABLE `glpi_plugin_environment_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `environment` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appliances` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webapplications` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificates` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accounts` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domains` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `databases` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `badges` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_environment_profiles` VALUES ('1','4','r','r','r','r','r','r','r','r');

### Dump table glpi_plugin_escalade_configs

DROP TABLE IF EXISTS `glpi_plugin_escalade_configs`;
CREATE TABLE `glpi_plugin_escalade_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remove_group` int(11) NOT NULL,
  `remove_delete_group_btn` int(11) NOT NULL,
  `remove_delete_user_btn` int(11) NOT NULL,
  `show_history` int(11) NOT NULL,
  `task_history` int(11) NOT NULL,
  `remove_tech` int(11) NOT NULL,
  `solve_return_group` int(11) NOT NULL,
  `reassign_group_from_cat` int(11) NOT NULL,
  `reassign_tech_from_cat` int(11) NOT NULL,
  `cloneandlink_ticket` int(11) NOT NULL,
  `close_linkedtickets` int(11) NOT NULL,
  `use_assign_user_group` int(11) NOT NULL,
  `use_assign_user_group_creation` int(11) NOT NULL,
  `use_assign_user_group_modification` int(11) NOT NULL,
  `assign_me_ticket` int(11) NOT NULL,
  `use_filter_assign_group` int(11) NOT NULL,
  `ticket_last_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_escalade_configs` VALUES ('1','1','0','1','1','1','1','1','0','0','1','1','0','0','0','1','0','-1');

### Dump table glpi_plugin_escalade_groups_groups

DROP TABLE IF EXISTS `glpi_plugin_escalade_groups_groups`;
CREATE TABLE `glpi_plugin_escalade_groups_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups_id_source` int(11) NOT NULL DEFAULT '0',
  `groups_id_destination` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_escalade_histories

DROP TABLE IF EXISTS `glpi_plugin_escalade_histories`;
CREATE TABLE `glpi_plugin_escalade_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `date_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `groups_id` (`groups_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_financialreports_configs

DROP TABLE IF EXISTS `glpi_plugin_financialreports_configs`;
CREATE TABLE `glpi_plugin_financialreports_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_states (id)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_financialreports_disposalitems

DROP TABLE IF EXISTS `glpi_plugin_financialreports_disposalitems`;
CREATE TABLE `glpi_plugin_financialreports_disposalitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `date_disposal` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`items_id`,`itemtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_financialreports_parameters

DROP TABLE IF EXISTS `glpi_plugin_financialreports_parameters`;
CREATE TABLE `glpi_plugin_financialreports_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notebooks_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servers_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitors_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printers_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peripherals_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networkequipments_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phones_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_financialreports_parameters` VALUES ('1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

### Dump table glpi_plugin_financialreports_profiles

DROP TABLE IF EXISTS `glpi_plugin_financialreports_profiles`;
CREATE TABLE `glpi_plugin_financialreports_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `financialreports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_financialreports_profiles` VALUES ('1','4','r');

### Dump table glpi_plugin_formcreator_cats

DROP TABLE IF EXISTS `glpi_plugin_formcreator_cats`;
CREATE TABLE `glpi_plugin_formcreator_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `glpi_plugin_formcreator_cats` VALUES ('14','Default cat','0');

### Dump table glpi_plugin_formcreator_forms

DROP TABLE IF EXISTS `glpi_plugin_formcreator_forms`;
CREATE TABLE `glpi_plugin_formcreator_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `cat` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_formcreator_questions

DROP TABLE IF EXISTS `glpi_plugin_formcreator_questions`;
CREATE TABLE `glpi_plugin_formcreator_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `option` longtext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `plugin_formcreator_sections_id` tinyint(1) NOT NULL,
  `plugin_formcreator_forms_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_formcreator_sections

DROP TABLE IF EXISTS `glpi_plugin_formcreator_sections`;
CREATE TABLE `glpi_plugin_formcreator_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `plugin_formcreator_targets_id` tinyint(1) NOT NULL,
  `plugin_formcreator_forms_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_formcreator_targets

DROP TABLE IF EXISTS `glpi_plugin_formcreator_targets`;
CREATE TABLE `glpi_plugin_formcreator_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `plugin_formcreator_forms_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_formcreator_titles

DROP TABLE IF EXISTS `glpi_plugin_formcreator_titles`;
CREATE TABLE `glpi_plugin_formcreator_titles` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `language` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


### Dump table glpi_plugin_genericobject_profiles

DROP TABLE IF EXISTS `glpi_plugin_genericobject_profiles`;
CREATE TABLE `glpi_plugin_genericobject_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `right` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`profiles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_genericobject_types

DROP TABLE IF EXISTS `glpi_plugin_genericobject_types`;
CREATE TABLE `glpi_plugin_genericobject_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_global_search` tinyint(1) NOT NULL DEFAULT '0',
  `use_unicity` tinyint(1) NOT NULL DEFAULT '0',
  `use_history` tinyint(1) NOT NULL DEFAULT '0',
  `use_infocoms` tinyint(1) NOT NULL DEFAULT '0',
  `use_contracts` tinyint(1) NOT NULL DEFAULT '0',
  `use_documents` tinyint(1) NOT NULL DEFAULT '0',
  `use_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `use_links` tinyint(1) NOT NULL DEFAULT '0',
  `use_loans` tinyint(1) NOT NULL DEFAULT '0',
  `use_network_ports` tinyint(1) NOT NULL DEFAULT '0',
  `use_direct_connections` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_datainjection` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_pdf` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_order` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_uninstall` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_geninventorynumber` tinyint(1) NOT NULL DEFAULT '0',
  `use_menu_entry` tinyint(1) NOT NULL DEFAULT '0',
  `linked_itemtypes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Object types definition table';


### Dump table glpi_plugin_helpdeskrating

DROP TABLE IF EXISTS `glpi_plugin_helpdeskrating`;
CREATE TABLE `glpi_plugin_helpdeskrating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `rating_tech` int(1) DEFAULT NULL,
  `rating_solution` int(1) DEFAULT NULL,
  `rating_overall` int(1) DEFAULT NULL,
  `rating_time` int(1) DEFAULT NULL,
  `rating_tech_communication` int(1) DEFAULT NULL,
  `rating_tech_guideline` int(1) DEFAULT NULL,
  `rating_tech_cooperative` int(1) DEFAULT NULL,
  `user_cansee` int(1) DEFAULT '0',
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ideabox_comments

DROP TABLE IF EXISTS `glpi_plugin_ideabox_comments`;
CREATE TABLE `glpi_plugin_ideabox_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_comment` datetime DEFAULT NULL,
  `plugin_ideabox_ideaboxes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_ideabox_ideaboxes (id)',
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_ideabox_ideaboxes_id` (`plugin_ideabox_ideaboxes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ideabox_ideaboxes

DROP TABLE IF EXISTS `glpi_plugin_ideabox_ideaboxes`;
CREATE TABLE `glpi_plugin_ideabox_ideaboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `date_idea` datetime DEFAULT NULL,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ideabox_profiles

DROP TABLE IF EXISTS `glpi_plugin_ideabox_profiles`;
CREATE TABLE `glpi_plugin_ideabox_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `ideabox` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_ideabox_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_immobilizationsheets_configs

DROP TABLE IF EXISTS `glpi_plugin_immobilizationsheets_configs`;
CREATE TABLE `glpi_plugin_immobilizationsheets_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `use_backup` int(11) NOT NULL DEFAULT '0',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_documentcategories (id)',
  PRIMARY KEY (`id`),
  KEY `documentcategories_id` (`documentcategories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_immobilizationsheets_configs` VALUES ('1','0','0');

### Dump table glpi_plugin_immobilizationsheets_profiles

DROP TABLE IF EXISTS `glpi_plugin_immobilizationsheets_profiles`;
CREATE TABLE `glpi_plugin_immobilizationsheets_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `immobilizationsheets` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_immobilizationsheets_profiles` VALUES ('1','4','r');

### Dump table glpi_plugin_manufacturersimports_configs

DROP TABLE IF EXISTS `glpi_plugin_manufacturersimports_configs`;
CREATE TABLE `glpi_plugin_manufacturersimports_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `supplier_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `document_adding` int(11) NOT NULL DEFAULT '0',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_documentcategories (id)',
  `comment_adding` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `documentcategories_id` (`documentcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_manufacturersimports_logs

DROP TABLE IF EXISTS `glpi_plugin_manufacturersimports_logs`;
CREATE TABLE `glpi_plugin_manufacturersimports_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_status` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `documents_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_documents (id)',
  `date_import` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`import_status`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_manufacturersimports_models

DROP TABLE IF EXISTS `glpi_plugin_manufacturersimports_models`;
CREATE TABLE `glpi_plugin_manufacturersimports_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`model_name`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_manufacturersimports_profiles

DROP TABLE IF EXISTS `glpi_plugin_manufacturersimports_profiles`;
CREATE TABLE `glpi_plugin_manufacturersimports_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `manufacturersimports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_manufacturersimports_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_minixmpp_configs

DROP TABLE IF EXISTS `glpi_plugin_minixmpp_configs`;
CREATE TABLE `glpi_plugin_minixmpp_configs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `anoserver` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_minixmpp_configs` VALUES ('0','anonymous.jappix.com','conference.jappix.com');

### Dump table glpi_plugin_monitoring_businessrulegroups

DROP TABLE IF EXISTS `glpi_plugin_monitoring_businessrulegroups`;
CREATE TABLE `glpi_plugin_monitoring_businessrulegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_servicescatalogs_id` int(11) NOT NULL DEFAULT '0',
  `operator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_businessrules

DROP TABLE IF EXISTS `glpi_plugin_monitoring_businessrules`;
CREATE TABLE `glpi_plugin_monitoring_businessrules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_businessrulegroups_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_services_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_checks

DROP TABLE IF EXISTS `glpi_plugin_monitoring_checks`;
CREATE TABLE `glpi_plugin_monitoring_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_check_attempts` int(2) NOT NULL DEFAULT '1',
  `check_interval` int(5) NOT NULL DEFAULT '1',
  `retry_interval` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_checks` VALUES ('1','5 minutes / 5 retry','5','5','1');
INSERT INTO `glpi_plugin_monitoring_checks` VALUES ('2','5 minutes / 3 retry','3','5','1');
INSERT INTO `glpi_plugin_monitoring_checks` VALUES ('3','15 minutes / 3 retry','3','15','1');

### Dump table glpi_plugin_monitoring_commands

DROP TABLE IF EXISTS `glpi_plugin_monitoring_commands`;
CREATE TABLE `glpi_plugin_monitoring_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_line` text COLLATE utf8_unicode_ci,
  `poller_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arguments` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `command_name` (`command_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('1','1','Simple tcp port check','check_tcp','$PLUGINSDIR$/check_tcp  -H $HOSTADDRESS$ -p $ARG1$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('2','1','Simple web check','check_http','$PLUGINSDIR$/check_http -H $HOSTADDRESS$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('3','1','Simple web check with SSL','check_https','$PLUGINSDIR$/check_http -H $HOSTADDRESS$ -S',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('4','1','Check a DNS entry','check_dig','$PLUGINSDIR$/check_dig -H $HOSTADDRESS$ -l $ARG1$',NULL,NULL,'{\"ARG1\":\"Machine name to lookup\"}');
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('5','1','Check a FTP service','check_ftp','$PLUGINSDIR$/check_ftp -H $HOSTADDRESS$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('6','1','Ask a nrpe agent','check_nrpe','$PLUGINSDIR$/check_nrpe -H $HOSTADDRESS$ -t 9 -u -c $ARG1$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('7','1','Simple ping command','check_ping','$PLUGINSDIR$/check_ping -H $HOSTADDRESS$ -w 3000,100% -c 5000,100% -p 1',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('8','1','Look at good ssh launch','check_ssh','$PLUGINSDIR$/check_ssh -H $HOSTADDRESS$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('9','1','Look for good SMTP connexion','check_smtp','$PLUGINSDIR$/check_smtp -H $HOSTADDRESS$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('10','1','Look for good SMTPS connexion','check_smtps','$PLUGINSDIR$/check_smtp -H $HOSTADDRESS$ -S',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('11','1','Look at a SSL certificate','check_https_certificate','$PLUGINSDIR$/check_http -H $HOSTADDRESS$ -C 30',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('12','1','Look at an HP printer state','check_hpjd','$PLUGINSDIR$/check_hpjd -H $HOSTADDRESS$ -C $SNMPCOMMUNITYREAD$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('13','1','Look at Oracle connexion','check_oracle_listener','$PLUGINSDIR$/check_oracle --tns $HOSTADDRESS$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('14','1','Look at MSSQL connexion','check_mssql_connexion','$PLUGINSDIR$/check_mssql_health --hostname $HOSTADDRESS$ --username \"$MSSQLUSER$\" --password \"$MSSQLPASSWORD$\" --mode connection-time',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('15','1','Ldap query','check_ldap','$PLUGINSDIR$/check_ldap -H $HOSTADDRESS$ -b \"$LDAPBASE$\" -D $DOMAINUSER$ -P \"$DOMAINPASSWORD$\"',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('16','1','Ldaps query','check_ldaps','$PLUGINSDIR$/check_ldaps -H $HOSTADDRESS$ -b \"$LDAPBASE$\" -D $DOMAINUSER$ -P \"$DOMAINPASSWORD$\"',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('17','1','Distant mysql check','check_mysql_connexion','$PLUGINSDIR$/check_mysql -H $HOSTADDRESS$ -u $MYSQLUSER$ -p $MYSQLPASSWORD$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('18','1','ESX hosts checks','check_esx_host','$PLUGINSDIR$/check_esx3.pl -D $VCENTER$ -H $HOSTADDRESS$ -u $VCENTERLOGIN$ -p $VCENTERPASSWORD$ l $ARG1$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('19','1','ESX VM checks','check_esx_vm','$PLUGINSDIR$/check_esx3.pl -D $VCENTER$ -N $HOSTALIAS$ -u $VCENTERLOGIN$ -p $VCENTERLOGIN$ -l $ARG1$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('20','1','Check Linux host alive','check_linux_host_alive','$PLUGINSDIR$/check_tcp -H $HOSTADDRESS$ -p 22 -t 3',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('21','1','Check host alive','check_host_alive','$PLUGINSDIR$/check_ping -H $HOSTADDRESS$ -w 1,50% -c 2,70% -p 1',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('22','1','Check Windows host alive','check_windows_host_alive','$PLUGINSDIR$/check_tcp -H $HOSTADDRESS$ -p 139 -t 3',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('23','1','Check disk','check_disk','$PLUGINSDIR$/check_disk -w $ARG1$ -c $ARG2$ -p $ARG3$',NULL,NULL,'{\"ARG1\":\"INTEGER: WARNING status if less than INTEGER units of disk are free\\n
         PERCENT%: WARNING status if less than PERCENT of disk space is free\",\"ARG2\":\"INTEGER: CRITICAL status if less than INTEGER units of disk are free\\n
         PERCENT%: CRITICAL status if less than PERCENT of disk space is free\",\"ARG3\":\"Path or partition\"}');
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('24','1','Check local disk','check-host-alive','$PLUGINSDIR$/check.sh $HOSTADDRESS$ -c $ARG1$ SERVICE $USER1$',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('25','1','Business rules','bp_rule','',NULL,NULL,NULL);
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('26','1','Check local cpu','check_cpu_usage','$PLUGINSDIR$/check_cpu_usage -w $ARG1$ -c $ARG2$',NULL,NULL,'{\"ARG1\":\"Percentage of CPU for warning\",\"ARG2\":\"Percentage of CPU for critical\"}');
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('27','1','Check load','check_load','$PLUGINSDIR$/check_load -r -w $ARG1$ -c $ARG2$',NULL,NULL,'{\"ARG1\":\"WARNING status if load average exceeds WLOADn (WLOAD1,WLOAD5,WLOAD15)\",\"ARG2\":\"CRITICAL status if load average exceed CLOADn (CLOAD1,CLOAD5,CLOAD15)\"}');
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('28','1','Check snmp','check_snmp','$PLUGINSDIR$/check_snmp -H $HOSTADDRESS$ -P $ARG1$ -C $ARG2$ -o $ARG3$,$ARG4$,$ARG5$,$ARG6$,$ARG7$,$ARG8$,$ARG9$,$ARG10$',NULL,NULL,'{\"ARG1\":\"SNMP protocol version (1|2c|3) [SNMP:version]\",\"ARG2\":\"Community string for SNMP communication [SNMP:authentication]\",\"ARG3\":\"oid [OID:ifinoctets]\",\"ARG4\":\"oid [OID:ifoutoctets]\",\"ARG5\":\"oid [OID:ifinerrors]\",\"ARG6\":\"oid [OID:ifouterrors]\",\"ARG7\":\"oid\",\"ARG8\":\"oid\",\"ARG9\":\"oid\",\"ARG10\":\"oid\"}');
INSERT INTO `glpi_plugin_monitoring_commands` VALUES ('29','1','Check users connected','check_users','$PLUGINSDIR$/check_users -w $ARG1$ -c $ARG2$',NULL,NULL,'{\"ARG1\":\"Set WARNING status if more than INTEGER users are logged in\",\"ARG2\":\"Set CRITICAL status if more than INTEGER users are logged in\"}');

### Dump table glpi_plugin_monitoring_commandtemplates

DROP TABLE IF EXISTS `glpi_plugin_monitoring_commandtemplates`;
CREATE TABLE `glpi_plugin_monitoring_commandtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_commands_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_components

DROP TABLE IF EXISTS `glpi_plugin_monitoring_components`;
CREATE TABLE `glpi_plugin_monitoring_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_commands_id` int(11) NOT NULL DEFAULT '0',
  `arguments` text COLLATE utf8_unicode_ci,
  `plugin_monitoring_checks_id` int(11) NOT NULL DEFAULT '0',
  `active_checks_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `passive_checks_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `remotesystem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_arguments` tinyint(1) NOT NULL DEFAULT '0',
  `alias_command` text COLLATE utf8_unicode_ci,
  `graph_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_weathermap` tinyint(1) NOT NULL DEFAULT '0',
  `weathermap_regex_in` text COLLATE utf8_unicode_ci,
  `weathermap_regex_out` text COLLATE utf8_unicode_ci,
  `perfname` text COLLATE utf8_unicode_ci,
  `perfnameinvert` text COLLATE utf8_unicode_ci,
  `perfnamecolor` text COLLATE utf8_unicode_ci,
  `plugin_monitoring_eventhandlers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_commands_id` (`plugin_monitoring_commands_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_componentscatalogs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_componentscatalogs`;
CREATE TABLE `glpi_plugin_monitoring_componentscatalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `notification_interval` int(4) NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_componentscatalogs_components

DROP TABLE IF EXISTS `glpi_plugin_monitoring_componentscatalogs_components`;
CREATE TABLE `glpi_plugin_monitoring_componentscatalogs_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_componentscalalog_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_components_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_monitoring_componentscalalog_id`,`plugin_monitoring_components_id`),
  KEY `plugin_monitoring_componentscalalog_id` (`plugin_monitoring_componentscalalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_componentscatalogs_hosts

DROP TABLE IF EXISTS `glpi_plugin_monitoring_componentscatalogs_hosts`;
CREATE TABLE `glpi_plugin_monitoring_componentscatalogs_hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_componentscalalog_id` int(11) NOT NULL DEFAULT '0',
  `is_static` tinyint(1) NOT NULL DEFAULT '1',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`,`items_id`),
  KEY `plugin_monitoring_componentscalalog_id` (`plugin_monitoring_componentscalalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_componentscatalogs_rules

DROP TABLE IF EXISTS `glpi_plugin_monitoring_componentscatalogs_rules`;
CREATE TABLE `glpi_plugin_monitoring_componentscatalogs_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_componentscalalog_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_componentscalalog_id` (`plugin_monitoring_componentscalalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_configs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_configs`;
CREATE TABLE `glpi_plugin_monitoring_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezones` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '["0"]',
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logretention` int(5) NOT NULL DEFAULT '30',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_configs` VALUES ('1','{\"1\":\"-5\"}','0.84+1.0','30');

### Dump table glpi_plugin_monitoring_contactgroups

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contactgroups`;
CREATE TABLE `glpi_plugin_monitoring_contactgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_contactgroups_contactgroups

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contactgroups_contactgroups`;
CREATE TABLE `glpi_plugin_monitoring_contactgroups_contactgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_contactgroups_id_1` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_contactgroups_id_2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_monitoring_contactgroups_id_1`,`plugin_monitoring_contactgroups_id_2`),
  KEY `plugin_monitoring_contactgroups_id_2` (`plugin_monitoring_contactgroups_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_contacts

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contacts`;
CREATE TABLE `glpi_plugin_monitoring_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_contacttemplates_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_contacts_contactgroups

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contacts_contactgroups`;
CREATE TABLE `glpi_plugin_monitoring_contacts_contactgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_contacts_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_contactgroups_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_monitoring_contacts_id`,`plugin_monitoring_contactgroups_id`),
  KEY `plugin_monitoring_contactgroups_id` (`plugin_monitoring_contactgroups_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_contacts_items

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contacts_items`;
CREATE TABLE `glpi_plugin_monitoring_contacts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_contacttemplates

DROP TABLE IF EXISTS `glpi_plugin_monitoring_contacttemplates`;
CREATE TABLE `glpi_plugin_monitoring_contacttemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `host_notifications_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `service_notifications_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `service_notification_period` int(11) NOT NULL DEFAULT '0',
  `host_notification_period` int(11) NOT NULL DEFAULT '0',
  `service_notification_options_w` tinyint(1) NOT NULL DEFAULT '1',
  `service_notification_options_u` tinyint(1) NOT NULL DEFAULT '1',
  `service_notification_options_c` tinyint(1) NOT NULL DEFAULT '1',
  `service_notification_options_r` tinyint(1) NOT NULL DEFAULT '1',
  `service_notification_options_f` tinyint(1) NOT NULL DEFAULT '0',
  `service_notification_options_n` tinyint(1) NOT NULL DEFAULT '0',
  `host_notification_options_d` tinyint(1) NOT NULL DEFAULT '1',
  `host_notification_options_u` tinyint(1) NOT NULL DEFAULT '1',
  `host_notification_options_r` tinyint(1) NOT NULL DEFAULT '1',
  `host_notification_options_f` tinyint(1) NOT NULL DEFAULT '0',
  `host_notification_options_s` tinyint(1) NOT NULL DEFAULT '0',
  `host_notification_options_n` tinyint(1) NOT NULL DEFAULT '0',
  `service_notification_commands` int(11) NOT NULL DEFAULT '0',
  `host_notification_commands` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_displayviews

DROP TABLE IF EXISTS `glpi_plugin_monitoring_displayviews`;
CREATE TABLE `glpi_plugin_monitoring_displayviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `counter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_central` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(5) NOT NULL DEFAULT '950',
  `is_frontview` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_displayviews_groups

DROP TABLE IF EXISTS `glpi_plugin_monitoring_displayviews_groups`;
CREATE TABLE `glpi_plugin_monitoring_displayviews_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginmonitoringdisplayviews_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pluginmonitoringdisplayviews_id` (`pluginmonitoringdisplayviews_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_displayviews_items

DROP TABLE IF EXISTS `glpi_plugin_monitoring_displayviews_items`;
CREATE TABLE `glpi_plugin_monitoring_displayviews_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_displayviews_id` int(11) NOT NULL DEFAULT '0',
  `x` int(5) NOT NULL DEFAULT '0',
  `y` int(5) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_infos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_displayviews_id` (`plugin_monitoring_displayviews_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_displayviews_rules

DROP TABLE IF EXISTS `glpi_plugin_monitoring_displayviews_rules`;
CREATE TABLE `glpi_plugin_monitoring_displayviews_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_displayviews_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_displayviews_id` (`plugin_monitoring_displayviews_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_displayviews_users

DROP TABLE IF EXISTS `glpi_plugin_monitoring_displayviews_users`;
CREATE TABLE `glpi_plugin_monitoring_displayviews_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginmonitoringdisplayviews_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pluginmonitoringdisplayviews_id` (`pluginmonitoringdisplayviews_id`),
  KEY `groups_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_entities

DROP TABLE IF EXISTS `glpi_plugin_monitoring_entities`;
CREATE TABLE `glpi_plugin_monitoring_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_eventhandlers

DROP TABLE IF EXISTS `glpi_plugin_monitoring_eventhandlers`;
CREATE TABLE `glpi_plugin_monitoring_eventhandlers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_line` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `command_name` (`command_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_hostaddresses

DROP TABLE IF EXISTS `glpi_plugin_monitoring_hostaddresses`;
CREATE TABLE `glpi_plugin_monitoring_hostaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_hostconfigs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_hostconfigs`;
CREATE TABLE `glpi_plugin_monitoring_hostconfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_commands_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_checks_id` int(11) NOT NULL DEFAULT '0',
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_realms_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_hostconfigs` VALUES ('1','0','Entity','21','1','1','1','0');

### Dump table glpi_plugin_monitoring_hosts

DROP TABLE IF EXISTS `glpi_plugin_monitoring_hosts`;
CREATE TABLE `glpi_plugin_monitoring_hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_check` datetime DEFAULT NULL,
  `dependencies` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_logs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_logs`;
CREATE TABLE `glpi_plugin_monitoring_logs` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `date_mod` datetime DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_networkports

DROP TABLE IF EXISTS `glpi_plugin_monitoring_networkports`;
CREATE TABLE `glpi_plugin_monitoring_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_notificationcommands

DROP TABLE IF EXISTS `glpi_plugin_monitoring_notificationcommands`;
CREATE TABLE `glpi_plugin_monitoring_notificationcommands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command_line` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_notificationcommands` VALUES ('1','1','Host : notify by mail','notify-host-by-email','$PLUGINSDIR$/sendmailhost.pl \"$NOTIFICATIONTYPE$\" \"$HOSTNAME$\" \"$HOSTSTATE$\" \"$HOSTADDRESS$\" \"$HOSTOUTPUT$\" \"$SHORTDATETIME$\" \"$CONTACTEMAIL$\"');
INSERT INTO `glpi_plugin_monitoring_notificationcommands` VALUES ('2','1','Service : notify by mail (perl)','notify-service-by-email-perl','$PLUGINSDIR$/sendmailservices.pl \"$NOTIFICATIONTYPE$\" \"$SERVICEDESC$\" \"$HOSTALIAS$\" \"$HOSTADDRESS$\" \"$SERVICESTATE$\" \"$SHORTDATETIME$\" \"$SERVICEOUTPUT$\" \"$CONTACTEMAIL$\" \"$SERVICENOTESURL$\"');
INSERT INTO `glpi_plugin_monitoring_notificationcommands` VALUES ('3','1','Service : notify by mail (python)','notify-service-by-email-py','$PLUGINSDIR$/sendmailservice.py -s \"$SERVICEDESC$\" -n \"$SERVICESTATE$\" -H \"$HOSTALIAS$\" -a \"$HOSTADDRESS$\" -i \"$SHORTDATETIME$\" -o \"$SERVICEOUTPUT$\" -t \"$CONTACTEMAIL$\" -r \"$SERVICESTATE$\"');

### Dump table glpi_plugin_monitoring_profiles

DROP TABLE IF EXISTS `glpi_plugin_monitoring_profiles`;
CREATE TABLE `glpi_plugin_monitoring_profiles` (
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `dashboard` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicescatalog` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `componentscatalog` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewshomepage` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weathermap` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allressources` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restartshinken` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_profiles` VALUES ('4','w','w','w','w','r','w','w','w','w','w','w','w');

### Dump table glpi_plugin_monitoring_realms

DROP TABLE IF EXISTS `glpi_plugin_monitoring_realms`;
CREATE TABLE `glpi_plugin_monitoring_realms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_monitoring_realms` VALUES ('1','All',NULL,NULL);

### Dump table glpi_plugin_monitoring_rrdtooltemplates

DROP TABLE IF EXISTS `glpi_plugin_monitoring_rrdtooltemplates`;
CREATE TABLE `glpi_plugin_monitoring_rrdtooltemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_commands_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_servicedefs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_servicedefs`;
CREATE TABLE `glpi_plugin_monitoring_servicedefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_commands_id` int(11) NOT NULL DEFAULT '0',
  `arguments` text COLLATE utf8_unicode_ci,
  `plugin_monitoring_checks_id` int(11) NOT NULL DEFAULT '0',
  `active_checks_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `passive_checks_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `remotesystem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_arguments` tinyint(1) NOT NULL DEFAULT '0',
  `alias_command` text COLLATE utf8_unicode_ci,
  `aliasperfdata_commands_id` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_serviceevents

DROP TABLE IF EXISTS `glpi_plugin_monitoring_serviceevents`;
CREATE TABLE `glpi_plugin_monitoring_serviceevents` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_services_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perf_data` text COLLATE utf8_unicode_ci,
  `output` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `state_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `latency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `execution_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unavailability` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_services_id` (`plugin_monitoring_services_id`),
  KEY `plugin_monitoring_services_id_2` (`plugin_monitoring_services_id`,`date`),
  KEY `unavailability` (`unavailability`,`state_type`,`plugin_monitoring_services_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_servicegraphs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_servicegraphs`;
CREATE TABLE `glpi_plugin_monitoring_servicegraphs` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_services_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_services_id` (`plugin_monitoring_services_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_services

DROP TABLE IF EXISTS `glpi_plugin_monitoring_services`;
CREATE TABLE `glpi_plugin_monitoring_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_components_id` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_componentscatalogs_hosts_id` int(11) NOT NULL DEFAULT '0',
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_check` datetime DEFAULT NULL,
  `arguments` text COLLATE utf8_unicode_ci,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `is_acknowledged` tinyint(1) NOT NULL DEFAULT '0',
  `is_acknowledgeconfirmed` tinyint(1) NOT NULL DEFAULT '0',
  `acknowledge_comment` text COLLATE utf8_unicode_ci,
  `acknowledge_users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `state` (`state`(50),`state_type`(50)),
  KEY `plugin_monitoring_componentscatalogs_hosts_id` (`plugin_monitoring_componentscatalogs_hosts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_servicescatalogs

DROP TABLE IF EXISTS `glpi_plugin_monitoring_servicescatalogs`;
CREATE TABLE `glpi_plugin_monitoring_servicescatalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `last_check` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `state_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `plugin_monitoring_checks_id` int(11) NOT NULL DEFAULT '0',
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `is_acknowledged` tinyint(1) NOT NULL DEFAULT '0',
  `is_acknowledgeconfirmed` tinyint(1) NOT NULL DEFAULT '0',
  `acknowledge_comment` text COLLATE utf8_unicode_ci,
  `acknowledge_users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_shinkenwebservices

DROP TABLE IF EXISTS `glpi_plugin_monitoring_shinkenwebservices`;
CREATE TABLE `glpi_plugin_monitoring_shinkenwebservices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnt` tinyint(2) NOT NULL DEFAULT '0',
  `fields_string` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_tags

DROP TABLE IF EXISTS `glpi_plugin_monitoring_tags`;
CREATE TABLE `glpi_plugin_monitoring_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_unavaibilities

DROP TABLE IF EXISTS `glpi_plugin_monitoring_unavaibilities`;
CREATE TABLE `glpi_plugin_monitoring_unavaibilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_services_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `duration` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_monitoring_services_id` (`plugin_monitoring_services_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_weathermaplinks

DROP TABLE IF EXISTS `glpi_plugin_monitoring_weathermaplinks`;
CREATE TABLE `glpi_plugin_monitoring_weathermaplinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_monitoring_weathermapnodes_id_1` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_weathermapnodes_id_2` int(11) NOT NULL DEFAULT '0',
  `plugin_monitoring_services_id` int(11) NOT NULL DEFAULT '0',
  `bandwidth_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth_out` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_weathermapnodes

DROP TABLE IF EXISTS `glpi_plugin_monitoring_weathermapnodes`;
CREATE TABLE `glpi_plugin_monitoring_weathermapnodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_monitoring_weathermaps_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x` smallint(6) NOT NULL DEFAULT '0',
  `y` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_monitoring_weathermaps

DROP TABLE IF EXISTS `glpi_plugin_monitoring_weathermaps`;
CREATE TABLE `glpi_plugin_monitoring_weathermaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_mreporting_configs

DROP TABLE IF EXISTS `glpi_plugin_mreporting_configs`;
CREATE TABLE `glpi_plugin_mreporting_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_notified` tinyint(1) NOT NULL DEFAULT '1',
  `show_graph` tinyint(1) NOT NULL DEFAULT '0',
  `show_area` tinyint(1) NOT NULL DEFAULT '0',
  `spline` tinyint(1) NOT NULL DEFAULT '0',
  `show_label` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flip_data` tinyint(1) NOT NULL DEFAULT '0',
  `unit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_delay` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graphtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'GLPI',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('1','reportPieTicketNumberByEntity','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('2','reportHbarTicketNumberByEntity','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('3','reportHgbarTicketNumberByCatAndEntity','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('4','reportPieTicketOpenedAndClosed','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('5','reportPieTicketOpenedbyStatus','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('6','reportPieTopTenAuthor','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('7','reportHgbarOpenTicketNumberByCategoryAndByType','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('8','reportHgbarCloseTicketNumberByCategoryAndByType','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('9','reportHgbarTicketNumberByService','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('10','reportHgbarOpenedTicketNumberByCategory','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('11','reportLineNbTicket','PluginMreportingHelpdesk','1','1','1','0','1','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('12','reportAreaNbTicket','PluginMreportingHelpdesk','1','1','1','1','1','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('13','reportVstackbarNbTicket','PluginMreportingHelpdesk','1','1','1','1','1','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('14','reportGareaNbTicket','PluginMreportingHelpdesk','1','1','1','1','1','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('15','reportGlineNbTicket','PluginMreportingHelpdesk','1','1','1','0','1','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('16','reportSunburstTicketByCategories','PluginMreportingHelpdesk','1','1','1','0','0','always','0',NULL,'30',NULL,'SVG');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('17','reportVstackbarTicketStatusByTechnician','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'365',NULL,'GLPI');
INSERT INTO `glpi_plugin_mreporting_configs` VALUES ('18','reportHbarTicketNumberByLocation','PluginMreportingHelpdesk','1','1','1','0','0','hover','0',NULL,'30',NULL,'GLPI');

### Dump table glpi_plugin_mreporting_notifications

DROP TABLE IF EXISTS `glpi_plugin_mreporting_notifications`;
CREATE TABLE `glpi_plugin_mreporting_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `date_envoie` date DEFAULT NULL,
  `notice` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_mreporting_preferences

DROP TABLE IF EXISTS `glpi_plugin_mreporting_preferences`;
CREATE TABLE `glpi_plugin_mreporting_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_mreporting_profiles

DROP TABLE IF EXISTS `glpi_plugin_mreporting_profiles`;
CREATE TABLE `glpi_plugin_mreporting_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profiles_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `reports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_mreporting_profiles` VALUES ('1','4','r','w');

### Dump table glpi_plugin_notification_count

DROP TABLE IF EXISTS `glpi_plugin_notification_count`;
CREATE TABLE `glpi_plugin_notification_count` (
  `users_id` int(11) NOT NULL,
  `quant` int(11) DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_notification_count` VALUES ('1','1');
INSERT INTO `glpi_plugin_notification_count` VALUES ('2','0');
INSERT INTO `glpi_plugin_notification_count` VALUES ('5','0');
INSERT INTO `glpi_plugin_notification_count` VALUES ('7','1');

### Dump table glpi_plugin_ocsinventoryng_configs

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_configs`;
CREATE TABLE `glpi_plugin_ocsinventoryng_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_log_frequency` int(11) NOT NULL DEFAULT '10',
  `is_displayempty` int(1) NOT NULL DEFAULT '1',
  `import_limit` int(11) NOT NULL DEFAULT '0',
  `delay_refresh` int(11) NOT NULL DEFAULT '0',
  `allow_ocs_update` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_ocsinventoryng_configs` VALUES ('1','2','1','0','0','0',NULL);

### Dump table glpi_plugin_ocsinventoryng_details

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_details`;
CREATE TABLE `glpi_plugin_ocsinventoryng_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `plugin_ocsinventoryng_threads_id` int(11) NOT NULL DEFAULT '0',
  `rules_id` text COLLATE utf8_unicode_ci,
  `threadid` int(11) NOT NULL DEFAULT '0',
  `ocsid` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `process_time` datetime DEFAULT NULL,
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `end_time` (`process_time`),
  KEY `process_thread` (`plugin_ocsinventoryng_threads_id`,`threadid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_networkports

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_networkports`;
CREATE TABLE `glpi_plugin_ocsinventoryng_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPEMIB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `TYPE` (`TYPE`),
  KEY `TYPEMIB` (`TYPEMIB`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_networkporttypes

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_networkporttypes`;
CREATE TABLE `glpi_plugin_ocsinventoryng_networkporttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OCS_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OCS_TYPEMIB` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `OCS_TYPE` (`OCS_TYPE`),
  KEY `OCS_TYPEMIB` (`OCS_TYPEMIB`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_ocsinventoryng_networkporttypes` VALUES ('1','Unkown port','*','*','PluginOcsinventoryngNetworkPort',NULL,NULL,NULL,NULL);
INSERT INTO `glpi_plugin_ocsinventoryng_networkporttypes` VALUES ('2','Ethernet port','Ethernet','*','NetworkPortEthernet','T','10',NULL,NULL);
INSERT INTO `glpi_plugin_ocsinventoryng_networkporttypes` VALUES ('3','Wifi port','Wifi','*','NetworkPortWifi',NULL,NULL,'a',NULL);
INSERT INTO `glpi_plugin_ocsinventoryng_networkporttypes` VALUES ('4','Loopback port','Local','*','NetworkPortLocal',NULL,NULL,NULL,NULL);

### Dump table glpi_plugin_ocsinventoryng_notimportedcomputers

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_notimportedcomputers`;
CREATE TABLE `glpi_plugin_ocsinventoryng_notimportedcomputers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `rules_id` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `ocsid` int(11) NOT NULL DEFAULT '0',
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL,
  `ocs_deviceid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_inventory` datetime DEFAULT NULL,
  `reason` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ocs_id` (`plugin_ocsinventoryng_ocsservers_id`,`ocsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_ocsadmininfoslinks

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_ocsadmininfoslinks`;
CREATE TABLE `glpi_plugin_ocsinventoryng_ocsadmininfoslinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glpi_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_ocsinventoryng_ocsservers_id` (`plugin_ocsinventoryng_ocsservers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_ocslinks

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_ocslinks`;
CREATE TABLE `glpi_plugin_ocsinventoryng_ocslinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `ocsid` int(11) NOT NULL DEFAULT '0',
  `ocs_deviceid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` datetime DEFAULT NULL,
  `last_ocs_update` datetime DEFAULT NULL,
  `computer_update` longtext COLLATE utf8_unicode_ci,
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL DEFAULT '0',
  `ocs_agent_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_ocsinventoryng_ocsservers_id`,`ocsid`),
  KEY `last_update` (`last_update`),
  KEY `ocs_deviceid` (`ocs_deviceid`),
  KEY `last_ocs_update` (`plugin_ocsinventoryng_ocsservers_id`,`last_ocs_update`),
  KEY `computers_id` (`computers_id`),
  KEY `use_auto_update` (`use_auto_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_ocsservers

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_ocsservers`;
CREATE TABLE `glpi_plugin_ocsinventoryng_ocsservers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_utf8` tinyint(1) NOT NULL DEFAULT '0',
  `checksum` int(11) NOT NULL DEFAULT '0',
  `import_periph` tinyint(1) NOT NULL DEFAULT '0',
  `import_monitor` tinyint(1) NOT NULL DEFAULT '0',
  `import_software` tinyint(1) NOT NULL DEFAULT '0',
  `import_printer` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_name` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_os` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_serial` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_model` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_manufacturer` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_type` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_domain` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_contact` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_comment` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_processor` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_memory` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_hdd` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_iface` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_gfxcard` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_sound` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_drive` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_port` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_modem` tinyint(1) NOT NULL DEFAULT '0',
  `import_registry` tinyint(1) NOT NULL DEFAULT '0',
  `import_os_serial` tinyint(1) NOT NULL DEFAULT '0',
  `import_ip` tinyint(1) NOT NULL DEFAULT '0',
  `import_disk` tinyint(1) NOT NULL DEFAULT '0',
  `import_monitor_comment` tinyint(1) NOT NULL DEFAULT '0',
  `states_id_default` int(11) NOT NULL DEFAULT '0',
  `tag_limit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_exclude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_soft_dict` tinyint(1) NOT NULL DEFAULT '0',
  `cron_sync_number` int(11) DEFAULT '1',
  `deconnection_behavior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `use_massimport` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_behavior` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `import_vms` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_uuid` tinyint(1) NOT NULL DEFAULT '0',
  `ocs_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`),
  KEY `use_massimport` (`use_massimport`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_profiles

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_profiles`;
CREATE TABLE `glpi_plugin_ocsinventoryng_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sync_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clean_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ocs` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_ocsinventoryng_profiles` VALUES ('1','4','w','w','r','w','w');

### Dump table glpi_plugin_ocsinventoryng_registrykeys

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_registrykeys`;
CREATE TABLE `glpi_plugin_ocsinventoryng_registrykeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `hive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_servers

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_servers`;
CREATE TABLE `glpi_plugin_ocsinventoryng_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL DEFAULT '0',
  `max_ocsid` int(11) DEFAULT NULL,
  `max_glpidate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin_ocsinventoryng_ocsservers_id` (`plugin_ocsinventoryng_ocsservers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_ocsinventoryng_threads

DROP TABLE IF EXISTS `glpi_plugin_ocsinventoryng_threads`;
CREATE TABLE `glpi_plugin_ocsinventoryng_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `threadid` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `error_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `imported_machines_number` int(11) NOT NULL DEFAULT '0',
  `synchronized_machines_number` int(11) NOT NULL DEFAULT '0',
  `failed_rules_machines_number` int(11) NOT NULL DEFAULT '0',
  `linked_machines_number` int(11) NOT NULL DEFAULT '0',
  `notupdated_machines_number` int(11) NOT NULL DEFAULT '0',
  `not_unique_machines_number` int(11) NOT NULL DEFAULT '0',
  `link_refused_machines_number` int(11) NOT NULL DEFAULT '0',
  `total_number_machines` int(11) NOT NULL DEFAULT '0',
  `plugin_ocsinventoryng_ocsservers_id` int(11) NOT NULL DEFAULT '1',
  `processid` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `rules_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `end_time` (`end_time`),
  KEY `process_thread` (`processid`,`threadid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_bills

DROP TABLE IF EXISTS `glpi_plugin_order_bills`;
CREATE TABLE `glpi_plugin_order_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `billdate` datetime DEFAULT NULL,
  `validationdate` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `plugin_order_billstates_id` int(11) NOT NULL DEFAULT '0',
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `plugin_order_billtypes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `plugin_order_orders_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validation` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` int(11) NOT NULL DEFAULT '0',
  `notepad` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_billstates

DROP TABLE IF EXISTS `glpi_plugin_order_billstates`;
CREATE TABLE `glpi_plugin_order_billstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_order_billstates` VALUES ('1','Paid',NULL);
INSERT INTO `glpi_plugin_order_billstates` VALUES ('2','Not paid',NULL);

### Dump table glpi_plugin_order_billtypes

DROP TABLE IF EXISTS `glpi_plugin_order_billtypes`;
CREATE TABLE `glpi_plugin_order_billtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_configs

DROP TABLE IF EXISTS `glpi_plugin_order_configs`;
CREATE TABLE `glpi_plugin_order_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `use_validation` tinyint(1) NOT NULL DEFAULT '0',
  `use_supplier_satisfaction` tinyint(1) NOT NULL DEFAULT '0',
  `use_supplier_informations` tinyint(1) NOT NULL DEFAULT '0',
  `use_supplier_infos` tinyint(1) NOT NULL DEFAULT '1',
  `generate_order_pdf` tinyint(1) NOT NULL DEFAULT '0',
  `copy_documents` tinyint(1) NOT NULL DEFAULT '0',
  `default_taxes` int(11) NOT NULL DEFAULT '0',
  `generate_assets` int(11) NOT NULL DEFAULT '0',
  `generated_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generated_serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generated_otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_asset_states_id` int(11) NOT NULL DEFAULT '0',
  `generate_ticket` int(11) NOT NULL DEFAULT '0',
  `generated_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generated_content` text COLLATE utf8_unicode_ci,
  `default_ticketcategories_id` int(11) NOT NULL DEFAULT '0',
  `order_status_draft` int(11) NOT NULL DEFAULT '0',
  `order_status_waiting_approval` int(11) NOT NULL DEFAULT '0',
  `order_status_approved` int(11) NOT NULL DEFAULT '0',
  `order_status_partially_delivred` int(11) NOT NULL DEFAULT '0',
  `order_status_completly_delivered` int(11) NOT NULL DEFAULT '0',
  `order_status_canceled` int(11) NOT NULL DEFAULT '0',
  `order_status_paid` int(11) NOT NULL DEFAULT '0',
  `shoudbedelivered_color` char(20) COLLATE utf8_unicode_ci DEFAULT '#ff5555',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_author` int(11) NOT NULL DEFAULT '0',
  `groups_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_order_configs` VALUES ('1','0','0','0','1','0','0','0','0','TOBEFILLED','TOBEFILLED','TOBEFILLED','0','0','TOBEFILLED','TOBEFILLED','0','1','2','3','4','5','6','7','#ff5555','0','0','0','0');

### Dump table glpi_plugin_order_deliverystates

DROP TABLE IF EXISTS `glpi_plugin_order_deliverystates`;
CREATE TABLE `glpi_plugin_order_deliverystates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_orderpayments

DROP TABLE IF EXISTS `glpi_plugin_order_orderpayments`;
CREATE TABLE `glpi_plugin_order_orderpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_orders

DROP TABLE IF EXISTS `glpi_plugin_order_orders`;
CREATE TABLE `glpi_plugin_order_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_budgets (id)',
  `plugin_order_ordertaxes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_ordertaxes (id)',
  `plugin_order_orderpayments_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_orderpayments (id)',
  `order_date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `deliverydate` date DEFAULT NULL,
  `is_late` tinyint(1) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `contacts_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_contacts (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `plugin_order_orderstates_id` int(11) NOT NULL DEFAULT '1',
  `plugin_order_billstates_id` int(11) NOT NULL DEFAULT '1',
  `port_price` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `users_id_delivery` int(11) NOT NULL DEFAULT '0',
  `groups_id_delivery` int(11) NOT NULL DEFAULT '0',
  `plugin_order_ordertypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_ordertypes (id)',
  `date_mod` datetime DEFAULT NULL,
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_order_ordertaxes_id` (`plugin_order_ordertaxes_id`),
  KEY `plugin_order_orderpayments_id` (`plugin_order_orderpayments_id`),
  KEY `states_id` (`plugin_order_orderstates_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `contacts_id` (`contacts_id`),
  KEY `locations_id` (`locations_id`),
  KEY `is_late` (`locations_id`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_orders_items

DROP TABLE IF EXISTS `glpi_plugin_order_orders_items`;
CREATE TABLE `glpi_plugin_order_orders_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_order_orders_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_orders (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `plugin_order_references_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_references (id)',
  `plugin_order_deliverystates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_deliverystates (id)',
  `plugin_order_ordertaxes_id` float NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_ordertaxes (id)',
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_comment` text COLLATE utf8_unicode_ci,
  `price_taxfree` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price_discounted` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price_ati` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `states_id` int(11) NOT NULL DEFAULT '1',
  `delivery_date` date DEFAULT NULL,
  `plugin_order_bills_id` int(11) NOT NULL DEFAULT '0',
  `plugin_order_billstates_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `plugin_order_references_id` (`plugin_order_references_id`),
  KEY `plugin_order_deliverystates_id` (`plugin_order_deliverystates_id`),
  KEY `states_id` (`states_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_orders_suppliers

DROP TABLE IF EXISTS `glpi_plugin_order_orders_suppliers`;
CREATE TABLE `glpi_plugin_order_orders_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_order_orders_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_orders (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `num_quote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_order_orders_id` (`plugin_order_orders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliers_id` (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_orderstates

DROP TABLE IF EXISTS `glpi_plugin_order_orderstates`;
CREATE TABLE `glpi_plugin_order_orderstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_order_orderstates` VALUES ('1','Draft',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('2','Waiting for approval',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('3','Validated',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('4','Being delivered',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('5','Delivered',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('6','Canceled',NULL);
INSERT INTO `glpi_plugin_order_orderstates` VALUES ('7','Paid',NULL);

### Dump table glpi_plugin_order_ordertaxes

DROP TABLE IF EXISTS `glpi_plugin_order_ordertaxes`;
CREATE TABLE `glpi_plugin_order_ordertaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_order_ordertaxes` VALUES ('1','5.5',NULL);
INSERT INTO `glpi_plugin_order_ordertaxes` VALUES ('2','19.6',NULL);

### Dump table glpi_plugin_order_ordertypes

DROP TABLE IF EXISTS `glpi_plugin_order_ordertypes`;
CREATE TABLE `glpi_plugin_order_ordertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_others

DROP TABLE IF EXISTS `glpi_plugin_order_others`;
CREATE TABLE `glpi_plugin_order_others` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `othertypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `othertypes_id` (`othertypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_othertypes

DROP TABLE IF EXISTS `glpi_plugin_order_othertypes`;
CREATE TABLE `glpi_plugin_order_othertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_preferences

DROP TABLE IF EXISTS `glpi_plugin_order_preferences`;
CREATE TABLE `glpi_plugin_order_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_profiles

DROP TABLE IF EXISTS `glpi_plugin_order_profiles`;
CREATE TABLE `glpi_plugin_order_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `order` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `undo_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_order_odt` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_order_profiles` VALUES ('1','4','w','w','w','w','w','w','w','w','w');

### Dump table glpi_plugin_order_references

DROP TABLE IF EXISTS `glpi_plugin_order_references`;
CREATE TABLE `glpi_plugin_order_references` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `types_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtypes tables (id)',
  `models_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemmodels tables (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `templates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `types_id` (`types_id`),
  KEY `models_id` (`models_id`),
  KEY `templates_id` (`templates_id`),
  KEY `is_active` (`is_active`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_references_suppliers

DROP TABLE IF EXISTS `glpi_plugin_order_references_suppliers`;
CREATE TABLE `glpi_plugin_order_references_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_order_references_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_references (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `price_taxfree` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `reference_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_order_references_id` (`plugin_order_references_id`),
  KEY `suppliers_id` (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_order_surveysuppliers

DROP TABLE IF EXISTS `glpi_plugin_order_surveysuppliers`;
CREATE TABLE `glpi_plugin_order_surveysuppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_order_orders_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_order_orders (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `answer1` int(11) NOT NULL DEFAULT '0',
  `answer2` int(11) NOT NULL DEFAULT '0',
  `answer3` int(11) NOT NULL DEFAULT '0',
  `answer4` int(11) NOT NULL DEFAULT '0',
  `answer5` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_order_orders_id` (`plugin_order_orders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliers_id` (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_positions_imageitems

DROP TABLE IF EXISTS `glpi_plugin_positions_imageitems`;
CREATE TABLE `glpi_plugin_positions_imageitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_positions_infos

DROP TABLE IF EXISTS `glpi_plugin_positions_infos`;
CREATE TABLE `glpi_plugin_positions_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_positions_positions

DROP TABLE IF EXISTS `glpi_plugin_positions_positions`;
CREATE TABLE `glpi_plugin_positions_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `x_coordinates` int(11) NOT NULL DEFAULT '0',
  `y_coordinates` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_positions_profiles

DROP TABLE IF EXISTS `glpi_plugin_positions_profiles`;
CREATE TABLE `glpi_plugin_positions_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `positions` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_positions_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_projet_followups

DROP TABLE IF EXISTS `glpi_plugin_projet_followups`;
CREATE TABLE `glpi_plugin_projet_followups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `plugin_projet_projets_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_profiles

DROP TABLE IF EXISTS `glpi_plugin_projet_profiles`;
CREATE TABLE `glpi_plugin_projet_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `projet` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_projet_profiles` VALUES ('1','4','w','w','1');

### Dump table glpi_plugin_projet_projets

DROP TABLE IF EXISTS `glpi_plugin_projet_projets`;
CREATE TABLE `glpi_plugin_projet_projets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `plugin_projet_projetstates_id` int(11) NOT NULL DEFAULT '0',
  `advance` float NOT NULL DEFAULT '0',
  `show_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `estimatedtime` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_template` (`is_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_projets_items

DROP TABLE IF EXISTS `glpi_plugin_projet_projets_items`;
CREATE TABLE `glpi_plugin_projet_projets_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_projet_projets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_projet_projets (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_projet_projets_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_projets_projets

DROP TABLE IF EXISTS `glpi_plugin_projet_projets_projets`;
CREATE TABLE `glpi_plugin_projet_projets_projets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_projet_projets_id_1` int(11) NOT NULL DEFAULT '0',
  `plugin_projet_projets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `unicity` (`plugin_projet_projets_id_1`,`plugin_projet_projets_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_projetstates

DROP TABLE IF EXISTS `glpi_plugin_projet_projetstates`;
CREATE TABLE `glpi_plugin_projet_projetstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `color` char(20) COLLATE utf8_unicode_ci DEFAULT '#CCCCCC',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_taskplannings

DROP TABLE IF EXISTS `glpi_plugin_projet_taskplannings`;
CREATE TABLE `glpi_plugin_projet_taskplannings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_projet_tasks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_projet_tasks (id)',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `plugin_projet_tasks_id` (`plugin_projet_tasks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_tasks

DROP TABLE IF EXISTS `glpi_plugin_projet_tasks`;
CREATE TABLE `glpi_plugin_projet_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_projet_projets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_projet_projets (id)',
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `contacts_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_contacts (id)',
  `plugin_projet_tasktypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_projet_tasktypes (id)',
  `plugin_projet_taskstates_id` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `advance` float NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `sub` text COLLATE utf8_unicode_ci,
  `others` text COLLATE utf8_unicode_ci,
  `affect` text COLLATE utf8_unicode_ci,
  `depends` tinyint(4) NOT NULL DEFAULT '0',
  `show_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_projet_projets_id` (`plugin_projet_projets_id`),
  KEY `plugin_projet_tasktypes_id` (`plugin_projet_tasktypes_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `contacts_id` (`contacts_id`),
  KEY `plugin_projet_taskstates_id` (`plugin_projet_taskstates_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_template` (`is_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_tasks_items

DROP TABLE IF EXISTS `glpi_plugin_projet_tasks_items`;
CREATE TABLE `glpi_plugin_projet_tasks_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_projet_tasks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_projet_tasks (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_projet_tasks_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_tasks_tasks

DROP TABLE IF EXISTS `glpi_plugin_projet_tasks_tasks`;
CREATE TABLE `glpi_plugin_projet_tasks_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_projet_tasks_id_1` int(11) NOT NULL DEFAULT '0',
  `plugin_projet_tasks_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `unicity` (`plugin_projet_tasks_id_1`,`plugin_projet_tasks_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_taskstates

DROP TABLE IF EXISTS `glpi_plugin_projet_taskstates`;
CREATE TABLE `glpi_plugin_projet_taskstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `color` char(20) COLLATE utf8_unicode_ci DEFAULT '#CCCCCC',
  `for_dependency` tinyint(1) NOT NULL DEFAULT '0',
  `for_planning` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_projet_tasktypes

DROP TABLE IF EXISTS `glpi_plugin_projet_tasktypes`;
CREATE TABLE `glpi_plugin_projet_tasktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_purgelogs_configs

DROP TABLE IF EXISTS `glpi_plugin_purgelogs_configs`;
CREATE TABLE `glpi_plugin_purgelogs_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purge_computer_software_install` int(11) NOT NULL DEFAULT '0',
  `purge_software_version_install` int(11) NOT NULL DEFAULT '0',
  `purge_infocom_creation` int(11) NOT NULL DEFAULT '0',
  `purge_profile_user` int(11) NOT NULL DEFAULT '0',
  `purge_group_user` int(11) NOT NULL DEFAULT '0',
  `purge_webservices_logs` int(11) NOT NULL DEFAULT '0',
  `purge_ocsid_changes` int(11) NOT NULL DEFAULT '0',
  `purge_ocsimport` int(11) NOT NULL DEFAULT '0',
  `purge_ocslink` int(11) NOT NULL DEFAULT '0',
  `purge_ocsdelete` int(11) NOT NULL DEFAULT '0',
  `purge_adddevice` tinyint(1) NOT NULL DEFAULT '0',
  `purge_updatedevice` tinyint(1) NOT NULL DEFAULT '0',
  `purge_deletedevice` tinyint(1) NOT NULL DEFAULT '0',
  `purge_connectdevice` tinyint(1) NOT NULL DEFAULT '0',
  `purge_disconnectdevice` tinyint(1) NOT NULL DEFAULT '0',
  `purge_userdeletedfromldap` tinyint(1) NOT NULL DEFAULT '0',
  `purge_addrelation` tinyint(1) NOT NULL DEFAULT '0',
  `purge_deleterelation` tinyint(1) NOT NULL DEFAULT '0',
  `purge_createitem` tinyint(1) NOT NULL DEFAULT '0',
  `purge_deleteitem` tinyint(1) NOT NULL DEFAULT '0',
  `purge_restoreitem` tinyint(1) NOT NULL DEFAULT '0',
  `purge_updateitem` tinyint(1) NOT NULL DEFAULT '0',
  `purge_comments` tinyint(1) NOT NULL DEFAULT '0',
  `purge_datemod` tinyint(1) NOT NULL DEFAULT '0',
  `purge_genericobject_unusedtypes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_purgelogs_configs` VALUES ('1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');

### Dump table glpi_plugin_racks_configs

DROP TABLE IF EXISTS `glpi_plugin_racks_configs`;
CREATE TABLE `glpi_plugin_racks_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_racks_configs` VALUES ('1','1');

### Dump table glpi_plugin_racks_connections

DROP TABLE IF EXISTS `glpi_plugin_racks_connections`;
CREATE TABLE `glpi_plugin_racks_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_itemspecifications

DROP TABLE IF EXISTS `glpi_plugin_racks_itemspecifications`;
CREATE TABLE `glpi_plugin_racks_itemspecifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `nb_alim` int(11) NOT NULL DEFAULT '0',
  `amps` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `flow_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `dissipation` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `size` int(255) NOT NULL DEFAULT '1',
  `weight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `length` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_othermodels

DROP TABLE IF EXISTS `glpi_plugin_racks_othermodels`;
CREATE TABLE `glpi_plugin_racks_othermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_others

DROP TABLE IF EXISTS `glpi_plugin_racks_others`;
CREATE TABLE `glpi_plugin_racks_others` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_racks_othermodels_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_racks_othermodels_id` (`plugin_racks_othermodels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_profiles

DROP TABLE IF EXISTS `glpi_plugin_racks_profiles`;
CREATE TABLE `glpi_plugin_racks_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `racks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_racks_profiles` VALUES ('1','4','w','w');

### Dump table glpi_plugin_racks_rackmodels

DROP TABLE IF EXISTS `glpi_plugin_racks_rackmodels`;
CREATE TABLE `glpi_plugin_racks_rackmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_racks

DROP TABLE IF EXISTS `glpi_plugin_racks_racks`;
CREATE TABLE `glpi_plugin_racks_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_racks_rackmodels_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_rackmodels (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `plugin_racks_roomlocations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_roomlocations (id)',
  `plugin_racks_racktypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_racktypes (id)',
  `plugin_racks_rackstates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_rackstates (id)',
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `rack_size` int(11) NOT NULL DEFAULT '0',
  `weight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `height` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `width` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `depth` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_racks_roomlocations_id` (`plugin_racks_roomlocations_id`),
  KEY `plugin_racks_racktypes_id` (`plugin_racks_racktypes_id`),
  KEY `plugin_racks_rackstates_id` (`plugin_racks_rackstates_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `is_template` (`is_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_racks_items

DROP TABLE IF EXISTS `glpi_plugin_racks_racks_items`;
CREATE TABLE `glpi_plugin_racks_racks_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_racks_racks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_racks (id)',
  `faces_id` int(11) NOT NULL DEFAULT '0',
  `plugin_racks_itemspecifications_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_racks_itemspecifications (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `position` int(11) NOT NULL DEFAULT '1',
  `first_powersupply` int(11) NOT NULL DEFAULT '0',
  `second_powersupply` int(11) NOT NULL DEFAULT '0',
  `amps` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `flow_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `dissipation` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(20,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_racks_racks_id`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `faces_id` (`faces_id`),
  KEY `plugin_racks_itemspecifications_id` (`plugin_racks_itemspecifications_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_rackstates

DROP TABLE IF EXISTS `glpi_plugin_racks_rackstates`;
CREATE TABLE `glpi_plugin_racks_rackstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_racktypes

DROP TABLE IF EXISTS `glpi_plugin_racks_racktypes`;
CREATE TABLE `glpi_plugin_racks_racktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_racks_roomlocations

DROP TABLE IF EXISTS `glpi_plugin_racks_roomlocations`;
CREATE TABLE `glpi_plugin_racks_roomlocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `plugin_racks_roomlocations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`plugin_racks_roomlocations_id`,`name`),
  KEY `name` (`name`),
  KEY `plugin_racks_roomlocations_id` (`plugin_racks_roomlocations_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_rackview_mount

DROP TABLE IF EXISTS `glpi_plugin_rackview_mount`;
CREATE TABLE `glpi_plugin_rackview_mount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mount-ID',
  `object_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Type of object, that is mounted (Computer, Network equipment,...)',
  `object_id` int(11) DEFAULT NULL COMMENT 'ID of the mounted object',
  `rack_id` int(11) DEFAULT NULL COMMENT 'Binding to the rack',
  `startu` int(11) DEFAULT NULL COMMENT 'Starting Unit (lower unit)',
  `horizontal` int(11) DEFAULT NULL COMMENT 'Horizontal placement (for placing towers vertically in a rack)\n\n0 - full\n1 - left\n2 - center\n3 - right',
  `depth` int(11) DEFAULT NULL COMMENT 'Depth allocation (how much space is used)\n\n0 - full\n1 - front\n2 - back\n\nThere can be two objects placed on the same Rack unit, one in the front and one in the back.\n\nTypically used for short switches or power panels',
  `description` text COLLATE utf8_unicode_ci COMMENT 'Description of this mount (special notes,...)',
  `mount_size` int(11) DEFAULT NULL COMMENT 'Size (in RackUnits) for this specific mount\n\nEnables users to use a default rack size and a mount specific size. This is useful for generic objects like cover plates that have different sizes in different mounts.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Definition of a rack mounted object (computer, network equip';


### Dump table glpi_plugin_rackview_object

DROP TABLE IF EXISTS `glpi_plugin_rackview_object`;
CREATE TABLE `glpi_plugin_rackview_object` (
  `object_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Type of object',
  `object_id` int(11) NOT NULL COMMENT 'ID of object',
  `size` int(11) DEFAULT NULL COMMENT 'Size of Object in Rack Units',
  PRIMARY KEY (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_rackview_objectmounts

DROP TABLE IF EXISTS `glpi_plugin_rackview_objectmounts`;
CREATE ALGORITHM=UNDEFINED DEFINER=`sentidos_oficina`@`localhost` SQL SECURITY DEFINER VIEW `glpi_plugin_rackview_objectmounts` AS select `mount`.`object_id` AS `id`,`mount`.`object_type` AS `type`,group_concat(`rack`.`name` separator ',') AS `mounts` from (`glpi_plugin_rackview_racks` `rack` join `glpi_plugin_rackview_mount` `mount` on((`rack`.`id` = `mount`.`rack_id`))) group by `mount`.`object_id`,`mount`.`object_type`;


### Dump table glpi_plugin_rackview_racks

DROP TABLE IF EXISTS `glpi_plugin_rackview_racks`;
CREATE TABLE `glpi_plugin_rackview_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Rack-ID',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Name (Short description) of the rack',
  `description` text COLLATE utf8_unicode_ci COMMENT '(Long) description of the rack, notes, etc.',
  `locations_id` int(11) DEFAULT NULL COMMENT 'Binding to a GLPI-location',
  `size` int(11) DEFAULT NULL COMMENT 'Size in Rack-Units\n',
  `entities_id` int(11) DEFAULT NULL COMMENT 'Link to glpi entities',
  `notepad` text COLLATE utf8_unicode_ci COMMENT 'For making the notes-tab available',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Definition of a rack';


### Dump table glpi_plugin_reports_profiles

DROP TABLE IF EXISTS `glpi_plugin_reports_profiles`;
CREATE TABLE `glpi_plugin_reports_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `report` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report` (`report`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_reports_profiles` VALUES ('1','4','typology_typologyreport','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('2','4','applicationsbylocation','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('3','4','doublons','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('4','4','equipmentbygroups','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('5','4','equipmentbylocation','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('6','4','globalhisto','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('7','4','histohard','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('8','4','histoinst','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('9','4','infocom','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('10','4','iteminstall','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('11','4','licenses','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('12','4','licensesexpires','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('13','4','listequipmentbylocation','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('14','4','listgroups','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('15','4','location','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('16','4','pcsbyentity','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('17','4','printers','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('18','4','rules','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('19','4','searchinfocom','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('20','4','softnotinstalled','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('21','4','softversioninstallations','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('22','4','statnightticketsbypriority','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('23','4','statticketsbyentity','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('24','4','statticketsbypriority','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('25','4','transferreditems','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('26','4','zombies','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('27','4','resources_budgetsummary','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('28','4','resources_lapserankprofession','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('29','4','resources_professionwithoutcost','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('30','4','resources_professionwithoutvolume','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('31','4','resources_resourceemploymentdiff','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('32','4','resources_resourceemploymentwithlapseprofession','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('33','4','resources_resourceemploymentwithlapserank','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('34','4','resources_resourceleavingwithactiveemployment','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('35','4','resources_resourcewithoutemployment','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('36','4','resources_resourcewithoutuser','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('37','4','order_deliveryinfos','r');
INSERT INTO `glpi_plugin_reports_profiles` VALUES ('38','4','order_orderdelivery','r');

### Dump table glpi_plugin_resources_budgets

DROP TABLE IF EXISTS `glpi_plugin_resources_budgets`;
CREATE TABLE `glpi_plugin_resources_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_professions_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professions (id)',
  `plugin_resources_ranks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_ranks (id)',
  `plugin_resources_budgettypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_budgettypes (id)',
  `plugin_resources_budgetvolumes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_budgetvolumes (id)',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `volume` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_resources_professions_id` (`plugin_resources_professions_id`),
  KEY `plugin_resources_ranks_id` (`plugin_resources_ranks_id`),
  KEY `plugin_resources_budgettypes_id` (`plugin_resources_budgettypes_id`),
  KEY `plugin_resources_budgetvolumes_id` (`plugin_resources_budgetvolumes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_budgettypes

DROP TABLE IF EXISTS `glpi_plugin_resources_budgettypes`;
CREATE TABLE `glpi_plugin_resources_budgettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_budgetvolumes

DROP TABLE IF EXISTS `glpi_plugin_resources_budgetvolumes`;
CREATE TABLE `glpi_plugin_resources_budgetvolumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_checklistconfigs

DROP TABLE IF EXISTS `glpi_plugin_resources_checklistconfigs`;
CREATE TABLE `glpi_plugin_resources_checklistconfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `tag` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_checklists

DROP TABLE IF EXISTS `glpi_plugin_resources_checklists`;
CREATE TABLE `glpi_plugin_resources_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `plugin_resources_tasks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_tasks (id)',
  `plugin_resources_contracttypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_contracttypes (id)',
  `checklist_type` int(11) NOT NULL DEFAULT '0',
  `tag` tinyint(1) NOT NULL DEFAULT '0',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `plugin_resources_tasks_id` (`plugin_resources_tasks_id`),
  KEY `plugin_resources_contracttypes_id` (`plugin_resources_contracttypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_choiceitems

DROP TABLE IF EXISTS `glpi_plugin_resources_choiceitems`;
CREATE TABLE `glpi_plugin_resources_choiceitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_resources_choiceitems_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`plugin_resources_choiceitems_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_resources_choiceitems_id` (`plugin_resources_choiceitems_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_choices

DROP TABLE IF EXISTS `glpi_plugin_resources_choices`;
CREATE TABLE `glpi_plugin_resources_choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `plugin_resources_choiceitems_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_choiceitems (id)',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `plugin_resources_choiceitems_id` (`plugin_resources_choiceitems_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_clients

DROP TABLE IF EXISTS `glpi_plugin_resources_clients`;
CREATE TABLE `glpi_plugin_resources_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_contractnatures

DROP TABLE IF EXISTS `glpi_plugin_resources_contractnatures`;
CREATE TABLE `glpi_plugin_resources_contractnatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_contracttypes

DROP TABLE IF EXISTS `glpi_plugin_resources_contracttypes`;
CREATE TABLE `glpi_plugin_resources_contracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_employee_wizard` tinyint(1) NOT NULL DEFAULT '1',
  `use_need_wizard` tinyint(1) NOT NULL DEFAULT '1',
  `use_picture_wizard` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_resources_contracttypes` VALUES ('1','0','0','Long term contract',NULL,'1','1','1','');
INSERT INTO `glpi_plugin_resources_contracttypes` VALUES ('2','0','0','Fixed term contract',NULL,'1','1','1','');
INSERT INTO `glpi_plugin_resources_contracttypes` VALUES ('3','0','0','Trainee',NULL,'1','1','1','');

### Dump table glpi_plugin_resources_costs

DROP TABLE IF EXISTS `glpi_plugin_resources_costs`;
CREATE TABLE `glpi_plugin_resources_costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_professions_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professions (id)',
  `plugin_resources_ranks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_ranks (id)',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_resources_professions_id` (`plugin_resources_professions_id`),
  KEY `plugin_resources_ranks_id` (`plugin_resources_ranks_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_departments

DROP TABLE IF EXISTS `glpi_plugin_resources_departments`;
CREATE TABLE `glpi_plugin_resources_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_employees

DROP TABLE IF EXISTS `glpi_plugin_resources_employees`;
CREATE TABLE `glpi_plugin_resources_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `plugin_resources_employers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_employers (id)',
  `plugin_resources_clients_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_clients (id)',
  PRIMARY KEY (`id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `plugin_resources_employers_id` (`plugin_resources_employers_id`),
  KEY `plugin_resources_clients_id` (`plugin_resources_clients_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_employers

DROP TABLE IF EXISTS `glpi_plugin_resources_employers`;
CREATE TABLE `glpi_plugin_resources_employers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `plugin_resources_employers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_employers (id)',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `locations_id` (`locations_id`),
  KEY `plugin_resources_employers_id` (`plugin_resources_employers_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_employments

DROP TABLE IF EXISTS `glpi_plugin_resources_employments`;
CREATE TABLE `glpi_plugin_resources_employments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `plugin_resources_professions_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professions (id)',
  `plugin_resources_ranks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources_ranks (id)',
  `plugin_resources_employmentstates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_employmentstates (id)',
  `plugin_resources_employers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_employers (id)',
  `ratio_employment_budget` decimal(10,2) NOT NULL DEFAULT '0.00',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `plugin_resources_professions_id` (`plugin_resources_professions_id`),
  KEY `plugin_resources_ranks_id` (`plugin_resources_ranks_id`),
  KEY `plugin_resources_employmentstates_id` (`plugin_resources_employmentstates_id`),
  KEY `plugin_resources_employers_id` (`plugin_resources_employers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_employmentstates

DROP TABLE IF EXISTS `glpi_plugin_resources_employmentstates`;
CREATE TABLE `glpi_plugin_resources_employmentstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_leaving_state` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_leavingreasons

DROP TABLE IF EXISTS `glpi_plugin_resources_leavingreasons`;
CREATE TABLE `glpi_plugin_resources_leavingreasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_professioncategories

DROP TABLE IF EXISTS `glpi_plugin_resources_professioncategories`;
CREATE TABLE `glpi_plugin_resources_professioncategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_professionlines

DROP TABLE IF EXISTS `glpi_plugin_resources_professionlines`;
CREATE TABLE `glpi_plugin_resources_professionlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_professions

DROP TABLE IF EXISTS `glpi_plugin_resources_professions`;
CREATE TABLE `glpi_plugin_resources_professions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_professionlines_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professionlines (id)',
  `plugin_resources_professioncategories_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professioncategories (id)',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `plugin_resources_professionlines_id` (`plugin_resources_professionlines_id`),
  KEY `plugin_resources_professioncategories_id` (`plugin_resources_professioncategories_id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_profiles

DROP TABLE IF EXISTS `glpi_plugin_resources_profiles`;
CREATE TABLE `glpi_plugin_resources_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `resources` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checklist` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resting` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `holiday` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_resources_profiles` VALUES ('1','4','w','w','w','w','w','w','w','1','w','w','w');

### Dump table glpi_plugin_resources_ranks

DROP TABLE IF EXISTS `glpi_plugin_resources_ranks`;
CREATE TABLE `glpi_plugin_resources_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_professions_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_professions (id)',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `plugin_resources_professions_id` (`plugin_resources_professions_id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_reportconfigs

DROP TABLE IF EXISTS `glpi_plugin_resources_reportconfigs`;
CREATE TABLE `glpi_plugin_resources_reportconfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `information` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resourceholidays

DROP TABLE IF EXISTS `glpi_plugin_resources_resourceholidays`;
CREATE TABLE `glpi_plugin_resources_resourceholidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resourcerestings

DROP TABLE IF EXISTS `glpi_plugin_resources_resourcerestings`;
CREATE TABLE `glpi_plugin_resources_resourcerestings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `at_home` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `locations_id` (`locations_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resources

DROP TABLE IF EXISTS `glpi_plugin_resources_resources`;
CREATE TABLE `glpi_plugin_resources_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_contracttypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_contracttypes (id)',
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `date_declaration` date DEFAULT NULL,
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `quota` decimal(10,4) NOT NULL DEFAULT '1.0000',
  `plugin_resources_departments_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_departments (id)',
  `plugin_resources_resourcestates_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resourcestates (id)',
  `plugin_resources_resourcesituations_id` int(11) NOT NULL DEFAULT '0',
  `plugin_resources_contractnatures_id` int(11) NOT NULL DEFAULT '0',
  `plugin_resources_ranks_id` int(11) NOT NULL DEFAULT '0',
  `plugin_resources_resourcespecialities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `is_leaving` int(11) NOT NULL DEFAULT '0',
  `plugin_resources_leavingreasons_id` int(11) NOT NULL DEFAULT '0',
  `users_id_recipient_leaving` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `plugin_resources_contracttypes_id` (`plugin_resources_contracttypes_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `plugin_resources_departments_id` (`plugin_resources_departments_id`),
  KEY `plugin_resources_resourcestates_id` (`plugin_resources_resourcestates_id`),
  KEY `plugin_resources_resourcesituations_id` (`plugin_resources_resourcesituations_id`),
  KEY `plugin_resources_contractnatures_id` (`plugin_resources_contractnatures_id`),
  KEY `plugin_resources_ranks_id` (`plugin_resources_ranks_id`),
  KEY `plugin_resources_resourcespecialities_id` (`plugin_resources_resourcespecialities_id`),
  KEY `locations_id` (`locations_id`),
  KEY `is_leaving` (`is_leaving`),
  KEY `plugin_resources_leavingreasons_id` (`plugin_resources_leavingreasons_id`),
  KEY `users_id_recipient_leaving` (`users_id_recipient_leaving`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_template` (`is_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resources_items

DROP TABLE IF EXISTS `glpi_plugin_resources_resources_items`;
CREATE TABLE `glpi_plugin_resources_resources_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_resources_resources_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resourcesituations

DROP TABLE IF EXISTS `glpi_plugin_resources_resourcesituations`;
CREATE TABLE `glpi_plugin_resources_resourcesituations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_contract_linked` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_contract_linked` (`is_contract_linked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resourcespecialities

DROP TABLE IF EXISTS `glpi_plugin_resources_resourcespecialities`;
CREATE TABLE `glpi_plugin_resources_resourcespecialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_resources_ranks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_ranks (id)',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `plugin_resources_ranks_id` (`plugin_resources_ranks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_resourcestates

DROP TABLE IF EXISTS `glpi_plugin_resources_resourcestates`;
CREATE TABLE `glpi_plugin_resources_resourcestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_taskplannings

DROP TABLE IF EXISTS `glpi_plugin_resources_taskplannings`;
CREATE TABLE `glpi_plugin_resources_taskplannings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_tasks_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_tasks (id)',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `plugin_resources_tasks_id` (`plugin_resources_tasks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_tasks

DROP TABLE IF EXISTS `glpi_plugin_resources_tasks`;
CREATE TABLE `glpi_plugin_resources_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_resources_resources_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_resources (id)',
  `plugin_resources_tasktypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_resources_tasktypes (id)',
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_resources_resources_id` (`plugin_resources_resources_id`),
  KEY `plugin_resources_tasktypes_id` (`plugin_resources_tasktypes_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_finished` (`is_finished`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_tasks_items

DROP TABLE IF EXISTS `glpi_plugin_resources_tasks_items`;
CREATE TABLE `glpi_plugin_resources_tasks_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_resources_tasks_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_resources_tasks_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_tasktypes

DROP TABLE IF EXISTS `glpi_plugin_resources_tasktypes`;
CREATE TABLE `glpi_plugin_resources_tasktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_resources_ticketcategories

DROP TABLE IF EXISTS `glpi_plugin_resources_ticketcategories`;
CREATE TABLE `glpi_plugin_resources_ticketcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketcategories_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_ticketcategories (id)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_routetables_profiles

DROP TABLE IF EXISTS `glpi_plugin_routetables_profiles`;
CREATE TABLE `glpi_plugin_routetables_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `routetables` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_routetables_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_routetables_routetables

DROP TABLE IF EXISTS `glpi_plugin_routetables_routetables`;
CREATE TABLE `glpi_plugin_routetables_routetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metric` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence` smallint(6) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_routetables_routetables_items

DROP TABLE IF EXISTS `glpi_plugin_routetables_routetables_items`;
CREATE TABLE `glpi_plugin_routetables_routetables_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_routetables_routetables_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_routetables_routetables_id`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_shellcommands_profiles

DROP TABLE IF EXISTS `glpi_plugin_shellcommands_profiles`;
CREATE TABLE `glpi_plugin_shellcommands_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `shellcommands` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_shellcommands_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_shellcommands_shellcommandpaths

DROP TABLE IF EXISTS `glpi_plugin_shellcommands_shellcommandpaths`;
CREATE TABLE `glpi_plugin_shellcommands_shellcommandpaths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('1','/bin/ping',NULL);
INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('2','/usr/bin/traceroute',NULL);
INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('3','/usr/bin/nslookup',NULL);
INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('4','c:\\windows\\system32\\ping.exe',NULL);
INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('5','c:\\windows\\system32\\tracert.exe',NULL);
INSERT INTO `glpi_plugin_shellcommands_shellcommandpaths` VALUES ('6','c:\\windows\\system32\\nslookup.exe',NULL);

### Dump table glpi_plugin_shellcommands_shellcommands

DROP TABLE IF EXISTS `glpi_plugin_shellcommands_shellcommands`;
CREATE TABLE `glpi_plugin_shellcommands_shellcommands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_shellcommands_shellcommandpaths_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_shellcommands_shellcommandpaths (id)',
  `parameters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_shellcommands_shellcommands` VALUES ('1','0','1','Ping','[IP]','1','-c 2','0');
INSERT INTO `glpi_plugin_shellcommands_shellcommands` VALUES ('2','0','1','Tracert','[NAME]','2','','0');
INSERT INTO `glpi_plugin_shellcommands_shellcommands` VALUES ('3','0','1','Wake on Lan','[MAC]','0','','0');
INSERT INTO `glpi_plugin_shellcommands_shellcommands` VALUES ('4','0','1','Nslookup','[DOMAIN]','3','','0');

### Dump table glpi_plugin_shellcommands_shellcommands_items

DROP TABLE IF EXISTS `glpi_plugin_shellcommands_shellcommands_items`;
CREATE TABLE `glpi_plugin_shellcommands_shellcommands_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_shellcommands_shellcommands_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FK_cmd` (`plugin_shellcommands_shellcommands_id`,`itemtype`),
  KEY `itemtype` (`itemtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_simcard_phoneoperators

DROP TABLE IF EXISTS `glpi_plugin_simcard_phoneoperators`;
CREATE TABLE `glpi_plugin_simcard_phoneoperators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_simcard_profiles

DROP TABLE IF EXISTS `glpi_plugin_simcard_profiles`;
CREATE TABLE `glpi_plugin_simcard_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `simcard` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_simcard_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_simcard_simcards

DROP TABLE IF EXISTS `glpi_plugin_simcard_simcards`;
CREATE TABLE `glpi_plugin_simcard_simcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serial` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pin2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `otherserial` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `plugin_simcard_phoneoperators_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `plugin_simcard_simcardsizes_id` int(11) NOT NULL DEFAULT '0',
  `plugin_simcard_simcardvoltages_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `states_id` (`states_id`),
  KEY `plugin_simcard_phoneoperators_id` (`plugin_simcard_phoneoperators_id`),
  KEY `plugin_simcard_simcardsizes_id` (`plugin_simcard_simcardsizes_id`),
  KEY `plugin_simcard_simcardvoltages_id` (`plugin_simcard_simcardvoltages_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `pin` (`pin`),
  KEY `pin2` (`pin2`),
  KEY `puk` (`puk`),
  KEY `puk2` (`puk2`),
  KEY `serial` (`serial`),
  KEY `users_id` (`users_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_global` (`is_global`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_simcard_simcards_items

DROP TABLE IF EXISTS `glpi_plugin_simcard_simcards_items`;
CREATE TABLE `glpi_plugin_simcard_simcards_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `plugin_simcard_simcards_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plugin_simcard_simcards_id` (`plugin_simcard_simcards_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_simcard_simcardsizes

DROP TABLE IF EXISTS `glpi_plugin_simcard_simcardsizes`;
CREATE TABLE `glpi_plugin_simcard_simcardsizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_simcard_simcardsizes` VALUES ('1','Full-SIM','');
INSERT INTO `glpi_plugin_simcard_simcardsizes` VALUES ('2','Micro-SIM','');
INSERT INTO `glpi_plugin_simcard_simcardsizes` VALUES ('3','Mini-SIM','');
INSERT INTO `glpi_plugin_simcard_simcardsizes` VALUES ('4','Nano-SIM','');

### Dump table glpi_plugin_simcard_simcardvoltages

DROP TABLE IF EXISTS `glpi_plugin_simcard_simcardvoltages`;
CREATE TABLE `glpi_plugin_simcard_simcardvoltages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_simcard_simcardvoltages` VALUES ('1','3V','');
INSERT INTO `glpi_plugin_simcard_simcardvoltages` VALUES ('2','5V','');

### Dump table glpi_plugin_themes_per_user

DROP TABLE IF EXISTS `glpi_plugin_themes_per_user`;
CREATE TABLE `glpi_plugin_themes_per_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `theme_id` (`theme_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_themes_per_user` VALUES ('5',NULL,'4','2',NULL);

### Dump table glpi_plugin_themes_profiles

DROP TABLE IF EXISTS `glpi_plugin_themes_profiles`;
CREATE TABLE `glpi_plugin_themes_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `themes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_themes_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_themes_themes

DROP TABLE IF EXISTS `glpi_plugin_themes_themes`;
CREATE TABLE `glpi_plugin_themes_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `js` tinyint(1) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci,
  `active_theme` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_themes_themes` VALUES ('1','GLPI','GLPI Team','','1.0','1','http://www.glpi-project.org/','1',NULL);
INSERT INTO `glpi_plugin_themes_themes` VALUES ('2','BlackGLPI','iizno','ansel.jerome@gmail.com','0.1','1','http://www.ansel.im/BlackGLPI','0',NULL);
INSERT INTO `glpi_plugin_themes_themes` VALUES ('4','HackSpace','elitelinux','elite.linux@gmail.com','0.1','1','http://elitelinux.com/','0',NULL);

### Dump table glpi_plugin_ticketmail_profiles

DROP TABLE IF EXISTS `glpi_plugin_ticketmail_profiles`;
CREATE TABLE `glpi_plugin_ticketmail_profiles` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `show_ticketmail_onglet` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_ticketmail_profiles` VALUES ('4','1');

### Dump table glpi_plugin_treeview_configs

DROP TABLE IF EXISTS `glpi_plugin_treeview_configs`;
CREATE TABLE `glpi_plugin_treeview_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'right',
  `folderLinks` tinyint(1) NOT NULL DEFAULT '0',
  `useSelection` tinyint(1) NOT NULL DEFAULT '0',
  `useLines` tinyint(1) NOT NULL DEFAULT '0',
  `useIcons` tinyint(1) NOT NULL DEFAULT '0',
  `closeSameLevel` tinyint(1) NOT NULL DEFAULT '0',
  `itemName` int(11) NOT NULL DEFAULT '0',
  `locationName` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_treeview_configs` VALUES ('1','_blank','1','1','1','1','0','2','3');

### Dump table glpi_plugin_treeview_preferences

DROP TABLE IF EXISTS `glpi_plugin_treeview_preferences`;
CREATE TABLE `glpi_plugin_treeview_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `show_on_load` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_treeview_preferences` VALUES ('1','2','0');

### Dump table glpi_plugin_treeview_profiles

DROP TABLE IF EXISTS `glpi_plugin_treeview_profiles`;
CREATE TABLE `glpi_plugin_treeview_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `treeview` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_treeview_profiles` VALUES ('4','Sistema','r');

### Dump table glpi_plugin_typology_profiles

DROP TABLE IF EXISTS `glpi_plugin_typology_profiles`;
CREATE TABLE `glpi_plugin_typology_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `typology` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_typology_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_typology_typologies

DROP TABLE IF EXISTS `glpi_plugin_typology_typologies`;
CREATE TABLE `glpi_plugin_typology_typologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_typology_typologies_items

DROP TABLE IF EXISTS `glpi_plugin_typology_typologies_items`;
CREATE TABLE `glpi_plugin_typology_typologies_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_typology_typologies_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `is_validated` tinyint(1) DEFAULT NULL,
  `error` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_typology_typologies_id`,`itemtype`,`items_id`),
  KEY `itemtype` (`itemtype`),
  KEY `items_id` (`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_typology_typologycriteriadefinitions

DROP TABLE IF EXISTS `glpi_plugin_typology_typologycriteriadefinitions`;
CREATE TABLE `glpi_plugin_typology_typologycriteriadefinitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_typology_typologycriterias_id` int(11) NOT NULL DEFAULT '0',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plugin_typology_typologycriterias_id` (`plugin_typology_typologycriterias_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_typology_typologycriterias

DROP TABLE IF EXISTS `glpi_plugin_typology_typologycriterias`;
CREATE TABLE `glpi_plugin_typology_typologycriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_typology_typologies_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `plugin_typology_typologies_id` (`plugin_typology_typologies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_utilitaires_profiles

DROP TABLE IF EXISTS `glpi_plugin_utilitaires_profiles`;
CREATE TABLE `glpi_plugin_utilitaires_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `utilitaires` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_utilitaires_profiles` VALUES ('1','4','w');

### Dump table glpi_plugin_vip_groups

DROP TABLE IF EXISTS `glpi_plugin_vip_groups`;
CREATE TABLE `glpi_plugin_vip_groups` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups(id)',
  `isvip` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_vip_groups` VALUES ('0','0');

### Dump table glpi_plugin_vip_profiles

DROP TABLE IF EXISTS `glpi_plugin_vip_profiles`;
CREATE TABLE `glpi_plugin_vip_profiles` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `show_vip_tab` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_vip_profiles` VALUES ('4','1');

### Dump table glpi_plugin_vip_tickets

DROP TABLE IF EXISTS `glpi_plugin_vip_tickets`;
CREATE TABLE `glpi_plugin_vip_tickets` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_tickets (id)',
  `isvip` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_webapplications_profiles

DROP TABLE IF EXISTS `glpi_plugin_webapplications_profiles`;
CREATE TABLE `glpi_plugin_webapplications_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_profiles (id)',
  `webapplications` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_id` (`profiles_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_webapplications_profiles` VALUES ('1','4','w','1');

### Dump table glpi_plugin_webapplications_webapplications

DROP TABLE IF EXISTS `glpi_plugin_webapplications_webapplications`;
CREATE TABLE `glpi_plugin_webapplications_webapplications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backoffice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_webapplications_webapplicationtypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_webapplications_webapplicationtypes (id)',
  `plugin_webapplications_webapplicationservertypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_webapplications_webapplicationservertypes (id)',
  `plugin_webapplications_webapplicationtechnics_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_webapplications_webapplicationtechnics (id)',
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `suppliers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_suppliers (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `date_mod` datetime DEFAULT NULL,
  `is_helpdesk_visible` int(11) NOT NULL DEFAULT '1',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `plugin_webapplications_webapplicationtypes_id` (`plugin_webapplications_webapplicationtypes_id`),
  KEY `plugin_webapplications_webapplicationservertypes_id` (`plugin_webapplications_webapplicationservertypes_id`),
  KEY `plugin_webapplications_webapplicationtechnics_id` (`plugin_webapplications_webapplicationtechnics_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_webapplications_webapplications_items

DROP TABLE IF EXISTS `glpi_plugin_webapplications_webapplications_items`;
CREATE TABLE `glpi_plugin_webapplications_webapplications_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_webapplications_webapplications_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_plugin_webapplications_webapplications (id)',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_webapplications_webapplications_id`,`items_id`,`itemtype`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_webapplications_webapplicationservertypes

DROP TABLE IF EXISTS `glpi_plugin_webapplications_webapplicationservertypes`;
CREATE TABLE `glpi_plugin_webapplications_webapplicationservertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_webapplications_webapplicationservertypes` VALUES ('1','Apache','');
INSERT INTO `glpi_plugin_webapplications_webapplicationservertypes` VALUES ('2','IIS','');
INSERT INTO `glpi_plugin_webapplications_webapplicationservertypes` VALUES ('3','Tomcat','');

### Dump table glpi_plugin_webapplications_webapplicationtechnics

DROP TABLE IF EXISTS `glpi_plugin_webapplications_webapplicationtechnics`;
CREATE TABLE `glpi_plugin_webapplications_webapplicationtechnics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('1','Asp','');
INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('2','Cgi','');
INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('3','Java','');
INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('4','Perl','');
INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('5','Php','');
INSERT INTO `glpi_plugin_webapplications_webapplicationtechnics` VALUES ('6','.Net','');

### Dump table glpi_plugin_webapplications_webapplicationtypes

DROP TABLE IF EXISTS `glpi_plugin_webapplications_webapplicationtypes`;
CREATE TABLE `glpi_plugin_webapplications_webapplicationtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_plugin_webservices_clients

DROP TABLE IF EXISTS `glpi_plugin_webservices_clients`;
CREATE TABLE `glpi_plugin_webservices_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_start` bigint(20) DEFAULT NULL,
  `ip_end` bigint(20) DEFAULT NULL,
  `ipv6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `do_log` tinyint(4) NOT NULL DEFAULT '0',
  `debug` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `deflate` tinyint(4) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_webservices_clients` VALUES ('1','0','1','Local','.*','2130706433','2130706433','::1',NULL,NULL,'1','0','1','0','Allow all from local');

### Dump table glpi_plugin_winadminpassword_configs

DROP TABLE IF EXISTS `glpi_plugin_winadminpassword_configs`;
CREATE TABLE `glpi_plugin_winadminpassword_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT '12',
  `algo` int(11) DEFAULT '1',
  `size` int(11) DEFAULT '14',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_winadminpassword_configs` VALUES ('1','elitelinux','10','5','10','Green');

### Dump table glpi_plugin_winadminpassword_profiles

DROP TABLE IF EXISTS `glpi_plugin_winadminpassword_profiles`;
CREATE TABLE `glpi_plugin_winadminpassword_profiles` (
  `id` int(11) NOT NULL,
  `profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugin_winadminpassword_profiles` VALUES ('4','Sistema','1');

### Dump table glpi_plugins

DROP TABLE IF EXISTS `glpi_plugins`;
CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`directory`),
  KEY `state` (`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_plugins` VALUES ('168','customfields','Campos Personalizados','1.6','2','Oregon State Data Center, Nelly Mahu Lasson','https://forge.indepnet.net/projects/show/customfields','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('104','accounts','Accounts','1.9.1','4','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>, Franck Waechter','https://forge.indepnet.net/projects/show/accounts','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('170','monitoring','Monitoring','0.84+1.0','2','<a href=\"mailto:d.durieux@siprossii.com\">David DURIEUX</a>','https://forge.indepnet.net/projects/monitoring/','AGPLv3+');
INSERT INTO `glpi_plugins` VALUES ('197','purgelogs','Purge history','0.84','2','<a href=\'www.teclib.com\'>TECLIB\'</a>','https://forge.indepnet.net/projects/show/purgelogs',NULL);
INSERT INTO `glpi_plugins` VALUES ('175','typology','Typologies','2.0.0','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/typology','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('176','treeview','Tree view','1.6.2','2','AL-Rubeiy Hussein, Xavier Caillaud, Nelly Mahu-Lasson','https://forge.indepnet.net/projects/treeview','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('173','databases','Databases','1.6.0','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/databases','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('179','racks','Rack enclosures management','1.4.1','0','Philippe Béchu, Walid Nouh, Xavier Caillaud','https://forge.indepnet.net/projects/show/racks','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('192','pdf','Impresión a pdf','0.84','2','Dévi Balpe, Remi Collet, Nelly Mahu-Lasson, Walid Nouh','https://forge.indepnet.net/projects/pdf','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('169','webapplications','Web applications','1.9.1','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/webapplications','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('171','vip','VIP','1.0.1','2','Probesys','http://www.probesys.com','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('114','appliances','Appliances','1.9.0','4','Remi Collet, Xavier Caillaud, Nelly Mahu-Lasson','https://forge.indepnet.net/projects/show/appliances','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('181','genericobject','Objects management','2.3.1','2','Alexandre Delaunay & Walid Nouh','https://forge.indepnet.net/projects/show/genericobject','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('116','badges','Badges','1.9.0','4','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/badges','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('161','behaviors','Behaviours','0.84','1','Remi Collet, Nelly Mahu-Lasson','https://forge.indepnet.net/projects/behaviors','AGPLv3+');
INSERT INTO `glpi_plugins` VALUES ('199','shellcommands','Shell Commands','1.6.0','0','Xavier Caillaud','https://forge.indepnet.net/projects/show/shellcommands','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('119','additionalalerts','Others alerts','1.6.1','1','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/additionalalerts','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('191','formcreator','Form Creator','1.8.1','2','Goneri Le Bouder, Nicolas Manceau, Dimitri Mouillard','https://forge.indepnet.net/projects/formcreator','GPLv2');
INSERT INTO `glpi_plugins` VALUES ('185','escalade','Escalation','2.0.1','2','<a href=\'http://www.teclib.com\'>Teclib\'</a> &
                              <a href=\'http://www.lefigaro.fr/\'>LE FIGARO</a>','https://forge.indepnet.net/projects/escalade','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('124','addressing','IP Adressing','2.1.0','4','Gilles Portheault, Xavier Caillaud, Remi Collet, Nelly Mahu-Lasson','https://forge.indepnet.net/projects/addressing','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('183','fusioninventory','FusionInventory','0.84+2.0','0','<a href=\"mailto:d.durieux@siprossii.com\">David DURIEUX</a>
                                    & FusionInventory team','http://forge.fusioninventory.org/projects/fusioninventory-for-glpi/','AGPLv3+');
INSERT INTO `glpi_plugins` VALUES ('149','themes','Themes manager','1.2.0','1','<a href=\"mailto:ansel.jerome@gmail.com\">Jérôme Ansel</a>','https://forge.indepnet.net/projects/themes','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('193','resources','Human Resources','2.0.2','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/resources','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('196','projet','Projects','1.4.1','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a> & <a href=\'mailto:d.durieux@siprossii.com\'>David DURIEUX</a>','https://forge.indepnet.net/projects/show/projet','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('188','order','Gestión de Pedidos','1.8.0','2','The plugin order team','https://forge.indepnet.net/projects/show/order','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('186','ocsinventoryng','OCS Inventory NG','1.0.2','2','Remi Collet, Nelly Mahu-Lasson, David Durieux, Xavier Caillaud, Walid Nouh','https://forge.indepnet.net/repositories/show/ocsinventoryng','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('131','archires','Network Architectures','2.1.0','4','Xavier Caillaud, Remi Collet, Nelly Mahu-Lasson, Sebastien Prudhomme','https://forge.indepnet.net/projects/archires','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('163','certificates','Certificates','1.9.0','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/certificates','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('198','routetables','Routing tables','1.5.0','0','Xavier Caillaud, Franck Waechter','https://forge.indepnet.net/wiki/routetables','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('159','environment','Entorno','1.7.0','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/environment','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('135','barcode','Barcode','0.84+1.0','4','<a href=\"<a href=\"mailto:d.durieux@siprossii.com\">David DURIEUX</a> &
                   Jean Marc GRISARD & Vincent MAZZONI','https://forge.indepnet.net/projects/show/barscode','AGPLv3+');
INSERT INTO `glpi_plugins` VALUES ('160','financialreports','Asset situation','2.0.0','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/financialreports','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('166','webservices','Web Services','1.4.1','2','Remi Collet, Nelly Mahu-Lasson, Walid Nouh','https://forge.indepnet.net/projects/show/webservices','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('189','helpdeskrating','Plugin Helpdeskrating','1.1.0','2','Christian Deinert','http://sourceforge.net/projects/helpdeskrating/','LGPLv3+');
INSERT INTO `glpi_plugins` VALUES ('178','surveyticket','Survey ticket','0.84+1.1','2','<a href=\"mailto:d.durieux@siprossii.com\">David DURIEUX</a>','https://forge.indepnet.net/projects/surveyticket/',NULL);
INSERT INTO `glpi_plugins` VALUES ('164','minixmpp','XMPP Chat','1.0.0','2','Adrien Beudin','https://forge.indepnet.net/repositories/show/minixmpp','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('158','mreporting','More Reporting','2.1','2','<a href=\'http://www.teclib.com\'>Teclib\'</a>
                                       & <a href=\'http://www.infotel.com\'>Infotel</a>','https://forge.indepnet.net/projects/mreporting','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('162','positions','Cartography','4.0.0','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/positions','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('184','domains','Dominios','1.6.0','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/domains','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('167','dashboard','Dashboard','0.3.7','2','<a href=\"mailto:stevenesdonato@gmail.com\"> Stevenes Donato </b> </a>','https://sourceforge.net/projects/glpidashboard/','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('190','immobilizationsheets','Immobilization sheets','1.6.0','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/immobilizationsheets','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('174','utilitaires','Utilities','1.6.0','2','Frederic Van Beveren, David Durieux, Xavier Caillaud','https://forge.indepnet.net/projects/show/utilitaires','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('195','manufacturersimports','Suppliers imports','1.6.0','0','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/projects/show/manufacturersimports','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('194','ideabox','Ideas box','2.0.0','2','<a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://forge.indepnet.net/repositories/show/ideabox','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('180','notification','Notificaciones','0.0.1','2','<a href=\"mailto:stevenesdonato@gmail.com\"> Stevenes Donato </b> </a>','https://sourceforge.net/projects/glpinotification/','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('151','apacheauthdbd','ApacheAuthDBD','0.84+1.0','2','Dixinfor','http://www.dixinfor.com/',NULL);
INSERT INTO `glpi_plugins` VALUES ('187','escalation','Escalation ticket','0.84+1.0','2','<a href=\"mailto:d.durieux@siprossii.com\">David DURIEUX</a>','',NULL);
INSERT INTO `glpi_plugins` VALUES ('172','ticketmail','Ticket Mail','3.1.0','2','Probesys','http://www.probesys.com','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('182','rackview','Rackview','1.0.1','2','Dennis Plöger <dennis.ploeger@getit.de>','http://www.getit.de','GPLv2+');
INSERT INTO `glpi_plugins` VALUES ('165','winadminpassword','WinAdminPassword','1.1.1','2','Nicolas BOURGES','https://forge.indepnet.net/projects/show/winadminpassword','GPLv3');
INSERT INTO `glpi_plugins` VALUES ('177','simcard','Tarjetas SIM','0.84','2','El Sendero  <a href=\'http://www.elsendero.es\'><img src=\'/home/sentidos/public_html/oficina/plugins/simcard/pics/favicon.ico\'></a>, <a href=\'www.teclib.com\'>Walid Nouh</a>','https://forge.indepnet.net/projects/show/simcard',NULL);

### Dump table glpi_printermodels

DROP TABLE IF EXISTS `glpi_printermodels`;
CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_printers

DROP TABLE IF EXISTS `glpi_printers`;
CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `printermodels_id` (`printermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `printertypes_id` (`printertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `last_pages_counter` (`last_pages_counter`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_printertypes

DROP TABLE IF EXISTS `glpi_printertypes`;
CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems

DROP TABLE IF EXISTS `glpi_problems`;
CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `due_date` (`due_date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_suppliers

DROP TABLE IF EXISTS `glpi_problems_suppliers`;
CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_tickets

DROP TABLE IF EXISTS `glpi_problems_tickets`;
CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problems_users

DROP TABLE IF EXISTS `glpi_problems_users`;
CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_problemtasks

DROP TABLE IF EXISTS `glpi_problemtasks`;
CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `problems_id` (`problems_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `state` (`state`),
  KEY `taskcategories_id` (`taskcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profiles

DROP TABLE IF EXISTS `glpi_profiles`;
CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `computer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networking` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internet` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peripheral` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cartridge` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumable` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_enterprise` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contract` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infocom` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase_admin` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_central` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typedoc` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ldap` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_softwarecategories` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_authtype` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logs` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reminder_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rssfeed_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bookmark_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backup` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_priority` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `own_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `steal_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_full_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observe_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistic` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `show_group_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_hardware` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_externalauth_users` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_mailcollector` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `validate_request` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_request_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sla` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_own_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_my_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplate` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticketrecurrent` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticketcost` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validate_incident` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_incident_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_validations` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_profiles` VALUES ('1','Usuari@','helpdesk','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r','r',NULL,NULL,'1',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]','0','0',NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-22 16:39:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[]','1',NULL,NULL,'r',NULL,NULL,NULL,'0');
INSERT INTO `glpi_profiles` VALUES ('2','Observador','central','0','r','r','r','r','r','r','r','r','r','r','r','r','r','r','r','r',NULL,'r','1','r','r',NULL,NULL,NULL,'r','r',NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r',NULL,'r','r','r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','1','0','0','0','0','0','1','0','0','1','1','0','1','0','0','1','0','0','1','1','1','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]','0','0',NULL,NULL,'r',NULL,NULL,NULL,'2014-02-22 16:36:32',NULL,'1','1',NULL,NULL,NULL,NULL,'0',NULL,'1','1',NULL,NULL,'[]','1',NULL,NULL,'r','1','1','1','0');
INSERT INTO `glpi_profiles` VALUES ('3','Administrador','central','0','w','w','w','w','w','w','w','w','w','w','w','w','w','w','w','w',NULL,'w','1','w','r','w','w','w','w','w',NULL,NULL,NULL,NULL,NULL,NULL,'w','w','r','r','w','w','w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]','0','0',NULL,NULL,'w','w',NULL,NULL,'2014-02-22 16:35:03',NULL,'1','1','w',NULL,NULL,'1','1',NULL,'1','1','1','1','[]','1',NULL,NULL,'w','1','1','1','0');
INSERT INTO `glpi_profiles` VALUES ('4','Sistema','central','0','w','w','w','w','w','w','w','w','w','w','w','w','w','w','w','w','1','w','1','w','r','w','w','w','w','w','w','r','w','w','w','w','w','w','r','w','w','w','w','w','w','r','w','w','w','w','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]','0','0','w','w','w','w','w','w','2014-02-22 16:34:37',NULL,'1','1','w','w','w','1','1','w','1','1','1','1','[]','0','w','w','w','1','1','1','0');
INSERT INTO `glpi_profiles` VALUES ('5','Cliente','central','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'1',NULL,'1',NULL,'1',NULL,NULL,NULL,'1','1',NULL,'1','1',NULL,NULL,'1',NULL,NULL,'1','1','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]',NULL,NULL,NULL,NULL,NULL,'w',NULL,NULL,'2014-02-22 16:37:11',NULL,NULL,'1',NULL,NULL,NULL,'1',NULL,NULL,NULL,'1',NULL,NULL,'[]','1','r',NULL,'w',NULL,'1',NULL,'0');
INSERT INTO `glpi_profiles` VALUES ('6','Técnico','central','0','w','w','w','w','w','w','w','w','w','w','w',NULL,'w',NULL,NULL,'w',NULL,'w','1','w','r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r','r','r',NULL,'w','w',NULL,NULL,'1',NULL,'1',NULL,'1','1','1',NULL,'1',NULL,NULL,'1','1','1','1','1','1','1',NULL,NULL,'1','1','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]',NULL,NULL,NULL,NULL,NULL,'w',NULL,NULL,'2014-02-22 16:35:56',NULL,NULL,'1',NULL,'r',NULL,'1',NULL,NULL,'1','1',NULL,NULL,'[]','1','r','r','w',NULL,'1',NULL,'0');
INSERT INTO `glpi_profiles` VALUES ('7','Supervisor','central','0','w','w','w','w','w','w','w','w','w','w','w',NULL,'w',NULL,NULL,'w',NULL,'w','1','w','r',NULL,'w',NULL,NULL,NULL,NULL,'r','w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r','r','r','r','w','w',NULL,NULL,'1','1','1',NULL,'1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,'1','1','1','3','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]','[]',NULL,NULL,NULL,NULL,NULL,'w',NULL,'w',NULL,NULL,'1','1','w','w',NULL,'1','1',NULL,'1','1','1','1','[]','0','w','w','w','1','1','1','0');

### Dump table glpi_profiles_reminders

DROP TABLE IF EXISTS `glpi_profiles_reminders`;
CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profiles_rssfeeds

DROP TABLE IF EXISTS `glpi_profiles_rssfeeds`;
CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_profiles_users

DROP TABLE IF EXISTS `glpi_profiles_users`;
CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `users_id` (`users_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_profiles_users` VALUES ('2','2','4','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('3','3','1','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('4','4','6','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('5','5','2','0','1','0');
INSERT INTO `glpi_profiles_users` VALUES ('6','6','3','0','0','0');
INSERT INTO `glpi_profiles_users` VALUES ('7','7','4','0','1','0');

### Dump table glpi_reminders

DROP TABLE IF EXISTS `glpi_reminders`;
CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `is_planned` (`is_planned`),
  KEY `state` (`state`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_reminders_users

DROP TABLE IF EXISTS `glpi_reminders_users`;
CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_requesttypes

DROP TABLE IF EXISTS `glpi_requesttypes`;
CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_helpdesk_default` (`is_helpdesk_default`),
  KEY `is_mail_default` (`is_mail_default`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_requesttypes` VALUES ('1','Mesa de Ayuda','1','1','Solicitud realizada desde la mesa de ayuda');
INSERT INTO `glpi_requesttypes` VALUES ('2','Correo electrónico','0','0','Solicitud realizada a través de correo electrónico.');
INSERT INTO `glpi_requesttypes` VALUES ('3','Teléfono','0','0','Solicitud realizada por teléfono.');
INSERT INTO `glpi_requesttypes` VALUES ('4','Directo','0','0','Solicitud Realizada de manera directa');
INSERT INTO `glpi_requesttypes` VALUES ('5','Escrito','0','0','Solicitud por medio escrito');
INSERT INTO `glpi_requesttypes` VALUES ('6','Vídeo Conferencia','0','0','Solicitud realizada por Vídeo Conferencia');
INSERT INTO `glpi_requesttypes` VALUES ('7','Red Social','0','0','Solicitud Realizada desde una Red Social');
INSERT INTO `glpi_requesttypes` VALUES ('8','Mensajería Instantánea','0','0','Solicitud realizada a través de mensajería instantánea');
INSERT INTO `glpi_requesttypes` VALUES ('9','FAX','0','0','Solicitud Realizada a través de FAX');
INSERT INTO `glpi_requesttypes` VALUES ('10','Grabación de Audio ó Video','0','0','Solicitud realizada a través de una grabación de Audio o Vídeo');

### Dump table glpi_reservationitems

DROP TABLE IF EXISTS `glpi_reservationitems`;
CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_reservations

DROP TABLE IF EXISTS `glpi_reservations`;
CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `reservationitems_id` (`reservationitems_id`),
  KEY `users_id` (`users_id`),
  KEY `resagroup` (`reservationitems_id`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rssfeeds

DROP TABLE IF EXISTS `glpi_rssfeeds`;
CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `users_id` (`users_id`),
  KEY `date_mod` (`date_mod`),
  KEY `have_error` (`have_error`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rssfeeds_users

DROP TABLE IF EXISTS `glpi_rssfeeds_users`;
CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ruleactions

DROP TABLE IF EXISTS `glpi_ruleactions`;
CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `field_value` (`field`(50),`value`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_ruleactions` VALUES ('6','6','fromitem','locations_id','1');
INSERT INTO `glpi_ruleactions` VALUES ('2','2','assign','entities_id','0');
INSERT INTO `glpi_ruleactions` VALUES ('3','3','assign','entities_id','0');
INSERT INTO `glpi_ruleactions` VALUES ('4','4','assign','_refuse_email_no_response','1');
INSERT INTO `glpi_ruleactions` VALUES ('5','5','assign','_refuse_email_no_response','1');
INSERT INTO `glpi_ruleactions` VALUES ('7','7','fromuser','locations_id','1');
INSERT INTO `glpi_ruleactions` VALUES ('8','8','assign','entities_id','0');

### Dump table glpi_rulecachecomputermodels

DROP TABLE IF EXISTS `glpi_rulecachecomputermodels`;
CREATE TABLE `glpi_rulecachecomputermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachecomputertypes

DROP TABLE IF EXISTS `glpi_rulecachecomputertypes`;
CREATE TABLE `glpi_rulecachecomputertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachemanufacturers

DROP TABLE IF EXISTS `glpi_rulecachemanufacturers`;
CREATE TABLE `glpi_rulecachemanufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachemonitormodels

DROP TABLE IF EXISTS `glpi_rulecachemonitormodels`;
CREATE TABLE `glpi_rulecachemonitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachemonitortypes

DROP TABLE IF EXISTS `glpi_rulecachemonitortypes`;
CREATE TABLE `glpi_rulecachemonitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachenetworkequipmentmodels

DROP TABLE IF EXISTS `glpi_rulecachenetworkequipmentmodels`;
CREATE TABLE `glpi_rulecachenetworkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachenetworkequipmenttypes

DROP TABLE IF EXISTS `glpi_rulecachenetworkequipmenttypes`;
CREATE TABLE `glpi_rulecachenetworkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheoperatingsystems

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystems`;
CREATE TABLE `glpi_rulecacheoperatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheoperatingsystemservicepacks

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystemservicepacks`;
CREATE TABLE `glpi_rulecacheoperatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheoperatingsystemversions

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystemversions`;
CREATE TABLE `glpi_rulecacheoperatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheperipheralmodels

DROP TABLE IF EXISTS `glpi_rulecacheperipheralmodels`;
CREATE TABLE `glpi_rulecacheperipheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheperipheraltypes

DROP TABLE IF EXISTS `glpi_rulecacheperipheraltypes`;
CREATE TABLE `glpi_rulecacheperipheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachephonemodels

DROP TABLE IF EXISTS `glpi_rulecachephonemodels`;
CREATE TABLE `glpi_rulecachephonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachephonetypes

DROP TABLE IF EXISTS `glpi_rulecachephonetypes`;
CREATE TABLE `glpi_rulecachephonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheprintermodels

DROP TABLE IF EXISTS `glpi_rulecacheprintermodels`;
CREATE TABLE `glpi_rulecacheprintermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheprinters

DROP TABLE IF EXISTS `glpi_rulecacheprinters`;
CREATE TABLE `glpi_rulecacheprinters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecacheprintertypes

DROP TABLE IF EXISTS `glpi_rulecacheprintertypes`;
CREATE TABLE `glpi_rulecacheprintertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecachesoftwares

DROP TABLE IF EXISTS `glpi_rulecachesoftwares`;
CREATE TABLE `glpi_rulecachesoftwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_visible` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_rulecriterias

DROP TABLE IF EXISTS `glpi_rulecriterias`;
CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `condition` (`condition`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rulecriterias` VALUES ('9','6','locations_id','9','1');
INSERT INTO `glpi_rulecriterias` VALUES ('2','2','uid','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('3','2','samaccountname','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('4','2','MAIL_EMAIL','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('5','3','subject','6','/.*/');
INSERT INTO `glpi_rulecriterias` VALUES ('6','4','x-auto-response-suppress','6','/\\S+/');
INSERT INTO `glpi_rulecriterias` VALUES ('7','5','auto-submitted','6','/\\S+/');
INSERT INTO `glpi_rulecriterias` VALUES ('8','5','auto-submitted','1','no');
INSERT INTO `glpi_rulecriterias` VALUES ('10','6','items_locations','8','1');
INSERT INTO `glpi_rulecriterias` VALUES ('11','7','locations_id','9','1');
INSERT INTO `glpi_rulecriterias` VALUES ('12','7','users_locations','8','1');
INSERT INTO `glpi_rulecriterias` VALUES ('13','8','TAG','0','*');
INSERT INTO `glpi_rulecriterias` VALUES ('14','8','OCS_SERVER','0','1');

### Dump table glpi_rulerightparameters

DROP TABLE IF EXISTS `glpi_rulerightparameters`;
CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rulerightparameters` VALUES ('1','(LDAP)Organization','o','');
INSERT INTO `glpi_rulerightparameters` VALUES ('2','(LDAP)Common Name','cn','');
INSERT INTO `glpi_rulerightparameters` VALUES ('3','(LDAP)Department Number','departmentnumber','');
INSERT INTO `glpi_rulerightparameters` VALUES ('4','(LDAP)Email','mail','');
INSERT INTO `glpi_rulerightparameters` VALUES ('5','Object Class','objectclass','');
INSERT INTO `glpi_rulerightparameters` VALUES ('6','(LDAP)User ID','uid','');
INSERT INTO `glpi_rulerightparameters` VALUES ('7','(LDAP)Telephone Number','phone','');
INSERT INTO `glpi_rulerightparameters` VALUES ('8','(LDAP)Employee Number','employeenumber','');
INSERT INTO `glpi_rulerightparameters` VALUES ('9','(LDAP)Manager','manager','');
INSERT INTO `glpi_rulerightparameters` VALUES ('10','(LDAP)DistinguishedName','dn','');
INSERT INTO `glpi_rulerightparameters` VALUES ('12','(AD)User ID','samaccountname','');
INSERT INTO `glpi_rulerightparameters` VALUES ('13','(LDAP) Title','title','');
INSERT INTO `glpi_rulerightparameters` VALUES ('14','(LDAP) MemberOf','memberof','');

### Dump table glpi_rules

DROP TABLE IF EXISTS `glpi_rules`;
CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `sub_type` (`sub_type`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_rules` VALUES ('2','0','RuleRight','1','Root','','OR','1',NULL,NULL,'0');
INSERT INTO `glpi_rules` VALUES ('3','0','RuleMailCollector','3','Root','','OR','1',NULL,NULL,'0');
INSERT INTO `glpi_rules` VALUES ('4','0','RuleMailCollector','1','Auto-Reply X-Auto-Response-Suppress','Exclude Auto-Reply emails using X-Auto-Response-Suppress header','AND','1',NULL,'2011-01-18 11:40:42','1');
INSERT INTO `glpi_rules` VALUES ('5','0','RuleMailCollector','2','Auto-Reply Auto-Submitted','Exclude Auto-Reply emails using Auto-Submitted header','AND','1',NULL,'2011-01-18 11:40:42','1');
INSERT INTO `glpi_rules` VALUES ('6','0','RuleTicket','1','Ticket location from item','','AND','0','Automatically generated by GLPI 0.84',NULL,'1');
INSERT INTO `glpi_rules` VALUES ('7','0','RuleTicket','2','Ticket location from user','','AND','0','Automatically generated by GLPI 0.84',NULL,'1');
INSERT INTO `glpi_rules` VALUES ('8','0','RuleImportEntity','1','RootOcs','','AND','1','Generado automáticamente por GLPI 100',NULL,'1');

### Dump table glpi_slalevelactions

DROP TABLE IF EXISTS `glpi_slalevelactions`;
CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevelcriterias

DROP TABLE IF EXISTS `glpi_slalevelcriterias`;
CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevels

DROP TABLE IF EXISTS `glpi_slalevels`;
CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `slas_id` (`slas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slalevels_tickets

DROP TABLE IF EXISTS `glpi_slalevels_tickets`;
CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_slas

DROP TABLE IF EXISTS `glpi_slas`;
CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `resolution_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `calendars_id` (`calendars_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_softwarecategories

DROP TABLE IF EXISTS `glpi_softwarecategories`;
CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_softwarecategories` VALUES ('1','FUSION',NULL);

### Dump table glpi_softwarelicenses

DROP TABLE IF EXISTS `glpi_softwarelicenses`;
CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `expire` (`expire`),
  KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  KEY `entities_id` (`entities_id`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  KEY `softwareversions_id_use` (`softwareversions_id_use`),
  KEY `date_mod` (`date_mod`),
  KEY `softwares_id_expire` (`softwares_id`,`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_softwarelicensetypes

DROP TABLE IF EXISTS `glpi_softwarelicensetypes`;
CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_softwarelicensetypes` VALUES ('1','OEM','');

### Dump table glpi_softwares

DROP TABLE IF EXISTS `glpi_softwares`;
CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_update` (`is_update`),
  KEY `softwarecategories_id` (`softwarecategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `softwares_id` (`softwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_softwareversions

DROP TABLE IF EXISTS `glpi_softwareversions`;
CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `softwares_id` (`softwares_id`),
  KEY `states_id` (`states_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `operatingsystems_id` (`operatingsystems_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_solutiontemplates

DROP TABLE IF EXISTS `glpi_solutiontemplates`;
CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_solutiontypes

DROP TABLE IF EXISTS `glpi_solutiontypes`;
CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ssovariables

DROP TABLE IF EXISTS `glpi_ssovariables`;
CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_ssovariables` VALUES ('1','HTTP_AUTH_USER','');
INSERT INTO `glpi_ssovariables` VALUES ('2','REMOTE_USER','');
INSERT INTO `glpi_ssovariables` VALUES ('3','PHP_AUTH_USER','');
INSERT INTO `glpi_ssovariables` VALUES ('4','USERNAME','');
INSERT INTO `glpi_ssovariables` VALUES ('5','REDIRECT_REMOTE_USER','');
INSERT INTO `glpi_ssovariables` VALUES ('6','HTTP_REMOTE_USER','');

### Dump table glpi_states

DROP TABLE IF EXISTS `glpi_states`;
CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `unicity` (`states_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliers

DROP TABLE IF EXISTS `glpi_suppliers`;
CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliertypes_id` (`suppliertypes_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliers_tickets

DROP TABLE IF EXISTS `glpi_suppliers_tickets`;
CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_suppliertypes

DROP TABLE IF EXISTS `glpi_suppliertypes`;
CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_taskcategories

DROP TABLE IF EXISTS `glpi_taskcategories`;
CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ticketcosts

DROP TABLE IF EXISTS `glpi_ticketcosts`;
CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `tickets_id` (`tickets_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_ticketfollowups

DROP TABLE IF EXISTS `glpi_ticketfollowups`;
CREATE TABLE `glpi_ticketfollowups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `users_id` (`users_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `requesttypes_id` (`requesttypes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_ticketfollowups` VALUES ('1','1','2014-05-27 15:53:30','2','Sergioherrera1*','0','1');

### Dump table glpi_ticketrecurrents

DROP TABLE IF EXISTS `glpi_ticketrecurrents`;
CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `next_creation_date` (`next_creation_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickets

DROP TABLE IF EXISTS `glpi_tickets`;
CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `global_validation` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `due_date` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `request_type` (`requesttypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `global_validation` (`global_validation`),
  KEY `slas_id` (`slas_id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `due_date` (`due_date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `type` (`type`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `locations_id` (`locations_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickets` VALUES ('1','0','Prueba 1','2014-05-27 15:13:00',NULL,NULL,'2014-05-27 15:53:30','2','2','2','1','','0','Prueba 1','3','3','3','0','1','0',NULL,'none','0','0',NULL,NULL,'0','0','0','0','1120','0','0','0');

### Dump table glpi_tickets_tickets

DROP TABLE IF EXISTS `glpi_tickets_tickets`;
CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `unicity` (`tickets_id_1`,`tickets_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickets_users

DROP TABLE IF EXISTS `glpi_tickets_users`;
CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickets_users` VALUES ('1','1','6','1','1','');
INSERT INTO `glpi_tickets_users` VALUES ('2','1','2','3','1','');
INSERT INTO `glpi_tickets_users` VALUES ('3','1','4','2','1','');
INSERT INTO `glpi_tickets_users` VALUES ('4','1','7','2','1','');

### Dump table glpi_ticketsatisfactions

DROP TABLE IF EXISTS `glpi_ticketsatisfactions`;
CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_id` (`tickets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettasks

DROP TABLE IF EXISTS `glpi_tickettasks`;
CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `users_id` (`users_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `taskcategories_id` (`taskcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplatehiddenfields

DROP TABLE IF EXISTS `glpi_tickettemplatehiddenfields`;
CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplatemandatoryfields

DROP TABLE IF EXISTS `glpi_tickettemplatemandatoryfields`;
CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickettemplatemandatoryfields` VALUES ('1','1','21');

### Dump table glpi_tickettemplatepredefinedfields

DROP TABLE IF EXISTS `glpi_tickettemplatepredefinedfields`;
CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_tickettemplates

DROP TABLE IF EXISTS `glpi_tickettemplates`;
CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_tickettemplates` VALUES ('1','Default','0','1',NULL);

### Dump table glpi_ticketvalidations

DROP TABLE IF EXISTS `glpi_ticketvalidations`;
CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'waiting',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `tickets_id` (`tickets_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_transfers

DROP TABLE IF EXISTS `glpi_transfers`;
CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_transfers` VALUES ('1','complete','2','2','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,NULL,'1');

### Dump table glpi_usercategories

DROP TABLE IF EXISTS `glpi_usercategories`;
CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_useremails

DROP TABLE IF EXISTS `glpi_useremails`;
CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`email`),
  KEY `email` (`email`),
  KEY `is_default` (`is_default`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_useremails` VALUES ('1','2','1','0','elite.linux@gmail.com');
INSERT INTO `glpi_useremails` VALUES ('2','6','1','0','kreativemedia@sentidoskreativos.com');
INSERT INTO `glpi_useremails` VALUES ('3','7','1','0','sergioandresherrera@gmail.com');

### Dump table glpi_users

DROP TABLE IF EXISTS `glpi_users`;
CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `dropdown_chars_limit` int(11) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `is_not_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`name`),
  KEY `firstname` (`firstname`),
  KEY `realname` (`realname`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `locations_id` (`locations_id`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `usercategories_id` (`usercategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `authitem` (`authtype`,`auths_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_users` VALUES ('2','elitelinux','f6235206752095b3b9c4a0a07c3d06b6b5b905d5','','','','Villa','Juan Fernando','0','es_ES','0','20','1',NULL,'0','1','2014-05-27 14:39:11','2014-02-27 23:02:29',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'CINO',NULL,NULL,NULL,'8xp7o8n3s2kg0q2wva18y1n0ftve7veet5khb9k4a','2014-02-24 22:12:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_users` VALUES ('3','post-only','5040a6e8c9b647abb69d9eb805b239fa20feae09','','','','',NULL,'0',NULL,'0','20','1',NULL,'0','0',NULL,'2014-03-01 10:35:46',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_users` VALUES ('4','tech','afe4c7bff80b126962129f4a9bb74e1d452f9c9b','','','','',NULL,'0',NULL,'0','20','1',NULL,'0','0',NULL,'2014-03-01 02:44:07',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_users` VALUES ('5','normal','fea087517c26fadd409bd4b9dc642555','','','','',NULL,'0',NULL,'0','20','1',NULL,'0','1','2014-03-15 17:36:02','2014-03-15 17:36:02',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_users` VALUES ('6','daniac','ede4908d7babe7f8ef98f0570163fa833d497f90','','','','Villareal','Danny','0',NULL,'0',NULL,'1','T3st1***','0','1','2014-02-27 12:18:19','2014-02-27 12:15:30',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `glpi_users` VALUES ('7','sergioherrera','80ec031d066cb88a187f1ba3217eb6db3dc0017f','','','','Herrera','Sergio','0',NULL,'0',NULL,'1','','0','1','2014-05-27 15:57:36','2014-05-27 15:52:28',NULL,'0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

### Dump table glpi_usertitles

DROP TABLE IF EXISTS `glpi_usertitles`;
CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinestates

DROP TABLE IF EXISTS `glpi_virtualmachinestates`;
CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinesystems

DROP TABLE IF EXISTS `glpi_virtualmachinesystems`;
CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_virtualmachinetypes

DROP TABLE IF EXISTS `glpi_virtualmachinetypes`;
CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_vlans

DROP TABLE IF EXISTS `glpi_vlans`;
CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### Dump table glpi_wifinetworks

DROP TABLE IF EXISTS `glpi_wifinetworks`;
CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `essid` (`essid`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

