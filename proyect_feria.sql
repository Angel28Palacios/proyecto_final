-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`materia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`materia` ;

CREATE TABLE IF NOT EXISTS `mydb`.`materia` (
  `id_materia` INT NOT NULL AUTO_INCREMENT,
  `nombre_mat` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_materia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `mydb`.`usuarios` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `cod_alumno` VARCHAR(45) NOT NULL,
  `nombre_user` VARCHAR(45) NOT NULL,
  `apellido_user` VARCHAR(45) NOT NULL,
  `telefono_user` VARCHAR(45) NULL,
  `edad` VARCHAR(10) NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`preguntas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`preguntas` ;

CREATE TABLE IF NOT EXISTS `mydb`.`preguntas` (
  `id_preguntas` INT NOT NULL AUTO_INCREMENT,
  `pregunta` VARCHAR(500) NOT NULL,
  `puntaje` DOUBLE NOT NULL,
  PRIMARY KEY (`id_preguntas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`respuesta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`respuesta` ;

CREATE TABLE IF NOT EXISTS `mydb`.`respuesta` (
  `id_respuesta` INT NOT NULL AUTO_INCREMENT,
  `respuesta` VARCHAR(45) NOT NULL,
  `opcorrecta` VARCHAR(10) NULL,
  `opincorrecta` VARCHAR(10) NULL,
  `preguntas_id_preguntas` INT NOT NULL,
  `materia_id_materia` INT NOT NULL,
  PRIMARY KEY (`id_respuesta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MateriaUsuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`MateriaUsuarios` ;

CREATE TABLE IF NOT EXISTS `mydb`.`MateriaUsuarios` (
  `id_MateriaUsuarios` INT NOT NULL AUTO_INCREMENT,
  `materia_id_materia` INT NOT NULL,
  `usuarios_id_user` INT NOT NULL,
  PRIMARY KEY (`id_MateriaUsuarios`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
