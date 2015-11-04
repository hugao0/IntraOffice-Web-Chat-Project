

-- Author:Hugo Toffanelo  Student ID 2012802  @CCT college, Dublin, Ireland
-- URL: www.hugotoffanelo.com

-- Created for studies propose only. 
-- All rights reserved.




DROP TABLE if exists chatlog;

CREATE TABLE `chatlog` (
	`id` INT(20) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`message` VARCHAR(8000) NULL,
	`datetime` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB;