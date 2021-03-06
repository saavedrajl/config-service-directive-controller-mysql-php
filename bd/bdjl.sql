/*
MySQL Backup
Source Server Version: 5.6.20
Source Database: bdjl
Date: 05/11/2014 08:33:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `persona`
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
--  Procedure definition for `usp_del_persona_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_del_persona_by_id`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_del_persona_by_id`(id int(11))
BEGIN
	DELETE FROM persona
	WHERE  persona.id = id;
END
;;
DELIMITER ;

-- ----------------------------
--  Procedure definition for `usp_get_persona`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_persona`()
BEGIN
SELECT 
	persona.id,
	persona.name,
	persona.dni
FROM persona;
END
;;
DELIMITER ;

-- ----------------------------
--  Procedure definition for `usp_get_persona_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_get_persona_by_id`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_get_persona_by_id`(id int(11))
BEGIN
SELECT 
	persona.id,
	persona.name,
	persona.dni
FROM persona
WHERE  persona.id = id;
END
;;
DELIMITER ;

-- ----------------------------
--  Procedure definition for `usp_set_persona`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_set_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_set_persona`(name varchar(100),dni varchar(8))
BEGIN
INSERT INTO  persona(
	persona.name,
	persona.dni
)
VALUES(
	name,
	dni
);
END
;;
DELIMITER ;

-- ----------------------------
--  Procedure definition for `usp_upd_persona`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_upd_persona`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_upd_persona`( id int(11),name varchar(100),dni varchar(8) )
BEGIN
UPDATE persona SET
	persona.name = name,
	persona.dni = dni
WHERE persona.id = id;
END
;;
DELIMITER ;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `persona` VALUES ('1','José Luis Damián Saavedra','46003328'), ('2','José Alberto Damián Saavedra','46003327'), ('3','Juan Jiner Delgado Chavez','46003326'), ('4','Juan Jose Matamoros Taype','46003325'), ('5','Yuri Mao Reategui Pinedo','46003324'), ('6','Natividad Saavedra Chavez','12873465');
