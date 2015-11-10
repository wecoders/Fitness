drop table if exists `people`;
CREATE TABLE `people` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;


CREATE TABLE `fitness` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_idx` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table fitness add column `counter_type` tinyint(4) default 0;
alter table fitness add column `counter_value` tinyint(4) default 0;
alter table fitness add column `fork_from` bigint(20) default 0;
alter table fitness add column `created_at` datetime DEFAULT NULL;
s


CREATE TABLE `fitness_train` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `fitness_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_train_idx` (`fitness_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table fitness_train add column `counter_value` tinyint(4) default 0;
alter table fitness_train add column `level_relation` tinyint(4) default 0;
alter table fitness_train add column `created_at` datetime DEFAULT NULL;


CREATE TABLE `fitness_train_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fitness_id` bigint(20) DEFAULT NULL,
  `train_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `groups` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `sleep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_train_level_idx` (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table fitness_train_level add column `counter_type` tinyint(4) default 0;
alter table fitness_train_level add column `counter_value` tinyint(4) default 0;
alter table fitness_train_level add column `created_at` datetime DEFAULT NULL;

alter table fitness_train_level drop column `count`;


CREATE TABLE `fitness_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `people_id` varchar(200) DEFAULT NULL,
  `people_name` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `note` text,
  `train_id` bigint(20) DEFAULT NULL,
  `fitness_id` bigint(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fitness_record_idx` (`people_id`,`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


