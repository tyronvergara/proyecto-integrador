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
-- Table `outshoes`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NULL,
  `descripcion` VARCHAR(500) NULL,
  `marca` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idProducto_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `marcaProducto_idx` (`marca` ASC) VISIBLE,
  CONSTRAINT `marcaProducto`
    FOREIGN KEY (`marca`)
    REFERENCES `outshoes`.`Marca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
-- Table `outshoes`.`Tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Tipo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` INT NOT NULL,
  `correo` VARCHAR(50) NOT NULL,
  `contrasena` VARCHAR(20) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `apellidop` VARCHAR(50) NOT NULL,
  `apellidom` VARCHAR(50) NULL,
  `telefono` VARCHAR(10) NOT NULL,
  `nacimiento` DATE NOT NULL,
  `direccionuno` VARCHAR(255) NULL,
  `direcciondos` VARCHAR(255) NULL,
  `estado` VARCHAR(50) NULL,
  `ciudad` VARCHAR(100) NULL,
  `cp` VARCHAR(5) NULL,
  PRIMARY KEY (`id`),
  INDEX `tipoUsuario_idx` (`tipo` ASC) VISIBLE,
  CONSTRAINT `tipoUsuario`
    FOREIGN KEY (`tipo`)
    REFERENCES `outshoes`.`Tipo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Talla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Talla` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Color` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`RelacionTalla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`RelacionTalla` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `talla` INT NOT NULL,
  `categoria` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `tallaRelacion_idx` (`talla` ASC) VISIBLE,
  INDEX `categoriaTalla_idx` (`categoria` ASC) VISIBLE,
  CONSTRAINT `tallaRelacion`
    FOREIGN KEY (`talla`)
    REFERENCES `outshoes`.`Talla` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoriaTalla`
    FOREIGN KEY (`categoria`)
    REFERENCES `outshoes`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Inventario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(8) NOT NULL,
  `producto` INT NOT NULL,
  `color` INT NOT NULL,
  `talla` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `categoria` INT NOT NULL,
  `coleccion` INT NOT NULL,
  `precio` INT NOT NULL,
  `imagen` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `productoInventario_idx` (`producto` ASC) VISIBLE,
  INDEX `colorInventario_idx` (`color` ASC) VISIBLE,
  INDEX `categoriaInventario_idx` (`categoria` ASC) VISIBLE,
  INDEX `coleccionInventario_idx` (`coleccion` ASC) VISIBLE,
  INDEX `tallaInventario_idx` (`talla` ASC) VISIBLE,
  CONSTRAINT `productoInventario`
    FOREIGN KEY (`producto`)
    REFERENCES `outshoes`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `colorInventario`
    FOREIGN KEY (`color`)
    REFERENCES `outshoes`.`Color` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoriaInventario`
    FOREIGN KEY (`categoria`)
    REFERENCES `outshoes`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `coleccionInventario`
    FOREIGN KEY (`coleccion`)
    REFERENCES `outshoes`.`Coleccion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tallaInventario`
    FOREIGN KEY (`talla`)
    REFERENCES `outshoes`.`RelacionTalla` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`EstadoPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`EstadoPedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`HistorialPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`HistorialPedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` INT NOT NULL,
  `inventario` INT NOT NULL,
  `estado` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `fecha` DATE NULL,
  PRIMARY KEY (`id`),
  INDEX `estadoHistorial_idx` (`estado` ASC) VISIBLE,
  INDEX `usuarioHistorial_idx` (`usuario` ASC) VISIBLE,
  INDEX `inventarioHistorial_idx` (`inventario` ASC) VISIBLE,
  CONSTRAINT `estadoHistorial`
    FOREIGN KEY (`estado`)
    REFERENCES `outshoes`.`EstadoPedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarioHistorial`
    FOREIGN KEY (`usuario`)
    REFERENCES `outshoes`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `inventarioHistorial`
    FOREIGN KEY (`inventario`)
    REFERENCES `outshoes`.`Inventario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
