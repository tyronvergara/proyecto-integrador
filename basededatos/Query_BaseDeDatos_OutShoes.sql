-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema outshoes
-- -----------------------------------------------------
-- Base de datos para el proyecto con nombre OutShoes realizado como proyecto integrador parte de las actividades realizadas dentro de la Cohorte 13 de Generation México

-- -----------------------------------------------------
-- Schema outshoes
--
-- Base de datos para el proyecto con nombre OutShoes realizado como proyecto integrador parte de las actividades realizadas dentro de la Cohorte 13 de Generation México
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `outshoes` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `outshoes` ;

-- -----------------------------------------------------
-- Table `outshoes`.`Marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Marca` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Coleccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Coleccion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `correo` VARCHAR(50) NOT NULL,
  `contrasena` VARCHAR(20) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `apellidop` VARCHAR(50) NOT NULL,
  `apellidom` VARCHAR(50) NULL,
  `direccionuno` VARCHAR(255) NULL,
  `direcciondos` VARCHAR(255) NULL,
  `estado` VARCHAR(50) NULL,
  `ciudad` VARCHAR(100) NULL,
  `cp` VARCHAR(5) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(8) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(610) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `precio` DECIMAL(6,2) NOT NULL,
  `talla` DECIMAL(3,1) NOT NULL,
  `Categoria_id` INT NOT NULL,
  `Coleccion_id` INT NOT NULL,
  `Marca_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Categoria_id`, `Coleccion_id`, `Marca_id`),
  INDEX `fk_Producto_Categoria1_idx` (`Categoria_id` ASC) VISIBLE,
  INDEX `fk_Producto_Coleccion1_idx` (`Coleccion_id` ASC) VISIBLE,
  INDEX `fk_Producto_Marca1_idx` (`Marca_id` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Categoria1`
    FOREIGN KEY (`Categoria_id`)
    REFERENCES `outshoes`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Coleccion1`
    FOREIGN KEY (`Coleccion_id`)
    REFERENCES `outshoes`.`Coleccion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Marca1`
    FOREIGN KEY (`Marca_id`)
    REFERENCES `outshoes`.`Marca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Producto_id` INT NOT NULL,
  `Usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Producto_id`, `Usuario_id`),
  INDEX `fk_Pedido_Producto1_idx` (`Producto_id` ASC) VISIBLE,
  INDEX `fk_Pedido_Usuario1_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Producto1`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `outshoes`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Usuario1`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `outshoes`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
