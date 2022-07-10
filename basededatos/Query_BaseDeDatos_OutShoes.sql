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
  `Tipo_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Tipo_id`),
  INDEX `fk_Usuario_Tipo_idx` (`Tipo_id` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Tipo`
    FOREIGN KEY (`Tipo_id`)
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
<<<<<<< HEAD
<<<<<<< HEAD
-- Table `outshoes`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(8) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(610) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `precio` DECIMAL(6,2) NOT NULL,
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
-- Table `outshoes`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Estado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
=======
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
-- Table `outshoes`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Inventario` (
  `id` INT NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `Producto_id` INT NOT NULL,
  `Talla_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Producto_id`, `Talla_id`),
  INDEX `fk_Talla_id_idx` (`Talla_id` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_id`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `outshoes`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Talla_id`
    FOREIGN KEY (`Talla_id`)
=======
  `talla` INT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_talla_idx` (`talla` ASC) VISIBLE,
  CONSTRAINT `fk_talla`
    FOREIGN KEY (`talla`)
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
    REFERENCES `outshoes`.`Talla` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
<<<<<<< HEAD
-- Table `outshoes`.`Existencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Existencia` (
=======
=======
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
-- Table `outshoes`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(8) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` VARCHAR(610) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `precio` DECIMAL(6,2) NOT NULL,
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
-- Table `outshoes`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Estado` (
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
  `id` INT NOT NULL AUTO_INCREMENT,
  `Inventario_id` INT NOT NULL,
  `cantidad` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `fk_Inventario_id_idx` (`Inventario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Inventario_id`
    FOREIGN KEY (`Inventario_id`)
    REFERENCES `outshoes`.`Inventario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Existencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Existencia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Inventario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Producto_id` INT NOT NULL,
  `Existencia_id` INT NOT NULL,
  `Talla_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Producto_id`, `Existencia_id`, `Talla_id`),
  INDEX `fk_Talla_id_idx` (`Talla_id` ASC) VISIBLE,
  INDEX `fk_Existencia_id` (`Existencia_id` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_id`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `outshoes`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventario_id`
    FOREIGN KEY (`Existencia_id`)
    REFERENCES `outshoes`.`Existencia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Talla_id`
    FOREIGN KEY (`Talla_id`)
    REFERENCES `outshoes`.`Talla` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outshoes`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `outshoes`.`Pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
<<<<<<< HEAD
  `estado` INT NOT NULL,
  `usuario` INT NOT NULL,
  `Inventario_id` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`id`, `Inventario_id`),
  INDEX `fk_estado_idx` (`estado` ASC) VISIBLE,
  INDEX `fk_usuario_idx` (`usuario` ASC) VISIBLE,
  INDEX `fk_Pedido_Inventario1_idx` (`Inventario_id` ASC) VISIBLE,
=======
  `cantidad` INT NOT NULL,
  `producto` INT NOT NULL,
=======
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
  `estado` INT NOT NULL,
  `usuario` INT NOT NULL,
  `Inventario_id` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`id`, `Inventario_id`),
  INDEX `fk_estado_idx` (`estado` ASC) VISIBLE,
  INDEX `fk_usuario_idx` (`usuario` ASC) VISIBLE,
<<<<<<< HEAD
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
=======
  INDEX `fk_Pedido_Inventario1_idx` (`Inventario_id` ASC) VISIBLE,
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
  CONSTRAINT `fk_estado`
    FOREIGN KEY (`estado`)
    REFERENCES `outshoes`.`Estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
<<<<<<< HEAD
<<<<<<< HEAD
=======
  CONSTRAINT `fk_producto`
    FOREIGN KEY (`producto`)
    REFERENCES `outshoes`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
=======
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
  CONSTRAINT `fk_usuario`
    FOREIGN KEY (`usuario`)
    REFERENCES `outshoes`.`Usuario` (`id`)
    ON DELETE NO ACTION
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Inventario1`
    FOREIGN KEY (`Inventario_id`)
    REFERENCES `outshoes`.`Inventario` (`id`)
    ON DELETE NO ACTION
<<<<<<< HEAD
=======
>>>>>>> d6081a0 (fix: Se arreglaron tablas y relaciones)
=======
>>>>>>> d6cd918 (feat: Se agregan productos a la base de datos)
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
