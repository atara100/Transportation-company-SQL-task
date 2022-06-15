-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema transportation_company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema transportation_company
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `transportation_company` DEFAULT CHARACTER SET utf8mb4 ;
USE `transportation_company` ;

-- -----------------------------------------------------
-- Table `transportation_company`.`buses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transportation_company`.`buses` (
  `bus_id` INT(11) NOT NULL AUTO_INCREMENT,
  `manufacturing_date` DATE NULL DEFAULT NULL,
  `manufacturing_compamy` VARCHAR(30) NULL DEFAULT NULL,
  `engine_type` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`bus_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `transportation_company`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transportation_company`.`customers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `transportation_company`.`drivers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transportation_company`.`drivers` (
  `driver_id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_namr` VARCHAR(20) NULL DEFAULT NULL,
  `last_name` VARCHAR(25) NULL DEFAULT NULL,
  `phone` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`driver_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `transportation_company`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transportation_company`.`orders` (
  `order_id` INT(11) NOT NULL AUTO_INCREMENT,
  `bus_id` INT(11) NULL DEFAULT NULL,
  `driver_id` INT(11) NULL DEFAULT NULL,
  `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `target` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `transportation_company`.`targets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transportation_company`.`targets` (
  `target_id` INT(11) NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(40) NULL DEFAULT NULL,
  `address` VARCHAR(70) NULL DEFAULT NULL,
  PRIMARY KEY (`target_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
