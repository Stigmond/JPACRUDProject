-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema superherodb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `superherodb` ;

-- -----------------------------------------------------
-- Schema superherodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superherodb` DEFAULT CHARACTER SET utf8 ;
USE `superherodb` ;

-- -----------------------------------------------------
-- Table `superhero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `superhero` ;

CREATE TABLE IF NOT EXISTS `superhero` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `alias` VARCHAR(45) NULL DEFAULT 'Unknown',
  `year_introduced` INT(4) NULL DEFAULT 2000,
  `affiliation` VARCHAR(45) NULL DEFAULT 'Unknown',
  `nemesis` VARCHAR(45) NULL DEFAULT 'Unknown',
  `location` VARCHAR(45) NULL DEFAULT 'Unknown',
  `powers` VARCHAR(500) NULL DEFAULT 'Undetermined',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS herouser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'herouser' IDENTIFIED BY 'herouser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'herouser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `superhero`
-- -----------------------------------------------------
START TRANSACTION;
USE `superherodb`;
INSERT INTO `superhero` (`id`, `name`, `alias`, `year_introduced`, `affiliation`, `nemesis`, `location`, `powers`) VALUES (1, 'Superman', 'Clark Kent', 1939, 'Justice League', 'Lex Luthor', 'Metropolis', 'leap tall buildings in a single bound');

COMMIT;

