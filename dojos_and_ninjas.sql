-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dojo_and_ninjas_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dojo_and_ninjas_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dojo_and_ninjas_db` DEFAULT CHARACTER SET utf8 ;
USE `dojo_and_ninjas_db` ;

-- -----------------------------------------------------
-- Table `dojo_and_ninjas_db`.`dojos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dojo_and_ninjas_db`.`dojos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NULL DEFAULT NOW(),
  `updated_at` DATETIME NULL DEFAULT NOW() ON UPDATE NOW(),
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dojo_and_ninjas_db`.`ninja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dojo_and_ninjas_db`.`ninja` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `dojo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ninja_dojo_idx` (`dojo_id` ASC) VISIBLE,
  CONSTRAINT `fk_ninja_dojo`
    FOREIGN KEY (`dojo_id`)
    REFERENCES `dojo_and_ninjas_db`.`dojos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
